Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.14?download=true
inline.NumInlined: 173
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter11on_new_spanINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2k_EECslIemzedAtQF_5bench:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3979
  %.val33 = load ptr, ptr %i.do, align 8, !dbg !3979, !nonnull !856, !noundef !856 ; 2 uses
    #dbg_value(ptr poison, !2534, !DIExpression(), !3710)
  %i.dp = atomicrmw sub ptr %.val33, i32 1 release, align 4, !dbg !4101
  %i.dq = add i32 %i.dp, -1, !dbg !4101           ; 2 uses
  %i.dr = and i32 %i.dq, -1073741825, !dbg !4101
  %or.cond.i.i.i72 = icmp eq i32 %i.dr, -2147483648, !dbg !4101
  br i1 %or.cond.i.i.i72, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74, !dbg !4101, !prof !2373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73: ; preds = %bb.ar
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val33, i32 noundef %i.dq), !dbg !4101
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74, !dbg !4101

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3979
  br label %bb.ak, !dbg !4096

bb.as:                                            ; preds = %bb.ao, %bb.ap
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3979
  %.val31 = load ptr, ptr %i.dt, align 8, !dbg !3979, !nonnull !856, !noundef !856 ; 2 uses
    #dbg_value(ptr poison, !2534, !DIExpression(), !3712)
  %i.du = atomicrmw sub ptr %.val31, i32 1 release, align 4, !dbg !4102
  %i.dv = add i32 %i.du, -1, !dbg !4102           ; 2 uses
  %i.dw = and i32 %i.dv, -1073741825, !dbg !4102
  %or.cond.i.i.i75 = icmp eq i32 %i.dw, -2147483648, !dbg !4102
  br i1 %or.cond.i.i.i75, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit, !dbg !4102, !prof !2373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76: ; preds = %bb.as
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val31, i32 noundef %i.dv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit unwind label %bb.x, !dbg !4102
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter7enabledINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2f_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4113 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr poison, !4314, !DIExpression(), !4330)
  %i.b = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !4331, !DIExpression(), !4354)
    #dbg_value(ptr %1, !4357, !DIExpression(DW_OP_plus_uconst, 112), !4364)
    #dbg_value(ptr %1, !4291, !DIExpression(), !4370)
    #dbg_value(ptr %1, !4368, !DIExpression(), !4371)
    #dbg_value(ptr %0, !4290, !DIExpression(), !4370)
    #dbg_value(ptr %2, !4300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4370)
    #dbg_value(i64 %3, !4300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4370)
    #dbg_declare(ptr %i.b, !4373, !DIExpression(), !4380)
    #dbg_declare(ptr poison, !4381, !DIExpression(), !4386)
    #dbg_value(i64 1, !4389, !DIExpression(), !4396)
    #dbg_value(ptr undef, !4293, !DIExpression(DW_OP_deref), !4397)
    #dbg_value(ptr undef, !4398, !DIExpression(DW_OP_deref), !4405)
    #dbg_value(ptr undef, !4398, !DIExpression(DW_OP_deref), !4408)
    #dbg_value(ptr undef, !4398, !DIExpression(DW_OP_deref), !4421)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !4617
  %i.d = load i8, ptr %i.c, align 8, !dbg !4617, !range !2441, !noundef !856
  %i.e = trunc nuw i8 %i.d to i1, !dbg !4617
  %.pre = load i64, ptr %1, align 8, !dbg !4618, !range !4422 ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !4617

bb.b:                                             ; preds = %bb.c, %._crit_edge, %bb.a
    #dbg_value(ptr %0, !4402, !DIExpression(), !4434)
    #dbg_value(ptr %0, !4426, !DIExpression(), !4435)
  %i.f = load i64, ptr %0, align 8, !dbg !4619, !range !4436, !noundef !856 ; 2 uses
  %.not44 = icmp eq i64 %i.f, -1, !dbg !4619
  %i.g = icmp samesign ult i64 %.pre, %i.f, !dbg !4618
  %.sroa.012.0 = select i1 %.not44, i1 true, i1 %i.g, !dbg !4618
  br i1 %.sroa.012.0, label %bb.t, label %bb.s, !dbg !4420

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4402, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4437)
    #dbg_value(ptr %0, !4426, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4439)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4620
  %i.i = load i64, ptr %i.h, align 8, !dbg !4620, !range !4436, !noundef !856 ; 2 uses
  %.not = icmp eq i64 %i.i, -1, !dbg !4620
  %i.j = icmp samesign ult i64 %.pre, %i.i, !dbg !4621
  %.sroa.08.0 = select i1 %.not, i1 true, i1 %i.j, !dbg !4621
  br i1 %.sroa.08.0, label %bb.b, label %bb.d, !dbg !4404

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !4357, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 112), !4441)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !4622
  %i.l = load i8, ptr %i.k, align 8, !dbg !4622, !noundef !856
  %i.m = and i8 %i.l, 2, !dbg !4622
  %.not40 = icmp eq i8 %i.m, 0, !dbg !4622
  br i1 %.not40, label %bb.e, label %bb.g, !dbg !4623

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread, %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !4624
    #dbg_value(ptr %i.n, !4387, !DIExpression(), !4442)
    #dbg_value(ptr %i.n, !4382, !DIExpression(), !4443)
  %i.o = call noundef align 8 ptr @_RINvMs2_Cs4lPw7rMVDcJ_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %i.n), !dbg !4625 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
    #dbg_value(ptr %i.o, !4444, !DIExpression(), !4147)
    #dbg_value(ptr %i.o, !4452, !DIExpression(), !4156)
    #dbg_declare(ptr poison, !4450, !DIExpression(), !4157)
    #dbg_value(i64 1, !4472, !DIExpression(), !4167)
    #dbg_value(ptr %i.o, !4490, !DIExpression(), !4168)
    #dbg_value(ptr %i.o, !4493, !DIExpression(), !4171)
    #dbg_value(ptr %i.o, !4495, !DIExpression(), !4174)
  %i.p = load i64, ptr %i.o, align 8, !dbg !4626, !noundef !856 ; 4 uses
    #dbg_value(i64 %i.p, !4476, !DIExpression(), !4167)
    #dbg_value(i64 %i.p, !4491, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4175)
    #dbg_value(i64 %i.p, !4498, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4178)
    #dbg_value(i64 %i.p, !4496, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4174)
  %i.q = icmp ult i64 %i.p, 9223372036854775807, !dbg !4627
  br i1 %i.q, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit, label %bb.f, !dbg !4628, !prof !2057

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !dbg !4629
  unreachable, !dbg !4629

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit: ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.p, 1, !dbg !4630
    #dbg_value(i64 %i.r, !4491, !DIExpression(), !4175)
    #dbg_value(i64 %i.r, !4498, !DIExpression(), !4178)
    #dbg_value(i64 %i.r, !4496, !DIExpression(), !4174)
  store i64 %i.r, ptr %i.o, align 8, !dbg !4631
    #dbg_value(ptr %i.o, !4296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4503)
    #dbg_value(ptr %i.o, !4296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4503)
    #dbg_value(ptr %i.o, !4504, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4510)
    #dbg_value(ptr %i.o, !4511, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4521)
    #dbg_value(ptr %i.o, !4522, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4526)
    #dbg_value(ptr %i.o, !4527, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4533)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !4632
  %i.t = load ptr, ptr %i.s, align 8, !dbg !4632, !nonnull !856, !noundef !856 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !4633
  %i.v = load i64, ptr %i.u, align 8, !dbg !4633, !noundef !856 ; 2 uses
    #dbg_value(i64 %i.v, !4537, !DIExpression(), !4550)
    #dbg_value(i64 %i.v, !4553, !DIExpression(), !4557)
    #dbg_value(ptr %i.t, !4551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4558)
    #dbg_value(ptr %i.t, !4541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4559)
    #dbg_value(i64 %i.v, !4551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4558)
    #dbg_value(i64 %i.v, !4541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4559)
    #dbg_value(ptr %i.t, !4542, !DIExpression(), !4560)
    #dbg_value(ptr %i.t, !4554, !DIExpression(), !4557)
  %.idx = shl nuw nsw i64 %i.v, 3, !dbg !4634
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !4634
    #dbg_value(ptr %i.t, !4297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4561)
    #dbg_value(ptr %i.w, !4297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4561)
    #dbg_value(ptr undef, !4314, !DIExpression(), !4330)
    #dbg_value(ptr %i.t, !4324, !DIExpression(), !4562)
    #dbg_value(ptr %i.t, !4393, !DIExpression(), !4396)
    #dbg_value(ptr %i.w, !4325, !DIExpression(), !4563)
    #dbg_value(ptr poison, !4565, !DIExpression(), !4571)
    #dbg_value(ptr poison, !4568, !DIExpression(), !4572)
  %i.x = icmp eq i64 %i.v, 0, !dbg !4635
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !4570

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4636
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4636 ; 4 uses
    #dbg_value(ptr %i.y, !4573, !DIExpression(), !4576)
    #dbg_value(ptr %i.y, !2002, !DIExpression(), !4199)
    #dbg_value(i8 0, !2008, !DIExpression(), !4201)
    #dbg_value(i8 2, !2015, !DIExpression(), !4203)
    #dbg_value(i8 0, !2033, !DIExpression(), !4203)
    #dbg_value(ptr %i.y, !2013, !DIExpression(), !4204)
    #dbg_value(ptr %i.y, !2036, !DIExpression(), !4206)
    #dbg_value(i8 0, !2039, !DIExpression(), !4206)
  %i.z = load atomic i32, ptr %i.y monotonic, align 8, !dbg !4637 ; 3 uses
    #dbg_value(i32 %i.z, !2006, !DIExpression(), !4207)
    #dbg_value(i32 %i.z, !2041, !DIExpression(), !4209)
    #dbg_value(i32 %i.z, !2031, !DIExpression(), !4203)
  %or.cond8.i = icmp ult i32 %i.z, 1073741822, !dbg !4638
  br i1 %or.cond8.i, label %bb.h, label %bb.i, !dbg !4638, !prof !2045

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.y, !2030, !DIExpression(), !4210)
  %i.aa = add nuw nsw i32 %i.z, 1, !dbg !4639
    #dbg_value(i32 %i.aa, !2032, !DIExpression(), !4203)
    #dbg_value(ptr %i.y, !2047, !DIExpression(), !4212)
    #dbg_value(i32 %i.z, !2050, !DIExpression(), !4212)
    #dbg_value(i32 %i.aa, !2051, !DIExpression(), !4212)
    #dbg_value(i8 2, !2052, !DIExpression(), !4212)
    #dbg_value(i8 0, !2053, !DIExpression(), !4212)
  %i.ab = cmpxchg weak ptr %i.y, i32 %i.z, i32 %i.aa acquire monotonic, align 4, !dbg !4640
  %i.ac = extractvalue { i32, i1 } %i.ab, 1, !dbg !4640
  br i1 %i.ac, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.i, !dbg !4641, !prof !2057

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.y), !dbg !4642
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, !dbg !4642

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.h, %bb.i
    #dbg_value(ptr %i.y, !2058, !DIExpression(), !4214)
    #dbg_value(i8 0, !2061, !DIExpression(), !4218)
    #dbg_value(ptr %i.y, !2093, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4219)
    #dbg_value(ptr %i.y, !2073, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4220)
    #dbg_value(ptr %i.y, !2066, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4221)
    #dbg_value(ptr %i.y, !2098, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4223)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !4643
    #dbg_value(ptr %i.ad, !2104, !DIExpression(), !4225)
    #dbg_value(i8 0, !2107, !DIExpression(), !4225)
  %i.ae = load atomic i8, ptr %i.ad monotonic, align 8, !dbg !4644, !noalias !4577
  %.not.i = icmp ne i8 %i.ae, 0, !dbg !4645
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2U_5field13CallsiteMatchEEENCNvMsd_BP_BM_3new0ECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %.not.i, ptr noundef nonnull align 8 %i.y), !dbg !4646
  %i.af = load i64, ptr %i.b, align 8, !dbg !4647, !range !2109, !noundef !856
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !4648
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4648
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !4648 ; 8 uses
    #dbg_value(ptr poison, !4350, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4354)
    #dbg_value(ptr poison, !4350, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4354)
  br i1 %i.ag, label %bb.j, label %bb.k, !dbg !4649

bb.j:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
    #dbg_value(ptr poison, !2534, !DIExpression(), !4229)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 release, align 4, !dbg !4650
  %i.ak = add i32 %i.aj, -1, !dbg !4650           ; 2 uses
  %i.al = and i32 %i.ak, -1073741825, !dbg !4650
  %or.cond.i.i.i = icmp eq i32 %i.al, -2147483648, !dbg !4650
  br i1 %or.cond.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread, !dbg !4650, !prof !2373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i: ; preds = %bb.j
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ai, i32 noundef %i.ak), !dbg !4650
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread, !dbg !4650

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4651
    #dbg_value(ptr undef, !4331, !DIExpression(), !4354)
  br label %bb.e, !dbg !4652

bb.k:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4648
  %i.an = load ptr, ptr %i.am, align 8, !dbg !4648, !nonnull !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4651
    #dbg_value(ptr undef, !4331, !DIExpression(), !4354)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
    #dbg_value(ptr poison, !4351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4578)
    #dbg_value(ptr poison, !4351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4578)
    #dbg_value(ptr undef, !4291, !DIExpression(DW_OP_deref), !4370)
    #dbg_value(ptr undef, !4368, !DIExpression(DW_OP_deref), !4371)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(ptr poison, !4582, !DIExpression(DW_OP_deref), !4232)
    #dbg_value(ptr poison, !4584, !DIExpression(), !4235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4653
    #dbg_value(ptr %1, !4590, !DIExpression(), !4238)
    #dbg_value(ptr %1, !4592, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4241)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !4654
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !dbg !4654
  store <2 x ptr> %i.ap, ptr %i.a, align 16, !dbg !4655
    #dbg_value(ptr %i.a, !4588, !DIExpression(), !4235)
  %i.aq = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.n unwind label %bb.l, !dbg !4656

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !2347, !DIExpression(), !4243)
    #dbg_value(ptr poison, !2351, !DIExpression(), !4245)
    #dbg_value(i32 1, !2354, !DIExpression(), !4248)
    #dbg_value(i8 1, !2359, !DIExpression(), !4248)
    #dbg_value(i32 1, !2365, !DIExpression(), !4250)
    #dbg_value(i8 1, !2369, !DIExpression(), !4250)
    #dbg_value(ptr poison, !2362, !DIExpression(), !4251)
    #dbg_value(ptr poison, !2358, !DIExpression(), !4252)
    #dbg_value(ptr poison, !2368, !DIExpression(), !4250)
  %i.as = atomicrmw sub ptr %i.ai, i32 1 release, align 4, !dbg !4657
  %i.at = add i32 %i.as, -1, !dbg !4658           ; 2 uses
    #dbg_value(i32 %i.at, !2363, !DIExpression(), !4253)
  %i.au = and i32 %i.at, -1073741825, !dbg !4659
  %or.cond.i.i.i50 = icmp eq i32 %i.au, -2147483648, !dbg !4659
  br i1 %or.cond.i.i.i50, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.i, !dbg !4659, !prof !2373

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ai, i32 noundef %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.i unwind label %bb.p, !dbg !4660

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4661
    #dbg_value(ptr poison, !2347, !DIExpression(), !4255)
    #dbg_value(ptr poison, !2351, !DIExpression(), !4257)
    #dbg_value(i32 1, !2354, !DIExpression(), !4260)
    #dbg_value(i8 1, !2359, !DIExpression(), !4260)
    #dbg_value(i32 1, !2365, !DIExpression(), !4262)
    #dbg_value(i8 1, !2369, !DIExpression(), !4262)
    #dbg_value(ptr poison, !2362, !DIExpression(), !4263)
    #dbg_value(ptr poison, !2358, !DIExpression(), !4264)
    #dbg_value(ptr poison, !2368, !DIExpression(), !4262)
  %i.av = atomicrmw sub ptr %i.ai, i32 1 release, align 4, !dbg !4662
  %i.aw = add i32 %i.av, -1, !dbg !4663           ; 2 uses
    #dbg_value(i32 %i.aw, !2363, !DIExpression(), !4265)
  %i.ax = and i32 %i.aw, -1073741825, !dbg !4664
  %or.cond.i.i6.i = icmp eq i32 %i.ax, -2147483648, !dbg !4664
  br i1 %or.cond.i.i6.i, label %bb.o, label %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, !dbg !4664, !prof !2373

bb.o:                                             ; preds = %bb.n
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ai, i32 noundef %i.aw), !dbg !4665
  br label %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, !dbg !4665

bb.p:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !4666
  unreachable, !dbg !4666

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.i: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.ar, !dbg !4666

_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit: ; preds = %bb.n, %bb.o
    #dbg_value(i1 %i.aq, !4294, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4594)
  br i1 %i.aq, label %bb.t, label %bb.e, !dbg !4667

bb.q:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.053, i64 8, !dbg !4668 ; 2 uses
    #dbg_value(ptr %i.az, !4297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4561)
    #dbg_value(ptr %i.az, !4297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4561)
    #dbg_value(ptr undef, !4314, !DIExpression(), !4330)
    #dbg_value(ptr %i.az, !4324, !DIExpression(), !4562)
    #dbg_value(ptr %i.az, !4393, !DIExpression(), !4396)
    #dbg_value(ptr %i.w, !4325, !DIExpression(), !4563)
    #dbg_value(ptr poison, !4565, !DIExpression(), !4571)
    #dbg_value(ptr poison, !4568, !DIExpression(), !4572)
  %i.ba = icmp eq ptr %i.az, %i.w, !dbg !4635
  br i1 %i.ba, label %._crit_edge, label %.lr.ph, !dbg !4570

.lr.ph:                                           ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit, %bb.q
  %.sroa.06.053 = phi ptr [ %i.az, %bb.q ], [ %i.t, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit ] ; 2 uses
    #dbg_value(ptr %.sroa.06.053, !4297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4561)
    #dbg_value(ptr %.sroa.06.053, !4297, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4561)
    #dbg_value(ptr %.sroa.06.053, !4299, !DIExpression(), !4595)
    #dbg_value(ptr %.sroa.06.053, !4402, !DIExpression(), !4596)
    #dbg_value(ptr poison, !4414, !DIExpression(), !4597)
    #dbg_value(ptr poison, !4415, !DIExpression(), !4598)
    #dbg_value(ptr %.sroa.06.053, !4426, !DIExpression(), !4601)
  %i.bb = load i64, ptr %.sroa.06.053, align 8, !dbg !4669, !range !4436, !noundef !856 ; 2 uses
  %.not42 = icmp eq i64 %i.bb, -1, !dbg !4669
  %i.bc = icmp ult i64 %.pre, %i.bb, !dbg !4670
  %.sroa.011.0 = select i1 %.not42, i1 true, i1 %i.bc, !dbg !4670
  br i1 %.sroa.011.0, label %bb.q, label %bb.r, !dbg !4406

._crit_edge:                                      ; preds = %bb.q, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !4603, !DIExpression(), !4268)
    #dbg_value(ptr poison, !4609, !DIExpression(), !4271)
    #dbg_value(ptr poison, !4613, !DIExpression(), !4274)
  store i64 %i.p, ptr %i.o, align 8, !dbg !4671
  br label %bb.b, !dbg !4672

bb.r:                                             ; preds = %.lr.ph
    #dbg_value(ptr poison, !4603, !DIExpression(), !4280)
    #dbg_value(ptr poison, !4609, !DIExpression(), !4282)
    #dbg_value(ptr poison, !4613, !DIExpression(), !4284)
  store i64 %i.p, ptr %i.o, align 8, !dbg !4673
  br label %bb.t, !dbg !4674

bb.s:                                             ; preds = %bb.b
  %i.bd = call noundef zeroext i1 @_RNvMs4_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE7enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !dbg !4675
  br label %bb.t, !dbg !4674

bb.t:                                             ; preds = %bb.b, %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, %bb.s, %bb.r
  %.sroa.0.0 = phi i1 [ true, %bb.r ], [ %i.bd, %bb.s ], [ true, %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit ], [ false, %bb.b ], !dbg !4676
  ret i1 %.sroa.0.0, !dbg !4677
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter7on_exitINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2f_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 !dbg !4678 {
bb.a:
    #dbg_value(ptr %0, !4710, !DIExpression(), !4714)
    #dbg_value(ptr %1, !4711, !DIExpression(), !4714)
    #dbg_value(ptr %2, !4712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4714)
    #dbg_value(i64 %3, !4712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4714)
    #dbg_declare(ptr poison, !4715, !DIExpression(), !4720)
    #dbg_declare(ptr poison, !4723, !DIExpression(), !4728)
    #dbg_value(i64 -1, !4729, !DIExpression(), !4735)
    #dbg_value(i64 8, !4742, !DIExpression(), !4749)
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB4_9EnvFilter16cares_about_span(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !dbg !4798
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !4799

bb.b:                                             ; preds = %bb.g, %bb.a
  ret void, !dbg !4800

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !4801
    #dbg_value(ptr %i.b, !4721, !DIExpression(), !4769)
    #dbg_value(ptr %i.b, !4716, !DIExpression(), !4770)
  %i.c = tail call noundef align 8 ptr @_RINvMs2_Cs4lPw7rMVDcJ_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %i.b), !dbg !4802 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
    #dbg_value(ptr %i.c, !4724, !DIExpression(), !4771)
    #dbg_value(ptr %i.c, !4736, !DIExpression(), !4772)
    #dbg_value(ptr %i.c, !4740, !DIExpression(), !4773)
    #dbg_value(ptr %i.c, !4774, !DIExpression(), !4777)
    #dbg_value(ptr %i.c, !4730, !DIExpression(), !4735)
  %i.d = load i64, ptr %i.c, align 8, !dbg !4803, !noundef !856
  %i.e = icmp eq i64 %i.d, 0, !dbg !4804
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !4804, !prof !2057

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.c, !4737, !DIExpression(), !4778)
    #dbg_value(ptr %i.c, !4779, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4782)
    #dbg_value(ptr %i.c, !4760, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4783)
    #dbg_value(ptr %i.c, !4765, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4784)
    #dbg_value(ptr %i.c, !4785, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4789)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4805 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !4805, !noundef !856 ; 3 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !4805
  br i1 %i.h, label %bb.g, label %bb.f, !dbg !4805

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25, !dbg !4806
  unreachable, !dbg !4806

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4807
    #dbg_value(ptr %i.i, !4760, !DIExpression(), !4783)
    #dbg_value(ptr %i.i, !4765, !DIExpression(), !4784)
    #dbg_value(ptr %i.i, !4785, !DIExpression(), !4789)
  %i.j = add nsw i64 %i.g, -1, !dbg !4808         ; 2 uses
  store i64 %i.j, ptr %i.f, align 8, !dbg !4808
  %i.k = load i64, ptr %i.i, align 8, !dbg !4809, !range !2656, !noundef !856
  %i.l = icmp samesign ult i64 %i.j, %i.k, !dbg !4810
    #dbg_value(i1 true, !4791, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4797)
  tail call void @llvm.assume(i1 %i.l), !dbg !4811
  %i.m = icmp ult i64 %i.g, 1152921504606846977, !dbg !4812
  tail call void @llvm.assume(i1 %i.m), !dbg !4813
  br label %bb.g, !dbg !4814

bb.g:                                             ; preds = %bb.d, %bb.f
    #dbg_value(ptr poison, !2658, !DIExpression(), !4702)
    #dbg_value(ptr poison, !2664, !DIExpression(), !4704)
    #dbg_value(ptr poison, !2668, !DIExpression(), !4706)
  store i64 0, ptr %i.c, align 8, !dbg !4815
  br label %bb.b, !dbg !4816
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter8on_closeINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2g_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4819 {
bb.a:
end_hunk_0
