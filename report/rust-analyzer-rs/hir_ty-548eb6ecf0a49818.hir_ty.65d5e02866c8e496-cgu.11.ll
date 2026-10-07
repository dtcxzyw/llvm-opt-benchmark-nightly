Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.11?download=true
inline.NumInlined: 6814
inline.NumDeleted: 2912
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility25DynCompatibilityViolationEDNtNtB2z_2db11HirDatabaseEL_NCNvB2x_32dyn_compatibility_of_trait_query0E0B1T_EB2z_:bb.a
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.02.0.copyload.i) #50, !noalias !400, !inline_history !363 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !401, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !401, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !401
  store ptr %i.n, ptr %i.g, align 8, !noalias !401
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !401
  store ptr %i.l, ptr %i.f, align 8, !noalias !401
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !401
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !401
  store ptr %i.m, ptr %i.o, align 8, !noalias !401
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !401
  store ptr %i.g, ptr %i.e, align 8, !noalias !401
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !401
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !401
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !401
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !400
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !401
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.64.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.64.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !402, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.53.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400, !inline_history !369 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__42dyn_compatibility_of_trait_query_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !403
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__NtB7_32dyn_compatibility_of_trait_query14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_17dyn_compatibility1__NtB37_47dyn_compatibility_of_trait_query_Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.53.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.64.0.copyload.i)
          to label %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__NtB7_32dyn_compatibility_of_trait_query14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__NtB7_32dyn_compatibility_of_trait_query14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.75.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.75.0.copyload.i, align 4, !range !17, !noalias !402, !noundef !9 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.75.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !402, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !402
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !404, !noundef !9
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !12

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__NtB7_32dyn_compatibility_of_trait_query14fn_ingredient_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !13

bb.h:                                             ; preds = %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__NtB7_32dyn_compatibility_of_trait_query14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !404, !noundef !9
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !405, !noalias !404, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !400 ; 11 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !range !406, !noalias !402, !noundef !9
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.as, -2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !404, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !404
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !404
  store i32 %i.at, ptr %i.ap, align 4, !noalias !404
  %i.au = load atomic i64, ptr %i.aq acquire, align 8, !noalias !407 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !22, !noalias !408, !noundef !9
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #46
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !400 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !402
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 29
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !402
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !409
  store ptr %i.c, ptr %i.b, align 8, !noalias !409
  %i.bf = load ptr, ptr %i.ah, align 8, !noalias !409, !noundef !9
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !12

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !409
  %i.bg = load i64, ptr %i.ak, align 8, !range !22, !noalias !409, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.aq, i64 noundef %i.bg)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !409
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bh = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.53.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.64.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !400 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bh, %.noexc15.i.i.i ] ; 9 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bk = load i8, ptr %i.bj, align 2, !range !21, !noalias !402, !noundef !9
  %i.bl = load i64, ptr %i.bi, align 8, !range !22, !noalias !402, !noundef !9
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !noalias !402
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !404
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !400

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.bq, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.br, align 8, !noalias !410
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !411, !noalias !412, !noundef !9 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !411, !noalias !412, !nonnull !9, !noundef !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !411, !noalias !412, !noundef !9 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bt, %i.bx
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !19

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bt, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !402

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not2.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [152 x i8], ptr %i.bv, i64 %i.bt
  %i.bz = getelementptr i8, ptr %i.by, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  store i32 %i.ae, ptr %i.a, align 4, !noalias !413
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !413
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !413
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bk, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !402

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  %.pre.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !404
  %i.ca = add i64 %.pre.i.i.i.i.i, 1
  br label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i64, ptr %i.br, align 8, !noalias !404, !noundef !9
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.br, align 8, !noalias !404
  br label %.body.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i: ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.ce = phi i64 [ %i.ca, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.ce, ptr %i.br, align 8, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !402
  %i.cf = load i8, ptr %3, align 8, !range !24, !noalias !402, !noundef !9 ; 2 uses
  switch i8 %i.cf, label %default.unreachable [
    i8 -1, label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i
    i8 0, label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i
    i8 1, label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
    i8 5, label %bb.ab
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i
  unreachable

bb.y:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %i.ch = load <2 x i32>, ptr %i.cg, align 4, !alias.scope !414, !noalias !415
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 33
  %i.cj = load i8, ptr %i.ci, align 1, !range !25, !alias.scope !414, !noalias !415, !noundef !9
  br label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i

bb.z:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !alias.scope !414, !noalias !415
  br label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i

bb.aa:                                            ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %i.cn = load <2 x i32>, ptr %i.cm, align 4, !alias.scope !414, !noalias !415
  br label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i

bb.ab:                                            ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 36
  %i.cp = load <2 x i32>, ptr %i.co, align 4, !alias.scope !414, !noalias !415
  br label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty(ptr %.sroa.0.0.i.i.i.i) #49
          to label %bb.af unwind label %bb.ae, !noalias !400

_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i
  %.sroa.5.0.i = phi i8 [ undef, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i ], [ undef, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i ], [ undef, %bb.ab ], [ %i.cj, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i ]
  %i.cq = phi <2 x i32> [ undef, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i ], [ undef, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i ], [ %i.cp, %bb.ab ], [ %i.ch, %bb.y ], [ %i.cl, %bb.z ], [ %i.cn, %bb.aa ], [ undef, %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility1__47dyn_compatibility_of_trait_query_Configuration_E5fetchB17_.exit.i.i.i.i ]
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i
  %i.cr = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !400, !noundef !9 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !400 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !400
  %.not3.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not3.i.i.i.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !9, !noalias !400, !nonnull !9
  %i.cw = call noundef nonnull align 8 ptr %i.cv(ptr noundef nonnull %i.cr) #50, !noalias !400, !inline_history !395
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw), !noalias !400
  br label %bb.ag

bb.ae:                                            ; preds = %.body.i.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !400
  unreachable

bb.af:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility25DynCompatibilityViolationEDNtNtB2D_2db11HirDatabaseEL_NCNvB2B_32dyn_compatibility_of_trait_query0E0B1X_EB2D_.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #47
  unreachable

bb.ag:                                            ; preds = %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query0B5_.exit.i.i.i, %bb.ad, %bb.ac
  store i8 %i.cf, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.cq, ptr %.sroa.71.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionRINtNtNtNtBa_11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCs8K4cjrcxBsw_6hir_ty6upvars6UpvarsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEDNtNtB4k_2db11HirDatabaseEL_NCNvNvB4i_16upvars_mentioned21body_upvars_mentioned0E0B1T_EB4k_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !454, !inline_history !418 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !454, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !454, !nonnull !9, !noundef !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !454 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !454 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !454 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !455
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #50, !noalias !456, !inline_history !423 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !457, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !457, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !457
  store ptr %i.n, ptr %i.g, align 8, !noalias !457
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !457
  store ptr %i.l, ptr %i.f, align 8, !noalias !457
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !457
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !457
  store ptr %i.m, ptr %i.o, align 8, !noalias !457
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !457
  store ptr %i.g, ptr %i.e, align 8, !noalias !457
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !457
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !457
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !457
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !456
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !457
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !458, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !456, !inline_history !428 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1R_(ptr noundef nonnull align 4 @_RNvNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__31body_upvars_mentioned_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !456 ; 7 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !459
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__NtB7_21body_upvars_mentioned14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvNtB1N_6upvars16upvars_mentioneds_1__NtB37_36body_upvars_mentioned_Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__NtB7_21body_upvars_mentioned14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !456

_RNvMs2_NvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__NtB7_21body_upvars_mentioned14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.sroa.01.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.sroa.01.0.i.i.i.i = load i32, ptr %.sroa.01.0.in.i.i.i.i, align 4, !range !17, !noalias !458, !noundef !9 ; 5 uses
  %.sroa.7.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 8
  %.sroa.7.0.i.i.i.i = load i32, ptr %.sroa.7.0.in.i.i.i.i, align 4, !noalias !458, !noundef !9 ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtCs8K4cjrcxBsw_6hir_ty16representability16RepresentabilityDNtNtB1X_2db11HirDatabaseEL_NCNvB1V_16representability0E0B1T_EB1X_:bb.a
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !827, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825, !inline_history !801 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 11 uses
  %i.y = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty16representability1__26representability_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825 ; 7 uses

.noexc4.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load atomic i32, ptr %i.z acquire, align 8, !noalias !828
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_16representability1__NtB3c_31representability_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc4.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_16representability1__NtB37_31representability_Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_16representability1__NtB3c_31representability_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_16representability1__NtB3c_31representability_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.sroa.0.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %.sroa.0.0.i3.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !range !17, !noalias !827, !noundef !9 ; 5 uses
  %.sroa.6.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 8
  %.sroa.6.0.i.i.i.i = load i32, ptr %.sroa.6.0.in.i.i.i.i, align 4, !noalias !827, !noundef !9 ; 4 uses
  %i.ad = extractvalue { ptr, ptr } %i.w, 1       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !827
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !829, !noundef !9
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i.i.i.i.i, label %.noexc7.i.i.i, label %bb.h, !prof !12

.noexc7.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_16representability1__NtB3c_31representability_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  %i.ag = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

.noexc6.i.i.i:                                    ; preds = %.noexc7.i.i.i
  br i1 %i.ag, label %bb.i, label %.noexc9.i.i.i, !prof !13

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_16representability1__NtB3c_31representability_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

.noexc9.i.i.i:                                    ; preds = %bb.i, %.noexc6.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.ai = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ah)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

.noexc8.i.i.i:                                    ; preds = %.noexc9.i.i.i
  br i1 %i.ai, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc6.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.ad)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

bb.j:                                             ; preds = %.noexc8.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.ad)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc8.i.i.i
  %i.aj = getelementptr i8, ptr %i.y, i64 592     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.aj, align 8, !noalias !829, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830), !noalias !831
  %i.ak = add i32 %.sroa.0.0.i3.i.i.i, -1
  %i.al = lshr i32 %i.ak, 10
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = invoke noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs8K4cjrcxBsw_6hir_ty(i64 noundef range(i64 0, 4194304) %i.am)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

.noexc11.i.i.i:                                   ; preds = %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  %i.ap = invoke noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 %i.ao, i64 noundef %i.an)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825 ; 3 uses

.noexc12.i.i.i:                                   ; preds = %.noexc11.i.i.i
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i1.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc12.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load atomic i8, ptr %i.aq acquire, align 8, !noalias !832
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = load i32, ptr %i.as, align 8, !noalias !832, !noundef !9
  %i.au = zext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !830, !noalias !833, !noundef !9 ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.au
  br i1 %i.ax, label %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E21memo_ingredient_indexBZ_.exit.i.i.i.i.i, label %bb.l

select.unfold.i.i.i.i.i.i:                        ; preds = %bb.k, %.noexc12.i.i.i
  invoke void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %i.am) #47
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

.noexc13.i.i.i:                                   ; preds = %select.unfold.i.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @791) #47
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

.noexc14.i.i.i:                                   ; preds = %bb.l
  unreachable

_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E21memo_ingredient_indexBZ_.exit.i.i.i.i.i: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i
  %i.ay = load ptr, ptr %i.y, align 8, !alias.scope !830, !noalias !833, !nonnull !9, !noundef !9
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.au
  %i.ba = load i32, ptr %i.az, align 4, !noalias !832, !noundef !9 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc20.i.i.i, %_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E21memo_ingredient_indexBZ_.exit.i.i.i.i.i
  %i.bd = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %.sroa.0.0.i3.i.i.i, i32 noundef %.sroa.6.0.i.i.i.i, i32 noundef %i.ba)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !825 ; 11 uses

.noexc15.i.i.i:                                   ; preds = %bb.m
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc15.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !range !14, !noalias !827, !noundef !9
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bf, 2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.aj, align 8, !noalias !829, !noundef !9
  store i32 %.sroa.0.0.i3.i.i.i, ptr %i.d, align 4, !noalias !829
  store i32 %.sroa.6.0.i.i.i.i, ptr %i.bb, align 4, !noalias !829
  store i32 %i.bg, ptr %i.bc, align 4, !noalias !829
  %i.bh = load atomic i64, ptr %i.bd acquire, align 8, !noalias !834 ; 3 uses
  %i.bi = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.ah, align 8, !range !22, !noalias !835, !noundef !9
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bl = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bd, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bh) #46
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !825 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bm = icmp eq i8 %i.bl, 2
  br i1 %i.bm, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc16.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !827
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.q

.thread.i.i.i.i.i:                                ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !noalias !827
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq i8 %i.bl, 1
  br i1 %i.br, label %bb.r, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !836
  store ptr %i.c, ptr %i.b, align 8, !noalias !836
  %i.bs = load ptr, ptr %i.ae, align 8, !noalias !836, !noundef !9
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc19.i.i.i, label %bb.s, !prof !12

.noexc19.i.i.i:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !836
  %i.bt = load i64, ptr %i.ah, align 8, !range !22, !noalias !836, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bd, i64 noundef %i.bt)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

.noexc17.i.i.i:                                   ; preds = %.noexc19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !836
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bd, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.p, %.noexc16.i.i.i, %bb.n, %.noexc15.i.i.i
  %i.bu = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.sroa.0.0.i3.i.i.i, i32 noundef %.sroa.6.0.i.i.i.i, i32 noundef %i.ba)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !825 ; 2 uses

.noexc20.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc20.i.i.i, %.thread.i.i.i.i.i, %.noexc17.i.i.i, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.q ], [ %i.bd, %.noexc17.i.i.i ], [ %i.bd, %.thread.i.i.i.i.i ], [ %i.bu, %.noexc20.i.i.i ] ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bx = load i8, ptr %i.bw, align 2, !range !21, !noalias !827, !noundef !9
  %i.by = load i64, ptr %i.bv, align 8, !range !22, !noalias !827, !noundef !9
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.ca = load atomic i8, ptr %i.bz monotonic, align 1, !noalias !827
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.cb = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !829
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.u, !prof !12

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

bb.v:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bv)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !825

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.u ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ %i.cd, %bb.v ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 5 uses
  store i64 -1, ptr %i.ce, align 8, !noalias !837
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !838, !noalias !839, !noundef !9 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !838, !noalias !839, !nonnull !9, !noundef !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !838, !noalias !839, !noundef !9 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.cg, %i.ck
  br i1 %.not.i13.i.i.i.i.i, label %bb.w, label %bb.x, !prof !19

bb.w:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cg, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !827

.noexc.i.i.i.i.i:                                 ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr [152 x i8], ptr %i.ci, i64 %i.cg
  %i.cm = getelementptr i8, ptr %i.cl, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !840
  store i32 %.sroa.0.0.i3.i.i.i, ptr %i.a, align 4, !noalias !840
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.6.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !840
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !840
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.cm, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bx, i64 noundef %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.z, !noalias !827

.noexc14.i.i.i.i.i:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !840
  %.pre.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !829
  %i.cn = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load i64, ptr %i.ce, align 8, !noalias !829, !noundef !9
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.ce, align 8, !noalias !829
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.m
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.v, %bb.u, %bb.s, %.noexc17.i.i.i, %.noexc19.i.i.i, %bb.l, %select.unfold.i.i.i.i.i.i, %.noexc11.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, %bb.j, %bb.i, %.noexc9.i.i.i, %bb.h, %.noexc7.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.z
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.co, %bb.z ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty(ptr %.sroa.0.0.i.i.i.i) #49
          to label %bb.ae unwind label %bb.ad, !noalias !825

bb.aa:                                            ; preds = %.noexc14.i.i.i.i.i, %bb.x
  %i.cr = phi i64 [ %i.cn, %.noexc14.i.i.i.i.i ], [ 0, %bb.x ]
  store i64 %i.cr, ptr %i.ce, align 8, !noalias !829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !827
  %i.cs = load i8, ptr %2, align 8, !range !28, !noalias !827, !noundef !9
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !825, !noundef !9 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !825 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !825
  %.not3.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not3.i.i.i.i.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !9, !noalias !825, !nonnull !9
  %i.cy = call noundef nonnull align 8 ptr %i.cx(ptr noundef nonnull %i.ct) #50, !noalias !825, !inline_history !822
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy), !noalias !825
  br label %bb.af

bb.ad:                                            ; preds = %.body.i.i.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !825
  unreachable

bb.ae:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachNtNtCs8K4cjrcxBsw_6hir_ty16representability16RepresentabilityDNtNtB21_2db11HirDatabaseEL_NCNvB1Z_16representability0E0B1X_EB21_.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #47
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.da = trunc nuw i8 %i.cs to i1
  ret i1 %i.da
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution10TraitImplsEDNtNtB2y_2db11HirDatabaseEL_NCNvNvMsH_B2w_B2u_9for_crate10for_crate_0E0B1T_EB2y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !877, !inline_history !843 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachRINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution10TraitImplsEDNtNtB2C_2db11HirDatabaseEL_NCNvNvMsH_B2A_B2y_9for_crate10for_crate_0E0B1X_EB2C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !877, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !877, !nonnull !9, !noundef !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !877 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !877 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !877 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !878
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #50, !noalias !879, !inline_history !848 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !880, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !880, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !880
  store ptr %i.n, ptr %i.g, align 8, !noalias !880
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !880
  store ptr %i.l, ptr %i.f, align 8, !noalias !880
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !880
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !880
  store ptr %i.m, ptr %i.o, align 8, !noalias !880
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !880
  store ptr %i.g, ptr %i.e, align 8, !noalias !880
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !880
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !880
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !880
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !879
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !880
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !881, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879, !inline_history !853 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1T_10TraitImpls9for_crate1__25for_crate__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB9_10TraitImpls9for_crate1__20for_crate__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !882
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtBd_10TraitImpls9for_crate1__NtB7_10for_crate_14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsH_NtB1N_17method_resolutionNtB3f_10TraitImpls9for_crate1__NtB37_25for_crate__Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtBd_10TraitImpls9for_crate1__NtB7_10for_crate_14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879

_RNvMs2_NvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtBd_10TraitImpls9for_crate1__NtB7_10for_crate_14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !17, !noalias !881, !noundef !9 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !881, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !881
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !883, !noundef !9
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !12

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtBd_10TraitImpls9for_crate1__NtB7_10for_crate_14fn_ingredient_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !13

bb.h:                                             ; preds = %_RNvMs2_NvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtBd_10TraitImpls9for_crate1__NtB7_10for_crate_14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !879

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !883, !noundef !9
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !884, !noalias !883, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1a_10TraitImpls9for_crate1__25for_crate__Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !879 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_10TraitImpls9for_crate1__25for_crate__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !881, !noundef !9
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsH_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_10TraitImpls9for_crate1__25for_crate__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.am, align 8, !noalias !883, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !883
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultNtB1X_17GenericPredicatesEDNtNtB1Z_2db11HirDatabaseEL_NCNvNvMs1X_B1X_B2I_22query_with_diagnostics23query_with_diagnostics_0E0B1T_EB1Z_:bb.a
bb.n:                                             ; preds = %.noexc15.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %i.bf = load i8, ptr %i.be, align 4, !range !14, !noalias !1413, !noundef !9
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bf, 2
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.aj, align 8, !noalias !1415, !noundef !9
  store i32 %.sroa.0.0.i3.i.i.i, ptr %i.d, align 4, !noalias !1415
  store i32 %.sroa.12.0.i.i.i.i, ptr %i.bb, align 4, !noalias !1415
  store i32 %i.bg, ptr %i.bc, align 4, !noalias !1415
  %i.bh = load atomic i64, ptr %i.bd acquire, align 8, !noalias !1420 ; 3 uses
  %i.bi = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.ah, align 8, !range !22, !noalias !1421, !noundef !9
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bl = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.bd, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.bh) #46
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !1411 ; 2 uses

.noexc16.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.bm = icmp eq i8 %i.bl, 2
  br i1 %i.bm, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc16.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !1413
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.q

.thread.i.i.i.i.i:                                ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !noalias !1413
  %.not7.i21.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not7.i21.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq i8 %i.bl, 1
  br i1 %i.br, label %bb.r, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1422
  store ptr %i.c, ptr %i.b, align 8, !noalias !1422
  %i.bs = load ptr, ptr %i.ae, align 8, !noalias !1422, !noundef !9
  %.not.i11.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i11.i.i.i.i.i, label %.noexc19.i.i.i, label %bb.s, !prof !12

.noexc19.i.i.i:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1422
  %i.bt = load i64, ptr %i.ah, align 8, !range !22, !noalias !1422, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bd, i64 noundef %i.bt)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1411

.noexc17.i.i.i:                                   ; preds = %.noexc19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1422
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.bd, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1411

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1411

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.p, %.noexc16.i.i.i, %bb.n, %.noexc15.i.i.i
  %i.bu = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E10fetch_coldB1e_(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %.sroa.0.0.i3.i.i.i, i32 noundef %.sroa.12.0.i.i.i.i, i32 noundef %i.ba)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !1411 ; 2 uses

.noexc20.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i: ; preds = %.noexc20.i.i.i, %.thread.i.i.i.i.i, %.noexc17.i.i.i, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.q ], [ %i.bd, %.noexc17.i.i.i ], [ %i.bd, %.thread.i.i.i.i.i ], [ %i.bu, %.noexc20.i.i.i ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bx = load i8, ptr %i.bw, align 2, !range !21, !noalias !1413, !noundef !9
  %i.by = load i64, ptr %i.bv, align 8, !range !22, !noalias !1413, !noundef !9
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.ca = load atomic i8, ptr %i.bz monotonic, align 1, !noalias !1413
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i
  %i.cb = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1415
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.u, !prof !12

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1411

bb.v:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bv)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1411

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.u ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.t ], [ %i.cd, %bb.v ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 5 uses
  store i64 -1, ptr %i.ce, align 8, !noalias !1423
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1424, !noalias !1425, !noundef !9 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !1424, !noalias !1425, !nonnull !9, !noundef !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !1424, !noalias !1425, !noundef !9 ; 2 uses
  %.not.i13.i.i.i.i.i = icmp ugt i64 %i.cg, %i.ck
  br i1 %.not.i13.i.i.i.i.i, label %bb.w, label %bb.x, !prof !19

bb.w:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cg, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !1413

.noexc.i.i.i.i.i:                                 ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr [152 x i8], ptr %i.ci, i64 %i.cg
  %i.cm = getelementptr i8, ptr %i.cl, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1426
  store i32 %.sroa.0.0.i3.i.i.i, ptr %i.a, align 4, !noalias !1426
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.12.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1426
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1426
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.cm, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bx, i64 noundef %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.z, !noalias !1413

.noexc14.i.i.i.i.i:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1426
  %.pre.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !1415
  %i.cn = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load i64, ptr %i.ce, align 8, !noalias !1415, !noundef !9
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.ce, align 8, !noalias !1415
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.m
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.v, %bb.u, %bb.s, %.noexc17.i.i.i, %.noexc19.i.i.i, %bb.l, %select.unfold.i.i.i.i.i.i, %.noexc11.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, %bb.j, %bb.i, %.noexc9.i.i.i, %bb.h, %.noexc7.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.z
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.co, %bb.z ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty(ptr %.sroa.0.0.i.i.i.i) #49
          to label %bb.ae unwind label %bb.ad, !noalias !1411

bb.aa:                                            ; preds = %.noexc14.i.i.i.i.i, %bb.x
  %i.cr = phi i64 [ %i.cn, %.noexc14.i.i.i.i.i ], [ 0, %bb.x ]
  store i64 %i.cr, ptr %i.ce, align 8, !noalias !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1413
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1411, !noundef !9 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !1411 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1411
  %.not3.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not3.i.i.i.i.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !9, !noalias !1411, !nonnull !9
  %i.cx = call noundef nonnull align 8 ptr %i.cw(ptr noundef nonnull %i.cs) #50, !noalias !1411, !inline_history !1408
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx), !noalias !1411
  br label %bb.ag

bb.ad:                                            ; preds = %.body.i.i.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !1411
  unreachable

bb.ae:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #47
  unreachable

bb.ag:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  ret ptr %i.cz
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_NCNvNtB3c_17method_resolution43crates_containing_incoherent_inherent_impls0E0B1T_EB3c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1459, !inline_history !1429 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_NCNvNtB3g_17method_resolution43crates_containing_incoherent_inherent_impls0E0B1X_EB3g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1459, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1459, !nonnull !9, !noundef !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1459 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1459 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1459 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1460
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #50, !noalias !1461, !inline_history !1434 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1462, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1462, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1462
  store ptr %i.n, ptr %i.g, align 8, !noalias !1462
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1462
  store ptr %i.l, ptr %i.f, align 8, !noalias !1462
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1462
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1462
  store ptr %i.m, ptr %i.o, align 8, !noalias !1462
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1462
  store ptr %i.g, ptr %i.e, align 8, !noalias !1462
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1462
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1462
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1462
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !1461
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1462
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !1463, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461, !inline_history !1439 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__53crates_containing_incoherent_inherent_impls_FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1464
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_17method_resolution1__NtB3c_58crates_containing_incoherent_inherent_impls_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_17method_resolution1__NtB37_58crates_containing_incoherent_inherent_impls_Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_17method_resolution1__NtB3c_58crates_containing_incoherent_inherent_impls_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_17method_resolution1__NtB3c_58crates_containing_incoherent_inherent_impls_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !17, !noalias !1463, !noundef !9 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1463, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1463
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1465, !noundef !9
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !12

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_17method_resolution1__NtB3c_58crates_containing_incoherent_inherent_impls_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !13

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtB1N_17method_resolution1__NtB3c_58crates_containing_incoherent_inherent_impls_Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1461

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1465, !noundef !9
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1466, !noalias !1465, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1461 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1463, !align !29, !noundef !9
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.am, align 8, !noalias !1465, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1465
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1465
  store i32 %i.as, ptr %i.ap, align 4, !noalias !1465
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !1467 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !22, !noalias !1468, !noundef !9
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #46
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1461 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1463
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !1463
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution1__58crates_containing_incoherent_inherent_impls_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1469
end_hunk_2
begin_hunk_3_@_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtB2B_11next_solver6binder17StoredEarlyBinderNtB3n_14StoredTraitRefEEEDNtNtB2B_2db11HirDatabaseEL_NCNvB2z_27impl_trait_with_diagnostics0E0B1T_EB2B_:bb.a
bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !range !11, !noalias !1616, !noundef !9
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1618, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1618
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1618
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1618
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !1620 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.ak, align 8, !range !22, !noalias !1621, !noundef !9
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.av) #46
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1614 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 61
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !1616
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 61
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !noalias !1616
  %.not6.i22.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not6.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1622
  store ptr %i.c, ptr %i.b, align 8, !noalias !1622
  %i.bg = load ptr, ptr %i.ah, align 8, !noalias !1622, !noundef !9
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !12

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1622
  %i.bh = load i64, ptr %i.ak, align 8, !range !22, !noalias !1622, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.au, i64 noundef %i.bh)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1614

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1622
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1614

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1614

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1614 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bi, %.noexc15.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 62
  %i.bl = load i8, ptr %i.bk, align 2, !range !21, !noalias !1616, !noundef !9
  %i.bm = load i64, ptr %i.bj, align 8, !range !22, !noalias !1616, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 61
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !1616
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1618
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1614

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1614

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !1623
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1624, !noalias !1625, !noundef !9 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1624, !noalias !1625, !nonnull !9, !noundef !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1624, !noalias !1625, !noundef !9 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !19

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1616

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1626
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1626
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1626
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1626
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !1616

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1626
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !1618
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !1618, !noundef !9
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !1618
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty(ptr %.sroa.0.0.i.i.i.i) #49
          to label %bb.ac unwind label %bb.ab, !noalias !1614

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !1618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1616
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1614, !noundef !9 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1614 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1614
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !9, !noalias !1614, !nonnull !9
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg) #50, !noalias !1614, !inline_history !1611
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1614
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !1614
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #47
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB3c_5lower10ImplTraitsEEEDNtNtB3c_2db11HirDatabaseEL_NCNvNvMs12_B4c_B4a_22type_alias_impl_traits23type_alias_impl_traits_0E0B1T_EB3c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1663, !inline_history !1629 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1663, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1663, !nonnull !9, !noundef !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1663 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1663 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1663 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1664
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #50, !noalias !1665, !inline_history !1634 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1666, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1666, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1666
  store ptr %i.n, ptr %i.g, align 8, !noalias !1666
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1666
  store ptr %i.l, ptr %i.f, align 8, !noalias !1666
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1666
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1666
  store ptr %i.m, ptr %i.o, align 8, !noalias !1666
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1666
  store ptr %i.g, ptr %i.e, align 8, !noalias !1666
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1666
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1666
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1666
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !1665
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1666
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !1667, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665, !inline_history !1639 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1U_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1W_(ptr noundef nonnull align 4 @_RNvNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBa_10ImplTraits22type_alias_impl_traits1__33type_alias_impl_traits__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1668
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits22type_alias_impl_traits1__NtB7_23type_alias_impl_traits_14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMs12_NtB1N_5lowerNtB3g_10ImplTraits22type_alias_impl_traits1__NtB37_38type_alias_impl_traits__Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits22type_alias_impl_traits1__NtB7_23type_alias_impl_traits_14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits22type_alias_impl_traits1__NtB7_23type_alias_impl_traits_14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !17, !noalias !1667, !noundef !9 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1667, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1667
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1669, !noundef !9
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !12

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits22type_alias_impl_traits1__NtB7_23type_alias_impl_traits_14fn_ingredient_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !13

bb.h:                                             ; preds = %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits22type_alias_impl_traits1__NtB7_23type_alias_impl_traits_14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1669, !noundef !9
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1670, !noalias !1669, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1b_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E23get_memo_from_table_forB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1665 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !range !11, !noalias !1667, !noundef !9
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1669, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1669
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1669
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1669
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !1671 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.ak, align 8, !range !22, !noalias !1672, !noundef !9
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.av) #46
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1665 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !1667
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !noalias !1667
  %.not6.i22.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not6.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1673
  store ptr %i.c, ptr %i.b, align 8, !noalias !1673
  %i.bg = load ptr, ptr %i.ah, align 8, !noalias !1673, !noundef !9
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !12

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1673
  %i.bh = load i64, ptr %i.ak, align 8, !range !22, !noalias !1673, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.au, i64 noundef %i.bh)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1673
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E10fetch_coldB1e_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1665 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bi, %.noexc15.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 46
  %i.bl = load i8, ptr %i.bk, align 2, !range !21, !noalias !1667, !noundef !9
  %i.bm = load i64, ptr %i.bj, align 8, !range !22, !noalias !1667, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 45
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !1667
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1669
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1665

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !1674
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1675, !noalias !1676, !noundef !9 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1675, !noalias !1676, !nonnull !9, !noundef !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1675, !noalias !1676, !noundef !9 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !19

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1667

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1677
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1677
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1677
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1677
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !1667

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1677
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !1669
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !1669, !noundef !9
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !1669
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty(ptr %.sroa.0.0.i.i.i.i) #49
          to label %bb.ac unwind label %bb.ab, !noalias !1665

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !1669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1667
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1665, !noundef !9 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1665 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1665
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !9, !noalias !1665, !nonnull !9
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg) #50, !noalias !1665, !inline_history !1662
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1665
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !1665
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #47
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB3c_5lower10ImplTraitsEEEDNtNtB3c_2db11HirDatabaseEL_NCNvNvMs12_B4c_B4a_23return_type_impl_traits24return_type_impl_traits_0E0B1T_EB3c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1714, !inline_history !1680 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1714, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1714, !nonnull !9, !noundef !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1714 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1714 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1714 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1715
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #50, !noalias !1716, !inline_history !1685 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1717, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1717, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1717
  store ptr %i.n, ptr %i.g, align 8, !noalias !1717
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1717
  store ptr %i.l, ptr %i.f, align 8, !noalias !1717
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1717
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1717
  store ptr %i.m, ptr %i.o, align 8, !noalias !1717
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1717
  store ptr %i.g, ptr %i.e, align 8, !noalias !1717
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1717
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1717
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1717
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !1716
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1717
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !1718, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716, !inline_history !1690 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1U_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1W_(ptr noundef nonnull align 4 @_RNvNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBa_10ImplTraits23return_type_impl_traits1__34return_type_impl_traits__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1719
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits23return_type_impl_traits1__NtB7_24return_type_impl_traits_14fn_ingredient_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMs12_NtB1N_5lowerNtB3g_10ImplTraits23return_type_impl_traits1__NtB37_39return_type_impl_traits__Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits23return_type_impl_traits1__NtB7_24return_type_impl_traits_14fn_ingredient_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits23return_type_impl_traits1__NtB7_24return_type_impl_traits_14fn_ingredient_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !17, !noalias !1718, !noundef !9 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1718, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1718
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1720, !noundef !9
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !12

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits23return_type_impl_traits1__NtB7_24return_type_impl_traits_14fn_ingredient_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !13

bb.h:                                             ; preds = %_RNvMs2_NvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBe_10ImplTraits23return_type_impl_traits1__NtB7_24return_type_impl_traits_14fn_ingredient_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1720, !noundef !9
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1721, !noalias !1720, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1b_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E23get_memo_from_table_forB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1716 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !range !11, !noalias !1718, !noundef !9
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1720, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1720
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1720
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1720
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !1722 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.ak, align 8, !range !22, !noalias !1723, !noundef !9
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.av) #46
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1716 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !1718
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !noalias !1718
  %.not6.i22.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not6.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1724
  store ptr %i.c, ptr %i.b, align 8, !noalias !1724
  %i.bg = load ptr, ptr %i.ah, align 8, !noalias !1724, !noundef !9
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !12

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1724
  %i.bh = load i64, ptr %i.ak, align 8, !range !22, !noalias !1724, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.au, i64 noundef %i.bh)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1724
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E10fetch_coldB1e_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1716 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bi, %.noexc15.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 46
  %i.bl = load i8, ptr %i.bk, align 2, !range !21, !noalias !1718, !noundef !9
  %i.bm = load i64, ptr %i.bj, align 8, !range !22, !noalias !1718, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 45
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !1718
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1720
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E12refresh_memoB1e_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1716

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !1725
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1726, !noalias !1727, !noundef !9 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1726, !noalias !1727, !nonnull !9, !noundef !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1726, !noalias !1727, !noundef !9 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !19

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1718

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1728
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1728
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1728
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1728
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !1718

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1728
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !1720
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !1720, !noundef !9
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !1720
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB1c_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_E9fetch_hotB1e_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty(ptr %.sroa.0.0.i.i.i.i) #49
          to label %bb.ac unwind label %bb.ab, !noalias !1716

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !1720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1718
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1716, !noundef !9 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1716 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1716
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !9, !noalias !1716, !nonnull !9
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg) #50, !noalias !1716, !inline_history !1713
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1716
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !1716
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #47
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution13InherentImplsEEDNtNtB39_2db11HirDatabaseEL_NCNvNvMsx_B37_B35_9for_block10for_block_0E0B1T_EB39_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1761, !inline_history !1731 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1761, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1761, !nonnull !9, !noundef !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1761 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1761 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1761 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1762
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #50, !noalias !1763, !inline_history !1736 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1764, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1764, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1764
  store ptr %i.n, ptr %i.g, align 8, !noalias !1764
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1764
  store ptr %i.l, ptr %i.f, align 8, !noalias !1764
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1764
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1764
  store ptr %i.m, ptr %i.o, align 8, !noalias !1764
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1764
  store ptr %i.g, ptr %i.e, align 8, !noalias !1764
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1764
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1764
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1764
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !1763
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1764
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !1765, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763, !inline_history !1741 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1T_13InherentImpls9for_block1__25for_block__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB9_13InherentImpls9for_block1__20for_block__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1766
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_block1__NtB3c_25for_block__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3f_13InherentImpls9for_block1__NtB37_25for_block__Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_block1__NtB3c_25for_block__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_block1__NtB3c_25for_block__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !17, !noalias !1765, !noundef !9 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1765, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1765
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1767, !noundef !9
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !12

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_block1__NtB3c_25for_block__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !13

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_block1__NtB3c_25for_block__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1767, !noundef !9
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1768, !noalias !1767, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1a_13InherentImpls9for_block1__25for_block__Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1763 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !range !11, !noalias !1765, !noundef !9
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.m, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.am, align 8, !noalias !1767, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1767
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1767
  store i32 %i.at, ptr %i.ap, align 4, !noalias !1767
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !1769 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.ak, align 8, !range !22, !noalias !1770, !noundef !9
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.av) #46
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1763 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !noalias !1765
  %.not6.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 45
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !noalias !1765
  %.not6.i22.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not6.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1771
  store ptr %i.c, ptr %i.b, align 8, !noalias !1771
  %i.bg = load ptr, ptr %i.ah, align 8, !noalias !1771, !noundef !9
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i12.i.i.i.i.i, label %.noexc14.i.i.i, label %bb.q, !prof !12

.noexc14.i.i.i:                                   ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1771
  %i.bh = load i64, ptr %i.ak, align 8, !range !22, !noalias !1771, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.au, i64 noundef %i.bh)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

.noexc12.i.i.i:                                   ; preds = %.noexc14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1771
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.n, %.noexc11.i.i.i, %bb.l, %.noexc10.i.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E10fetch_coldB1d_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !1763 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i, label %bb.k, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i: ; preds = %.noexc15.i.i.i, %.thread.i.i.i.i.i, %.noexc12.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %.noexc12.i.i.i ], [ %i.aq, %.thread.i.i.i.i.i ], [ %i.bi, %.noexc15.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 46
  %i.bl = load i8, ptr %i.bk, align 2, !range !21, !noalias !1765, !noundef !9
  %i.bm = load i64, ptr %i.bj, align 8, !range !22, !noalias !1765, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 45
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !1765
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !1767
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

bb.t:                                             ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1763

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !1772
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1773, !noalias !1774, !noundef !9 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1773, !noalias !1774, !nonnull !9, !noundef !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1773, !noalias !1774, !noundef !9 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i14.i.i.i.i.i, label %bb.u, label %bb.v, !prof !19

bb.u:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !1765

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1775
  store i32 %i.ae, ptr %i.a, align 4, !noalias !1775
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1775
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1775
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i unwind label %bb.x, !noalias !1765

.noexc15.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1775
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !1767
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !1767, !noundef !9
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !1767
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_block1__25for_block__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.t, %bb.s, %bb.q, %.noexc12.i.i.i, %.noexc14.i.i.i, %bb.j, %bb.i, %.noexc8.i.i.i, %bb.h, %.noexc6.i.i.i, %bb.g, %.noexc.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.x
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty(ptr %.sroa.0.0.i.i.i.i) #49
          to label %bb.ac unwind label %bb.ab, !noalias !1763

bb.y:                                             ; preds = %.noexc15.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc15.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1765
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1763, !noundef !9 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1763 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1763
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !9, !noalias !1763, !nonnull !9
  %i.cl = call noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.cg) #50, !noalias !1763, !inline_history !1760
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl), !noalias !1763
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !1763
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #47
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  ret ptr %i.cn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution13InherentImplsDNtNtB1Y_2db11HirDatabaseEL_NCNvNvMsx_B1W_B1U_9for_crate10for_crate_0E0B1T_EB1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  %i.h = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !1808, !inline_history !1778 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE8try_withNCINvBW_6attachRNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution13InherentImplsDNtNtB22_2db11HirDatabaseEL_NCNvNvMsx_B20_B1Y_9for_crate10for_crate_0E0B1X_EB22_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1808, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1808, !nonnull !9, !noundef !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1808 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1808 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1808 ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 64
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !1809
  %i.k = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %.sroa.0.0.copyload.i) #50, !noalias !1810, !inline_history !1783 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !noalias !1811, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1811, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1811
  store ptr %i.n, ptr %i.g, align 8, !noalias !1811
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !1811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1811
  store ptr %i.l, ptr %i.f, align 8, !noalias !1811
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.r, align 8, !noalias !1811
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.h, align 8, !noalias !1811
  store ptr %i.m, ptr %i.o, align 8, !noalias !1811
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1811
  store ptr %i.g, ptr %i.e, align 8, !noalias !1811
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1811
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !1811
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsa_NtNtCshzWfHUSfYae_4core3ptr8non_nullINtB5_7NonNullDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1811
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @540, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #47, !noalias !1810
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1811
  br label %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i

_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !9, !noalias !1812, !nonnull !9
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %.sroa.5.0.copyload.i) #50
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810, !inline_history !1788 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 10 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 8 uses
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1T_13InherentImpls9for_crate1__25for_crate__Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB9_13InherentImpls9for_crate1__20for_crate__FN_CACHE_, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.x)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810 ; 6 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load atomic i32, ptr %i.aa acquire, align 8, !noalias !1813
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_crate1__NtB3c_25for_crate__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %.noexc3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3f_13InherentImpls9for_crate1__NtB37_25for_crate__Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.6.0.copyload.i)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_crate1__NtB3c_25for_crate__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_crate1__NtB3c_25for_crate__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i: ; preds = %bb.g, %.noexc3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.ae = load i32, ptr %.sroa.7.0.copyload.i, align 4, !range !17, !noalias !1812, !noundef !9 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !1812, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1812
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1352 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1814, !noundef !9
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i9.i.i.i.i.i, label %.noexc6.i.i.i, label %bb.h, !prof !12

.noexc6.i.i.i:                                    ; preds = %bb.h, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_crate1__NtB3c_25for_crate__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810

.noexc5.i.i.i:                                    ; preds = %.noexc6.i.i.i
  br i1 %i.aj, label %bb.i, label %.noexc8.i.i.i, !prof !13

bb.h:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsx_NtB1N_17method_resolutionNtB3k_13InherentImpls9for_crate1__NtB3c_25for_crate__Configuration_14fn_ingredient_s_0E0zEB1N_.exit.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810

.noexc8.i.i.i:                                    ; preds = %bb.i, %.noexc5.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810

.noexc7.i.i.i:                                    ; preds = %.noexc8.i.i.i
  br i1 %i.al, label %bb.j, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i, !prof !13

bb.i:                                             ; preds = %.noexc5.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.y)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810

bb.j:                                             ; preds = %.noexc7.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.y)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1810

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i: ; preds = %bb.j, %.noexc7.i.i.i
  %i.am = getelementptr i8, ptr %i.z, i64 576     ; 2 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.am, align 8, !noalias !1814, !noundef !9
  %i.an = getelementptr i8, ptr %i.z, i64 580
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !1815, !noalias !1814, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.noexc15.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1a_13InherentImpls9for_crate1__25for_crate__Configuration_E23get_memo_from_table_forB1c_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.x, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, i32 noundef %.val8.i.i.i.i.i)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !1810 ; 8 uses

.noexc10.i.i.i:                                   ; preds = %bb.k
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_crate1__25for_crate__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc10.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1812, !noundef !9
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not6.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_crate1__25for_crate__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.am, align 8, !noalias !1814, !noundef !9
  store i32 %i.ae, ptr %i.d, align 4, !noalias !1814
  store i32 %i.ag, ptr %i.ao, align 4, !noalias !1814
  store i32 %i.as, ptr %i.ap, align 4, !noalias !1814
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !1816 ; 3 uses
  %i.av = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.ak, align 8, !range !22, !noalias !1817, !noundef !9
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ay = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.au) #46
          to label %.noexc11.i.i.i unwind label %.loopexit.i.i.i, !noalias !1810 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_crate1__25for_crate__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 61
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1, !noalias !1812
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not7.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_crate1__25for_crate__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %bb.o

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 61
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !noalias !1812
  %.not7.i22.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not7.i22.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_crate1__25for_crate__Configuration_E9fetch_hotB1d_.exit.thread.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_crate1__25for_crate__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.ay, 1
  br i1 %i.be, label %bb.p, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvMsx_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB1b_13InherentImpls9for_crate1__25for_crate__Configuration_E12refresh_memoB1d_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1818
end_hunk_3
begin_hunk_4_@_RNvNtCs8K4cjrcxBsw_6hir_ty14specialization11specializes:bb.a
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.thread.i125.i.i.i.i.i.i.i
  %.not6.i.i128.i.i.i.i.i.i.i = icmp eq ptr %.val10.i124.i.i.i.i.i.i.i, null
  br i1 %.not6.i.i128.i.i.i.i.i.i.i, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store ptr %.val.i126.i.i.i.i.i.i.i, ptr %.val10.i124.i.i.i.i.i.i.i, align 8, !noalias !8393
  br label %bb.ch

bb.cg:                                            ; preds = %.critedge.i123.i.i.i.i.i.i.i
  store ptr %.val10.i124.i.i.i.i.i.i.i, ptr %i.le, align 8, !noalias !8393
  br label %.thread.i125.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  store ptr inttoptr (i64 1 to ptr), ptr %i.dh, align 8, !noalias !8393
  %.pre.i.i.i.i.i.i = load i8, ptr %i.kc, align 2, !range !21, !noalias !8358
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ca, %bb.bz
  %i.lj = phi i8 [ %.pre.i.i.i.i.i.i, %bb.ch ], [ %..i.i.i.i.i.i.i.i, %bb.ca ], [ %.pre109.i.i.i.i.i.i, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false), !noalias !8360
  %i.lk = load i64, ptr %i.q, align 8, !range !22, !noalias !8360, !noundef !9
  invoke fastcc void @_RINvMs1_NtCsd9Lm8bEdjjY_5salsa8internedNtB6_11ValueShared31report_tracked_read_if_reusableNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EB1w_(ptr noundef nonnull align 8 %i.ba, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.i, i64 noundef %i.lk, i8 noundef %i.lj)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !8358

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8360
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dh, i64 51
  %i.lm = load i32, ptr %i.ll, align 1, !range !17, !noalias !8358, !noundef !9
  %i.ln = getelementptr inbounds nuw i8, ptr %i.dh, i64 55
  %i.lo = load i32, ptr %i.ln, align 1, !noalias !8358, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8360
  %i.lp = cmpxchg ptr %i.bx, i8 1, i8 0 release monotonic, align 1, !noalias !8358
  %.sroa.18.0.in.i.i.i.i132.i.i.i.i.i.i.i = extractvalue { i8, i1 } %i.lp, 1
  br i1 %.sroa.18.0.in.i.i.i.i132.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit133.i.i.i.i.i.i.i, label %bb.ck, !prof !12

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.bx, i1 noundef zeroext false)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit133.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit133.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8360
  %i.lq = insertvalue { i32, i32 } poison, i32 %i.lm, 0
  %i.lr = insertvalue { i32, i32 } %i.lq, i32 %i.lo, 1
  br label %_RINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9intern_idTNtCsileJQcQObtj_7hir_def6ImplIdB2r_ENCNCNvB11_17specializes_query00EB13_.exit.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.p
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !8358
  unreachable

_RINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9intern_idTNtCsileJQcQObtj_7hir_def6ImplIdB2r_ENCNCNvB11_17specializes_query00EB13_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit133.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit79.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit76.i.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i.i = phi { i32, i32 } [ %i.lr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit133.i.i.i.i.i.i.i ], [ %.merged58.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit76.i.i.i.i.i.i.i ], [ %i.eg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEB34_.exit79.i.i.i.i.i.i.i ] ; 2 uses
  %i.lt = extractvalue { i32, i32 } %.merged.i.i.i.i.i.i.i, 0 ; 4 uses
  %i.lu = extractvalue { i32, i32 } %.merged.i.i.i.i.i.i.i, 1 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8359
  %i.lv = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8function14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EE13get_or_createNCNvMs_B1L_B1J_14fn_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__27specializes_query_FN_CACHE_, ptr noundef nonnull align 8 %i.az, ptr noundef nonnull align 8 %i.az)
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357 ; 6 uses

.noexc11.i.i.i.i.i:                               ; preds = %_RINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9intern_idTNtCsileJQcQObtj_7hir_def6ImplIdB2r_ENCNCNvB11_17specializes_query00EB13_.exit.i.i.i.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 520
  %i.lx = load atomic i32, ptr %i.lw acquire, align 8, !noalias !8394
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty14specialization1__NtB7_17specializes_query14fn_ingredient_.exit.i.i.i.i.i.i, label %bb.cm, !prof !12

bb.cm:                                            ; preds = %.noexc11.i.i.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 480
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtB1N_14specialization1__NtB37_32specializes_query_Configuration_14fn_ingredient_s_0E0zEB1N_(ptr noundef nonnull align 8 %i.lz, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1)
          to label %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty14specialization1__NtB7_17specializes_query14fn_ingredient_.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty14specialization1__NtB7_17specializes_query14fn_ingredient_.exit.i.i.i.i.i.i: ; preds = %bb.cm, %.noexc11.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8359
  %i.ma = getelementptr inbounds nuw i8, ptr %i.az, i64 1352 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !noalias !8395, !noundef !9
  %.not.i9.i.i.i.i.i.i.i = icmp eq ptr %i.mb, null
  br i1 %.not.i9.i.i.i.i.i.i.i, label %.noexc14.i.i.i.i.i, label %bb.cn, !prof !12

.noexc14.i.i.i.i.i:                               ; preds = %bb.cn, %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty14specialization1__NtB7_17specializes_query14fn_ingredient_.exit.i.i.i.i.i.i
  %i.mc = invoke noundef zeroext i1 @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.noexc13.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

.noexc13.i.i.i.i.i:                               ; preds = %.noexc14.i.i.i.i.i
  br i1 %i.mc, label %bb.co, label %.noexc16.i.i.i.i.i, !prof !13

bb.cn:                                            ; preds = %_RNvMs2_NvNtCs8K4cjrcxBsw_6hir_ty14specialization1__NtB7_17specializes_query14fn_ingredient_.exit.i.i.i.i.i.i
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.az, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @544) #46
          to label %.noexc14.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

.noexc16.i.i.i.i.i:                               ; preds = %bb.co, %.noexc13.i.i.i.i.i
  %i.md = invoke noundef zeroext i1 @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr noundef nonnull align 8 %i.bf)
          to label %.noexc15.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

.noexc15.i.i.i.i.i:                               ; preds = %.noexc16.i.i.i.i.i
  br i1 %i.md, label %bb.cp, label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i, !prof !13

bb.co:                                            ; preds = %.noexc13.i.i.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal16unwind_cancelled(ptr noundef nonnull align 8 %i.ba)
          to label %.noexc16.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

bb.cp:                                            ; preds = %.noexc15.i.i.i.i.i
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal20unwind_pending_write(ptr noundef nonnull align 8 %i.ba)
          to label %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i: ; preds = %bb.cp, %.noexc15.i.i.i.i.i
  %i.me = getelementptr i8, ptr %i.lv, i64 576    ; 2 uses
  %.val7.i.i.i.i.i.i.i = load i32, ptr %i.me, align 8, !noalias !8395, !noundef !9
  %i.mf = getelementptr i8, ptr %i.lv, i64 580
  %.val8.i.i.i.i.i.i.i = load i32, ptr %i.mf, align 4, !alias.scope !8396, !noalias !8395, !noundef !9 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.cq

bb.cq:                                            ; preds = %.noexc23.i.i.i.i.i, %_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa28unwind_if_revision_cancelled.exit.i.i.i.i.i.i.i
  %i.mi = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function4memoINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E23get_memo_from_table_forB16_(ptr noundef nonnull align 8 %i.lv, ptr noundef nonnull align 8 %i.az, i32 noundef range(i32 1, 0) %i.lt, i32 noundef %i.lu, i32 noundef %.val8.i.i.i.i.i.i.i)
          to label %.noexc18.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !8357 ; 11 uses

.noexc18.i.i.i.i.i:                               ; preds = %bb.cq
  %.not.i2.i.i.i.i.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i2.i.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.noexc18.i.i.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mk = load i8, ptr %i.mj, align 8, !range !14, !noalias !8358, !noundef !9
  %.not6.i.i.i.i.i.i.i.i = icmp eq i8 %i.mk, 2
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ml = load i32, ptr %i.me, align 8, !noalias !8395, !noundef !9
  store i32 %i.lt, ptr %i.d, align 4, !noalias !8397
  store i32 %i.lu, ptr %i.mg, align 4, !noalias !8397
  store i32 %i.ml, ptr %i.mh, align 4, !noalias !8397
  %i.mm = load atomic i64, ptr %i.mi acquire, align 8, !noalias !8398 ; 3 uses
  %i.mn = icmp ne i64 %i.mm, 0
  call void @llvm.assume(i1 %i.mn)
  %i.mo = load i64, ptr %i.bf, align 8, !range !22, !noalias !8399, !noundef !9
  %i.mp = icmp eq i64 %i.mm, %i.mo
  br i1 %i.mp, label %.thread.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i.i.i, !prof !12

_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i.i.i: ; preds = %bb.cs
  %i.mq = invoke noundef i8 @_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader24shallow_verify_memo_cold(ptr noundef nonnull align 8 %i.mi, ptr noundef nonnull align 8 %i.az, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i64 noundef %i.mm) #46
          to label %.noexc19.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !8357 ; 2 uses

.noexc19.i.i.i.i.i:                               ; preds = %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i.i.i
  %i.mr = icmp eq i8 %i.mq, 2
  br i1 %i.mr, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.noexc19.i.i.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 29
  %i.mt = load atomic i8, ptr %i.ms monotonic, align 1, !noalias !8358
  %.not7.i.i.i.i.i.i.i.i = icmp eq i8 %i.mt, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i, label %bb.cu

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.cs
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mi, i64 29
  %i.mv = load atomic i8, ptr %i.mu monotonic, align 1, !noalias !8358
  %.not7.i22.i.i.i.i.i.i.i = icmp eq i8 %i.mv, 0
  br i1 %.not7.i22.i.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.mw = icmp eq i8 %i.mq, 1
  br i1 %i.mw, label %bb.cv, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !8397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8400
  store ptr %i.c, ptr %i.b, align 8, !noalias !8400
  %i.mx = load ptr, ptr %i.ma, align 8, !noalias !8401, !noundef !9
  %.not.i12.i.i.i.i.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i12.i.i.i.i.i.i.i, label %.noexc22.i.i.i.i.i, label %bb.cw, !prof !12

.noexc22.i.i.i.i.i:                               ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8400
  %i.my = load i64, ptr %i.bf, align 8, !range !22, !noalias !8401, !noundef !9
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.mi, i64 noundef %i.my)
          to label %.noexc20.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

.noexc20.i.i.i.i.i:                               ; preds = %.noexc22.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8400
  invoke void @_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader24mark_outputs_as_verified(ptr noundef nonnull align 8 %i.mi, ptr noundef nonnull align 8 %i.az, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d)
          to label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %i.az, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @543) #46
          to label %.noexc22.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i, %bb.ct, %.noexc19.i.i.i.i.i, %bb.cr, %.noexc18.i.i.i.i.i
  %i.mz = invoke noundef align 8 ptr @_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E10fetch_coldB17_(ptr noundef nonnull align 8 %i.lv, ptr noundef nonnull align 8 %i.az, ptr noundef nonnull align 8 %i.ba, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef range(i32 1, 0) %i.lt, i32 noundef %i.lu, i32 noundef %.val8.i.i.i.i.i.i.i)
          to label %.noexc23.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !8357 ; 2 uses

.noexc23.i.i.i.i.i:                               ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %bb.cq, label %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i.i.i

_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i, %bb.cu
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.mi, %bb.cu ], [ %i.mi, %.noexc20.i.i.i.i.i ], [ %i.mi, %.thread.i.i.i.i.i.i.i ], [ %i.mz, %.noexc23.i.i.i.i.i ] ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 30
  %i.nc = load i8, ptr %i.nb, align 2, !range !21, !noalias !8358, !noundef !9
  %i.nd = load i64, ptr %i.na, align 8, !range !22, !noalias !8358, !noundef !9
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 29
  %i.nf = load atomic i8, ptr %i.ne monotonic, align 1, !noalias !8358
  %.not.i4.i.i.i.i.i.i.i = icmp eq i8 %i.nf, 0
  br i1 %.not.i4.i.i.i.i.i.i.i, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i.i.i
  %i.ng = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !8397
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i, label %bb.cy, !prof !12

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

bb.cz:                                            ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i.i.i
  %i.ni = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.na)
          to label %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !8357

_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy, %bb.cx
  %.sroa.0.0.i5.i.i.i.i.i.i.i = phi ptr [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.cy ], [ @_RNvNvNtCsd9Lm8bEdjjY_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.cx ], [ %i.ni, %bb.cz ]
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 5 uses
  store i64 -1, ptr %i.nj, align 8, !noalias !8402
  call void @llvm.experimental.noalias.scope.decl(metadata !8403)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.nl = load i64, ptr %i.nk, align 8, !alias.scope !8403, !noalias !8404, !noundef !9 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !8403, !noalias !8404, !nonnull !9, !noundef !9
  %i.no = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.np = load i64, ptr %i.no, align 8, !alias.scope !8403, !noalias !8404, !noundef !9 ; 2 uses
  %.not.i14.i.i.i.i.i.i.i = icmp ugt i64 %i.nl, %i.np
  br i1 %.not.i14.i.i.i.i.i.i.i, label %bb.da, label %bb.db, !prof !19

bb.da:                                            ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.nl, i64 noundef %i.np, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #47
          to label %.noexc.i1.i.i.i.i.i.i unwind label %bb.dd, !noalias !8358

.noexc.i1.i.i.i.i.i.i:                            ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa8function4memoNtB4_10MemoHeader11cycle_heads.exit.i.i.i.i.i.i.i
  %.not2.i.i.i.i.i.i.i.i = icmp eq i64 %i.nl, 0
  br i1 %.not2.i.i.i.i.i.i.i.i, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nq = getelementptr [152 x i8], ptr %i.nn, i64 %i.nl
  %i.nr = getelementptr i8, ptr %i.nq, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8405
  store i32 %i.lt, ptr %i.a, align 4, !noalias !8405
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.lu, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !8405
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !8405
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.nr, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.nc, i64 noundef %i.nd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i.i.i)
          to label %.noexc15.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !8358

.noexc15.i.i.i.i.i.i.i:                           ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8405
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.nj, align 8, !noalias !8395
  %i.ns = add i64 %.pre.i.i.i.i.i.i.i, 1
  br label %bb.dg

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.nt = landingpad { ptr, i32 }
          cleanup
  %i.nu = load i64, ptr %i.nj, align 8, !noalias !8395, !noundef !9
  %i.nv = add i64 %i.nu, 1
  store i64 %i.nv, ptr %i.nj, align 8, !noalias !8395
  br label %.body.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9fetch_hotB17_.exit.thread.i.i.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i.i.i, %bb.cq
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.cz, %bb.cy, %bb.cw, %.noexc20.i.i.i.i.i, %.noexc22.i.i.i.i.i, %bb.cp, %bb.co, %.noexc16.i.i.i.i.i, %bb.cn, %.noexc14.i.i.i.i.i, %bb.cm, %_RINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E9intern_idTNtCsileJQcQObtj_7hir_def6ImplIdB2r_ENCNCNvB11_17specializes_query00EB13_.exit.i.i.i.i.i.i, %bb.ck, %bb.aa, %bb.v, %bb.i, %_RNvMsb_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_13RevisionQueueNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_E6recordB11_.exit.i.i.i.i.i.i.i, %bb.h, %.noexc3.i.i.i.i.i, %.noexc.i.i.i.i.i, %_RNvMNvMNtCsd9Lm8bEdjjY_5salsa6attachNtB5_8Attached6attachNtB2_7DbGuard3new.exit.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.dd, %bb.p, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.nt, %bb.dd ], [ %.pn.i.i.i.i.i.i.i, %bb.p ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  %.not.i.i1.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %.body.i.i.i.i.i
  %i.nw = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8355, !noundef !9 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !noalias !8355 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8355
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not3.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ny) ], !noalias !8406
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 56
  %i.oa = load ptr, ptr %i.nz, align 8, !invariant.load !9, !noalias !8357, !nonnull !9
  %i.ob = invoke noundef nonnull align 8 ptr %i.oa(ptr noundef nonnull %i.nw) #50
          to label %.noexc.i.i.i.i unwind label %bb.dj, !noalias !8354, !inline_history !36

.noexc.i.i.i.i:                                   ; preds = %bb.df
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ob)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i unwind label %bb.dj, !noalias !8354

bb.dg:                                            ; preds = %.noexc15.i.i.i.i.i.i.i, %bb.db
  %i.oc = phi i64 [ %i.ns, %.noexc15.i.i.i.i.i.i.i ], [ 0, %bb.db ]
  store i64 %i.oc, ptr %i.nj, align 8, !noalias !8395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8359
  %i.od = load i8, ptr %6, align 8, !range !28, !noalias !8358, !noundef !9
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvNtCs8K4cjrcxBsw_6hir_ty14specialization17specializes_query.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.oe = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8355, !noundef !9 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !noalias !8355 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8355
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not3.i.i.i.i.i.i.i, label %_RNvNtCs8K4cjrcxBsw_6hir_ty14specialization17specializes_query.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.og) ]
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 56
  %i.oi = load ptr, ptr %i.oh, align 8, !invariant.load !9, !noalias !8357, !nonnull !9
  %i.oj = call noundef nonnull align 8 ptr %i.oi(ptr noundef nonnull %i.oe) #50, !noalias !8357, !inline_history !8352
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.oj), !noalias !8357
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty14specialization17specializes_query.exit

bb.dj:                                            ; preds = %.noexc.i.i.i.i, %bb.df
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !8357
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMNtCsd9Lm8bEdjjY_5salsa6attachNtBG_8Attached6attach7DbGuardECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.de, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNvNtCs8K4cjrcxBsw_6hir_ty14specialization17specializes_query.exit: ; preds = %bb.dg, %bb.dh, %bb.di
  %i.ol = trunc nuw i8 %i.od to i1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.b, %_RNvNtCs8K4cjrcxBsw_6hir_ty14specialization17specializes_query.exit
  %.sroa.0.0 = phi i1 [ %i.ol, %_RNvNtCs8K4cjrcxBsw_6hir_ty14specialization17specializes_query.exit ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs8K4cjrcxBsw_6hir_ty5utils16all_super_traits(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_15SupertraitsInfo5query16supertraits_info(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs8K4cjrcxBsw_6hir_ty5utils19direct_super_traits(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_15SupertraitsInfo5query16supertraits_info(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCs8K4cjrcxBsw_6hir_ty5utils20is_fn_unsafe_to_call(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i8 noundef range(i8 0, 4) %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %2, i32 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 154 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !9 ; 3 uses
  %i.g = and i16 %i.f, 64
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit11

bb.b:                                             ; preds = %bb.a
  %i.h = and i16 %i.f, 1024
  %i.i = icmp eq i16 %i.h, 0
  %or.cond.not = or i1 %6, %i.i
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit12, %bb.b
  %i.j = phi i16 [ %.pre.pre, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit12 ], [ %i.f, %bb.b ]
  %i.k = and i16 %i.j, 2048
  %.not8 = icmp eq i16 %i.k, 0
  br i1 %.not8, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8414
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.l, align 4, !alias.scope !8415, !noalias !8414
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %3, ptr %i.m, align 4, !alias.scope !8415, !noalias !8414
  store i32 2, ptr %i.a, align 4, !alias.scope !8415, !noalias !8414
  %i.n = call noundef i64 @_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags5query(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.a), !noalias !8416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8414
  %i.o = and i64 %i.n, 4096
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_RNvMNtCs8K4cjrcxBsw_6hir_ty14target_featureNtB2_14TargetFeatures23from_fn_no_implications.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call noundef nonnull align 8 ptr @_RNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB7_9AttrFlags15target_features15target_features(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3), !noalias !8416
  br label %_RNvMNtCs8K4cjrcxBsw_6hir_ty14target_featureNtB2_14TargetFeatures23from_fn_no_implications.exit

_RNvMNtCs8K4cjrcxBsw_6hir_ty14target_featureNtB2_14TargetFeatures23from_fn_no_implications.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ @108, %bb.d ]
  %i.q = load ptr, ptr %4, align 8, !noundef !9
  %.not6 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !9, !align !10
  %.sroa.02.0 = select i1 %.not6, ptr %i.s, ptr %4
  %i.t = call noundef zeroext i1 @_RNvMs2_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE9is_subsetCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.02.0)
  br i1 %i.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit12, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit11

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit12: ; preds = %_RNvMNtCs8K4cjrcxBsw_6hir_ty14target_featureNtB2_14TargetFeatures23from_fn_no_implications.exit
  %.pre.pre = load i16, ptr %i.e, align 2
  br label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit11: ; preds = %_RNvMNtCs8K4cjrcxBsw_6hir_ty14target_featureNtB2_14TargetFeatures23from_fn_no_implications.exit, %bb.f, %bb.h, %bb.g, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.f ], [ %.10, %bb.h ], [ 1, %bb.a ], [ %., %bb.g ], [ 1, %_RNvMNtCs8K4cjrcxBsw_6hir_ty14target_featureNtB2_14TargetFeatures23from_fn_no_implications.exit ]
  ret i8 %.sroa.0.0

bb.f:                                             ; preds = %bb.c
  %i.u = call noundef nonnull align 4 ptr @_RNvXs1n_CsileJQcQObtj_7hir_defNtB6_10FunctionIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 4, !range !16, !noundef !9
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit11

bb.g:                                             ; preds = %bb.c
  %i.y = icmp eq i8 %5, 3
  %. = select i1 %i.y, i8 1, i8 2
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit11

bb.h:                                             ; preds = %bb.f
  %i.z = load i16, ptr %i.e, align 2, !noundef !9
  %i.aa = and i16 %i.z, 4096
  %.not9 = icmp eq i16 %i.aa, 0
  %.10 = zext i1 %.not9 to i8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty14target_feature14TargetFeaturesEBF_.exit11
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs8K4cjrcxBsw_6hir_ty5utils25detect_variant_from_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, i32 noundef range(i32 1, 0) %7, i32 noundef %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.i = load i64, ptr %i.h, align 16, !range !43, !noundef !9 ; 2 uses
  %i.j = xor i64 %i.i, -9223372036854775808
  %i.k = icmp slt i64 %i.i, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 2
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit74
  ], !prof !8443

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @591) #47
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs2j_NtCsileJQcQObtj_7hir_def10signaturesNtB6_12EnumVariants2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %7, i32 noundef %8)
  %i.o = load i64, ptr %i.m, align 16, !noundef !9
  %i.p = tail call noundef nonnull align 4 ptr @_RNvXs7_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !range !17, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !noundef !9
  br label %bb.k

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit74: ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %i.t = tail call noundef i64 @_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty(i64 %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %4) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8444)
  %i.v = load i64, ptr %i.u, align 16, !range !44, !alias.scope !8444, !noundef !9 ; 2 uses
  %i.w = xor i64 %i.v, -9223372036854775808
  %i.x = icmp slt i64 %i.v, 0
  %i.y = select i1 %i.x, i64 %i.w, i64 3
  switch i64 %i.y, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit
    i64 2, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit.i
    i64 3, label %bb.g
end_hunk_4
