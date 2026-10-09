Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.08?download=true
inline.NumInlined: 381
inline.NumDeleted: 171
begin_hunk_0_@_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB1a_11get_or_initNvB1I_12globals_initE0zE0E0B1M_
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB1a_11get_or_initNvB1I_12globals_initE0zE0E0B1M_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry12globals_init(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtB1Q_6option6OptionlEEE10initializeNCINvB1f_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3v_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 16               ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !alias.scope !564, !noalias !565 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !564, !noalias !565 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !564, !noalias !565 ; 3 uses
  store ptr null, ptr %i.c, align 8, !alias.scope !564, !noalias !565
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.h, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %.val.i.i.i = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !noalias !566, !noundef !8 ; 2 uses
  %.val3.i.i.i = load ptr, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !566, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !566
  call void @_RINvCsl04KfRkoYPm_20signal_hook_registry8registerNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable00EBV_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.b, i32 noundef %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val3.i.i.i, i32 noundef %.val.i.i.i), !noalias !566
  %i.d = load i64, ptr %i.b, align 16, !range !7, !noalias !566, !noundef !8
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !566, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !566
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECslghKHtsL3a4_5tokio.exit.thread.i.i.i.i.i.i
    i64 1, label %bb.f
  ], !prof !10

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %i.h, 32
  %i.k = trunc nuw i64 %i.j to i32
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECslghKHtsL3a4_5tokio.exit.thread.i.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECslghKHtsL3a4_5tokio.exit.thread.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.08.i.i.i.i.i.i = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.l = phi i32 [ %i.k, %bb.d ], [ undef, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !566
  br label %_RNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0s0_0B9_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = and i64 %i.h, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !566
  %i.o = icmp ult ptr %i.g, inttoptr (i64 188978561024 to ptr)
  call void @llvm.assume(i1 %i.o)
  br label %_RNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0s0_0B9_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !566
  %i.p = getelementptr i8, ptr %i.g, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !567, !noalias !566
  store i8 3, ptr %i.a, align 8, !alias.scope !567, !noalias !566
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q), !noalias !566
  br label %_RNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0s0_0B9_.exit.i.i.i.i.i

_RNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0s0_0B9_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECslghKHtsL3a4_5tokio.exit.thread.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi i32 [ %.sroa.0.08.i.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECslghKHtsL3a4_5tokio.exit.thread.i.i.i.i.i.i ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.sroa.5.09.i.i.i.i.i.i = phi i32 [ %i.l, %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECslghKHtsL3a4_5tokio.exit.thread.i.i.i.i.i.i ], [ undef, %bb.f ], [ undef, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !566
  br label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtB1O_6option6OptionlEEE10initializeNCINvB1d_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3t_.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !566
  br label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtB1O_6option6OptionlEEE10initializeNCINvB1d_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3t_.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !noalias !568
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtB1O_6option6OptionlEEE10initializeNCINvB1d_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3t_.exit: ; preds = %_RNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0s0_0B9_.exit.i.i.i.i.i, %bb.g
  %.sroa.3.0.i.i.i.i.i = phi i32 [ %.sroa.5.09.i.i.i.i.i.i, %_RNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0s0_0B9_.exit.i.i.i.i.i ], [ undef, %bb.g ]
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %.sroa.0.010.i.i.i.i.i.i, %_RNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0s0_0B9_.exit.i.i.i.i.i ], [ 2, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.5.sroa.4.0.copyload.i.i, align 4, !noalias !566
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload.i.i, i64 4
  store i32 %.sroa.3.0.i.i.i.i.i, ptr %i.r, align 4, !noalias !566
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB1f_11get_or_initNvB1N_12globals_initE0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1R_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !573, !noalias !574, !align !12, !noundef !8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !573, !noalias !574
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB1d_11get_or_initNvB1L_12globals_initE0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1P_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !noalias !575
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB1d_11get_or_initNvB1L_12globals_initE0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1P_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !575
  call void @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry12globals_init(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a), !noalias !575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !575
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvMNtNtCslghKHtsL3a4_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %0, i8 %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %not..i = xor i1 %0, true
  %spec.select.i = select i1 %not..i, i1 true, i1 %i.a
  ret i1 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep10far_future(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable_or_null(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant10far_future() ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !580
  %i.c = tail call { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20), !noalias !579 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 3 uses
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 4 uses
  store i64 %i.d, ptr %i.a, align 8, !noalias !580
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !noalias !580
  %i.g = trunc nuw i64 %i.d to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %..i = select i1 %i.g, i64 352, i64 560
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %..i
  %i.i = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle4time(ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep11new_timeout.exit unwind label %bb.b, !noalias !579 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #25
          to label %bb.d unwind label %bb.c, !noalias !579

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !579
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep11new_timeout.exit: ; preds = %bb.a
  %i.l = extractvalue { i64, i32 } %i.b, 1
  %i.m = extractvalue { i64, i32 } %i.b, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.m, ptr %i.n, align 8, !alias.scope !579, !noalias !581
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.l, ptr %i.o, align 8, !alias.scope !579, !noalias !581
  store i64 %i.d, ptr %0, align 8, !alias.scope !579, !noalias !581
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.p, align 8, !alias.scope !579, !noalias !581
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.q, align 8, !alias.scope !579, !noalias !581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !580
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep10is_elapsed(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !17, !noundef !8
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %.not.i.i = icmp eq i64 %i.d, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %.not.i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep11new_timeout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable_or_null(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0        ; 3 uses
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 4 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = trunc nuw i64 %i.c to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %. = select i1 %i.f, i64 352, i64 560
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.
  %i.h = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle4time(ptr noundef nonnull align 8 %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %i.k, align 8
  store i64 %i.c, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep19reset_without_timer(ptr noundef nonnull align 8 initializes((96, 108)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %i.c, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslghKHtsL3a4_5tokio7runtime5TimerEEB11_(ptr noundef nonnull align 8 %i.b)
          to label %_RNvMs5_NtCs3oUPovFnLWP_4core3pinINtB5_3PinQINtNtB7_6option6OptionNtNtCslghKHtsL3a4_5tokio7runtime5TimerEE3setB15_.exit unwind label %bb.b, !noalias !584

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.b, align 8, !noalias !584
  resume { ptr, i32 } %i.d

_RNvMs5_NtCs3oUPovFnLWP_4core3pinINtB5_3PinQINtNtB7_6option6OptionNtNtCslghKHtsL3a4_5tokio7runtime5TimerEE3setB15_.exit: ; preds = %bb.a
  store i64 2, ptr %i.b, align 8, !noalias !584
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep5reset(ptr noundef nonnull align 8 initializes((96, 108)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store i64 %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %i.d, align 8
  %i.e = load i64, ptr %i.c, align 8, !range !17, !noundef !8
  %.not = icmp eq i64 %i.e, 2
  %.val20 = load i64, ptr %0, align 8, !range !7, !noundef !8
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val21 = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.g = trunc nuw i64 %.val20 to i1              ; 2 uses
  %i.h = atomicrmw add ptr %.val21, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0                     ; 4 uses
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.e, label %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i24 = phi i64 [ 0, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.i24, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.val21, ptr %i.j, align 8
  %i.k = load i64, ptr %i.c, align 8, !range !7, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = trunc nuw i64 %i.k to i1
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %..i.i.i = select i1 %i.m, i64 352, i64 560
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i.i
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle4time(ptr noundef nonnull align 8 %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = invoke noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6sourceNtB2_10TimeSource16deadline_to_tick(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2)
          to label %.noexc1.i unwind label %bb.j  ; 3 uses

.noexc1.i:                                        ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load atomic i64, ptr %i.t monotonic, align 8
  %invariant.umin.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 -3)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.noexc1.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.u, %.noexc1.i ], [ %i.x, %bb.h ] ; 2 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.sroa.04.0.i.i.i.i, %invariant.umin.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = cmpxchg weak ptr %i.t, i64 %.sroa.04.0.i.i.i.i, i64 %i.r acq_rel acquire, align 8 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = extractvalue { i64, i1 } %i.v, 0
  br i1 %i.w, label %_RNvMs8_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_10TimerEntry5reset.exit.i, label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.c, align 8, !range !7, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %..i1.i.i = select i1 %i.z, i64 352, i64 560
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %..i1.i.i
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle4time(ptr noundef nonnull align 8 %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %.noexc2.i unwind label %bb.j

.noexc2.i:                                        ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 8, !range !7, !noundef !8
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %..i.i = select i1 %i.ae, i64 352, i64 560
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %..i.i
  invoke void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtNtB4_6handle6Handle10reregister(ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull align 8 %i.ag, i64 noundef %i.r, ptr noundef nonnull %i.s)
          to label %_RNvMs8_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_10TimerEntry5reset.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc2.i, %bb.i, %.noexc.i, %_RNvXs0_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6HandleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #25
          to label %common.resume unwind label %bb.o

_RNvMs8_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_10TimerEntry5reset.exit.i: ; preds = %bb.h, %.noexc2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.ai = load i64, ptr %i.a, align 8, !range !7, !alias.scope !597, !noundef !8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvMs8_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_10TimerEntry5reset.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.ak = load ptr, ptr %i.j, align 8, !alias.scope !600, !nonnull !8, !noundef !8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !600
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.l, label %_RNvMs4_NtCslghKHtsL3a4_5tokio7runtimeNtB5_5Timer5reset.exit

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01 = alloca [9 x i8], align 8            ; 2 uses
  %.sroa.3 = alloca [6 x i8], align 2             ; 2 uses
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noundef !8
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %.thread
    i8 1, label %bb.b
  ], !prof !19

default.unreachable:                              ; preds = %bb.p, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_)
  store i8 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load i8, ptr %i.e, align 4, !range !20, !noundef !8 ; 2 uses
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 69 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1               ; 4 uses
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !610
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = add i8 %i.i, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.33.0.i.i.i = phi i8 [ %i.j, %bb.f ], [ %i.i, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.h, align 1
  %i.k = zext i8 %i.i to i16
  %i.l = shl nuw i16 %i.k, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.i.i.i = phi i16 [ %i.l, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.i.i7.i = phi i8 [ 0, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %.sroa.3.0.insert.ext.i.i.i = zext nneg i8 %i.f to i16
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i16 %.sroa.4.0.i.i.i, %.sroa.3.0.insert.ext.i.i.i
  %.sroa.3.0.insert.ext.i = zext i16 %.sroa.3.0.insert.insert.i.i.i to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %.sroa.3.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %.sroa.0.0.i.i7.i to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.m = trunc nuw i8 %.sroa.0.0.i.i7.i to i1
  br i1 %i.m, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %i.n, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

.thread:                                          ; preds = %bb.a, %bb.h
  %i.o = phi i24 [ %.sroa.0.0.insert.insert.i, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.sroa.021.2.extract.shift = lshr i24 %i.o, 16
  %.sroa.021.2.extract.trunc = trunc nuw i24 %.sroa.021.2.extract.shift to i8 ; 2 uses
  %.sroa.021.1.extract.shift = lshr i24 %i.o, 8   ; 2 uses
  %.sroa.021.1.extract.trunc = trunc i24 %.sroa.021.1.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo14poll_readiness(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 128 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.n, %.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_(i8 %.sroa.021.1.extract.trunc, i8 %.sroa.021.2.extract.trunc) #25
          to label %bb.t unwind label %bb.s

bb.k:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.u = load i8, ptr %i.t, align 1, !range !18, !noundef !8 ; 2 uses
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(9) %i.a, i64 9, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = trunc nuw i8 %i.u to i1
  br i1 %i.x, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.01, i64 9, i1 false)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, i64 6, i1 false)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %.sroa.49.0..sroa_idx, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

bb.n:                                             ; preds = %bb.m
  %i.y = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 56) #26
          to label %_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration4gone.exit unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34: ; preds = %bb.i, %bb.o, %bb.p, %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit
  ret void

_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration4gone.exit: ; preds = %bb.n
  store ptr %i.y, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 2, ptr %.sroa.46.0..sroa_idx, align 1
  br label %bb.o

bb.o:                                             ; preds = %_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration4gone.exit, %bb.l
  %i.z = trunc i24 %.sroa.021.1.extract.shift to i1
  br i1 %i.z, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

bb.p:                                             ; preds = %bb.o
  %i.aa = load i8, ptr %i.c, align 8, !range !18, !noalias !611, !noundef !8
  switch i8 %i.aa, label %default.unreachable [
    i8 0, label %bb.r
    i8 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34
    i8 1, label %bb.q
  ], !prof !19

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_), !noalias !611
  store i8 0, ptr %i.c, align 8, !noalias !611
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i8 1, ptr %i.ab, align 4, !noalias !611
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 69
  store i8 %.sroa.021.2.extract.trunc, ptr %i.ac, align 1, !noalias !611
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

bb.s:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo15clear_readiness(ptr noundef nonnull align 128 %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15poll_read_ready(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration16poll_write_ready(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = trunc nuw i64 %i.a to i1
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !8
  %.sroa.0.0.v = select i1 %i.c, i64 352, i64 560
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.v
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle2io(ptr noundef nonnull align 8 %.sroa.0.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared15registered_when(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared19might_be_registered(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle12mark_pending(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.03.0.i = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.e ] ; 5 uses
  %i.d = icmp ult i64 %.sroa.03.0.i, -2
  br i1 %i.d, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 127 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = icmp ugt i64 %.sroa.03.0.i, %1
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = cmpxchg weak ptr %i.b, i64 %.sroa.03.0.i, i64 -2 acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %.sroa.03.0.i, %bb.d ], [ -1, %bb.e ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i64 %.sink, ptr %i.i monotonic, align 8
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.03.0.i, 1
  ret { i64, i64 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle14set_expiration(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store atomic i64 %1, ptr %i.b monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i64 %1, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle15registered_when(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  ret i64 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { ptr, ptr } @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle4fire(ptr nofree noundef nonnull captures(none) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %1, ptr %i.d, align 8
  store atomic i64 -1, ptr %i.a release, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = atomicrmw or ptr %i.e, i64 2 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !align !12, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  store ptr null, ptr %i.h, align 8
  %i.l = atomicrmw xchg ptr %i.e, i64 0 release, align 8 ; 0 uses
  br label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit

_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ undef, %bb.a ], [ %i.k, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ null, %bb.b ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -1) i64 @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle9sync_when(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared9sync_when.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared9sync_when.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i64 %i.c, ptr %i.d monotonic, align 8
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCslghKHtsL3a4_5tokio2io4util30poll_proceed_and_make_progress(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !8
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit
    i8 1, label %bb.b
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_)
  store i8 0, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.e = load i8, ptr %i.d, align 4, !range !20, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 69 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !614
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit

bb.f:                                             ; preds = %bb.d
  %i.i = add i8 %i.h, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.33.0.i.i.i = phi i8 [ %i.i, %bb.f ], [ %i.h, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.g, align 1
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit: ; preds = %bb.e, %bb.g, %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ true, %bb.e ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio2io6stderr6stderr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB5_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrE3newB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 @_RNvNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stderr8INSTANCE)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio2io6stdout6stdout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stdout()
  tail call void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB5_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutE3newB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !12, !noundef !8
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop3set(i1 noundef zeroext %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %0 to i8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noundef !8
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetuNCNvNtNtB10_4task4coop3set0E0uEB10_.exit
    i8 1, label %bb.b
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_)
  store i8 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i8 %i.a, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 69
  store i8 %1, ptr %i.f, align 1
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetuNCNvNtNtB10_4task4coop3set0E0uEB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetuNCNvNtNtB10_4task4coop3set0E0uEB10_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop4stop() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !8
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNtNtB10_4task4coop6BudgetNCNvB29_4stop0E0B27_EB10_.exit
    i8 2, label %bb.c
    i8 1, label %bb.b
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_)
  store i8 0, ptr %i.b, align 8
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNtNtB10_4task4coop6BudgetNCNvB29_4stop0E0B27_EB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNtNtB10_4task4coop6BudgetNCNvB29_4stop0E0B27_EB10_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !range !20, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 69
  %i.g = load i8, ptr %i.f, align 1
  store i8 0, ptr %i.d, align 4
  %i.h = trunc nuw i8 %i.e to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNtNtB10_4task4coop6BudgetNCNvB29_4stop0E0B27_EB10_.exit
  %.sroa.0.0.i7 = phi i1 [ %i.h, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNtNtB10_4task4coop6BudgetNCNvB29_4stop0E0B27_EB10_.exit ], [ false, %bb.a ]
  %i.i = phi i8 [ %i.g, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNtNtB10_4task4coop6BudgetNCNvB29_4stop0E0B27_EB10_.exit ], [ undef, %bb.a ]
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCsbPfeiB6icZG_3mio3net3uds8listenerNtB2_12UnixListener6accept
; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsbPfeiB6icZG_3mio3net3uds8datagramNtB2_12UnixDatagram9recv_from(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCsbPfeiB6icZG_3mio3net3uds8datagramNtB2_12UnixDatagram4recv(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCsbPfeiB6icZG_3mio3net3uds8datagramNtB2_12UnixDatagram4send(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs1_NtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipeRNtB5_6SenderNtNtNtCs3oUPovFnLWP_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs1_NtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipeRNtB5_6SenderNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs9_NtNtCslghKHtsL3a4_5tokio7process3impRNtB5_4PipeNtNtNtCs3oUPovFnLWP_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipeRNtB5_8ReceiverNtNtNtCs1xwejQucwHj_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtNtNtCsbPfeiB6icZG_3mio3sys4unix4pipeRNtB5_8ReceiverNtNtNtCs1xwejQucwHj_5alloc2io4read4Read4read(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCsl04KfRkoYPm_20signal_hook_registry8registerNCNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable00EBV_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant10far_future() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle4time(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15try_set_current(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo14poll_readiness(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 128, ptr noalias nofree noundef align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo15clear_readiness(ptr noundef nonnull align 128, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handleNtB2_6Handle11is_shutdown(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6sourceNtB2_10TimeSource16deadline_to_tick(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtNtB4_6handle6Handle10reregister(ptr noundef nonnull align 8, ptr noundef nonnull align 8, i64 noundef, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtNtB4_6handle6Handle11clear_entry(ptr noundef nonnull align 8, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB5_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrE3newB9_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stdout() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB5_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutE3newB9_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant3now() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant11checked_add(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context12thread_rng_n(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB4_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB6_11async_write10AsyncWrite10poll_flushB8_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB4_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrENtNtB6_11async_write10AsyncWrite10poll_writeB8_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB4_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB6_11async_write10AsyncWrite10poll_flushB8_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB4_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutENtNtB6_11async_write10AsyncWrite10poll_writeB8_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo12clear_wakers(ptr noundef nonnull align 128) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6result6ResultuNtNtNtCslghKHtsL3a4_5tokio4time5error5ErrorENtB6_5Debug3fmtBZ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4time5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCslghKHtsL3a4_5tokio4task5local7ContextE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry12globals_init(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

attributes #0 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { cold }
attributes #26 = { noinline }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { noinline noreturn }
attributes #29 = { inlinehint }
attributes #30 = { nounwind }
attributes #31 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i64 0, i64 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!11 = !{i8 0, i8 44}
!12 = !{i64 8}
!13 = !{i16 0, i16 3}
!14 = !{i64 4}
!15 = !{!"address", !"read_provenance"}
!16 = !{i8 -1, i8 3}
!17 = !{i64 0, i64 3}
!18 = !{i8 0, i8 3}
!19 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!20 = !{i8 0, i8 2}
!21 = !{i64 1, i64 0}
!22 = !{i8 0, i8 4}
!23 = distinct !{!23, i1 false, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtB1J_6option6OptionlEEE10initializeNCINvB18_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zE0EB3o_"}
!24 = distinct !{!24, !23, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtB1J_6option6OptionlEEE10initializeNCINvB18_11get_or_initNCNvNtNtCslghKHtsL3a4_5tokio6signal4unix13signal_enable0E0zE0EB3o_: argument 0"}
!25 = !{!24}
!26 = distinct !{!26, i1 false, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB18_11get_or_initNvB1G_12globals_initE0zE0EB1K_"}
!27 = distinct !{!27, !26, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB18_11get_or_initNvB1G_12globals_initE0zE0EB1K_: argument 0"}
!28 = !{!27}
!29 = distinct !{!29, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!30 = distinct !{!30, !29, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!31 = distinct !{!31, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!32 = distinct !{!32, !31, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!33 = distinct !{!33, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!34 = distinct !{!34, !33, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!35 = distinct !{!35, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!36 = distinct !{!36, !35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!37 = distinct !{!37, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!38 = distinct !{!38, !37, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!39 = !{!30}
!40 = !{!32}
!41 = !{!34}
!42 = !{!34, !32, !30}
!43 = !{!36}
!44 = !{!38}
!45 = !{!38, !36, !30}
!46 = distinct !{!46, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!47 = distinct !{!47, !46, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!48 = distinct !{!48, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!49 = distinct !{!49, !48, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!50 = distinct !{!50, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!51 = distinct !{!51, !50, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!52 = distinct !{!52, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!53 = distinct !{!53, !52, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!54 = distinct !{!54, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!55 = distinct !{!55, !54, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!56 = !{!47}
!57 = !{!49}
!58 = !{!51}
!59 = !{!51, !49, !47}
!60 = !{!53}
!61 = !{!55}
!62 = !{!55, !53, !47}
!63 = distinct !{!63, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!64 = distinct !{!64, !63, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!65 = distinct !{!65, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!66 = distinct !{!66, !65, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!67 = distinct !{!67, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!68 = distinct !{!68, !67, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!69 = distinct !{!69, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!70 = distinct !{!70, !69, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!71 = distinct !{!71, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!72 = distinct !{!72, !71, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!73 = !{!64}
!74 = !{!66}
!75 = !{!68}
!76 = !{!68, !66, !64}
!77 = !{!70}
!78 = !{!72}
!79 = !{!72, !70, !64}
!80 = distinct !{!80, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!81 = distinct !{!81, !80, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!82 = distinct !{!82, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!83 = distinct !{!83, !82, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!84 = distinct !{!84, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!85 = distinct !{!85, !84, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!86 = distinct !{!86, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!87 = distinct !{!87, !86, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!88 = distinct !{!88, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!89 = distinct !{!89, !88, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!90 = !{!81}
!91 = !{!83}
!92 = !{!85}
!93 = !{!85, !83, !81}
!94 = !{!87}
!95 = !{!89}
!96 = !{!89, !87, !81}
!97 = distinct !{!97, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!98 = distinct !{!98, !97, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!99 = distinct !{!99, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!100 = distinct !{!100, !99, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!101 = distinct !{!101, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!102 = distinct !{!102, !101, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!103 = distinct !{!103, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!104 = distinct !{!104, !103, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!105 = distinct !{!105, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!106 = distinct !{!106, !105, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!107 = !{!98}
!108 = !{!100}
!109 = !{!102}
!110 = !{!102, !100, !98}
!111 = !{!104}
!112 = !{!106}
!113 = !{!106, !104, !98}
!114 = distinct !{!114, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!115 = distinct !{!115, !114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!116 = distinct !{!116, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!117 = distinct !{!117, !116, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!118 = distinct !{!118, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!119 = distinct !{!119, !118, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!120 = distinct !{!120, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!121 = distinct !{!121, !120, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!122 = distinct !{!122, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!123 = distinct !{!123, !122, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!124 = !{!115}
!125 = !{!117}
!126 = !{!119}
!127 = !{!119, !117, !115}
!128 = !{!121}
!129 = !{!123}
!130 = !{!123, !121, !115}
!131 = distinct !{!131, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!132 = distinct !{!132, !131, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!133 = distinct !{!133, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!134 = distinct !{!134, !133, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!135 = distinct !{!135, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!136 = distinct !{!136, !135, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!137 = distinct !{!137, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!138 = distinct !{!138, !137, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!139 = distinct !{!139, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!140 = distinct !{!140, !139, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!141 = !{!132}
!142 = !{!134}
!143 = !{!136}
!144 = !{!136, !134, !132}
!145 = !{!138}
!146 = !{!140}
!147 = !{!140, !138, !132}
!148 = distinct !{!148, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!149 = distinct !{!149, !148, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!150 = distinct !{!150, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!151 = distinct !{!151, !150, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!152 = distinct !{!152, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!153 = distinct !{!153, !152, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!154 = distinct !{!154, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!155 = distinct !{!155, !154, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
!156 = distinct !{!156, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!157 = distinct !{!157, !156, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!158 = !{!149}
!159 = !{!151}
!160 = !{!153}
!161 = !{!153, !151, !149}
!162 = !{!155}
!163 = !{!157}
!164 = !{!157, !155, !149}
!165 = distinct !{!165, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_"}
!166 = distinct !{!166, !165, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_: argument 0"}
!167 = distinct !{!167, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_"}
!168 = distinct !{!168, !167, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1h_: argument 0"}
!169 = distinct !{!169, i1 false, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!170 = distinct !{!170, !169, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!171 = distinct !{!171, i1 false, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_"}
!172 = distinct !{!172, !171, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1j_: argument 0"}
end_hunk_2
