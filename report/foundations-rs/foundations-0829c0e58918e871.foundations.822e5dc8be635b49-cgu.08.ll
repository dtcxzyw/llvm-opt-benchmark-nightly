Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.08?download=true
inline.NumInlined: 1438
inline.NumDeleted: 712
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1T_:bb.a
  unreachable, !dbg !8850

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1R_.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8, !dbg !8845
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i), !dbg !8851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.48.i.i.i, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 592, i1 false), !dbg !8852, !noalias !8837
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !dbg !8853, !noalias !8837
  %.sroa.48.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8, !dbg !8853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.48.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.48.i.i.i, i64 592, i1 false), !dbg !8853, !noalias !8837
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i), !dbg !8854
  ret void, !dbg !8838
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10RegistriesE10initializeNCINvB1f_11get_or_initNCNvMs_B1N_B1L_3get0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1T_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8855 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8861, !nonnull !734, !align !858, !noundef !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !8860
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10RegistriesE10initializeNCINvB1a_11get_or_initNCNvMs_B1I_B1G_3get0E0zE0E0B1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #35, !dbg !8862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8862
  ret void, !dbg !8861
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10RegistriesE10initializeNCINvB1f_11get_or_initNCNvMs_B1N_B1L_4init0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1T_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8863 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8869, !nonnull !734, !align !858, !noundef !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !8868
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10RegistriesE10initializeNCINvB1a_11get_or_initNCNvMs_B1I_B1G_4init0E0zE0E0B1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #35, !dbg !8870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8870
  ret void, !dbg !8869
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE10initializeNCINvB1f_11get_or_initNCNvB1N_4init0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1T_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8871 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8877, !nonnull !734, !align !858, !noundef !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !8876
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE10initializeNCINvB1a_11get_or_initNCNvB1I_4init0E0zE0E0B1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #35, !dbg !8878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8878
  ret void, !dbg !8877
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1S_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8879 {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8900, !nonnull !734, !align !858, !noundef !734 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8897), !dbg !8900
  %i.c = load ptr, ptr %i.b, align 8, !dbg !8901, !alias.scope !8897, !noalias !8898, !align !858, !noundef !734 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !8902, !alias.scope !8897, !noalias !8898
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !8903
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !8904, !prof !995

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !8905
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !8905, !range !766, !noalias !8899, !noundef !734
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !8906
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit, !dbg !8907, !prof !995

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #34, !dbg !8908, !noalias !8899
  unreachable, !dbg !8908

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #34, !dbg !8909, !noalias !8899
  unreachable, !dbg !8909

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !8910, !noalias !8899, !nonnull !734, !noundef !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8911, !noalias !8899
  call void %i.f(ptr noalias nofree noundef nonnull sret([600 x i8]) align 8 captures(address) dereferenceable(600) %i.a), !dbg !8912, !noalias !8899, !inline_history !8895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(600) %i.a, i64 600, i1 false), !dbg !8913, !noalias !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8914, !noalias !8899
  ret void, !dbg !8900
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1S_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8915 {
bb.a:
  %i.a = alloca [1080 x i8], align 8              ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8936, !nonnull !734, !align !858, !noundef !734 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8933), !dbg !8936
  %i.c = load ptr, ptr %i.b, align 8, !dbg !8937, !alias.scope !8933, !noalias !8934, !align !858, !noundef !734 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !8938, !alias.scope !8933, !noalias !8934
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !8939
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !8940, !prof !995

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !8941
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !8941, !range !766, !noalias !8935, !noundef !734
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !8942
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit, !dbg !8943, !prof !995

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #34, !dbg !8944, !noalias !8935
  unreachable, !dbg !8944

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #34, !dbg !8945, !noalias !8935
  unreachable, !dbg !8945

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !8946, !noalias !8935, !nonnull !734, !noundef !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8947, !noalias !8935
  call void %i.f(ptr noalias nofree noundef nonnull sret([1080 x i8]) align 8 captures(address) dereferenceable(1080) %i.a), !dbg !8948, !noalias !8935, !inline_history !8931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.c, ptr noundef nonnull align 8 dereferenceable(1080) %i.a, i64 1080, i1 false), !dbg !8949, !noalias !8935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8950, !noalias !8935
  ret void, !dbg !8936
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsbaWXNhtWAp9_11foundations9telemetry6driverNtB2_15TelemetryDriver15shutdown_logger(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !8951 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !8969 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !dbg !8969 ; 2 uses
  store i64 -1, ptr %i.b, align 8, !dbg !8970
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1, !dbg !8971
  br i1 %.not, label %bb.h, label %bb.b, !dbg !8972

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !8969
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false), !dbg !8974
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !8973
  invoke void @_RNvXs4_CshBQhFkKQVuE_10slog_asyncNtB5_10AsyncGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !8975

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8975
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #31
          to label %bb.e unwind label %bb.g, !dbg !8975

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8975
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit unwind label %bb.f, !dbg !8975

bb.e:                                             ; preds = %bb.f, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.c, %bb.c ]
  invoke void @_RNvXs3_NtCs49WdmBbiWyj_17crossbeam_channel7channelINtB5_6SenderNtCshBQhFkKQVuE_10slog_async8AsyncMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs49WdmBbiWyj_17crossbeam_channel7channel6SenderNtCshBQhFkKQVuE_10slog_async8AsyncMsgEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.g, !dbg !8976

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !8975
  unreachable, !dbg !8975

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs49WdmBbiWyj_17crossbeam_channel7channel6SenderNtCshBQhFkKQVuE_10slog_async8AsyncMsgEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %.pn.i, !dbg !8975

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d
  call void @_RNvXs3_NtCs49WdmBbiWyj_17crossbeam_channel7channelINtB5_6SenderNtCshBQhFkKQVuE_10slog_async8AsyncMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !8977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8978
  br label %bb.h, !dbg !8979

bb.h:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit
  ret void, !dbg !8980
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE22observed_tail_positionCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #9 !dbg !8981 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7184, !dbg !8995
  %i.b = load atomic i64, ptr %i.a acquire, align 8, !dbg !8996
  %i.c = and i64 %i.b, 4294967296, !dbg !8997
  %i.d = icmp eq i64 %i.c, 0, !dbg !8998
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !8998

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7192, !dbg !8999
  %i.f = load i64, ptr %i.e, align 8, !dbg !9000, !noundef !734
  br label %bb.c, !dbg !9001

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ], !dbg !9002
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !9002
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !9003
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1, !dbg !9003
  ret { i64, i64 } %i.h, !dbg !9003
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3newCsbaWXNhtWAp9_11foundations(i64 noundef %0) unnamed_addr #3 !dbg !544 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9012
  %i.a = tail call noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 7200, i64 noundef 8) #25, !dbg !9013 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !9014
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !9015, !prof !995

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7168, !dbg !9016
  store i64 %0, ptr %i.c, align 8, !dbg !9017
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7176, !dbg !9017
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !9017
  ret ptr %i.a, !dbg !9018

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #33, !dbg !9019
  unreachable, !dbg !9019
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE4growCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 !dbg !9020 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7168, !dbg !9070
  %i.b = load i64, ptr %i.a, align 8, !dbg !9070, !noundef !734
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9071
  %i.c = tail call noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 7200, i64 noundef 8) #25, !dbg !9072 ; 7 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !9073
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3newCsbaWXNhtWAp9_11foundations.exit, !dbg !9074, !prof !995

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #33, !dbg !9075
  unreachable, !dbg !9075

_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3newCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32, !dbg !9070
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 7168, !dbg !9076 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !dbg !9077
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 7176, !dbg !9077
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !9077
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7176, !dbg !9078
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9079 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0, !dbg !9080 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1, !dbg !9081
  br i1 %i.i, label %.loopexit, label %.preheader, !dbg !9082

.preheader:                                       ; preds = %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3newCsbaWXNhtWAp9_11foundations.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 7168, !dbg !9083
  %i.k = load i64, ptr %i.j, align 8, !dbg !9083, !noalias !9066, !noundef !734
  %i.l = add i64 %i.k, 32, !dbg !9084
  store i64 %i.l, ptr %i.f, align 8, !dbg !9085, !noalias !9066
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 7176, !dbg !9086
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9087, !noalias !9066 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1, !dbg !9088
  br i1 %.not16, label %.loopexit, label %.lr.ph, !dbg !9089

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0, !dbg !9090 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !dbg !9091
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 7168, !dbg !9083
  %i.q = load i64, ptr %i.p, align 8, !dbg !9083, !noalias !9066, !noundef !734
  %i.r = add i64 %i.q, 32, !dbg !9084
  store i64 %i.r, ptr %i.f, align 8, !dbg !9085, !noalias !9066
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 7176, !dbg !9086
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9087, !noalias !9066 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1, !dbg !9088
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !9089

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3newCsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3newCsbaWXNhtWAp9_11foundations.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ], !dbg !9092
  ret ptr %.sroa.0.0, !dbg !9093
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE4readCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2) unnamed_addr #9 !dbg !9094 {
bb.a:
  %i.a = and i64 %2, 31, !dbg !9126               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 7184, !dbg !9127
  %i.c = load atomic i64, ptr %i.b acquire, align 8, !dbg !9128 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a, !dbg !9129
  %i.e = and i64 %i.c, %i.d, !dbg !9130
  %.not = icmp eq i64 %i.e, 0, !dbg !9131
  br i1 %.not, label %bb.b, label %bb.c, !dbg !9116

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592, !dbg !9132
  %.not1 = icmp eq i64 %i.f, 0, !dbg !9133
  br i1 %.not1, label %bb.d, label %bb.e, !dbg !9117

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %i.a, !dbg !9134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.g, i64 224, i1 false), !dbg !9135
  br label %bb.f, !dbg !9136

bb.d:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !dbg !9137
  br label %bb.f, !dbg !9138

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !dbg !9139
  br label %bb.f, !dbg !9140

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void, !dbg !9136
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE5writeCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %2) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !9141 {
bb.a:
  %i.a = and i64 %1, 31, !dbg !9171               ; 2 uses
  %i.b = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %i.a, !dbg !9172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(224) %2, i64 224, i1 false), !dbg !9173
  %i.c = shl nuw nsw i64 1, %i.a, !dbg !9174
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7184, !dbg !9175
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8, !dbg !9176 ; 0 uses
  ret void, !dbg !9177
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE8try_pushCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #3 !dbg !557 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7168, !dbg !9184
  %i.b = load i64, ptr %i.a, align 8, !dbg !9184, !noundef !734
  %i.c = add i64 %i.b, 32, !dbg !9185
  %i.d = load ptr, ptr %1, align 8, !dbg !9186, !nonnull !734, !noundef !734 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 7168, !dbg !9187
  store i64 %i.c, ptr %i.e, align 8, !dbg !9187
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7176, !dbg !9188
  %i.g = tail call fastcc ptr @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEECsbaWXNhtWAp9_11foundations(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #35, !dbg !9189
  ret ptr %i.g, !dbg !9190
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE9has_valueCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #9 !dbg !9191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7168, !dbg !9206
  %i.b = load i64, ptr %i.a, align 8, !dbg !9206, !noundef !734 ; 2 uses
  %i.c = icmp uge i64 %1, %i.b, !dbg !9207
  %i.d = add i64 %i.b, 32
  %.not = icmp ult i64 %1, %i.d
  %or.cond = and i1 %i.c, %.not, !dbg !9207
  br i1 %or.cond, label %bb.b, label %bb.c, !dbg !9207

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %1, 31, !dbg !9208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7184, !dbg !9209
  %i.g = load atomic i64, ptr %i.f acquire, align 8, !dbg !9210
  %i.h = lshr i64 %i.g, %i.e, !dbg !9211
  %i.i = trunc i64 %i.h to i1, !dbg !9211
  br label %bb.c, !dbg !9212

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ], !dbg !9213
  ret i1 %.sroa.0.0, !dbg !9212
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE22observed_tail_positionCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #9 !dbg !9214 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8464, !dbg !9228
  %i.b = load atomic i64, ptr %i.a acquire, align 8, !dbg !9229
  %i.c = and i64 %i.b, 4294967296, !dbg !9230
  %i.d = icmp eq i64 %i.c, 0, !dbg !9231
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9231

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8472, !dbg !9232
  %i.f = load i64, ptr %i.e, align 8, !dbg !9233, !noundef !734
  br label %bb.c, !dbg !9234

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ], !dbg !9235
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !9235
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !9236
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1, !dbg !9236
  ret { i64, i64 } %i.h, !dbg !9236
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE3newCsbaWXNhtWAp9_11foundations(i64 noundef %0) unnamed_addr #3 !dbg !562 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9245
  %i.a = tail call noundef align 8 dereferenceable_or_null(8480) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 8480, i64 noundef 8) #25, !dbg !9246 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !9247
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !9248, !prof !995

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8448, !dbg !9249
  store i64 %0, ptr %i.c, align 8, !dbg !9250
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8456, !dbg !9250
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !9250
  ret ptr %i.a, !dbg !9251

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8480) #33, !dbg !9252
  unreachable, !dbg !9252
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE4growCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 !dbg !9253 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8448, !dbg !9303
  %i.b = load i64, ptr %i.a, align 8, !dbg !9303, !noundef !734
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9304
  %i.c = tail call noundef align 8 dereferenceable_or_null(8480) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 8480, i64 noundef 8) #25, !dbg !9305 ; 7 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !9306
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE3newCsbaWXNhtWAp9_11foundations.exit, !dbg !9307, !prof !995

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8480) #33, !dbg !9308
  unreachable, !dbg !9308

_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE3newCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32, !dbg !9303
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8448, !dbg !9309 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !dbg !9310
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8456, !dbg !9310
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !9310
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8456, !dbg !9311
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9312 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0, !dbg !9313 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1, !dbg !9314
  br i1 %i.i, label %.loopexit, label %.preheader, !dbg !9315

.preheader:                                       ; preds = %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE3newCsbaWXNhtWAp9_11foundations.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8448, !dbg !9316
  %i.k = load i64, ptr %i.j, align 8, !dbg !9316, !noalias !9299, !noundef !734
  %i.l = add i64 %i.k, 32, !dbg !9317
  store i64 %i.l, ptr %i.f, align 8, !dbg !9318, !noalias !9299
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8456, !dbg !9319
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9320, !noalias !9299 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1, !dbg !9321
  br i1 %.not16, label %.loopexit, label %.lr.ph, !dbg !9322

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0, !dbg !9323 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !dbg !9324
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 8448, !dbg !9316
  %i.q = load i64, ptr %i.p, align 8, !dbg !9316, !noalias !9299, !noundef !734
  %i.r = add i64 %i.q, 32, !dbg !9317
  store i64 %i.r, ptr %i.f, align 8, !dbg !9318, !noalias !9299
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 8456, !dbg !9319
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9320, !noalias !9299 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1, !dbg !9321
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !9322

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE3newCsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE3newCsbaWXNhtWAp9_11foundations.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ], !dbg !9325
  ret ptr %.sroa.0.0, !dbg !9326
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE4readCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((240, 248)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2) unnamed_addr #9 !dbg !9327 {
bb.a:
  %i.a = and i64 %2, 31, !dbg !9359               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8464, !dbg !9360
  %i.c = load atomic i64, ptr %i.b acquire, align 8, !dbg !9361 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a, !dbg !9362
  %i.e = and i64 %i.c, %i.d, !dbg !9363
  %.not = icmp eq i64 %i.e, 0, !dbg !9364
  br i1 %.not, label %bb.b, label %bb.c, !dbg !9349

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592, !dbg !9365
  %.not1 = icmp eq i64 %i.f, 0, !dbg !9366
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !9367 ; 2 uses
  br i1 %.not1, label %bb.d, label %bb.e, !dbg !9350

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [264 x i8], ptr %1, i64 %i.a, !dbg !9368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.h, i64 264, i1 false), !dbg !9369
  br label %bb.f, !dbg !9370

bb.d:                                             ; preds = %bb.b
  store i64 -2, ptr %i.g, align 8, !dbg !9371
  br label %bb.f, !dbg !9372

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %i.g, align 8, !dbg !9373
  br label %bb.f, !dbg !9374

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void, !dbg !9370
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1P_8response8ResponseNtNtNtB11_4body8incoming8IncomingEEE8try_pushCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #3 !dbg !575 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8448, !dbg !9381
  %i.b = load i64, ptr %i.a, align 8, !dbg !9381, !noundef !734
  %i.c = add i64 %i.b, 32, !dbg !9382
  %i.d = load ptr, ptr %1, align 8, !dbg !9383, !nonnull !734, !noundef !734 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8448, !dbg !9384
  store i64 %i.c, ptr %i.e, align 8, !dbg !9384
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8456, !dbg !9385
  %i.g = tail call fastcc ptr @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block5BlockINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2L_8response8ResponseNtNtNtB1X_4body8incoming8IncomingEEEECsbaWXNhtWAp9_11foundations(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #35, !dbg !9386
  ret ptr %i.g, !dbg !9387
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE22observed_tail_positionCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #9 !dbg !9388 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9232, !dbg !9402
  %i.b = load atomic i64, ptr %i.a acquire, align 8, !dbg !9403
  %i.c = and i64 %i.b, 4294967296, !dbg !9404
  %i.d = icmp eq i64 %i.c, 0, !dbg !9405
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9405

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9240, !dbg !9406
  %i.f = load i64, ptr %i.e, align 8, !dbg !9407, !noundef !734
  br label %bb.c, !dbg !9408

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ], !dbg !9409
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !9409
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !9410
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1, !dbg !9410
  ret { i64, i64 } %i.h, !dbg !9410
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE3newCsbaWXNhtWAp9_11foundations(i64 noundef %0) unnamed_addr #3 !dbg !580 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9419
  %i.a = tail call noundef align 8 dereferenceable_or_null(9248) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 9248, i64 noundef 8) #25, !dbg !9420 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !9421
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !9422, !prof !995

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9216, !dbg !9423
  store i64 %0, ptr %i.c, align 8, !dbg !9424
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9224, !dbg !9424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !9424
  ret ptr %i.a, !dbg !9425

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9248) #33, !dbg !9426
  unreachable, !dbg !9426
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE4growCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 !dbg !9427 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9216, !dbg !9477
  %i.b = load i64, ptr %i.a, align 8, !dbg !9477, !noundef !734
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9478
  %i.c = tail call noundef align 8 dereferenceable_or_null(9248) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 9248, i64 noundef 8) #25, !dbg !9479 ; 7 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !9480
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE3newCsbaWXNhtWAp9_11foundations.exit, !dbg !9481, !prof !995

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9248) #33, !dbg !9482
  unreachable, !dbg !9482

_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE3newCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32, !dbg !9477
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 9216, !dbg !9483 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !dbg !9484
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9224, !dbg !9484
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !9484
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9224, !dbg !9485
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9486 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0, !dbg !9487 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1, !dbg !9488
  br i1 %i.i, label %.loopexit, label %.preheader, !dbg !9489

.preheader:                                       ; preds = %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE3newCsbaWXNhtWAp9_11foundations.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 9216, !dbg !9490
  %i.k = load i64, ptr %i.j, align 8, !dbg !9490, !noalias !9473, !noundef !734
  %i.l = add i64 %i.k, 32, !dbg !9491
  store i64 %i.l, ptr %i.f, align 8, !dbg !9492, !noalias !9473
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 9224, !dbg !9493
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9494, !noalias !9473 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1, !dbg !9495
  br i1 %.not16, label %.loopexit, label %.lr.ph, !dbg !9496

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0, !dbg !9497 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !dbg !9498
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 9216, !dbg !9490
  %i.q = load i64, ptr %i.p, align 8, !dbg !9490, !noalias !9473, !noundef !734
  %i.r = add i64 %i.q, 32, !dbg !9491
  store i64 %i.r, ptr %i.f, align 8, !dbg !9492, !noalias !9473
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 9224, !dbg !9493
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !dbg !9494, !noalias !9473 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1, !dbg !9495
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !9496

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE3newCsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE3newCsbaWXNhtWAp9_11foundations.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ], !dbg !9499
  ret ptr %.sroa.0.0, !dbg !9500
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE4readCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2) unnamed_addr #9 !dbg !9501 {
bb.a:
  %i.a = and i64 %2, 31, !dbg !9533               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9232, !dbg !9534
  %i.c = load atomic i64, ptr %i.b acquire, align 8, !dbg !9535 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a, !dbg !9536
  %i.e = and i64 %i.c, %i.d, !dbg !9537
  %.not = icmp eq i64 %i.e, 0, !dbg !9538
  br i1 %.not, label %bb.b, label %bb.c, !dbg !9523

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592, !dbg !9539
  %.not1 = icmp eq i64 %i.f, 0, !dbg !9540
  br i1 %.not1, label %bb.d, label %bb.e, !dbg !9524

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %1, i64 %i.a, !dbg !9541
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.g, i64 288, i1 false), !dbg !9542
  br label %bb.f, !dbg !9543

bb.d:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !dbg !9544
  br label %bb.f, !dbg !9545

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !dbg !9546
  br label %bb.f, !dbg !9547

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void, !dbg !9543
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE8try_pushCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #3 !dbg !593 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9216, !dbg !9554
  %i.b = load i64, ptr %i.a, align 8, !dbg !9554, !noundef !734
  %i.c = add i64 %i.b, 32, !dbg !9555
  %i.d = load ptr, ptr %1, align 8, !dbg !9556, !nonnull !734, !noundef !734 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9216, !dbg !9557
  store i64 %i.c, ptr %i.e, align 8, !dbg !9557
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9224, !dbg !9558
  %i.g = tail call fastcc ptr @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB6_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultINtNtB2J_8response8ResponseB3i_EIB48_DNtNtB6_5error5ErrorNtNtB6_6marker4SendNtB6C_4SyncEL_EEB6A_EL_EEEEECsbaWXNhtWAp9_11foundations(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #35, !dbg !9559
  ret ptr %i.g, !dbg !9560
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12field_redactNtB2_24FieldRedactFilterFactory3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9561 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9630
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9631
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9631, !nonnull !734, !noundef !734 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9632
  %i.h = load i64, ptr %i.g, align 8, !dbg !9632, !noundef !734 ; 2 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326, !dbg !9633
  tail call void @llvm.assume(i1 %i.i), !dbg !9634
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h, !dbg !9635
  %i.k = load i64, ptr %0, align 8, !dbg !9636, !range !798, !noundef !734
  store ptr %i.f, ptr %i.d, align 8, !dbg !9637
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !9637
  store i64 %i.k, ptr %i.l, align 8, !dbg !9637
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9637
  store ptr %i.f, ptr %i.m, align 8, !dbg !9637
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !9637
  store ptr %i.j, ptr %i.n, align 8, !dbg !9637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9638, !noalias !9622
  %i.o = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit.i unwind label %bb.d, !dbg !9639, !noalias !9622 ; 2 uses

_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit.i: ; preds = %bb.a
  %i.p = extractvalue { i64, i64 } %i.o, 0, !dbg !9640
  %i.q = extractvalue { i64, i64 } %i.o, 1, !dbg !9640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false), !dbg !9641, !noalias !9622
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9641
  store i64 %i.p, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !9641, !noalias !9622
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9641
  store i64 %i.q, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !9641, !noalias !9622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9642, !noalias !9622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !9642, !noalias !9626
  invoke void @_RINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB6_7HashSetNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtBS_3vec9into_iter8IntoIterBO_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB18_3vec9into_iter8IntoIterB14_EECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !9643, !noalias !9622

bb.b:                                             ; preds = %_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %common.resume unwind label %bb.c, !dbg !9644, !noalias !9622

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !9645, !noalias !9626
  unreachable, !dbg !9645

common.resume:                                    ; preds = %bb.f, %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.r, %bb.b ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !9646

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.c, !dbg !9647, !noalias !9626

_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB18_3vec9into_iter8IntoIterB14_EECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9648, !noalias !9622
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9649 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !9650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9651, !noalias !9622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9652
  store i64 1, ptr %i.c, align 8, !dbg !9649
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9649
  store i64 1, ptr %i.v, align 8, !dbg !9649
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !9653, !noalias !9629
  %i.w = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !9654, !noalias !9629 ; 3 uses
  %i.x = icmp eq ptr %i.w, null, !dbg !9655
  br i1 %i.x, label %bb.e, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtB4_6string6StringEEE3newCsbaWXNhtWAp9_11foundations.exit, !dbg !9656, !prof !890

bb.e:                                             ; preds = %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB18_3vec9into_iter8IntoIterB14_EECsbaWXNhtWAp9_11foundations.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #33
          to label %.noexc unwind label %bb.f, !dbg !9657

.noexc:                                           ; preds = %bb.e
  unreachable, !dbg !9657

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %common.resume unwind label %bb.g, !dbg !9658

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !9659
  unreachable, !dbg !9659

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtB4_6string6StringEEE3newCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCs1xwejQucwHj_5alloc6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB18_3vec9into_iter8IntoIterB14_EECsbaWXNhtWAp9_11foundations.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !9660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9661
  ret ptr %i.w, !dbg !9662
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4initNtB2_10LogHarness3get() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9663 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init7HARNESS, i64 600) acquire, align 8, !dbg !9692
  %i.d = icmp eq i32 %i.c, 0, !dbg !9693
  br i1 %i.d, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE5force0EB1L_.exit, label %bb.b, !dbg !9694

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init12NOOP_HARNESS, i64 600) acquire, align 8, !dbg !9695
  %i.f = icmp eq i32 %i.e, 0, !dbg !9696
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE5force0EB1L_.exit, label %bb.c, !dbg !9697, !prof !755

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9698
  store ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init12NOOP_HARNESS, ptr %i.b, align 8, !dbg !9699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9700
  store ptr %i.b, ptr %i.a, align 8, !dbg !9700
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init12NOOP_HARNESS, i64 600), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !9701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9703
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE5force0EB1L_.exit, !dbg !9703

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE5force0EB1L_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init7HARNESS, %bb.a ], [ @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init12NOOP_HARNESS, %bb.b ], [ @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init12NOOP_HARNESS, %bb.c ], !dbg !9704
  ret ptr %.sroa.0.0, !dbg !9705
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4initNtB2_14TracingHarness3get() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9706 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init7HARNESS, i64 1080) acquire, align 8, !dbg !9735
  %i.d = icmp eq i32 %i.c, 0, !dbg !9736
  br i1 %i.d, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE5force0EB1L_.exit, label %bb.b, !dbg !9737

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init12NOOP_HARNESS, i64 1080) acquire, align 8, !dbg !9738
  %i.f = icmp eq i32 %i.e, 0, !dbg !9739
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE5force0EB1L_.exit, label %bb.c, !dbg !9740, !prof !755

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9741
  store ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init12NOOP_HARNESS, ptr %i.b, align 8, !dbg !9742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9743
  store ptr %i.b, ptr %i.a, align 8, !dbg !9743
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init12NOOP_HARNESS, i64 1080), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !9744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9746
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE5force0EB1L_.exit, !dbg !9746

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE5force0EB1L_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init7HARNESS, %bb.a ], [ @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init12NOOP_HARNESS, %bb.b ], [ @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init12NOOP_HARNESS, %bb.c ], !dbg !9747
  ret ptr %.sroa.0.0, !dbg !9748
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4initNtB2_14TracingHarness6tracer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 !dbg !9749 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9757
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 568, !dbg !9757
  call void @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB1c_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3W_4SyncEL_EB2S_EE7currentB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.b), !dbg !9758
  %i.c = load ptr, ptr %i.a, align 8, !dbg !9759, !noundef !734
  %.not = icmp eq ptr %i.c, null, !dbg !9759
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9760

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !9761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9762
  br label %bb.d, !dbg !9763

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9762
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !9764
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9765
  store ptr %i.d, ptr %i.e, align 8, !dbg !9765
  store ptr null, ptr %0, align 8, !dbg !9765
  br label %bb.d, !dbg !9766

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !9767
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE12release_taskCsbaWXNhtWAp9_11foundations(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9768 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9821
  %i.c = atomicrmw xchg ptr %i.b, i8 1 seq_cst, align 1, !dbg !9822
  %.not = icmp eq i8 %i.c, 0, !dbg !9817          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9823 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !dbg !9824, !noundef !734 ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 32, !dbg !9824
  %.val5 = load ptr, ptr %i.e, align 8, !dbg !9824 ; 6 uses
  %i.f = icmp eq ptr %.val, null, !dbg !9825
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !9825
end_hunk_0
begin_hunk_1_@_RNvXs8_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations:bb.a
  ret i1 %i.a, !dbg !16910
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs8_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16911 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs7XllS0bOcsN_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16912
  ret i1 %i.a, !dbg !16913
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs8_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16914 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs7XllS0bOcsN_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16915
  ret i1 %i.a, !dbg !16916
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs8_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16917 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs7XllS0bOcsN_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16918
  ret i1 %i.a, !dbg !16919
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs8_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtCs74LoFwSioHw_4http3uri10InvalidUriENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16920 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs7XllS0bOcsN_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16921
  ret i1 %i.a, !dbg !16922
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs8_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16923 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs7XllS0bOcsN_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16924
  ret i1 %i.a, !dbg !16925
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs8_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBU_3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16926 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs7XllS0bOcsN_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16927
  ret i1 %i.a, !dbg !16928
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16929 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16930 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16930
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16930
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16931
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16931, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16931
  ret i1 %i.f, !dbg !16932
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEENtNtB1Q_3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16933 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16934 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16934
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16934
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16935
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16935, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16935
  ret i1 %i.f, !dbg !16936
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16937 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16938 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16938
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16938
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16939
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16939, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16939
  ret i1 %i.f, !dbg !16940
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16941 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16942 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16942
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16942
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16943
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16943, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16943
  ret i1 %i.f, !dbg !16944
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorEENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16945 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16946 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16946
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16946
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16947
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16947, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16947
  ret i1 %i.f, !dbg !16948
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16949 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16950 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16950
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16950
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16951
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16951, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16951
  ret i1 %i.f, !dbg !16952
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16953 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16954 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16954
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16954
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16955
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16955, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16955
  ret i1 %i.f, !dbg !16956
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16957 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16958 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16958
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16958
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16959
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16959, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16959
  ret i1 %i.f, !dbg !16960
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtCs74LoFwSioHw_4http3uri10InvalidUriENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16961 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16962 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16962
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16962
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16963
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16963, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16963
  ret i1 %i.f, !dbg !16964
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5error5ErrorENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16965 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16966 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16966
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16966
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16967
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16967, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16967
  ret i1 %i.f, !dbg !16968
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtCs7XllS0bOcsN_6anyhow5errorINtB5_9ErrorImplNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16969 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCs7XllS0bOcsN_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0), !dbg !16970 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !16970
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !16970
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16971
  %i.e = load ptr, ptr %i.d, align 8, !dbg !16971, !invariant.load !734, !nonnull !734
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !dbg !16971
  ret i1 %i.f, !dbg !16972
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakINtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4live18live_reference_set19LiveReferenceHandleINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 !dbg !16973 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !16990, !nonnull !734, !noundef !734 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !16991
  br i1 %i.b, label %bb.d, label %bb.b, !dbg !16987

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16992
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !16993
  %i.e = icmp eq i64 %i.d, 1, !dbg !16994
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !16994

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !16995
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #25, !dbg !16996
  br label %bb.d, !dbg !16997

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void, !dbg !16998
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtNtCsbaWXNhtWAp9_11foundations6sentry7metrics6sentry12events_totalENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCs3oUPovFnLWP_4core7default7Default7defaultB3X_() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !16999 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !17027
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !17028 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17029
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !17030, !prof !890

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33, !dbg !17031
  unreachable, !dbg !17031

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %bb.c unwind label %bb.d, !dbg !17032 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17033
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17033
  store i64 1, ptr %i.a, align 8, !dbg !17034
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17034
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17034
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17034
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17034
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17034
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false), !dbg !17034
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17034
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17034
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17034
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17034
  ret ptr %i.a, !dbg !17035

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #25, !dbg !17036
  resume { ptr, i32 } %i.f, !dbg !17037
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log10log_volume11foundations16log_record_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCs3oUPovFnLWP_4core7default7Default7defaultB3Z_() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !17038 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !17066
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !17067 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17068
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !17069, !prof !890

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33, !dbg !17070
  unreachable, !dbg !17070

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %bb.c unwind label %bb.d, !dbg !17071 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17072
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17072
  store i64 1, ptr %i.a, align 8, !dbg !17073
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17073
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17073
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17073
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17073
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false), !dbg !17073
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17073
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17073
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17073
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17073
  ret ptr %i.a, !dbg !17074

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #25, !dbg !17075
  resume { ptr, i32 } %i.f, !dbg !17076
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7metrics7tracing10queue_sizeENtNtNtCsl4QKJNSbRGn_17prometheus_client7metrics5gauge5GaugeEEENtNtCs3oUPovFnLWP_4core7default7Default7defaultB3Z_() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !17077 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !17105
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !17106 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17107
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !17108, !prof !890

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33, !dbg !17109
  unreachable, !dbg !17109

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %bb.c unwind label %bb.d, !dbg !17110 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17111
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17111
  store i64 1, ptr %i.a, align 8, !dbg !17112
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17112
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17112
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17112
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17112
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false), !dbg !17112
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17112
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17112
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17112
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17112
  ret ptr %i.a, !dbg !17113

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #25, !dbg !17114
  resume { ptr, i32 } %i.f, !dbg !17115
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7metrics7tracing11spans_totalENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCs3oUPovFnLWP_4core7default7Default7defaultB3Z_() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !17116 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !17144
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !17145 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17146
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !17147, !prof !890

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33, !dbg !17148
  unreachable, !dbg !17148

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %bb.c unwind label %bb.d, !dbg !17149 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17150
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17150
  store i64 1, ptr %i.a, align 8, !dbg !17151
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17151
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17151
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17151
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17151
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false), !dbg !17151
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17151
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17151
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17151
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17151
  ret ptr %i.a, !dbg !17152

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #25, !dbg !17153
  resume { ptr, i32 } %i.f, !dbg !17154
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7metrics7tracing13spans_droppedENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCs3oUPovFnLWP_4core7default7Default7defaultB3Z_() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !17155 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !17183
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !17184 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17185
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !17186, !prof !890

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33, !dbg !17187
  unreachable, !dbg !17187

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %bb.c unwind label %bb.d, !dbg !17188 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17189
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17189
  store i64 1, ptr %i.a, align 8, !dbg !17190
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17190
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17190
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17190
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17190
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false), !dbg !17190
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17190
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17190
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17190
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17190
  ret ptr %i.a, !dbg !17191

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #25, !dbg !17192
  resume { ptr, i32 } %i.f, !dbg !17193
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7metrics7tracing14max_queue_sizeENtNtNtCsl4QKJNSbRGn_17prometheus_client7metrics5gauge5GaugeEEENtNtCs3oUPovFnLWP_4core7default7Default7defaultB3Z_() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !17194 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !17222
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !17223 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17224
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !17225, !prof !890

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33, !dbg !17226
  unreachable, !dbg !17226

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %bb.c unwind label %bb.d, !dbg !17227 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17228
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17228
  store i64 1, ptr %i.a, align 8, !dbg !17229
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17229
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17229
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17229
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17229
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @46, i64 32, i1 false), !dbg !17229
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17229
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17229
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17229
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17229
  ret ptr %i.a, !dbg !17230

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #25, !dbg !17231
  resume { ptr, i32 } %i.f, !dbg !17232
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs26L2cHvO7VQ_13cf_rustracing5errorNtB4_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !17233 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17235
  store ptr %0, ptr %i.a, align 8, !dbg !17235
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138), !dbg !17236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17237
  ret i1 %i.b, !dbg !17238
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs7XllS0bOcsN_6anyhow7wrapperINtB4_12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !17239 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17241
  %.val = load ptr, ptr %i.a, align 8, !dbg !17241, !nonnull !734, !noundef !734
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17241
  %.val1 = load i64, ptr %i.b, align 8, !dbg !17241, !noundef !734
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17242
  ret i1 %i.c, !dbg !17243
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs7XllS0bOcsN_6anyhow7wrapperINtB4_12MessageErrorReENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !17244 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17245
  ret i1 %i.a, !dbg !17246
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsaCYLheajBls_5hyper6common6eitherINtB4_6EitherINtNtNtNtB8_5proto2h26client4ConnNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoNtNtB1A_4body4BodyEINtNtCsb6T6P0NKlCh_2h26client10ConnectionINtNtNtB6_2io6compat6CompatB1q_EINtBY_7SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(1408) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 !dbg !17247 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !17259, !range !809, !noundef !734
  %i.b = icmp eq i64 %i.a, 2, !dbg !17259
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !17259

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17259
  tail call void @_RNvXs5_NtCsb6T6P0NKlCh_2h26clientINtB5_10ConnectionINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtBW_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1272) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !dbg !17260
  br label %bb.d, !dbg !17261

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCsaCYLheajBls_5hyper5proto2h26clientINtB5_4ConnNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoNtNtB16_4body4BodyENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1408) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !dbg !17262
  br label %bb.d, !dbg !17263

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !17264
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtCsbaWXNhtWAp9_11foundations9telemetry6driverNtB4_15TelemetryDriverNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !17265 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17554
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !17555 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !dbg !17555
  %i.g = load i64, ptr %0, align 8, !dbg !17556, !range !809, !noundef !734
  %.not = icmp eq i64 %i.g, 2, !dbg !17556
  br i1 %.not, label %.preheader, label %bb.b, !dbg !17557

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs2_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFutureNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !17558

bb.c:                                             ; preds = %.preheader, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !17519), !dbg !17559
  call void @llvm.experimental.noalias.scope.decl(metadata !17520), !dbg !17559
  %i.h = load atomic ptr, ptr %i.dr acquire, align 8, !dbg !17560, !alias.scope !17519, !noalias !17520 ; 3 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !17561
  br i1 %i.i, label %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsbaWXNhtWAp9_11foundations.exit.i, label %bb.d, !dbg !17562

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.dq, align 8, !dbg !17563, !alias.scope !17519, !noalias !17520, !nonnull !734, !noundef !734
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !17564
  %i.l = load ptr, ptr %i.k, align 8, !dbg !17564, !noalias !17524, !nonnull !734, !noundef !734
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !17565
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.e, !dbg !17566

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.o = load atomic ptr, ptr %i.n acquire, align 8, !dbg !17567, !noalias !17524
  %.not.i.i = icmp eq ptr %i.o, %i.m, !dbg !17568
  br i1 %.not.i.i, label %bb.e, label %bb.f, !dbg !17568

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !17569
  %i.q = load i64, ptr %i.p, align 8, !dbg !17570, !noalias !17524, !noundef !734
  br label %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsbaWXNhtWAp9_11foundations.exit.i, !dbg !17571

_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.f, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.c ], !dbg !17572
  %i.r = load ptr, ptr %i.dq, align 8, !dbg !17573, !alias.scope !17519, !noalias !17520, !nonnull !734, !noundef !734 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !17574
  %i.t = load ptr, ptr %1, align 8, !dbg !17575, !alias.scope !17520, !noalias !17519, !nonnull !734, !align !858, !noundef !734 ; 5 uses
  invoke void @_RNvMNtNtNtCs9Hva1InW082_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit, !dbg !17576

.noexc:                                           ; preds = %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsbaWXNhtWAp9_11foundations.exit.i, %bb.u
  %i.u = phi ptr [ %.pre.i, %bb.u ], [ %i.r, %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsbaWXNhtWAp9_11foundations.exit.i ], !dbg !17577 ; 3 uses
  %.sroa.011.0.i = phi i64 [ %.sroa.011.1.i, %bb.u ], [ 0, %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsbaWXNhtWAp9_11foundations.exit.i ], !dbg !17578 ; 2 uses
  %.sroa.09.0.i = phi i64 [ %.sroa.09.1.i, %bb.u ], [ 0, %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsbaWXNhtWAp9_11foundations.exit.i ], !dbg !17579 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !17580 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56, !dbg !17581 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !dbg !17582, !noalias !17524, !noundef !734 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48, !dbg !17583
  %i.z = load atomic ptr, ptr %i.y acquire, align 8, !dbg !17584, !noalias !17524 ; 5 uses
  %i.aa = load ptr, ptr %i.v, align 8, !dbg !17585, !noalias !17524, !nonnull !734, !noundef !734
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !17586
  %i.ac = icmp eq ptr %i.x, %i.ab, !dbg !17587
  br i1 %i.ac, label %bb.g, label %bb.h, !dbg !17587

bb.g:                                             ; preds = %.noexc
  %i.ad = icmp eq ptr %i.z, null, !dbg !17588
  br i1 %i.ad, label %bb.m, label %bb.i, !dbg !17589

bb.h:                                             ; preds = %bb.i, %.noexc
  %.sroa.07.0.i.i = phi ptr [ %i.ag, %bb.i ], [ %i.z, %.noexc ], !dbg !17590 ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.z, %bb.i ], [ %i.x, %.noexc ], !dbg !17591 ; 17 uses
  %i.ae = icmp eq ptr %.sroa.07.0.i.i, null, !dbg !17592
  br i1 %i.ae, label %bb.j, label %bb.l, !dbg !17593

bb.i:                                             ; preds = %bb.g
  store ptr %i.z, ptr %i.w, align 8, !dbg !17594, !noalias !17524
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48, !dbg !17595
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8, !dbg !17596, !noalias !17524
  br label %bb.h, !dbg !17597

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !17598 ; 2 uses
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8, !dbg !17599, !noalias !17524
  %i.aj = icmp eq ptr %i.ai, %.sroa.01.0.i.i, !dbg !17600
  br i1 %i.aj, label %bb.k, label %bb.n, !dbg !17601

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.v, align 8, !dbg !17602, !noalias !17524, !nonnull !734, !noundef !734 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !17603 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !17604
  store atomic ptr null, ptr %i.am monotonic, align 8, !dbg !17605, !noalias !17524
  %i.an = atomicrmw xchg ptr %i.ah, ptr %i.al acq_rel, align 8, !dbg !17606, !noalias !17524
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48, !dbg !17607
  store atomic ptr %i.al, ptr %i.ao release, align 8, !dbg !17608
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48, !dbg !17609
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8, !dbg !17610, !noalias !17524 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null, !dbg !17611
  br i1 %i.ar, label %bb.n, label %bb.l, !dbg !17612

bb.l:                                             ; preds = %bb.k, %bb.h
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.h ], [ %i.aq, %bb.k ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.w, align 8, !dbg !17613, !noalias !17524
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8, !dbg !17614 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !dbg !17615, !noalias !17524, !noundef !734
  %.not.i = icmp eq ptr %i.at, null, !dbg !17615
  br i1 %.not.i, label %bb.s, label %bb.o, !dbg !17616

bb.m:                                             ; preds = %bb.g
  %i.au = load atomic ptr, ptr %i.dr monotonic, align 8, !dbg !17617, !alias.scope !17519, !noalias !17520
  %i.av = icmp eq ptr %i.au, null, !dbg !17618
  br i1 %i.av, label %bb.ap, label %.thread30, !dbg !17619

end_hunk_1
