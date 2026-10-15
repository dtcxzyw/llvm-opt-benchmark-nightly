Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_module_resolver-782a8c0cbed68b5b.ty_module_resolver.2f01860fd78e7af-cgu.06?download=true
inline.NumInlined: 553
inline.NumDeleted: 257
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleDNtNtB1Z_2db2DbEL_NCNvNtB1Z_4list17list_modules_impl0E0B1T_EB1Z_:bb.a
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
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 30
  %i.bl = load i8, ptr %i.bk, align 2, !range !9, !noalias !759, !noundef !3
  %i.bm = load i64, ptr %i.bj, align 8, !range !8, !noalias !759, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 29
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 1, !noalias !759
  %.not.i4.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i4.i.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, i64 8) acquire, align 8, !noalias !761
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i, label %bb.s, !prof !4

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB2_11get_or_initNCNvBV_17empty_cycle_heads0E0zECsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

bb.t:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa8function5fetchINtB4_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E12refresh_memoB17_.exit.i.i.i.i.i
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs5_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions11cycle_heads(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !757

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i5.i.i.i.i.i = phi ptr [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.s ], [ @_RNvNvNtCs45bxiIjzMqg_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS, %bb.r ], [ %i.br, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store i64 -1, ptr %i.bs, align 8, !noalias !766
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !767, !noalias !768, !noundef !3 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !767, !noalias !768, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !767, !noalias !768, !noundef !3 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp ugt i64 %i.bu, %i.by
  br i1 %.not.i15.i.i.i.i.i, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bu, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !noalias !759

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader11cycle_heads.exit.i.i.i.i.i
  %.not2.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr [152 x i8], ptr %i.bw, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.bz, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !769
  store i32 %i.ae, ptr %i.a, align 4, !noalias !769
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !769
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val7.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !769
  invoke void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.bl, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i5.i.i.i.i.i)
          to label %.noexc16.i.i.i.i.i unwind label %bb.x, !noalias !759

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !769
  %.pre.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !761
  %i.cb = add i64 %.pre.i.i.i.i.i, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i64, ptr %i.bs, align 8, !noalias !761, !noundef !3
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !761
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
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsfDzkztWVnn_18ty_module_resolver(ptr %.sroa.0.0.i.i.i.i) #16
          to label %bb.ac unwind label %bb.ab, !noalias !757

bb.y:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.cf = phi i64 [ %i.cb, %.noexc16.i.i.i.i.i ], [ 0, %bb.v ]
  store i64 %i.cf, ptr %i.bs, align 8, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !759
  %i.cg = load ptr, ptr %i.bi, align 8, !noalias !759, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !759, !noundef !3
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !757, !noundef !3 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !757 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !757
  %.not3.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not3.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !invariant.load !3, !noalias !757, !nonnull !3
  %i.co = call noundef nonnull align 8 ptr %i.cn(ptr noundef nonnull %i.cj), !noalias !757, !inline_history !754
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co), !noalias !757
  br label %bb.ae

bb.ab:                                            ; preds = %.body.i.i.i
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !757
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.cq = insertvalue { ptr, i64 } poison, ptr %i.cg, 0
  %i.cr = insertvalue { ptr, i64 } %i.cq, i64 %i.ci, 1
  ret { ptr, i64 } %i.cr
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
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %1 = load ptr, ptr %0, align 8, !noalias !784, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !784, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !784, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !784, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !784
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !784, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !784, !inline_history !774
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.w = load ptr, ptr %0, align 8, !noalias !785, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !785, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !785, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !785, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !785
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !785, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !785, !inline_history !777
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !786, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !786
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !787
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.at = load ptr, ptr %0, align 8, !noalias !787, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !787, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !787, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !787
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !787, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !774

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.bn = load ptr, ptr %0, align 8, !noalias !788, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !788, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !788, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !788, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !788
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !788, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !788, !inline_history !774
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %1 = load ptr, ptr %0, align 8, !noalias !801, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !801, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !801, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !801, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !801
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !801, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !801, !inline_history !791
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.w = load ptr, ptr %0, align 8, !noalias !802, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !802, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !802, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !802, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !802
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !802, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !802, !inline_history !794
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !803, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !803
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !804
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.at = load ptr, ptr %0, align 8, !noalias !804, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !804, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !804, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !804
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !804, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !791

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.bn = load ptr, ptr %0, align 8, !noalias !805, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !805, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !805, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !805, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !805
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !805, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !805, !inline_history !791
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %1 = load ptr, ptr %0, align 8, !noalias !818, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !818, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !818, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !818, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !818
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !818, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !818, !inline_history !808
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.w = load ptr, ptr %0, align 8, !noalias !819, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !819, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !819, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !819, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !819
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !819, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !819, !inline_history !811
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !820, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !820
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !821
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.at = load ptr, ptr %0, align 8, !noalias !821, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !821, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !821, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !821
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !821, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !808

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.bn = load ptr, ptr %0, align 8, !noalias !822, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !822, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !822, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !822, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !822
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !822, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !822, !inline_history !808
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver6modules0_1__46all_submodule_names_for_package_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %1 = load ptr, ptr %0, align 8, !noalias !835, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !835, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !835, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !835, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !835
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !835, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !835, !inline_history !825
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.w = load ptr, ptr %0, align 8, !noalias !836, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !836, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !836, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !836, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !836
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !836, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !836, !inline_history !828
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !837, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !837
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !838
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.at = load ptr, ptr %0, align 8, !noalias !838, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !838, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !838, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !838
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !838, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !825

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.bn = load ptr, ptr %0, align 8, !noalias !839, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !839, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !839, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !839, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !839
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !839, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !839, !inline_history !825
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves0_1__41desperately_resolve_module_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %1 = load ptr, ptr %0, align 8, !noalias !852, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !852, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !852, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !852, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !852
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !852, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !852, !inline_history !842
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.w = load ptr, ptr %0, align 8, !noalias !853, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !853, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !853, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !853, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !853
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !853, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !853, !inline_history !845
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !854, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !854
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !855
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.at = load ptr, ptr %0, align 8, !noalias !855, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !855, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !855, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !855
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !855, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !842

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.bn = load ptr, ptr %0, align 8, !noalias !856, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !856, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !856, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !856, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !856
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !856, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !856, !inline_history !842
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves1_1__29file_to_module_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %1 = load ptr, ptr %0, align 8, !noalias !869, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !869, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !869, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !869, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !869
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !869, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !869, !inline_history !859
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.w = load ptr, ptr %0, align 8, !noalias !870, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !870, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !870, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !870, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !870
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !870, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !870, !inline_history !862
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !871, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !871
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !872
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.at = load ptr, ptr %0, align 8, !noalias !872, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !872, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !872, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !872
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !872, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !859

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.bn = load ptr, ptr %0, align 8, !noalias !873, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !873, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !873, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !873, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !873
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !873, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !873, !inline_history !859
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves2_1__33stub_package_index_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %1 = load ptr, ptr %0, align 8, !noalias !886, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !886, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !886, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !886, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !886
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !886, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !886, !inline_history !876
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.w = load ptr, ptr %0, align 8, !noalias !887, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !887, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !887, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !887, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !887
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !887, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !887, !inline_history !879
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !888, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !888
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !889
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.at = load ptr, ptr %0, align 8, !noalias !889, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !889, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !889, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !889
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !889, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !876

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.bn = load ptr, ptr %0, align 8, !noalias !890, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !890, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !890, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !890, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !890
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !890, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !890, !inline_history !876
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves3_1__46absolute_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %1 = load ptr, ptr %0, align 8, !noalias !903, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !903, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !903, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !903, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !903
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !903, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !903, !inline_history !893
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.w = load ptr, ptr %0, align 8, !noalias !904, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !904, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !904, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !904, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !904
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !904, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !904, !inline_history !896
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !905, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !905
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !906
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.at = load ptr, ptr %0, align 8, !noalias !906, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !906, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !906, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !906
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !906, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !893

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.bn = load ptr, ptr %0, align 8, !noalias !907, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !907, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !907, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !907, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !907
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !907, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !907, !inline_history !893
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves4_1__46relative_desperate_search_paths_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %1 = load ptr, ptr %0, align 8, !noalias !920, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !920, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !920, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !920, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !920
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !920, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !920, !inline_history !910
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.w = load ptr, ptr %0, align 8, !noalias !921, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !921, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !921, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !921, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !921
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !921, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !921, !inline_history !913
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !922, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !922
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !923
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.at = load ptr, ptr %0, align 8, !noalias !923, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !923, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !923, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !923
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !923, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !910

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.bn = load ptr, ptr %0, align 8, !noalias !924, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !924, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !924, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !924, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !924
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !924, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !924, !inline_history !910
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves5_1__39dynamic_resolution_paths_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %1 = load ptr, ptr %0, align 8, !noalias !937, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !937, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !937, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !937, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !937
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !937, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !937, !inline_history !927
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.w = load ptr, ptr %0, align 8, !noalias !938, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !938, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !938, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !938, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !938
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !938, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !938, !inline_history !930
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !939, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !939
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !940
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.at = load ptr, ptr %0, align 8, !noalias !940, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !940, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !940, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !940
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !940, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !927

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.bn = load ptr, ptr %0, align 8, !noalias !941, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !941, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !941, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !941, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !941
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !941, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !941, !inline_history !927
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver7resolves_1__35resolve_module_query_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %1 = load ptr, ptr %0, align 8, !noalias !954, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !954, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !954, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !954, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !954
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !954, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !954, !inline_history !944
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.w = load ptr, ptr %0, align 8, !noalias !955, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !955, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !955, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !955, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !955
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !955, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !955, !inline_history !947
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !956, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !956
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !957
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.at = load ptr, ptr %0, align 8, !noalias !957, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !957, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !957, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !957
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !957, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !944

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.bn = load ptr, ptr %0, align 8, !noalias !958, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !958, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !958, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !958, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !958
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !958, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !958, !inline_history !944
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %1 = load ptr, ptr %0, align 8, !noalias !971, !nonnull !3, !align !13, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !971, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !971, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !971, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !3, !noalias !971
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !971, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !971, !inline_history !961
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !18

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.w = load ptr, ptr %0, align 8, !noalias !972, !nonnull !3, !align !13, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !972, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !972, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !972, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !3, !noalias !972
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !972, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !972, !inline_history !964
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.ap = load i64, ptr %i.ao, align 8, !range !20, !alias.scope !973, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !973
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !974
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.at = load ptr, ptr %0, align 8, !noalias !974, !nonnull !3, !align !13, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !974, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !974, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !3, !noalias !974
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !974, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !961

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsfDzkztWVnn_18ty_module_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.bn = load ptr, ptr %0, align 8, !noalias !975, !nonnull !3, !align !13, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !975, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !975, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !975, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !16, !invariant.load !3, !noalias !975
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !975, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !975, !inline_history !961
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathEEB11_(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathEBF_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathEBF_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !982
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathEBF_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfDzkztWVnn_18ty_module_resolver4path15SearchPathInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1I_8typeshed14PyVersionRangeEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1f_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1m_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1P_8typeshed14PyVersionRangeEEEB1P_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_0
