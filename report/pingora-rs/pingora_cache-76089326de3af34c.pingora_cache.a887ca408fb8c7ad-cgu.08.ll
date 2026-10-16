Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.08?download=true
inline.NumInlined: 450
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl7max_age:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !alias.scope !508
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !509
  call void @_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue22parse_as_delta_seconds(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !508
  %i.e = load i32, ptr %i.a, align 8, !range !21, !noalias !509, !noundef !4
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !509, !nonnull !4, !align !12, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !509
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !508
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noalias !509, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !509
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.l, align 4, !alias.scope !508
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.m, align 8, !alias.scope !508
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit: ; preds = %bb.c, %bb.e, %bb.f
  %storemerge.i = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !508
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl7private(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE3geteEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 7) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl21has_key_without_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl21has_key_without_value.exit

_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl21has_key_without_value.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl8no_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE3geteEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 8) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl21has_key_without_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl21has_key_without_value.exit

_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl21has_key_without_value.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl8no_store(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE12get_index_ofeEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 8)
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = icmp eq i64 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl8s_maxage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.b = tail call noundef align 8 ptr @_RINvMs3_NtCs3n24CldWWBu_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE3geteEB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 8), !noalias !514 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !10, !noalias !514, !noundef !4
  %.not3.i = icmp eq i64 %i.c, -1
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !alias.scope !514
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !515
  call void @_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue22parse_as_delta_seconds(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !514
  %i.e = load i32, ptr %i.a, align 8, !range !21, !noalias !515, !noundef !4
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !515, !nonnull !4, !align !12, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !514
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noalias !515, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.l, align 4, !alias.scope !514
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.m, align 8, !alias.scope !514
  br label %_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit

_RNvMs2_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB5_12CacheControl19parse_delta_seconds.exit: ; preds = %bb.c, %bb.e, %bb.f
  %storemerge.i = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !514
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE4sendCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !518, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8, !noalias !518
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.03.0.i = phi i64 [ %i.d, %bb.a ], [ %i.j, %bb.e ] ; 4 uses
  %i.e = and i64 %.sroa.03.0.i, 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %_RNvMs2_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE16inc_num_messagesCset5b41vfmiv_13pingora_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %.sroa.03.0.i, -2
  br i1 %i.f, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw i64 %.sroa.03.0.i, 2
  %i.h = cmpxchg ptr %i.c, i64 %.sroa.03.0.i, i64 %i.g acq_rel acquire, align 8, !noalias !518 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.b

_RNvMs2_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE16inc_num_messagesCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 208, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 208, i1 false)
  call void @_RNvMs6_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc4chanINtB5_2TxINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateENtNtB7_9unbounded9SemaphoreE4sendCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs2_NtNtNtCs2awuzAz5vY4_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEE16inc_num_messagesCset5b41vfmiv_13pingora_cache.exit
  ret void

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.k

bb.i:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8cfXl8C2jC4_13cf_rustracing4span12FinishedSpanNtNtCsd91icejGcOK_20cf_rustracing_jaeger4span16SpanContextStateEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(208) %2) #28
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !13, !alias.scope !527, !noundef !4
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEECset5b41vfmiv_13pingora_cache.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = inttoptr i64 %2 to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.s, align 8
  store i64 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.u, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheE3newCset5b41vfmiv_13pingora_cache.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEECset5b41vfmiv_13pingora_cache.exit
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #24
  unreachable

4:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #29
          to label %.noexc15 unwind label %5

.noexc15:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #28
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheE3newCset5b41vfmiv_13pingora_cache.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.by, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit22

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %14
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEE8try_lockCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !14, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %12, align 8, !nonnull !4, !align !12, !noundef !4 ; 9 uses
  %i.ab = load i8, ptr %13, align 8, !range !15, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !11

.noexc19:                                         ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit, !prof !5

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i64 %i.ad, -1                   ; 3 uses
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = load i64, ptr %i.an, align 8, !range !7, !noundef !4
  %i.aq = icmp samesign ult i64 %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.at = icmp ult i64 %i.ad, 1152921504606846977
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !align !12, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.aw, align 8
  store i64 0, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ba = trunc nuw i8 %i.ab to i1
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit22, !prof !5

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !528
  %i.bi = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 1401) 1400, i64 noundef 8) #16, !noalias !528 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !5

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #29
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #28
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bi, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %.val.i25 = load ptr, ptr %12, align 8, !alias.scope !529 ; 4 uses
  %.val3.i26 = load i8, ptr %13, align 8, !range !16, !alias.scope !529, !noundef !4 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bq = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !529
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !noalias !529
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !529
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !529
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32, !prof !5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !529
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECset5b41vfmiv_13pingora_cache.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEEECset5b41vfmiv_13pingora_cache.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !530
  %i.by = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 1401) 1400, i64 noundef 8) #16, !noalias !530 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %4, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheE3newCset5b41vfmiv_13pingora_cache.exit9, !prof !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !536, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !536, !noundef !4 ; 3 uses
  %i.i = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_prefixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56), !noalias !536 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvMs_NtCset5b41vfmiv_13pingora_cache13cache_controlNtB4_14DirectiveValue14parse_as_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSh12strip_suffixAhj1_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @56), !noalias !536 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 28, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !537
  store i64 0, ptr %i.b, align 8, !noalias !537
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @55, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !537
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 29, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !537
  %i.r = call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_3str5error9Utf8ErrorE4fromCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a), !noalias !537 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !537
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = call fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.s, ptr %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !537
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
end_hunk_0
