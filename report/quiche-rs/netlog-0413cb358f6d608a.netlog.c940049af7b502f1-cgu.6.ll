Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.6?download=true
inline.NumInlined: 267
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs2_NtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCshhfsHpF03Qr_6netlog:bb.a

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !8805, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !8846)
    #dbg_value(ptr %1, !8847, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !8853)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !9120
    #dbg_value(ptr %i.f, !8860, !DIExpression(), !8475)
    #dbg_value(i64 0, !8863, !DIExpression(), !8475)
    #dbg_value(i64 1, !8864, !DIExpression(), !8475)
    #dbg_value(i8 3, !8865, !DIExpression(), !8475)
    #dbg_value(i8 2, !8866, !DIExpression(), !8475)
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8, !dbg !9121
  %i.h = extractvalue { i64, i1 } %i.g, 1, !dbg !9121
    #dbg_value(i1 %i.h, !8730, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8871)
    #dbg_value(i64 poison, !8730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8871)
  br i1 %i.h, label %bb.d, label %bb.c, !dbg !9122

bb.c:                                             ; preds = %bb.b, %bb.a
    #dbg_value(ptr %1, !8873, !DIExpression(), !8879)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9123
  %i.j = load i64, ptr %i.i, align 8, !dbg !9123, !noundef !722 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872, !dbg !9124
  tail call void @llvm.assume(i1 %i.k), !dbg !9125
  %i.l = icmp eq i64 %i.j, 0, !dbg !9126
  br i1 %i.l, label %bb.g, label %bb.k, !dbg !9126

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9127
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9128
  %.val46 = load ptr, ptr %i.m, align 8, !dbg !9128, !nonnull !722, !noundef !722
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !9128
  %.val47 = load ptr, ptr %i.n, align 8, !dbg !9128, !nonnull !722, !align !1019, !noundef !722
    #dbg_value(ptr poison, !8881, !DIExpression(), !8479)
    #dbg_declare(ptr poison, !8885, !DIExpression(), !8480)
  %i.o = getelementptr inbounds nuw i8, ptr %.val47, i64 40, !dbg !9129
  %i.p = load ptr, ptr %i.o, align 8, !dbg !9129, !invariant.load !722, !noalias !8889, !nonnull !722
  call void %i.p(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noundef nonnull %.val46) #31, !dbg !9129
    #dbg_value(ptr %1, !8892, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !8899)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !9130 ; 4 uses
    #dbg_value(ptr %i.q, !8901, !DIExpression(), !8486)
  %i.r = load i64, ptr %i.q, align 8, !dbg !9131, !range !8905, !alias.scope !8906, !noundef !722
  %i.s = icmp eq i64 %i.r, -1, !dbg !9131
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEECshhfsHpF03Qr_6netlog.exit, label %bb.e, !dbg !9131

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEECshhfsHpF03Qr_6netlog.exit unwind label %bb.f, !dbg !9131

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.q, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false), !dbg !9132
  br label %common.resume, !dbg !9133

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEECshhfsHpF03Qr_6netlog.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.q, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false), !dbg !9132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9133
  %i.u = inttoptr i64 %2 to ptr, !dbg !9134
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9135
  store ptr %1, ptr %i.v, align 8, !dbg !9135
  store i64 1, ptr %0, align 8, !dbg !9135
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9135
  store ptr %i.u, ptr %i.w, align 8, !dbg !9135
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9135
  store i8 0, ptr %i.x, align 8, !dbg !9135
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit62, !dbg !9136

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit62: ; preds = %bb.aa, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i61, %bb.w, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheE3newCshhfsHpF03Qr_6netlog.exit42, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEECshhfsHpF03Qr_6netlog.exit
  ret void, !dbg !9137

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.y ], [ %i.t, %bb.f ], [ %i.y, %bb.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !8776

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25, !dbg !9126
  unreachable, !dbg !9126

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECshhfsHpF03Qr_6netlog.exit73
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #30
          to label %.noexc54 unwind label %bb.i, !dbg !9138

.noexc54:                                         ; preds = %bb.h
  unreachable, !dbg !9138

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #29
          to label %common.resume unwind label %bb.j, !dbg !9139

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !dbg !9140
  unreachable, !dbg !9140

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheE3newCshhfsHpF03Qr_6netlog.exit42: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECshhfsHpF03Qr_6netlog.exit73
    #dbg_value(ptr %i.cz, !8916, !DIExpression(), !8495)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.cz, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false), !dbg !9141
    #dbg_value(ptr %i.cz, !8797, !DIExpression(), !8800)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9142
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9143
  store ptr %1, ptr %i.aa, align 8, !dbg !9143
  store i64 0, ptr %0, align 8, !dbg !9143
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9143
  store ptr %i.cz, ptr %i.ab, align 8, !dbg !9143
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9143
  store i8 1, ptr %i.ac, align 8, !dbg !9143
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit62, !dbg !9137

bb.k:                                             ; preds = %bb.c
    #dbg_value(i64 poison, !8731, !DIExpression(), !8918)
    #dbg_value(i64 poison, !8919, !DIExpression(), !8929)
    #dbg_value(i64 poison, !8931, !DIExpression(), !8946)
    #dbg_value(i64 poison, !8947, !DIExpression(), !8954)
    #dbg_value(i32 1, !8732, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8956)
    #dbg_value(i32 poison, !8732, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8956)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
    #dbg_value(i32 1, !8732, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8956)
    #dbg_value(ptr %1, !8924, !DIExpression(), !8958)
    #dbg_value(ptr %1, !8959, !DIExpression(), !8965)
    #dbg_value(ptr %1, !8966, !DIExpression(), !8970)
    #dbg_value(ptr %1, !8971, !DIExpression(), !8977)
    #dbg_value(ptr poison, !8939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8946)
    #dbg_value(ptr poison, !8951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8954)
    #dbg_value(i64 %i.j, !8939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8946)
    #dbg_value(i64 %i.j, !8951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8954)
  %i.af = urem i64 %2, %i.j, !dbg !9126
    #dbg_value(i64 %i.af, !8731, !DIExpression(), !8918)
    #dbg_value(i64 %i.af, !8919, !DIExpression(), !8929)
    #dbg_value(i64 %i.af, !8931, !DIExpression(), !8946)
    #dbg_value(i64 %i.af, !8947, !DIExpression(), !8954)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !9144, !nonnull !722, !noundef !722
    #dbg_value(ptr %i.ah, !8939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8946)
    #dbg_value(ptr %i.ah, !8951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8954)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %i.af, !dbg !9145 ; 3 uses
    #dbg_value(ptr %i.ai, !2272, !DIExpression(), !8508)
    #dbg_value(ptr %i.ai, !2289, !DIExpression(), !8510)
    #dbg_declare(ptr %i.a, !2304, !DIExpression(), !8512)
    #dbg_value(i32 0, !2323, !DIExpression(), !8515)
    #dbg_value(i32 1, !2340, !DIExpression(), !8515)
    #dbg_value(i8 2, !2341, !DIExpression(), !8515)
    #dbg_value(i8 0, !2342, !DIExpression(), !8515)
    #dbg_value(ptr %i.ai, !2349, !DIExpression(), !8516)
    #dbg_value(ptr %i.ai, !2339, !DIExpression(), !8517)
    #dbg_value(ptr %i.ai, !2352, !DIExpression(), !8519)
    #dbg_value(i32 0, !2355, !DIExpression(), !8519)
    #dbg_value(i32 1, !2356, !DIExpression(), !8519)
    #dbg_value(i8 2, !2357, !DIExpression(), !8519)
    #dbg_value(i8 0, !2358, !DIExpression(), !8519)
  %i.aj = cmpxchg ptr %i.ai, i32 0, i32 1 acquire monotonic, align 4, !dbg !9146, !noalias !8981
  %i.ak = extractvalue { i32, i1 } %i.aj, 1, !dbg !9146
  br i1 %i.ak, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECshhfsHpF03Qr_6netlog.exit73, !dbg !9147

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9148, !noalias !8981
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4, !dbg !9149
    #dbg_value(ptr %i.al, !2364, !DIExpression(), !8523)
    #dbg_value(ptr %i.al, !2385, !DIExpression(), !8525)
    #dbg_value(i8 0, !2390, !DIExpression(), !8530)
    #dbg_value(i8 0, !2403, !DIExpression(), !8532)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2394, !DIExpression(), !8530)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2410, !DIExpression(), !8534)
    #dbg_value(i8 0, !2413, !DIExpression(), !8534)
  %i.am = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9150, !noalias !8981
  %i.an = and i64 %i.am, 9223372036854775807, !dbg !9151
  %i.ao = icmp eq i64 %i.an, 0, !dbg !9151
  br i1 %i.ao, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEE8try_lockCshhfsHpF03Qr_6netlog.exit, label %bb.m, !dbg !9151, !prof !2214

bb.m:                                             ; preds = %bb.l
  %i.ap = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !9152, !noalias !8981
  %i.aq = xor i1 %i.ap, true, !dbg !9153
  %i.ar = zext i1 %i.aq to i8, !dbg !9154
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEE8try_lockCshhfsHpF03Qr_6netlog.exit, !dbg !9152

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEE8try_lockCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.l, %bb.m
  %.sroa.01.0.i.i = phi i8 [ %i.ar, %bb.m ], [ 0, %bb.l ], !dbg !9155
    #dbg_value(i8 %.sroa.01.0.i.i, !2383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8535)
    #dbg_value(ptr %i.al, !2408, !DIExpression(), !8536)
    #dbg_value(ptr %i.al, !2415, !DIExpression(), !8538)
    #dbg_value(i8 0, !2418, !DIExpression(), !8538)
  %i.as = load atomic i8, ptr %i.al monotonic, align 1, !dbg !9156, !noalias !8981
  %.not.i.i = icmp ne i8 %i.as, 0, !dbg !9157
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.ai), !dbg !9158, !noalias !8981
  %i.at = load i64, ptr %i.a, align 8, !dbg !9159, !range !803, !noalias !8981, !noundef !722
  %i.au = load ptr, ptr %i.ad, align 8, !dbg !9160, !noalias !8981, !nonnull !722, !align !1019, !noundef !722 ; 12 uses
  %i.av = load i8, ptr %i.ae, align 8, !dbg !9160, !range !797, !noalias !8981, !noundef !722 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9161, !noalias !8981
  %i.aw = trunc nuw i64 %i.at to i1, !dbg !9162
  br i1 %i.aw, label %bb.ab, label %bb.n, !dbg !9162

bb.n:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEE8try_lockCshhfsHpF03Qr_6netlog.exit
    #dbg_value(ptr undef, !8769, !DIExpression(), !8775)
    #dbg_value(ptr %i.au, !8831, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8982)
    #dbg_value(ptr %i.au, !8837, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8983)
    #dbg_value(ptr %i.au, !8984, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8991)
    #dbg_value(ptr %i.au, !8992, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8996)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !9163 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !9163, !noundef !722 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0, !dbg !9163
  br i1 %i.az, label %bb.o, label %bb.s, !dbg !9163

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %i.au, !8754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8997)
    #dbg_value(i8 %i.av, !8754, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !8997)
    #dbg_value(ptr poison, !8999, !DIExpression(), !8543)
    #dbg_value(ptr poison, !9003, !DIExpression(), !8546)
    #dbg_value(i32 0, !9006, !DIExpression(), !8551)
    #dbg_value(i8 1, !9011, !DIExpression(), !8551)
    #dbg_value(i32 0, !9018, !DIExpression(), !8554)
    #dbg_value(i8 1, !9022, !DIExpression(), !8554)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 4, !dbg !9164
    #dbg_value(ptr %i.ba, !9024, !DIExpression(), !8557)
    #dbg_value(ptr poison, !9030, !DIExpression(), !8557)
    #dbg_value(i8 0, !9032, !DIExpression(), !8566)
    #dbg_value(i8 1, !9035, !DIExpression(), !8569)
    #dbg_value(i8 0, !9040, !DIExpression(), !8569)
  %i.bb = trunc nuw i8 %i.av to i1, !dbg !9165
  br i1 %i.bb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !dbg !9165

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !9033, !DIExpression(), !8566)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2410, !DIExpression(), !8571)
    #dbg_value(i8 0, !2413, !DIExpression(), !8571)
  %i.bc = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9166
  %i.bd = and i64 %i.bc, 9223372036854775807, !dbg !9167
  %i.be = icmp eq i64 %i.bd, 0, !dbg !9167
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc59, !dbg !9167, !prof !2214

.noexc59:                                         ; preds = %bb.p
  %i.bf = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !9168
  br i1 %i.bf, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q, !dbg !9169

bb.q:                                             ; preds = %.noexc59
    #dbg_value(ptr %i.ba, !9039, !DIExpression(), !8572)
    #dbg_value(ptr %i.ba, !9042, !DIExpression(), !8575)
    #dbg_value(i8 1, !9045, !DIExpression(), !8575)
    #dbg_value(i8 0, !9046, !DIExpression(), !8575)
  store atomic i8 1, ptr %i.ba monotonic, align 4, !dbg !9170
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !9171

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %.noexc59, %bb.p, %bb.o
    #dbg_value(ptr %i.au, !9016, !DIExpression(), !8576)
    #dbg_value(ptr %i.au, !9010, !DIExpression(), !8577)
    #dbg_value(ptr %i.au, !9021, !DIExpression(), !8554)
  %i.bg = atomicrmw xchg ptr %i.au, i32 0 release, align 4, !dbg !9172
  %i.bh = icmp eq i32 %i.bg, 2, !dbg !9173
  br i1 %i.bh, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit, !dbg !9173, !prof !830

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.au), !dbg !9174
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit, !dbg !9174

bb.s:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !9175
    #dbg_value(ptr %i.bi, !8831, !DIExpression(), !8982)
    #dbg_value(ptr %i.bi, !8837, !DIExpression(), !8983)
    #dbg_value(ptr %i.bi, !8984, !DIExpression(), !8991)
    #dbg_value(ptr %i.bi, !8992, !DIExpression(), !8996)
  %i.bj = add nsw i64 %i.ay, -1, !dbg !9176       ; 2 uses
  store i64 %i.bj, ptr %i.ax, align 8, !dbg !9176
  %i.bk = load i64, ptr %i.bi, align 8, !dbg !9177, !range !1010, !noundef !722
  %i.bl = icmp samesign ult i64 %i.bj, %i.bk, !dbg !9178
    #dbg_value(i1 true, !9053, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9056)
  tail call void @llvm.assume(i1 %i.bl), !dbg !9179
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !9180
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !9180, !nonnull !722, !noundef !722
    #dbg_value(ptr %i.bn, !9076, !DIExpression(), !9082)
    #dbg_value(i64 %i.bj, !9079, !DIExpression(), !9082)
  %i.bo = icmp ult i64 %i.ay, 1152921504606846977, !dbg !9181
  tail call void @llvm.assume(i1 %i.bo), !dbg !9182
  %i.bp = getelementptr [8 x i8], ptr %i.bn, i64 %i.ay, !dbg !9183
  %4 = getelementptr i8, ptr %i.bp, i64 -8, !dbg !9183
    #dbg_value(ptr %4, !9083, !DIExpression(), !9088)
  %i.bq = load ptr, ptr %4, align 8, !dbg !9184, !nonnull !722, !align !1019, !noundef !722
    #dbg_value(ptr %i.bq, !8735, !DIExpression(), !9089)
    #dbg_value(ptr %i.bq, !8789, !DIExpression(), !8792)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9185
  store ptr %1, ptr %i.br, align 8, !dbg !9185
  store i64 0, ptr %0, align 8, !dbg !9185
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9185
  store ptr %i.bq, ptr %i.bs, align 8, !dbg !9185
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9185
  store i8 0, ptr %i.bt, align 8, !dbg !9185
    #dbg_value(ptr poison, !8999, !DIExpression(), !8587)
    #dbg_value(ptr poison, !9003, !DIExpression(), !8589)
    #dbg_value(i32 0, !9006, !DIExpression(), !8592)
    #dbg_value(i8 1, !9011, !DIExpression(), !8592)
    #dbg_value(i32 0, !9018, !DIExpression(), !8594)
    #dbg_value(i8 1, !9022, !DIExpression(), !8594)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 4, !dbg !9186
    #dbg_value(ptr %i.bu, !9024, !DIExpression(), !8596)
    #dbg_value(ptr poison, !9030, !DIExpression(), !8596)
    #dbg_value(i8 0, !9032, !DIExpression(), !8601)
    #dbg_value(i8 1, !9035, !DIExpression(), !8603)
    #dbg_value(i8 0, !9040, !DIExpression(), !8603)
  %i.bv = trunc nuw i8 %i.av to i1, !dbg !9187
  br i1 %i.bv, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i61, label %bb.t, !dbg !9187

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !9033, !DIExpression(), !8601)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2410, !DIExpression(), !8605)
    #dbg_value(i8 0, !2413, !DIExpression(), !8605)
  %i.bw = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9188
  %i.bx = and i64 %i.bw, 9223372036854775807, !dbg !9189
  %i.by = icmp eq i64 %i.bx, 0, !dbg !9189
  br i1 %i.by, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i61, label %bb.u, !dbg !9189, !prof !2214

bb.u:                                             ; preds = %bb.t
  %i.bz = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !9190
  br i1 %i.bz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i61, label %bb.v, !dbg !9191

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.bu, !9039, !DIExpression(), !8606)
    #dbg_value(ptr %i.bu, !9042, !DIExpression(), !8608)
    #dbg_value(i8 1, !9045, !DIExpression(), !8608)
    #dbg_value(i8 0, !9046, !DIExpression(), !8608)
  store atomic i8 1, ptr %i.bu monotonic, align 4, !dbg !9192
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i61, !dbg !9193

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i61: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
    #dbg_value(ptr %i.au, !9016, !DIExpression(), !8609)
    #dbg_value(ptr %i.au, !9010, !DIExpression(), !8610)
    #dbg_value(ptr %i.au, !9021, !DIExpression(), !8594)
  %i.ca = atomicrmw xchg ptr %i.au, i32 0 release, align 4, !dbg !9194
  %i.cb = icmp eq i32 %i.ca, 2, !dbg !9195
  br i1 %i.cb, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit62, !dbg !9195, !prof !830

bb.w:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i61
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.au), !dbg !9196
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit62, !dbg !9196

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit: ; preds = %bb.r, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9197
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9197
  %.val = load ptr, ptr %i.cc, align 8, !dbg !9197, !nonnull !722, !noundef !722
  %i.cd = getelementptr i8, ptr %1, i64 32, !dbg !9197
  %.val43 = load ptr, ptr %i.cd, align 8, !dbg !9197, !nonnull !722, !align !1019, !noundef !722
    #dbg_value(ptr poison, !8881, !DIExpression(), !8612)
    #dbg_declare(ptr poison, !8885, !DIExpression(), !8613)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val43, i64 40, !dbg !9198
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !9198, !invariant.load !722, !noalias !9090, !nonnull !722
  call void %i.cf(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.c, ptr noundef nonnull %.val) #31, !dbg !9198, !inline_history !8616
    #dbg_declare(ptr %i.c, !8914, !DIExpression(), !8618)
    #dbg_value(i64 8, !8908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8620)
    #dbg_value(i64 8, !9091, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8623)
    #dbg_value(i64 8, !9095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8626)
    #dbg_value(i64 1400, !8908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8620)
    #dbg_value(i64 1400, !9091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8623)
    #dbg_value(i64 1400, !9095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8626)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9093, !DIExpression(), !8623)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9096, !DIExpression(), !8626)
    #dbg_value(i8 0, !9097, !DIExpression(), !8626)
    #dbg_value(i64 8, !2439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8628)
    #dbg_value(i64 8, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(i64 1400, !2439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8628)
    #dbg_value(i64 1400, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8630)
    #dbg_value(i1 false, !2443, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8628)
    #dbg_value(i64 1400, !2444, !DIExpression(), !8631)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !9199, !noalias !9099
  %i.cg = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #28, !dbg !9200, !noalias !9099 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null, !dbg !9201
  br i1 %i.ch, label %bb.x, label %bb.aa, !dbg !9202, !prof !830

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #30
          to label %.noexc64 unwind label %bb.y, !dbg !9203

.noexc64:                                         ; preds = %bb.x
  unreachable, !dbg !9203

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.c) #29
          to label %common.resume unwind label %bb.z, !dbg !9204

bb.z:                                             ; preds = %bb.y
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !dbg !9205
  unreachable, !dbg !9205

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit
    #dbg_value(ptr %i.cg, !8916, !DIExpression(), !8634)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.cg, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false), !dbg !9206
    #dbg_value(ptr %i.cg, !8736, !DIExpression(), !9100)
    #dbg_value(ptr %i.cg, !8789, !DIExpression(), !8794)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9207
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9208
  store ptr %1, ptr %i.ck, align 8, !dbg !9208
  store i64 0, ptr %0, align 8, !dbg !9208
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9208
  store ptr %i.cg, ptr %i.cl, align 8, !dbg !9208
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9208
  store i8 0, ptr %i.cm, align 8, !dbg !9208
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit62, !dbg !9209

bb.ab:                                            ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEE8try_lockCshhfsHpF03Qr_6netlog.exit
    #dbg_value(ptr undef, !8761, !DIExpression(), !8454)
    #dbg_value(ptr poison, !9103, !DIExpression(), !8637)
    #dbg_value(ptr poison, !9110, !DIExpression(), !8640)
    #dbg_value(ptr poison, !8999, !DIExpression(), !8642)
    #dbg_value(ptr poison, !9003, !DIExpression(), !8644)
    #dbg_value(i32 0, !9006, !DIExpression(), !8647)
    #dbg_value(i8 1, !9011, !DIExpression(), !8647)
    #dbg_value(i32 0, !9018, !DIExpression(), !8649)
    #dbg_value(i8 1, !9022, !DIExpression(), !8649)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 4, !dbg !9210
    #dbg_value(ptr %i.cn, !9024, !DIExpression(), !8651)
    #dbg_value(ptr poison, !9030, !DIExpression(), !8651)
    #dbg_value(i8 0, !9032, !DIExpression(), !8656)
    #dbg_value(i8 1, !9035, !DIExpression(), !8658)
    #dbg_value(i8 0, !9040, !DIExpression(), !8658)
  %i.co = trunc nuw i8 %i.av to i1, !dbg !9211
  br i1 %i.co, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i69, label %bb.ac, !dbg !9211

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !9033, !DIExpression(), !8656)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2410, !DIExpression(), !8660)
    #dbg_value(i8 0, !2413, !DIExpression(), !8660)
  %i.cp = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9212, !noalias !9116
  %i.cq = and i64 %i.cp, 9223372036854775807, !dbg !9213
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !9213
  br i1 %i.cr, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i69, label %bb.ad, !dbg !9213, !prof !2214

bb.ad:                                            ; preds = %bb.ac
  %i.cs = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !9214, !noalias !9116
  br i1 %i.cs, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i69, label %bb.ae, !dbg !9215

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr %i.cn, !9039, !DIExpression(), !8663)
    #dbg_value(ptr %i.cn, !9042, !DIExpression(), !8665)
    #dbg_value(i8 1, !9045, !DIExpression(), !8665)
    #dbg_value(i8 0, !9046, !DIExpression(), !8665)
  store atomic i8 1, ptr %i.cn monotonic, align 4, !dbg !9216, !noalias !9116
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i69, !dbg !9217

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i69: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
    #dbg_value(ptr %i.au, !9016, !DIExpression(), !8666)
    #dbg_value(ptr %i.au, !9010, !DIExpression(), !8667)
    #dbg_value(ptr %i.au, !9021, !DIExpression(), !8649)
  %i.ct = atomicrmw xchg ptr %i.au, i32 0 release, align 4, !dbg !9218, !noalias !9116
  %i.cu = icmp eq i32 %i.ct, 2, !dbg !9219
  br i1 %i.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit.sink.split.i70, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECshhfsHpF03Qr_6netlog.exit73, !dbg !9219, !prof !830

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit.sink.split.i70: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i69
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.au), !dbg !9220, !noalias !9116
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECshhfsHpF03Qr_6netlog.exit73, !dbg !9220

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECshhfsHpF03Qr_6netlog.exit73: ; preds = %bb.k, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i69, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEEECshhfsHpF03Qr_6netlog.exit.sink.split.i70
    #dbg_value(i32 poison, !8732, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8956)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9221
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9221
  %.val44 = load ptr, ptr %i.cv, align 8, !dbg !9221, !nonnull !722, !noundef !722
  %i.cw = getelementptr i8, ptr %1, i64 32, !dbg !9221
  %.val45 = load ptr, ptr %i.cw, align 8, !dbg !9221, !nonnull !722, !align !1019, !noundef !722
    #dbg_value(ptr poison, !8881, !DIExpression(), !8669)
    #dbg_declare(ptr poison, !8885, !DIExpression(), !8670)
  %i.cx = getelementptr inbounds nuw i8, ptr %.val45, i64 40, !dbg !9222
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !9222, !invariant.load !722, !noalias !9117, !nonnull !722
  call void %i.cy(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noundef nonnull %.val44) #31, !dbg !9222, !inline_history !8616
    #dbg_declare(ptr %i.b, !8914, !DIExpression(), !8673)
    #dbg_value(i64 8, !8908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8674)
    #dbg_value(i64 8, !9091, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8676)
    #dbg_value(i64 8, !9095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8678)
    #dbg_value(i64 1400, !8908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8674)
    #dbg_value(i64 1400, !9091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8676)
    #dbg_value(i64 1400, !9095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8678)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9093, !DIExpression(), !8676)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9096, !DIExpression(), !8678)
    #dbg_value(i8 0, !9097, !DIExpression(), !8678)
    #dbg_value(i64 8, !2439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8680)
    #dbg_value(i64 8, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8682)
    #dbg_value(i64 1400, !2439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8680)
end_hunk_0
