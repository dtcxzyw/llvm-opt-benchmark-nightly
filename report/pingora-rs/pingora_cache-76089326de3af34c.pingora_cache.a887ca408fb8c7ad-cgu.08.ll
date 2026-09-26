Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.08?download=true
inline.NumInlined: 450
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE5closeCset5b41vfmiv_13pingora_cache:bb.a
  br i1 %i.w, label %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE10find_blockCset5b41vfmiv_13pingora_cache.exit, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.x = cmpxchg ptr %0, ptr %.sroa.05.09.i, ptr %.sroa.02.0.i release monotonic, align 8
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.z = atomicrmw or ptr %i.a, i64 0 release, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 6680
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = atomicrmw or ptr %i.p, i64 4294967296 release, align 8 ; 0 uses
  br label %bb.e

_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE10find_blockCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.e, %bb.a
  %.sroa.05.0.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %.sroa.02.0.i, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.lcssa.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 6672
  %i.ad = atomicrmw or ptr %i.ac, i64 8589934592 release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_13ListValueIter4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !315, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !315, !noundef !4 ; 3 uses
  %i.e = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_prefixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56), !noalias !315 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_suffixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56), !noalias !315 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %.not16.i = icmp eq ptr %i.i, null              ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %spec.select.i = select i1 %.not16.i, i64 %i.d, i64 %i.j
  %spec.select17.i = select i1 %.not16.i, ptr %i.b, ptr %i.i
  br label %_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit

_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.d, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %spec.select17.i, %bb.b ], [ %i.b, %bb.a ]
  store ptr %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_RNvYNCNvMs0_NtCset5b41vfmiv_13pingora_cache13cache_controlNtBa_13ListValueIter4from0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRhEE9call_onceBc_, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE11free_blocksCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.02 = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 6664
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8 ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.02, i64 noundef 6688, i64 noundef 8) #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE3popCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !320, !noundef !4
  %i.d = and i64 %i.c, -32                        ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !320 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 6656
  %i.f = load i64, ptr %i.e, align 8, !noalias !320, !noundef !4
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.j, %bb.b ], [ %.promoted.i, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 6664
  %i.j = load atomic ptr, ptr %i.i acquire, align 8, !noalias !320 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE18try_advancing_headCset5b41vfmiv_13pingora_cache.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  store ptr %i.j, ptr %1, align 8, !alias.scope !320
  tail call void @llvm.x86.sse2.pause(), !noalias !320
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 6656
  %i.l = load i64, ptr %i.k, align 8, !noalias !320, !noundef !4
  %i.m = icmp eq i64 %i.l, %i.d
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE18try_advancing_headCset5b41vfmiv_13pingora_cache.exit: ; preds = %.lr.ph.i
  store i64 -2, ptr %0, align 8
  br label %bb.h

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %.promoted.i, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted.i1 = load ptr, ptr %i.o, align 8, !alias.scope !321 ; 3 uses
  %.not8.i = icmp eq ptr %.promoted.i1, %i.n
  br i1 %.not8.i, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE14reclaim_blocksCset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i2.preheader

.lr.ph.i2.preheader:                              ; preds = %.loopexit
  %i.p = tail call { i64, i64 } @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE22observed_tail_positionCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %.promoted.i1), !noalias !321 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = extractvalue { i64, i64 } %i.p, 1
  %i.t = load i64, ptr %i.b, align 8, !alias.scope !321
  %i.u = icmp ule i64 %i.s, %i.t
  %or.cond.not.i14 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond.not.i14, label %.lr.ph, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE14reclaim_blocksCset5b41vfmiv_13pingora_cache.exit

.lr.ph.i2:                                        ; preds = %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i
  %i.v = call { i64, i64 } @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE22observed_tail_positionCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.ad), !noalias !321 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = extractvalue { i64, i64 } %i.v, 1
  %i.z = load i64, ptr %i.b, align 8, !alias.scope !321
  %i.aa = icmp ule i64 %i.y, %i.z
  %or.cond.not.i = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond.not.i, label %.lr.ph, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE14reclaim_blocksCset5b41vfmiv_13pingora_cache.exit

.lr.ph:                                           ; preds = %.lr.ph.i2.preheader, %.lr.ph.i2
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i2 ], [ %.promoted.i1, %.lr.ph.i2.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6664
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8, !noalias !321 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.c, !prof !5

bb.c:                                             ; preds = %.lr.ph
  store ptr %i.ad, ptr %i.o, align 8, !alias.scope !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  store ptr %i.ab, ptr %i.a, align 8, !noalias !321
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 6656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !noalias !321
  %i.ag = load atomic ptr, ptr %2 acquire, align 8, !noalias !321, !nonnull !4, !noundef !4
  %i.ah = call noundef ptr @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE8try_pushCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef 3, i8 noundef 2), !noalias !321 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = call noundef ptr @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE8try_pushCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef 3, i8 noundef 2), !noalias !321 ; 2 uses
  %.not.1.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.1.i.i, label %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = call noundef ptr @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE8try_pushCset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef 3, i8 noundef 2), !noalias !321
  %.not.2.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.2.i.i, label %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.a, align 8, !noalias !321, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 6688, i64 noundef 8) #16, !noalias !321
  br label %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i

_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  call void @llvm.x86.sse2.pause(), !noalias !321
  %i.al = load ptr, ptr %1, align 8, !alias.scope !321, !nonnull !4, !noundef !4 ; 3 uses
  %.not.i3 = icmp eq ptr %i.ad, %i.al
  br i1 %.not.i3, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE14reclaim_blocksCset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i2

bb.g:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !321
  unreachable

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE14reclaim_blocksCset5b41vfmiv_13pingora_cache.exit: ; preds = %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i, %.lr.ph.i2, %.lr.ph.i2.preheader, %.loopexit
  %i.am = phi ptr [ %i.n, %.loopexit ], [ %i.n, %.lr.ph.i2.preheader ], [ %i.al, %.lr.ph.i2 ], [ %i.al, %_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB2_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE13reclaim_blockCset5b41vfmiv_13pingora_cache.exit.i ]
  %i.an = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  call void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE4readCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 %i.am, i64 noundef %i.an)
  %i.ao = load i64, ptr %0, align 8, !range !18, !noundef !4
  %switch = icmp ugt i64 %i.ao, -3
  br i1 %switch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE14reclaim_blocksCset5b41vfmiv_13pingora_cache.exit, %bb.i, %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE18try_advancing_headCset5b41vfmiv_13pingora_cache.exit
  ret void

bb.i:                                             ; preds = %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4listINtB5_2RxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE14reclaim_blocksCset5b41vfmiv_13pingora_cache.exit
  %i.ap = add i64 %i.an, 1
  store i64 %i.ap, ptr %i.b, align 8
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr nonnull %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.d(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i128, ptr %i.a, align 16, !noundef !4
  %i.f = icmp eq i128 %i.e, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i8, ptr %i.h, align 8, !range !16, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1 = phi i8 [ %i.i, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.0.1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %3, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !324
  %i.o = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 1401) 72, i64 noundef 8) #16, !noalias !324 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.h, !prof !5

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #28
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.o

bb.i:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECset5b41vfmiv_13pingora_cache(ptr nonnull %2, ptr nonnull %3) #28
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.critedge:                                        ; preds = %bb.k, %bb.f
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body10

bb.k:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #28
  br label %.critedge
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl14only_if_cached(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE12get_index_ofeEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 14)
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = icmp eq i64 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl14stale_if_error(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.b = tail call noundef align 8 ptr @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE3geteEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 14), !noalias !329 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !10, !noalias !329, !noundef !4
  %.not3.i = icmp eq i64 %i.c, -1
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !alias.scope !329, !noalias !330
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !331
  call void @_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue22parse_as_delta_seconds(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !329
  %i.e = load i32, ptr %i.a, align 8, !range !21, !noalias !331, !noundef !4
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !331, !nonnull !4, !align !12, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !331
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !329, !noalias !330
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noalias !331, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !331
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.l, align 4, !alias.scope !329, !noalias !330
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.m, align 8, !alias.scope !329, !noalias !330
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit: ; preds = %bb.c, %bb.e, %bb.f
  %storemerge.i = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !329, !noalias !330
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl15must_revalidate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE12get_index_ofeEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 15)
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = icmp eq i64 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl16from_req_headers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl18from_headers_named(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl16proxy_revalidate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE12get_index_ofeEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 16)
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = icmp eq i64 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl17from_resp_headers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl18from_headers_named(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl18from_headers_named(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.419.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [56 x i8], align 8          ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCset5b41vfmiv_13pingora_cache:bb.a
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32, !prof !5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !552
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32: ; preds = %bb.z, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !553
  %i.cg = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 1401) 1400, i64 noundef 8) #16, !noalias !553 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.h, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheE3newCset5b41vfmiv_13pingora_cache.exit9, !prof !5
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_6borrow3CoweEIB1k_ShEE12insert_entryCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_6borrow3CoweEIB1t_ShENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECset5b41vfmiv_13pingora_cache()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  store ptr %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweEIB1q_ShENtB19_4LeafE16push_with_handleCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  store ptr %i.v, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_6borrow3CoweEIB1E_ShENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3e_11VacantEntryB1D_B1Y_E12insert_entry0ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
          to label %bb.h unwind label %bb.f

.critedge9:                                       ; preds = %bb.h
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #28
          to label %.critedge9 unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtBd_6borrow3CoweEIB1m_ShEE6insertCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweEIB1D_ShENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtBd_6borrow3CoweEIB1m_ShEE8into_mutCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweEIB1D_ShENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue12parse_as_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !559, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !559, !noundef !4 ; 3 uses
  %i.i = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_prefixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56), !noalias !559 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_suffixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56), !noalias !559 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %.not16.i = icmp eq ptr %i.m, null              ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  %spec.select.i = select i1 %.not16.i, i64 %i.h, i64 %i.n
  %spec.select17.i = select i1 %.not16.i, ptr %i.f, ptr %i.m
  br label %_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit

_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.h, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %spec.select17.i, %bb.b ], [ %i.f, %bb.a ]
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.4.0.i)
  %i.o = load i64, ptr %i.d, align 8, !range !14, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 28, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !560
  store i64 0, ptr %i.b, align 8, !noalias !560
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @55, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !560
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 29, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !560
  %i.r = call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_3str5error9Utf8ErrorE4fromCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a), !noalias !560 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = call fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.s, ptr %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !560
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink1 = phi i64 [ %i.v, %bb.c ], [ %i.y, %bb.d ]
  %.sink = phi ptr [ null, %bb.c ], [ %i.w, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1, ptr %i.z, align 8
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_prefixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_suffixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %.not16 = icmp eq ptr %i.i, null                ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %spec.select = select i1 %.not16, i64 %i.d, i64 %i.j
  %spec.select17 = select i1 %.not16, ptr %i.b, ptr %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %spec.select, %bb.b ], [ %i.d, %bb.a ]
  %.sroa.0.0 = phi ptr [ %spec.select17, %bb.b ], [ %i.b, %bb.a ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue22parse_as_delta_seconds(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue12parse_as_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !12, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i32 1, ptr %0, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i64 %i.i, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !alias.scope !565, !noundef !4 ; 2 uses
  switch i8 %i.j, label %bb.e [
    i8 43, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
    i8 45, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.d, align 1, !alias.scope !565
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.k = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.j, %bb.d ]
  %cond.i = icmp eq i8 %i.k, 43                   ; 2 uses
  %i.l = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.i, %i.l          ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.m = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.m, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.h
  %.not55.i = icmp eq i64 %i.q, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.cc, %bb.p ], [ 0, %.preheader.i ], [ %i.ae, %bb.i ], [ %i.am, %bb.j ], [ %i.at, %bb.k ], [ %i.ba, %bb.l ], [ %i.bh, %bb.m ], [ %i.bo, %bb.n ], [ %i.bv, %bb.o ], [ %i.aa, %.preheader60.i ]
  %i.n = zext i32 %.sroa.045.1.i to i64
  %i.o = shl nuw i64 %i.n, 32
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %bb.e, %.preheader60.i
  %.sroa.0.1.i50 = phi ptr [ %i.p, %.preheader60.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i49 = phi i64 [ %i.q, %.preheader60.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.045.0.i48 = phi i32 [ %i.aa, %.preheader60.i ], [ 0, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i50, i64 1
  %i.q = add nsw i64 %.sroa.15.1.i49, -1          ; 2 uses
  %i.r = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i48, i32 10) ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 0         ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.r, 1
  %i.u = load i8, ptr %.sroa.0.1.i50, align 1, !alias.scope !565, !noundef !4 ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %.preheader60.i.preheader
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.h, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.g:                                             ; preds = %.preheader60.i.preheader
  %i.y = add i8 %i.u, -48
  %i.z = icmp ult i8 %i.y, 10
  %spec.select.i = select i1 %i.z, i64 513, i64 257
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = add i32 %i.w, %i.s                      ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %i.s
  br i1 %i.ab, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread30, label %.preheader60.i, !prof !5

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ac = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !565, !noundef !4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 3 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.i, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.i:                                             ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !565, !noundef !4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.j, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.al = mul nuw nsw i32 %i.ae, 10
  %i.am = add nuw nsw i32 %i.aj, %i.al            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !565, !noundef !4
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 10
  br i1 %i.ar, label %bb.k, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.k:                                             ; preds = %.lr.ph.i.2
  %i.as = mul nuw nsw i32 %i.am, 10
  %i.at = add nuw nsw i32 %i.aq, %i.as            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !565, !noundef !4
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 10
  br i1 %i.ay, label %bb.l, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.l:                                             ; preds = %.lr.ph.i.3
  %i.az = mul nuw nsw i32 %i.at, 10
  %i.ba = add nuw nsw i32 %i.ax, %i.az            ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !565, !noundef !4
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.m, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.m:                                             ; preds = %.lr.ph.i.4
  %i.bg = mul i32 %i.ba, 10
  %i.bh = add i32 %i.be, %i.bg                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !565, !noundef !4
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.n, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.n:                                             ; preds = %.lr.ph.i.5
  %i.bn = mul i32 %i.bh, 10
  %i.bo = add i32 %i.bl, %i.bn                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !565, !noundef !4
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.o, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.bu = mul i32 %i.bo, 10
  %i.bv = add i32 %i.bs, %i.bu                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !565, !noundef !4
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -48                  ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 10
  br i1 %i.ca, label %bb.p, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.p:                                             ; preds = %.lr.ph.i.7
  %i.cb = mul i32 %i.bv, 10
  %i.cc = add i32 %i.bz, %i.cb
  br label %.loopexit.i

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.g
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.g ], [ %i.o, %.loopexit.i ] ; 4 uses
  %i.cd = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.cd, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.q

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit
  %i.ce = and i64 %.sroa.8.0.insert.insert.i, 768
  %i.cf = icmp eq i64 %i.ce, 512
  br i1 %i.cf, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread30, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread

bb.q:                                             ; preds = %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.66.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.66.0.extract.trunc = trunc nuw i64 %.sroa.66.0.extract.shift to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.66.0.extract.trunc, ptr %i.cg, align 4
  store i32 0, ptr %0, align 8
  br label %bb.r

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread: ; preds = %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.c, %bb.d, %bb.d, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %.sroa.8.0.insert.insert.i1029 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread ], [ 257, %.lr.ph.i ], [ 1, %bb.c ], [ 257, %bb.d ], [ 257, %bb.d ], [ 257, %.lr.ph.i.7 ], [ 257, %.lr.ph.i.6 ], [ 257, %.lr.ph.i.5 ], [ 257, %.lr.ph.i.4 ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.f ]
  %.sroa.4.0.extract.trunc11.in = lshr i64 %.sroa.8.0.insert.insert.i1029, 8
  %.sroa.4.0.extract.trunc11 = trunc i64 %.sroa.4.0.extract.trunc11.in to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 28, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !566
  store i64 0, ptr %i.a, align 8, !noalias !566
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @57, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !566
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 28, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !566
  %i.ch = tail call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_3num5error13ParseIntErrorE4fromCset5b41vfmiv_13pingora_cache(i8 noundef range(i8 0, 6) %.sroa.4.0.extract.trunc11), !noalias !566 ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.ck = call fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.ci, ptr %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !566
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread30: ; preds = %bb.h, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2147483647, ptr %i.cm, align 4
  store i32 0, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread30, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.thread, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs2awuzAz5vY4_5tokio4util12sharded_listINtB4_10ShardGuardINtNtNtB8_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB18_9scheduler14current_thread6HandleEEE4pushCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !range !20, !noundef !4 ; 2 uses
  store i64 %i.i, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8, !noundef !4
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #29
          to label %bb.j unwind label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !align !12, !noundef !4 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !569
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !569, !noundef !4 ; 5 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.s = load i64, ptr %i.r, align 8, !noalias !569, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.p, ptr %i.u, align 8, !noalias !569
  %i.v = load ptr, ptr %i.d, align 8, !noalias !569, !nonnull !4, !align !12, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i64, ptr %i.w, align 8, !noalias !569, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  store ptr null, ptr %i.y, align 8, !noalias !569
  %.not1.i = icmp eq ptr %i.p, null
  br i1 %.not1.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core6HeaderEEBM_ECskeugdADtBsi_12pingora_core(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #24
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !569, !nonnull !4, !align !12, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !569, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ac
  store ptr %1, ptr %i.ad, align 8, !noalias !569
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  store ptr %1, ptr %i.o, align 8, !alias.scope !569
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !569, !noundef !4
  %.not2.i = icmp eq ptr %i.af, null
  br i1 %.not2.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.ae, align 8, !alias.scope !569
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !12, !noundef !4
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !12, !noundef !4
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load i8, ptr %i.am, align 8, !range !15, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ao = trunc nuw i8 %.val5 to i1
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.as = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECset5b41vfmiv_13pingora_cache.exit, !prof !5

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.o
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit_crit_edge, %bb.b
  %.val2 = phi ptr [ %i.n, %bb.b ], [ %.val2.pre, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit_crit_edge ]
  %i.av = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.ax, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit_crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load i8, ptr %i.aw, align 8, !range !15, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECset5b41vfmiv_13pingora_cache(ptr nonnull %.val2, i8 %.val3) #28
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit_crit_edge unwind label %bb.q

._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit_crit_edge: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit

bb.q:                                             ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECset5b41vfmiv_13pingora_cache.exit
  resume { ptr, i32 } %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs2awuzAz5vY4_5tokio4util12sharded_listINtB4_10ShardGuardINtNtNtB8_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB18_9scheduler12multi_thread6handle6HandleEEE4pushCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !range !20, !noundef !4 ; 2 uses
  store i64 %i.i, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8, !noundef !4
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBG_9scheduler12multi_thread6handle6HandleEEECset5b41vfmiv_13pingora_cache.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #29
          to label %bb.j unwind label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
