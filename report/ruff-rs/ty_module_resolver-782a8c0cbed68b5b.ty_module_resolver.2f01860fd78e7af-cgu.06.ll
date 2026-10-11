Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_module_resolver-782a8c0cbed68b5b.ty_module_resolver.2f01860fd78e7af-cgu.06?download=true
inline.NumInlined: 553
inline.NumDeleted: 257
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2z_2db2DbEL_NCNvNtB2z_7resolve14file_to_module0E0B1T_EB2z_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !351, !inline_history !317 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !352, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !352, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !352
  store ptr %i.n, ptr %i.g, align 8, !noalias !352
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !352
  store ptr %i.l, ptr %i.f, align 8, !noalias !352
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !352
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !352
  store ptr %i.m, ptr %i.o, align 8, !noalias !352
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !352
  store ptr %i.g, ptr %i.e, align 8, !noalias !352
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !352
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !352
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !352
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #15, !noalias !351
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !352
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !353, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351, !inline_history !323 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_EE13get_or_createNtB1N_14file_to_moduleKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__24file_to_module_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !354
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__NtB7_14file_to_module14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !4

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves1_1__NtB39_29file_to_module_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__NtB7_14file_to_module14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__NtB7_14file_to_module14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !5, !noalias !353, !noundef !3 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !353, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !353
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !355, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__NtB7_14file_to_module14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @50)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__NtB7_14file_to_module14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc9.i.i.i, !prof !6

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !6

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !355, !noundef !3
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !356, !noalias !355, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !351 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !range !11, !noalias !353, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.aq, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ak, align 8, !noalias !355, !noundef !3
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !355
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !355
  store i32 %i.ar, ptr %i.an, align 4, !noalias !355
  %i.as = load atomic i64, ptr %i.ao acquire, align 8, !noalias !357 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !8, !noalias !358, !noundef !3
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !4

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !351 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !353
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !353
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !359
  store ptr %i.c, ptr %i.b, align 8, !noalias !359
  %i.bd = load ptr, ptr %i.af, align 8, !noalias !359, !noundef !3
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @49)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !359
  %i.be = load i64, ptr %i.ai, align 8, !range !8, !noalias !359, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.be)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !359
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !351 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc14.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bf, %.noexc16.i.i.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bi = load i8, ptr %i.bh, align 2, !range !9, !noalias !353, !noundef !3
  %i.bj = load i64, ptr %i.bg, align 8, !range !8, !noalias !353, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bl = load atomic i8, ptr %i.bk monotonic, align 1, !noalias !353
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !355
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !4

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bg)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !351

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bo, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bp, align 8, !noalias !360
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !361, !noalias !362, !noundef !3 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !361, !noalias !362, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !361, !noalias !362, !noundef !3 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.br, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !353

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr [152 x i8], ptr %i.bt, i64 %i.br
  %i.bx = getelementptr i8, ptr %i.bw, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !363
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !363
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !363
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !363
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bx, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bi, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !353

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !363
  %.pre.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !355
  %i.by = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i64, ptr %i.bp, align 8, !noalias !355, !noundef !3
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bp, align 8, !noalias !355
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsfDzkztWVnn_18ty_module_resolver(ptr %.sroa.0.0.i.i.i.i) #16
          to label %bb.ac unwind label %bb.ab, !noalias !351

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cc = phi i64 [ %i.by, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.cc, ptr %i.bp, align 8, !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !353
  %.sroa.04.0.copyload = load i32, ptr %3, align 8, !noalias !364 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !364
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !351, !noundef !3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !351 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !351
  %.not3.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not3.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !3, !noalias !351, !nonnull !3
  %i.ci = call noundef nonnull align 8 ptr %i.ch(ptr noundef nonnull %i.cd), !noalias !351, !inline_history !346
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ci), !noalias !351
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !351
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.ck = icmp eq i32 %.sroa.04.0.copyload, -1
  br i1 %i.ck, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit.thread, label %bb.ad, !prof !12

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.ad:                                            ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve14file_to_module0E0B1X_EB2D_.exit
  store i32 %.sroa.04.0.copyload, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2z_2db2DbEL_NCNvNtB2z_7resolve20resolve_module_query0E0B1T_EB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !406, !inline_history !368 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !405, !noalias !407, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !407, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !407 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !407 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !405, !noalias !407 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !408
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !409, !inline_history !375 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !410, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !410, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !410
  store ptr %i.n, ptr %i.g, align 8, !noalias !410
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !410
  store ptr %i.l, ptr %i.f, align 8, !noalias !410
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !410
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !410
  store ptr %i.m, ptr %i.o, align 8, !noalias !410
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !410
  store ptr %i.g, ptr %i.e, align 8, !noalias !410
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !410
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !410
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !410
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #15, !noalias !409
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !410
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !411, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409, !inline_history !381 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_EE13get_or_createNtB1N_20resolve_module_queryKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__30resolve_module_query_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !412
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__NtB7_20resolve_module_query14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !4

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves_1__NtB39_35resolve_module_query_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__NtB7_20resolve_module_query14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__NtB7_20resolve_module_query14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !5, !noalias !411, !noundef !3 ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !411, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !411
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !413, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__NtB7_20resolve_module_query14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @50)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__NtB7_20resolve_module_query14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc9.i.i.i, !prof !6

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !6

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ak, align 8, !noalias !413, !noundef !3
  %i.al = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !414, !noalias !413, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !409 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !range !11, !noalias !411, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.aq, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ak, align 8, !noalias !413, !noundef !3
  store i32 %.val.i.i.i.i, ptr %i.d, align 4, !noalias !413
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !413
  store i32 %i.ar, ptr %i.an, align 4, !noalias !413
  %i.as = load atomic i64, ptr %i.ao acquire, align 8, !noalias !415 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !8, !noalias !416, !noundef !3
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !4

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !409 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !411
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !411
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !417
  store ptr %i.c, ptr %i.b, align 8, !noalias !417
  %i.bd = load ptr, ptr %i.af, align 8, !noalias !417, !noundef !3
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @49)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !417
  %i.be = load i64, ptr %i.ai, align 8, !range !8, !noalias !417, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.be)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !417
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !409 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc14.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bf, %.noexc16.i.i.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bi = load i8, ptr %i.bh, align 2, !range !9, !noalias !411, !noundef !3
  %i.bj = load i64, ptr %i.bg, align 8, !range !8, !noalias !411, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bl = load atomic i8, ptr %i.bk monotonic, align 1, !noalias !411
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !413
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !4

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bg)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !409

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bo, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bp, align 8, !noalias !418
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !419, !noalias !420, !noundef !3 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !419, !noalias !420, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !419, !noalias !420, !noundef !3 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.br, %i.bv
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.br, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !411

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr [152 x i8], ptr %i.bt, i64 %i.br
  %i.bx = getelementptr i8, ptr %i.bw, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !421
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !421
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !421
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !421
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bx, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bi, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !411

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  %.pre.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !413
  %i.by = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i64, ptr %i.bp, align 8, !noalias !413, !noundef !3
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bp, align 8, !noalias !413
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsfDzkztWVnn_18ty_module_resolver(ptr %.sroa.0.0.i.i.i.i) #16
          to label %bb.ac unwind label %bb.ab, !noalias !409

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cc = phi i64 [ %i.by, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.cc, ptr %i.bp, align 8, !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !411
  %.sroa.04.0.copyload = load i32, ptr %3, align 8, !noalias !422 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !422
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !409, !noundef !3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !409 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !409
  %.not3.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not3.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !3, !noalias !409, !nonnull !3
  %i.ci = call noundef nonnull align 8 ptr %i.ch(ptr noundef nonnull %i.cd), !noalias !409, !inline_history !404
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ci), !noalias !409
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !409
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.ck = icmp eq i32 %.sroa.04.0.copyload, -1
  br i1 %i.ck, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit.thread, label %bb.ad, !prof !12

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.ad:                                            ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve20resolve_module_query0E0B1X_EB2D_.exit
  store i32 %.sroa.04.0.copyload, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2z_2db2DbEL_NCNvNtB2z_7resolve26desperately_resolve_module0E0B1T_EB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.i = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !460, !inline_history !426 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !459, !noalias !461, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !459, !noalias !461, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !459, !noalias !461 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !459, !noalias !461 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !459, !noalias !461 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !459, !noalias !461 ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.k, align 8, !noalias !462
  %i.l = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !463, !inline_history !433 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !noalias !464, !noundef !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !noalias !464, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !464
  store ptr %i.o, ptr %i.h, align 8, !noalias !464
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.q, ptr %i.r, align 8, !noalias !464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !464
  store ptr %i.m, ptr %i.g, align 8, !noalias !464
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.n, ptr %i.s, align 8, !noalias !464
  %i.t = icmp eq ptr %i.o, %i.m
  br i1 %i.t, label %bb.f, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.i, align 8, !noalias !464
  store ptr %i.n, ptr %i.p, align 8, !noalias !464
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !464
  store ptr %i.h, ptr %i.f, align 8, !noalias !464
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !464
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.u, align 8, !noalias !464
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !464
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #15, !noalias !463
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !464
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.i, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !3, !noalias !465, !nonnull !3
  %i.x = invoke { ptr, ptr } %i.w(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463, !inline_history !439 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 11 uses
  %i.z = extractvalue { ptr, ptr } %i.x, 1        ; 9 uses
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_EE13get_or_createNtB1N_26desperately_resolve_moduleKj1_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__40desperately_resolve_module_INTERN_CACHE_, ptr noundef nonnull align 8 %i.y)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !465
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  %i.ab = load <2 x i32>, ptr %.sroa.7.0.copyload.i, align 4, !noalias !465
  %i.ac = load <2 x i32>, ptr %.sroa.8.0.copyload.i, align 4, !noalias !465
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ad, ptr %i.e, align 16, !noalias !465
  %i.ae = invoke { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9intern_idTNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB11_20ModuleNameIngredientENCNCNvB11_26desperately_resolve_module00EB13_(ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.e)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463 ; 2 uses

.noexc5.i.i.i:                                    ; preds = %.noexc4.i.i.i
  %i.af = extractvalue { i32, i32 } %i.ae, 0      ; 4 uses
  %i.ag = extractvalue { i32, i32 } %i.ae, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !465
  %i.ah = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_EE13get_or_createNtB1N_26desperately_resolve_moduleKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__36desperately_resolve_module_FN_CACHE_, ptr noundef nonnull align 8 %i.y)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463 ; 6 uses

.noexc6.i.i.i:                                    ; preds = %.noexc5.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 520
  %i.aj = load atomic i32, ptr %i.ai acquire, align 8, !noalias !466
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves0_1__NtB3e_41desperately_resolve_module_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !4

bb.g:                                             ; preds = %.noexc6.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves0_1__NtB39_41desperately_resolve_module_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.al, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves0_1__NtB3e_41desperately_resolve_module_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves0_1__NtB3e_41desperately_resolve_module_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc6.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !465
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 1352 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !467, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc8.i.i.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves0_1__NtB3e_41desperately_resolve_module_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @50)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

.noexc8.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves0_1__NtB3e_41desperately_resolve_module_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.ao = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

.noexc9.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.ao, label %bb.i, label %.noexc11.i.i.i, !prof !6

.noexc11.i.i.i:                                   ; preds = %bb.i, %.noexc9.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 136 ; 3 uses
  %i.aq = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ap)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

.noexc10.i.i.i:                                   ; preds = %.noexc11.i.i.i
  br i1 %i.aq, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !6

bb.i:                                             ; preds = %.noexc9.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.z)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

bb.j:                                             ; preds = %.noexc10.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.z)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc10.i.i.i
  %i.ar = getelementptr i8, ptr %i.ah, i64 576    ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.ar, align 8, !noalias !467, !noundef !3
  %i.as = getelementptr i8, ptr %i.ah, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.as, align 4, !alias.scope !468, !noalias !467, !noundef !3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc18.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.av = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull align 8 %i.y, i32 noundef range(i32 1, 0) %i.af, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i, !noalias !463 ; 11 uses

.noexc13.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc13.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !range !11, !noalias !465, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.ax, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.ar, align 8, !noalias !467, !noundef !3
  store i32 %i.af, ptr %i.d, align 4, !noalias !467
  store i32 %i.ag, ptr %i.at, align 4, !noalias !467
  store i32 %i.ay, ptr %i.au, align 4, !noalias !467
  %i.az = load atomic i64, ptr %i.av acquire, align 8, !noalias !469 ; 3 uses
  %i.ba = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.ap, align 8, !range !8, !noalias !470, !noundef !3
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !4

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bd = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.av, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.az)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !463 ; 2 uses

.noexc14.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.be = icmp eq i8 %i.bd, 2
  br i1 %i.be, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc14.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 29
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !noalias !465
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 29
  %i.bi = load atomic i8, ptr %i.bh monotonic, align 1, !noalias !465
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp eq i8 %i.bd, 1
  br i1 %i.bj, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !471
  store ptr %i.c, ptr %i.b, align 8, !noalias !471
  %i.bk = load ptr, ptr %i.am, align 8, !noalias !471, !noundef !3
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc15.i.i.i, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @49)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

.noexc15.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !471
  %i.bl = load i64, ptr %i.ap, align 8, !range !8, !noalias !471, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.av, i64 noundef %i.bl)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

.noexc16.i.i.i:                                   ; preds = %.noexc15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !471
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.av, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc14.i.i.i, %bb.l, %.noexc13.i.i.i
  %i.bm = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.af, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !463 ; 2 uses

.noexc18.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc18.i.i.i, %.thread.i.i.i.i.i, %.noexc16.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.av, %bb.o ], [ %i.av, %.noexc16.i.i.i ], [ %i.av, %.thread.i.i.i.i.i ], [ %i.bm, %.noexc18.i.i.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bp = load i8, ptr %i.bo, align 2, !range !9, !noalias !465, !noundef !3
  %i.bq = load i64, ptr %i.bn, align 8, !range !8, !noalias !465, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bs = load atomic i8, ptr %i.br monotonic, align 1, !noalias !465
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bt = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !467
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !4

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bv = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bn)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !463

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bv, %bb.t ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  store i64 -1, ptr %i.bw, align 8, !noalias !472
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !473, !noalias !474, !noundef !3 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !473, !noalias !474, !nonnull !3, !noundef !3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !473, !noalias !474, !noundef !3 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.by, %i.cc
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.by, i64 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !465

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr [152 x i8], ptr %i.ca, i64 %i.by
  %i.ce = getelementptr i8, ptr %i.cd, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !475
  store i32 %i.af, ptr %i.a, align 4, !noalias !475
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !475
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !475
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ce, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bp, i64 noundef %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !465

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  %.pre.i.i.i.i.i = load i64, ptr %i.bw, align 8, !noalias !467
  %i.cf = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load i64, ptr %i.bw, align 8, !noalias !467, !noundef !3
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.bw, align 8, !noalias !467
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc16.i.i.i, %.noexc15.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc11.i.i.i, %.noexc8.i.i.i, %bb.h, %bb.g, %.noexc5.i.i.i, %.noexc4.i.i.i, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cg, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsfDzkztWVnn_18ty_module_resolver(ptr %.sroa.0.0.i.i.i.i) #16
          to label %bb.ac unwind label %bb.ab, !noalias !463

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cj = phi i64 [ %i.cf, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.cj, ptr %i.bw, align 8, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !465
  %.sroa.04.0.copyload = load i32, ptr %3, align 8, !noalias !476 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !476
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !463, !noundef !3 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !463 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !463
  %.not3.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not3.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !invariant.load !3, !noalias !463, !nonnull !3
  %i.cp = call noundef nonnull align 8 ptr %i.co(ptr noundef nonnull %i.ck), !noalias !463, !inline_history !458
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp), !noalias !463
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !463
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.cr = icmp eq i32 %.sroa.04.0.copyload, -1
  br i1 %i.cr, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit.thread, label %bb.ad, !prof !12

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.ad:                                            ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEDNtNtB2D_2db2DbEL_NCNvNtB2D_7resolve26desperately_resolve_module0E0B1X_EB2D_.exit
  store i32 %.sroa.04.0.copyload, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionRSNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathEDNtNtB2B_2db2DbEL_NCNvNtB2B_7resolve31absolute_desperate_search_paths0E0B1T_EB2B_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !511, !inline_history !480 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionRSNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathEDNtNtB2F_2db2DbEL_NCNvNtB2F_7resolve31absolute_desperate_search_paths0E0B1X_EB2F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !510, !noalias !512, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !510, !noalias !512, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !510, !noalias !512 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !510, !noalias !512 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !510, !noalias !512 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !513
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !514, !inline_history !485 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !515, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !515, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !515
  store ptr %i.n, ptr %i.g, align 8, !noalias !515
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !515
  store ptr %i.l, ptr %i.f, align 8, !noalias !515
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !515
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !515
  store ptr %i.m, ptr %i.o, align 8, !noalias !515
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !515
  store ptr %i.g, ptr %i.e, align 8, !noalias !515
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !515
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !515
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !515
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #15, !noalias !514
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !515
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !516, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514, !inline_history !490 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_EE13get_or_createNtB1N_31absolute_desperate_search_pathsKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__41absolute_desperate_search_paths_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514 ; 6 uses

.noexc5.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !517
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves3_1__NtB3e_46absolute_desperate_search_paths_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !4

bb.g:                                             ; preds = %.noexc5.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves3_1__NtB39_46absolute_desperate_search_paths_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves3_1__NtB3e_46absolute_desperate_search_paths_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves3_1__NtB3e_46absolute_desperate_search_paths_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc5.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !5, !noalias !516, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !516, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !516
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !518, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc7.i.i.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves3_1__NtB3e_46absolute_desperate_search_paths_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @50)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514

.noexc7.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_7resolves3_1__NtB3e_46absolute_desperate_search_paths_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514

.noexc8.i.i.i:                                    ; preds = %.noexc7.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc10.i.i.i, !prof !6

.noexc10.i.i.i:                                   ; preds = %bb.i, %.noexc8.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514

.noexc9.i.i.i:                                    ; preds = %.noexc10.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !6

bb.i:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514

bb.j:                                             ; preds = %.noexc9.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !514

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc9.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !518, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !519, !noalias !518, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc17.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !514 ; 11 uses

.noexc12.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCsfDzkztWVnn_18ty_module_resolver7resolve16StubPackageIndexDNtNtB1Y_2db2DbEL_NCNvB1W_18stub_package_index0E0B1T_EB1Y_:bb.a
bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !618, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !620, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !620
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !620
  store i32 %i.at, ptr %i.ap, align 4, !noalias !620
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !622 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !8, !noalias !623, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !4

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !616 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !618
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !618
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !624
  store ptr %i.c, ptr %i.b, align 8, !noalias !624
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !624, !noundef !3
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @49)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !616

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !624
  %i.bg = load i64, ptr %i.ak, align 8, !range !8, !noalias !624, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !616

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !624
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !616

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !616 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !9, !noalias !618, !noundef !3
  %i.bl = load i64, ptr %i.bi, align 8, !range !8, !noalias !618, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !618
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !620
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !4

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !616

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !616

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !625
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !626, !noalias !627, !noundef !3 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !626, !noalias !627, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !626, !noalias !627, !noundef !3 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !618

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !628
  store i32 %i.ae, ptr %i.a, align 4, !noalias !628
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !628
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !628
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !618

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !628
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !620
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !620, !noundef !3
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !620
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsfDzkztWVnn_18ty_module_resolver(ptr %.sroa.0.0.i.i.i.i) #16
          to label %bb.ac unwind label %bb.ab, !noalias !616

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !618
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !616, !noundef !3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !616 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !616
  %.not3.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !3, !noalias !616, !nonnull !3
  %i.ck = call noundef nonnull align 8 ptr %i.cj(ptr noundef nonnull %i.cf), !noalias !616, !inline_history !613
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ck), !noalias !616
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !616
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.cm
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleDNtNtB1Z_2db2DbEL_NCNvB1X_15list_modules_in0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !661, !inline_history !631 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !661, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !661, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !661 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !661 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !661 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !662
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !663, !inline_history !636 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !664, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !664, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !664
  store ptr %i.n, ptr %i.g, align 8, !noalias !664
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !664
  store ptr %i.l, ptr %i.f, align 8, !noalias !664
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !664
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !664
  store ptr %i.m, ptr %i.o, align 8, !noalias !664
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !664
  store ptr %i.g, ptr %i.e, align 8, !noalias !664
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !664
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !664
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !664
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #15, !noalias !663
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !664
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !665, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663, !inline_history !641 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_EE13get_or_createNtB1N_15list_modules_inKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__25list_modules_in_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !666
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4lists0_1__NtB3e_30list_modules_in_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !4

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_4lists0_1__NtB39_30list_modules_in_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4lists0_1__NtB3e_30list_modules_in_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4lists0_1__NtB3e_30list_modules_in_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !5, !noalias !665, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !665, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !665
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !667, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4lists0_1__NtB3e_30list_modules_in_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @50)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4lists0_1__NtB3e_30list_modules_in_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !6

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !6

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !663

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !667, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !668, !noalias !667, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !663 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !range !15, !noalias !665, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.as, -1
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !667, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !667
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !667
  store i32 %i.at, ptr %i.ap, align 4, !noalias !667
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !669 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !8, !noalias !670, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !4

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !663 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !665
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !665
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !671
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleDNtNtB1Z_2db2DbEL_NCNvNtB1Z_4list17list_modules_impl0E0B1T_EB1Z_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !757, !inline_history !730 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !758, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !758, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !758
  store ptr %i.n, ptr %i.g, align 8, !noalias !758
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !758
  store ptr %i.l, ptr %i.f, align 8, !noalias !758
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !758
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !758
  store ptr %i.m, ptr %i.o, align 8, !noalias !758
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !758
  store ptr %i.g, ptr %i.e, align 8, !noalias !758
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !758
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !758
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !758
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #15, !noalias !757
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !758
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !759, !nonnull !3
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757, !inline_history !735 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_EE13get_or_createNtB1N_17list_modules_implKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCsfDzkztWVnn_18ty_module_resolver4list1__27list_modules_impl_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !760
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4list1__NtB3e_32list_modules_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !4

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_4list1__NtB39_32list_modules_impl_Configuration_14fn_ingredient_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4list1__NtB3e_32list_modules_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4list1__NtB3e_32list_modules_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !5, !noalias !759, !noundef !3 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !759, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !759
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !761, !noundef !3
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4list1__NtB3e_32list_modules_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @50)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsfDzkztWVnn_18ty_module_resolver2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_4list1__NtB3e_32list_modules_impl_Configuration_14fn_ingredient_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !6

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !6

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !761, !noundef !3
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !762, !noalias !761, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !757 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !759, !align !14, !noundef !3
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !761, !noundef !3
  store i32 %i.ae, ptr %i.d, align 4, !noalias !761
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !761
  store i32 %i.at, ptr %i.ap, align 4, !noalias !761
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !763 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !8, !noalias !764, !noundef !3
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !4

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !757 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !759
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !759
  %.not7.i23.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i23.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !765
  store ptr %i.c, ptr %i.b, align 8, !noalias !765
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !765, !noundef !3
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @49)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !765
  %i.bg = load i64, ptr %i.ak, align 8, !range !8, !noalias !765, !noundef !3
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !765
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !757 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !9, !noalias !759, !noundef !3
  %i.bl = load i64, ptr %i.bi, align 8, !range !8, !noalias !759, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !759
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !761
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !4

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !766
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !767, !noalias !768, !noundef !3 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !767, !noalias !768, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !767, !noalias !768, !noundef !3 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !759

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !769
  store i32 %i.ae, ptr %i.a, align 4, !noalias !769
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !769
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !769
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !759

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !769
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !761
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !761, !noundef !3
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !761
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsfDzkztWVnn_18ty_module_resolver(ptr %.sroa.0.0.i.i.i.i) #16
          to label %bb.ac unwind label %bb.ab, !noalias !757

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  store i64 %i.ce, ptr %i.br, align 8, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !759
  %i.cf = load ptr, ptr %2, align 8, !noalias !759, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !759, !noundef !3
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !757, !noundef !3 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !757 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !757
  %.not3.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !3, !noalias !757, !nonnull !3
  %i.cn = call noundef nonnull align 8 ptr %i.cm(ptr noundef nonnull %i.ci), !noalias !757, !inline_history !754
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn), !noalias !757
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !757
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cp = insertvalue { ptr, i64 } poison, ptr %i.cf, 0
  %i.cq = insertvalue { ptr, i64 } %i.cp, i64 %i.ch, 1
  ret { ptr, i64 } %i.cq
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE3get0jECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !770 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !3
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE9put_value0jECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !771 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !3
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !noalias !784, !nonnull !3, !align !13, !noundef !3
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !7
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7
  %i.f = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.g = trunc nuw i64 %i.f to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !3
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !3
  %i.h = select i1 %i.d, ptr %.val, ptr %.val11   ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !3, !align !13
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !3, !align !13
  %i.i = select i1 %i.d, ptr %.val12, ptr %.val13 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !16, !invariant.load !3, !noalias !784
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !3, !noalias !784, !nonnull !3
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.e), !noalias !784, !inline_history !774
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i8, ptr %i.t, align 8, !range !17, !noundef !3
  switch i8 %i.u, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.v = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.s) ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.v, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.s, %bb.d ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !range !19, !noundef !3
  %i.z = trunc nuw i8 %i.y to i1
  store i8 0, ptr %i.x, align 1
  br i1 %i.z, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.aa = load ptr, ptr %0, align 8, !noalias !785, !nonnull !3, !align !13, !noundef !3
  %i.ab = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !785, !noundef !3
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !785, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !785, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.ac, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !16, !invariant.load !3, !noalias !785
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = and i64 %i.ah, -16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ak, %bb.f ], [ %i.ad, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !3, !noalias !785, !nonnull !3
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa), !noalias !785, !inline_history !777
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ao = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 9223372036854775807
  br i1 %i.ap, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.ar = add nuw nsw i64 %i.ao, 1
  store i64 %i.ar, ptr %.sroa.0.0.i.i4.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.at = load i64, ptr %i.as, align 8, !range !20, !alias.scope !786, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.at, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !786
  %i.av = icmp eq i64 %i.au, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.av, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !787
  br label %bb.l

end_hunk_2
