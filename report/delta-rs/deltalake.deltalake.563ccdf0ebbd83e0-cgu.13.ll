inline.NumInlined: 5997
inline.NumDeleted: 1809
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB1f_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB41_:bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #48
          to label %bb.f unwind label %bb.e, !noalias !15152

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15152
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15152
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB1d_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3Z_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !15152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15152
  store ptr %i.g, ptr %i.d, align 8, !noalias !15152
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtNtBf_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB1f_11get_or_initNCNvB2i_22global_tracer_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr noundef readonly captures(none) %0, ptr nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15156)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !15156, !noalias !15159, !align !20, !noundef !19 ; 5 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !15156, !noalias !15159
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15162
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 16, i64 noundef range(i64 1, 129) 8) #46, !noalias !15162 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtBd_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB1d_11get_or_initNCNvB2g_22global_tracer_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit, !prof !28

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #47, !noalias !15162
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15169
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtBd_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB1d_11get_or_initNCNvB2g_22global_tracer_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  store i64 1, ptr %i.c, align 8, !noalias !15170
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15170
  store i64 0, ptr %i.b, align 8, !noalias !15169
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !15169
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !15169
  %.sroa.718.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @93, ptr %.sroa.718.0..sroa_idx.i.i.i, align 8, !noalias !15169
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1f_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3e_(ptr noundef readonly captures(none) %0, ptr nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15171)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15171, !noalias !15174, !align !20, !noundef !19 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !15171, !noalias !15174
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.h, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15177
  call void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB2_7Runtime3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b), !noalias !15177
  call void @llvm.experimental.noalias.scope.decl(metadata !15182)
  %i.f = load i64, ptr %i.b, align 8, !range !644, !alias.scope !15182, !noalias !15185, !noundef !19
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3c_.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15187
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !15182, !noalias !15185, !nonnull !19, !noundef !19
  store ptr %i.i, ptr %i.a, align 8, !noalias !15187
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 33, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #47
          to label %bb.e unwind label %bb.d, !noalias !15187

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #48
          to label %bb.g unwind label %bb.f, !noalias !15187

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15187
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15188
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3c_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !15188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !15188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockbE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr noundef readonly captures(none) %0, ptr nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15189)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !15189, !noalias !15192 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !15189, !noalias !15192 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !15189, !noalias !15192
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15198)
  %i.b = load i8, ptr %.sroa.0.0.copyload.i.i, align 1, !range !75, !alias.scope !15201, !noalias !15202, !noundef !19 ; 2 uses
  store i8 2, ptr %.sroa.0.0.copyload.i.i, align 1, !alias.scope !15201, !noalias !15202
  %.not.i.i.i.i.i = icmp eq i8 %i.b, 2
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #50, !noalias !15203
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15202
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i8 %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 1, !noalias !15202
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockmE10initializeNCINvB1f_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr noundef readonly captures(none) %0, ptr nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15204)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !15204, !noalias !15207 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !15204, !noalias !15207 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !15204, !noalias !15207
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockmE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15210
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockmE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit: ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !noalias !15210, !noundef !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i32 %.val.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 4, !noalias !15210
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull returned align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECs7p2uQeJxui2_9deltalake)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull returned align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextECs7p2uQeJxui2_9deltalake)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @99, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %4, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15211
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15211 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @100, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %4, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15214
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15214 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @101, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15217
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15217 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @102, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15220
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15220 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB2a_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @103, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15223
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15223 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB2s_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB2a_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @104, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15226
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15226 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0EEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB2s_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB1z_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB2a_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @105, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15229
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15229 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB1R_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB2s_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB1z_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB2a_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @106, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15232
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15232 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB1R_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB2s_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2f_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1F_3vec3VecbEEIB46_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2l_16delta_datafusion14table_provider4next4scan6replayINtB5y_14ScanFileStreamINtNtB4a_3pin3PinIB1B_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4a_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2l_6errors15DeltaTableErrorENtNtB4a_6marker4SendEL_EEEB7l_9poll_nexts_0Es_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @107, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15235
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15235 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2N_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2d_3vec3VecbEEIB4E_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2T_16delta_datafusion14table_provider4next4scan6replayINtB5Q_14ScanFileStreamINtNtB4_3pin3PinIB29_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2T_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB7C_9poll_nexts_0Es_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2g_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5h_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @108, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15238
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15238 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2O_8protocol11checkpoints21create_checkpoint_for000INtNtB4_6result6ResultINtNtB2d_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5z_5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2g_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2g_6errors15DeltaTableErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @109, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15241
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15241 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2O_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2O_6errors15DeltaTableErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2g_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB4r_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2g_6errors15DeltaTableErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @110, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15244
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15244 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2O_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2O_6errors15DeltaTableErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2g_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @111, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15247
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15247 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2O_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2g_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @112, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15250
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15250 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2O_8protocol14log_compaction16compact_logs_for000INtNtB4_6result6ResultINtNtB2d_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5x_5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2g_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB4p_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2g_6errors15DeltaTableErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @113, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15253
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15253 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2O_8protocol14log_compaction16compact_logs_for00s0_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2O_6errors15DeltaTableErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @114, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15256
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15256 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2M_8snapshotNtB3W_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2d_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4w_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @115, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15259
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15259 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2M_8snapshotNtB3W_8Snapshot31application_transaction_version00INtNtB4_6result6ResultINtNtB4_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB3i_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB3i_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00EENtNtB13_8schedule16BlockingScheduleE3newB3k_(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @116, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 128
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15262
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15262 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB3Q_22DeltaFileSystemHandler15open_input_file0INtNtB4_6result6ResultNtB3Q_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00EENtNtB1B_8schedule16BlockingScheduleEEB3S_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB3f_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB4n_6option6OptionINtNtB4n_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00EENtNtB13_8schedule16BlockingScheduleE3newB3h_(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @117, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 128
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15265
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15265 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB3N_21StreamToReaderAdapterNtNtNtNtB4_4iter6traits8iterator8Iterator4next0INtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00EENtNtB1B_8schedule16BlockingScheduleEEB3P_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @118, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15268
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15268 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2R_9GetResult5bytes00EENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1G_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3x_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1M_16delta_datafusion14table_provider4next4scan6replayINtB5f_14ScanFileStreamINtNtB3B_3pin3PinINtNtB4d_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3B_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1M_6errors15DeltaTableErrorENtNtB3B_6marker4SendEL_EEEB7g_9poll_nexts_0Es_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(328) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [340 x i8], align 4         ; 2 uses
  %i.a = alloca [512 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(328) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %0, i64 328, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @119, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(340) %.sroa.413, i64 340, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 64
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15271
  %i.f = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 512, i64 noundef range(i64 1, 129) 128) #46, !noalias !15271 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2e_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB45_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB2k_16delta_datafusion14table_provider4next4scan6replayINtB5x_14ScanFileStreamINtNtB4_3pin3PinINtNtB4v_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2k_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB7x_9poll_nexts_0Es_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(512) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.f, ptr noundef nonnull align 128 dereferenceable(512) %i.a, i64 512, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1H_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4Y_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [188 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(176) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @120, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(188) %.sroa.413, i64 188, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15274
  %i.f = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 384, i64 noundef range(i64 1, 129) 128) #46, !noalias !15274 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2f_8protocol11checkpoints21create_checkpoint_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5g_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.f, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1H_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1H_6errors15DeltaTableErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [116 x i8], align 4         ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @121, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.413, i64 116, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15277
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15277 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2f_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2f_6errors15DeltaTableErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1H_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3S_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1H_6errors15DeltaTableErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [116 x i8], align 4         ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @122, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.413, i64 116, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15280
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15280 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2f_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2f_6errors15DeltaTableErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1H_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(240) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [252 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %0, i64 240, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @123, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(252) %.sroa.413, i64 252, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15283
  %i.f = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 384, i64 noundef range(i64 1, 129) 128) #46, !noalias !15283 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2f_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.f, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1H_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [108 x i8], align 4         ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @124, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(108) %.sroa.413, i64 108, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15286
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15286 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2f_8protocol14log_compaction16compact_logs_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5e_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1H_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3Q_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1H_6errors15DeltaTableErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [116 x i8], align 4         ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @125, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.413, i64 116, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15289
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15289 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2f_8protocol14log_compaction16compact_logs_for00s0_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB2f_6errors15DeltaTableErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(184) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [196 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(184) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @126, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(196) %.sroa.413, i64 196, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15292
  %i.f = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 384, i64 noundef range(i64 1, 129) 128) #46, !noalias !15292 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5c_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.f, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3X_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [124 x i8], align 4         ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @127, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(124) %.sroa.413, i64 124, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15295
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15295 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot31application_transaction_version00INtNtB4_6result6ResultINtNtB4_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2J_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2J_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00ENtNtB13_8schedule16BlockingScheduleE3newB2L_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @128, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 128
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15298
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15298 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB3h_22DeltaFileSystemHandler15open_input_file0INtNtB4_6result6ResultNtB3h_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00ENtNtB1B_8schedule16BlockingScheduleEEB3j_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2G_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3O_6option6OptionINtNtB3O_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00ENtNtB13_8schedule16BlockingScheduleE3newB2I_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @129, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 128
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15301
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15301 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB3e_21StreamToReaderAdapterNtNtNtNtB4_4iter6traits8iterator8Iterator4next0INtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00ENtNtB1B_8schedule16BlockingScheduleEEB3g_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [52 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.413.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @130, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.413, i64 52, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15304
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15304 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB15_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @131, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15307
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15307 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB1D_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB15_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @132, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15310
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15310 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB1D_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB29_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB15_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @133, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15313
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15313 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB2H_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB1D_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB29_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB15_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @134, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15316
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15316 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB2H_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB1D_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB5_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_14execution_plan13ExecutionPlanEL_EE6if_allCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.c = icmp ult i64 %.sroa.3.0.copyload, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  %i.e = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.e)
  store ptr %.sroa.2.0.copyload, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown10PushedDownEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB10_25ChildFilterPushdownResultENCNvMs2_B10_INtB10_25FilterPushdownPropagationINtNtB8_4sync3ArcDNtNtB12_14execution_plan13ExecutionPlanEL_EE6if_all0EE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown19PushedDownPredicateEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.g) #48
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown19PushedDownPredicateEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown19PushedDownPredicateEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown19PushedDownPredicateEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown19PushedDownPredicateEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown19PushedDownPredicateEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !range !1253, !noalias !15319, !noundef !19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15319
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !115, !noalias !15319, !noundef !19
  %i.j = tail call noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.i), !noalias !15319
  store i64 %i.j, ptr %i.a, align 8, !noalias !15319
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputTjINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @88, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #50, !noalias !15319
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.e, !noalias !15323

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15323
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  call void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !15323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15319
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !883, !noundef !19
  %.not = icmp eq i64 %i.n, 21
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %bb.h unwind label %bb.g
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs1N9T06jgEdt_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1z_11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorENtNtB2K_6marker4SendEL_EE4lockCs7p2uQeJxui2_9deltalake:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs1N9T06jgEdt_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1Z_11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorENtNtB3a_6marker4SendEL_EENCNvMs9_B10_BX_3new0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEE4lockCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #51
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENCNvMs9_B10_BX_3new0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequejEE4lockCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #51
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequejEENCNvMs9_B10_BX_3new0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableE4lockCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #51
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableENCNvMs9_B10_BX_3new0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #51
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #51
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanE4lockCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #51
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanENCNvMs9_B10_BX_3new0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 728, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 464, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 288, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 632, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 368, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 192, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1000) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef 1000, i64 noundef 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1000) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4j34XAPZOn0_4http8byte_str7ByteStrE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 32, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 328, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2688) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 2688, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2688) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14WindowFunctionE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(288) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 288, i64 noundef range(i64 1, 129) 16) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 288) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(352) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 352, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 352) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 112, i64 noundef range(i64 1, 129) 16) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 144, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 64, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 48, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 24, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 64, i64 noundef range(i64 1, 129) 16) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(616) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 616, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 616) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 1152, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1152) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 640, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 400, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 72, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 1400, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 48, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2432) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 2432, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2432) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2696) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 2696, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2696) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 56, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 104, i64 noundef range(i64 1, 129) 8) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCs7p2uQeJxui2_9deltalake() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(832) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 832, i64 noundef range(i64 1, 129) 16) #46 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 832) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3p_8Snapshot12commit_infos0s0_0EE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuse4FuseINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3Q_8Snapshot12commit_infos0s0_0EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.b) #48
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtCs7p2uQeJxui2_9deltalake6reader24convert_stream_to_reader(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !19, !nonnull !19
  %i.p = invoke noundef nonnull ptr %i.o(ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.b       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  store ptr %i.p, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15747
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !15747, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15747
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.s, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.c
  %i.t = load i64, ptr %i.c, align 8, !range !98, !noalias !15747, !noundef !19
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.e, !prof !114

bb.d:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !645, !noalias !15747, !noundef !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !15747
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #47
          to label %.noexc7 unwind label %bb.q

.noexc7:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !45, !noalias !15747, !noundef !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !15747, !nonnull !19, !noundef !19
  %i.ae = icmp ule i64 %i.s, %i.ab
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15747
  store i64 %i.ab, ptr %i.i, align 8, !noalias !15747
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !noalias !15747
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.ag, align 8, !noalias !15747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15747
  store i8 0, ptr %i.h, align 1, !noalias !15747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15747
  %i.ah = load ptr, ptr %i.z, align 8, !noalias !15747, !nonnull !19, !noundef !19
  %i.ai = load i64, ptr %i.r, align 8, !noalias !15747, !noundef !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  store ptr %i.aj, ptr %i.f, align 8, !noalias !15747
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !noalias !15747
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.am, align 8, !noalias !15747
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.i, ptr %i.an, align 8, !noalias !15747
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCs7p2uQeJxui2_9deltalake6reader18view_type_contract0EE9from_iterB3Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.g unwind label %bb.f, !noalias !15747

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.bb, %bb.o ], [ %i.ao, %bb.f ], [ %i.az, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #48
          to label %.body8 unwind label %bb.p, !noalias !15747

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !15747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15747
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap)
          to label %bb.h unwind label %bb.o, !noalias !15747

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15747
  %i.aq = invoke { ptr, i64 } @_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.i, !noalias !15750 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.body.i unwind label %bb.j, !noalias !15754

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15754
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i64 } %i.aq, 0
  %i.au = extractvalue { ptr, i64 } %i.aq, 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15747
  store i64 1, ptr %i.a, align 8, !noalias !15747
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.av, align 8, !noalias !15747
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.at, ptr %i.aw, align 8, !noalias !15747
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15747
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15756
  %i.ax = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 80, i64 noundef range(i64 1, 129) 8) #46, !noalias !15756 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
end_hunk_1
