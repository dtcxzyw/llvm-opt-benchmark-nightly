Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNCNvCsgpMJJHpo27b_12typst_bundle11bundle_impl0B3_:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library8routines6ArenasECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(136) %i.cl)
          to label %bb.pa unwind label %bb.i

bb.pa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainEEECsgpMJJHpo27b_12typst_bundle.exit195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.cn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsgpMJJHpo27b_12typst_bundle.exit197 unwind label %bb.b, !inline_history !4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsgpMJJHpo27b_12typst_bundle.exit197: ; preds = %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.val66 = load i64, ptr %i.bpq, align 8, !noundef !19 ; 3 uses
  %i.bpr = icmp eq i64 %.val66, 0
  br i1 %i.bpr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECsgpMJJHpo27b_12typst_bundle.exit199, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i198

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i198: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsgpMJJHpo27b_12typst_bundle.exit197
  %i.bps = shl i64 %.val66, 5                     ; 2 uses
  %i.bpt = add i64 %i.bps, 32                     ; 2 uses
  %i.bpu = add i64 %.val66, 17
  %i.bpv = add i64 %i.bpu, %i.bpt                 ; 4 uses
  %i.bpw = icmp uge i64 %i.bpv, %i.bpt
  %i.bpx = icmp ult i64 %i.bpv, 9223372036854775793
  call void @llvm.assume(i1 %i.bpw)
  call void @llvm.assume(i1 %i.bpx)
  %i.bpy = icmp eq i64 %i.bpv, 0
  br i1 %i.bpy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECsgpMJJHpo27b_12typst_bundle.exit199, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECsgpMJJHpo27b_12typst_bundle.exit199.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3m_5inputs0_1__9MultiCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB5h_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB4E_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsgpMJJHpo27b_12typst_bundle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11091)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11091, !noalias !11092, !align !36, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !11091, !noalias !11092
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !49, !noalias !11093, !noundef !19
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs0_1__9MultiCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB5f_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB4C_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #45, !noalias !11093
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #45, !noalias !11093
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs0_1__9MultiCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB5f_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB4C_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !11093, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11093
  call void %i.f(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.a), !noalias !11093, !inline_history !11090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !11093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11093
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3m_5inputs1_1__9MultiCalluuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4G_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4G_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB5L_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsgpMJJHpo27b_12typst_bundle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11099)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11099, !noalias !11100, !align !36, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !11099, !noalias !11100
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !49, !noalias !11101, !noundef !19
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs1_1__9MultiCalluuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4E_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4E_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB5J_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #45, !noalias !11101
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #45, !noalias !11101
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs1_1__9MultiCalluuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4E_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4E_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB5J_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !11101, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11101
  call void %i.f(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.a), !noalias !11101, !inline_history !11098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !11101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11101
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3m_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4H_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4H_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB5M_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsgpMJJHpo27b_12typst_bundle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11107)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11107, !noalias !11108, !align !36, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !11107, !noalias !11108
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !49, !noalias !11109, !noundef !19
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4F_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4F_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB5K_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #45, !noalias !11109
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #45, !noalias !11109
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4F_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4F_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB5K_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !11109, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11109
  call void %i.f(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.a), !noalias !11109, !inline_history !11106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !11109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11109
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3m_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4A_13introspection12introspector1__12___ComemoCallNtNvNtB4A_6engine1__12___ComemoCallNtNvB6n_s_1__12___ComemoCallNtNvB6n_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4A_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB7V_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB8u_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11115, !noalias !11116, !align !36, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !11115, !noalias !11116
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !49, !noalias !11117, !noundef !19
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4y_13introspection12introspector1__12___ComemoCallNtNvNtB4y_6engine1__12___ComemoCallNtNvB6l_s_1__12___ComemoCallNtNvB6l_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4y_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB7T_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB8s_.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #45, !noalias !11117
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #45, !noalias !11117
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3k_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4y_13introspection12introspector1__12___ComemoCallNtNvNtB4y_6engine1__12___ComemoCallNtNvB6l_s_1__12___ComemoCallNtNvB6l_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4y_4diag16SourceDiagnosticEEEEE5force0E0INtNtNtB7T_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB8s_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !11117, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11117
  call void %i.f(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.a), !noalias !11117, !inline_history !11114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !11117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11117
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsgpMJJHpo27b_12typst_bundle6bundle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [112 x i8], align 16              ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  %i.e = alloca [128 x i8], align 16              ; 12 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [88 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 11 uses
  %i.p = alloca [72 x i8], align 8                ; 11 uses
  %i.q = alloca [72 x i8], align 8                ; 9 uses
  %i.r = alloca [72 x i8], align 8                ; 11 uses
  %i.s = alloca [72 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [80 x i8], align 8                ; 4 uses
  %i.v = alloca [72 x i8], align 8                ; 10 uses
  %i.w = alloca [2 x i8], align 2                 ; 4 uses
  %i.x = alloca [72 x i8], align 8                ; 9 uses
  %i.y = alloca [72 x i8], align 8                ; 10 uses
  %i.z = alloca [72 x i8], align 8                ; 9 uses
  %i.aa = alloca [80 x i8], align 16              ; 4 uses
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [16 x i8], align 16              ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [72 x i8], align 8               ; 15 uses
  %i.aj = alloca [216 x i8], align 8              ; 27 uses
  %i.ak = alloca [208 x i8], align 8              ; 34 uses
  %i.al = alloca [40 x i8], align 8               ; 2 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [40 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ap = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.ao, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 6, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !19, !align !63, !noundef !19
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.av = load <2 x ptr>, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !19 ; 2 uses
  %.not4 = icmp eq ptr %i.az, null
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bb = load i16, ptr %i.ba, align 8, !noundef !19
  %.not5 = icmp eq i16 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp eq i64 %i.bd, 0
  %or.cond = select i1 %.not5, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bf = atomicrmw add ptr @_RNvNtCsloFShupyl5J_6comemo10accelerate2ID, i64 1 seq_cst, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.59.0.copyload = load ptr, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.612.0.copyload = load i64, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.612.0 = phi i64 [ %i.bf, %bb.f ], [ %.sroa.612.0.copyload, %bb.g ]
  %.sroa.6.0 = phi i64 [ undef, %bb.f ], [ %.sroa.6.0.copyload, %bb.g ]
  %.sroa.59.0 = phi ptr [ null, %bb.f ], [ %.sroa.59.0.copyload, %bb.g ]
  %.sroa.07.0 = phi ptr [ %i.ay, %bb.f ], [ %i.az, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.an, i64 40, i1 false), !noalias !11549
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !11548
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !11550
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !11551
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 120 ; 2 uses
  %.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 4 uses
  store <2 x ptr> %i.av, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !11552
  %.sroa.5.0..sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 136 ; 4 uses
  store ptr %i.ax, ptr %.sroa.5.0..sroa.7.0..sroa_idx.i.sroa_idx, align 8, !noalias !11552
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 144 ; 2 uses
  store ptr %.sroa.07.0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !11553
  %.sroa.59.0..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 152 ; 4 uses
  store ptr %.sroa.59.0, ptr %.sroa.59.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !11553
  %.sroa.6.0..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 160 ; 3 uses
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !11553
  %.sroa.612.0..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 168 ; 2 uses
  store i64 %.sroa.612.0, ptr %.sroa.612.0..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !11553
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store ptr %2, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !11548
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 184 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !11554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11548
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 120 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !11555, !noalias !11548
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !11555, !noalias !11548
  store ptr null, ptr %i.aj, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr null, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  store ptr null, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 3 uses
  store ptr null, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 3 uses
  store ptr null, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 136 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 144 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.412.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false), !noalias !11548
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.614.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  %.sroa.715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 2 uses
  store i64 0, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !alias.scope !11555, !noalias !11548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11559
  store i64 8317987319222330741, ptr %i.ai, align 8, !noalias !11559
  %.sroa.3.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !noalias !11559
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11559
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !11559
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11560)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !11559
  invoke fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtCsdaEETE4DqmE_13typst_library7LibraryENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ai) #50
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !11561

.noexc.i:                                         ; preds = %bb.h
  invoke fastcc void @_RINvXs4_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB6_10RawContentNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !noalias !11561

.noexc5.i:                                        ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11563)
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !11564, !noalias !11565
  %.pre5.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !11564, !noalias !11565 ; 3 uses
  %.pre6.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !11564, !noalias !11565
  %.promoted.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11566, !noalias !11567 ; 2 uses
  %.promoted26.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !11566, !noalias !11567 ; 2 uses
  %.promoted35.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11566, !noalias !11567 ; 2 uses
  %.promoted44.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !alias.scope !11566, !noalias !11567 ; 2 uses
  br label %tailrecurse.i.i.i.i.i

tailrecurse.i.i.i.i.i:                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %.noexc5.i
  %storemerge.i.i.i.lcssa159184.i.i = phi i64 [ %.pre5.i.i.i.i.i, %.noexc5.i ], [ %storemerge.i.i.i.lcssa159185.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.lcssa144157.lcssa178.i.i = phi i64 [ %.promoted26.i.i.i.i, %.noexc5.i ], [ %.lcssa144157.lcssa179.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.lcssa154173.i.i = phi i64 [ %.promoted44.i.i.i.i, %.noexc5.i ], [ %.lcssa154174.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.lcssa153168.i.i = phi i64 [ %.promoted35.i.i.i.i, %.noexc5.i ], [ %.lcssa153169.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.lcssa152163.i.i = phi i64 [ %.promoted.i.i.i.i, %.noexc5.i ], [ %.lcssa152164.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.promoted754.i.i.i.i = phi i64 [ %.pre5.i.i.i.i.i, %.noexc5.i ], [ %.promoted755.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %.promoted1649.i.i.i.i = phi i64 [ %.promoted44.i.i.i.i, %.noexc5.i ], [ %.promoted1650.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted1540.i.i.i.i = phi i64 [ %.promoted35.i.i.i.i, %.noexc5.i ], [ %.promoted1541.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 4 uses
  %.promoted1031.i.i.i.i = phi i64 [ %.promoted26.i.i.i.i, %.noexc5.i ], [ %.promoted1032.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted922.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %.noexc5.i ], [ %.promoted923.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.bh = phi i64 [ %.pre5.i.i.i.i.i, %.noexc5.i ], [ %i.ju, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 5 uses
  %i.bi = phi i64 [ %.pre6.i.i.i.i.i, %.noexc5.i ], [ %i.jv, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %i.bj = phi i64 [ %.pre.i.i.i.i.i, %.noexc5.i ], [ %i.iv, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.tr.i.i.i.i.i = phi ptr [ %.sroa.10.0..sroa_idx.i, %.noexc5.i ], [ %i.is, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.bk = load ptr, ptr %.tr.i.i.i.i.i, align 8, !noalias !11568, !nonnull !19, !align !63, !noundef !19 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !11568, !noundef !19 ; 4 uses
  %i.bn = add i64 %i.bj, 8
  %i.bo = shl i64 %i.bh, 3                        ; 2 uses
  %i.bp = and i64 %i.bo, 56
  %i.bq = shl i64 %i.bm, %i.bp
  %i.br = or i64 %i.bq, %i.bi                     ; 3 uses
  %i.bs = icmp ugt i64 %i.bh, 8
  br i1 %i.bs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %tailrecurse.i.i.i.i.i
  %i.bt = xor i64 %i.br, %.promoted922.i.i.i.i    ; 3 uses
  %i.bu = add i64 %.promoted1031.i.i.i.i, %.promoted1540.i.i.i.i ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1540.i.i.i.i, i64 %.promoted1540.i.i.i.i, i64 13)
  %i.bw = xor i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = add i64 %i.bt, %.promoted1649.i.i.i.i   ; 2 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 16)
  %i.ca = xor i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = add i64 %i.ca, %i.bx                    ; 2 uses
  %i.cc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 21)
  %i.cd = xor i64 %i.cc, %i.cb                    ; 2 uses
  %i.ce = add i64 %i.by, %i.bw                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 17)
  %i.cg = xor i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32) ; 2 uses
  %i.ci = xor i64 %i.cb, %i.br                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bh, 0
  %i.cj = sub nuw nsw i64 64, %i.bo
  %i.ck = lshr i64 %i.bm, %i.cj
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 0, i64 %i.ck
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

bb.j:                                             ; preds = %tailrecurse.i.i.i.i.i
  %i.cl = add i64 %i.bh, 8                        ; 3 uses
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.lcssa159183.i.i = phi i64 [ %storemerge.i.i.i.lcssa159184.i.i, %bb.i ], [ %i.cl, %bb.j ]
  %.lcssa144157.lcssa181.i.i = phi i64 [ %i.ci, %bb.i ], [ %.lcssa144157.lcssa178.i.i, %bb.j ] ; 2 uses
  %.lcssa154176.i.i = phi i64 [ %i.ch, %bb.i ], [ %.lcssa154173.i.i, %bb.j ] ; 2 uses
  %.lcssa153171.i.i = phi i64 [ %i.cg, %bb.i ], [ %.lcssa153168.i.i, %bb.j ] ; 2 uses
  %.lcssa152166.i.i = phi i64 [ %i.cd, %bb.i ], [ %.lcssa152163.i.i, %bb.j ] ; 2 uses
  %.promoted757.i.i.i.i = phi i64 [ %.promoted754.i.i.i.i, %bb.i ], [ %i.cl, %bb.j ] ; 2 uses
  %.promoted1652.i.i.i.i = phi i64 [ %i.ch, %bb.i ], [ %.promoted1649.i.i.i.i, %bb.j ] ; 3 uses
  %.promoted1543.i.i.i.i = phi i64 [ %i.cg, %bb.i ], [ %.promoted1540.i.i.i.i, %bb.j ] ; 3 uses
  %.promoted1034.i.i.i.i = phi i64 [ %i.ci, %bb.i ], [ %.promoted1031.i.i.i.i, %bb.j ] ; 3 uses
  %.promoted925.i.i.i.i = phi i64 [ %i.cd, %bb.i ], [ %.promoted922.i.i.i.i, %bb.j ] ; 3 uses
  %i.cm = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.i ], [ %i.br, %bb.j ] ; 2 uses
  %i.cn = phi i64 [ %i.bh, %bb.i ], [ %i.cl, %bb.j ]
  %.idx.i.i.i.i.i.i = shl i64 %i.bm, 7            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i.i.i.i
  %i.cp = icmp eq i64 %i.bm, 0
  br i1 %i.cp, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %.lcssa144156.i.i = phi i64 [ %.lcssa144157.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.lcssa144157.lcssa181.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.cq = phi i64 [ %i.ic, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.lcssa154176.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.cr = phi i64 [ %i.id, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.lcssa153171.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.cs = phi i64 [ %i.ie, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.lcssa152166.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted1648.i.i.i.i = phi i64 [ %.promoted1645.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1652.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted1539.i.i.i.i = phi i64 [ %.promoted1536.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1543.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted1030.i.i.i.i = phi i64 [ %.promoted1027.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1034.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %.promoted921.i.i.i.i = phi i64 [ %.promoted918.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted925.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.ct = phi i64 [ %i.if, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1652.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.cu = phi i64 [ %i.ig, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1543.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 5 uses
  %.lcssa211.i.i.i.i = phi i64 [ %.lcssa212.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted1034.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.cv = phi i64 [ %i.ih, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted925.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 3 uses
  %i.cw = phi i64 [ %i.ii, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %i.cm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ]
  %i.cx = phi i64 [ %storemerge.i.i.i.i.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %.promoted757.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.0.03.i.i.i.i.i.i = phi ptr [ %i.cy, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ], [ %i.bk, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.cz = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !11569, !nonnull !19, !noundef !19
  %i.da = invoke noundef i128 %i.cz(ptr noundef nonnull align 16 %.sroa.0.03.i.i.i.i.i.i)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !11561, !inline_history !11152 ; 2 uses

.noexc6.i:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %i.db = icmp eq i128 %i.da, 0
  br i1 %i.db, label %bb.k, label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc6.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i, i64 16
  %i.dd = invoke fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dc)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !11561 ; 2 uses

.noexc7.i:                                        ; preds = %bb.k
  %i.de = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !11569, !nonnull !19, !noundef !19
  invoke void %i.de(ptr noundef nonnull align 16 %.sroa.0.03.i.i.i.i.i.i, i128 noundef %i.dd)
          to label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !11561, !inline_history !11152

_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %.noexc7.i, %.noexc6.i
  %.sroa.0.0.i.i.i1.i.i.i.i.i = phi i128 [ %i.da, %.noexc6.i ], [ %i.dd, %.noexc7.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11570
  store i128 %.sroa.0.0.i.i.i1.i.i.i.i.i, ptr %i.af, align 16, !noalias !11570
  %i.df = icmp eq i64 %i.cx, 0
  br i1 %i.df, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.dg = trunc i128 %.sroa.0.0.i.i.i1.i.i.i.i.i to i64
  %i.dh = sub i64 8, %i.cx                        ; 4 uses
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dh, i64 16) ; 2 uses
  %i.di = icmp ugt i64 %i.dh, 3                   ; 3 uses
  %i.dj = and i64 %i.dg, 4294967295
  %.sroa.03.0.i.i.i.i.i.i = select i1 %i.di, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.di, i64 %i.dj, i64 0 ; 2 uses
  %i.dk = or disjoint i64 %.sroa.03.0.i.i.i.i.i.i, 1
  %i.dl = icmp samesign ult i64 %i.dk, %..i.i.i.i.i.i
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.di, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !11571, !noalias !11572
  %i.dm = zext i16 %.sroa.015.0.copyload.i.i.i.i.i.i to i64
  %i.dn = shl nuw nsw i64 %.sroa.03.0.i.i.i.i.i.i, 3
  %i.do = shl nuw nsw i64 %i.dm, %i.dn
  %i.dp = or i64 %i.do, %.sroa.0.0.i.i.i.i.i.i
  %i.dq = or disjoint i64 %.sroa.03.0.i.i.i.i.i.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.1.i.i.i.i.i.i = phi i64 [ %i.dq, %bb.m ], [ %.sroa.03.0.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.m ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.dr = icmp samesign ult i64 %.sroa.03.1.i.i.i.i.i.i, %..i.i.i.i.i.i
  br i1 %i.dr, label %bb.o, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.03.1.i.i.i.i.i.i
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !11571, !noalias !11572, !noundef !19
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %.sroa.03.1.i.i.i.i.i.i, 3
  %i.dw = shl nuw nsw i64 %i.du, %i.dv
  %i.dx = or i64 %i.dw, %.sroa.0.1.i.i.i.i.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.2.i.i.i.i.i.i = phi i64 [ %i.dx, %bb.o ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.n ]
  %i.dy = shl i64 %i.cx, 3
  %i.dz = and i64 %i.dy, 56
  %i.ea = shl i64 %.sroa.0.2.i.i.i.i.i.i, %i.dz
  %i.eb = or i64 %i.ea, %i.cw                     ; 3 uses
  %i.ec = icmp ugt i64 %i.dh, 16
  br i1 %i.ec, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %.lcssa144155.i.i = phi i64 [ %.lcssa144156.i.i, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fc, %bb.q ]
  %i.ed = phi i64 [ %i.cq, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fb, %bb.q ]
  %i.ee = phi i64 [ %i.cr, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fa, %bb.q ]
  %i.ef = phi i64 [ %i.cs, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ex, %bb.q ]
  %.promoted1647.i.i.i.i = phi i64 [ %.promoted1648.i.i.i.i, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fb, %bb.q ]
  %.promoted1538.i.i.i.i = phi i64 [ %.promoted1539.i.i.i.i, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fa, %bb.q ]
  %.promoted1029.i.i.i.i = phi i64 [ %.promoted1030.i.i.i.i, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fc, %bb.q ]
  %.promoted920.i.i.i.i = phi i64 [ %.promoted921.i.i.i.i, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ex, %bb.q ]
  %i.eg = phi i64 [ %i.ct, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fb, %bb.q ] ; 2 uses
  %i.eh = phi i64 [ %i.cu, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fa, %bb.q ] ; 4 uses
  %.lcssa214.i.i.i.i = phi i64 [ %.lcssa211.i.i.i.i, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.fc, %bb.q ] ; 2 uses
  %i.ei = phi i64 [ %i.cv, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.ex, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ], [ %i.dh, %bb.q ] ; 8 uses
  %i.ej = sub nuw nsw i64 16, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %i.ek = and i64 %i.ej, 7                        ; 5 uses
  %i.el = and i64 %i.ej, 24                       ; 4 uses
  %i.em = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, %i.el
  br i1 %i.em, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.q:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i
  %i.en = xor i64 %i.eb, %i.cv                    ; 3 uses
  %i.eo = add i64 %.lcssa211.i.i.i.i, %i.cu       ; 3 uses
  %i.ep = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 13)
  %i.eq = xor i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = tail call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 32)
  %i.es = add i64 %i.en, %i.ct                    ; 2 uses
  %i.et = tail call noundef i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 16)
  %i.eu = xor i64 %i.es, %i.et                    ; 3 uses
  %i.ev = add i64 %i.eu, %i.er                    ; 2 uses
  %i.ew = tail call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 21)
  %i.ex = xor i64 %i.ew, %i.ev                    ; 3 uses
  %i.ey = add i64 %i.es, %i.eq                    ; 3 uses
  %i.ez = tail call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 17)
  %i.fa = xor i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 32) ; 3 uses
  %i.fc = xor i64 %i.ev, %i.eb                    ; 3 uses
  br label %bb.p

bb.r:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i.i.i.i.i
  %i.fd = add i64 %i.cx, 16
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1.a, %.lr.ph.i.i.i.i.i.2.a, %.lr.ph.i.i.i.i.i.3, %bb.p
  %.lcssa144158.i.i = phi i64 [ %.lcssa144155.i.i, %bb.p ], [ %26, %.lr.ph.i.i.i.i.i ], [ %i.gp, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hi, %.lr.ph.i.i.i.i.i.2.a ], [ %i.ib, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %4 = phi i64 [ %i.ed, %bb.p ], [ %25, %.lr.ph.i.i.i.i.i ], [ %i.go, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hh, %.lr.ph.i.i.i.i.i.2.a ], [ %i.ia, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %5 = phi i64 [ %i.ee, %bb.p ], [ %24, %.lr.ph.i.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hg, %.lr.ph.i.i.i.i.i.2.a ], [ %i.hz, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %6 = phi i64 [ %i.ef, %bb.p ], [ %21, %.lr.ph.i.i.i.i.i ], [ %i.gk, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hd, %.lr.ph.i.i.i.i.i.2.a ], [ %i.hw, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.promoted1646.i.i.i.i = phi i64 [ %.promoted1647.i.i.i.i, %bb.p ], [ %25, %.lr.ph.i.i.i.i.i ], [ %i.go, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hh, %.lr.ph.i.i.i.i.i.2.a ], [ %i.ia, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.promoted1537.i.i.i.i = phi i64 [ %.promoted1538.i.i.i.i, %bb.p ], [ %24, %.lr.ph.i.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hg, %.lr.ph.i.i.i.i.i.2.a ], [ %i.hz, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.promoted1028.i.i.i.i = phi i64 [ %.promoted1029.i.i.i.i, %bb.p ], [ %26, %.lr.ph.i.i.i.i.i ], [ %i.gp, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hi, %.lr.ph.i.i.i.i.i.2.a ], [ %i.ib, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.promoted919.i.i.i.i = phi i64 [ %.promoted920.i.i.i.i, %bb.p ], [ %21, %.lr.ph.i.i.i.i.i ], [ %i.gk, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hd, %.lr.ph.i.i.i.i.i.2.a ], [ %i.hw, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %7 = phi i64 [ %i.eg, %bb.p ], [ %25, %.lr.ph.i.i.i.i.i ], [ %i.go, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hh, %.lr.ph.i.i.i.i.i.2.a ], [ %i.ia, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %8 = phi i64 [ %i.eh, %bb.p ], [ %24, %.lr.ph.i.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hg, %.lr.ph.i.i.i.i.i.2.a ], [ %i.hz, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.lcssa213.i.i.i.i = phi i64 [ %.lcssa214.i.i.i.i, %bb.p ], [ %26, %.lr.ph.i.i.i.i.i ], [ %i.gp, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hi, %.lr.ph.i.i.i.i.i.2.a ], [ %i.ib, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %9 = phi i64 [ %i.ei, %bb.p ], [ %21, %.lr.ph.i.i.i.i.i ], [ %i.gk, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hd, %.lr.ph.i.i.i.i.i.2.a ], [ %i.hw, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.p ], [ %27, %.lr.ph.i.i.i.i.i ], [ %i.gq, %.lr.ph.i.i.i.i.i.1.a ], [ %i.hj, %.lr.ph.i.i.i.i.i.2.a ], [ %29, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %i.fe = icmp samesign ugt i64 %i.ek, 3
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.1.lcssa.i.i.i.i.i
  %.sroa.014.0.copyload.i16.i.i.i.i.i = load i32, ptr %i.ff, align 1, !alias.scope !11573, !noalias !11572
  %i.fg = zext i32 %.sroa.014.0.copyload.i16.i.i.i.i.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i
  %.sroa.03.0.i10.i.i.i.i.i = phi i64 [ 4, %bb.s ], [ 0, %._crit_edge.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i11.i.i.i.i.i = phi i64 [ %i.fg, %bb.s ], [ 0, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.fh = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i, 1
  %i.fi = icmp samesign ult i64 %i.fh, %i.ek
  br i1 %i.fi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fj = getelementptr i8, ptr %i.af, i64 %.sroa.0.1.lcssa.i.i.i.i.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 %.sroa.03.0.i10.i.i.i.i.i
  %.sroa.015.0.copyload.i15.i.i.i.i.i = load i16, ptr %i.fk, align 1, !alias.scope !11573, !noalias !11572
  %i.fl = zext i16 %.sroa.015.0.copyload.i15.i.i.i.i.i to i64
  %i.fm = shl nuw nsw i64 %.sroa.03.0.i10.i.i.i.i.i, 3
  %i.fn = shl nuw nsw i64 %i.fl, %i.fm
  %i.fo = or i64 %i.fn, %.sroa.0.0.i11.i.i.i.i.i
  %i.fp = or disjoint i64 %.sroa.03.0.i10.i.i.i.i.i, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.03.1.i12.i.i.i.i.i = phi i64 [ %i.fp, %bb.u ], [ %.sroa.03.0.i10.i.i.i.i.i, %bb.t ] ; 3 uses
  %.sroa.0.1.i13.i.i.i.i.i = phi i64 [ %i.fo, %bb.u ], [ %.sroa.0.0.i11.i.i.i.i.i, %bb.t ] ; 2 uses
  %i.fq = icmp samesign ult i64 %.sroa.03.1.i12.i.i.i.i.i, %i.ek
  br i1 %i.fq, label %bb.w, label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.fr = add nuw nsw i64 %.sroa.03.1.i12.i.i.i.i.i, %.sroa.0.1.lcssa.i.i.i.i.i ; 2 uses
  %i.fs = icmp samesign ult i64 %i.fr, 16
  tail call void @llvm.assume(i1 %i.fs), !noalias !11574
  %i.ft = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !11573, !noalias !11572, !noundef !19
  %i.fv = zext i8 %i.fu to i64
  %i.fw = shl nuw nsw i64 %.sroa.03.1.i12.i.i.i.i.i, 3
  %i.fx = shl nuw nsw i64 %i.fv, %i.fw
  %i.fy = or i64 %i.fx, %.sroa.0.1.i13.i.i.i.i.i
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p
  %10 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i = load i64, ptr %10, align 1, !alias.scope !11575, !noalias !11572 ; 2 uses
  %11 = xor i64 %.sroa.07.0.copyload.i.i.i.i.i, %i.ei ; 3 uses
  %12 = add i64 %.lcssa214.i.i.i.i, %i.eh         ; 3 uses
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 13)
  %14 = xor i64 %12, %13                          ; 3 uses
  %15 = tail call noundef i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 32)
  %16 = add i64 %11, %i.eg                        ; 2 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 16)
  %18 = xor i64 %16, %17                          ; 3 uses
  %19 = add i64 %18, %15                          ; 2 uses
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 21)
  %21 = xor i64 %20, %19                          ; 4 uses
  %22 = add i64 %16, %14                          ; 3 uses
  %23 = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 17)
  %24 = xor i64 %22, %23                          ; 6 uses
  %25 = tail call noundef i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 32) ; 4 uses
  %26 = xor i64 %19, %.sroa.07.0.copyload.i.i.i.i.i ; 4 uses
  %27 = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 8   ; 3 uses
  %28 = icmp samesign ult i64 %27, %i.el
  br i1 %28, label %.lr.ph.i.i.i.i.i.1.a, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.1.a:                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.af, i64 %27
  %.sroa.07.0.copyload.i.i.i.i.i.1.a = load i64, ptr %i.fz, align 1, !alias.scope !11575, !noalias !11572 ; 2 uses
  %i.ga = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.1.a, %21 ; 3 uses
  %i.gb = add i64 %26, %24                        ; 3 uses
  %i.gc = tail call noundef i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 13)
  %i.gd = xor i64 %i.gb, %i.gc                    ; 3 uses
  %i.ge = tail call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 32)
  %i.gf = add i64 %i.ga, %25                      ; 2 uses
  %i.gg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 16)
  %i.gh = xor i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = add i64 %i.gh, %i.ge                    ; 2 uses
  %i.gj = tail call noundef i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 21)
  %i.gk = xor i64 %i.gj, %i.gi                    ; 4 uses
  %i.gl = add i64 %i.gf, %i.gd                    ; 3 uses
  %i.gm = tail call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 17)
  %i.gn = xor i64 %i.gl, %i.gm                    ; 6 uses
  %i.go = tail call noundef i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 32) ; 4 uses
  %i.gp = xor i64 %i.gi, %.sroa.07.0.copyload.i.i.i.i.i.1.a ; 4 uses
  %i.gq = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 16 ; 3 uses
  %i.gr = icmp samesign ult i64 %i.gq, %i.el
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.2.a, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.2.a:                             ; preds = %.lr.ph.i.i.i.i.i.1.a
  %i.gs = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.gq
  %.sroa.07.0.copyload.i.i.i.i.i.2.a = load i64, ptr %i.gs, align 1, !alias.scope !11575, !noalias !11572 ; 2 uses
  %i.gt = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.2.a, %i.gk ; 3 uses
  %i.gu = add i64 %i.gp, %i.gn                    ; 3 uses
  %i.gv = tail call noundef i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 13)
  %i.gw = xor i64 %i.gu, %i.gv                    ; 3 uses
  %i.gx = tail call noundef i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gu, i64 32)
  %i.gy = add i64 %i.gt, %i.go                    ; 2 uses
  %i.gz = tail call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 16)
  %i.ha = xor i64 %i.gy, %i.gz                    ; 3 uses
  %i.hb = add i64 %i.ha, %i.gx                    ; 2 uses
  %i.hc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 21)
  %i.hd = xor i64 %i.hc, %i.hb                    ; 4 uses
  %i.he = add i64 %i.gy, %i.gw                    ; 3 uses
  %i.hf = tail call noundef i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 17)
  %i.hg = xor i64 %i.he, %i.hf                    ; 6 uses
  %i.hh = tail call noundef i64 @llvm.fshl.i64(i64 %i.he, i64 %i.he, i64 32) ; 4 uses
  %i.hi = xor i64 %i.hb, %.sroa.07.0.copyload.i.i.i.i.i.2.a ; 4 uses
  %i.hj = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 24 ; 3 uses
  %i.hk = icmp samesign ult i64 %i.hj, %i.el
  br i1 %i.hk, label %.lr.ph.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2.a
  %i.hl = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.hj
  %.sroa.07.0.copyload.i.i.i.i.i.3 = load i64, ptr %i.hl, align 1, !alias.scope !11575, !noalias !11572 ; 2 uses
  %i.hm = xor i64 %.sroa.07.0.copyload.i.i.i.i.i.3, %i.hd ; 3 uses
  %i.hn = add i64 %i.hi, %i.hg                    ; 3 uses
  %i.ho = tail call noundef i64 @llvm.fshl.i64(i64 %i.hg, i64 %i.hg, i64 13)
  %i.hp = xor i64 %i.hn, %i.ho                    ; 3 uses
  %i.hq = tail call noundef i64 @llvm.fshl.i64(i64 %i.hn, i64 %i.hn, i64 32)
  %i.hr = add i64 %i.hm, %i.hh                    ; 2 uses
  %i.hs = tail call noundef i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 16)
  %i.ht = xor i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = add i64 %i.ht, %i.hq                    ; 2 uses
  %i.hv = tail call noundef i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 21)
  %i.hw = xor i64 %i.hv, %i.hu                    ; 3 uses
  %i.hx = add i64 %i.hr, %i.hp                    ; 3 uses
  %i.hy = tail call noundef i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 17)
  %i.hz = xor i64 %i.hx, %i.hy                    ; 3 uses
  %i.ia = tail call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 32) ; 3 uses
  %i.ib = xor i64 %i.hu, %.sroa.07.0.copyload.i.i.i.i.i.3 ; 3 uses
  %29 = or disjoint i64 %.sroa.0.0.i.i.i.i.i, 32
  br label %._crit_edge.i.i.i.i.i

_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.r
  %.lcssa144157.i.i = phi i64 [ %.lcssa144156.i.i, %bb.r ], [ %.lcssa144158.i.i, %bb.w ], [ %.lcssa144158.i.i, %bb.v ] ; 2 uses
  %i.ic = phi i64 [ %i.cq, %bb.r ], [ %4, %bb.w ], [ %4, %bb.v ] ; 2 uses
  %i.id = phi i64 [ %i.cr, %bb.r ], [ %5, %bb.w ], [ %5, %bb.v ] ; 2 uses
  %i.ie = phi i64 [ %i.cs, %bb.r ], [ %6, %bb.w ], [ %6, %bb.v ] ; 2 uses
  %.promoted1645.i.i.i.i = phi i64 [ %.promoted1648.i.i.i.i, %bb.r ], [ %.promoted1646.i.i.i.i, %bb.w ], [ %.promoted1646.i.i.i.i, %bb.v ] ; 2 uses
  %.promoted1536.i.i.i.i = phi i64 [ %.promoted1539.i.i.i.i, %bb.r ], [ %.promoted1537.i.i.i.i, %bb.w ], [ %.promoted1537.i.i.i.i, %bb.v ] ; 2 uses
  %.promoted1027.i.i.i.i = phi i64 [ %.promoted1030.i.i.i.i, %bb.r ], [ %.promoted1028.i.i.i.i, %bb.w ], [ %.promoted1028.i.i.i.i, %bb.v ] ; 2 uses
  %.promoted918.i.i.i.i = phi i64 [ %.promoted921.i.i.i.i, %bb.r ], [ %.promoted919.i.i.i.i, %bb.w ], [ %.promoted919.i.i.i.i, %bb.v ] ; 2 uses
  %i.if = phi i64 [ %i.ct, %bb.r ], [ %7, %bb.w ], [ %7, %bb.v ]
  %i.ig = phi i64 [ %i.cu, %bb.r ], [ %8, %bb.w ], [ %8, %bb.v ]
  %.lcssa212.i.i.i.i = phi i64 [ %.lcssa211.i.i.i.i, %bb.r ], [ %.lcssa213.i.i.i.i, %bb.w ], [ %.lcssa213.i.i.i.i, %bb.v ]
  %i.ih = phi i64 [ %i.cv, %bb.r ], [ %9, %bb.w ], [ %9, %bb.v ]
  %i.ii = phi i64 [ %i.eb, %bb.r ], [ %i.fy, %bb.w ], [ %.sroa.0.1.i13.i.i.i.i.i, %bb.v ] ; 2 uses
  %storemerge.i.i.i.i.i = phi i64 [ %i.fd, %bb.r ], [ %i.ek, %bb.w ], [ %i.ek, %bb.v ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11570
  %i.ij = icmp eq ptr %i.cy, %i.co
  br i1 %i.ij, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i: ; preds = %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.ik = add i64 %i.bj, 24
  %i.il = add i64 %.idx.i.i.i.i.i.i, -128
  %i.im = lshr exact i64 %i.il, 3
  %i.in = add i64 %i.ik, %i.im
  br label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %storemerge.i.i.i.lcssa159182.i.i = phi i64 [ %storemerge.i.i.i.lcssa159183.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %.lcssa144157.lcssa180.i.i = phi i64 [ %.lcssa144157.lcssa181.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.lcssa144157.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %.lcssa154175.i.i = phi i64 [ %.lcssa154176.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.ic, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %.lcssa153170.i.i = phi i64 [ %.lcssa153171.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.id, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %.lcssa152165.i.i = phi i64 [ %.lcssa152166.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.ie, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %.promoted756.i.i.i.i = phi i64 [ %.promoted757.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %.promoted1651.i.i.i.i = phi i64 [ %.promoted1652.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted1645.i.i.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ] ; 2 uses
  %.promoted1542.i.i.i.i = phi i64 [ %.promoted1543.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted1536.i.i.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ] ; 4 uses
  %.promoted1033.i.i.i.i = phi i64 [ %.promoted1034.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted1027.i.i.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ] ; 2 uses
  %.promoted924.i.i.i.i = phi i64 [ %.promoted925.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.promoted918.i.i.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ] ; 2 uses
  %i.io = phi i64 [ %i.cm, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.ii, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %i.ip = phi i64 [ %i.cn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ] ; 5 uses
  %i.iq = phi i64 [ %i.bn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.in, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.loopexit.i.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !11568, !align !36, !noundef !19 ; 2 uses
  %i.it = icmp ne ptr %i.is, null                 ; 2 uses
  %i.iu = zext i1 %i.it to i64                    ; 2 uses
  %i.iv = add i64 %i.iq, 8                        ; 2 uses
  %i.iw = shl i64 %i.ip, 3                        ; 2 uses
  %i.ix = and i64 %i.iw, 56
  %i.iy = shl nuw nsw i64 %i.iu, %i.ix
  %i.iz = or i64 %i.iy, %i.io                     ; 3 uses
  %i.ja = icmp ugt i64 %i.ip, 8
  br i1 %i.ja, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %i.jb = xor i64 %i.iz, %.promoted924.i.i.i.i    ; 3 uses
  %i.jc = add i64 %.promoted1033.i.i.i.i, %.promoted1542.i.i.i.i ; 3 uses
  %i.jd = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1542.i.i.i.i, i64 %.promoted1542.i.i.i.i, i64 13)
  %i.je = xor i64 %i.jc, %i.jd                    ; 3 uses
  %i.jf = tail call noundef i64 @llvm.fshl.i64(i64 %i.jc, i64 %i.jc, i64 32)
  %i.jg = add i64 %i.jb, %.promoted1651.i.i.i.i   ; 2 uses
  %i.jh = tail call noundef i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 16)
  %i.ji = xor i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = add i64 %i.ji, %i.jf                    ; 2 uses
  %i.jk = tail call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 21)
  %i.jl = xor i64 %i.jk, %i.jj                    ; 2 uses
  %i.jm = add i64 %i.jg, %i.je                    ; 3 uses
  %i.jn = tail call noundef i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 17)
  %i.jo = xor i64 %i.jm, %i.jn                    ; 2 uses
  %i.jp = tail call noundef i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 32) ; 2 uses
  %i.jq = xor i64 %i.jj, %i.iz                    ; 2 uses
  %.not.i.i.i2.i.i.i.i.i = icmp eq i64 %i.ip, 0
  %i.jr = sub nuw nsw i64 64, %i.iw
  %i.js = lshr i64 %i.iu, %i.jr
  %.sroa.0.0.i.i.i3.i.i.i.i.i = select i1 %.not.i.i.i2.i.i.i.i.i, i64 0, i64 %i.js
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

bb.y:                                             ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %i.jt = add i64 %i.ip, 8                        ; 3 uses
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %storemerge.i.i.i.lcssa159185.i.i = phi i64 [ %storemerge.i.i.i.lcssa159182.i.i, %bb.x ], [ %i.jt, %bb.y ] ; 2 uses
  %.lcssa144157.lcssa179.i.i = phi i64 [ %i.jq, %bb.x ], [ %.lcssa144157.lcssa180.i.i, %bb.y ] ; 2 uses
  %.lcssa154174.i.i = phi i64 [ %i.jp, %bb.x ], [ %.lcssa154175.i.i, %bb.y ] ; 2 uses
  %.lcssa153169.i.i = phi i64 [ %i.jo, %bb.x ], [ %.lcssa153170.i.i, %bb.y ] ; 2 uses
  %.lcssa152164.i.i = phi i64 [ %i.jl, %bb.x ], [ %.lcssa152165.i.i, %bb.y ] ; 2 uses
  %.promoted755.i.i.i.i = phi i64 [ %.promoted756.i.i.i.i, %bb.x ], [ %i.jt, %bb.y ]
  %.promoted1650.i.i.i.i = phi i64 [ %i.jp, %bb.x ], [ %.promoted1651.i.i.i.i, %bb.y ]
  %.promoted1541.i.i.i.i = phi i64 [ %i.jo, %bb.x ], [ %.promoted1542.i.i.i.i, %bb.y ]
  %.promoted1032.i.i.i.i = phi i64 [ %i.jq, %bb.x ], [ %.promoted1033.i.i.i.i, %bb.y ]
  %.promoted923.i.i.i.i = phi i64 [ %i.jl, %bb.x ], [ %.promoted924.i.i.i.i, %bb.y ]
  %i.ju = phi i64 [ %i.ip, %bb.x ], [ %i.jt, %bb.y ]
  %i.jv = phi i64 [ %.sroa.0.0.i.i.i3.i.i.i.i.i, %bb.x ], [ %i.iz, %bb.y ] ; 2 uses
  br i1 %i.it, label %tailrecurse.i.i.i.i.i, label %_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  store i64 %i.iv, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !11559
  store i64 %i.jv, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !11559
  store i64 %.lcssa152164.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !11559
  store i64 %.lcssa153169.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11559
  store i64 %.lcssa154174.i.i, ptr %.sroa.3.0..sroa_idx.i4.i, align 8, !noalias !11559
  store i64 %.lcssa144157.lcssa179.i.i, ptr %i.ai, align 8, !noalias !11559
  store i64 %storemerge.i.i.i.lcssa159185.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !11559
  %i.jw = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128CsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ai) #50, !noalias !11559 ; 2 uses
  %i.jx = extractvalue { i64, i64 } %i.jw, 0      ; 3 uses
  %i.jy = extractvalue { i64, i64 } %i.jw, 1      ; 3 uses
  %i.jz = zext i64 %i.jx to i128
  %i.ka = zext i64 %i.jy to i128
  %i.kb = shl nuw i128 %i.ka, 64
  %i.kc = or disjoint i128 %i.kb, %i.jz           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11559
  %i.kd = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 152) acquire, align 8, !noalias !11559
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i, label %bb.z, !prof !21

bb.z:                                             ; preds = %_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11559
  store ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, ptr %i.ae, align 8, !noalias !11559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11559
  store ptr %i.ae, ptr %i.ad, align 8, !noalias !11559
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !11561

.noexc9.i:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11559
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i: ; preds = %.noexc9.i, %_RINvXNvNtCsloFShupyl5J_6comemo5inputs6_1__INtB5_5MultiTINtNtB7_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1g_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1g_7LibraryEIBS_DNtNtNtB1g_13introspection12introspector12IntrospectorEL_NtNvB3q_1__12___ComemoCallEIBS_NtNtB1g_6engine6TracedNtNvB4P_1__12___ComemoCallEINtBU_10TrackedMutNtB4P_4SinkNtNvB4P_s_1__12___ComemoCallEIBS_NtB4P_5RouteNtNvB4P_s0_1__12___ComemoCallERNtNtNtB1g_11foundations7content7ContentNtNtB7l_6styles10StyleChainEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.kf = load atomic i64, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE monotonic, align 8, !noalias !11559 ; 4 uses
  %i.kg = and i64 %i.kf, 8
  %i.kh = icmp ne i64 %i.kg, 0
  %i.ki = icmp ugt i64 %i.kf, -17
  %or.cond.i.i.i = or i1 %i.ki, %i.kh
  br i1 %or.cond.i.i.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !28

_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i
  %i.kj = add nuw i64 %i.kf, 16
  %i.kk = cmpxchg weak ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 %i.kf, i64 %i.kj acquire monotonic, align 8, !noalias !11559
  %i.kl = extractvalue { i64, i1 } %i.kk, 1
  br i1 %i.kl, label %.noexc10.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !50

_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtB4t_6engine1__12___ComemoCallNtNvB6g_s_1__12___ComemoCallNtNvB6g_s0_1__12___ComemoCalluuEINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle6BundleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0EB8n_.exit.i.i
  %i.km = invoke noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %.noexc10.i unwind label %.loopexit.split-lp.i, !noalias !11561 ; 0 uses

.noexc10.i:                                       ; preds = %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11576)
  call void @llvm.experimental.noalias.scope.decl(metadata !11577)
  %i.kn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 112), align 8, !alias.scope !11577, !noalias !11578, !noundef !19
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %.loopexit14.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc10.i
  %i.kp = mul i64 %i.jx, -1065810590584100411
  %i.kq = add i64 %i.kp, %i.jy
  %i.kr = mul i64 %i.kq, -1065810590584100411     ; 2 uses
  %i.ks = call noundef i64 @llvm.fshl.i64(i64 %i.kr, i64 %i.kr, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11579)
  call void @llvm.experimental.noalias.scope.decl(metadata !11580)
  %i.kt = lshr i64 %i.ks, 57
  %i.ku = trunc nuw nsw i64 %i.kt to i8
  %i.kv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 96), align 8, !alias.scope !11581, !noalias !11582, !noundef !19 ; 2 uses
  %i.kw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgpMJJHpo27b_12typst_bundle11bundle_impl7___CACHE, i64 88), align 8, !alias.scope !11581, !noalias !11582, !nonnull !19, !noundef !19 ; 2 uses
  %i.kx = insertelement <16 x i8> poison, i8 %i.ku, i64 0
  %i.ky = shufflevector <16 x i8> %i.kx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.my, %bb.ad ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ks, %bb.aa ], [ %i.mz, %bb.ad ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.kv ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.kz, align 1, !noalias !11583 ; 2 uses
  %i.la = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ky
  %i.lb = bitcast <16 x i1> %i.la to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.lb, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i36.i.i, label %.lr.ph.i.i.i35.i.i

.lr.ph.i.i.i35.i.i:                               ; preds = %bb.ab, %bb.ac
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.mx, %bb.ac ], [ %i.lb, %bb.ab ] ; 3 uses
  %i.lc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.ld = zext nneg i16 %i.lc to i64
  %i.le = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ld
  %i.lf = and i64 %i.le, %i.kv
  %i.lg = sub nsw i64 0, %i.lf
  %i.lh = getelementptr inbounds [32 x i8], ptr %i.kw, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.li, align 16, !noalias !11584, !noundef !19
  %i.lj = icmp eq i128 %i.kc, %.val2.i.i.i.i.i.i
  br i1 %i.lj, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit.preheader.i.i.i, label %bb.ac, !prof !21

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit.preheader.i.i.i: ; preds = %.lr.ph.i.i.i35.i.i
  %.sroa.09.0.in61.i.i.i = getelementptr inbounds i8, ptr %i.lh, i64 -16
  %.sroa.09.062.i.i.i = load i64, ptr %.sroa.09.0.in61.i.i.i, align 8, !noalias !11585, !noundef !19 ; 3 uses
  %i.lk = icmp sgt i64 %.sroa.09.062.i.i.i, -1
  br i1 %i.lk, label %.lr.ph.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit.preheader.i.i.i
end_hunk_0
