Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.12?download=true
inline.NumInlined: 1242
inline.NumDeleted: 660
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdDNtNtB1X_2db2DbEL_NCNvB1X_12global_scope0E0B1T_EB1X_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !305, !inline_history !274 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !306, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !306, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !306
  store ptr %i.n, ptr %i.g, align 8, !noalias !306
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !306
  store ptr %i.l, ptr %i.f, align 8, !noalias !306
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !306
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !306
  store ptr %i.m, ptr %i.o, align 8, !noalias !306
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !306
  store ptr %i.g, ptr %i.e, align 8, !noalias !306
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !306
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !306
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !306
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29, !noalias !305
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !306
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !noalias !307, !nonnull !4
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305, !inline_history !279 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_EE13get_or_createNtB1N_12global_scopeKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvCs2O29vuvTAEJ_14ty_python_cores1_1__22global_scope_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !308
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores1_1__NtB7_12global_scope14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvB1N_s1_1__NtB36_27global_scope_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores1_1__NtB7_12global_scope14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores1_1__NtB7_12global_scope14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !6, !noalias !307, !noundef !4 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !307, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !307
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !309, !noundef !4
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores1_1__NtB7_12global_scope14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @135)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores1_1__NtB7_12global_scope14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc9.i.i.i, !prof !7

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !7

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !309, !noundef !4
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val6.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !310, !noalias !309, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E23get_memo_from_table_forB14_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val6.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !305 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !noalias !307, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ak, align 8, !noalias !309, !noundef !4
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !309
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !309
  store i32 %i.ar, ptr %i.an, align 4, !noalias !309
  %i.as = load atomic i64, ptr %i.ao acquire, align 8, !noalias !311 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !8, !noalias !312, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !5

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !305 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !307
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !307
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !313
  store ptr %i.c, ptr %i.b, align 8, !noalias !313
  %i.bd = load ptr, ptr %i.af, align 8, !noalias !313, !noundef !4
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @132)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !313
  %i.be = load i64, ptr %i.ai, align 8, !range !8, !noalias !313, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.be)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !313
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E10fetch_coldB15_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val6.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !305 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc14.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bf, %.noexc16.i.i.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bi = load i8, ptr %i.bh, align 2, !range !9, !noalias !307, !noundef !4
  %i.bj = load i64, ptr %i.bg, align 8, !range !8, !noalias !307, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bl = load atomic i8, ptr %i.bk monotonic, align 1, !noalias !307
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !309
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bg)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !305

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bo, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bp, align 8, !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !315, !noalias !316, !noundef !4 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !315, !noalias !316, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !315, !noalias !316, !noundef !4 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.br, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !307

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr [152 x i8], ptr %i.bt, i64 %i.br
  %i.bx = getelementptr i8, ptr %i.bw, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !317
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !317
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !317
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !317
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bx, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bi, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !307

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  %.pre.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !309
  %i.by = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i64, ptr %i.bp, align 8, !noalias !309, !noundef !4
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bp, align 8, !noalias !309
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs2O29vuvTAEJ_14ty_python_core(ptr %.sroa.0.0.i.i.i.i) #30
          to label %bb.ac unwind label %bb.ab, !noalias !305

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cc = phi i64 [ %i.by, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.cc, ptr %i.bp, align 8, !noalias !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !307
  %i.cd = load i32, ptr %2, align 8, !range !6, !noalias !307, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !307, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !305, !noundef !4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !305 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !305
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !4, !noalias !305, !nonnull !4
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg), !noalias !305, !inline_history !302
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !305
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !305
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = insertvalue { i32, i32 } poison, i32 %i.cd, 0
  %i.co = insertvalue { i32, i32 } %i.cn, i32 %i.cf, 1
  ret { i32, i32 } %i.co
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramDNtNtB1X_2db13TestProgramDbEL_NCNvNvB2I_7program13program_inner0E0B1T_EB1X_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !350, !inline_history !320 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !350, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !350, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !350, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !350, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !353, !inline_history !325 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !354, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !354, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !354
  store ptr %i.n, ptr %i.g, align 8, !noalias !354
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !354
  store ptr %i.l, ptr %i.f, align 8, !noalias !354
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !354
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !354
  store ptr %i.m, ptr %i.o, align 8, !noalias !354
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !354
  store ptr %i.g, ptr %i.e, align 8, !noalias !354
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !354
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !354
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !354
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29, !noalias !351
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !354
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !alias.scope !356, !noalias !351, !nonnull !4
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351, !inline_history !330 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 9 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_EE13get_or_createNtB1N_13program_innerKj1_EB1T_(ptr noundef nonnull align 4 @_RNvNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__27program_inner_INTERN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = invoke { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9intern_iduNCNCNvB11_13program_inner00EB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351 ; 2 uses

.noexc5.i.i.i:                                    ; preds = %.noexc4.i.i.i
  %i.ab = extractvalue { i32, i32 } %i.aa, 0      ; 4 uses
  %i.ac = extractvalue { i32, i32 } %i.aa, 1      ; 4 uses
  %i.ad = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_EE13get_or_createNtB1N_13program_innerKj0_EB1T_(ptr noundef nonnull align 4 @_RNvNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__23program_inner_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351 ; 6 uses

.noexc6.i.i.i:                                    ; preds = %.noexc5.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 520
  %i.af = load atomic i32, ptr %i.ae acquire, align 8, !noalias !357
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvB1J_7program1__NtB3n_28program_inner_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %.noexc6.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvB1J_7program1__NtB3i_28program_inner_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvB1J_7program1__NtB3n_28program_inner_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvB1J_7program1__NtB3n_28program_inner_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc6.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !358
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !359, !noundef !4
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc8.i.i.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvB1J_7program1__NtB3n_28program_inner_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @135)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc8.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvB1J_7program1__NtB3n_28program_inner_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.ak = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc9.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.ak, label %bb.i, label %.noexc11.i.i.i, !prof !7

.noexc11.i.i.i:                                   ; preds = %bb.i, %.noexc9.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.am = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.al)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc10.i.i.i:                                   ; preds = %.noexc11.i.i.i
  br i1 %i.am, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !7

bb.i:                                             ; preds = %.noexc9.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

bb.j:                                             ; preds = %.noexc10.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc10.i.i.i
  %i.an = getelementptr i8, ptr %i.ad, i64 576    ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.an, align 8, !noalias !359, !noundef !4
  %i.ao = getelementptr i8, ptr %i.ad, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !360, !noalias !359, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc18.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ar = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E23get_memo_from_table_forB1a_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ab, i32 noundef %i.ac, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i, !noalias !351 ; 11 uses

.noexc13.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc13.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !noalias !351, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.an, align 8, !noalias !359, !noundef !4
  store i32 %i.ab, ptr %i.d, align 4, !noalias !361
  store i32 %i.ac, ptr %i.ap, align 4, !noalias !361
  store i32 %i.au, ptr %i.aq, align 4, !noalias !361
  %i.av = load atomic i64, ptr %i.ar acquire, align 8, !noalias !362 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.al, align 8, !range !8, !noalias !363, !noundef !4
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !5

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ar, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.av)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !351 ; 2 uses

.noexc14.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc14.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 29
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !351
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 29
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !noalias !351
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !364
  store ptr %i.c, ptr %i.b, align 8, !noalias !364
  %i.bg = load ptr, ptr %i.ai, align 8, !noalias !365, !noundef !4
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc15.i.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @132)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc15.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !364
  %i.bh = load i64, ptr %i.al, align 8, !range !8, !noalias !365, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ar, i64 noundef %i.bh)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc16.i.i.i:                                   ; preds = %.noexc15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !364
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ar, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc14.i.i.i, %bb.l, %.noexc13.i.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E10fetch_coldB1b_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ab, i32 noundef %i.ac, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !351 ; 2 uses

.noexc18.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i: ; preds = %.noexc18.i.i.i, %.thread.i.i.i.i.i, %.noexc16.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.ar, %.noexc16.i.i.i ], [ %i.ar, %.thread.i.i.i.i.i ], [ %i.bi, %.noexc18.i.i.i ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bl = load i8, ptr %i.bk, align 2, !range !9, !noalias !351, !noundef !4
  %i.bm = load i64, ptr %i.bj, align 8, !range !8, !noalias !351, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !351
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !361
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E12refresh_memoB1b_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !366
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !367, !noalias !368, !noundef !4 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !367, !noalias !368, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !367, !noalias !368, !noundef !4 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !351

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !369
  store i32 %i.ab, ptr %i.a, align 4, !noalias !369
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ac, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !369
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !369
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !351

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !369
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !359
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !359, !noundef !4
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !359
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E9fetch_hotB1b_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc16.i.i.i, %.noexc15.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc11.i.i.i, %.noexc8.i.i.i, %bb.h, %bb.g, %.noexc5.i.i.i, %.noexc4.i.i.i, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs2O29vuvTAEJ_14ty_python_core(ptr %.sroa.0.0.i.i.i.i) #30
          to label %bb.ac unwind label %bb.ab, !noalias !351

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !358
  %i.cg = load i32, ptr %2, align 8, !range !6, !noalias !351, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !351, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !353, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !353 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !353
  %.not3.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !invariant.load !4, !noalias !351, !nonnull !4
  %i.co = call noundef nonnull align 8 ptr %i.cn(ptr noundef nonnull %i.cj), !noalias !351, !inline_history !349
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co), !noalias !351
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !351
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cq = insertvalue { i32, i32 } poison, i32 %i.cg, 0
  %i.cr = insertvalue { i32, i32 } %i.cq, i32 %i.ci, 1
  ret { i32, i32 } %i.cr
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtCs2O29vuvTAEJ_14ty_python_core13SemanticIndexDNtNtB1W_2db2DbEL_NCNvB1W_14semantic_index0E0B1T_EB1W_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !406, !inline_history !372 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !406, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !406, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !406 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !406 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !406 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !407
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !408, !inline_history !377 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !409, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !409, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !409
  store ptr %i.n, ptr %i.g, align 8, !noalias !409
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !409
  store ptr %i.l, ptr %i.f, align 8, !noalias !409
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !409
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !409
  store ptr %i.m, ptr %i.o, align 8, !noalias !409
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !409
  store ptr %i.g, ptr %i.e, align 8, !noalias !409
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !409
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !409
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !409
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29, !noalias !408
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !409
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !noalias !410, !nonnull !4
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408, !inline_history !382 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_EE13get_or_createNtB1N_14semantic_indexKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvCs2O29vuvTAEJ_14ty_python_core1__24semantic_index_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !411
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_core1__NtB7_14semantic_index14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvB1N_1__NtB36_29semantic_index_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_core1__NtB7_14semantic_index14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_core1__NtB7_14semantic_index14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !6, !noalias !410, !noundef !4 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !410, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !410
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !412, !noundef !4
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_core1__NtB7_14semantic_index14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @135)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_core1__NtB7_14semantic_index14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc9.i.i.i, !prof !7

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !7

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !412, !noundef !4
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !413, !noalias !412, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E23get_memo_from_table_forB14_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !408 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !range !11, !noalias !410, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.aq, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ak, align 8, !noalias !412, !noundef !4
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !412
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !412
  store i32 %i.ar, ptr %i.an, align 4, !noalias !412
  %i.as = load atomic i64, ptr %i.ao acquire, align 8, !noalias !414 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !8, !noalias !415, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !5

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !408 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !410
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !410
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !416
  store ptr %i.c, ptr %i.b, align 8, !noalias !416
  %i.bd = load ptr, ptr %i.af, align 8, !noalias !416, !noundef !4
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @132)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !416
  %i.be = load i64, ptr %i.ai, align 8, !range !8, !noalias !416, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.be)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !416
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E10fetch_coldB15_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !408 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc14.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bf, %.noexc16.i.i.i ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bi = load i8, ptr %i.bh, align 2, !range !9, !noalias !410, !noundef !4
  %i.bj = load i64, ptr %i.bg, align 8, !range !8, !noalias !410, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bl = load atomic i8, ptr %i.bk monotonic, align 1, !noalias !410
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !412
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bg)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !408

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bo, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bp, align 8, !noalias !417
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !418, !noalias !419, !noundef !4 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !418, !noalias !419, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !418, !noalias !419, !noundef !4 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.br, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !410

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr [152 x i8], ptr %i.bt, i64 %i.br
  %i.bx = getelementptr i8, ptr %i.bw, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !420
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !420
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !420
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !420
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bx, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bi, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !410

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !420
  %.pre.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !412
  %i.by = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i64, ptr %i.bp, align 8, !noalias !412, !noundef !4
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bp, align 8, !noalias !412
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs2O29vuvTAEJ_14ty_python_core(ptr %.sroa.0.0.i.i.i.i) #30
          to label %bb.ac unwind label %bb.ab, !noalias !408

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cc = phi i64 [ %i.by, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cc, ptr %i.bp, align 8, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !410
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !408, !noundef !4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !408 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !408
  %.not3.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !4, !noalias !408, !nonnull !4
  %i.ci = call noundef nonnull align 8 ptr %i.ch(ptr noundef nonnull %i.cd), !noalias !408, !inline_history !405
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ci), !noalias !408
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !408
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.ck
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCs2O29vuvTAEJ_14ty_python_core5place10PlaceTableDNtNtB1Y_2db2DbEL_NCNvB1Y_11place_table0E0B1T_EB1Y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !457, !inline_history !423 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !457, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !457, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !457 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !457 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !457 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !458
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !459, !inline_history !428 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !460, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !460, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !460
  store ptr %i.n, ptr %i.g, align 8, !noalias !460
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !460
  store ptr %i.l, ptr %i.f, align 8, !noalias !460
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !460
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !460
  store ptr %i.m, ptr %i.o, align 8, !noalias !460
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !460
  store ptr %i.g, ptr %i.e, align 8, !noalias !460
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !460
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !460
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !460
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29, !noalias !459
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !460
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !noalias !461, !nonnull !4
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459, !inline_history !433 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_EE13get_or_createNtB1N_11place_tableKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvCs2O29vuvTAEJ_14ty_python_cores_1__21place_table_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !462
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores_1__NtB7_11place_table14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvB1N_s_1__NtB36_26place_table_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores_1__NtB7_11place_table14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores_1__NtB7_11place_table14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !6, !noalias !461, !noundef !4 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !461, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !461
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !463, !noundef !4
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores_1__NtB7_11place_table14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @135)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores_1__NtB7_11place_table14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc9.i.i.i, !prof !7

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !7

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !463, !noundef !4
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !464, !noalias !463, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E23get_memo_from_table_forB14_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !459 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !461, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ak, align 8, !noalias !463, !noundef !4
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !463
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !463
  store i32 %i.ar, ptr %i.an, align 4, !noalias !463
  %i.as = load atomic i64, ptr %i.ao acquire, align 8, !noalias !465 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !8, !noalias !466, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !5

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !459 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !461
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !461
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !467
  store ptr %i.c, ptr %i.b, align 8, !noalias !467
  %i.bd = load ptr, ptr %i.af, align 8, !noalias !467, !noundef !4
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @132)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !467
  %i.be = load i64, ptr %i.ai, align 8, !range !8, !noalias !467, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.be)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !467
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E10fetch_coldB15_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !459 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc14.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bf, %.noexc16.i.i.i ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bi = load i8, ptr %i.bh, align 2, !range !9, !noalias !461, !noundef !4
  %i.bj = load i64, ptr %i.bg, align 8, !range !8, !noalias !461, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bl = load atomic i8, ptr %i.bk monotonic, align 1, !noalias !461
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !463
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bg)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !459

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bo, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bp, align 8, !noalias !468
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !469, !noalias !470, !noundef !4 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !469, !noalias !470, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !469, !noalias !470, !noundef !4 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.br, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !461

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr [152 x i8], ptr %i.bt, i64 %i.br
  %i.bx = getelementptr i8, ptr %i.bw, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !471
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !471
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !471
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !471
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bx, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bi, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !461

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !471
  %.pre.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !463
  %i.by = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i64, ptr %i.bp, align 8, !noalias !463, !noundef !4
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bp, align 8, !noalias !463
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs2O29vuvTAEJ_14ty_python_core(ptr %.sroa.0.0.i.i.i.i) #30
          to label %bb.ac unwind label %bb.ab, !noalias !459

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cc = phi i64 [ %i.by, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.cc, ptr %i.bp, align 8, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !461
  %i.cd = load ptr, ptr %2, align 8, !noalias !461, !nonnull !4, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !459, !noundef !4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !459 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !459
  %.not3.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !4, !noalias !459, !nonnull !4
  %i.cj = call noundef nonnull align 8 ptr %i.ci(ptr noundef nonnull %i.ce), !noalias !459, !inline_history !456
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj), !noalias !459
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !459
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  ret ptr %i.cl
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCs2O29vuvTAEJ_14ty_python_core7use_def9UseDefMapDNtNtB1Y_2db2DbEL_NCNvB1Y_11use_def_map0E0B1T_EB1Y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !508, !inline_history !474 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !508, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !508, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !508 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !508 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !508 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !509
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !510, !inline_history !479 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !511, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !511, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !511
  store ptr %i.n, ptr %i.g, align 8, !noalias !511
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !511
  store ptr %i.l, ptr %i.f, align 8, !noalias !511
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !511
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !511
  store ptr %i.m, ptr %i.o, align 8, !noalias !511
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !511
  store ptr %i.g, ptr %i.e, align 8, !noalias !511
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !511
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !511
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !511
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29, !noalias !510
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !511
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !noalias !512, !nonnull !4
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510, !inline_history !484 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_EE13get_or_createNtB1N_11use_def_mapKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvCs2O29vuvTAEJ_14ty_python_cores0_1__21use_def_map_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !513
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores0_1__NtB7_11use_def_map14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvB1N_s0_1__NtB36_26use_def_map_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores0_1__NtB7_11use_def_map14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores0_1__NtB7_11use_def_map14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !6, !noalias !512, !noundef !4 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !512, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !512
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !514, !noundef !4
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores0_1__NtB7_11use_def_map14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @135)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvCs2O29vuvTAEJ_14ty_python_cores0_1__NtB7_11use_def_map14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc9.i.i.i, !prof !7

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !7

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !514, !noundef !4
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !515, !noalias !514, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E23get_memo_from_table_forB14_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !510 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !512, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ak, align 8, !noalias !514, !noundef !4
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !514
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !514
  store i32 %i.ar, ptr %i.an, align 4, !noalias !514
  %i.as = load atomic i64, ptr %i.ao acquire, align 8, !noalias !516 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !8, !noalias !517, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !5

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !510 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !512
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !512
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !518
  store ptr %i.c, ptr %i.b, align 8, !noalias !518
  %i.bd = load ptr, ptr %i.af, align 8, !noalias !518, !noundef !4
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @132)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  %i.be = load i64, ptr %i.ai, align 8, !range !8, !noalias !518, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.be)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !518
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E10fetch_coldB15_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !510 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc14.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bf, %.noexc16.i.i.i ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bi = load i8, ptr %i.bh, align 2, !range !9, !noalias !512, !noundef !4
  %i.bj = load i64, ptr %i.bg, align 8, !range !8, !noalias !512, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bl = load atomic i8, ptr %i.bk monotonic, align 1, !noalias !512
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !514
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E12refresh_memoB15_.exit.i.i.i.i.i
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bg)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !510

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bo, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bp, align 8, !noalias !519
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !520, !noalias !521, !noundef !4 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !520, !noalias !521, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !520, !noalias !521, !noundef !4 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.br, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !512

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr [152 x i8], ptr %i.bt, i64 %i.br
  %i.bx = getelementptr i8, ptr %i.bw, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !522
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !522
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !522
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !522
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bx, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bi, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !512

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !522
  %.pre.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !514
  %i.by = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i64, ptr %i.bp, align 8, !noalias !514, !noundef !4
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bp, align 8, !noalias !514
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E9fetch_hotB15_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs2O29vuvTAEJ_14ty_python_core(ptr %.sroa.0.0.i.i.i.i) #30
          to label %bb.ac unwind label %bb.ab, !noalias !510

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cc = phi i64 [ %i.by, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.cc, ptr %i.bp, align 8, !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !512
  %i.cd = load ptr, ptr %2, align 8, !noalias !512, !nonnull !4, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !510, !noundef !4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !510 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !510
  %.not3.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !4, !noalias !510, !nonnull !4
  %i.cj = call noundef nonnull align 8 ptr %i.ci(ptr noundef nonnull %i.ce), !noalias !510, !inline_history !507
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj), !noalias !510
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !510
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  ret ptr %i.cl
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_NCNvNtB2J_10re_exports14exported_names0E0B1T_EB2J_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !555, !inline_history !525 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !555, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !555, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !555 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !555 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !555 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !556
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !557, !inline_history !530 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !558, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !558, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !558
  store ptr %i.n, ptr %i.g, align 8, !noalias !558
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !558
  store ptr %i.l, ptr %i.f, align 8, !noalias !558
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !558
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !558
  store ptr %i.m, ptr %i.o, align 8, !noalias !558
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !558
  store ptr %i.g, ptr %i.e, align 8, !noalias !558
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !558
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !558
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs2O29vuvTAEJ_14ty_python_core, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !558
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29, !noalias !557
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !558
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !noalias !559, !nonnull !4
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557, !inline_history !535 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_EE13get_or_createNtB1N_14exported_namesKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__24exported_names_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !560
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_10re_exports1__NtB3b_29exported_names_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_10re_exports1__NtB36_29exported_names_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_10re_exports1__NtB3b_29exported_names_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_10re_exports1__NtB3b_29exported_names_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !6, !noalias !559, !noundef !4 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !559, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !559
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !561, !noundef !4
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_10re_exports1__NtB3b_29exported_names_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @135)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_10re_exports1__NtB3b_29exported_names_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !7

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !7

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !561, !noundef !4
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !562, !noalias !561, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !557 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !559, !align !12, !noundef !4
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !561, !noundef !4
  store i32 %i.ae, ptr %i.d, align 4, !noalias !561
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !561
  store i32 %i.at, ptr %i.ap, align 4, !noalias !561
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !563 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !8, !noalias !564, !noundef !4
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !5

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !557 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !559
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !559
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !565
  store ptr %i.c, ptr %i.b, align 8, !noalias !565
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !565, !noundef !4
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @132)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !565
  %i.bg = load i64, ptr %i.ak, align 8, !range !8, !noalias !565, !noundef !4
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !565
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !557 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !9, !noalias !559, !noundef !4
  %i.bl = load i64, ptr %i.bi, align 8, !range !8, !noalias !559, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !559
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !561
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !557

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !566
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !567, !noalias !568, !noundef !4 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !567, !noalias !568, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !567, !noalias !568, !noundef !4 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !559

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !569
  store i32 %i.ae, ptr %i.a, align 4, !noalias !569
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !569
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !569
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !559

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !569
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !561
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !561, !noundef !4
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !561
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs2O29vuvTAEJ_14ty_python_core(ptr %.sroa.0.0.i.i.i.i) #30
          to label %bb.ac unwind label %bb.ab, !noalias !557

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.ce, ptr %i.br, align 8, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !559
  %i.cf = load ptr, ptr %2, align 8, !noalias !559, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !559, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !557, !noundef !4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !557 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !557
  %.not3.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !4, !noalias !557, !nonnull !4
  %i.cn = call noundef nonnull align 8 ptr %i.cm(ptr noundef nonnull %i.ci), !noalias !557, !inline_history !554
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn), !noalias !557
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !557
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cp = insertvalue { ptr, i64 } poison, ptr %i.cf, 0
  %i.cq = insertvalue { ptr, i64 } %i.cp, i64 %i.ch, 1
  ret { ptr, i64 } %i.cq
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCINvMs_NtB8_11zalsa_localNtB2C_10ZalsaLocal13allocate_coldB13_NCNvMs3_B16_INtB16_14IngredientImplB1x_E8allocate0E0EB1B_(ptr noundef nonnull align 8 %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = tail call { i64, i64 } @_RNvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB5_5Table18take_non_full_page(ptr noundef nonnull align 8 %0, i32 noundef %1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.d, 1
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.h = load i32, ptr %3, align 4, !alias.scope !583, !noundef !4
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noalias !583, !noundef !4 ; 2 uses
  %i.l = icmp ugt i64 %i.k, %i.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !583, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !583, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !583, !nonnull !4, !align !12, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !4, !noalias !583, !nonnull !4
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noundef nonnull %i.p), !noalias !583, !inline_history !572
  %i.v = load ptr, ptr %i.u, align 8, !noalias !583, !nonnull !4, !noundef !4 ; 4 uses
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !583
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %_RNvYNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceB1N_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #29, !noalias !583
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvYNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceB1N_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.v, ptr %i.b, align 8, !noalias !584
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !584
  %i.y = tail call noundef align 8 dereferenceable_or_null(10240) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 5120, 23553) 10240, i64 noundef 8) #32, !noalias !584 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEB1k_.exit, !prof !7

bb.g:                                             ; preds = %_RNvYNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceB1N_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 10240) #29
          to label %.noexc.i unwind label %bb.h, !noalias !584

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !585
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.j, !noalias !584

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !584
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.p, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ %i.aq, %bb.p ], [ %i.ao, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEB1k_.exit: ; preds = %_RNvYNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtBa_10ZalsaLocal13allocate_coldINtNtBc_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvMs3_B1i_INtB1i_14IngredientImplB1J_E8allocate0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceB1N_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %1, ptr %i.ae, align 8, !alias.scope !584
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.af, align 8, !alias.scope !584
  store ptr %i.y, ptr %i.c, align 8, !alias.scope !584
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @19, ptr %i.ag, align 8, !alias.scope !584
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.v, ptr %i.ai, align 8, !alias.scope !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !586 ; 4 uses
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEB1k_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %0) #29
          to label %bb.o unwind label %bb.p, !noalias !586

bb.l:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_14tracked_struct5ValueNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEB1k_.exit
  %i.am = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.an = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, -9223372036854775808) %i.ak)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCs2O29vuvTAEJ_14ty_python_core.exit unwind label %bb.m, !noalias !587 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #30
          to label %common.resume unwind label %bb.n, !noalias !586

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !586
  unreachable

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #30
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store atomic i8 1, ptr %i.as release, align 8, !noalias !587
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.au = atomicrmw add ptr %i.at, i64 1 release, align 8, !noalias !587 ; 0 uses
  %i.av = add nsw i64 %i.ak, -32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCs2O29vuvTAEJ_14ty_python_core.exit, %bb.b
  %.sroa.0.0 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCs2O29vuvTAEJ_14ty_python_core.exit ]
  ret i64 %.sroa.0.0
end_hunk_0
begin_hunk_1_@_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox18bits_with_capacity:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ae, align 8, !noalias !2415
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !2415
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #29
          to label %.noexc2.i unwind label %bb.g, !noalias !2411

.noexc2.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec3vec6BitVecyNtNtBG_5order4Msb0EECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #30
          to label %bb.j unwind label %bb.i, !noalias !2411

bb.h:                                             ; preds = %_RNvMNtNtCsb80QtQtK5z0_6bitvec3vec3apiINtB4_6BitVecyNtNtB6_5order4Msb0E8capacityCs2O29vuvTAEJ_14ty_python_core.exit.i.i
  %i.ag = shl nuw i64 %1, 3
  store i64 %i.ag, ptr %i.w, align 8, !alias.scope !2414, !noalias !2411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2411
  %i.ah = and i64 %i.aa, -8
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah
  %i.aj = sub i64 0, %i.aa
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.al = add nuw nsw i64 %i.ac, %i.k
  %i.am = lshr i64 %i.al, 6
  invoke void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSy9fill_withNCNvMNtCsb80QtQtK5z0_6bitvec3vecINtBL_6BitVecyNtNtBN_5order4Msb0E6repeat0ECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 %i.ak, i64 noundef %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h)
          to label %_RNvMNtCsb80QtQtK5z0_6bitvec3vecINtB2_6BitVecyNtNtB4_5order4Msb0E6repeatCs2O29vuvTAEJ_14ty_python_core.exit unwind label %bb.g, !noalias !2411

bb.i:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2411
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.af

_RNvMNtCsb80QtQtK5z0_6bitvec3vecINtB2_6BitVecyNtNtB4_5order4Msb0E6repeatCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox9from_bits(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.d = ptrtoint ptr %.val to i64                ; 4 uses
  %i.e = and i64 %i.d, -8
  %i.f = getelementptr i8, ptr %.val, i64 %i.e
  %i.g = sub i64 0, %i.d
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = lshr i64 %.val3, 3
  %i.j = shl i64 %i.d, 3
  %i.k = and i64 %i.j, 56
  %i.l = and i64 %.val3, 7
  %i.m = add nuw nsw i64 %i.l, 63
  %i.n = add nuw nsw i64 %i.m, %i.i
  %i.o = add nuw nsw i64 %i.n, %i.k
  %i.p = lshr i64 %i.o, 6                         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p
  store ptr %i.h, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSmEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtBY_8adapters4scan4ScanINtNtNtB10_5slice4iter4IteryEmNCNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB35_10RankBitBox9from_bits0EEB37_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 4 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2421
  store i64 %.sroa.58.0.copyload, ptr %i.a, align 8, !alias.scope !2422, !noalias !2423
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.w, align 8, !alias.scope !2422, !noalias !2423
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.p, ptr %i.x, align 8, !alias.scope !2422, !noalias !2423
  %i.y = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecyE16into_boxed_sliceCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i64 %i.v, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef 4) #32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ac = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2421
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -8
  %i.af = and i64 %i.d, 7
  %i.ag = or disjoint i64 %i.ae, %i.af            ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = inttoptr i64 %i.ag to ptr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  store ptr %i.ai, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val3, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %i.al, align 8
  ret void

bb.f:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.h
  %.pn11 = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.z, %bb.d ], [ %i.z, %bb.c ]
  resume { ptr, i32 } %.pn11

bb.h:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec3vec6BitVecyNtNtBG_5order4Msb0EECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef align 8 dereferenceable(24) %1) #30
          to label %bb.g unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsb80QtQtK5z0_6bitvec5slice4iterINtB5_4IteryNtNtB9_5order4Msb0E3newCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([18 x i8]) align 1 captures(none) dereferenceable(18) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs2_NtNtCsb80QtQtK5z0_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB9_5order4Msb0E15to_bitptr_rangeCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull sret([18 x i8]) align 1 captures(none) dereferenceable(18) %0, ptr noundef nonnull %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core24reachability_constraintsNtB5_23ReachabilityConstraints17get_interior_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %i.d = lshr i64 %i.a, 6                         ; 6 uses
  %i.e = and i64 %i.a, 63                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2426, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2426, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.d
  %i.l = load i32, ptr %i.k, align 4, !noalias !2426, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %i.e, 0
  br i1 %i.m, label %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #29, !noalias !2426
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5.i = load i64, ptr %i.n, align 8, !alias.scope !2426, !noundef !4 ; 2 uses
  %i.o = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.p = lshr i64 %.val5.i, 3
  %i.q = shl i64 %i.o, 3
  %i.r = and i64 %i.q, 56
  %i.s = and i64 %.val5.i, 7
  %i.t = add nuw nsw i64 %i.r, 63
  %i.u = add nuw nsw i64 %i.t, %i.s
  %i.v = add nuw nsw i64 %i.u, %i.p
  %i.w = lshr i64 %i.v, 6                         ; 2 uses
  %i.x = icmp samesign ult i64 %i.d, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = and i64 %i.o, -8
  %i.z = getelementptr i8, ptr %i.c, i64 %i.y
  %i.aa = sub i64 0, %i.o
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.d
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2426, !noundef !4
  %i.ae = sub nuw nsw i64 64, %i.e
  %i.af = shl nsw i64 -1, %i.ae
  %i.ag = and i64 %i.ad, %i.af
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ag)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = add i32 %i.l, %i.ai
  br label %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #29, !noalias !2426
  unreachable

_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit: ; preds = %bb.c, %bb.f
  %.sroa.0.0.i = phi i32 [ %i.aj, %bb.f ], [ %i.l, %bb.c ]
  %i.ak = zext i32 %.sroa.0.0.i to i64            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.ak
  br i1 %i.an, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, %i.a
  br i1 %i.aq, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #29
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit, %bb.h
  %.sink15 = phi i64 [ %i.a, %bb.h ], [ %i.ak, %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit ]
  %i.ar = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.sink15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false)
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMs3_NtCs2O29vuvTAEJ_14ty_python_core24reachability_constraintsNtB5_30ReachabilityConstraintsBuilder12add_interior(ptr noalias noundef nonnull align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [20 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints12InteriorNodeNtB11_30ScopedReachabilityConstraintIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.o = load ptr, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.47.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.69.0.copyload = load i64, ptr %.sroa.69.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2448, !noalias !2449, !noundef !4 ; 3 uses
  %i.t = lshr i64 %i.s, 3                         ; 8 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2450
  store i64 %i.u, ptr %i.e, align 8, !noalias !2450
  %.not.i.i.i = icmp eq i64 %i.t, 2305843009213693951
  br i1 %.not.i.i.i, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2450
  store ptr %i.e, ptr %i.d, align 8, !noalias !2450
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !2450
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @119, ptr %i.v, align 8, !noalias !2450
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !2450
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @120, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #29, !noalias !2450
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2450
  %i.w = icmp eq i64 %i.t, 0
  %.sroa.06.0.copyload.i.pre.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2448, !noalias !2449 ; 4 uses
  %.pre19.i.i.i = ptrtoint ptr %.sroa.06.0.copyload.i.pre.i.i.i to i64 ; 6 uses
  %.pre21.i.i.i = shl i64 %.pre19.i.i.i, 3
  %.pre23.i.i.i = and i64 %.pre21.i.i.i, 56       ; 2 uses
  br i1 %i.w, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.thread.i.i.i, label %bb.g

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i, %bb.h, %bb.e
  %.pre-phi26.i.i.i = phi i64 [ %i.aq, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ], [ %i.aq, %bb.h ], [ %i.s, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2452
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.58.0.copyload.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2453, !noalias !2449 ; 2 uses
  %i.x = and i64 %.pre19.i.i.i, -8
  %i.y = getelementptr i8, ptr %.sroa.06.0.copyload.i.pre.i.i.i, i64 %i.x
  %i.z = sub i64 0, %.pre19.i.i.i
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z    ; 3 uses
  %i.ab = add nuw nsw i64 %i.t, 63
  %i.ac = add nuw nsw i64 %i.ab, %.pre23.i.i.i
  %i.ad = add nuw nsw i64 %i.ac, %.pre-phi26.i.i.i
  %i.ae = lshr i64 %i.ad, 6                       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store i64 %.sroa.58.0.copyload.i.i.i.i, ptr %i.c, align 8, !noalias !2452
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.aa, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !2452
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ae, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !2452
  %i.af = icmp eq i64 %i.ae, %.sroa.58.0.copyload.i.i.i.i
  br i1 %i.af, label %bb.f, label %_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i

bb.f:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.thread.i.i.i
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !2452
  %.pre.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2454, !noalias !2452
  br label %_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i

_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i: ; preds = %bb.f, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.thread.i.i.i
  %i.ag = phi ptr [ %i.aa, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.thread.i.i.i ], [ %.pre.i.i.i.i, %bb.f ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store i64 0, ptr %i.ah, align 8, !noalias !2452
  %i.ai = load ptr, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !2452, !nonnull !4, !noundef !4
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -8
  %i.al = and i64 %.pre19.i.i.i, 7                ; 2 uses
  %i.am = or disjoint i64 %i.ak, %i.al            ; 3 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %i.ao)
  store ptr %i.an, ptr %i.q, align 8, !alias.scope !2453, !noalias !2449
  %i.ap = load i64, ptr %i.c, align 8, !range !15, !noalias !2452, !noundef !4
  store i64 %i.ap, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2453, !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2452
  %.pre13.i.i.i = shl nuw nsw i64 %i.al, 3
  %.pre17.i.i.i = add nuw nsw i64 %.pre-phi26.i.i.i, %.pre13.i.i.i
  br label %_RNvMNtNtCsb80QtQtK5z0_6bitvec3vec3apiINtB4_6BitVecyNtNtB6_5order4Msb0E4pushCs2O29vuvTAEJ_14ty_python_core.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.aq = and i64 %i.s, 7                         ; 5 uses
  %i.ar = or disjoint i64 %.pre23.i.i.i, %i.aq    ; 4 uses
  %i.as = sub nuw nsw i64 64, %i.ar               ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.t, %i.as
  br i1 %.not.i.i.i.i, label %bb.h, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.at = sub nuw nsw i64 %i.t, %i.as
  %i.au = and i64 %i.at, 63
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.thread.i.i.i, label %_RNvMNtNtCsb80QtQtK5z0_6bitvec3vec3apiINtB4_6BitVecyNtNtB6_5order4Msb0E4pushCs2O29vuvTAEJ_14ty_python_core.exit.i.i

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i: ; preds = %bb.g
  %i.aw = trunc nuw nsw i64 %i.ar to i8
  %i.ax = trunc nuw nsw i64 %i.t to i8
  %i.ay = add nuw nsw i8 %i.aw, %i.ax
  %i.az = icmp eq i8 %i.ay, 64
  br i1 %i.az, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.thread.i.i.i, label %_RNvMNtNtCsb80QtQtK5z0_6bitvec3vec3apiINtB4_6BitVecyNtNtB6_5order4Msb0E4pushCs2O29vuvTAEJ_14ty_python_core.exit.i.i

_RNvMNtNtCsb80QtQtK5z0_6bitvec3vec3apiINtB4_6BitVecyNtNtB6_5order4Msb0E4pushCs2O29vuvTAEJ_14ty_python_core.exit.i.i: ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i, %bb.h, %_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i
  %.pre-phi18.i.i.i = phi i64 [ %i.ar, %bb.h ], [ %i.ar, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ], [ %.pre17.i.i.i, %_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ]
  %.pre-phi12.i.i.i = phi i64 [ %.pre19.i.i.i, %bb.h ], [ %.pre19.i.i.i, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ], [ %i.am, %_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %i.aq, %bb.h ], [ %i.aq, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ], [ %.pre-phi26.i.i.i, %_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ]
  %i.ba = phi ptr [ %.sroa.06.0.copyload.i.pre.i.i.i, %bb.h ], [ %.sroa.06.0.copyload.i.pre.i.i.i, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ], [ %i.an, %_RINvMs0_NtCsb80QtQtK5z0_6bitvec3vecINtB6_6BitVecyNtNtB8_5order4Msb0E8with_vecNCNvMNtB6_3apiBx_4push0uECs2O29vuvTAEJ_14ty_python_core.exit.i.i.i ]
  %i.bb = shl nuw i64 %i.u, 3
  %i.bc = add nuw nsw i64 %.pre-phi.i.i.i, %i.bb
  store i64 %i.bc, ptr %i.r, align 8, !alias.scope !2448, !noalias !2449
  %i.bd = and i64 %.pre-phi12.i.i.i, -8
  %i.be = getelementptr i8, ptr %i.ba, i64 %i.bd
  %i.bf = sub i64 0, %.pre-phi12.i.i.i
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = add nuw nsw i64 %.pre-phi18.i.i.i, %i.t ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = trunc i64 %i.bh to i8
  %i.bk = and i8 %i.bj, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2455
  store i64 %i.bi, ptr %i.b, align 8, !noalias !2455
end_hunk_1
