Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.08?download=true
inline.NumInlined: 1438
inline.NumDeleted: 712
begin_hunk_0_@_RNvXs0_NtNtCsdBNFPP92xfl_5tower4util5readyINtB5_12ReadyOneshotNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB18_4body4BodyEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16120
  %i.g = load ptr, ptr %i.f, align 8, !dbg !16120, !noundef !734 ; 2 uses
  %.not16 = icmp eq ptr %i.g, null, !dbg !16133
  br i1 %.not16, label %bb.g, label %bb.f, !dbg !16134

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16120
  %i.i = load ptr, ptr %i.h, align 8, !dbg !16120, !nonnull !734, !noundef !734
  store i64 1, ptr %0, align 8, !dbg !16135
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16135
  store ptr %i.g, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !16135
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16135
  store ptr %i.i, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !16135
  br label %bb.k, !dbg !16136

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16136
  %i.j = load ptr, ptr %1, align 8, !dbg !16137, !noundef !734 ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !dbg !16137 ; 2 uses
  store ptr null, ptr %1, align 8, !dbg !16138
  %.not17 = icmp eq ptr %i.j, null, !dbg !16139
  br i1 %.not17, label %bb.i, label %bb.h, !dbg !16140, !prof !995

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store i64 0, ptr %0, align 8, !dbg !16141
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16141
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !16141
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16141
  store ptr %i.k, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !16141
  br label %bb.j, !dbg !16142

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #34, !dbg !16143
  unreachable, !dbg !16143

bb.j:                                             ; preds = %bb.k, %bb.h
  ret void, !dbg !16142

bb.k:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16136
  br label %bb.j, !dbg !16142
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1o_6future6future6Futurep6OutputINtNtB1o_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1o_6marker4SendEL_EEENtB5_7ArcWake11wake_by_refCsbaWXNhtWAp9_11foundations(ptr %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !16144 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16204
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !16205 ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !dbg !16206, !nonnull !734, !noundef !734 ; 8 uses
  %i.c = icmp eq ptr %.val, inttoptr (i64 -1 to ptr), !dbg !16207
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit4, label %bb.b, !dbg !16208

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %.val monotonic, align 8, !dbg !16209
  br label %bb.c, !dbg !16210

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %bb.f ], !dbg !16211 ; 4 uses
  %i.e = icmp eq i64 %.sroa.06.0.i.i, 0, !dbg !16212
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit4, label %bb.d, !dbg !16212

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %.sroa.06.0.i.i, 0, !dbg !16213
  br i1 %i.f, label %bb.e, label %bb.f, !dbg !16213, !prof !995

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs1xwejQucwHj_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #34, !dbg !16214
  unreachable, !dbg !16214

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %.sroa.06.0.i.i, 1, !dbg !16215
  %i.h = cmpxchg weak ptr %.val, i64 %.sroa.06.0.i.i, i64 %i.g acquire monotonic, align 8, !dbg !16216 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1, !dbg !16216
  %i.j = extractvalue { i64, i1 } %i.h, 0, !dbg !16216
  br i1 %i.i, label %bb.i, label %bb.c, !dbg !16217

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit4: ; preds = %bb.c, %bb.a, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16218
  ret void, !dbg !16219

bb.g:                                             ; preds = %bb.l
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = atomicrmw add ptr %.val, i64 -1 release, align 8, !dbg !16220, !noalias !16197
  %i.m = icmp eq i64 %i.l, 1, !dbg !16221
  br i1 %i.m, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit, !dbg !16221

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !16222
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputINtNtB2n_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2n_6marker4SendEL_EEEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #32
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.m, !dbg !16223

bb.i:                                             ; preds = %bb.f
  store ptr %.val, ptr %i.a, align 8, !dbg !16224
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 73, !dbg !16225
  store atomic i8 1, ptr %i.n monotonic, align 1, !dbg !16226
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 72, !dbg !16227
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1, !dbg !16228
  %.not3 = icmp eq i8 %i.p, 0, !dbg !16202
  br i1 %.not3, label %bb.l, label %bb.j, !dbg !16229

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.q = atomicrmw add ptr %.val, i64 -1 release, align 8, !dbg !16230, !noalias !16203
  %i.r = icmp eq i64 %i.q, 1, !dbg !16231
  br i1 %i.r, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit4, !dbg !16231

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !16232
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputINtNtB2n_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2n_6marker4SendEL_EEEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #32, !dbg !16233
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit4, !dbg !16233

bb.l:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 64, !dbg !16234
  store atomic ptr null, ptr %i.s monotonic, align 8, !dbg !16235
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !16236
  %i.u = atomicrmw xchg ptr %i.t, ptr %i.b acq_rel, align 8, !dbg !16237
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !16238
  store atomic ptr %i.b, ptr %i.v release, align 8, !dbg !16239
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !16240
  invoke void @_RNvMNtNtNtCs9Hva1InW082_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.w)
          to label %bb.j unwind label %bb.g, !dbg !16241

bb.m:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !16242
  unreachable, !dbg !16242

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.k, !dbg !16242
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing10rate_limitNtB5_32RateLimitingProbabilisticSamplerINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateE10is_sampledBb_(ptr noundef nonnull align 8 %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !16243 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16323
  %i.c = tail call noundef nonnull ptr @_RNvNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread3rng(), !dbg !16323
  store ptr %i.c, ptr %i.a, align 8, !dbg !16323
  %i.d = invoke noundef double @_RINvYNtNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.d unwind label %bb.b, !dbg !16324

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !16305), !dbg !16325
  call void @llvm.experimental.noalias.scope.decl(metadata !16306), !dbg !16326
  call void @llvm.experimental.noalias.scope.decl(metadata !16307), !dbg !16327
  %i.f = load ptr, ptr %i.a, align 8, !dbg !16328, !alias.scope !16308, !nonnull !734, !noundef !734 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !16329, !noalias !16308, !noundef !734
  %i.h = add i64 %i.g, -1, !dbg !16330            ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !dbg !16331, !noalias !16308
  %i.i = icmp eq i64 %i.h, 0, !dbg !16332
  br i1 %i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread9ThreadRngECsbaWXNhtWAp9_11foundations.exit.i, !dbg !16332

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtCsiDrDGaT3qEB_9rand_core5block8BlockRngNtNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #32
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread9ThreadRngECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.f, !dbg !16333

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !16312), !dbg !16325
  call void @llvm.experimental.noalias.scope.decl(metadata !16313), !dbg !16334
  call void @llvm.experimental.noalias.scope.decl(metadata !16314), !dbg !16335
  %i.j = load ptr, ptr %i.a, align 8, !dbg !16336, !alias.scope !16315, !nonnull !734, !noundef !734 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !16337, !noalias !16315, !noundef !734
  %i.l = add i64 %i.k, -1, !dbg !16338            ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !dbg !16339, !noalias !16315
  %i.m = icmp eq i64 %i.l, 0, !dbg !16340
  br i1 %i.m, label %bb.e, label %_RINvCs3ZeXDd4Wx7Y_4rand12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations.exit, !dbg !16340

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtCsiDrDGaT3qEB_9rand_core5block8BlockRngNtNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #32, !dbg !16341
  br label %_RINvCs3ZeXDd4Wx7Y_4rand12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations.exit, !dbg !16341

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !16342
  unreachable, !dbg !16342

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread9ThreadRngECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e, !dbg !16342

_RINvCs3ZeXDd4Wx7Y_4rand12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16325
  %i.o = load double, ptr %0, align 8, !dbg !16343, !noundef !734
  %i.p = fcmp olt double %i.d, %i.o, !dbg !16344
  br i1 %i.p, label %bb.g, label %bb.h, !dbg !16345

bb.g:                                             ; preds = %_RINvCs3ZeXDd4Wx7Y_4rand12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16346 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !dbg !16346, !noundef !734
  %.not = icmp eq ptr %i.r, null, !dbg !16346
  br i1 %.not, label %bb.h, label %bb.i, !dbg !16347

bb.h:                                             ; preds = %bb.i, %bb.g, %_RINvCs3ZeXDd4Wx7Y_4rand12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvCs3ZeXDd4Wx7Y_4rand12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations.exit ], [ %3, %bb.i ], [ true, %bb.g ], !dbg !16348
  ret i1 %.sroa.0.0, !dbg !16349

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16350
  call void @_RNvMs1_NtNtCsgtgatFLTNh8_8governor5state6directINtB7_11RateLimiterNtB5_8NotKeyedNtNtB7_9in_memory13InMemoryStateNtNtCsbaWXNhtWAp9_11foundations9ratelimit17StaticQuantaClockINtNtB9_10middleware14NoOpMiddlewareNtNtNtB9_5clock6quanta13QuantaInstantEE5checkB1Q_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.q), !dbg !16351
  %i.s = load i64, ptr %i.b, align 8, !dbg !16352, !range !765, !noundef !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16353
  %2 = trunc nuw i64 %i.s to i1, !dbg !16354
  %3 = xor i1 %2, true, !dbg !16354
  br label %bb.h, !dbg !16355
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings10rate_limits_1__NtBa_20RateLimitingSettingsNtNtCs5FjQZcNRzHx_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1K_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16356 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 27), !dbg !16358
  ret i1 %i.a, !dbg !16359
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs26L2cHvO7VQ_13cf_rustracing7samplerNtB5_14PassiveSamplerINtB5_7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateE10is_sampledCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #13 !dbg !16360 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16367
  %i.b = load i64, ptr %i.a, align 8, !dbg !16367, !noundef !734
  %i.c = icmp ne i64 %i.b, 0, !dbg !16368
  ret i1 %i.c, !dbg !16369
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs7XllS0bOcsN_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16370 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16372
  %.val = load ptr, ptr %i.a, align 8, !dbg !16372, !nonnull !734, !noundef !734
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16372
  %.val1 = load i64, ptr %i.b, align 8, !dbg !16372, !noundef !734
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16373
  ret i1 %i.c, !dbg !16374
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs7XllS0bOcsN_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtB1K_3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16375 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16377
  %.val = load ptr, ptr %i.a, align 8, !dbg !16377, !nonnull !734, !noundef !734
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16377
  %.val1 = load i64, ptr %i.b, align 8, !dbg !16377, !noundef !734
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16378
  ret i1 %i.c, !dbg !16379
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs7XllS0bOcsN_6anyhow7contextINtNtB7_5error12ContextErrorReINtNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast5error9SendErrorNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16380 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16381
  ret i1 %i.a, !dbg !16382
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs7XllS0bOcsN_6anyhow7contextINtNtB7_5error12ContextErrorReNtB7_5ErrorENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16383 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16384
  ret i1 %i.a, !dbg !16385
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs7XllS0bOcsN_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16386 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16387
  ret i1 %i.a, !dbg !16388
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCsfUalJnHtWpm_5tonic9transport5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 !dbg !677 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !16390, !noundef !734 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !16390
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16391
  %i.c = load ptr, ptr %i.b, align 8, !dbg !16391, !nonnull !734, !align !858
  %.sroa.3.0 = select i1 %.not, ptr undef, ptr %i.c, !dbg !16391
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0, !dbg !16392
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %.sroa.3.0, 1, !dbg !16392
  ret { ptr, ptr } %i.e, !dbg !16392
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing10rate_limitNtB5_32RateLimitingProbabilisticSamplerNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !16393 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16395
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16395
  store ptr %i.b, ptr %i.a, align 8, !dbg !16395
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108), !dbg !16396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16397
  ret i1 %i.c, !dbg !16398
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBB_5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1I_4SyncEL_EENtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16399 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !16404, !nonnull !734, !align !858, !noundef !734
  %.val = load ptr, ptr %i.a, align 8, !dbg !16405, !nonnull !734, !noundef !734
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !16406
  %i.c = tail call noundef zeroext i1 @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16407
  ret i1 %i.c, !dbg !16408
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell10AtomicCellyEENtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16409 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !16414, !nonnull !734, !align !858, !noundef !734
  %.val = load ptr, ptr %i.a, align 8, !dbg !16415, !nonnull !734, !noundef !734
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !16416
  %i.c = tail call noundef zeroext i1 @_RNvXsa_NtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellyENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !16417
  ret i1 %i.c, !dbg !16418
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskPybTjkUzGz_6quanta4mock4MockENtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !16419 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !16436, !nonnull !734, !align !858, !noundef !734
  %.val = load ptr, ptr %i.b, align 8, !dbg !16437, !nonnull !734, !noundef !734
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !16438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16439, !noalias !16431
  store ptr %i.c, ptr %i.a, align 8, !dbg !16439, !noalias !16431
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104), !dbg !16440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16441, !noalias !16431
  ret i1 %i.d, !dbg !16442
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2L_CscuJkFUZt1a2_4slogNtB6_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !16443 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !dbg !16447, !range !809, !noundef !734
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16447 ; 2 uses
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !16447

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16448
  store ptr %i.d, ptr %i.b, align 8, !dbg !16448
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @112), !dbg !16449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16450
  br label %bb.e, !dbg !16450

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16451
  store ptr %i.d, ptr %i.a, align 8, !dbg !16451
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114), !dbg !16452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16450
  br label %bb.e, !dbg !16450

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 5), !dbg !16447
  br label %bb.e, !dbg !16447

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !16453
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs26L2cHvO7VQ_13cf_rustracing7samplerNtB5_11NullSamplerINtB5_7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateE10is_sampledCsbaWXNhtWAp9_11foundations(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 !dbg !16454 {
bb.a:
  ret i1 false, !dbg !16456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs2_NtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11description(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #13 !dbg !16457 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !16460, !range !891, !noundef !734 ; 2 uses
  %i.b = icmp ult i32 %i.a, 23, !dbg !16461
  br i1 %i.b, label %switch.lookup, label %bb.b, !dbg !16461

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add i32 %i.a, -1, !dbg !16461 ; 2 uses
  %i.c = zext nneg i32 %switch.tableidx to i64, !dbg !16461
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11description, i64 %i.c, !dbg !16461
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !16461
  %switch.ext = zext i8 %switch.load to i64, !dbg !16461
  %i.d = zext nneg i32 %switch.tableidx to i64, !dbg !16461
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11description.294, i64 %i.d, !dbg !16461
  %switch.load3 = load ptr, ptr %switch.gep2, align 8, !dbg !16461
  br label %bb.b, !dbg !16461

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.3.0 = phi i64 [ 13, %bb.a ], [ %switch.ext, %switch.lookup ], !dbg !16462
  %.sroa.0.0 = phi ptr [ @122, %bb.a ], [ %switch.load3, %switch.lookup ], !dbg !16462
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !16463
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.3.0, 1, !dbg !16463
  ret { ptr, i64 } %i.f, !dbg !16463
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5cause(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #14 !dbg !16464 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !16465
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs79E7Zj1jVsL_17tikv_jemalloc_ctl5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #14 !dbg !16466 {
end_hunk_0
