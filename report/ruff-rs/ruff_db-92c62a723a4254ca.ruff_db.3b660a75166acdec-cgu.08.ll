Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.08?download=true
inline.NumInlined: 945
inline.NumDeleted: 478
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingRNtB2y_21DirectoryListingErrorEDNtB2C_2DbEL_NCNvB2y_23directory_listing_query0E0B1T_EB2C_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !143, !inline_history !116 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !144, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !144, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !144
  store ptr %i.n, ptr %i.g, align 8, !noalias !144
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !144
  store ptr %i.l, ptr %i.f, align 8, !noalias !144
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !144
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !144
  store ptr %i.m, ptr %i.o, align 8, !noalias !144
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !144
  store ptr %i.g, ptr %i.e, align 8, !noalias !144
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !144
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !144
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !144
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @121, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #31, !noalias !143
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !144
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !6, !noalias !145, !nonnull !6
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143, !inline_history !121 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_EE13get_or_createNtB1N_23directory_listing_queryKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__33directory_listing_query_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143 ; 6 uses

.noexc5.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !146
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1L_5files9directory1__NtB2Y_38directory_listing_query_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %.noexc5.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtNtB1L_5files9directory1__NtB2T_38directory_listing_query_Configuration_14fn_ingredient_0E0zEB1L_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1L_5files9directory1__NtB2Y_38directory_listing_query_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1L_5files9directory1__NtB2Y_38directory_listing_query_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i: ; preds = %bb.g, %.noexc5.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !12, !noalias !145, !noundef !6 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !145, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !147, !noundef !6
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc7.i.i.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1L_5files9directory1__NtB2Y_38directory_listing_query_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @125)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

.noexc7.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtB1L_5files9directory1__NtB2Y_38directory_listing_query_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

.noexc8.i.i.i:                                    ; preds = %.noexc7.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc10.i.i.i, !prof !8

.noexc10.i.i.i:                                   ; preds = %bb.i, %.noexc8.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

.noexc9.i.i.i:                                    ; preds = %.noexc10.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !8

bb.i:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

bb.j:                                             ; preds = %.noexc9.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc9.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !147, !noundef !6
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val6.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !148, !noalias !147, !noundef !6 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc17.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E23get_memo_from_table_forB18_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val6.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !143 ; 11 uses

.noexc12.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc12.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load i8, ptr %i.ar, align 8, !range !149, !noalias !145, !noundef !6
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, -2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !147, !noundef !6
  store i32 %i.ae, ptr %i.d, align 4, !noalias !147
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !147
  store i32 %i.at, ptr %i.ap, align 4, !noalias !147
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !150 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !13, !noalias !151, !noundef !6
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !7

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc13.i.i.i unwind label %.loopexit.i.i.i, !noalias !143 ; 2 uses

.noexc13.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc13.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !145
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !145
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !152
  store ptr %i.c, ptr %i.b, align 8, !noalias !152
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !152, !noundef !6
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @124)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !152
  %i.bg = load i64, ptr %i.ak, align 8, !range !13, !noalias !152, !noundef !6
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

.noexc15.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !152
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc13.i.i.i, %bb.l, %.noexc12.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E10fetch_coldB19_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val6.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !143 ; 2 uses

.noexc17.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i: ; preds = %.noexc17.i.i.i, %.thread.i.i.i.i.i, %.noexc15.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc15.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc17.i.i.i ] ; 5 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !14, !noalias !145, !noundef !6
  %i.bl = load i64, ptr %i.bi, align 8, !range !13, !noalias !145, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !145
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !147
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E12refresh_memoB19_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !143

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !153
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !154, !noalias !155, !noundef !6 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !154, !noalias !155, !nonnull !6, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !154, !noalias !155, !noundef !6 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #31
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !145

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !156
  store i32 %i.ae, ptr %i.a, align 4, !noalias !156
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !156
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !156
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !145

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !156
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !147
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !147, !noundef !6
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !147
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory1__38directory_listing_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc15.i.i.i, %.noexc14.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc10.i.i.i, %.noexc7.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs56aZGHL6Dc6_7ruff_db(ptr %.sroa.0.0.i.i.i.i) #33
          to label %bb.ac unwind label %bb.ab, !noalias !143

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145
  %i.cf = load i8, ptr %2, align 8, !range !157, !noalias !145, !noundef !6
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingRNtB2C_21DirectoryListingErrorEDNtB2G_2DbEL_NCNvB2C_23directory_listing_query0E0B1X_EB2G_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !143, !noundef !6 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !143 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !143
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingRNtB2C_21DirectoryListingErrorEDNtB2G_2DbEL_NCNvB2C_23directory_listing_query0E0B1X_EB2G_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !6, !noalias !143, !nonnull !6
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg), !noalias !143, !inline_history !140
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !143
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingRNtB2C_21DirectoryListingErrorEDNtB2G_2DbEL_NCNvB2C_23directory_listing_query0E0B1X_EB2G_.exit

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !143
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingRNtB2C_21DirectoryListingErrorEDNtB2G_2DbEL_NCNvB2C_23directory_listing_query0E0B1X_EB2G_.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %.not.i4.i.i.i = icmp ne i8 %i.cf, -1
  %..i.i.i.i = zext i1 %.not.i4.i.i.i to i64
  %i.cn = insertvalue { i64, ptr } poison, i64 %..i.i.i.i, 0
  %i.co = insertvalue { i64, ptr } %i.cn, ptr %3, 1
  ret { i64, ptr } %i.co

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingRNtB2C_21DirectoryListingErrorEDNtB2G_2DbEL_NCNvB2C_23directory_listing_query0E0B1X_EB2G_.exit.thread: ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextDNtB1X_2DbEL_NCNvB1V_11source_text0E0B1T_EB1X_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !190, !inline_history !160 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextDNtB21_2DbEL_NCNvB1Z_11source_text0E0B1X_EB21_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !190, !nonnull !6, !noundef !6
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !190, !nonnull !6, !noundef !6
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !190 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !190 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !190 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !191
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !192, !inline_history !165 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !193, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !193, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !193
  store ptr %i.n, ptr %i.g, align 8, !noalias !193
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !193
  store ptr %i.l, ptr %i.f, align 8, !noalias !193
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !193
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !193
  store ptr %i.m, ptr %i.o, align 8, !noalias !193
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !193
  store ptr %i.g, ptr %i.e, align 8, !noalias !193
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !193
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !193
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !193
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @121, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #31, !noalias !192
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !193
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !6, !noalias !194, !nonnull !6
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192, !inline_history !170 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_EE13get_or_createNtB1N_11source_textKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs56aZGHL6Dc6_7ruff_db6source1__21source_text_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !195
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6source1__NtB2Y_26source_text_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1L_6source1__NtB2T_26source_text_Configuration_14fn_ingredient_0E0zEB1L_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6source1__NtB2Y_26source_text_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6source1__NtB2Y_26source_text_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !12, !noalias !194, !noundef !6 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !194, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !194
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !196, !noundef !6
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6source1__NtB2Y_26source_text_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @125)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6source1__NtB2Y_26source_text_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !8

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !8

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !196, !noundef !6
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !197, !noalias !196, !noundef !6 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !192 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !194, !noundef !6
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !196, !noundef !6
  store i32 %i.ae, ptr %i.d, align 4, !noalias !196
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !196
  store i32 %i.at, ptr %i.ap, align 4, !noalias !196
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !198 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !13, !noalias !199, !noundef !6
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !7

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !192 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !194
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !194
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  store ptr %i.c, ptr %i.b, align 8, !noalias !200
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !200, !noundef !6
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @124)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !200
  %i.bg = load i64, ptr %i.ak, align 8, !range !13, !noalias !200, !noundef !6
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !200
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !192 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !14, !noalias !194, !noundef !6
  %i.bl = load i64, ptr %i.bi, align 8, !range !13, !noalias !194, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !194
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !196
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !192

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !201
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !202, !noalias !203, !noundef !6 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !202, !noalias !203, !nonnull !6, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !202, !noalias !203, !noundef !6 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #31
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !194

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E5fetchB17_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !204
  store i32 %i.ae, ptr %i.a, align 4, !noalias !204
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !204
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !204
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !194

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !204
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !196
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E5fetchB17_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !196, !noundef !6
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !196
  br label %.body.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E5fetchB17_.exit.i.i.i.i: ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !194
  %i.cf = load ptr, ptr %2, align 8, !noalias !194, !nonnull !6, !noundef !6 ; 2 uses
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8, !noalias !194
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source11source_text0B5_.exit.i.i.i

bb.y:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E5fetchB17_.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs56aZGHL6Dc6_7ruff_db(ptr %.sroa.0.0.i.i.i.i) #33
          to label %bb.ac unwind label %bb.ab, !noalias !192

_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source11source_text0B5_.exit.i.i.i: ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6source1__26source_text_Configuration_E5fetchB17_.exit.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source11source_text0B5_.exit.i.i.i
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !192, !noundef !6 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !192 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !192
  %.not3.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not3.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !6, !noalias !192, !nonnull !6
  %i.cn = call noundef nonnull align 8 ptr %i.cm(ptr noundef nonnull %i.ci), !noalias !192, !inline_history !189
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn), !noalias !192
  br label %bb.ad

bb.ab:                                            ; preds = %.body.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !192
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCs56aZGHL6Dc6_7ruff_db6source10SourceTextDNtB21_2DbEL_NCNvB1Z_11source_text0E0B1X_EB21_.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
  unreachable

bb.ad:                                            ; preds = %_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source11source_text0B5_.exit.i.i.i, %bb.z, %bb.aa
  ret ptr %i.cf
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexDNtCs56aZGHL6Dc6_7ruff_db2DbEL_NCNvNtB2S_6source10line_index0E0B1T_EB2S_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !237, !inline_history !207 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexDNtCs56aZGHL6Dc6_7ruff_db2DbEL_NCNvNtB2W_6source10line_index0E0B1X_EB2W_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !237, !nonnull !6, !noundef !6
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !237, !nonnull !6, !noundef !6
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !237 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !237 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !237 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !238
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !239, !inline_history !212 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !240, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !240, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !240
  store ptr %i.n, ptr %i.g, align 8, !noalias !240
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !240
  store ptr %i.l, ptr %i.f, align 8, !noalias !240
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !240
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !240
  store ptr %i.m, ptr %i.o, align 8, !noalias !240
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !240
  store ptr %i.g, ptr %i.e, align 8, !noalias !240
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !240
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !240
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !240
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @121, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #31, !noalias !239
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !240
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !6, !noalias !241, !nonnull !6
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239, !inline_history !217 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_EE13get_or_createNtB1N_10line_indexKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__20line_index_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239 ; 6 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !242
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6sources_1__NtB2Y_25line_index_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1L_6sources_1__NtB2T_25line_index_Configuration_14fn_ingredient_0E0zEB1L_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6sources_1__NtB2Y_25line_index_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6sources_1__NtB2Y_25line_index_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !12, !noalias !241, !noundef !6 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !241, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !241
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !243, !noundef !6
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6sources_1__NtB2Y_25line_index_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @125)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1L_6sources_1__NtB2Y_25line_index_Configuration_14fn_ingredient_0E0zEB1L_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc9.i.i.i, !prof !8

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !8

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !243, !noundef !6
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !244, !noalias !243, !noundef !6 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc16.i.i.i, %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !239 ; 11 uses

.noexc11.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !241, !noundef !6
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !243, !noundef !6
  store i32 %i.ae, ptr %i.d, align 4, !noalias !243
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !243
  store i32 %i.at, ptr %i.ap, align 4, !noalias !243
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !245 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !13, !noalias !246, !noundef !6
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !7

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !239 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !241
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !241
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !247
  store ptr %i.c, ptr %i.b, align 8, !noalias !247
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !247, !noundef !6
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @124)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  %i.bg = load i64, ptr %i.ak, align 8, !range !13, !noalias !247, !noundef !6
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !239 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc14.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc16.i.i.i ] ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !14, !noalias !241, !noundef !6
  %i.bl = load i64, ptr %i.bi, align 8, !range !13, !noalias !241, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !241
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !243
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !239

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !248
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !249, !noalias !250, !noundef !6 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !249, !noalias !250, !nonnull !6, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !249, !noalias !250, !noundef !6 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i13.i.i.i.i.i, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #31
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !241

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E5fetchB17_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !251
  store i32 %i.ae, ptr %i.a, align 4, !noalias !251
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !251
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !251
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.x, !noalias !241

.noexc14.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !243
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E5fetchB17_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !243, !noundef !6
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !243
  br label %.body.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E5fetchB17_.exit.i.i.i.i: ; preds = %.noexc14.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc14.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !241
  %i.cf = load ptr, ptr %2, align 8, !noalias !241, !nonnull !6, !noundef !6 ; 2 uses
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8, !noalias !241
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source10line_index0B5_.exit.i.i.i

bb.y:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E5fetchB17_.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs56aZGHL6Dc6_7ruff_db(ptr %.sroa.0.0.i.i.i.i) #33
          to label %bb.ac unwind label %bb.ab, !noalias !239

_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source10line_index0B5_.exit.i.i.i: ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6sources_1__25line_index_Configuration_E5fetchB17_.exit.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source10line_index0B5_.exit.i.i.i
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !239, !noundef !6 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !239 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !239
  %.not3.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not3.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !6, !noalias !239, !nonnull !6
  %i.cn = call noundef nonnull align 8 ptr %i.cm(ptr noundef nonnull %i.ci), !noalias !239, !inline_history !236
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn), !noalias !239
  br label %bb.ad

bb.ab:                                            ; preds = %.body.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !239
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexDNtCs56aZGHL6Dc6_7ruff_db2DbEL_NCNvNtB2W_6source10line_index0E0B1X_EB2W_.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
  unreachable

bb.ad:                                            ; preds = %_RNCNvNtCs56aZGHL6Dc6_7ruff_db6source10line_index0B5_.exit.i.i.i, %bb.z, %bb.aa
  ret ptr %i.cf
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleDNtB1Y_2DbEL_NCNvB1W_13parsed_module0E0B1T_EB1Y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.h = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !288, !inline_history !254 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !288, !nonnull !6, !noundef !6
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !288, !nonnull !6, !noundef !6
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !288 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !288 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !288 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !289
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i), !noalias !290, !inline_history !259 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !291, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !291, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !291
  store ptr %i.n, ptr %i.g, align 8, !noalias !291
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !291
  store ptr %i.l, ptr %i.f, align 8, !noalias !291
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !291
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !291
  store ptr %i.m, ptr %i.o, align 8, !noalias !291
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !291
  store ptr %i.g, ptr %i.e, align 8, !noalias !291
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !291
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !291
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs56aZGHL6Dc6_7ruff_db, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !291
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @121, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #31, !noalias !290
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !291
  br label %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !6, !noalias !292, !nonnull !6
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290, !inline_history !264 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_EE13get_or_createNtB1N_13parsed_moduleKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__23parsed_module_FN_CACHE_, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290 ; 8 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 584
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !293
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNtCs56aZGHL6Dc6_7ruff_db6parsed1__NtB7_13parsed_module14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 544
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtCs56aZGHL6Dc6_7ruff_db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1L_6parsed1__NtB2T_28parsed_module_Configuration_14fn_ingredient_0E0zEB1L_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNtCs56aZGHL6Dc6_7ruff_db6parsed1__NtB7_13parsed_module14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

_RNvMs2_NvNtCs56aZGHL6Dc6_7ruff_db6parsed1__NtB7_13parsed_module14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !12, !noalias !292, !noundef !6 ; 5 uses
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 4, !noalias !292, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !292
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !294, !noundef !6
  %.not.i10.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i10.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %_RNvMs2_NvNtCs56aZGHL6Dc6_7ruff_db6parsed1__NtB7_13parsed_module14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @125)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNtCs56aZGHL6Dc6_7ruff_db6parsed1__NtB7_13parsed_module14fn_ingredient_.exit.i.i.i.i
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

.noexc7.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.ah, label %bb.i, label %.noexc9.i.i.i, !prof !8

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc7.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.aj = invoke noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.aj, label %bb.j, label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !8

bb.i:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.ak = getelementptr i8, ptr %i.z, i64 640     ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleDNtB1Y_2DbEL_NCNvB1W_13parsed_module0E0B1T_EB1Y_:bb.a
  store i32 %.val1.i.i.i.i, ptr %i.am, align 4, !noalias !294
  store i32 %i.ar, ptr %i.an, align 4, !noalias !294
  %i.as = load atomic i64, ptr %i.ao acquire, align 8, !noalias !296 ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.ai, align 8, !range !13, !noalias !297, !noundef !6
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !7

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef i8 @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.as)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !290 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !noalias !292
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !292
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.aw, 1
  br i1 %i.bc, label %bb.p, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !298
  store ptr %i.c, ptr %i.b, align 8, !noalias !298
  %i.bd = load ptr, ptr %i.af, align 8, !noalias !298, !noundef !6
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc13.i.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @124)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

.noexc13.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !298
  %i.be = load i64, ptr %i.ai, align 8, !range !13, !noalias !298, !noundef !6
  invoke void @_RNvMs1_NtCs45bxiIjzMqg_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.be)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

.noexc14.i.i.i:                                   ; preds = %.noexc13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !298
  invoke void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.ao, ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc12.i.i.i, %bb.l, %.noexc11.i.i.i
  %i.bf = invoke noundef align 8 ptr @_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i, i32 noundef %.val9.i.i.i.i.i)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !290 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc16.i.i.i, %.thread.i.i.i.i.i, %.noexc14.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.o ], [ %i.ao, %.noexc14.i.i.i ], [ %i.ao, %.thread.i.i.i.i.i ], [ %i.bf, %.noexc16.i.i.i ] ; 4 uses
  %i.bg = load i64, ptr %i.z, align 8, !noalias !294, !noundef !6
  %.not.i6.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i6.i.i.i.i.i, label %_RNvXs_NtNtNtCs45bxiIjzMqg_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtCs45bxiIjzMqg_5salsa8function8eviction3lruNtB2_3Lru6insert(ptr noundef nonnull align 8 %i.z, i32 noundef range(i32 1, 0) %.val.i.i.i.i, i32 noundef %.val1.i.i.i.i)
          to label %_RNvXs_NtNtNtCs45bxiIjzMqg_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

_RNvXs_NtNtNtCs45bxiIjzMqg_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i: ; preds = %bb.r, %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bj = load i8, ptr %i.bi, align 2, !range !14, !noalias !292, !noundef !6
  %i.bk = load i64, ptr %i.bh, align 8, !range !13, !noalias !292, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bm = load atomic i8, ptr %i.bl monotonic, align 1, !noalias !292
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs45bxiIjzMqg_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i
  %i.bn = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !294
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

bb.u:                                             ; preds = %_RNvXs_NtNtNtCs45bxiIjzMqg_5salsa8function8eviction3lruNtB4_3LruNtB6_14EvictionPolicy10record_use.exit.i.i.i.i.i
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bh)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !290

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ %i.bp, %bb.u ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bq, align 8, !noalias !299
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !300, !noalias !301, !noundef !6 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !300, !noalias !301, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !300, !noalias !301, !noundef !6 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bs, %i.bw
  br i1 %.not.i14.i.i.i.i.i, label %bb.v, label %bb.w, !prof !15

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bs, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #31
          to label %.noexc.i.i.i.i.i unwind label %bb.y, !noalias !292

.noexc.i.i.i.i.i:                                 ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr [152 x i8], ptr %i.bu, i64 %i.bs
  %i.by = getelementptr i8, ptr %i.bx, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !302
  store i32 %.val.i.i.i.i, ptr %i.a, align 4, !noalias !302
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.val1.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !302
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val8.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !302
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.by, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bj, i64 noundef %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.y, !noalias !292

.noexc15.i.i.i.i.i:                               ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !302
  %.pre.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !294
  %i.bz = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load i64, ptr %i.bq, align 8, !noalias !294, !noundef !6
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.bq, align 8, !noalias !294
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs56aZGHL6Dc6_7ruff_db6parsed1__28parsed_module_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.u, %bb.t, %bb.r, %.noexc14.i.i.i, %.noexc13.i.i.i, %bb.q, %bb.j, %bb.i, %.noexc9.i.i.i, %.noexc6.i.i.i, %bb.h, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCs45bxiIjzMqg_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.y
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.y ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECs56aZGHL6Dc6_7ruff_db(ptr %.sroa.0.0.i.i.i.i) #33
          to label %bb.ad unwind label %bb.ac, !noalias !290

bb.z:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.w
  %i.cd = phi i64 [ %i.bz, %.noexc15.i.i.i.i.i ], [ 0, %bb.w ]
  store i64 %i.cd, ptr %i.bq, align 8, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !292
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !290, !noundef !6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !290 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !290
  %.not3.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not3.i.i.i.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !6, !noalias !290, !nonnull !6
  %i.cj = call noundef nonnull align 8 ptr %i.ci(ptr noundef nonnull %i.ce), !noalias !290, !inline_history !287
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj), !noalias !290
  br label %bb.af

bb.ac:                                            ; preds = %.body.i.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !290
  unreachable

bb.ad:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
  unreachable

bb.af:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.cl
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters11FilterStateE4withNCNCNvXs0_NtNtB10_8registry7shardedNtB2n_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_spans0_00NtBW_9FilterMapECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(32) null), !inline_history !303 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val.i = load i64, ptr %i.c, align 8, !noundef !6
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File11permissionsDNtBa_2DbEL_EBa_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull %2) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB9_4File11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d)
  %i.g = tail call noundef nonnull align 16 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileE5fieldBX_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.e, i32 noundef %0, i32 noundef %1, i64 noundef 1) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !range !16, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = insertvalue { i32, i32 } poison, i32 %i.i, 0
  %i.m = insertvalue { i32, i32 } %i.l, i32 %i.k, 1
  ret { i32, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File20source_text_overrideDNtBa_2DbEL_EBa_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull %2) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB9_4File11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d)
  %i.g = tail call noundef nonnull align 16 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileE5fieldBX_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.e, i32 noundef %0, i32 noundef %1, i64 noundef 4)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File4pathDNtBa_2DbEL_EBa_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull %2) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB9_4File11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d)
  %i.g = tail call noundef nonnull align 16 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileE5fieldBX_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.e, i32 noundef %0, i32 noundef %1, i64 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File6statusDNtBa_2DbEL_EBa_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull %2) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB9_4File11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d)
  %i.g = tail call noundef nonnull align 16 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileE5fieldBX_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.e, i32 noundef %0, i32 noundef %1, i64 noundef 3)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i8, ptr %i.h, align 16, !range !17, !noundef !6
  ret i8 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i128 @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File8revisionDNtBa_2DbEL_EBa_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull %2) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB9_4File11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d)
  %i.g = tail call noundef nonnull align 16 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileE5fieldBX_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.e, i32 noundef %0, i32 noundef %1, i64 noundef 2)
  %i.h = load i128, ptr %i.g, align 16, !noundef !6
  ret i128 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RINvMs7_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtNtB6_7builder8Builder_3newDNtBa_2DbEL_EBa_(ptr noalias noundef nonnull align 16 captures(address) dead_on_return dereferenceable(80) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.32.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = invoke { ptr, ptr } %.32.val(ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i64, ptr %i.e, align 8, !range !13, !noundef !6 ; 2 uses
  %i.g = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEE13get_or_createINtB1f_7JarImplB1G_EKj0_EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB9_4File11ingredient_5CACHE, ptr noundef nonnull align 8 %i.d)
          to label %_RNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB7_4File11ingredient_.exit unwind label %bb.d ; 2 uses

_RNvMs0_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB7_4File11ingredient_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %0, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 4
  %i.i = extractvalue { ptr, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i32, ptr %i.j, align 8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %i.n = shufflevector <4 x i64> %i.m, <4 x i64> poison, <4 x i32> zeroinitializer
  store <4 x i64> %i.n, ptr %i.l, align 16
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx8, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.p = load <4 x i8>, ptr %i.h, align 16
  store <4 x i8> %i.p, ptr %i.o, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i8 %.sroa.7.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.g, ptr %i.q, align 8
  call void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal8allocateINtNtB7_5input5ValueNtNtCs56aZGHL6Dc6_7ruff_db5files4FileENCNCNvMs0_B17_INtB17_14IngredientImplB1o_E9new_input00EB1s_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %i.d, i32 noundef %i.k, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = load i32, ptr %i.b, align 8, !range !12, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = insertvalue { i32, i32 } poison, i32 %i.r, 0
  %i.v = insertvalue { i32, i32 } %i.u, i32 %i.t, 1
  ret { i32, i32 } %i.v

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNvNtCs56aZGHL6Dc6_7ruff_db5files1__7builder8Builder_EBJ_(ptr noalias noundef align 16 dereferenceable(80) %0) #33
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvMs8_NtCs4NRVxsYgnAr_4core3anyNtB6_6TypeId2ofINtNtCs45bxiIjzMqg_5salsa5input7JarImplNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEEB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvMs8_NtCs4NRVxsYgnAr_4core3anyNtB6_6TypeId2ofINtNtCs45bxiIjzMqg_5salsa8interned7JarImplNtCs56aZGHL6Dc6_7ruff_db10PythonFileEEB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RINvMs9_NvCs56aZGHL6Dc6_7ruff_db1__NtB8_10PythonFile14python_versionDNtB8_2DbEL_EB8_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs56aZGHL6Dc6_7ruff_db1__NtB9_10PythonFile10ingredient5CACHE, ptr noundef nonnull align 8 %i.c)
  %i.e = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtCs56aZGHL6Dc6_7ruff_db10PythonFileE6fieldsBY_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.c, i32 noundef %0, i32 noundef %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 4, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.i = load i8, ptr %i.h, align 1, !noundef !6
  %i.j = insertvalue { i8, i8 } poison, i8 %i.g, 0
  %i.k = insertvalue { i8, i8 } %i.j, i8 %i.i, 1
  ret { i8, i8 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs9_NvCs56aZGHL6Dc6_7ruff_db1__NtB8_10PythonFile4fileDNtB8_2DbEL_EB8_(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs56aZGHL6Dc6_7ruff_db1__NtB9_10PythonFile10ingredient5CACHE, ptr noundef nonnull align 8 %i.c)
end_hunk_1
