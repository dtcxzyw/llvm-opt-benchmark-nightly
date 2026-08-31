Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_sentry-9300998c0d3c1440.foundations_sentry.b52da1572b7dc9f0-cgu.5?download=true
inline.NumInlined: 142
inline.NumDeleted: 76
begin_hunk_0_@_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB15_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_0E0B17_:bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0, !dbg !967 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1, !dbg !967 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8, !noalias !974
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !noalias !974
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !977
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #21, !dbg !991 ; 4 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !994
  br i1 %i.j, label %bb.c, label %_RNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB6_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_0B8_.exit, !dbg !995, !prof !996

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #22
          to label %.noexc.i unwind label %bb.d, !dbg !997

.noexc.i:                                         ; preds = %bb.c
  unreachable, !dbg !997

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtBK_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00EBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %bb.f unwind label %bb.e, !dbg !998

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !999
  unreachable, !dbg !999

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k, !dbg !999

_RNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB6_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_0B8_.exit: ; preds = %bb.b
  store ptr %i.f, ptr %i.i, align 8, !dbg !1000
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1000
  store ptr %i.g, ptr %i.m, align 8, !dbg !1000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1002
  tail call void @_RNvNtCsaL1QbXo9JQH_3std9panicking8set_hook(ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3), !dbg !1003
  ret void, !dbg !1004

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !dbg !1005
  unreachable, !dbg !1005
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB8_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00Ba_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 !dbg !1006 {
bb.a:
  tail call void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyTINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8U7pmlCUND7_11sentry_core3hub3HubEEINtBY_4CellbEEE4withNCINvMs1_NtB2c_8hub_implB28_4withNCINvMB2a_B28_11with_activeNCINvNtB2c_3api16with_integrationNtNtCsfypgzpEsCtg_18foundations_sentry5panic23NoFlushPanicIntegrationNCNvB4E_13panic_handler0uE0uE0uE0uEB4G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !dbg !1008
  %i.a = load ptr, ptr %0, align 8, !dbg !1024, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1024
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1024, !nonnull !15, !align !58, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1028
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1028, !invariant.load !15, !nonnull !15
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #23, !dbg !1028
  ret void, !dbg !1029
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once9call_onceNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB1a_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1c_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !1030 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1031, !nonnull !15, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032), !dbg !1031
  %i.c = load i8, ptr %i.b, align 1, !dbg !1035, !range !961, !alias.scope !1032, !noalias !1041, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1, !dbg !1035
  store i8 0, ptr %i.b, align 1, !dbg !1044, !alias.scope !1032, !noalias !1041
  br i1 %i.d, label %bb.b, label %bb.g, !dbg !1045, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, ptr } @_RNvNtCsaL1QbXo9JQH_3std9panicking9take_hook(), !dbg !1047, !noalias !1049 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0, !dbg !1047 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1, !dbg !1047 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1049
  store ptr %i.f, ptr %i.a, align 8, !noalias !1050
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !noalias !1050
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !1053, !noalias !1049
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #21, !dbg !1059, !noalias !1049 ; 4 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !1061
  br i1 %i.j, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB18_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1a_.exit, !dbg !1062, !prof !996

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #22
          to label %.noexc.i.i.i unwind label %bb.d, !dbg !1063, !noalias !1049

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable, !dbg !1063

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtBK_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00EBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %bb.f unwind label %bb.e, !dbg !1064, !noalias !1049

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !1065, !noalias !1049
  unreachable, !dbg !1065

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k, !dbg !1065

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !dbg !1066, !noalias !1049
  unreachable, !dbg !1066

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB18_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1a_.exit: ; preds = %bb.b
  store ptr %i.f, ptr %i.i, align 8, !dbg !1067, !noalias !1049
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1067
  store ptr %i.g, ptr %i.m, align 8, !dbg !1067, !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1068, !noalias !1049
  tail call void @_RNvNtCsaL1QbXo9JQH_3std9panicking8set_hook(ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3), !dbg !1069, !noalias !1049
  ret void, !dbg !1031
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtBd_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_once6vtableBf_(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !1070 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1071, !nonnull !15, !noundef !15 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1071
  %i.d = load ptr, ptr %i.c, align 8, !dbg !1071, !nonnull !15, !align !58, !noundef !15 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072), !dbg !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !1075
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !1075
  invoke void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyTINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8U7pmlCUND7_11sentry_core3hub3HubEEINtBY_4CellbEEE4withNCINvMs1_NtB2c_8hub_implB28_4withNCINvMB2a_B28_11with_activeNCINvNtB2c_3api16with_integrationNtNtCsfypgzpEsCtg_18foundations_sentry5panic23NoFlushPanicIntegrationNCNvB4E_13panic_handler0uE0uE0uE0uEB4G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc.i unwind label %bb.b, !dbg !1077

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !1085
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1085, !invariant.load !15, !alias.scope !1072, !noalias !1087, !nonnull !15
  invoke void %i.g(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #23
          to label %_RNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB8_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00Ba_.exit.i unwind label %bb.b, !dbg !1085, !inline_history !1090

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtBK_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00EBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %common.resume.i unwind label %bb.f, !dbg !1091

_RNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB8_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00Ba_.exit.i: ; preds = %.noexc.i
  %i.i = load ptr, ptr %i.d, align 8, !dbg !1092, !invariant.load !15, !alias.scope !1072, !noalias !1095 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null, !dbg !1092
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !1092

bb.c:                                             ; preds = %_RNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB8_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00Ba_.exit.i
  invoke void %i.i(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e, !dbg !1092, !noalias !1098

bb.d:                                             ; preds = %bb.c, %_RNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtB8_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00Ba_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1099
  %i.k = load i64, ptr %i.j, align 8, !dbg !1099, !range !197, !invariant.load !15, !alias.scope !1072, !noalias !1095 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !1103
  br i1 %i.l, label %_RNvYNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtBb_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceBd_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, !dbg !1103

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1099
  %i.n = load i64, ptr %i.m, align 8, !dbg !1104, !range !208, !invariant.load !15, !alias.scope !1072, !noalias !1095
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #21, !dbg !1107, !noalias !1098
  br label %_RNvYNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtBb_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceBd_.exit, !dbg !1112

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1113
  %i.q = load i64, ptr %i.p, align 8, !dbg !1113, !range !197, !invariant.load !15, !alias.scope !1072, !noalias !1095 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !1117
  br i1 %i.r, label %common.resume.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, !dbg !1117

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1113
  %i.t = load i64, ptr %i.s, align 8, !dbg !1118, !range !208, !invariant.load !15, !alias.scope !1072, !noalias !1095
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #21, !dbg !1121, !noalias !1098
  br label %common.resume.i, !dbg !1126

common.resume.i:                                  ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1091

bb.f:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !1091
  unreachable, !dbg !1091

_RNvYNCNCNvXs_NtCsfypgzpEsCtg_18foundations_sentry5panicNtBb_23NoFlushPanicIntegrationNtNtCs8U7pmlCUND7_11sentry_core11integration11Integration5setups_00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceBd_.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1091
  ret void, !dbg !1071
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #5 !dbg !1127 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !1128   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1128 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8, !dbg !1128 ; 3 uses
  %i.b = icmp eq i64 %3, 0, !dbg !1129
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c, !dbg !1129
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !1129

bb.b:                                             ; preds = %bb.a
  %4 = mul nuw i64 %.val, %3, !dbg !1132          ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = icmp eq i64 %1, 0, !dbg !1135
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit, !dbg !1135

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #21, !dbg !1137
  %i.e = inttoptr i64 %2 to ptr, !dbg !1142
  store ptr %i.e, ptr %i.a, align 8, !dbg !1153
  br label %bb.c, !dbg !1154

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8, !dbg !1155
  br label %bb.e, !dbg !1156

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1, !dbg !1157           ; 3 uses
  %i.g = icmp ule i64 %i.f, %4, !dbg !1160
  tail call void @llvm.assume(i1 %i.g), !dbg !1170
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #21, !dbg !1175 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !1178
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !1181

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8, !dbg !1182
  %i.j = icmp sgt i64 %1, -1, !dbg !1186
  tail call void @llvm.assume(i1 %i.j), !dbg !1186
  br label %bb.c, !dbg !1154

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ], !dbg !1189
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ], !dbg !1189
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !1156
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1, !dbg !1156
  ret { i64, i64 } %i.l, !dbg !1156
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfypgzpEsCtg_18foundations_sentry(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 !dbg !1190 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1), !dbg !1191 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !1191 ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !1191
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !1201, !prof !1205
  br i1 %or.cond, label %bb.g, label %bb.b, !dbg !1201, !prof !1205

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit, !dbg !1206

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val, !dbg !1210      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f, !dbg !1212
  tail call void @llvm.assume(i1 %i.g), !dbg !1221
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #21, !dbg !1224
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit, !dbg !1227

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0, !dbg !1228
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !1228

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr, !dbg !1234
  br label %bb.f, !dbg !1241

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !1245
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #21, !dbg !1246
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit, !dbg !1248

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null, !dbg !1249
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !1241

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1250
  store i64 %2, ptr %i.m, align 8, !dbg !1250
  br label %bb.g, !dbg !1252

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1253
  store ptr %.pn810, ptr %i.n, align 8, !dbg !1253
  br label %bb.g, !dbg !1255

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !1256
  store i64 %.sink11, ptr %i.o, align 8, !dbg !1256
  store i64 %.sink, ptr %0, align 8, !dbg !1256
  ret void, !dbg !1257
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfypgzpEsCtg_18foundations_sentry(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !1258 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !1259 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !1259 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !1259
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !1269, !prof !1205
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !1269, !prof !1205

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0, !dbg !1273
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !1273

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1275
  store i64 0, ptr %i.f, align 8, !dbg !1275
  br label %bb.f, !dbg !1276

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !1278
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1283
  store i64 0, ptr %i.h, align 8, !dbg !1283
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1283
  store ptr %i.g, ptr %i.i, align 8, !dbg !1283
  br label %bb.f, !dbg !1284

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !1285
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit, !dbg !1286

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !1287
  ret void, !dbg !1288

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #21, !dbg !1289
  br label %bb.h, !dbg !1297

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #21, !dbg !1298
  br label %bb.h, !dbg !1303

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null, !dbg !1304
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !1306

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1307
  store i64 %3, ptr %i.m, align 8, !dbg !1307
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1307
  store i64 %i.b, ptr %i.n, align 8, !dbg !1307
  br label %bb.f, !dbg !1308

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1, !dbg !1310
  tail call void @llvm.assume(i1 %i.o), !dbg !1310
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1314
  store i64 %1, ptr %i.p, align 8, !dbg !1314
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1314
  store ptr %.pn9, ptr %i.q, align 8, !dbg !1314
  br label %bb.f, !dbg !1284
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCs8U7pmlCUND7_11sentry_core5scope4real5StackE3newCsfypgzpEsCtg_18foundations_sentry(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !1315 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1320
  %i.b = load atomic i8, ptr %i.a monotonic, align 8, !dbg !1334
  %.not = icmp ne i8 %i.b, 0, !dbg !1337
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtNtCs8U7pmlCUND7_11sentry_core5scope4real5StackENCNvMsd_BQ_BN_3new0ECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1), !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 !dbg !1340 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !1342   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfypgzpEsCtg_18foundations_sentry.exit, label %bb.b, !dbg !1343

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1342
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !1342, !nonnull !15, !noundef !15
  %i.c = mul nuw i64 %.val, 24, !dbg !1348
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !dbg !1350
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfypgzpEsCtg_18foundations_sentry.exit, !dbg !1355

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !1356
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtB7_6borrow3CoweEINtNtB2x_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 !dbg !1357 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !1358   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfypgzpEsCtg_18foundations_sentry.exit, label %bb.b, !dbg !1359

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1358
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !1358, !nonnull !15, !noundef !15
  %i.c = shl nuw i64 %.val, 7, !dbg !1362
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 128) #21, !dbg !1364
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfypgzpEsCtg_18foundations_sentry.exit, !dbg !1369

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !1370
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 !dbg !1371 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !1372   ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfypgzpEsCtg_18foundations_sentry.exit, label %bb.b, !dbg !1373

bb.b:                                             ; preds = %bb.a
end_hunk_0
