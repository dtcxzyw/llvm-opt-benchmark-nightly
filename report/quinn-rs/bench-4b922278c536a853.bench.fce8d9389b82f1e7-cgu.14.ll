Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.14?download=true
inline.NumInlined: 173
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter11on_new_spanINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2k_EECslIemzedAtQF_5bench:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3975
  %.val33 = load ptr, ptr %i.do, align 8, !dbg !3975, !nonnull !856, !noundef !856 ; 2 uses
    #dbg_value(ptr poison, !2534, !DIExpression(), !3708)
  %i.dp = atomicrmw add ptr %.val33, i32 -1 release, align 4, !dbg !4097
  %i.dq = add i32 %i.dp, -1, !dbg !4097           ; 2 uses
  %i.dr = and i32 %i.dq, -1073741825, !dbg !4097
  %or.cond.i.i.i72 = icmp eq i32 %i.dr, -2147483648, !dbg !4097
  br i1 %or.cond.i.i.i72, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74, !dbg !4097, !prof !2373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73: ; preds = %bb.ar
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val33, i32 noundef %i.dq), !dbg !4097
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74, !dbg !4097

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit74: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i73, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3975
  br label %bb.ak, !dbg !4092

bb.as:                                            ; preds = %bb.ao, %bb.ap
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3975
  %.val31 = load ptr, ptr %i.dt, align 8, !dbg !3975, !nonnull !856, !noundef !856 ; 2 uses
    #dbg_value(ptr poison, !2534, !DIExpression(), !3710)
  %i.du = atomicrmw add ptr %.val31, i32 -1 release, align 4, !dbg !4098
  %i.dv = add i32 %i.du, -1, !dbg !4098           ; 2 uses
  %i.dw = and i32 %i.dv, -1073741825, !dbg !4098
  %or.cond.i.i.i75 = icmp eq i32 %i.dw, -2147483648, !dbg !4098
  br i1 %or.cond.i.i.i75, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit, !dbg !4098, !prof !2373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i76: ; preds = %bb.as
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val31, i32 noundef %i.dv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit unwind label %bb.x, !dbg !4098
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter7enabledINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2f_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4109 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr poison, !4310, !DIExpression(), !4326)
  %i.b = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !4327, !DIExpression(), !4350)
    #dbg_value(ptr %1, !4353, !DIExpression(DW_OP_plus_uconst, 112), !4360)
    #dbg_value(ptr %1, !4287, !DIExpression(), !4366)
    #dbg_value(ptr %1, !4364, !DIExpression(), !4367)
    #dbg_value(ptr %0, !4286, !DIExpression(), !4366)
    #dbg_value(ptr %2, !4296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4366)
    #dbg_value(i64 %3, !4296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4366)
    #dbg_declare(ptr %i.b, !4369, !DIExpression(), !4376)
    #dbg_declare(ptr poison, !4377, !DIExpression(), !4382)
    #dbg_value(i64 1, !4385, !DIExpression(), !4392)
    #dbg_value(ptr undef, !4289, !DIExpression(DW_OP_deref), !4393)
    #dbg_value(ptr undef, !4394, !DIExpression(DW_OP_deref), !4401)
    #dbg_value(ptr undef, !4394, !DIExpression(DW_OP_deref), !4404)
    #dbg_value(ptr undef, !4394, !DIExpression(DW_OP_deref), !4417)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !4613
  %i.d = load i8, ptr %i.c, align 8, !dbg !4613, !range !2441, !noundef !856
  %i.e = trunc nuw i8 %i.d to i1, !dbg !4613
  %.pre = load i64, ptr %1, align 8, !dbg !4614, !range !4418 ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !4613

bb.b:                                             ; preds = %bb.c, %._crit_edge, %bb.a
    #dbg_value(ptr %0, !4398, !DIExpression(), !4430)
    #dbg_value(ptr %0, !4422, !DIExpression(), !4431)
  %i.f = load i64, ptr %0, align 8, !dbg !4615, !range !4432, !noundef !856 ; 2 uses
  %.not44 = icmp eq i64 %i.f, -1, !dbg !4615
  %i.g = icmp samesign ult i64 %.pre, %i.f, !dbg !4614
  %.sroa.012.0 = select i1 %.not44, i1 true, i1 %i.g, !dbg !4614
  br i1 %.sroa.012.0, label %bb.t, label %bb.s, !dbg !4416

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4398, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4433)
    #dbg_value(ptr %0, !4422, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4435)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4616
  %i.i = load i64, ptr %i.h, align 8, !dbg !4616, !range !4432, !noundef !856 ; 2 uses
  %.not = icmp eq i64 %i.i, -1, !dbg !4616
  %i.j = icmp samesign ult i64 %.pre, %i.i, !dbg !4617
  %.sroa.08.0 = select i1 %.not, i1 true, i1 %i.j, !dbg !4617
  br i1 %.sroa.08.0, label %bb.b, label %bb.d, !dbg !4400

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !4353, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 112), !4437)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !4618
  %i.l = load i8, ptr %i.k, align 8, !dbg !4618, !noundef !856
  %i.m = and i8 %i.l, 2, !dbg !4618
  %.not40 = icmp eq i8 %i.m, 0, !dbg !4618
  br i1 %.not40, label %bb.e, label %bb.g, !dbg !4619

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread, %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !4620
    #dbg_value(ptr %i.n, !4383, !DIExpression(), !4438)
    #dbg_value(ptr %i.n, !4378, !DIExpression(), !4439)
  %i.o = call noundef align 8 ptr @_RINvMs2_Cs4lPw7rMVDcJ_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %i.n), !dbg !4621 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
    #dbg_value(ptr %i.o, !4440, !DIExpression(), !4143)
    #dbg_value(ptr %i.o, !4448, !DIExpression(), !4152)
    #dbg_declare(ptr poison, !4446, !DIExpression(), !4153)
    #dbg_value(i64 1, !4468, !DIExpression(), !4163)
    #dbg_value(ptr %i.o, !4486, !DIExpression(), !4164)
    #dbg_value(ptr %i.o, !4489, !DIExpression(), !4167)
    #dbg_value(ptr %i.o, !4491, !DIExpression(), !4170)
  %i.p = load i64, ptr %i.o, align 8, !dbg !4622, !noundef !856 ; 4 uses
    #dbg_value(i64 %i.p, !4472, !DIExpression(), !4163)
    #dbg_value(i64 %i.p, !4487, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4171)
    #dbg_value(i64 %i.p, !4494, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4174)
    #dbg_value(i64 %i.p, !4492, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4170)
  %i.q = icmp ult i64 %i.p, 9223372036854775807, !dbg !4623
  br i1 %i.q, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit, label %bb.f, !dbg !4624, !prof !2057

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !dbg !4625
  unreachable, !dbg !4625

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit: ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.p, 1, !dbg !4626
    #dbg_value(i64 %i.r, !4487, !DIExpression(), !4171)
    #dbg_value(i64 %i.r, !4494, !DIExpression(), !4174)
    #dbg_value(i64 %i.r, !4492, !DIExpression(), !4170)
  store i64 %i.r, ptr %i.o, align 8, !dbg !4627
    #dbg_value(ptr %i.o, !4292, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4499)
    #dbg_value(ptr %i.o, !4292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4499)
    #dbg_value(ptr %i.o, !4500, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4506)
    #dbg_value(ptr %i.o, !4507, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4517)
    #dbg_value(ptr %i.o, !4518, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4522)
    #dbg_value(ptr %i.o, !4523, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4529)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !4628
  %i.t = load ptr, ptr %i.s, align 8, !dbg !4628, !nonnull !856, !noundef !856 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !4629
  %i.v = load i64, ptr %i.u, align 8, !dbg !4629, !noundef !856 ; 2 uses
    #dbg_value(i64 %i.v, !4533, !DIExpression(), !4546)
    #dbg_value(i64 %i.v, !4549, !DIExpression(), !4553)
    #dbg_value(ptr %i.t, !4547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4554)
    #dbg_value(ptr %i.t, !4537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4555)
    #dbg_value(i64 %i.v, !4547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4554)
    #dbg_value(i64 %i.v, !4537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4555)
    #dbg_value(ptr %i.t, !4538, !DIExpression(), !4556)
    #dbg_value(ptr %i.t, !4550, !DIExpression(), !4553)
  %.idx = shl nuw nsw i64 %i.v, 3, !dbg !4630
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !4630
    #dbg_value(ptr %i.t, !4293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4557)
    #dbg_value(ptr %i.w, !4293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4557)
    #dbg_value(ptr undef, !4310, !DIExpression(), !4326)
    #dbg_value(ptr %i.t, !4320, !DIExpression(), !4558)
    #dbg_value(ptr %i.t, !4389, !DIExpression(), !4392)
    #dbg_value(ptr %i.w, !4321, !DIExpression(), !4559)
    #dbg_value(ptr poison, !4561, !DIExpression(), !4567)
    #dbg_value(ptr poison, !4564, !DIExpression(), !4568)
  %i.x = icmp eq i64 %i.v, 0, !dbg !4631
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !4566

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4632
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4632 ; 4 uses
    #dbg_value(ptr %i.y, !4569, !DIExpression(), !4572)
    #dbg_value(ptr %i.y, !2002, !DIExpression(), !4195)
    #dbg_value(i8 0, !2008, !DIExpression(), !4197)
    #dbg_value(i8 2, !2015, !DIExpression(), !4199)
    #dbg_value(i8 0, !2033, !DIExpression(), !4199)
    #dbg_value(ptr %i.y, !2013, !DIExpression(), !4200)
    #dbg_value(ptr %i.y, !2036, !DIExpression(), !4202)
    #dbg_value(i8 0, !2039, !DIExpression(), !4202)
  %i.z = load atomic i32, ptr %i.y monotonic, align 8, !dbg !4633 ; 3 uses
    #dbg_value(i32 %i.z, !2006, !DIExpression(), !4203)
    #dbg_value(i32 %i.z, !2041, !DIExpression(), !4205)
    #dbg_value(i32 %i.z, !2031, !DIExpression(), !4199)
  %or.cond8.i = icmp ult i32 %i.z, 1073741822, !dbg !4634
  br i1 %or.cond8.i, label %bb.h, label %bb.i, !dbg !4634, !prof !2045

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.y, !2030, !DIExpression(), !4206)
  %i.aa = add nuw nsw i32 %i.z, 1, !dbg !4635
    #dbg_value(i32 %i.aa, !2032, !DIExpression(), !4199)
    #dbg_value(ptr %i.y, !2047, !DIExpression(), !4208)
    #dbg_value(i32 %i.z, !2050, !DIExpression(), !4208)
    #dbg_value(i32 %i.aa, !2051, !DIExpression(), !4208)
    #dbg_value(i8 2, !2052, !DIExpression(), !4208)
    #dbg_value(i8 0, !2053, !DIExpression(), !4208)
  %i.ab = cmpxchg weak ptr %i.y, i32 %i.z, i32 %i.aa acquire monotonic, align 4, !dbg !4636
  %i.ac = extractvalue { i32, i1 } %i.ab, 1, !dbg !4636
  br i1 %i.ac, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.i, !dbg !4637, !prof !2057

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.y), !dbg !4638
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, !dbg !4638

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.h, %bb.i
    #dbg_value(ptr %i.y, !2058, !DIExpression(), !4210)
    #dbg_value(i8 0, !2061, !DIExpression(), !4214)
    #dbg_value(ptr %i.y, !2093, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4215)
    #dbg_value(ptr %i.y, !2073, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4216)
    #dbg_value(ptr %i.y, !2066, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4217)
    #dbg_value(ptr %i.y, !2098, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4219)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !4639
    #dbg_value(ptr %i.ad, !2104, !DIExpression(), !4221)
    #dbg_value(i8 0, !2107, !DIExpression(), !4221)
  %i.ae = load atomic i8, ptr %i.ad monotonic, align 8, !dbg !4640, !noalias !4573
  %.not.i = icmp ne i8 %i.ae, 0, !dbg !4641
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2U_5field13CallsiteMatchEEENCNvMsd_BP_BM_3new0ECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %.not.i, ptr noundef nonnull align 8 %i.y), !dbg !4642
  %i.af = load i64, ptr %i.b, align 8, !dbg !4643, !range !2109, !noundef !856
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !4644
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4644
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !4644 ; 8 uses
    #dbg_value(ptr poison, !4346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4350)
    #dbg_value(ptr poison, !4346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4350)
  br i1 %i.ag, label %bb.j, label %bb.k, !dbg !4645

bb.j:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
    #dbg_value(ptr poison, !2534, !DIExpression(), !4225)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = atomicrmw add ptr %i.ai, i32 -1 release, align 4, !dbg !4646
  %i.ak = add i32 %i.aj, -1, !dbg !4646           ; 2 uses
  %i.al = and i32 %i.ak, -1073741825, !dbg !4646
  %or.cond.i.i.i = icmp eq i32 %i.al, -2147483648, !dbg !4646
  br i1 %or.cond.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread, !dbg !4646, !prof !2373

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i: ; preds = %bb.j
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ai, i32 noundef %i.ak), !dbg !4646
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread, !dbg !4646

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3A_5field13CallsiteMatchEEEINtB12_11PoisonErrorBX_EEECslIemzedAtQF_5bench.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.sink.split.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4647
    #dbg_value(ptr undef, !4327, !DIExpression(), !4350)
  br label %bb.e, !dbg !4648

bb.k:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4644
  %i.an = load ptr, ptr %i.am, align 8, !dbg !4644, !nonnull !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4647
    #dbg_value(ptr undef, !4327, !DIExpression(), !4350)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
    #dbg_value(ptr poison, !4347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4574)
    #dbg_value(ptr poison, !4347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4574)
    #dbg_value(ptr undef, !4287, !DIExpression(DW_OP_deref), !4366)
    #dbg_value(ptr undef, !4364, !DIExpression(DW_OP_deref), !4367)
    #dbg_value(ptr poison, !4575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4228)
    #dbg_value(ptr poison, !4575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4228)
    #dbg_value(ptr poison, !4578, !DIExpression(DW_OP_deref), !4228)
    #dbg_value(ptr poison, !4580, !DIExpression(), !4231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4649
    #dbg_value(ptr %1, !4586, !DIExpression(), !4234)
    #dbg_value(ptr %1, !4588, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4237)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !4650
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !dbg !4650
  store <2 x ptr> %i.ap, ptr %i.a, align 16, !dbg !4651
    #dbg_value(ptr %i.a, !4584, !DIExpression(), !4231)
  %i.aq = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.n unwind label %bb.l, !dbg !4652

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !2347, !DIExpression(), !4239)
    #dbg_value(ptr poison, !2351, !DIExpression(), !4241)
    #dbg_value(i32 1, !2354, !DIExpression(), !4244)
    #dbg_value(i8 1, !2359, !DIExpression(), !4244)
    #dbg_value(i32 1, !2365, !DIExpression(), !4246)
    #dbg_value(i8 1, !2369, !DIExpression(), !4246)
    #dbg_value(ptr poison, !2362, !DIExpression(), !4247)
    #dbg_value(ptr poison, !2358, !DIExpression(), !4248)
    #dbg_value(ptr poison, !2368, !DIExpression(), !4246)
  %i.as = atomicrmw add ptr %i.ai, i32 -1 release, align 4, !dbg !4653
  %i.at = add i32 %i.as, -1, !dbg !4654           ; 2 uses
    #dbg_value(i32 %i.at, !2363, !DIExpression(), !4249)
  %i.au = and i32 %i.at, -1073741825, !dbg !4655
  %or.cond.i.i.i50 = icmp eq i32 %i.au, -2147483648, !dbg !4655
  br i1 %or.cond.i.i.i50, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.i, !dbg !4655, !prof !2373

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ai, i32 noundef %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.i unwind label %bb.p, !dbg !4656

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4657
    #dbg_value(ptr poison, !2347, !DIExpression(), !4251)
    #dbg_value(ptr poison, !2351, !DIExpression(), !4253)
    #dbg_value(i32 1, !2354, !DIExpression(), !4256)
    #dbg_value(i8 1, !2359, !DIExpression(), !4256)
    #dbg_value(i32 1, !2365, !DIExpression(), !4258)
    #dbg_value(i8 1, !2369, !DIExpression(), !4258)
    #dbg_value(ptr poison, !2362, !DIExpression(), !4259)
    #dbg_value(ptr poison, !2358, !DIExpression(), !4260)
    #dbg_value(ptr poison, !2368, !DIExpression(), !4258)
  %i.av = atomicrmw add ptr %i.ai, i32 -1 release, align 4, !dbg !4658
  %i.aw = add i32 %i.av, -1, !dbg !4659           ; 2 uses
    #dbg_value(i32 %i.aw, !2363, !DIExpression(), !4261)
  %i.ax = and i32 %i.aw, -1073741825, !dbg !4660
  %or.cond.i.i6.i = icmp eq i32 %i.ax, -2147483648, !dbg !4660
  br i1 %or.cond.i.i6.i, label %bb.o, label %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, !dbg !4660, !prof !2373

bb.o:                                             ; preds = %bb.n
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ai, i32 noundef %i.aw), !dbg !4661
  br label %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, !dbg !4661

bb.p:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !4662
  unreachable, !dbg !4662

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsgb4gPAseikh_12tracing_core8callsite10IdentifierINtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3d_5field13CallsiteMatchEEEECslIemzedAtQF_5bench.exit.i: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.ar, !dbg !4662

_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit: ; preds = %bb.n, %bb.o
    #dbg_value(i1 %i.aq, !4290, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4590)
  br i1 %i.aq, label %bb.t, label %bb.e, !dbg !4663

bb.q:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.053, i64 8, !dbg !4664 ; 2 uses
    #dbg_value(ptr %i.az, !4293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4557)
    #dbg_value(ptr %i.az, !4293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4557)
    #dbg_value(ptr undef, !4310, !DIExpression(), !4326)
    #dbg_value(ptr %i.az, !4320, !DIExpression(), !4558)
    #dbg_value(ptr %i.az, !4389, !DIExpression(), !4392)
    #dbg_value(ptr %i.w, !4321, !DIExpression(), !4559)
    #dbg_value(ptr poison, !4561, !DIExpression(), !4567)
    #dbg_value(ptr poison, !4564, !DIExpression(), !4568)
  %i.ba = icmp eq ptr %i.az, %i.w, !dbg !4631
  br i1 %i.ba, label %._crit_edge, label %.lr.ph, !dbg !4566

.lr.ph:                                           ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit, %bb.q
  %.sroa.06.053 = phi ptr [ %i.az, %bb.q ], [ %i.t, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit ] ; 2 uses
    #dbg_value(ptr %.sroa.06.053, !4293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4557)
    #dbg_value(ptr %.sroa.06.053, !4293, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4557)
    #dbg_value(ptr %.sroa.06.053, !4295, !DIExpression(), !4591)
    #dbg_value(ptr %.sroa.06.053, !4398, !DIExpression(), !4592)
    #dbg_value(ptr poison, !4410, !DIExpression(), !4593)
    #dbg_value(ptr poison, !4411, !DIExpression(), !4594)
    #dbg_value(ptr %.sroa.06.053, !4422, !DIExpression(), !4597)
  %i.bb = load i64, ptr %.sroa.06.053, align 8, !dbg !4665, !range !4432, !noundef !856 ; 2 uses
  %.not42 = icmp eq i64 %i.bb, -1, !dbg !4665
  %i.bc = icmp ult i64 %.pre, %i.bb, !dbg !4666
  %.sroa.011.0 = select i1 %.not42, i1 true, i1 %i.bc, !dbg !4666
  br i1 %.sroa.011.0, label %bb.q, label %bb.r, !dbg !4402

._crit_edge:                                      ; preds = %bb.q, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEE6borrowCslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !4599, !DIExpression(), !4264)
    #dbg_value(ptr poison, !4605, !DIExpression(), !4267)
    #dbg_value(ptr poison, !4609, !DIExpression(), !4270)
  store i64 %i.p, ptr %i.o, align 8, !dbg !4667
  br label %bb.b, !dbg !4668

bb.r:                                             ; preds = %.lr.ph
    #dbg_value(ptr poison, !4599, !DIExpression(), !4276)
    #dbg_value(ptr poison, !4605, !DIExpression(), !4278)
    #dbg_value(ptr poison, !4609, !DIExpression(), !4280)
  store i64 %i.p, ptr %i.o, align 8, !dbg !4669
  br label %bb.t, !dbg !4670

bb.s:                                             ; preds = %bb.b
  %i.bd = call noundef zeroext i1 @_RNvMs4_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE7enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !dbg !4671
  br label %bb.t, !dbg !4670

bb.t:                                             ; preds = %bb.b, %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit, %bb.s, %bb.r
  %.sroa.0.0 = phi i1 [ true, %bb.r ], [ %i.bd, %bb.s ], [ true, %_RNCINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB7_9EnvFilter7enabledINtNtNtBb_5layer7layered7LayeredINtNtNtBb_3fmt9fmt_layer5LayerNtNtNtBb_8registry7sharded8RegistryEB2h_EE0CslIemzedAtQF_5bench.exit ], [ false, %bb.b ], !dbg !4672
  ret i1 %.sroa.0.0, !dbg !4673
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter7on_exitINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2f_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 !dbg !4674 {
bb.a:
    #dbg_value(ptr %0, !4706, !DIExpression(), !4710)
    #dbg_value(ptr %1, !4707, !DIExpression(), !4710)
    #dbg_value(ptr %2, !4708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4710)
    #dbg_value(i64 %3, !4708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4710)
    #dbg_declare(ptr poison, !4711, !DIExpression(), !4716)
    #dbg_declare(ptr poison, !4719, !DIExpression(), !4724)
    #dbg_value(i64 -1, !4725, !DIExpression(), !4731)
    #dbg_value(i64 8, !4738, !DIExpression(), !4745)
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB4_9EnvFilter16cares_about_span(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !dbg !4794
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !4795

bb.b:                                             ; preds = %bb.g, %bb.a
  ret void, !dbg !4796

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !4797
    #dbg_value(ptr %i.b, !4717, !DIExpression(), !4765)
    #dbg_value(ptr %i.b, !4712, !DIExpression(), !4766)
  %i.c = tail call noundef align 8 ptr @_RINvMs2_Cs4lPw7rMVDcJ_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgb4gPAseikh_12tracing_core8metadata11LevelFilterEEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %i.b), !dbg !4798 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
    #dbg_value(ptr %i.c, !4720, !DIExpression(), !4767)
    #dbg_value(ptr %i.c, !4732, !DIExpression(), !4768)
    #dbg_value(ptr %i.c, !4736, !DIExpression(), !4769)
    #dbg_value(ptr %i.c, !4770, !DIExpression(), !4773)
    #dbg_value(ptr %i.c, !4726, !DIExpression(), !4731)
  %i.d = load i64, ptr %i.c, align 8, !dbg !4799, !noundef !856
  %i.e = icmp eq i64 %i.d, 0, !dbg !4800
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !4800, !prof !2057

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.c, !4733, !DIExpression(), !4774)
    #dbg_value(ptr %i.c, !4775, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4778)
    #dbg_value(ptr %i.c, !4756, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4779)
    #dbg_value(ptr %i.c, !4761, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4780)
    #dbg_value(ptr %i.c, !4781, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4785)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4801 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !4801, !noundef !856 ; 3 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !4801
  br i1 %i.h, label %bb.g, label %bb.f, !dbg !4801

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25, !dbg !4802
  unreachable, !dbg !4802

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4803
    #dbg_value(ptr %i.i, !4756, !DIExpression(), !4779)
    #dbg_value(ptr %i.i, !4761, !DIExpression(), !4780)
    #dbg_value(ptr %i.i, !4781, !DIExpression(), !4785)
  %i.j = add nsw i64 %i.g, -1, !dbg !4804         ; 2 uses
  store i64 %i.j, ptr %i.f, align 8, !dbg !4804
  %i.k = load i64, ptr %i.i, align 8, !dbg !4805, !range !2656, !noundef !856
  %i.l = icmp samesign ult i64 %i.j, %i.k, !dbg !4806
    #dbg_value(i1 true, !4787, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4793)
  tail call void @llvm.assume(i1 %i.l), !dbg !4807
  %i.m = icmp ult i64 %i.g, 1152921504606846977, !dbg !4808
  tail call void @llvm.assume(i1 %i.m), !dbg !4809
  br label %bb.g, !dbg !4810

bb.g:                                             ; preds = %bb.d, %bb.f
    #dbg_value(ptr poison, !2658, !DIExpression(), !4698)
    #dbg_value(ptr poison, !2664, !DIExpression(), !4700)
    #dbg_value(ptr poison, !2668, !DIExpression(), !4702)
  store i64 0, ptr %i.c, align 8, !dbg !4811
  br label %bb.b, !dbg !4812
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB5_9EnvFilter8on_closeINtNtNtB9_5layer7layered7LayeredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryEB2g_EECslIemzedAtQF_5bench(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1, ptr nofree noundef readnone align 8 captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4815 {
bb.a:
end_hunk_0
