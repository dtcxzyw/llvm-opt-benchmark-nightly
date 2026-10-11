Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.02?download=true
inline.NumInlined: 1670
inline.NumDeleted: 875
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvNvMsd_B2M_NtB2M_7Project7program8program_0E0B1T_EB2M_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !925, !inline_history !898 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !926, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !926, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !926
  store ptr %i.n, ptr %i.g, align 8, !noalias !926
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !926
  store ptr %i.l, ptr %i.f, align 8, !noalias !926
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !926
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !926
  store ptr %i.m, ptr %i.o, align 8, !noalias !926
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !926
  store ptr %i.g, ptr %i.e, align 8, !noalias !926
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !926
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !926
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !926
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !925
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !926
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !927, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925, !inline_history !903 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1T_7Project7program1__23program__Configuration_EE13get_or_createNtB1N_8program_Kj0_EB1T_(ptr noundef nonnull align 4 @_RNvNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB9_7Project7program1__18program__FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !928
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project7program1__NtB37_23program__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project7program1__NtB32_23program__Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project7program1__NtB37_23program__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project7program1__NtB37_23program__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !14, !noalias !927, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !927, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !927
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !929, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project7program1__NtB37_23program__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @69)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project7program1__NtB37_23program__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !4

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !4

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !929, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !930, !noalias !929, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1a_7Project7program1__23program__Configuration_E23get_memo_from_table_forB1a_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !925 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !noalias !927, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !929, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !929
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !929
  store i32 %i.at, ptr %i.ap, align 4, !noalias !929
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !931 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !15, !noalias !932, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !925 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !927
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !927
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !933
  store ptr %i.c, ptr %i.b, align 8, !noalias !933
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !933, !noundef !3
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @68)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !933
  %i.bg = load i64, ptr %i.ak, align 8, !range !15, !noalias !933, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !933
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E10fetch_coldB1b_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !925 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !17, !noalias !927, !noundef !3
  %i.bl = load i64, ptr %i.bi, align 8, !range !15, !noalias !927, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !927
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !929
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !925

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !934
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !935, !noalias !936, !noundef !3 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !935, !noalias !936, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !935, !noalias !936, !noundef !3 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !927

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !937
  store i32 %i.ae, ptr %i.a, align 4, !noalias !937
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !937
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !937
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !927

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !937
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !929
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !929, !noundef !3
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !929
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project7program1__23program__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs4o81Y09oZk1_10ty_project(ptr %.sroa.0.0.i.i.i.i) #29
          to label %bb.ac unwind label %bb.ab, !noalias !925

bb.y:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.ce, ptr %i.br, align 8, !noalias !929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !927
  %i.cf = load i32, ptr %2, align 8, !range !14, !noalias !927, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %i.ch = load i32, ptr %i.cg, align 4, !noalias !927, !noundef !3
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !925, !noundef !3 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !925 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !925
  %.not3.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !3, !noalias !925, !nonnull !3
  %i.cn = call noundef nonnull align 8 ptr %i.cm(ptr noundef nonnull %i.ci), !noalias !925, !inline_history !922
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn), !noalias !925
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !925
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cp = insertvalue { i32, i32 } poison, i32 %i.cf, 0
  %i.cq = insertvalue { i32, i32 } %i.cp, i32 %i.ch, 1
  ret { i32, i32 } %i.cq
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCs4o81Y09oZk1_10ty_project8metadata8settings12FileSettingsDNtNtB1Z_2db2DbEL_NCNvB1V_15merge_overrides0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [48 x i8], align 8          ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.k = invoke noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null)
          to label %bb.b unwind label %bb.al, !noalias !967 ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options20InnerOverrideOptionsEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.an unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options20InnerOverrideOptionsEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume.i:                                  ; preds = %bb.al, %bb.ak, %.body.i.i.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.d ], [ %lpad.thr_comm.i.i.i, %bb.ak ], [ %lpad.thr_comm.split-lp.i, %bb.al ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 48, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !967, !nonnull !3, !noundef !3
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !967, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 48, i1 false)
  %i.o = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !968
  %i.p = invoke { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.6.0.copyload.i)
          to label %bb.g unwind label %bb.ak, !noalias !969 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 3 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.k, align 8, !noalias !970, !noundef !3 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.t, align 8, !noalias !970, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !970
  store ptr %i.s, ptr %i.h, align 8, !noalias !970
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.u, ptr %i.v, align 8, !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !970
  store ptr %i.q, ptr %i.g, align 8, !noalias !970
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %i.w, align 8, !noalias !970
  %i.x = icmp eq ptr %i.s, %i.q
  br i1 %i.x, label %bb.k, label %bb.j, !prof !6

bb.i:                                             ; preds = %bb.g
  store ptr %i.q, ptr %i.k, align 8, !noalias !970
  store ptr %i.r, ptr %i.t, align 8, !noalias !970
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !970
  store ptr %i.h, ptr %i.f, align 8, !noalias !970
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !970
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.y, align 8, !noalias !970
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !970
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27
          to label %.noexc.i.i.i unwind label %bb.ak, !noalias !969

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !970
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.k ], [ %i.k, %bb.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !noalias !967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !971, !noalias !969, !nonnull !3, !noundef !3 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !971, !noalias !969, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !3, !noalias !972, !nonnull !3
  %i.af = invoke { ptr, ptr } %i.ae(ptr noundef nonnull %i.aa)
          to label %bb.l unwind label %bb.ag, !noalias !972 ; 2 uses

bb.l:                                             ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 11 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1      ; 9 uses
  %i.ai = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settingss_1__30merge_overrides_Configuration_EE13get_or_createNtB1N_15merge_overridesKj1_EB1R_(ptr noundef nonnull align 4 @_RNvNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settingss_1__29merge_overrides_INTERN_CACHE_, ptr noundef nonnull align 8 %i.ag)
          to label %bb.m unwind label %bb.ag, !noalias !972

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !967
  %i.aj = invoke { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settingss_1__30merge_overrides_Configuration_E9intern_idTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB2F_4sync3ArcNtNtB13_7options20InnerOverrideOptionsEEuENCNCNvB11_15merge_overrides00EB15_(ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull align 8 %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !969 ; 2 uses

.noexc5.i.i.i:                                    ; preds = %bb.m
  %i.ak = extractvalue { i32, i32 } %i.aj, 0      ; 4 uses
  %i.al = extractvalue { i32, i32 } %i.aj, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !972
  %i.am = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settingss_1__30merge_overrides_Configuration_EE13get_or_createNtB1N_15merge_overridesKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settingss_1__25merge_overrides_FN_CACHE_, ptr noundef nonnull align 8 %i.ag)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !969 ; 6 uses

.noexc6.i.i.i:                                    ; preds = %.noexc5.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 520
  %i.ao = load atomic i32, ptr %i.an acquire, align 8, !noalias !973
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1N_8metadata8settingss_1__NtB37_30merge_overrides_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.n, !prof !6

bb.n:                                             ; preds = %.noexc6.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtNtB1N_8metadata8settingss_1__NtB32_30merge_overrides_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.ac)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1N_8metadata8settingss_1__NtB37_30merge_overrides_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !969

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1N_8metadata8settingss_1__NtB37_30merge_overrides_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.n, %.noexc6.i.i.i
  %i.ar = load ptr, ptr %i.z, align 8, !alias.scope !971, !noalias !969, !nonnull !3, !noundef !3
  %i.as = load ptr, ptr %i.ab, align 8, !alias.scope !971, !noalias !969, !nonnull !3, !align !7, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !972
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 1352 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !noalias !974, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc4.i.i.i.i, label %bb.o, !prof !6

bb.o:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1N_8metadata8settingss_1__NtB37_30merge_overrides_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject9PyProjectEEDNtCs56aZGHL6Dc6_7ruff_db2DbEL_NCNvNtB38_6script15script_metadata0E0B1T_EB3a_:bb.a
bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !range !16, !noalias !1023, !noundef !3
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.m, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.am, align 8, !noalias !1025, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1025
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1025
  store i32 %i.au, ptr %i.ap, align 4, !noalias !1025
  %i.av = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1027 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.ak, align 8, !range !15, !noalias !1028, !noundef !3
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.av)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !1021 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !1023
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !noalias !1023
  %.not6.i21.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not6.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1029
  store ptr %i.c, ptr %i.b, align 8, !noalias !1029
  %i.bg = load ptr, ptr %i.ah, align 8, !noalias !1029, !noundef !3
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @68)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1021

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1029
  %i.bh = load i64, ptr %i.ak, align 8, !range !15, !noalias !1029, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bh)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1021

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1029
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1021

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E10fetch_coldB19_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !1021 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bi, %.noexc16.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bl = load i8, ptr %i.bk, align 2, !range !17, !noalias !1023, !noundef !3
  %i.bm = load i64, ptr %i.bj, align 8, !range !15, !noalias !1023, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !1023
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1025
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1021

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1021

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !1030
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1031, !noalias !1032, !noundef !3 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1031, !noalias !1032, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1031, !noalias !1032, !noundef !3 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1023

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1033
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1033
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1033
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1033
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !1023

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1033
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !1025
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !1025, !noundef !3
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !1025
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata6script1__30script_metadata_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs4o81Y09oZk1_10ty_project(ptr %.sroa.0.0.i.i.i.i) #29
          to label %bb.ac unwind label %bb.ab, !noalias !1021

bb.y:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !1025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1023
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1021, !noundef !3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1021 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1021
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !3, !noalias !1021, !nonnull !3
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg), !noalias !1021, !inline_history !1018
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1021
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1021
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  ret ptr %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCsoTR8nlGN3X_18ty_python_semantic4lint13RuleSelectionDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvNvMsd_B2U_NtB2U_7Project5rules6rules_0E0B1T_EB2U_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !1066, !inline_history !1036 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1066, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1066, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1066 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1066 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1066 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1067
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !1068, !inline_history !1041 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1069, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1069, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1069
  store ptr %i.n, ptr %i.g, align 8, !noalias !1069
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1069
  store ptr %i.l, ptr %i.f, align 8, !noalias !1069
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1069
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1069
  store ptr %i.m, ptr %i.o, align 8, !noalias !1069
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1069
  store ptr %i.g, ptr %i.e, align 8, !noalias !1069
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1069
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1069
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1069
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !1068
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1069
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !1070, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068, !inline_history !1046 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1T_7Project5rules1__21rules__Configuration_EE13get_or_createNtB1N_6rules_Kj0_EB1T_(ptr noundef nonnull align 4 @_RNvNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB9_7Project5rules1__16rules__FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1071
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project5rules1__NtB37_21rules__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project5rules1__NtB32_21rules__Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project5rules1__NtB37_21rules__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project5rules1__NtB37_21rules__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !14, !noalias !1070, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1070, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1070
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1072, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project5rules1__NtB37_21rules__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @69)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsd_B1N_NtB1N_7Project5rules1__NtB37_21rules__Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !4

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !4

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1072, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1073, !noalias !1072, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1a_7Project5rules1__21rules__Configuration_E23get_memo_from_table_forB1a_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1068 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1070, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1072, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1072
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1072
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1072
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1074 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !15, !noalias !1075, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !1068 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1070
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !1070
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1076
  store ptr %i.c, ptr %i.b, align 8, !noalias !1076
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !1076, !noundef !3
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @68)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1076
  %i.bg = load i64, ptr %i.ak, align 8, !range !15, !noalias !1076, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1076
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E10fetch_coldB1b_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !1068 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !17, !noalias !1070, !noundef !3
  %i.bl = load i64, ptr %i.bi, align 8, !range !15, !noalias !1070, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !1070
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1072
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1068

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !1077
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1078, !noalias !1079, !noundef !3 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1078, !noalias !1079, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1078, !noalias !1079, !noundef !3 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1070

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1080
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1080
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1080
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1080
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !1070

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1080
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !1072
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !1072, !noundef !3
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !1072
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsd_Cs4o81Y09oZk1_10ty_projectNtB1b_7Project5rules1__21rules__Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs4o81Y09oZk1_10ty_project(ptr %.sroa.0.0.i.i.i.i) #29
          to label %bb.ac unwind label %bb.ab, !noalias !1068

bb.y:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.ce, ptr %i.br, align 8, !noalias !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1070
  %i.cf = load ptr, ptr %2, align 8, !noalias !1070, !nonnull !3, !noundef !3
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1068, !noundef !3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1068 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1068
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !3, !noalias !1068, !nonnull !3
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg), !noalias !1068, !inline_history !1065
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1068
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1068
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  ret ptr %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtNtCs4o81Y09oZk1_10ty_project8metadata8settings12FileSettingsDNtNtB20_2db2DbEL_NCNvB1W_13file_settings0E0B1T_EB20_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !1117, !inline_history !1083 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1117, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1117, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1117 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1117 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1117 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1118
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !1119, !inline_history !1088 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1120, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1120, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1120
  store ptr %i.n, ptr %i.g, align 8, !noalias !1120
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1120
  store ptr %i.l, ptr %i.f, align 8, !noalias !1120
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1120
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1120
  store ptr %i.m, ptr %i.o, align 8, !noalias !1120
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1120
  store ptr %i.g, ptr %i.e, align 8, !noalias !1120
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1120
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1120
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1120
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !1119
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1120
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !1121, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119, !inline_history !1093 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_EE13get_or_createNtB1N_13file_settingsKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__23file_settings_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1122
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__NtB7_13file_settings14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtNtB1N_8metadata8settings1__NtB32_28file_settings_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__NtB7_13file_settings14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

_RNvMs2_NvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__NtB7_13file_settings14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !14, !noalias !1121, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1121, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1121
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1123, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RNvMs2_NvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__NtB7_13file_settings14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @69)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__NtB7_13file_settings14fn_ingredient_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !4

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !4

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1123, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1124, !noalias !1123, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E23get_memo_from_table_forB18_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1119 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !range !16, !noalias !1121, !noundef !3
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.m, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.am, align 8, !noalias !1123, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1123
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1123
  store i32 %i.au, ptr %i.ap, align 4, !noalias !1123
  %i.av = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1125 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.ak, align 8, !range !15, !noalias !1126, !noundef !3
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.av)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !1119 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !1121
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !noalias !1121
  %.not6.i21.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not6.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1127
  store ptr %i.c, ptr %i.b, align 8, !noalias !1127
  %i.bg = load ptr, ptr %i.ah, align 8, !noalias !1127, !noundef !3
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @68)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1127
  %i.bh = load i64, ptr %i.ak, align 8, !range !15, !noalias !1127, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bh)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1127
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E10fetch_coldB19_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !1119 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bi, %.noexc16.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bl = load i8, ptr %i.bk, align 2, !range !17, !noalias !1121, !noundef !3
  %i.bm = load i64, ptr %i.bj, align 8, !range !15, !noalias !1121, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !1121
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1123
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1119

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !1128
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1129, !noalias !1130, !noundef !3 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1129, !noalias !1130, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1129, !noalias !1130, !noundef !3 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1121

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1131
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1131
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1131
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1131
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !1121

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1131
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !1123
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !1123, !noundef !3
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !1123
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs4o81Y09oZk1_10ty_project8metadata8settings1__28file_settings_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs4o81Y09oZk1_10ty_project(ptr %.sroa.0.0.i.i.i.i) #29
          to label %bb.ac unwind label %bb.ab, !noalias !1119

bb.y:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !1123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1121
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1119, !noundef !3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1119 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1119
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !3, !noalias !1119, !nonnull !3
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg), !noalias !1119, !inline_history !1116
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1119
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1119
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  ret ptr %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB1X_17is_open_file_impl0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !1164, !inline_history !1134 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachbDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB21_17is_open_file_impl0E0bEB23_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1164, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1164, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1164 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1164 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1164 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1165
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !1166, !inline_history !1139 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1167, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1167, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1167
  store ptr %i.n, ptr %i.g, align 8, !noalias !1167
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1167
  store ptr %i.l, ptr %i.f, align 8, !noalias !1167
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1167
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1167
  store ptr %i.m, ptr %i.o, align 8, !noalias !1167
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1167
  store ptr %i.g, ptr %i.e, align 8, !noalias !1167
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1167
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1167
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1167
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !1166
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1167
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !1168, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166, !inline_history !1144 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_EE13get_or_createNtB1N_17is_open_file_implKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs4o81Y09oZk1_10ty_project2db1__27is_open_file_impl_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1169
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1L_1__NtB37_32is_open_file_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvB1L_1__NtB32_32is_open_file_impl_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1L_1__NtB37_32is_open_file_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1L_1__NtB37_32is_open_file_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !14, !noalias !1168, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1168, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1170, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1L_1__NtB37_32is_open_file_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @69)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1L_1__NtB37_32is_open_file_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !4

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !4

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1170, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1171, !noalias !1170, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1166 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !range !19, !noalias !1168, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, 2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1170, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1170
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1170
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1170
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1172 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !15, !noalias !1173, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !1166 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1168
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !1168
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1174
  store ptr %i.c, ptr %i.b, align 8, !noalias !1174
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !1174, !noundef !3
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @68)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1174
  %i.bg = load i64, ptr %i.ak, align 8, !range !15, !noalias !1174, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1174
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !1166 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !17, !noalias !1168, !noundef !3
  %i.bl = load i64, ptr %i.bi, align 8, !range !15, !noalias !1168, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !1168
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1170
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1166

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !1175
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1176, !noalias !1177, !noundef !3 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1176, !noalias !1177, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1176, !noalias !1177, !noundef !3 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1168

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1178
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1178
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1178
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1178
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !1168

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1178
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !1170
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !1170, !noundef !3
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !1170
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs4o81Y09oZk1_10ty_project2db1__32is_open_file_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs4o81Y09oZk1_10ty_project(ptr %.sroa.0.0.i.i.i.i) #29
          to label %bb.ac unwind label %bb.ab, !noalias !1166

bb.y:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.ce, ptr %i.br, align 8, !noalias !1170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1168
  %i.cf = load i8, ptr %2, align 8, !range !5, !noalias !1168, !noundef !3
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1166, !noundef !3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1166 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1166
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !3, !noalias !1166, !nonnull !3
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg), !noalias !1166, !inline_history !1163
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1166
  br label %bb.ad

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1166
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachbDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB21_17is_open_file_impl0E0bEB23_.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = trunc nuw i8 %i.cf to i1
  ret i1 %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB1Z_17should_check_file0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !1211, !inline_history !1181 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachbDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB23_17should_check_file0E0bEB23_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1211, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1211, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1211 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1211 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1211 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1212
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !1213, !inline_history !1186 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1214, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1214, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1214
  store ptr %i.n, ptr %i.g, align 8, !noalias !1214
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1214
  store ptr %i.l, ptr %i.f, align 8, !noalias !1214
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1214
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1214
  store ptr %i.m, ptr %i.o, align 8, !noalias !1214
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1214
  store ptr %i.g, ptr %i.e, align 8, !noalias !1214
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1214
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1214
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1214
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !1213
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1214
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !1215, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213, !inline_history !1191 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_EE13get_or_createNtB1N_17should_check_fileKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvCs4o81Y09oZk1_10ty_projects_1__27should_check_file_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1216
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1N_s_1__NtB37_32should_check_file_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvB1N_s_1__NtB32_32should_check_file_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1N_s_1__NtB37_32should_check_file_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1N_s_1__NtB37_32should_check_file_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !14, !noalias !1215, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1215, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1215
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1217, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1N_s_1__NtB37_32should_check_file_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @69)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvB1N_s_1__NtB37_32should_check_file_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !4

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !4

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1217, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1218, !noalias !1217, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E23get_memo_from_table_forB14_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1213 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !range !19, !noalias !1215, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, 2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1217, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1217
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1217
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1217
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1219 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !15, !noalias !1220, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !6

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !1213 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1215
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !1215
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1221
  store ptr %i.c, ptr %i.b, align 8, !noalias !1221
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !1221, !noundef !3
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @68)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1221
  %i.bg = load i64, ptr %i.ak, align 8, !range !15, !noalias !1221, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1221
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E10fetch_coldB15_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !1213 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !17, !noalias !1215, !noundef !3
  %i.bl = load i64, ptr %i.bi, align 8, !range !15, !noalias !1215, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !1215
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1217
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1213

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !1222
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1223, !noalias !1224, !noundef !3 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1223, !noalias !1224, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1223, !noalias !1224, !noundef !3 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1215

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1225
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1225
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1225
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1225
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !1215

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1225
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !1217
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !1217, !noundef !3
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !1217
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs4o81Y09oZk1_10ty_projects_1__32should_check_file_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs4o81Y09oZk1_10ty_project(ptr %.sroa.0.0.i.i.i.i) #29
          to label %bb.ac unwind label %bb.ab, !noalias !1213

bb.y:                                             ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.ce, ptr %i.br, align 8, !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1215
  %i.cf = load i8, ptr %2, align 8, !range !5, !noalias !1215, !noundef !3
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1213, !noundef !3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1213 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1213
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !3, !noalias !1213, !nonnull !3
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg), !noalias !1213, !inline_history !1210
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1213
  br label %bb.ad

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1213
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachbDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCNvB23_17should_check_file0E0bEB23_.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = trunc nuw i8 %i.cf to i1
  ret i1 %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachuDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCINvB1Z_5catchNCNvNvXs0_NvB1Z_s0_1__NtB2X_30check_file_impl_Configuration_NtNtBY_8function13Configuration7execute6inner_0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB5H_EE0E0uEB1Z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !1244, !inline_history !1228 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachuDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_NCINvB23_5catchNCNvNvXs0_NvB23_s0_1__NtB31_30check_file_impl_Configuration_NtNtBY_8function13Configuration7execute6inner_0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB5L_EE0E0uEB23_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1244, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1244, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1244, !nonnull !3, !noundef !3
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1244, !nonnull !3, !noundef !3
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1245
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !1246, !inline_history !1234 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1247, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1247, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1247
  store ptr %i.n, ptr %i.g, align 8, !noalias !1247
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1247
  store ptr %i.l, ptr %i.f, align 8, !noalias !1247
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1247
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1247
  store ptr %i.m, ptr %i.o, align 8, !noalias !1247
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1247
  store ptr %i.g, ptr %i.e, align 8, !noalias !1247
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1247
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1247
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1247
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !1246
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1247
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1249
  store i64 0, ptr %i.c, align 8, !noalias !1249
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1249
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1249
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.u, align 8, !noalias !1249
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1249
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 2, !noalias !1249
  store ptr %i.c, ptr %i.b, align 8, !noalias !1249
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @147, ptr %i.v, align 8, !noalias !1249
  %i.w = invoke noundef zeroext i1 @_RNvXs9_NtCs45bxiIjzMqg_5salsa12active_queryNtB5_9BacktraceNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.6.0.copyload.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1250

bb.g:                                             ; preds = %bb.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body.i.i.i unwind label %bb.j, !noalias !1250

bb.h:                                             ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  br i1 %i.w, label %bb.i, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceNtB5_12SpecToString14spec_to_stringCs4o81Y09oZk1_10ty_project.exit.i.i.i.i, !prof !4

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.g, !noalias !1250

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1250
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceNtB5_12SpecToString14spec_to_stringCs4o81Y09oZk1_10ty_project.exit.i.i.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1249
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newNtNtCscdodAO9FK5_5alloc6string6StringECs4o81Y09oZk1_10ty_project(i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc.i.i.i unwind label %bb.k, !noalias !1252

.noexc.i.i.i:                                     ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceNtB5_12SpecToString14spec_to_stringCs4o81Y09oZk1_10ty_project.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1248
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.0.copyload.i, ptr noalias noundef nonnull align 8 %i.z)
          to label %_RNCINvCs4o81Y09oZk1_10ty_project5catchNCNvNvXs0_NvB4_s0_1__NtBK_30check_file_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB3J_EE0B4_.exit.i.i.i unwind label %bb.k, !noalias !1245

bb.k:                                             ; preds = %.noexc.i.i.i, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceNtB5_12SpecToString14spec_to_stringCs4o81Y09oZk1_10ty_project.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.g
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.x, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs4o81Y09oZk1_10ty_project(ptr %.sroa.0.0.i.i.i.i) #29
          to label %bb.o unwind label %bb.n, !noalias !1245

_RNCINvCs4o81Y09oZk1_10ty_project5catchNCNvNvXs0_NvB4_s0_1__NtBK_30check_file_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB3J_EE0B4_.exit.i.i.i: ; preds = %.noexc.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RNCINvCs4o81Y09oZk1_10ty_project5catchNCNvNvXs0_NvB4_s0_1__NtBK_30check_file_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEB3J_EE0B4_.exit.i.i.i
  %i.ab = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1246, !noundef !3 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1246 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1246
  %.not3.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not3.i.i.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !3, !noalias !1245, !nonnull !3
  %i.ag = call noundef nonnull align 8 ptr %i.af(ptr noundef nonnull %i.ab), !noalias !1245, !inline_history !1243
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag), !noalias !1245
  br label %bb.p

bb.n:                                             ; preds = %.body.i.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1245
  unreachable
end_hunk_1
