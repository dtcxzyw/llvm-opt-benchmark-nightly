Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.14?download=true
inline.NumInlined: 173
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter11on_new_spanINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2k_EECslIemzedAtQF_5bench:bb.a
    #dbg_value(i8 1, !2913, !DIExpression(), !2921)
    #dbg_value(i8 0, !2920, !DIExpression(), !2921)
  %i.ci = trunc nuw i8 %i.by to i1, !dbg !2923
  br i1 %i.ci, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.t, !dbg !2923

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECslIemzedAtQF_5bench.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2904, !DIExpression(), !2905)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !2924)
    #dbg_value(i8 0, !2761, !DIExpression(), !2924)
  %i.cj = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2926
  %i.ck = and i64 %i.cj, 9223372036854775807, !dbg !2927
  %i.cl = icmp eq i64 %i.ck, 0, !dbg !2927
  br i1 %i.cl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.u, !dbg !2927, !prof !1872

bb.u:                                             ; preds = %bb.t
  %i.cm = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc50 unwind label %.thread91, !dbg !2928

.noexc50:                                         ; preds = %bb.u
  br i1 %i.cm, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v, !dbg !2929

bb.v:                                             ; preds = %.noexc50
    #dbg_value(ptr %i.ch, !2919, !DIExpression(), !2930)
    #dbg_value(ptr %i.ch, !2931, !DIExpression(), !2938)
    #dbg_value(i8 1, !2936, !DIExpression(), !2938)
    #dbg_value(i8 0, !2937, !DIExpression(), !2938)
  store atomic i8 1, ptr %i.ch monotonic, align 8, !dbg !2940
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !2941

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.v, %.noexc50, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECslIemzedAtQF_5bench.exit
    #dbg_value(ptr %i.bw, !2878, !DIExpression(), !2942)
    #dbg_value(ptr %i.bw, !2871, !DIExpression(), !2943)
    #dbg_value(ptr %i.bw, !2885, !DIExpression(), !2887)
  %i.cn = atomicrmw sub ptr %i.bw, i32 1073741823 release, align 4, !dbg !2944
  %i.co = add i32 %i.cn, -1073741823, !dbg !2945  ; 2 uses
    #dbg_value(i32 %i.co, !2879, !DIExpression(), !2946)
  %or.cond.not.i.i = icmp ult i32 %i.co, 1073741824, !dbg !2947
  br i1 %or.cond.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, label %bb.w, !dbg !2947, !prof !2948

bb.w:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.bw, i32 noundef %i.co)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit unwind label %.thread91, !dbg !2949

.thread91:                                        ; preds = %bb.u, %bb.w
  %lpad.thr_comm89.a = landingpad { ptr, i32 }
          cleanup
  br label %.body67, !dbg !2804

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2778
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, !dbg !2950

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76, %bb.i, %.body, %bb.am, %bb.al
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !2951
  unreachable, !dbg !2951

bb.y:                                             ; preds = %_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2n_5field9SpanMatchEEE5writeCslIemzedAtQF_5bench.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !1724, !DIExpression(), !1742)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !2952)
    #dbg_value(i8 0, !2761, !DIExpression(), !2952)
  %i.cq = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2954
  %i.cr = and i64 %i.cq, 9223372036854775807, !dbg !2955
  %i.cs = icmp eq i64 %i.cr, 0, !dbg !2955
  br i1 %i.cs, label %bb.aa, label %bb.z, !dbg !2955

bb.z:                                             ; preds = %bb.y
  %i.ct = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.ab unwind label %bb.al, !dbg !2956

bb.aa:                                            ; preds = %bb.y, %bb.ab
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
          to label %bb.ac unwind label %bb.al, !dbg !2957

bb.ab:                                            ; preds = %bb.z
  br i1 %i.ct, label %bb.aa, label %bb.ad, !dbg !2958, !prof !2564

bb.ac:                                            ; preds = %bb.ap, %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !2959), !dbg !2804
    #dbg_value(ptr %i.b, !2962, !DIExpression(), !2970)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2972
  %.val.i55 = load ptr, ptr %i.cu, align 8, !dbg !2972, !alias.scope !2959, !nonnull !79, !align !1989, !noundef !79 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2972
  %.val1.i56 = load i8, ptr %i.cv, align 8, !dbg !2972, !range !2781, !alias.scope !2959, !noundef !79
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i55, i64 8, !dbg !2972
  %i.cx = trunc nuw i8 %.val1.i56 to i1, !dbg !2972
    #dbg_value(ptr poison, !2973, !DIExpression(), !2981)
    #dbg_value(ptr poison, !2855, !DIExpression(), !2983)
    #dbg_value(ptr poison, !2862, !DIExpression(), !2985)
    #dbg_value(i32 1073741823, !2868, !DIExpression(), !2987)
    #dbg_value(i8 1, !2872, !DIExpression(), !2987)
    #dbg_value(i32 1073741823, !2882, !DIExpression(), !2990)
    #dbg_value(i8 1, !2886, !DIExpression(), !2990)
    #dbg_value(ptr %i.cw, !2890, !DIExpression(), !2992)
    #dbg_value(ptr poison, !2898, !DIExpression(), !2992)
    #dbg_value(i8 0, !2901, !DIExpression(), !2994)
    #dbg_value(i8 1, !2913, !DIExpression(), !2999)
    #dbg_value(i8 0, !2920, !DIExpression(), !2999)
  br i1 %i.cx, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i57, label %bb.ae, !dbg !3001

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2904, !DIExpression(), !2994)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !3002)
    #dbg_value(i8 0, !2761, !DIExpression(), !3002)
  %i.cy = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !3004, !noalias !2959
  %i.cz = and i64 %i.cy, 9223372036854775807, !dbg !3005
  %i.da = icmp eq i64 %i.cz, 0, !dbg !3005
  br i1 %i.da, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i57, label %bb.af, !dbg !3005, !prof !1872

bb.af:                                            ; preds = %bb.ae
  %i.db = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc64 unwind label %.split.thread, !dbg !3006

.noexc64:                                         ; preds = %bb.af
  br i1 %i.db, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i57, label %bb.ag, !dbg !3007

bb.ag:                                            ; preds = %.noexc64
    #dbg_value(ptr %i.cw, !2919, !DIExpression(), !3008)
    #dbg_value(ptr %i.cw, !2931, !DIExpression(), !3009)
    #dbg_value(i8 1, !2936, !DIExpression(), !3009)
    #dbg_value(i8 0, !2937, !DIExpression(), !3009)
  store atomic i8 1, ptr %i.cw monotonic, align 8, !dbg !3011, !noalias !2959
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i57, !dbg !3012

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i57: ; preds = %bb.ag, %.noexc64, %bb.ae, %bb.ad
    #dbg_value(ptr %.val.i55, !2878, !DIExpression(), !3013)
    #dbg_value(ptr %.val.i55, !2871, !DIExpression(), !3014)
    #dbg_value(ptr %.val.i55, !2885, !DIExpression(), !2990)
  %i.dc = atomicrmw sub ptr %.val.i55, i32 1073741823 release, align 4, !dbg !3015, !noalias !2959
  %i.dd = add i32 %i.dc, -1073741823, !dbg !3016  ; 2 uses
    #dbg_value(i32 %i.dd, !2879, !DIExpression(), !3017)
  %or.cond.not.i.i.i.i58 = icmp ult i32 %i.dd, 1073741824, !dbg !3018
  br i1 %or.cond.not.i.i.i.i58, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit66, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i59, !dbg !3018, !prof !2948

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i59: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i57
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val.i55, i32 noundef %i.dd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit66 unwind label %.split.thread, !dbg !2972

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit66: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i57, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2804
    #dbg_value(ptr %i.d, !2821, !DIExpression(), !3019)
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3021 ; 3 uses
    #dbg_value(ptr %i.de, !2830, !DIExpression(), !3022)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field9SpanMatchEECslIemzedAtQF_5bench.exit.i unwind label %bb.ah, !dbg !3024

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit66
  %i.df = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.de, !2841, !DIExpression(), !3025)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body67 unwind label %bb.ai, !dbg !3027

bb.ai:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !3024
  unreachable, !dbg !3024

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field9SpanMatchEECslIemzedAtQF_5bench.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit66
    #dbg_value(ptr %i.de, !2841, !DIExpression(), !3028)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtBG_5field9SpanMatchEECslIemzedAtQF_5bench.exit unwind label %.loopexit.split-lp, !dbg !3030

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtBG_5field9SpanMatchEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field9SpanMatchEECslIemzedAtQF_5bench.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2778
    #dbg_value(ptr poison, !2570, !DIExpression(), !3031)
    #dbg_value(ptr poison, !2578, !DIExpression(), !3033)
    #dbg_value(i32 1, !2584, !DIExpression(), !3035)
    #dbg_value(i8 1, !2591, !DIExpression(), !3035)
    #dbg_value(i32 1, !2601, !DIExpression(), !3038)
    #dbg_value(i8 1, !2607, !DIExpression(), !3038)
    #dbg_value(ptr %i.s, !2597, !DIExpression(), !3040)
    #dbg_value(ptr %i.s, !2590, !DIExpression(), !3041)
    #dbg_value(ptr %i.s, !2606, !DIExpression(), !3038)
  %i.dh = atomicrmw sub ptr %i.s, i32 1 release, align 4, !dbg !3042
  %i.di = add i32 %i.dh, -1, !dbg !3043           ; 2 uses
    #dbg_value(i32 %i.di, !2598, !DIExpression(), !3044)
  %i.dj = and i32 %i.di, -1073741825, !dbg !3045
  %or.cond.i.i70 = icmp eq i32 %i.dj, -2147483648, !dbg !3045
  br i1 %or.cond.i.i70, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit71, !dbg !3045, !prof !2618

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtBG_5field9SpanMatchEECslIemzedAtQF_5bench.exit
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.s, i32 noundef %i.di), !dbg !3046
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit71, !dbg !3046

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit71: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtBG_5field9SpanMatchEECslIemzedAtQF_5bench.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2640
  br label %bb.ak, !dbg !3047

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit71, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit45
  ret void, !dbg !2641

bb.al:                                            ; preds = %bb.z, %bb.aa
  %lpad.thr_comm.split-lp90 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.am unwind label %bb.x, !dbg !2804

bb.am:                                            ; preds = %bb.al, %.split.thread
  %.pn.pn84 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %lpad.thr_comm.split-lp90, %bb.al ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtBG_5field9SpanMatchEECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #22
          to label %.body67 unwind label %bb.x, !dbg !2778

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76, %.body67, %bb.i
  %.pn26 = phi { ptr, i32 } [ %.pn.pn.pn, %.body67 ], [ %.pn.pn.pn, %bb.i ], [ %i.ds, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76 ], [ %i.ds, %bb.as ]
  resume { ptr, i32 } %.pn26, !dbg !2951

bb.an:                                            ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !1724, !DIExpression(), !1725)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !3050)
    #dbg_value(i8 0, !2761, !DIExpression(), !3050)
  %i.dk = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !3052
  %i.dl = and i64 %i.dk, 9223372036854775807, !dbg !3053
  %i.dm = icmp eq i64 %i.dl, 0, !dbg !3053
  br i1 %i.dm, label %bb.ap, label %bb.ao, !dbg !3053

bb.ao:                                            ; preds = %bb.an
  %i.dn = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.aq unwind label %bb.as, !dbg !3054

bb.ap:                                            ; preds = %bb.an, %bb.aq
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %bb.ac unwind label %bb.as, !dbg !3055

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.dn, label %bb.ap, label %bb.ar, !dbg !1740, !prof !2564

bb.ar:                                            ; preds = %bb.aq
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1961
  %.val33 = load ptr, ptr %i.do, align 8, !dbg !1961, !nonnull !79, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !3056, !DIExpression(), !3064)
  %i.dp = atomicrmw sub ptr %.val33, i32 1 release, align 4, !dbg !3066
  %i.dq = add i32 %i.dp, -1, !dbg !3066           ; 2 uses
  %i.dr = and i32 %i.dq, -1073741825, !dbg !3066
  %or.cond.i.i.i72 = icmp eq i32 %i.dr, -2147483648, !dbg !3066
  br i1 %or.cond.i.i.i72, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74, !dbg !3066, !prof !2618

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73: ; preds = %bb.ar
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val33, i32 noundef %i.dq), !dbg !3066
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74, !dbg !3066

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1961
  br label %bb.ak, !dbg !3047

bb.as:                                            ; preds = %bb.ao, %bb.ap
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1961
  %.val31 = load ptr, ptr %i.dt, align 8, !dbg !1961, !nonnull !79, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !3056, !DIExpression(), !3067)
  %i.du = atomicrmw sub ptr %.val31, i32 1 release, align 4, !dbg !3069
  %i.dv = add i32 %i.du, -1, !dbg !3069           ; 2 uses
  %i.dw = and i32 %i.dv, -1073741825, !dbg !3069
  %or.cond.i.i.i75 = icmp eq i32 %i.dw, -2147483648, !dbg !3069
  br i1 %or.cond.i.i.i75, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit, !dbg !3069, !prof !2618

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76: ; preds = %bb.as
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val31, i32 noundef %i.dv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit unwind label %bb.x, !dbg !3069
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter7enabledINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2f_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3070 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr poison, !3118, !DIExpression(), !3143)
  %i.b = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !3146, !DIExpression(), !3176)
    #dbg_value(ptr %1, !3178, !DIExpression(DW_OP_plus_uconst, 112), !3185)
    #dbg_value(ptr %1, !3076, !DIExpression(), !3194)
    #dbg_value(ptr %1, !3192, !DIExpression(), !3195)
    #dbg_value(ptr %0, !3075, !DIExpression(), !3194)
    #dbg_value(ptr %2, !3117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3194)
    #dbg_value(i64 %3, !3117, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3194)
    #dbg_declare(ptr %i.b, !3196, !DIExpression(), !3205)
    #dbg_declare(ptr poison, !3207, !DIExpression(), !3222)
    #dbg_value(i64 1, !3231, !DIExpression(), !3239)
    #dbg_value(ptr undef, !3077, !DIExpression(DW_OP_deref), !3241)
    #dbg_value(ptr undef, !3242, !DIExpression(DW_OP_deref), !3249)
    #dbg_value(ptr undef, !3242, !DIExpression(DW_OP_deref), !3251)
    #dbg_value(ptr undef, !3242, !DIExpression(DW_OP_deref), !3269)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !3271
  %i.d = load i8, ptr %i.c, align 8, !dbg !3271, !range !2781, !noundef !79
  %i.e = trunc nuw i8 %i.d to i1, !dbg !3271
  %.pre = load i64, ptr %1, align 8, !dbg !3272, !range !3288 ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !3271

bb.b:                                             ; preds = %bb.c, %._crit_edge, %bb.a
    #dbg_value(ptr %0, !3248, !DIExpression(), !3289)
    #dbg_value(ptr %0, !3278, !DIExpression(), !3290)
  %i.f = load i64, ptr %0, align 8, !dbg !3291, !range !3292, !noundef !79 ; 2 uses
  %.not44 = icmp eq i64 %i.f, -1, !dbg !3291
  %i.g = icmp samesign ult i64 %.pre, %i.f, !dbg !3272
  %.sroa.012.0 = select i1 %.not44, i1 true, i1 %i.g, !dbg !3272
  br i1 %.sroa.012.0, label %bb.t, label %bb.s, !dbg !3270

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3248, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !3293)
    #dbg_value(ptr %0, !3278, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !3294)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3296
  %i.i = load i64, ptr %i.h, align 8, !dbg !3296, !range !3292, !noundef !79 ; 2 uses
  %.not = icmp eq i64 %i.i, -1, !dbg !3296
  %i.j = icmp samesign ult i64 %.pre, %i.i, !dbg !3297
  %.sroa.08.0 = select i1 %.not, i1 true, i1 %i.j, !dbg !3297
  br i1 %.sroa.08.0, label %bb.b, label %bb.d, !dbg !3250

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !3178, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 112), !3298)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !3299
  %i.l = load i8, ptr %i.k, align 8, !dbg !3299, !noundef !79
  %i.m = and i8 %i.l, 2, !dbg !3299
  %.not40 = icmp eq i8 %i.m, 0, !dbg !3299
  br i1 %.not40, label %bb.e, label %bb.g, !dbg !3300

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread, %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !3301
    #dbg_value(ptr %i.n, !3229, !DIExpression(), !3302)
    #dbg_value(ptr %i.n, !3221, !DIExpression(), !3303)
  %i.o = call noundef align 8 ptr @_RINvMs2_Cs4lPw7rMVDcJ_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %i.n), !dbg !3304 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
    #dbg_value(ptr %i.o, !3305, !DIExpression(), !3317)
    #dbg_value(ptr %i.o, !3319, !DIExpression(), !3345)
    #dbg_declare(ptr poison, !3314, !DIExpression(), !3347)
    #dbg_value(i64 1, !3348, !DIExpression(), !3356)
    #dbg_value(ptr %i.o, !3376, !DIExpression(), !3380)
    #dbg_value(ptr %i.o, !3381, !DIExpression(), !3387)
    #dbg_value(ptr %i.o, !3389, !DIExpression(), !3396)
  %i.p = load i64, ptr %i.o, align 8, !dbg !3398, !noundef !79 ; 4 uses
    #dbg_value(i64 %i.p, !3355, !DIExpression(), !3356)
    #dbg_value(i64 %i.p, !3377, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3399)
    #dbg_value(i64 %i.p, !3400, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3405)
    #dbg_value(i64 %i.p, !3395, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3396)
  %i.q = icmp ult i64 %i.p, 9223372036854775807, !dbg !3407
  br i1 %i.q, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit, label %bb.f, !dbg !3408, !prof !1872

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !dbg !3409
  unreachable, !dbg !3409

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit: ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.p, 1, !dbg !3410
    #dbg_value(i64 %i.r, !3377, !DIExpression(), !3399)
    #dbg_value(i64 %i.r, !3400, !DIExpression(), !3405)
    #dbg_value(i64 %i.r, !3395, !DIExpression(), !3396)
  store i64 %i.r, ptr %i.o, align 8, !dbg !3411
    #dbg_value(ptr %i.o, !3084, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3418)
    #dbg_value(ptr %i.o, !3084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3418)
    #dbg_value(ptr %i.o, !3419, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3427)
    #dbg_value(ptr %i.o, !3429, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3440)
    #dbg_value(ptr %i.o, !3442, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3446)
    #dbg_value(ptr %i.o, !3448, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3454)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !3456
  %i.t = load ptr, ptr %i.s, align 8, !dbg !3456, !nonnull !79, !noundef !79 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !3477
  %i.v = load i64, ptr %i.u, align 8, !dbg !3477, !noundef !79 ; 2 uses
    #dbg_value(i64 %i.v, !3478, !DIExpression(), !3495)
    #dbg_value(i64 %i.v, !3503, !DIExpression(), !3509)
    #dbg_value(ptr %i.t, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3511)
    #dbg_value(ptr %i.t, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3512)
    #dbg_value(i64 %i.v, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3511)
    #dbg_value(i64 %i.v, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3512)
    #dbg_value(ptr %i.t, !3491, !DIExpression(), !3513)
    #dbg_value(ptr %i.t, !3508, !DIExpression(), !3509)
  %.idx = shl nuw nsw i64 %i.v, 3, !dbg !3514
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !3514
    #dbg_value(ptr %i.t, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3515)
    #dbg_value(ptr %i.w, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3515)
    #dbg_value(ptr undef, !3118, !DIExpression(), !3143)
    #dbg_value(ptr %i.t, !3137, !DIExpression(), !3516)
    #dbg_value(ptr %i.t, !3238, !DIExpression(), !3239)
    #dbg_value(ptr %i.w, !3139, !DIExpression(), !3517)
    #dbg_value(ptr poison, !3518, !DIExpression(), !3526)
    #dbg_value(ptr poison, !3525, !DIExpression(), !3528)
  %i.x = icmp eq i64 %i.v, 0, !dbg !3529
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !3527

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3530
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !3530 ; 4 uses
    #dbg_value(ptr %i.y, !3531, !DIExpression(), !3534)
    #dbg_value(ptr %i.y, !1784, !DIExpression(), !3536)
    #dbg_value(i8 0, !1795, !DIExpression(), !3538)
    #dbg_value(i8 2, !1805, !DIExpression(), !3540)
    #dbg_value(i8 0, !1829, !DIExpression(), !3540)
    #dbg_value(ptr %i.y, !1802, !DIExpression(), !3542)
    #dbg_value(ptr %i.y, !1833, !DIExpression(), !3543)
    #dbg_value(i8 0, !1839, !DIExpression(), !3543)
  %i.z = load atomic i32, ptr %i.y monotonic, align 8, !dbg !3545 ; 3 uses
    #dbg_value(i32 %i.z, !1791, !DIExpression(), !3546)
    #dbg_value(i32 %i.z, !1844, !DIExpression(), !3547)
    #dbg_value(i32 %i.z, !1827, !DIExpression(), !3540)
  %or.cond8.i = icmp ult i32 %i.z, 1073741822, !dbg !3549
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter8on_closeINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2g_EECslIemzedAtQF_5bench:bb.a
  %i.ad = trunc nuw i8 %i.u to i1, !dbg !4070
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !4070

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECslIemzedAtQF_5bench.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2904, !DIExpression(), !4063)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !4071)
    #dbg_value(i8 0, !2761, !DIExpression(), !4071)
  %i.ae = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4073
  %i.af = and i64 %i.ae, 9223372036854775807, !dbg !4074
  %i.ag = icmp eq i64 %i.af, 0, !dbg !4074
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !4074, !prof !1872

bb.m:                                             ; preds = %bb.l
  %i.ah = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21, !dbg !4075
  br i1 %i.ah, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !dbg !4076

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.ac, !2919, !DIExpression(), !4077)
    #dbg_value(ptr %i.ac, !2931, !DIExpression(), !4078)
    #dbg_value(i8 1, !2936, !DIExpression(), !4078)
    #dbg_value(i8 0, !2937, !DIExpression(), !4078)
  store atomic i8 1, ptr %i.ac monotonic, align 8, !dbg !4080
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !4081

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECslIemzedAtQF_5bench.exit
    #dbg_value(ptr %i.s, !2878, !DIExpression(), !4082)
    #dbg_value(ptr %i.s, !2871, !DIExpression(), !4083)
    #dbg_value(ptr %i.s, !2885, !DIExpression(), !4058)
  %i.ai = atomicrmw sub ptr %i.s, i32 1073741823 release, align 4, !dbg !4084
  %i.aj = add i32 %i.ai, -1073741823, !dbg !4085  ; 2 uses
    #dbg_value(i32 %i.aj, !2879, !DIExpression(), !4086)
  %or.cond.not.i.i = icmp ult i32 %i.aj, 1073741824, !dbg !4087
  br i1 %or.cond.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, label %bb.o, !dbg !4087, !prof !2948

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.s, i32 noundef %i.aj), !dbg !4088
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, !dbg !4088

bb.p:                                             ; preds = %.body, %bb.aa
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !4089
  unreachable, !dbg !4089

bb.q:                                             ; preds = %.body, %bb.aa
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.az, %bb.aa ]
  resume { ptr, i32 } %.pn, !dbg !4089

bb.r:                                             ; preds = %_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2n_5field9SpanMatchEEE5writeCslIemzedAtQF_5bench.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !3952, !DIExpression(), !3953)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !4090)
    #dbg_value(i8 0, !2761, !DIExpression(), !4090)
  %i.al = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4092
  %i.am = and i64 %i.al, 9223372036854775807, !dbg !4093
  %i.an = icmp eq i64 %i.am, 0, !dbg !4093
  br i1 %i.an, label %bb.t, label %bb.s, !dbg !4093

bb.s:                                             ; preds = %bb.r
  %i.ao = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.u unwind label %bb.aa, !dbg !4094

bb.t:                                             ; preds = %bb.r, %bb.u
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24
          to label %bb.v unwind label %bb.aa, !dbg !4095

bb.u:                                             ; preds = %bb.s
  br i1 %i.ao, label %bb.t, label %bb.w, !dbg !3960, !prof !2564

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !4096), !dbg !4015
    #dbg_value(ptr %i.b, !2962, !DIExpression(), !4099)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4101
  %.val.i16 = load ptr, ptr %i.ap, align 8, !dbg !4101, !alias.scope !4096, !nonnull !79, !align !1989, !noundef !79 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4101
  %.val1.i17 = load i8, ptr %i.aq, align 8, !dbg !4101, !range !2781, !alias.scope !4096, !noundef !79
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i16, i64 8, !dbg !4101
  %i.as = trunc nuw i8 %.val1.i17 to i1, !dbg !4101
    #dbg_value(ptr poison, !2973, !DIExpression(), !4102)
    #dbg_value(ptr poison, !2855, !DIExpression(), !4104)
    #dbg_value(ptr poison, !2862, !DIExpression(), !4106)
    #dbg_value(i32 1073741823, !2868, !DIExpression(), !4108)
    #dbg_value(i8 1, !2872, !DIExpression(), !4108)
    #dbg_value(i32 1073741823, !2882, !DIExpression(), !4111)
    #dbg_value(i8 1, !2886, !DIExpression(), !4111)
    #dbg_value(ptr %i.ar, !2890, !DIExpression(), !4113)
    #dbg_value(ptr poison, !2898, !DIExpression(), !4113)
    #dbg_value(i8 0, !2901, !DIExpression(), !4115)
    #dbg_value(i8 1, !2913, !DIExpression(), !4120)
    #dbg_value(i8 0, !2920, !DIExpression(), !4120)
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i18, label %bb.x, !dbg !4122

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2904, !DIExpression(), !4115)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !4123)
    #dbg_value(i8 0, !2761, !DIExpression(), !4123)
  %i.at = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4125, !noalias !4096
  %i.au = and i64 %i.at, 9223372036854775807, !dbg !4126
  %i.av = icmp eq i64 %i.au, 0, !dbg !4126
  br i1 %i.av, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i18, label %bb.y, !dbg !4126, !prof !1872

bb.y:                                             ; preds = %bb.x
  %i.aw = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21, !dbg !4127, !noalias !4096
  br i1 %i.aw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i18, label %bb.z, !dbg !4128

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.ar, !2919, !DIExpression(), !4129)
    #dbg_value(ptr %i.ar, !2931, !DIExpression(), !4130)
    #dbg_value(i8 1, !2936, !DIExpression(), !4130)
    #dbg_value(i8 0, !2937, !DIExpression(), !4130)
  store atomic i8 1, ptr %i.ar monotonic, align 8, !dbg !4132, !noalias !4096
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i18, !dbg !4133

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i18: ; preds = %bb.z, %bb.y, %bb.x, %bb.w
    #dbg_value(ptr %.val.i16, !2878, !DIExpression(), !4134)
    #dbg_value(ptr %.val.i16, !2871, !DIExpression(), !4135)
    #dbg_value(ptr %.val.i16, !2885, !DIExpression(), !4111)
  %i.ax = atomicrmw sub ptr %.val.i16, i32 1073741823 release, align 4, !dbg !4136, !noalias !4096
  %i.ay = add i32 %i.ax, -1073741823, !dbg !4137  ; 2 uses
    #dbg_value(i32 %i.ay, !2879, !DIExpression(), !4138)
  %or.cond.not.i.i.i.i19 = icmp ult i32 %i.ay, 1073741824, !dbg !4139
  br i1 %or.cond.not.i.i.i.i19, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit24, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i20, !dbg !4139, !prof !2948

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i20: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i18
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val.i16, i32 noundef %i.ay), !dbg !4101, !noalias !4096
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit24, !dbg !4101

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit24: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i20, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4015
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, !dbg !4140

bb.aa:                                            ; preds = %bb.s, %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.q unwind label %bb.p, !dbg !4015
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter8on_enterINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2g_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4142 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !4145, !DIExpression(), !4161)
    #dbg_value(ptr %1, !4146, !DIExpression(), !4161)
    #dbg_value(ptr %1, !4162, !DIExpression(), !4183)
    #dbg_value(ptr %2, !4160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4161)
    #dbg_value(i64 %3, !4160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4161)
    #dbg_value(i8 0, !4185, !DIExpression(), !4189)
    #dbg_declare(ptr poison, !4198, !DIExpression(), !4202)
    #dbg_declare(ptr poison, !4208, !DIExpression(), !4215)
    #dbg_value(i64 -1, !4217, !DIExpression(), !4221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4235
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4235 ; 4 uses
    #dbg_value(ptr %i.b, !4237, !DIExpression(), !4263)
    #dbg_value(ptr %i.b, !1784, !DIExpression(), !4265)
    #dbg_value(i8 0, !1795, !DIExpression(), !4267)
    #dbg_value(i8 2, !1805, !DIExpression(), !4269)
    #dbg_value(i8 0, !1829, !DIExpression(), !4269)
    #dbg_value(ptr %i.b, !1802, !DIExpression(), !4271)
    #dbg_value(ptr %i.b, !1833, !DIExpression(), !4272)
    #dbg_value(i8 0, !1839, !DIExpression(), !4272)
  %i.c = load atomic i32, ptr %i.b monotonic, align 8, !dbg !4274 ; 3 uses
    #dbg_value(i32 %i.c, !1791, !DIExpression(), !4275)
    #dbg_value(i32 %i.c, !1844, !DIExpression(), !4276)
    #dbg_value(i32 %i.c, !1827, !DIExpression(), !4269)
  %or.cond8.i = icmp ult i32 %i.c, 1073741822, !dbg !4278
  br i1 %or.cond8.i, label %bb.b, label %bb.c, !dbg !4278, !prof !1852

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !1826, !DIExpression(), !4279)
  %i.d = add nuw nsw i32 %i.c, 1, !dbg !4280
    #dbg_value(i32 %i.d, !1828, !DIExpression(), !4269)
    #dbg_value(ptr %i.b, !1855, !DIExpression(), !4281)
    #dbg_value(i32 %i.c, !1861, !DIExpression(), !4281)
    #dbg_value(i32 %i.d, !1862, !DIExpression(), !4281)
    #dbg_value(i8 2, !1863, !DIExpression(), !4281)
    #dbg_value(i8 0, !1864, !DIExpression(), !4281)
  %i.e = cmpxchg weak ptr %i.b, i32 %i.c, i32 %i.d acquire monotonic, align 4, !dbg !4283
  %i.f = extractvalue { i32, i1 } %i.e, 1, !dbg !4283
  br i1 %i.f, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.c, !dbg !4284, !prof !1872

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.b), !dbg !4285
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, !dbg !4285

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.b, %bb.c
    #dbg_value(ptr %i.b, !4286, !DIExpression(), !4290)
    #dbg_value(i8 0, !4292, !DIExpression(), !4296)
    #dbg_value(ptr %i.b, !4304, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4306)
    #dbg_value(ptr %i.b, !4300, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4307)
    #dbg_value(ptr %i.b, !4295, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4308)
    #dbg_value(ptr %i.b, !4309, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4312)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4314
    #dbg_value(ptr %i.g, !1941, !DIExpression(), !4315)
    #dbg_value(i8 0, !1946, !DIExpression(), !4315)
  %i.h = load atomic i8, ptr %i.g monotonic, align 8, !dbg !4317, !noalias !4318
  %.not.i = icmp ne i8 %i.h, 0, !dbg !4321
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2H_5field9SpanMatchEEENCNvMsd_BP_BM_3new0ECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i, ptr noundef nonnull align 8 %i.b), !dbg !4322
  %i.i = load i64, ptr %i.a, align 8, !dbg !4235, !range !1955, !noundef !79
  %i.j = trunc nuw i64 %i.i to i1, !dbg !4323     ; 2 uses
  br i1 %i.j, label %bb.v, label %bb.d, !dbg !4323

bb.d:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4324
  %i.l = load ptr, ptr %i.k, align 8, !dbg !4324, !nonnull !79, !noundef !79 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4324
  %i.n = load ptr, ptr %i.m, align 8, !dbg !4324, !nonnull !79, !align !1958, !noundef !79 ; 4 uses
    #dbg_value(ptr %i.l, !4147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4325)
    #dbg_value(ptr %i.n, !4147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4325)
    #dbg_value(ptr %i.l, !4182, !DIExpression(), !4183)
    #dbg_value(ptr %i.l, !4326, !DIExpression(), !4338)
    #dbg_value(ptr %1, !4333, !DIExpression(), !4338)
    #dbg_value(ptr %1, !4340, !DIExpression(), !4347)
    #dbg_value(ptr %i.l, !4349, !DIExpression(), !4355)
    #dbg_value(ptr %i.l, !4357, !DIExpression(), !4363)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !4365
  %i.p = load i64, ptr %i.o, align 8, !dbg !4365, !alias.scope !4366, !noalias !4369, !noundef !79
  %i.q = icmp eq i64 %i.p, 0, !dbg !4371
  br i1 %i.q, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, label %bb.e, !dbg !4372

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !4373
    #dbg_value(ptr %i.r, !4345, !DIExpression(), !4347)
  %i.s = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsgb4gPAseikh_12tracing_core4span2IdECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !4374 ; 2 uses

.noexc:                                           ; preds = %bb.e
    #dbg_value(i64 %i.s, !4334, !DIExpression(), !4375)
    #dbg_value(i64 %i.s, !4376, !DIExpression(), !4409)
    #dbg_value(ptr %i.l, !4398, !DIExpression(), !4409)
    #dbg_value(ptr %1, !4399, !DIExpression(), !4409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4411), !dbg !4414
    #dbg_value(ptr poison, !2102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4415)
    #dbg_value(ptr %1, !4437, !DIExpression(), !4443)
    #dbg_value(ptr %i.l, !4435, !DIExpression(), !4443)
    #dbg_value(i64 %i.s, !4436, !DIExpression(), !4443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4444), !dbg !4447
    #dbg_value(ptr poison, !2194, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4448)
    #dbg_value(ptr poison, !2224, !DIExpression(), !4450)
    #dbg_value(ptr %i.l, !2119, !DIExpression(), !4415)
    #dbg_value(ptr %i.l, !2234, !DIExpression(), !4452)
    #dbg_value(ptr %i.l, !2243, !DIExpression(), !4454)
    #dbg_value(i64 %i.s, !2120, !DIExpression(), !4415)
    #dbg_value(i64 %i.s, !2253, !DIExpression(), !4456)
    #dbg_value(i64 %i.s, !2240, !DIExpression(), !4452)
    #dbg_value(ptr undef, !2102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4415)
    #dbg_value(ptr poison, !2102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4415)
    #dbg_value(i8 -1, !2262, !DIExpression(), !4458)
  %i.t = lshr i64 %i.s, 57, !dbg !4461
  %i.u = trunc nuw nsw i64 %i.t to i8, !dbg !4462
    #dbg_value(i8 %i.u, !2121, !DIExpression(), !4463)
    #dbg_value(i8 %i.u, !2262, !DIExpression(), !4464)
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !4466
  %i.w = load i64, ptr %i.v, align 8, !dbg !4466, !alias.scope !4467, !noalias !4468, !noundef !79 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.s, i64 %i.w), !2128, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4471)
    #dbg_value(i64 0, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4471)
  %i.x = load ptr, ptr %i.l, align 8, !alias.scope !4467, !noalias !4468, !nonnull !79, !noundef !79 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f, !dbg !4472

bb.f:                                             ; preds = %bb.h, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.aq, %bb.h ], !dbg !4463
  %.pn.i.i = phi i64 [ %i.s, %.noexc ], [ %i.ar, %bb.h ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.w, !dbg !4463 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i, !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4471)
    #dbg_value(i64 %.sroa.9.0.i.i.i, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4471)
    #dbg_value(i64 %.sroa.01.0.i.i.i, !2250, !DIExpression(), !4454)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i, !dbg !4473
    #dbg_value(ptr %i.aa, !2321, !DIExpression(), !4475)
    #dbg_value(ptr %i.aa, !2330, !DIExpression(), !4477)
    #dbg_value(<2 x i64> zeroinitializer, !2338, !DIExpression(), !4479)
    #dbg_value(ptr %i.aa, !2343, !DIExpression(), !4480)
    #dbg_value(ptr undef, !2349, !DIExpression(), !4480)
    #dbg_value(i64 16, !2350, !DIExpression(), !4480)
  %.sroa.0.0.copyload.i29.i.i = load <16 x i8>, ptr %i.aa, align 1, !dbg !4482, !noalias !4483 ; 2 uses
    #dbg_value(<2 x i64> poison, !2338, !DIExpression(), !4479)
    #dbg_value(<2 x i64> poison, !2134, !DIExpression(), !4486)
    #dbg_value(<2 x i64> poison, !2269, !DIExpression(), !4464)
    #dbg_value(<2 x i64> poison, !2281, !DIExpression(), !4487)
    #dbg_value(<2 x i64> poison, !2269, !DIExpression(), !4458)
    #dbg_declare(ptr poison, !2359, !DIExpression(), !4488)
    #dbg_declare(ptr poison, !2364, !DIExpression(), !4490)
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i, %i.z, !dbg !4491
    #dbg_value(<16 x i8> poison, !2270, !DIExpression(), !4492)
    #dbg_declare(ptr poison, !2370, !DIExpression(), !4493)
    #dbg_value(<16 x i8> poison, !2376, !DIExpression(), !4495)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2388, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !4496)
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !4497 ; 2 uses
    #dbg_value(i16 %i.ac, !2147, !DIExpression(), !4498)
    #dbg_value(ptr undef, !2194, !DIExpression(), !4448)
    #dbg_value(i16 %i.ac, !2396, !DIExpression(), !4499)
  %.not.i.not35.i.i = icmp eq i16 %i.ac, 0, !dbg !4501
  br i1 %.not.i.not35.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !4502

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.06.0.i36.i.i = phi i16 [ %i.ap, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2147, !DIExpression(), !4498)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2402, !DIExpression(), !4503)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2417, !DIExpression(), !4504)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2427, !DIExpression(), !4506)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2436, !DIExpression(), !4508)
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i, i1 true), !dbg !4510
  %i.ae = zext nneg i16 %i.ad to i64, !dbg !4511
    #dbg_value(i64 %i.ae, !2202, !DIExpression(), !4512)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2448, !DIExpression(), !4513)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i, i16 %.sroa.06.0.i36.i.i), !2147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !4498)
    #dbg_value(i64 %i.ae, !2157, !DIExpression(), !4515)
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae, !dbg !4516
  %i.ag = and i64 %i.af, %i.w, !dbg !4516
    #dbg_value(i64 %i.ag, !2159, !DIExpression(), !4517)
    #dbg_value(ptr poison, !4518, !DIExpression(DW_OP_deref, DW_OP_deref), !4526)
    #dbg_value(ptr poison, !4525, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4526)
    #dbg_value(i64 %i.ag, !4524, !DIExpression(), !4526)
    #dbg_value(i64 %i.ag, !4528, !DIExpression(), !4542)
    #dbg_value(i64 %i.ag, !4544, !DIExpression(), !4554)
    #dbg_value(i64 %i.ag, !4556, !DIExpression(), !4563)
    #dbg_value(i64 1, !4562, !DIExpression(), !4565)
    #dbg_value(ptr %i.l, !4534, !DIExpression(), !4542)
    #dbg_value(ptr %i.x, !4550, !DIExpression(), !4554)
    #dbg_value(ptr %i.x, !4561, !DIExpression(), !4563)
  %i.ah = sub nsw i64 0, %i.ag, !dbg !4582
  %i.ai = getelementptr inbounds [40 x i8], ptr %i.x, i64 %i.ah, !dbg !4583 ; 2 uses
    #dbg_value(ptr poison, !4580, !DIExpression(), !4584)
    #dbg_value(ptr poison, !4573, !DIExpression(), !4585)
    #dbg_value(ptr %i.ai, !4561, !DIExpression(), !4565)
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40, !dbg !4586
    #dbg_value(ptr poison, !4587, !DIExpression(DW_OP_deref), !4595)
    #dbg_value(ptr %i.aj, !4593, !DIExpression(), !4595)
  %i.ak = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsgb4gPAseikh_12tracing_core4span2IdINtB2_10EquivalentBq_E10equivalentCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj)
          to label %.noexc37 unwind label %.loopexit, !dbg !4597

.noexc37:                                         ; preds = %.lr.ph.i.i
    #dbg_value(i1 %i.ak, !2541, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4598)
  br i1 %i.ak, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit, label %bb.g, !dbg !4600, !prof !1872

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
    #dbg_declare(ptr poison, !2359, !DIExpression(), !4601)
    #dbg_declare(ptr poison, !2364, !DIExpression(), !4603)
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i, splat (i8 -1), !dbg !4604
    #dbg_value(<16 x i8> poison, !2272, !DIExpression(), !4605)
    #dbg_declare(ptr poison, !2370, !DIExpression(), !4606)
    #dbg_value(<16 x i8> poison, !2376, !DIExpression(), !4608)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2388, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !4609)
  %i.am = bitcast <16 x i1> %i.al to i16, !dbg !4610
    #dbg_value(i16 %i.am, !2541, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4611)
  %i.an = icmp eq i16 %i.am, 0, !dbg !4613
  br i1 %i.an, label %bb.h, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, !dbg !4613, !prof !2564

bb.g:                                             ; preds = %.noexc37
  %i.ao = add i16 %.sroa.06.0.i36.i.i, -1, !dbg !4614
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i, i16 %i.ao), !2147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !4498)
  %i.ap = and i16 %i.ao, %.sroa.06.0.i36.i.i, !dbg !4615 ; 2 uses
    #dbg_value(i16 %i.ap, !2147, !DIExpression(), !4498)
    #dbg_value(ptr undef, !2194, !DIExpression(), !4448)
    #dbg_value(i16 %i.ap, !2396, !DIExpression(), !4499)
  %.not.i.not.i.i = icmp eq i16 %i.ap, 0, !dbg !4501
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !4502

bb.h:                                             ; preds = %._crit_edge.i.i
    #dbg_value(ptr undef, !2224, !DIExpression(), !4450)
    #dbg_value(i64 %i.w, !2231, !DIExpression(), !4616)
  %i.aq = add i64 %.sroa.9.0.i.i.i, 16, !dbg !4617 ; 2 uses
    #dbg_value(i64 %i.aq, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4471)
  %i.ar = add i64 %.sroa.01.0.i.i.i, %i.aq, !dbg !4618
    #dbg_value(!DIArgList(i64 %i.ar, i64 %i.w), !2128, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4471)
  br label %bb.f, !dbg !4472

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
    #dbg_value(ptr poison, !4619, !DIExpression(), !4625)
    #dbg_value(ptr poison, !4627, !DIExpression(), !4630)
    #dbg_value(i32 1, !4632, !DIExpression(), !4637)
    #dbg_value(i8 1, !4636, !DIExpression(), !4637)
    #dbg_value(i32 1, !4645, !DIExpression(), !4650)
    #dbg_value(i8 1, !4649, !DIExpression(), !4650)
    #dbg_value(ptr %i.n, !4641, !DIExpression(), !4652)
    #dbg_value(ptr %i.n, !4635, !DIExpression(), !4653)
    #dbg_value(ptr %i.n, !4648, !DIExpression(), !4650)
  %i.as = atomicrmw sub ptr %i.n, i32 1 release, align 4, !dbg !4654
  %i.at = add i32 %i.as, -1, !dbg !4655           ; 2 uses
    #dbg_value(i32 %i.at, !4642, !DIExpression(), !4656)
  %i.au = and i32 %i.at, -1073741825, !dbg !4657
  %or.cond.i.i = icmp eq i32 %i.au, -2147483648, !dbg !4657
  br i1 %or.cond.i.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, !dbg !4657, !prof !2618

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.n, i32 noundef %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit unwind label %bb.s, !dbg !4658

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit, %bb.n, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit: ; preds = %.noexc37
  %i.av = getelementptr inbounds i8, ptr %i.ai, i64 -32, !dbg !4659
    #dbg_value(ptr %i.av, !4158, !DIExpression(), !4660)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !4661
    #dbg_value(ptr %i.aw, !4206, !DIExpression(), !4662)
    #dbg_value(ptr %i.aw, !4201, !DIExpression(), !4663)
  %i.ax = invoke noundef align 8 ptr @_RINvMs2_Cs4lPw7rMVDcJ_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %i.aw)
          to label %bb.l unwind label %.loopexit.split-lp, !dbg !4664 ; 10 uses

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread: ; preds = %._crit_edge.i.i, %bb.d, %bb.r
    #dbg_value(ptr poison, !4619, !DIExpression(), !4665)
    #dbg_value(ptr poison, !4627, !DIExpression(), !4667)
    #dbg_value(i32 1, !4632, !DIExpression(), !4669)
    #dbg_value(i8 1, !4636, !DIExpression(), !4669)
    #dbg_value(i32 1, !4645, !DIExpression(), !4672)
    #dbg_value(i8 1, !4649, !DIExpression(), !4672)
    #dbg_value(ptr %i.n, !4641, !DIExpression(), !4674)
    #dbg_value(ptr %i.n, !4635, !DIExpression(), !4675)
    #dbg_value(ptr %i.n, !4648, !DIExpression(), !4672)
  %i.ay = atomicrmw sub ptr %i.n, i32 1 release, align 4, !dbg !4676
  %i.az = add i32 %i.ay, -1, !dbg !4677           ; 2 uses
    #dbg_value(i32 %i.az, !4642, !DIExpression(), !4678)
  %i.ba = and i32 %i.az, -1073741825, !dbg !4679
  %or.cond.i.i39 = icmp eq i32 %i.ba, -2147483648, !dbg !4679
  br i1 %or.cond.i.i39, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit45, !dbg !4679, !prof !2618

bb.k:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.n, i32 noundef %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit45 unwind label %bb.u, !dbg !4680

bb.l:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
    #dbg_value(ptr %i.ax, !4212, !DIExpression(), !4681)
    #dbg_value(ptr %i.ax, !4229, !DIExpression(), !4682)
    #dbg_value(ptr %i.ax, !4225, !DIExpression(), !4683)
    #dbg_value(ptr %i.ax, !4684, !DIExpression(), !4687)
    #dbg_value(ptr %i.ax, !4220, !DIExpression(), !4221)
  %i.bb = load i64, ptr %i.ax, align 8, !dbg !4689, !noundef !79
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !4690
  br i1 %i.bc, label %bb.m, label %bb.n, !dbg !4690, !prof !1872

bb.m:                                             ; preds = %bb.l
  store i64 -1, ptr %i.ax, align 8, !dbg !4691
    #dbg_value(ptr %i.ax, !4230, !DIExpression(), !4694)
    #dbg_value(ptr %i.ax, !4695, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4698)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !4700 ; 2 uses
    #dbg_value(ptr %i.bd, !4701, !DIExpression(), !4708)
  %i.be = invoke noundef i64 @_RNvMs9_NtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directiveINtB5_8MatchSetNtNtB7_5field9SpanMatchE5level(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %bb.p unwind label %bb.o, !dbg !4710

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.t unwind label %.loopexit.split-lp, !dbg !4711

bb.o:                                             ; preds = %bb.q, %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3900, !DIExpression(), !4712)
    #dbg_value(ptr poison, !3909, !DIExpression(), !4714)
    #dbg_value(ptr poison, !3917, !DIExpression(), !4716)
  %i.bg = load i64, ptr %i.ax, align 8, !dbg !4718, !noundef !79
  %i.bh = add i64 %i.bg, 1, !dbg !4721
  store i64 %i.bh, ptr %i.ax, align 8, !dbg !4722
  br label %bb.i, !dbg !4725

bb.p:                                             ; preds = %bb.m
    #dbg_value(i64 %i.be, !4707, !DIExpression(), !4708)
    #dbg_value(ptr %i.bd, !4726, !DIExpression(), !4738)
    #dbg_value(ptr %i.bd, !4740, !DIExpression(), !4746)
    #dbg_value(i64 %i.be, !4733, !DIExpression(), !4738)
    #dbg_value(i64 8, !4748, !DIExpression(), !4752)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 24, !dbg !4758 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !4758, !alias.scope !4759, !noundef !79 ; 3 uses
    #dbg_value(i64 %i.bj, !4734, !DIExpression(), !4762)
    #dbg_value(i64 %i.bj, !4763, !DIExpression(), !4767)
    #dbg_value(ptr %i.bd, !4756, !DIExpression(), !4769)
  %i.bk = load i64, ptr %i.bd, align 8, !dbg !4770, !range !3885, !alias.scope !4759, !noundef !79
  %i.bl = icmp eq i64 %i.bj, %i.bk, !dbg !4771
  br i1 %i.bl, label %bb.q, label %bb.r, !dbg !4771

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterE8grow_oneCs7n8GKOt6esj_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd) #21
          to label %bb.r unwind label %bb.o, !dbg !4772

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !4773
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !4773, !alias.scope !4759, !nonnull !79, !noundef !79
    #dbg_value(ptr %i.bn, !4766, !DIExpression(), !4767)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bj, !dbg !4780
    #dbg_value(ptr %i.bo, !4736, !DIExpression(), !4781)
    #dbg_value(ptr %i.bo, !4782, !DIExpression(), !4788)
    #dbg_value(i64 %i.be, !4787, !DIExpression(), !4788)
  store i64 %i.be, ptr %i.bo, align 8, !dbg !4790
  %i.bp = add i64 %i.bj, 1, !dbg !4791
  store i64 %i.bp, ptr %i.bi, align 8, !dbg !4791, !alias.scope !4759
    #dbg_value(ptr poison, !3900, !DIExpression(), !4792)
    #dbg_value(ptr poison, !3909, !DIExpression(), !4794)
    #dbg_value(ptr poison, !3917, !DIExpression(), !4796)
  %i.bq = load i64, ptr %i.ax, align 8, !dbg !4798, !noundef !79
  %i.br = add i64 %i.bq, 1, !dbg !4800
  store i64 %i.br, ptr %i.ax, align 8, !dbg !4801
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, !dbg !4804

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i47, %bb.j
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !4805
  unreachable, !dbg !4805

bb.t:                                             ; preds = %bb.x, %bb.n
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.i, %bb.j, %bb.u
  %.pn25 = phi { ptr, i32 } [ %i.bt, %bb.u ], [ %.pn, %bb.j ], [ %.pn, %bb.i ]
  br i1 %i.j, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit49, !dbg !4806

bb.u:                                             ; preds = %bb.k, %bb.x, %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit45: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, %bb.k, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4806
  ret void, !dbg !4807

bb.v:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !4188, !DIExpression(), !4189)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !4808)
    #dbg_value(i8 0, !2761, !DIExpression(), !4808)
  %i.bu = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4810
  %i.bv = and i64 %i.bu, 9223372036854775807, !dbg !4811
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !4811
  br i1 %i.bw, label %bb.x, label %bb.w, !dbg !4811

bb.w:                                             ; preds = %bb.v
  %i.bx = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.y unwind label %bb.u, !dbg !4812

bb.x:                                             ; preds = %bb.v, %bb.y
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24
          to label %bb.t unwind label %bb.u, !dbg !4813

bb.y:                                             ; preds = %bb.w
  br i1 %i.bx, label %bb.x, label %bb.z, !dbg !4196, !prof !2564

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4806
  %.val33 = load ptr, ptr %i.by, align 8, !dbg !4806, !nonnull !79, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !4814, !DIExpression(), !4822)
  %i.bz = atomicrmw sub ptr %.val33, i32 1 release, align 4, !dbg !4824
  %i.ca = add i32 %i.bz, -1, !dbg !4824           ; 2 uses
  %i.cb = and i32 %i.ca, -1073741825, !dbg !4824
  %or.cond.i.i.i43 = icmp eq i32 %i.cb, -2147483648, !dbg !4824
  br i1 %or.cond.i.i.i43, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i44, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit45, !dbg !4824, !prof !2618

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i44: ; preds = %bb.z
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val33, i32 noundef %i.ca), !dbg !4824
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit45, !dbg !4824

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit49: ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i47, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit
  resume { ptr, i32 } %.pn25, !dbg !4805

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4806
  %.val31 = load ptr, ptr %i.cc, align 8, !dbg !4806, !nonnull !79, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !4814, !DIExpression(), !4825)
  %i.cd = atomicrmw sub ptr %.val31, i32 1 release, align 4, !dbg !4827
  %i.ce = add i32 %i.cd, -1, !dbg !4827           ; 2 uses
  %i.cf = and i32 %i.ce, -1073741825, !dbg !4827
  %or.cond.i.i.i46 = icmp eq i32 %i.cf, -2147483648, !dbg !4827
  br i1 %or.cond.i.i.i46, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i47, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit49, !dbg !4827, !prof !2618

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i47: ; preds = %bb.aa
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val31, i32 noundef %i.ce)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit49 unwind label %bb.s, !dbg !4827
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter9on_recordINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2h_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr nofree noundef readnone align 8 captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4828 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !4837, !DIExpression(), !4845)
    #dbg_value(ptr %1, !4838, !DIExpression(), !4845)
    #dbg_value(ptr %1, !4846, !DIExpression(), !4850)
    #dbg_value(ptr %2, !4839, !DIExpression(), !4845)
    #dbg_value(ptr %3, !4844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4845)
    #dbg_value(i64 %4, !4844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4845)
    #dbg_value(i8 0, !4852, !DIExpression(), !4856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4865
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4865 ; 4 uses
    #dbg_value(ptr %i.b, !4867, !DIExpression(), !4870)
    #dbg_value(ptr %i.b, !1784, !DIExpression(), !4872)
    #dbg_value(i8 0, !1795, !DIExpression(), !4874)
    #dbg_value(i8 2, !1805, !DIExpression(), !4876)
    #dbg_value(i8 0, !1829, !DIExpression(), !4876)
    #dbg_value(ptr %i.b, !1802, !DIExpression(), !4878)
    #dbg_value(ptr %i.b, !1833, !DIExpression(), !4879)
    #dbg_value(i8 0, !1839, !DIExpression(), !4879)
  %i.c = load atomic i32, ptr %i.b monotonic, align 8, !dbg !4881 ; 3 uses
    #dbg_value(i32 %i.c, !1791, !DIExpression(), !4882)
    #dbg_value(i32 %i.c, !1844, !DIExpression(), !4883)
    #dbg_value(i32 %i.c, !1827, !DIExpression(), !4876)
  %or.cond8.i = icmp ult i32 %i.c, 1073741822, !dbg !4885
  br i1 %or.cond8.i, label %bb.b, label %bb.c, !dbg !4885, !prof !1852

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !1826, !DIExpression(), !4886)
  %i.d = add nuw nsw i32 %i.c, 1, !dbg !4887
    #dbg_value(i32 %i.d, !1828, !DIExpression(), !4876)
    #dbg_value(ptr %i.b, !1855, !DIExpression(), !4888)
    #dbg_value(i32 %i.c, !1861, !DIExpression(), !4888)
    #dbg_value(i32 %i.d, !1862, !DIExpression(), !4888)
    #dbg_value(i8 2, !1863, !DIExpression(), !4888)
    #dbg_value(i8 0, !1864, !DIExpression(), !4888)
  %i.e = cmpxchg weak ptr %i.b, i32 %i.c, i32 %i.d acquire monotonic, align 4, !dbg !4890
  %i.f = extractvalue { i32, i1 } %i.e, 1, !dbg !4890
  br i1 %i.f, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.c, !dbg !4891, !prof !1872

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.b), !dbg !4892
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, !dbg !4892

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.b, %bb.c
    #dbg_value(ptr %i.b, !4286, !DIExpression(), !4893)
    #dbg_value(i8 0, !4292, !DIExpression(), !4895)
    #dbg_value(ptr %i.b, !4304, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4899)
    #dbg_value(ptr %i.b, !4300, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4900)
    #dbg_value(ptr %i.b, !4295, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4901)
    #dbg_value(ptr %i.b, !4309, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4902)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4904
    #dbg_value(ptr %i.g, !1941, !DIExpression(), !4905)
    #dbg_value(i8 0, !1946, !DIExpression(), !4905)
  %i.h = load atomic i8, ptr %i.g monotonic, align 8, !dbg !4907, !noalias !4908
  %.not.i = icmp ne i8 %i.h, 0, !dbg !4911
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2H_5field9SpanMatchEEENCNvMsd_BP_BM_3new0ECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i, ptr noundef nonnull align 8 %i.b), !dbg !4912
  %i.i = load i64, ptr %i.a, align 8, !dbg !4865, !range !1955, !noundef !79
  %i.j = trunc nuw i64 %i.i to i1, !dbg !4913     ; 2 uses
  br i1 %i.j, label %bb.n, label %bb.d, !dbg !4913

bb.d:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4914
  %i.l = load ptr, ptr %i.k, align 8, !dbg !4914, !nonnull !79, !noundef !79 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4914
  %i.n = load ptr, ptr %i.m, align 8, !dbg !4914, !nonnull !79, !align !1958, !noundef !79 ; 4 uses
    #dbg_value(ptr %i.l, !4840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4915)
    #dbg_value(ptr %i.n, !4840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4915)
    #dbg_value(ptr %i.l, !4849, !DIExpression(), !4850)
    #dbg_value(ptr %i.l, !4326, !DIExpression(), !4916)
    #dbg_value(ptr %1, !4333, !DIExpression(), !4916)
    #dbg_value(ptr %1, !4340, !DIExpression(), !4918)
    #dbg_value(ptr %i.l, !4349, !DIExpression(), !4920)
    #dbg_value(ptr %i.l, !4357, !DIExpression(), !4922)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !4924
  %i.p = load i64, ptr %i.o, align 8, !dbg !4924, !alias.scope !4925, !noalias !4928, !noundef !79
  %i.q = icmp eq i64 %i.p, 0, !dbg !4930
  br i1 %i.q, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, label %bb.e, !dbg !4931

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !4932
    #dbg_value(ptr %i.r, !4345, !DIExpression(), !4918)
  %i.s = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsgb4gPAseikh_12tracing_core4span2IdECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !4933 ; 2 uses

.noexc:                                           ; preds = %bb.e
    #dbg_value(i64 %i.s, !4334, !DIExpression(), !4934)
    #dbg_value(i64 %i.s, !4376, !DIExpression(), !4935)
    #dbg_value(ptr %i.l, !4398, !DIExpression(), !4935)
    #dbg_value(ptr %1, !4399, !DIExpression(), !4935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4937), !dbg !4940
    #dbg_value(ptr poison, !2102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(ptr %1, !4437, !DIExpression(), !4944)
    #dbg_value(ptr %i.l, !4435, !DIExpression(), !4944)
    #dbg_value(i64 %i.s, !4436, !DIExpression(), !4944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4945), !dbg !4948
    #dbg_value(ptr poison, !2194, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4949)
    #dbg_value(ptr poison, !2224, !DIExpression(), !4951)
    #dbg_value(ptr %i.l, !2119, !DIExpression(), !4941)
    #dbg_value(ptr %i.l, !2234, !DIExpression(), !4953)
    #dbg_value(ptr %i.l, !2243, !DIExpression(), !4955)
    #dbg_value(i64 %i.s, !2120, !DIExpression(), !4941)
    #dbg_value(i64 %i.s, !2253, !DIExpression(), !4957)
    #dbg_value(i64 %i.s, !2240, !DIExpression(), !4953)
    #dbg_value(ptr undef, !2102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(ptr poison, !2102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(i8 -1, !2262, !DIExpression(), !4959)
  %i.t = lshr i64 %i.s, 57, !dbg !4962
  %i.u = trunc nuw nsw i64 %i.t to i8, !dbg !4963
    #dbg_value(i8 %i.u, !2121, !DIExpression(), !4964)
    #dbg_value(i8 %i.u, !2262, !DIExpression(), !4965)
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !4967
  %i.w = load i64, ptr %i.v, align 8, !dbg !4967, !alias.scope !4968, !noalias !4969, !noundef !79 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.s, i64 %i.w), !2128, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4972)
    #dbg_value(i64 0, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4972)
  %i.x = load ptr, ptr %i.l, align 8, !alias.scope !4968, !noalias !4969, !nonnull !79, !noundef !79 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f, !dbg !4973

bb.f:                                             ; preds = %bb.h, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.aq, %bb.h ], !dbg !4964
  %.pn.i.i = phi i64 [ %i.s, %.noexc ], [ %i.ar, %bb.h ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.w, !dbg !4964 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i, !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4972)
    #dbg_value(i64 %.sroa.9.0.i.i.i, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4972)
    #dbg_value(i64 %.sroa.01.0.i.i.i, !2250, !DIExpression(), !4955)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i, !dbg !4974
    #dbg_value(ptr %i.aa, !2321, !DIExpression(), !4976)
    #dbg_value(ptr %i.aa, !2330, !DIExpression(), !4978)
    #dbg_value(<2 x i64> zeroinitializer, !2338, !DIExpression(), !4980)
    #dbg_value(ptr %i.aa, !2343, !DIExpression(), !4981)
    #dbg_value(ptr undef, !2349, !DIExpression(), !4981)
    #dbg_value(i64 16, !2350, !DIExpression(), !4981)
  %.sroa.0.0.copyload.i29.i.i = load <16 x i8>, ptr %i.aa, align 1, !dbg !4983, !noalias !4984 ; 2 uses
    #dbg_value(<2 x i64> poison, !2338, !DIExpression(), !4980)
    #dbg_value(<2 x i64> poison, !2134, !DIExpression(), !4987)
    #dbg_value(<2 x i64> poison, !2269, !DIExpression(), !4965)
    #dbg_value(<2 x i64> poison, !2281, !DIExpression(), !4988)
    #dbg_value(<2 x i64> poison, !2269, !DIExpression(), !4959)
    #dbg_declare(ptr poison, !2359, !DIExpression(), !4989)
    #dbg_declare(ptr poison, !2364, !DIExpression(), !4991)
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i, %i.z, !dbg !4992
    #dbg_value(<16 x i8> poison, !2270, !DIExpression(), !4993)
    #dbg_declare(ptr poison, !2370, !DIExpression(), !4994)
    #dbg_value(<16 x i8> poison, !2376, !DIExpression(), !4996)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2388, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !4997)
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !4998 ; 2 uses
    #dbg_value(i16 %i.ac, !2147, !DIExpression(), !4999)
    #dbg_value(ptr undef, !2194, !DIExpression(), !4949)
    #dbg_value(i16 %i.ac, !2396, !DIExpression(), !5000)
  %.not.i.not35.i.i = icmp eq i16 %i.ac, 0, !dbg !5002
  br i1 %.not.i.not35.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5003

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.06.0.i36.i.i = phi i16 [ %i.ap, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2147, !DIExpression(), !4999)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2402, !DIExpression(), !5004)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2417, !DIExpression(), !5005)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2427, !DIExpression(), !5007)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2436, !DIExpression(), !5009)
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i, i1 true), !dbg !5011
  %i.ae = zext nneg i16 %i.ad to i64, !dbg !5012
    #dbg_value(i64 %i.ae, !2202, !DIExpression(), !5013)
    #dbg_value(i16 %.sroa.06.0.i36.i.i, !2448, !DIExpression(), !5014)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i, i16 %.sroa.06.0.i36.i.i), !2147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !4999)
    #dbg_value(i64 %i.ae, !2157, !DIExpression(), !5016)
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae, !dbg !5017
  %i.ag = and i64 %i.af, %i.w, !dbg !5017
    #dbg_value(i64 %i.ag, !2159, !DIExpression(), !5018)
    #dbg_value(ptr poison, !4518, !DIExpression(DW_OP_deref, DW_OP_deref), !5019)
    #dbg_value(ptr poison, !4525, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5019)
    #dbg_value(i64 %i.ag, !4524, !DIExpression(), !5019)
    #dbg_value(i64 %i.ag, !4528, !DIExpression(), !5021)
    #dbg_value(i64 %i.ag, !4544, !DIExpression(), !5023)
    #dbg_value(i64 %i.ag, !4556, !DIExpression(), !5025)
    #dbg_value(i64 1, !4562, !DIExpression(), !5027)
    #dbg_value(ptr %i.l, !4534, !DIExpression(), !5021)
    #dbg_value(ptr %i.x, !4550, !DIExpression(), !5023)
    #dbg_value(ptr %i.x, !4561, !DIExpression(), !5025)
  %i.ah = sub nsw i64 0, %i.ag, !dbg !5031
  %i.ai = getelementptr inbounds [40 x i8], ptr %i.x, i64 %i.ah, !dbg !5032 ; 2 uses
    #dbg_value(ptr poison, !4580, !DIExpression(), !5033)
    #dbg_value(ptr poison, !4573, !DIExpression(), !5034)
    #dbg_value(ptr %i.ai, !4561, !DIExpression(), !5027)
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40, !dbg !5035
    #dbg_value(ptr poison, !4587, !DIExpression(DW_OP_deref), !5036)
    #dbg_value(ptr %i.aj, !4593, !DIExpression(), !5036)
  %i.ak = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsgb4gPAseikh_12tracing_core4span2IdINtB2_10EquivalentBq_E10equivalentCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj)
          to label %.noexc23 unwind label %.loopexit, !dbg !5038

.noexc23:                                         ; preds = %.lr.ph.i.i
    #dbg_value(i1 %i.ak, !2541, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5039)
  br i1 %i.ak, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit, label %bb.g, !dbg !5041, !prof !1872

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
    #dbg_declare(ptr poison, !2359, !DIExpression(), !5042)
    #dbg_declare(ptr poison, !2364, !DIExpression(), !5044)
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i, splat (i8 -1), !dbg !5045
    #dbg_value(<16 x i8> poison, !2272, !DIExpression(), !5046)
    #dbg_declare(ptr poison, !2370, !DIExpression(), !5047)
    #dbg_value(<16 x i8> poison, !2376, !DIExpression(), !5049)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2388, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !5050)
  %i.am = bitcast <16 x i1> %i.al to i16, !dbg !5051
    #dbg_value(i16 %i.am, !2541, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5052)
  %i.an = icmp eq i16 %i.am, 0, !dbg !5054
  br i1 %i.an, label %bb.h, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, !dbg !5054, !prof !2564

bb.g:                                             ; preds = %.noexc23
  %i.ao = add i16 %.sroa.06.0.i36.i.i, -1, !dbg !5055
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i, i16 %i.ao), !2147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !4999)
  %i.ap = and i16 %i.ao, %.sroa.06.0.i36.i.i, !dbg !5056 ; 2 uses
    #dbg_value(i16 %i.ap, !2147, !DIExpression(), !4999)
    #dbg_value(ptr undef, !2194, !DIExpression(), !4949)
    #dbg_value(i16 %i.ap, !2396, !DIExpression(), !5000)
  %.not.i.not.i.i = icmp eq i16 %i.ap, 0, !dbg !5002
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5003

bb.h:                                             ; preds = %._crit_edge.i.i
    #dbg_value(ptr undef, !2224, !DIExpression(), !4951)
    #dbg_value(i64 %i.w, !2231, !DIExpression(), !5057)
  %i.aq = add i64 %.sroa.9.0.i.i.i, 16, !dbg !5058 ; 2 uses
    #dbg_value(i64 %i.aq, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4972)
  %i.ar = add i64 %.sroa.01.0.i.i.i, %i.aq, !dbg !5059
    #dbg_value(!DIArgList(i64 %i.ar, i64 %i.w), !2128, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4972)
  br label %bb.f, !dbg !4973

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
    #dbg_value(ptr poison, !4619, !DIExpression(), !5060)
    #dbg_value(ptr poison, !4627, !DIExpression(), !5062)
    #dbg_value(i32 1, !4632, !DIExpression(), !5064)
    #dbg_value(i8 1, !4636, !DIExpression(), !5064)
    #dbg_value(i32 1, !4645, !DIExpression(), !5067)
    #dbg_value(i8 1, !4649, !DIExpression(), !5067)
    #dbg_value(ptr %i.n, !4641, !DIExpression(), !5069)
    #dbg_value(ptr %i.n, !4635, !DIExpression(), !5070)
    #dbg_value(ptr %i.n, !4648, !DIExpression(), !5067)
  %i.as = atomicrmw sub ptr %i.n, i32 1 release, align 4, !dbg !5071
  %i.at = add i32 %i.as, -1, !dbg !5072           ; 2 uses
    #dbg_value(i32 %i.at, !4642, !DIExpression(), !5073)
  %i.au = and i32 %i.at, -1073741825, !dbg !5074
  %or.cond.i.i = icmp eq i32 %i.au, -2147483648, !dbg !5074
  br i1 %or.cond.i.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, !dbg !5074, !prof !2618

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.n, i32 noundef %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit unwind label %bb.m, !dbg !5075

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit: ; preds = %.noexc23
  %i.av = getelementptr inbounds i8, ptr %i.ai, i64 -32, !dbg !5076
    #dbg_value(ptr %i.av, !4843, !DIExpression(), !5077)
  invoke void @_RNvMs9_NtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directiveINtB5_8MatchSetNtNtB7_5field9SpanMatchE13record_update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread unwind label %.loopexit.split-lp, !dbg !5078

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread: ; preds = %._crit_edge.i.i, %bb.d, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !4619, !DIExpression(), !5079)
    #dbg_value(ptr poison, !4627, !DIExpression(), !5081)
    #dbg_value(i32 1, !4632, !DIExpression(), !5083)
    #dbg_value(i8 1, !4636, !DIExpression(), !5083)
    #dbg_value(i32 1, !4645, !DIExpression(), !5086)
    #dbg_value(i8 1, !4649, !DIExpression(), !5086)
    #dbg_value(ptr %i.n, !4641, !DIExpression(), !5088)
    #dbg_value(ptr %i.n, !4635, !DIExpression(), !5089)
    #dbg_value(ptr %i.n, !4648, !DIExpression(), !5086)
  %i.aw = atomicrmw sub ptr %i.n, i32 1 release, align 4, !dbg !5090
  %i.ax = add i32 %i.aw, -1, !dbg !5091           ; 2 uses
    #dbg_value(i32 %i.ax, !4642, !DIExpression(), !5092)
  %i.ay = and i32 %i.ax, -1073741825, !dbg !5093
  %or.cond.i.i25 = icmp eq i32 %i.ay, -2147483648, !dbg !5093
  br i1 %or.cond.i.i25, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit30, !dbg !5093, !prof !2618

bb.k:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.n, i32 noundef %i.ax)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit30 unwind label %bb.l, !dbg !5094

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit: ; preds = %bb.i, %bb.j, %bb.l
  %.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %lpad.phi, %bb.j ], [ %lpad.phi, %bb.i ]
  br i1 %i.j, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit34, !dbg !5095

bb.l:                                             ; preds = %bb.k, %bb.p, %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit30: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECslIemzedAtQF_5bench.exit.thread, %bb.k, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5095
  ret void, !dbg !5096

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i32, %bb.j
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !5097
  unreachable, !dbg !5097

bb.n:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !4855, !DIExpression(), !4856)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !5098)
    #dbg_value(i8 0, !2761, !DIExpression(), !5098)
  %i.bb = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !5100
  %i.bc = and i64 %i.bb, 9223372036854775807, !dbg !5101
  %i.bd = icmp eq i64 %i.bc, 0, !dbg !5101
  br i1 %i.bd, label %bb.p, label %bb.o, !dbg !5101

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.q unwind label %bb.l, !dbg !5102

bb.p:                                             ; preds = %bb.n, %bb.q
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24
          to label %bb.r unwind label %bb.l, !dbg !5103

bb.q:                                             ; preds = %bb.o
  br i1 %i.be, label %bb.p, label %bb.s, !dbg !4863, !prof !2564

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5095
  %.val19 = load ptr, ptr %i.bf, align 8, !dbg !5095, !nonnull !79, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !4814, !DIExpression(), !5104)
  %i.bg = atomicrmw sub ptr %.val19, i32 1 release, align 4, !dbg !5106
  %i.bh = add i32 %i.bg, -1, !dbg !5106           ; 2 uses
  %i.bi = and i32 %i.bh, -1073741825, !dbg !5106
  %or.cond.i.i.i28 = icmp eq i32 %i.bi, -2147483648, !dbg !5106
  br i1 %or.cond.i.i.i28, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit30, !dbg !5106, !prof !2618

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i29: ; preds = %bb.s
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val19, i32 noundef %i.bh), !dbg !5106
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit30, !dbg !5106

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit34: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i32, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit
  resume { ptr, i32 } %.pn, !dbg !5097

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5095
  %.val17 = load ptr, ptr %i.bj, align 8, !dbg !5095, !nonnull !79, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !4814, !DIExpression(), !5107)
  %i.bk = atomicrmw sub ptr %.val17, i32 1 release, align 4, !dbg !5109
  %i.bl = add i32 %i.bk, -1, !dbg !5109           ; 2 uses
  %i.bm = and i32 %i.bl, -1073741825, !dbg !5109
  %or.cond.i.i.i31 = icmp eq i32 %i.bm, -2147483648, !dbg !5109
  br i1 %or.cond.i.i.i31, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i32, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit34, !dbg !5109, !prof !2618

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB30_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i32: ; preds = %bb.t
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val17, i32 noundef %i.bl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3n_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit34 unwind label %bb.m, !dbg !5109
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECslIemzedAtQF_5bench(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5110 {
bb.a:
    #dbg_declare(ptr %0, !5292, !DIExpression(), !5346)
    #dbg_declare(ptr poison, !5293, !DIExpression(), !5347)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5348
  %i.b = load i64, ptr %i.a, align 8, !dbg !5348, !noundef !79 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !5348, !nonnull !79, !noundef !79 ; 3 uses
    #dbg_value(i64 poison, !5294, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5349)
    #dbg_value(i64 poison, !5320, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5350)
    #dbg_value(i64 %i.b, !5294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5349)
    #dbg_value(ptr %i.c, !5294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5349)
    #dbg_value(ptr %i.c, !5351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5378)
    #dbg_value(i64 %i.b, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5378)
    #dbg_declare(ptr poison, !5371, !DIExpression(), !5380)
    #dbg_value(i64 %i.b, !5372, !DIExpression(), !5381)
    #dbg_value(ptr %i.c, !5374, !DIExpression(), !5382)
    #dbg_value(ptr poison, !5383, !DIExpression(), !5398)
    #dbg_value(ptr poison, !5424, !DIExpression(), !5450)
    #dbg_value(ptr poison, !5422, !DIExpression(), !5451)
    #dbg_value(ptr poison, !5452, !DIExpression(), !5461)
    #dbg_value(ptr poison, !5423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5451)
    #dbg_value(ptr %i.c, !5447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5463)
    #dbg_value(i64 %i.b, !5447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5463)
    #dbg_value(ptr %i.c, !5448, !DIExpression(), !5464)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !5465, !noalias !5466, !noundef !79 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.d, null, !dbg !5471
  br i1 %.not.i.i9, label %._crit_edge, label %.lr.ph, !dbg !5472

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.011 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.010 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
    #dbg_value(ptr undef, !5422, !DIExpression(), !5451)
    #dbg_value(ptr poison, !5396, !DIExpression(DW_OP_deref), !5398)
    #dbg_value(ptr undef, !5397, !DIExpression(DW_OP_deref), !5398)
    #dbg_value(ptr poison, !5423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5451)
    #dbg_value(ptr undef, !5423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5451)
    #dbg_value(ptr undef, !5424, !DIExpression(), !5450)
    #dbg_value(ptr undef, !5383, !DIExpression(), !5398)
  %i.f = add i64 %.sroa.3.010, 1, !dbg !5473      ; 2 uses
    #dbg_value(i16 poison, !5376, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5474)
    #dbg_value(i64 %i.f, !5376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5474)
    #dbg_value(ptr %i.e, !5376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5474)
  %.not.i = icmp eq i64 %.sroa.3.010, 0, !dbg !5475
    #dbg_value(ptr poison, !5476, !DIExpression(), !5495)
    #dbg_value(ptr poison, !5476, !DIExpression(), !5497)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5506)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5508)
    #dbg_value(ptr %.sroa.0.011, !5493, !DIExpression(), !5495)
    #dbg_value(ptr %.sroa.0.011, !5493, !DIExpression(), !5497)
    #dbg_value(ptr %.sroa.0.011, !5504, !DIExpression(), !5506)
    #dbg_value(ptr %.sroa.0.011, !5504, !DIExpression(), !5508)
    #dbg_value(ptr %.sroa.0.011, !5510, !DIExpression(), !5517)
    #dbg_value(ptr %.sroa.0.011, !5510, !DIExpression(), !5519)
    #dbg_value(ptr %.sroa.0.011, !5521, !DIExpression(), !5525)
    #dbg_value(ptr %.sroa.0.011, !5521, !DIExpression(), !5527)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5495)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5497)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5506)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5508)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5517)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5519)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5525)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5527)
  %..i = select i1 %.not.i, i64 896, i64 992, !dbg !5474
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.011, i64 noundef %..i, i64 noundef 8) #26, !dbg !5529, !noalias !5534
    #dbg_value(i64 %i.f, !5320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5350)
    #dbg_value(ptr %i.e, !5320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5350)
    #dbg_value(i64 poison, !5294, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5349)
    #dbg_value(i64 poison, !5320, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5350)
    #dbg_value(ptr %i.e, !5294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5349)
    #dbg_value(i64 %i.f, !5294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5349)
    #dbg_value(ptr %i.e, !5351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5378)
    #dbg_value(i64 %i.f, !5351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5378)
    #dbg_declare(ptr poison, !5371, !DIExpression(), !5380)
    #dbg_value(i64 %i.f, !5372, !DIExpression(), !5381)
    #dbg_value(ptr %i.e, !5374, !DIExpression(), !5382)
    #dbg_value(ptr poison, !5383, !DIExpression(), !5398)
    #dbg_value(ptr poison, !5424, !DIExpression(), !5450)
    #dbg_value(ptr poison, !5422, !DIExpression(), !5451)
    #dbg_value(ptr poison, !5452, !DIExpression(), !5461)
    #dbg_value(ptr poison, !5423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5451)
    #dbg_value(ptr %i.e, !5447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5463)
    #dbg_value(i64 %i.f, !5447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5463)
    #dbg_value(ptr %i.e, !5448, !DIExpression(), !5464)
  %i.g = load ptr, ptr %i.e, align 8, !dbg !5465, !noalias !5466, !noundef !79 ; 2 uses
    #dbg_value(ptr undef, !5452, !DIExpression(), !5461)
  %.not.i.i = icmp eq ptr %i.g, null, !dbg !5471
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !dbg !5472

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %.lr.ph ], !dbg !5535
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph ], !dbg !5535
    #dbg_value(i64 poison, !5376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5474)
    #dbg_value(ptr poison, !5376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5474)
  %.not.i7 = icmp eq i64 %.sroa.3.0.lcssa, 0, !dbg !5475
    #dbg_value(ptr poison, !5476, !DIExpression(), !5495)
    #dbg_value(ptr poison, !5476, !DIExpression(), !5497)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5506)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5508)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5493, !DIExpression(), !5495)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5493, !DIExpression(), !5497)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5504, !DIExpression(), !5506)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5504, !DIExpression(), !5508)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5510, !DIExpression(), !5517)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5510, !DIExpression(), !5519)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5521, !DIExpression(), !5525)
    #dbg_value(ptr %.sroa.0.0.lcssa, !5521, !DIExpression(), !5527)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5495)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5497)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5506)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5508)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5517)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5519)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5525)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5527)
  %..i8 = select i1 %.not.i7, i64 896, i64 992, !dbg !5474
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %..i8, i64 noundef 8) #26, !dbg !5529, !noalias !5534
  ret void, !dbg !5536
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5537 {
bb.a:
    #dbg_value(ptr poison, !5582, !DIExpression(), !5589)
    #dbg_declare(ptr %1, !5572, !DIExpression(), !5616)
    #dbg_declare(ptr poison, !5573, !DIExpression(), !5617)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5618
end_hunk_1
begin_hunk_2_@_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECslIemzedAtQF_5bench:bb.a
  %.sroa.017.0.i.4 = load ptr, ptr %i.v, align 8, !dbg !5842, !noalias !5843, !nonnull !79, !noundef !79
    #dbg_value(i64 %.sroa.019.0.in.i, !5684, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.in.i, !5767, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.in.i, !5766, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(ptr %.sroa.017.0.i.4, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(ptr %.sroa.017.0.i.4, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr %.sroa.017.0.i.4, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
    #dbg_value(i64 %.sroa.019.0.in.i, !5770, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5847)
    #dbg_value(i64 %.sroa.019.0.in.i, !5742, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.4, !5770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5847)
    #dbg_value(ptr %.sroa.017.0.i.4, !5742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.4, !5753, !DIExpression(), !5848)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.4, i64 896, !dbg !5849
    #dbg_value(ptr %i.w, !5783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5788)
    #dbg_value(ptr %i.w, !5805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5807)
    #dbg_value(i64 12, !5783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5788)
    #dbg_value(i64 12, !5805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5807)
    #dbg_value(ptr poison, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
    #dbg_value(ptr poison, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr poison, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.in.i, !5766, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(i64 %.sroa.019.0.in.i, !5767, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.in.i, !5684, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5839)
  %.sroa.017.0.i.5 = load ptr, ptr %i.w, align 8, !dbg !5842, !noalias !5843, !nonnull !79, !noundef !79
    #dbg_value(i64 %.sroa.019.0.in.i, !5684, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.in.i, !5767, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.in.i, !5766, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(ptr %.sroa.017.0.i.5, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(ptr %.sroa.017.0.i.5, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr %.sroa.017.0.i.5, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
    #dbg_value(i64 %.sroa.019.0.in.i, !5770, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5847)
    #dbg_value(i64 %.sroa.019.0.in.i, !5742, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.5, !5770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5847)
    #dbg_value(ptr %.sroa.017.0.i.5, !5742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.5, !5753, !DIExpression(), !5848)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.5, i64 896, !dbg !5849
    #dbg_value(ptr %i.x, !5783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5788)
    #dbg_value(ptr %i.x, !5805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5807)
    #dbg_value(i64 12, !5783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5788)
    #dbg_value(i64 12, !5805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5807)
    #dbg_value(ptr poison, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
    #dbg_value(ptr poison, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr poison, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.in.i, !5766, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(i64 %.sroa.019.0.in.i, !5767, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.in.i, !5684, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5839)
  %.sroa.017.0.i.6 = load ptr, ptr %i.x, align 8, !dbg !5842, !noalias !5843, !nonnull !79, !noundef !79
    #dbg_value(i64 %.sroa.019.0.in.i, !5684, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.in.i, !5767, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.in.i, !5766, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(ptr %.sroa.017.0.i.6, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(ptr %.sroa.017.0.i.6, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr %.sroa.017.0.i.6, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
    #dbg_value(i64 %.sroa.019.0.in.i, !5770, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5847)
    #dbg_value(i64 %.sroa.019.0.in.i, !5742, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.6, !5770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5847)
    #dbg_value(ptr %.sroa.017.0.i.6, !5742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.6, !5753, !DIExpression(), !5848)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.6, i64 896, !dbg !5849
    #dbg_value(ptr %i.y, !5783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5788)
    #dbg_value(ptr %i.y, !5805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5807)
    #dbg_value(i64 12, !5783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5788)
    #dbg_value(i64 12, !5805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5807)
    #dbg_value(ptr poison, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
    #dbg_value(ptr poison, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr poison, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.in.i, !5766, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(i64 %.sroa.019.0.in.i, !5767, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.in.i, !5684, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5839)
  %.sroa.019.0.i.7 = add i64 %.sroa.019.0.in.i, -8, !dbg !5842 ; 2 uses
  %.sroa.017.0.i.7 = load ptr, ptr %i.y, align 8, !dbg !5842, !noalias !5843, !nonnull !79, !noundef !79 ; 2 uses
    #dbg_value(i64 %.sroa.019.0.i.7, !5684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.i.7, !5767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.i.7, !5766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(ptr %.sroa.017.0.i.7, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(ptr %.sroa.017.0.i.7, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr %.sroa.017.0.i.7, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
  %i.z = icmp eq i64 %.sroa.019.0.i.7, 0, !dbg !5850
    #dbg_value(i64 %.sroa.019.0.i.7, !5770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5847)
    #dbg_value(i64 %.sroa.019.0.i.7, !5742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.7, !5770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5847)
    #dbg_value(ptr %.sroa.017.0.i.7, !5742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5757)
    #dbg_value(ptr %.sroa.017.0.i.7, !5753, !DIExpression(), !5848)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.7, i64 896, !dbg !5849
    #dbg_value(ptr %i.aa, !5783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5788)
    #dbg_value(ptr %i.aa, !5805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5807)
    #dbg_value(i64 12, !5783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5788)
    #dbg_value(i64 12, !5805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5807)
    #dbg_value(ptr poison, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5837)
    #dbg_value(ptr poison, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5838)
    #dbg_value(ptr poison, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5839)
    #dbg_value(i64 %.sroa.019.0.i.7, !5766, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5837)
    #dbg_value(i64 %.sroa.019.0.i.7, !5767, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5838)
    #dbg_value(i64 %.sroa.019.0.i.7, !5684, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5839)
  br i1 %i.z, label %_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCslIemzedAtQF_5bench.exit, label %.new, !dbg !5850

_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCslIemzedAtQF_5bench.exit: ; preds = %.prol.loopexit, %.new, %bb.b
  %.sroa.7.0 = phi i64 [ %i.m, %bb.b ], [ 0, %.new ], [ 0, %.prol.loopexit ], !dbg !5741
  %.sroa.0.037 = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.017.0.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.7, %.new ], !dbg !5741
  store ptr %.sroa.0.037, ptr %0, align 8, !dbg !5853
  %.sroa.029.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5853
  store i64 0, ptr %.sroa.029.sroa.4.0..sroa_idx, align 8, !dbg !5853
  %.sroa.029.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5853
  store i64 %.sroa.7.0, ptr %.sroa.029.sroa.5.0..sroa_idx, align 8, !dbg !5853
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5853
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !5853
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5853
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !5853
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5853
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.632.0..sroa_idx, align 8, !dbg !5853
  br label %bb.f, !dbg !5854

bb.d:                                             ; preds = %.lr.ph
    #dbg_value(ptr undef, !5422, !DIExpression(), !5644)
    #dbg_value(ptr poison, !5396, !DIExpression(DW_OP_deref), !5639)
    #dbg_value(ptr undef, !5397, !DIExpression(DW_OP_deref), !5639)
    #dbg_value(ptr poison, !5423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5644)
    #dbg_value(ptr undef, !5423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5644)
    #dbg_value(ptr undef, !5424, !DIExpression(), !5643)
    #dbg_value(ptr undef, !5383, !DIExpression(), !5639)
  %i.ab = add i64 %.sroa.5.046, 1, !dbg !5856     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 888, !dbg !5857
  %i.ad = load i16, ptr %i.ac, align 8, !dbg !5857, !noalias !5650 ; 2 uses
    #dbg_value(i64 %i.ab, !5376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5660)
    #dbg_value(i16 %i.ad, !5376, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5660)
    #dbg_value(ptr %i.j, !5376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5660)
  %.not.i = icmp eq i64 %.sroa.5.046, 0, !dbg !5858
    #dbg_value(ptr poison, !5476, !DIExpression(), !5859)
    #dbg_value(ptr poison, !5476, !DIExpression(), !5861)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5863)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5865)
    #dbg_value(ptr %.sroa.0.047, !5493, !DIExpression(), !5859)
    #dbg_value(ptr %.sroa.0.047, !5493, !DIExpression(), !5861)
    #dbg_value(ptr %.sroa.0.047, !5504, !DIExpression(), !5863)
    #dbg_value(ptr %.sroa.0.047, !5504, !DIExpression(), !5865)
    #dbg_value(ptr %.sroa.0.047, !5510, !DIExpression(), !5867)
    #dbg_value(ptr %.sroa.0.047, !5510, !DIExpression(), !5869)
    #dbg_value(ptr %.sroa.0.047, !5521, !DIExpression(), !5871)
    #dbg_value(ptr %.sroa.0.047, !5521, !DIExpression(), !5873)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5859)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5861)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5863)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5865)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5867)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5869)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5871)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5873)
  %..i = select i1 %.not.i, i64 896, i64 992, !dbg !5660
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.047, i64 noundef %..i, i64 noundef 8) #26, !dbg !5875, !noalias !5880
    #dbg_value(ptr %i.j, !5614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5620)
    #dbg_value(ptr %i.j, !5574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5619)
    #dbg_value(i64 %i.ab, !5614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5620)
    #dbg_value(i64 %i.ab, !5574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5619)
    #dbg_value(i16 %i.ad, !5614, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5620)
    #dbg_value(i16 %i.ad, !5574, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5619)
    #dbg_value(ptr undef, !5582, !DIExpression(), !5589)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 890, !dbg !5621
  %i.af = load i16, ptr %i.ae, align 2, !dbg !5621, !noundef !79
  %i.ag = icmp ult i16 %i.ad, %i.af, !dbg !5632
  br i1 %i.ag, label %._crit_edge.loopexit, label %.lr.ph, !dbg !5632

bb.e:                                             ; preds = %.lr.ph
    #dbg_value(i64 poison, !5376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5660)
    #dbg_value(i64 poison, !5376, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5660)
    #dbg_value(ptr poison, !5376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5660)
  %.not.i41 = icmp eq i64 %.sroa.5.046, 0, !dbg !5858
    #dbg_value(ptr poison, !5476, !DIExpression(), !5859)
    #dbg_value(ptr poison, !5476, !DIExpression(), !5861)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5863)
    #dbg_value(ptr poison, !5499, !DIExpression(), !5865)
    #dbg_value(ptr %.sroa.0.047, !5493, !DIExpression(), !5859)
    #dbg_value(ptr %.sroa.0.047, !5493, !DIExpression(), !5861)
    #dbg_value(ptr %.sroa.0.047, !5504, !DIExpression(), !5863)
    #dbg_value(ptr %.sroa.0.047, !5504, !DIExpression(), !5865)
    #dbg_value(ptr %.sroa.0.047, !5510, !DIExpression(), !5867)
    #dbg_value(ptr %.sroa.0.047, !5510, !DIExpression(), !5869)
    #dbg_value(ptr %.sroa.0.047, !5521, !DIExpression(), !5871)
    #dbg_value(ptr %.sroa.0.047, !5521, !DIExpression(), !5873)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5859)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5861)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5863)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5865)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5867)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5869)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5871)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5873)
  %..i42 = select i1 %.not.i41, i64 896, i64 992, !dbg !5660
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.047, i64 noundef %..i42, i64 noundef 8) #26, !dbg !5875, !noalias !5880
  store ptr null, ptr %0, align 8, !dbg !5881
  br label %bb.f, !dbg !5854

bb.f:                                             ; preds = %_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCslIemzedAtQF_5bench.exit, %bb.e
  ret void, !dbg !5882
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3o_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !2963 {
bb.a:
    #dbg_value(ptr %0, !2962, !DIExpression(), !5883)
  %i.a = load i64, ptr %0, align 8, !dbg !5884, !range !1955, !noundef !79
  %1 = trunc nuw i64 %i.a to i1, !dbg !5884
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5884
  %.val = load ptr, ptr %i.b, align 8, !dbg !5884, !nonnull !79, !align !1989, !noundef !79 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5884
  %.val1 = load i8, ptr %i.c, align 8, !dbg !5884, !range !2781, !noundef !79
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !5884 ; 2 uses
  %i.e = trunc nuw i8 %.val1 to i1, !dbg !5884    ; 2 uses
  br i1 %1, label %bb.f, label %bb.b, !dbg !5884

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !2855, !DIExpression(), !5885)
    #dbg_value(ptr poison, !2862, !DIExpression(), !5887)
    #dbg_value(i32 1073741823, !2868, !DIExpression(), !5889)
    #dbg_value(i8 1, !2872, !DIExpression(), !5889)
    #dbg_value(i32 1073741823, !2882, !DIExpression(), !5892)
    #dbg_value(i8 1, !2886, !DIExpression(), !5892)
    #dbg_value(ptr %i.d, !2890, !DIExpression(), !5894)
    #dbg_value(ptr poison, !2898, !DIExpression(), !5894)
    #dbg_value(i8 0, !2901, !DIExpression(), !5896)
    #dbg_value(i8 1, !2913, !DIExpression(), !5901)
    #dbg_value(i8 0, !2920, !DIExpression(), !5901)
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !dbg !5903

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2904, !DIExpression(), !5896)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !5904)
    #dbg_value(i8 0, !2761, !DIExpression(), !5904)
  %i.f = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !5906
  %i.g = and i64 %i.f, 9223372036854775807, !dbg !5907
  %i.h = icmp eq i64 %i.g, 0, !dbg !5907
  br i1 %i.h, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d, !dbg !5907, !prof !1872

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21, !dbg !5908
  br i1 %i.i, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.e, !dbg !5909

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.d, !2919, !DIExpression(), !5910)
    #dbg_value(ptr %i.d, !2931, !DIExpression(), !5911)
    #dbg_value(i8 1, !2936, !DIExpression(), !5911)
    #dbg_value(i8 0, !2937, !DIExpression(), !5911)
  store atomic i8 1, ptr %i.d monotonic, align 8, !dbg !5913
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !5914

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
    #dbg_value(ptr %.val, !2878, !DIExpression(), !5915)
    #dbg_value(ptr %.val, !2871, !DIExpression(), !5916)
    #dbg_value(ptr %.val, !2885, !DIExpression(), !5892)
  %i.j = atomicrmw sub ptr %.val, i32 1073741823 release, align 4, !dbg !5917
  %i.k = add i32 %i.j, -1073741823, !dbg !5918    ; 2 uses
    #dbg_value(i32 %i.k, !2879, !DIExpression(), !5919)
  %or.cond.not.i.i = icmp ult i32 %i.k, 1073741824, !dbg !5920
  br i1 %or.cond.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split, !dbg !5920, !prof !2948

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !2973, !DIExpression(), !5921)
    #dbg_value(ptr poison, !2855, !DIExpression(), !5923)
    #dbg_value(ptr poison, !2862, !DIExpression(), !5925)
    #dbg_value(i32 1073741823, !2868, !DIExpression(), !5927)
    #dbg_value(i8 1, !2872, !DIExpression(), !5927)
    #dbg_value(i32 1073741823, !2882, !DIExpression(), !5930)
    #dbg_value(i8 1, !2886, !DIExpression(), !5930)
    #dbg_value(ptr %i.d, !2890, !DIExpression(), !5932)
    #dbg_value(ptr poison, !2898, !DIExpression(), !5932)
    #dbg_value(i8 0, !2901, !DIExpression(), !5934)
    #dbg_value(i8 1, !2913, !DIExpression(), !5939)
    #dbg_value(i8 0, !2920, !DIExpression(), !5939)
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g, !dbg !5941

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2904, !DIExpression(), !5934)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2755, !DIExpression(), !5942)
    #dbg_value(i8 0, !2761, !DIExpression(), !5942)
  %i.l = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !5944
  %i.m = and i64 %i.l, 9223372036854775807, !dbg !5945
  %i.n = icmp eq i64 %i.m, 0, !dbg !5945
  br i1 %i.n, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h, !dbg !5945, !prof !1872

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21, !dbg !5946
  br i1 %i.o, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !dbg !5947

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.d, !2919, !DIExpression(), !5948)
    #dbg_value(ptr %i.d, !2931, !DIExpression(), !5949)
    #dbg_value(i8 1, !2936, !DIExpression(), !5949)
    #dbg_value(i8 0, !2937, !DIExpression(), !5949)
  store atomic i8 1, ptr %i.d monotonic, align 8, !dbg !5951
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !5952

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
    #dbg_value(ptr %.val, !2878, !DIExpression(), !5953)
    #dbg_value(ptr %.val, !2871, !DIExpression(), !5954)
    #dbg_value(ptr %.val, !2885, !DIExpression(), !5930)
  %i.p = atomicrmw sub ptr %.val, i32 1073741823 release, align 4, !dbg !5955
  %i.q = add i32 %i.p, -1073741823, !dbg !5956    ; 2 uses
    #dbg_value(i32 %i.q, !2879, !DIExpression(), !5957)
  %or.cond.not.i.i.i = icmp ult i32 %i.q, 1073741824, !dbg !5958
  br i1 %or.cond.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split, !dbg !5958, !prof !2948

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sink = phi i32 [ %i.k, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %i.q, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ]
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val, i32 noundef %.sink), !dbg !5884
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit, !dbg !5884

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core4span2IdINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB31_5field9SpanMatchEEEECslIemzedAtQF_5bench.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void, !dbg !5884
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layered7LayeredINtNtNtBI_3fmt9fmt_layer5LayerNtNtNtBI_8registry7sharded8RegistryEB26_EECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(576) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5959 {
bb.a:
    #dbg_value(ptr %0, !5964, !DIExpression(), !5967)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5968 ; 3 uses
    #dbg_value(ptr %i.a, !5969, !DIExpression(), !5977)
    #dbg_value(ptr %i.a, !5979, !DIExpression(), !5987)
    #dbg_value(ptr %i.a, !5989, !DIExpression(), !5997)
  invoke void @_RNvXs3_NtCskXT5ShPYifM_12sharded_slab5shardINtB5_5ArrayNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.a)
          to label %bb.d unwind label %bb.b, !dbg !5999

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5999
  %.val4.i.i.i = load i64, ptr %i.c, align 8, !dbg !5999, !alias.scope !6000, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !6007, !DIExpression(), !6015)
    #dbg_value(ptr poison, !6017, !DIExpression(), !6043)
    #dbg_value(ptr poison, !6023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6045)
    #dbg_value(i64 %.val4.i.i.i, !6023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6045)
    #dbg_value(ptr poison, !6046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6056)
    #dbg_value(ptr poison, !6058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6063)
    #dbg_value(i64 %.val4.i.i.i, !6046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6056)
    #dbg_value(i64 %.val4.i.i.i, !6058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6063)
    #dbg_value(i64 8, !6040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6065)
    #dbg_value(i64 %.val4.i.i.i, !6040, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6065)
  %i.d = icmp eq i64 %.val4.i.i.i, 0, !dbg !6066
  br i1 %i.d, label %.body.i, label %bb.c, !dbg !6066

bb.c:                                             ; preds = %bb.b
  %.val3.i.i.i = load ptr, ptr %i.a, align 8, !dbg !5999, !alias.scope !6000, !nonnull !79, !noundef !79
  %i.e = shl nuw nsw i64 %.val4.i.i.i, 3, !dbg !6067
    #dbg_value(i64 %i.e, !6040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6065)
    #dbg_value(ptr %.val3.i.i.i, !6046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6056)
    #dbg_value(ptr %.val3.i.i.i, !6058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6063)
    #dbg_value(ptr %.val3.i.i.i, !6023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6045)
    #dbg_value(ptr poison, !5476, !DIExpression(), !6068)
    #dbg_value(ptr poison, !5499, !DIExpression(), !6070)
    #dbg_value(ptr %.val3.i.i.i, !5493, !DIExpression(), !6068)
    #dbg_value(ptr %.val3.i.i.i, !5504, !DIExpression(), !6070)
    #dbg_value(ptr %.val3.i.i.i, !5510, !DIExpression(), !6072)
    #dbg_value(ptr %.val3.i.i.i, !5521, !DIExpression(), !6074)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6068)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6070)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6072)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6074)
    #dbg_value(i64 %i.e, !5494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6068)
    #dbg_value(i64 %i.e, !5505, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6070)
    #dbg_value(i64 %i.e, !5516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6072)
    #dbg_value(i64 %i.e, !5524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6074)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef 8) #26, !dbg !6076
  br label %.body.i, !dbg !6077

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5999
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !dbg !5999, !alias.scope !6000, !noundef !79 ; 2 uses
    #dbg_value(ptr poison, !6007, !DIExpression(), !6078)
    #dbg_value(ptr poison, !6017, !DIExpression(), !6080)
    #dbg_value(ptr poison, !6023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6082)
    #dbg_value(i64 %.val2.i.i.i, !6023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6082)
    #dbg_value(ptr poison, !6046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6083)
    #dbg_value(ptr poison, !6058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6085)
    #dbg_value(i64 %.val2.i.i.i, !6046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6083)
    #dbg_value(i64 %.val2.i.i.i, !6058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6085)
    #dbg_value(i64 8, !6040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6087)
    #dbg_value(i64 %.val2.i.i.i, !6040, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6087)
  %i.g = icmp eq i64 %.val2.i.i.i, 0, !dbg !6088
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryECslIemzedAtQF_5bench.exit, label %bb.e, !dbg !6088

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !dbg !5999, !alias.scope !6000, !nonnull !79, !noundef !79
  %i.h = shl nuw nsw i64 %.val2.i.i.i, 3, !dbg !6089
    #dbg_value(i64 %i.h, !6040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6087)
    #dbg_value(ptr %.val.i.i.i, !6046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6083)
    #dbg_value(ptr %.val.i.i.i, !6058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6085)
    #dbg_value(ptr %.val.i.i.i, !6023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6082)
    #dbg_value(ptr poison, !5476, !DIExpression(), !6090)
    #dbg_value(ptr poison, !5499, !DIExpression(), !6092)
    #dbg_value(ptr %.val.i.i.i, !5493, !DIExpression(), !6090)
    #dbg_value(ptr %.val.i.i.i, !5504, !DIExpression(), !6092)
    #dbg_value(ptr %.val.i.i.i, !5510, !DIExpression(), !6094)
    #dbg_value(ptr %.val.i.i.i, !5521, !DIExpression(), !6096)
    #dbg_value(i64 8, !5494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6090)
    #dbg_value(i64 8, !5505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6092)
    #dbg_value(i64 8, !5516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6094)
    #dbg_value(i64 8, !5524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6096)
    #dbg_value(i64 %i.h, !5494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6090)
    #dbg_value(i64 %i.h, !5505, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6092)
    #dbg_value(i64 %i.h, !5516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6094)
    #dbg_value(i64 %i.h, !5524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6096)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 8) #26, !dbg !6098
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryECslIemzedAtQF_5bench.exit, !dbg !6099

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6100
    #dbg_value(ptr %i.i, !6101, !DIExpression(), !6109)
  invoke void @_RNvXs1_Cs4lPw7rMVDcJ_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBV_3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs4lPw7rMVDcJ_12thread_local11ThreadLocalINtNtB4_4cell7RefCellNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry5stack9SpanStackEEECslIemzedAtQF_5bench.exit.i unwind label %bb.f, !dbg !6111

end_hunk_2
