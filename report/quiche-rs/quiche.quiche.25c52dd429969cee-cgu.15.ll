Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.15?download=true
inline.NumInlined: 225
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer11pacing_rate:bb.a
  %i.b = load i64, ptr %i.a, align 8, !dbg !4131, !noundef !30 ; 2 uses
    #dbg_value(i64 %i.b, !4114, !DIExpression(), !4132)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !4133
  %i.d = load i64, ptr %i.c, align 8, !dbg !4133, !range !3236, !noundef !30
  %i.e = trunc nuw i64 %i.d to i1, !dbg !4134
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.g = load i8, ptr %i.f, align 8, !range !1626
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 %i.h, i1 false, !dbg !4134
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !4134
  %i.j = load i64, ptr %i.i, align 8, !dbg !4134
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.j), !dbg !4134
  %.sroa.0.0 = select i1 %or.cond, i64 %..i, i64 %i.b, !dbg !4134
  ret i64 %.sroa.0.0, !dbg !4135
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer13max_bandwidth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %0) unnamed_addr #0 !dbg !4136 {
bb.a:
    #dbg_value(ptr %0, !4141, !DIExpression(), !4142)
    #dbg_value(ptr %0, !4143, !DIExpression(), !4148)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4150
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !4151
  %i.c = tail call noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.b), !dbg !4152
  ret i64 %i.c, !dbg !4153
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer14on_app_limited(ptr noalias nofree noundef align 8 dereferenceable(1152) initializes((1145, 1146)) %0, i64 noundef %1) unnamed_addr #0 !dbg !4154 {
bb.a:
    #dbg_value(ptr %0, !4157, !DIExpression(), !4159)
    #dbg_value(i64 %1, !4158, !DIExpression(), !4159)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1145, !dbg !4160
  store i8 0, ptr %i.a, align 1, !dbg !4160
    #dbg_value(ptr %0, !4161, !DIExpression(), !4168)
    #dbg_value(ptr %0, !4170, !DIExpression(), !4175)
    #dbg_value(i64 %1, !4164, !DIExpression(), !4168)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !4177
  %i.c = load i64, ptr %i.b, align 8, !dbg !4177, !alias.scope !4178, !noundef !30
  %.not.i = icmp ult i64 %1, %i.c, !dbg !4181
  br i1 %.not.i, label %bb.b, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited.exit, !dbg !4181

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4182
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.d), !dbg !4183 ; 4 uses
    #dbg_value(ptr %i.e, !4165, !DIExpression(), !4184)
    #dbg_value(ptr %i.e, !4185, !DIExpression(), !4192)
    #dbg_value(ptr %i.e, !4194, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4202)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !4204
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 464, !dbg !4204
  store i8 1, ptr %i.g, align 8, !dbg !4204
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 432, !dbg !4205
  %i.i = load i64, ptr %i.h, align 8, !dbg !4205, !noundef !30
  store i64 1, ptr %i.f, align 8, !dbg !4206
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !4206
  store i64 %i.i, ptr %i.j, align 8, !dbg !4206
  br label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited.exit, !dbg !4207

_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !4208
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer14on_packet_sent(ptr noalias nofree noundef align 8 dereferenceable(1152) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4209 {
bb.a:
    #dbg_value(ptr %0, !4214, !DIExpression(), !4223)
    #dbg_value(i64 %1, !4215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4223)
    #dbg_value(i32 %2, !4215, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !4223)
    #dbg_value(i64 %3, !4216, !DIExpression(), !4223)
    #dbg_value(i64 %4, !4217, !DIExpression(), !4223)
    #dbg_value(i64 %5, !4218, !DIExpression(), !4223)
    #dbg_value(i1 %6, !4219, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4223)
    #dbg_value(ptr %7, !4220, !DIExpression(), !4223)
    #dbg_value(ptr poison, !4224, !DIExpression(), !4233)
    #dbg_declare(ptr poison, !4235, !DIExpression(), !4242)
    #dbg_value(ptr %0, !4244, !DIExpression(), !4256)
    #dbg_value(i64 %1, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4256)
    #dbg_value(i32 %2, !4249, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !4256)
    #dbg_value(i64 %3, !4250, !DIExpression(), !4256)
    #dbg_value(i64 %4, !4251, !DIExpression(), !4256)
    #dbg_value(i64 %5, !4252, !DIExpression(), !4256)
    #dbg_value(i1 %6, !4253, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4256)
  %i.a = icmp eq i64 %3, 0, !dbg !4258
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.c = load i8, ptr %i.b, align 1, !range !1626, !alias.scope !4259
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond.i = select i1 %i.a, i1 %i.d, i1 false, !dbg !4258
  br i1 %or.cond.i, label %bb.b, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, !dbg !4258

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4262, !DIExpression(), !4271)
    #dbg_value(i64 %1, !4268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4271)
    #dbg_value(i32 %2, !4268, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !4271)
    #dbg_value(ptr %0, !4273, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !4280)
    #dbg_value(ptr %0, !4282, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !4289)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016, !dbg !4291
  %i.f = load i64, ptr %i.e, align 8, !dbg !4291, !alias.scope !4292
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024, !dbg !4291 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !dbg !4291, !range !4295, !alias.scope !4292, !noundef !30 ; 2 uses
  store i32 -1, ptr %i.g, align 8, !dbg !4296, !alias.scope !4292
  %.not.i.i = icmp eq i32 %i.h, -1, !dbg !4297
  br i1 %.not.i.i, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, label %bb.c, !dbg !4298

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.f, !4269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4299)
    #dbg_value(i32 %i.h, !4269, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !4299)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4300
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode21do_on_exit_quiescence(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.i, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %i.f, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1088) %0), !dbg !4301
  br label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, !dbg !4302

_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4303 ; 2 uses
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.j), !dbg !4304
    #dbg_value(ptr %i.k, !4254, !DIExpression(), !4305)
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel14on_packet_sent(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %i.k, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6), !dbg !4306
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1144, !dbg !4307
  %i.m = load i8, ptr %i.l, align 8, !dbg !4307, !range !1626, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1, !dbg !4307
  %brmerge.demorgan = and i1 %6, %i.n, !dbg !4307
  br i1 %brmerge.demorgan, label %bb.d, label %bb.e, !dbg !4307

bb.d:                                             ; preds = %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit
  %i.o = icmp ne i64 %3, 0, !dbg !4308
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.q = load i32, ptr %i.p, align 8, !range !4295
  %.not = icmp eq i32 %i.q, -1
  %or.cond = select i1 %i.o, i1 true, i1 %.not, !dbg !4308
  br i1 %or.cond, label %._crit_edge, label %bb.g, !dbg !4308

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !4309
  br label %bb.f, !dbg !4308

bb.e:                                             ; preds = %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, %._crit_edge30, %bb.n
  ret void, !dbg !4310

bb.f:                                             ; preds = %._crit_edge, %bb.h
  %i.r = phi i64 [ %.pre, %._crit_edge ], [ %..i, %bb.h ], !dbg !4309 ; 2 uses
  %.not21 = icmp eq i64 %i.r, 0, !dbg !4309
  br i1 %.not21, label %bb.j, label %bb.n, !dbg !4309

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !4311, !DIExpression(), !4314)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !4316
  %i.t = load i64, ptr %i.s, align 8, !dbg !4316, !noundef !30 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0, !dbg !4317
  br i1 %i.u, label %bb.i, label %bb.h, !dbg !4317

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !4317
  %i.w = load i64, ptr %i.v, align 8, !dbg !4317, !noundef !30
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1128, !dbg !4318
  %i.y = load i64, ptr %i.x, align 8, !dbg !4318, !noundef !30
  %i.z = udiv i64 %i.w, %i.t, !dbg !4317
    #dbg_value(i64 %i.y, !3296, !DIExpression(), !4319)
    #dbg_value(i64 %i.y, !3296, !DIExpression(), !4319)
    #dbg_value(i64 %i.z, !3299, !DIExpression(), !4319)
    #dbg_value(i64 %i.z, !3299, !DIExpression(), !4319)
    #dbg_value(ptr undef, !3296, !DIExpression(DW_OP_deref), !4319)
    #dbg_value(ptr undef, !3299, !DIExpression(DW_OP_deref), !4319)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y), !dbg !4321 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1120, !dbg !4322
  store i64 %..i, ptr %i.aa, align 8, !dbg !4322
  br label %bb.f, !dbg !4323

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !dbg !4317
  unreachable, !dbg !4317

bb.j:                                             ; preds = %bb.f
  %i.ab = add i64 %5, %3, !dbg !4324              ; 2 uses
    #dbg_value(i64 %i.ab, !4325, !DIExpression(), !4331)
    #dbg_value(ptr %0, !4111, !DIExpression(), !4333)
    #dbg_value(i64 %i.ab, !4112, !DIExpression(), !4333)
    #dbg_value(i64 %i.ab, !4120, !DIExpression(), !4335)
    #dbg_value(ptr %7, !4113, !DIExpression(), !4333)
    #dbg_value(ptr %7, !4127, !DIExpression(), !4335)
    #dbg_value(ptr %0, !4126, !DIExpression(), !4337)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1048, !dbg !4338
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !4338, !alias.scope !4339, !noundef !30 ; 2 uses
    #dbg_value(i64 %i.ad, !4114, !DIExpression(), !4342)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !4343
  %i.af = load i64, ptr %i.ae, align 8, !dbg !4343, !range !3236, !alias.scope !4339, !noundef !30
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !4344
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !4344
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !4344, !alias.scope !4339
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ai), !dbg !4344
  %.sroa.0.0.i = select i1 %i.ag, i64 %..i.i, i64 %i.ad, !dbg !4344 ; 3 uses
    #dbg_value(ptr poison, !4345, !DIExpression(), !4360)
    #dbg_value(i64 %5, !4352, !DIExpression(), !4360)
    #dbg_value(i64 %5, !4362, !DIExpression(), !4373)
    #dbg_value(i64 %5, !4375, !DIExpression(), !4385)
    #dbg_value(i64 8000000000, !4369, !DIExpression(), !4373)
    #dbg_value(i64 8000000000, !4384, !DIExpression(), !4385)
  %.off.i = add i64 %.sroa.0.0.i, -1, !dbg !4387
  %switch.i = icmp ult i64 %.off.i, -2, !dbg !4387
  br i1 %switch.i, label %bb.k, label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit, !dbg !4387

bb.k:                                             ; preds = %bb.j
  %8 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 8000000000), !dbg !4388 ; 2 uses
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4388
    #dbg_value(i64 poison, !4370, !DIExpression(), !4389)
    #dbg_value(i1 %9, !4372, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4389)
    #dbg_value(i1 %9, !4390, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4397)
  br i1 %9, label %bb.m, label %bb.l, !dbg !4399, !prof !1625

bb.l:                                             ; preds = %bb.k
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4388
    #dbg_value(i64 %10, !4370, !DIExpression(), !4389)
    #dbg_value(i64 %10, !4353, !DIExpression(), !4400)
  %i.aj = udiv i64 %10, %.sroa.0.0.i, !dbg !4401  ; 2 uses
    #dbg_value(i64 %i.aj, !4402, !DIExpression(), !4409)
  %i.ak = udiv i64 %i.aj, 1000000000, !dbg !4411
  %i.al = urem i64 %i.aj, 1000000000, !dbg !4412
  %i.am = trunc nuw nsw i64 %i.al to i32, !dbg !4412
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit, !dbg !4413

bb.m:                                             ; preds = %bb.k
    #dbg_value(i128 poison, !4355, !DIExpression(), !4416)
  %i.an = zext i64 %.sroa.0.0.i to i128, !dbg !4417
  %i.ao = zext i64 %5 to i128, !dbg !4418
  %i.ap = mul nuw nsw i128 %i.ao, 8000000000, !dbg !4418
    #dbg_value(i128 %i.ap, !4355, !DIExpression(), !4416)
  %i.aq = udiv i128 %i.ap, %i.an, !dbg !4419
    #dbg_value(i128 %i.aq, !4358, !DIExpression(), !4420)
    #dbg_value(ptr undef, !4421, !DIExpression(DW_OP_deref), !4429)
    #dbg_value(ptr undef, !4426, !DIExpression(DW_OP_deref), !4429)
  %..i.i27 = tail call noundef range(i128 0, 18446744073709551616) i128 @llvm.umin.i128(i128 range(i128 0, 147573952589676412920000000001) %i.aq, i128 18446744073709551615), !dbg !4431
  %i.ar = trunc nuw i128 %..i.i27 to i64, !dbg !4432 ; 2 uses
    #dbg_value(i64 %i.ar, !4402, !DIExpression(), !4433)
  %i.as = udiv i64 %i.ar, 1000000000, !dbg !4435
  %i.at = urem i64 %i.ar, 1000000000, !dbg !4436
  %i.au = trunc nuw nsw i64 %i.at to i32, !dbg !4436
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit, !dbg !4437

_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.5.0.i = phi i32 [ %i.au, %bb.m ], [ %i.am, %bb.l ], [ 0, %bb.j ], !dbg !4360
  %.sroa.0.0.i26 = phi i64 [ %i.as, %bb.m ], [ %i.ak, %bb.l ], [ 0, %bb.j ], !dbg !4360
    #dbg_value(i64 %.sroa.0.0.i26, !4221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4438)
    #dbg_value(i32 %.sroa.5.0.i, !4221, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !4438)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1145, !dbg !4439 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !dbg !4439, !range !1626, !noundef !30
  %i.ax = trunc nuw i8 %i.aw to i1, !dbg !4439
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0
  %or.cond.not = select i1 %i.ax, i1 %i.ba, i1 false, !dbg !4439
  br i1 %or.cond.not, label %._crit_edge30, label %bb.o, !dbg !4439

bb.n:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1120, !dbg !4309
  %i.bc = add i64 %i.r, -1, !dbg !4440
  store i64 %i.bc, ptr %i.bb, align 8, !dbg !4440
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1112, !dbg !4441
  store i32 -1, ptr %i.bd, align 8, !dbg !4441
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1145, !dbg !4442
  store i8 0, ptr %i.be, align 1, !dbg !4442
  br label %bb.e, !dbg !4443

bb.o:                                             ; preds = %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit
    #dbg_value(ptr %0, !4311, !DIExpression(), !4445)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !4447 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !4448
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !4448, !noundef !30 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0, !dbg !4447
  br i1 %i.bi, label %bb.q, label %bb.p, !dbg !4447

bb.p:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.bf, align 8, !dbg !4447, !noundef !30
  %i.bk = udiv i64 %i.bj, %i.bh, !dbg !4447
  %i.bl = uitofp i64 %i.bk to double, !dbg !4449
  %i.bm = fmul nnan double %i.bl, 2.500000e-01, !dbg !4450
  %i.bn = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bm), !dbg !4450
    #dbg_value(i64 2, !3296, !DIExpression(), !4451)
    #dbg_value(i64 2, !3296, !DIExpression(), !4451)
    #dbg_value(i64 %i.bn, !3299, !DIExpression(), !4451)
    #dbg_value(i64 %i.bn, !3299, !DIExpression(), !4451)
    #dbg_value(ptr undef, !3296, !DIExpression(DW_OP_deref), !4451)
    #dbg_value(ptr undef, !3299, !DIExpression(DW_OP_deref), !4451)
    #dbg_value(i64 1, !3177, !DIExpression(), !4453)
    #dbg_value(i64 1, !3177, !DIExpression(), !4453)
    #dbg_value(i64 poison, !3181, !DIExpression(), !4453)
    #dbg_value(i64 poison, !3181, !DIExpression(), !4453)
    #dbg_value(ptr undef, !3177, !DIExpression(DW_OP_deref), !4453)
    #dbg_value(ptr undef, !3181, !DIExpression(DW_OP_deref), !4453)
  %i.bo = icmp ult i64 %i.bn, 2, !dbg !4455
  %..i29 = select i1 %i.bo, i64 1, i64 2, !dbg !4455
  store i64 %..i29, ptr %i.ay, align 8, !dbg !4456
    #dbg_value(ptr %0, !4457, !DIExpression(), !4466)
    #dbg_value(ptr %7, !4462, !DIExpression(), !4466)
  %i.bp = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.j), !dbg !4468
    #dbg_value(ptr %i.bp, !4463, !DIExpression(), !4469)
  %i.bq = tail call noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel18bandwidth_estimate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.bp), !dbg !4470
    #dbg_value(ptr poison, !4229, !DIExpression(), !4471)
    #dbg_value(i8 poison, !4240, !DIExpression(), !4472)
    #dbg_value(i8 poison, !4473, !DIExpression(), !4477)
    #dbg_value(i8 poison, !4239, !DIExpression(), !4481)
  %i.br = icmp ult i64 %i.bq, 1200000, !dbg !4482
  br i1 %i.br, label %bb.r, label %bb.s, !dbg !4234

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !dbg !4447
  unreachable, !dbg !4447

bb.r:                                             ; preds = %bb.p
  store i64 1, ptr %i.ay, align 8, !dbg !4483
  br label %bb.s, !dbg !4484

bb.s:                                             ; preds = %bb.p, %bb.r
    #dbg_value(ptr %0, !4485, !DIExpression(), !4488)
  %i.bs = load i64, ptr %i.bf, align 8, !dbg !4490, !noundef !30
  %.not23 = icmp ult i64 %i.ab, %i.bs, !dbg !4491
  %.pre31 = load i64, ptr %i.ay, align 8
  %spec.select = select i1 %.not23, i64 %.pre31, i64 1, !dbg !4491
  br label %._crit_edge30, !dbg !4491

._crit_edge30:                                    ; preds = %bb.s, %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit
  %i.bt = phi i64 [ %spec.select, %bb.s ], [ %i.az, %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit ], !dbg !4492
  %i.bu = add i64 %i.bt, -1, !dbg !4492
  store i64 %i.bu, ptr %i.ay, align 8, !dbg !4492
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1104, !dbg !4493 ; 2 uses
  tail call void @_RNvMs8_NtCs3f36owOmepS_6quiche8recoveryNtB5_11ReleaseTime7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv, i64 noundef %1, i32 noundef %2), !dbg !4494
  tail call void @_RNvMs8_NtCs3f36owOmepS_6quiche8recoveryNtB5_11ReleaseTime3inc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv, i64 noundef %.sroa.0.0.i26, i32 noundef %.sroa.5.0.i), !dbg !4495
    #dbg_value(ptr %0, !4330, !DIExpression(), !4496)
    #dbg_value(ptr %0, !4485, !DIExpression(), !4497)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !4499
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !4499, !noundef !30
  %i.by = icmp ult i64 %i.ab, %i.bx, !dbg !4500
  %i.bz = zext i1 %i.by to i8, !dbg !4501
  store i8 %i.bz, ptr %i.av, align 1, !dbg !4501
  br label %bb.e, !dbg !4310
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer18bandwidth_estimate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #0 !dbg !4502 {
bb.a:
    #dbg_value(ptr %0, !4507, !DIExpression(), !4509)
    #dbg_value(ptr %1, !4508, !DIExpression(), !4509)
    #dbg_value(ptr %0, !4457, !DIExpression(), !4510)
    #dbg_value(ptr %1, !4462, !DIExpression(), !4510)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4512
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !4513
    #dbg_value(ptr %i.b, !4463, !DIExpression(), !4514)
  %i.c = tail call noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel18bandwidth_estimate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.b), !dbg !4515
  ret i64 %i.c, !dbg !4516
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer18on_packet_neutered(ptr noalias nofree noundef align 8 dereferenceable(1152) %0, i64 noundef %1) unnamed_addr #0 !dbg !4517 {
bb.a:
    #dbg_value(ptr %0, !4522, !DIExpression(), !4524)
    #dbg_value(i64 %1, !4523, !DIExpression(), !4524)
    #dbg_value(ptr %0, !4525, !DIExpression(), !4533)
    #dbg_value(i64 %1, !4530, !DIExpression(), !4533)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4535
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.a), !dbg !4536
    #dbg_value(ptr %i.b, !4531, !DIExpression(), !4537)
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel18on_packet_neutered(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %i.b, i64 noundef %1), !dbg !4538
  ret void, !dbg !4539
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer8ack_rate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %0) unnamed_addr #0 !dbg !4540 {
bb.a:
    #dbg_value(ptr %0, !4545, !DIExpression(), !4546)
    #dbg_value(ptr %0, !4547, !DIExpression(), !4553)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4555
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !4556 ; 2 uses
    #dbg_value(ptr %i.b, !4557, !DIExpression(), !4563)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 520, !dbg !4565
  %i.d = load i64, ptr %i.c, align 8, !dbg !4565, !range !3236, !noundef !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 528, !dbg !4565
  %i.f = load i64, ptr %i.e, align 8, !dbg !4565
  %i.g = insertvalue { i64, i64 } poison, i64 %i.d, 0, !dbg !4566
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.f, 1, !dbg !4566
  ret { i64, i64 } %i.h, !dbg !4567
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer9send_rate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %0) unnamed_addr #0 !dbg !4568 {
bb.a:
    #dbg_value(ptr %0, !4571, !DIExpression(), !4572)
    #dbg_value(ptr %0, !4573, !DIExpression(), !4577)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4579
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !4580 ; 2 uses
    #dbg_value(ptr %i.b, !4581, !DIExpression(), !4585)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 504, !dbg !4587
  %i.d = load i64, ptr %i.c, align 8, !dbg !4587, !range !3236, !noundef !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 512, !dbg !4587
  %i.f = load i64, ptr %i.e, align 8, !dbg !4587
  %i.g = insertvalue { i64, i64 } poison, i64 %i.d, 0, !dbg !4588
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.f, 1, !dbg !4588
  ret { i64, i64 } %i.h, !dbg !4589
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer9state_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %0) unnamed_addr #0 !dbg !4590 {
bb.a:
    #dbg_value(ptr %0, !4595, !DIExpression(), !4596)
    #dbg_value(ptr %0, !4597, !DIExpression(), !4602)
    #dbg_value(ptr %0, !4604, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !4627)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !4627 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !4627, !range !4629, !alias.scope !4630, !noundef !30 ; 3 uses
  %i.c = icmp ne i64 %i.b, 5, !dbg !4627
  tail call void @llvm.assume(i1 %i.c), !dbg !4627
  %i.d = add nsw i64 %i.b, -2, !dbg !4627
  %i.e = icmp samesign ugt i64 %i.b, 1, !dbg !4627
  %i.f = select i1 %i.e, i64 %i.d, i64 3, !dbg !4627
  switch i64 %i.f, label %bb.b [
    i64 0, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl9state_str.exit
    i64 1, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake22process_post_handshake:bb.a
  %.sroa.52.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.val32, i64 24, !dbg !7927
  store i64 1, ptr %.sroa.52.0..sroa_idx3.i, align 8, !dbg !7927
  %.sroa.65.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.val32, i64 32, !dbg !7927
  store i8 0, ptr %.sroa.65.0..sroa_idx6.i, align 8, !dbg !7927
  br label %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake19set_transport_error.exit, !dbg !7928

_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake19set_transport_error.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.aa = call fastcc { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake14map_result_ssl(ptr %i.t, i32 noundef %i.p), !dbg !7929
  %i.ab = extractvalue { i64, i64 } %i.aa, 0, !dbg !7929
  br label %bb.d, !dbg !7886
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake25set_quic_transport_params(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(256) %1, i1 noundef zeroext %2) unnamed_addr #0 !dbg !7930 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [128 x i8], align 1               ; 4 uses
    #dbg_value(ptr %0, !7936, !DIExpression(), !7956)
    #dbg_value(ptr %0, !7957, !DIExpression(), !7960)
    #dbg_value(ptr %1, !7937, !DIExpression(), !7956)
    #dbg_value(i1 %2, !7938, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7956)
    #dbg_declare(ptr %i.b, !7939, !DIExpression(), !7962)
    #dbg_declare(ptr %i.a, !7963, !DIExpression(), !8002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8004
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, i8 0, i64 128, i1 false), !dbg !8005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8003
  call void @_RNvMs5_NtCs3f36owOmepS_6quiche16transport_paramsNtB5_15TransportParams6encode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(256) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull %i.b, i64 noundef 128), !dbg !8003
  %i.c = load i64, ptr %i.a, align 8, !dbg !8006, !range !3236, !noundef !30
  %i.d = trunc nuw i64 %i.c to i1, !dbg !8007
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8008 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8008
  %i.g = load i64, ptr %i.f, align 8, !dbg !8008  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !8007

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !dbg !8009, !range !8010, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8011
  br label %bb.d, !dbg !8012

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !dbg !8013, !nonnull !30, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8011
    #dbg_value(ptr %i.i, !7944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8014)
    #dbg_value(i64 %i.g, !7944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8014)
  %i.j = load ptr, ptr %0, align 8, !dbg !8015, !noundef !30 ; 2 uses
  %i.k = call noundef i32 @SSL_set_quic_transport_params(ptr noundef %i.j, ptr noundef nonnull %i.i, i64 noundef %i.g) #21, !dbg !8016
    #dbg_value(i32 %i.k, !7954, !DIExpression(), !8017)
  %i.l = call fastcc { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake14map_result_ssl(ptr %i.j, i32 noundef %i.k), !dbg !8018
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !8018
  br label %bb.d, !dbg !8012

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi i64 [ %i.g, %bb.b ], [ undef, %bb.c ], !dbg !8019
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ], !dbg !8019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8020
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !8012
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.3.0, 1, !dbg !8012
  ret { i64, i64 } %i.o, !dbg !8012
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake4init(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #2 !dbg !8021 {
bb.a:
    #dbg_value(ptr %0, !8026, !DIExpression(), !8044)
    #dbg_value(i1 %1, !8027, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8044)
  %.val = load ptr, ptr %0, align 8, !dbg !8045   ; 7 uses
    #dbg_value(ptr poison, !8046, !DIExpression(), !8052)
    #dbg_value(i1 %1, !8051, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8052)
  br i1 %1, label %bb.c, label %bb.b, !dbg !8054

bb.b:                                             ; preds = %bb.a
  tail call void @SSL_set_connect_state(ptr noundef %.val) #21, !dbg !8055
  br label %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit, !dbg !8056

bb.c:                                             ; preds = %bb.a
  tail call void @SSL_set_accept_state(ptr noundef %.val) #21, !dbg !8057
  br label %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit, !dbg !8056

_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit: ; preds = %bb.b, %bb.c
    #dbg_value(ptr poison, !8058, !DIExpression(), !8066)
    #dbg_value(i16 772, !8065, !DIExpression(), !8066)
  %i.a = tail call noundef i32 @SSL_set_min_proto_version(ptr noundef %.val, i16 noundef zeroext 772) #21, !dbg !8068
    #dbg_value(i32 %i.a, !8069, !DIExpression(), !8072)
  %i.b = icmp eq i32 %i.a, 1, !dbg !8074
    #dbg_value(i64 poison, !8075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8094)
    #dbg_value(i64 undef, !8075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8094)
  br i1 %i.b, label %bb.d, label %bb.h, !dbg !8096

bb.d:                                             ; preds = %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit
    #dbg_value(ptr poison, !8097, !DIExpression(), !8102)
    #dbg_value(i16 772, !8101, !DIExpression(), !8102)
  %i.c = tail call noundef i32 @SSL_set_max_proto_version(ptr noundef %.val, i16 noundef zeroext 772) #21, !dbg !8104
    #dbg_value(i32 %i.c, !8105, !DIExpression(), !8108)
  %i.d = icmp eq i32 %i.c, 1, !dbg !8110
    #dbg_value(i64 poison, !8075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8111)
    #dbg_value(i64 undef, !8075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8111)
  br i1 %i.d, label %bb.e, label %bb.h, !dbg !8113

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !8114, !DIExpression(), !8121)
  %i.e = tail call noundef i32 @SSL_set_quic_method(ptr noundef %.val, ptr noundef nonnull @_RNvNtNtCs3f36owOmepS_6quiche3tls9boringssl20QUICHE_STREAM_METHOD) #21, !dbg !8123
    #dbg_value(i32 %i.e, !8124, !DIExpression(), !8127)
  %i.f = icmp eq i32 %i.e, 1, !dbg !8129
    #dbg_value(i64 poison, !8075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8130)
    #dbg_value(i64 undef, !8075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8130)
  br i1 %i.f, label %bb.f, label %bb.h, !dbg !8132

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8133, !DIExpression(), !8141)
    #dbg_value(ptr @26, !8140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8141)
    #dbg_value(i64 6, !8140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8141)
  %i.g = tail call noundef i32 @SSL_set_quic_early_data_context(ptr noundef %.val, ptr noundef nonnull @26, i64 noundef 6) #21, !dbg !8143
    #dbg_value(i32 %i.g, !8144, !DIExpression(), !8147)
  %i.h = icmp eq i32 %i.g, 1, !dbg !8149
    #dbg_value(i64 poison, !8075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8150)
    #dbg_value(i64 undef, !8075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8150)
  br i1 %i.h, label %bb.g, label %bb.h, !dbg !8152

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr poison, !8153, !DIExpression(), !8158)
    #dbg_value(i1 true, !8157, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8158)
  tail call void @SSL_set_quiet_shutdown(ptr noundef %.val, i32 noundef 1) #21, !dbg !8160
  br label %bb.h, !dbg !8161

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit, %bb.g
  %.sroa.0.0 = phi i64 [ -1, %bb.g ], [ 9, %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit ], [ 9, %bb.d ], [ 9, %bb.e ], [ 9, %bb.f ], !dbg !8044
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !8161
  %i.j = insertvalue { i64, i64 } %i.i, i64 undef, 1, !dbg !8161
  ret { i64, i64 } %i.j, !dbg !8161
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake5clear(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !8162 {
bb.a:
    #dbg_value(ptr %0, !8165, !DIExpression(), !8168)
    #dbg_value(ptr %0, !8169, !DIExpression(), !8172)
  %i.a = load ptr, ptr %0, align 8, !dbg !8174, !noundef !30 ; 2 uses
  %i.b = tail call noundef i32 @SSL_clear(ptr noundef %i.a) #21, !dbg !8175
    #dbg_value(i32 %i.b, !8166, !DIExpression(), !8176)
  %i.c = tail call fastcc { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake14map_result_ssl(ptr %i.a, i32 noundef %i.b), !dbg !8177
  ret { i64, i64 } %i.c, !dbg !8178
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake6cipher(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !8179 {
bb.a:
    #dbg_value(ptr %0, !8197, !DIExpression(), !8234)
    #dbg_value(ptr %0, !8235, !DIExpression(), !8238)
  %i.a = load ptr, ptr %0, align 8, !dbg !8240, !noundef !30
  %i.b = tail call noundef ptr @SSL_get_current_cipher(ptr noundef %i.a) #21, !dbg !8241 ; 2 uses
    #dbg_value(ptr %i.b, !8242, !DIExpression(), !8252)
    #dbg_value(ptr %i.b, !8254, !DIExpression(), !8271)
    #dbg_value(ptr %i.b, !8273, !DIExpression(), !8278)
  %i.c = icmp eq ptr %i.b, null, !dbg !8280
  br i1 %i.c, label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, label %bb.b, !dbg !8285

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !8198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8286)
    #dbg_value(i64 -1, !8198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8286)
    #dbg_value(ptr %i.b, !8287, !DIExpression(), !8310)
  %i.d = tail call noundef i32 @SSL_CIPHER_get_id(ptr noundef nonnull %i.b) #21, !dbg !8312, !noalias !8313
    #dbg_value(i32 %i.d, !8306, !DIExpression(), !8316)
  %switch.tableidx.i = add i32 %i.d, -50336513, !dbg !8317 ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx.i, 3, !dbg !8317
  %switch.idx.cast.i = trunc nuw nsw i32 %switch.tableidx.i to i8
  %spec.select = select i1 %i.e, i8 %switch.idx.cast.i, i8 -1, !dbg !8317
  br label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, !dbg !8317

_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.1 = phi i8 [ -1, %bb.a ], [ %spec.select, %bb.b ], !dbg !8318
  ret i8 %.sroa.0.1, !dbg !8319
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8320 {
bb.a:
    #dbg_value(i64 %0, !8325, !DIExpression(), !8337)
    #dbg_value(i64 %1, !8326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8337)
    #dbg_value(i32 %2, !8326, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8337)
    #dbg_value(ptr poison, !8338, !DIExpression(), !8349)
    #dbg_value(ptr poison, !8351, !DIExpression(), !8356)
    #dbg_value(i64 %0, !8358, !DIExpression(), !8365)
    #dbg_value(i64 %0, !8367, !DIExpression(), !8371)
  %i.a = icmp eq i64 %0, -1, !dbg !8373
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !8373

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !8345, !DIExpression(), !8374)
    #dbg_value(ptr poison, !8355, !DIExpression(), !8375)
  %i.b = icmp ne i64 %1, 0, !dbg !8375
  %.not = icmp ne i32 %2, 0
  %or.cond.not = or i1 %i.b, %.not, !dbg !8375
  %spec.select = sext i1 %or.cond.not to i64, !dbg !8375
  br label %bb.d, !dbg !8375

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !8376, !DIExpression(), !8382)
  %i.c = zext i64 %1 to i128, !dbg !8384
  %i.d = mul nuw nsw i128 %i.c, 1000000000, !dbg !8384
  %i.e = zext nneg i32 %2 to i128, !dbg !8385
  %i.f = add nuw nsw i128 %i.d, %i.e, !dbg !8384  ; 3 uses
    #dbg_value(i128 %i.f, !8331, !DIExpression(), !8386)
    #dbg_value(i128 %i.f, !8387, !DIExpression(), !8411)
    #dbg_value(i128 %i.f, !8413, !DIExpression(), !8420)
    #dbg_value(i128 %i.f, !8422, !DIExpression(), !8431)
    #dbg_value(i128 %i.f, !8433, !DIExpression(), !8443)
  %i.g = icmp samesign ugt i128 %i.f, 18446744073709551615, !dbg !8446
  br i1 %i.g, label %bb.g, label %bb.e, !dbg !8446

bb.d:                                             ; preds = %bb.b, %bb.i, %bb.f
  %.sroa.0.0 = phi i64 [ %spec.select, %bb.b ], [ %i.k, %bb.f ], [ %i.p, %bb.i ], !dbg !8337
  ret i64 %.sroa.0.0, !dbg !8447

bb.e:                                             ; preds = %bb.c
  %i.h = trunc nuw i128 %i.f to i64, !dbg !8448
    #dbg_value(i64 %i.h, !8327, !DIExpression(), !8449)
    #dbg_value(i64 %i.h, !8361, !DIExpression(), !8365)
    #dbg_value(i64 %i.h, !8370, !DIExpression(), !8371)
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %i.h), !dbg !8450 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !8450
    #dbg_value(i64 poison, !8362, !DIExpression(), !8451)
    #dbg_value(i1 %i.j, !8364, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8451)
    #dbg_value(i1 %i.j, !8452, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8455)
  br i1 %i.j, label %bb.g, label %bb.f, !dbg !8457, !prof !1625

bb.f:                                             ; preds = %bb.e
  %3 = extractvalue { i64, i1 } %i.i, 0, !dbg !8450
    #dbg_value(i64 %3, !8362, !DIExpression(), !8451)
    #dbg_value(i64 %3, !8329, !DIExpression(), !8458)
  %i.k = udiv i64 %3, 8000000000, !dbg !8459
  br label %bb.d, !dbg !8460

bb.g:                                             ; preds = %bb.e, %bb.c
    #dbg_value(ptr poison, !8376, !DIExpression(), !8462)
  %i.l = zext i64 %0 to i128, !dbg !8464
    #dbg_value(i128 %i.l, !8417, !DIExpression(), !8420)
    #dbg_value(i128 %i.l, !8427, !DIExpression(), !8431)
    #dbg_value(i128 %i.l, !8442, !DIExpression(), !8443)
  %i.m = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %i.l, i128 %i.f), !dbg !8465 ; 2 uses
  %4 = extractvalue { i128, i1 } %i.m, 0, !dbg !8465
  %i.n = extractvalue { i128, i1 } %i.m, 1, !dbg !8465
    #dbg_value(i128 %4, !8333, !DIExpression(), !8466)
    #dbg_value(i128 %4, !8428, !DIExpression(), !8467)
    #dbg_value(i1 %i.n, !8430, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8467)
    #dbg_value(i1 %i.n, !8452, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8468)
  br i1 %i.n, label %bb.h, label %bb.i, !dbg !8471, !prof !1625

bb.h:                                             ; preds = %bb.g
    #dbg_value(i128 -1, !8333, !DIExpression(), !8466)
    #dbg_value(i128 -1, !8428, !DIExpression(), !8467)
  br label %bb.i, !dbg !8472

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.05.0 = phi i128 [ -1, %bb.h ], [ %4, %bb.g ], !dbg !8420
    #dbg_value(i128 %.sroa.05.0, !8428, !DIExpression(), !8467)
    #dbg_value(i128 %.sroa.05.0, !8333, !DIExpression(), !8466)
  %i.o = udiv i128 %.sroa.05.0, 8000000000, !dbg !8473
    #dbg_value(i128 %i.o, !8335, !DIExpression(), !8474)
    #dbg_value(i128 %i.o, !4421, !DIExpression(), !8475)
    #dbg_value(i128 %i.o, !4421, !DIExpression(), !8475)
    #dbg_value(i128 18446744073709551615, !4426, !DIExpression(), !8475)
    #dbg_value(i128 18446744073709551615, !4426, !DIExpression(), !8475)
    #dbg_value(ptr undef, !4421, !DIExpression(DW_OP_deref), !8475)
    #dbg_value(ptr undef, !4426, !DIExpression(DW_OP_deref), !8475)
  %..i = tail call noundef range(i128 0, 18446744073709551616) i128 @llvm.umin.i128(i128 range(i128 0, 147573952589676412920000000001) %i.o, i128 18446744073709551615), !dbg !8477
  %i.p = trunc nuw i128 %..i to i64, !dbg !8478
  br label %bb.d, !dbg !8447
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv23new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1088 x i8]) align 8 captures(none) dereferenceable(1088) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, 1000000000) %5, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(192) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8479 {
bb.a:
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 16), !8509, !DIExpression(DW_OP_LLVM_fragment, 128, 384), !8568)
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 88), !8509, !DIExpression(DW_OP_LLVM_fragment, 704, 128), !8568)
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 189), !8509, !DIExpression(DW_OP_LLVM_fragment, 1512, 40), !8568)
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 203), !8509, !DIExpression(DW_OP_LLVM_fragment, 1624, 40), !8568)
  %.sroa.4 = alloca [688 x i8], align 8           ; 4 uses
  %i.a = alloca [208 x i8], align 8               ; 43 uses
    #dbg_value(ptr %6, !8502, !DIExpression(), !8570)
    #dbg_value(i64 %1, !8498, !DIExpression(), !8570)
    #dbg_value(i64 %2, !8499, !DIExpression(), !8570)
    #dbg_value(i64 %3, !8500, !DIExpression(), !8570)
    #dbg_value(i64 %4, !8501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8570)
    #dbg_value(i32 %5, !8501, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8570)
    #dbg_declare(ptr %i.a, !8505, !DIExpression(), !8571)
    #dbg_declare(ptr poison, !8572, !DIExpression(), !8578)
  %i.b = mul i64 %3, %1, !dbg !8580               ; 5 uses
    #dbg_value(i64 %i.b, !8503, !DIExpression(), !8581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8582
  %.not = icmp eq ptr %6, null, !dbg !8583
  br i1 %.not, label %bb.ah, label %bb.b, !dbg !8584

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %6, !8507, !DIExpression(), !8585)
    #dbg_value(i64 0, !8509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8586)
    #dbg_value(i64 undef, !8509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8586)
    #dbg_value(i64 3, !8509, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !8586)
    #dbg_value(i64 0, !8509, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !8586)
    #dbg_value(i64 8, !8509, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !8586)
    #dbg_value(i64 2, !8509, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8586)
    #dbg_value(i64 10, !8509, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8586)
    #dbg_value(float 2.000000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 960, 32), !8586)
    #dbg_value(float 2.773000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 992, 32), !8586)
    #dbg_value(float 1.250000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 1024, 32), !8586)
    #dbg_value(float 2.000000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 1056, 32), !8586)
    #dbg_value(float f0x3EB1783C, !8509, !DIExpression(DW_OP_LLVM_fragment, 1088, 32), !8586)
    #dbg_value(i32 1065353216, !8509, !DIExpression(DW_OP_LLVM_fragment, 1120, 32), !8586)
    #dbg_value(float 1.250000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 1152, 32), !8586)
    #dbg_value(float f0x3F666666, !8509, !DIExpression(DW_OP_LLVM_fragment, 1184, 32), !8586)
    #dbg_value(i32 1065353216, !8509, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !8586)
    #dbg_value(float 2.000000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !8586)
    #dbg_value(float 2.250000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 1280, 32), !8586)
    #dbg_value(i32 1056964608, !8509, !DIExpression(DW_OP_LLVM_fragment, 1312, 32), !8586)
    #dbg_value(float 1.000000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 1344, 32), !8586)
    #dbg_value(float 1.000000e+00, !8509, !DIExpression(DW_OP_LLVM_fragment, 1376, 32), !8586)
    #dbg_value(i32 1041865114, !8509, !DIExpression(DW_OP_LLVM_fragment, 1408, 32), !8586)
    #dbg_value(float 1.500000e-02, !8509, !DIExpression(DW_OP_LLVM_fragment, 1440, 32), !8586)
    #dbg_value(i32 1050253722, !8509, !DIExpression(DW_OP_LLVM_fragment, 1472, 32), !8586)
    #dbg_value(i8 1, !8509, !DIExpression(DW_OP_LLVM_fragment, 1504, 8), !8586)
    #dbg_value(i8 1, !8509, !DIExpression(DW_OP_LLVM_fragment, 1552, 8), !8586)
    #dbg_value(i8 1, !8509, !DIExpression(DW_OP_LLVM_fragment, 1560, 8), !8586)
    #dbg_value(i8 0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1568, 8), !8586)
    #dbg_value(i8 0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1576, 8), !8586)
    #dbg_value(i8 1, !8509, !DIExpression(DW_OP_LLVM_fragment, 1584, 8), !8586)
    #dbg_value(i8 0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1592, 8), !8586)
    #dbg_value(i8 0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1600, 8), !8586)
    #dbg_value(i8 1, !8509, !DIExpression(DW_OP_LLVM_fragment, 1608, 8), !8586)
    #dbg_value(i8 0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1616, 8), !8586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8587), !dbg !8590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8591), !dbg !8590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8593), !dbg !8590
    #dbg_value(ptr %6, !8515, !DIExpression(), !8586)
  %i.c = load i32, ptr %6, align 8, !dbg !8595, !range !1461, !alias.scope !8593, !noalias !8596, !noundef !30
  %i.d = trunc nuw i32 %i.c to i1, !dbg !8597
  br i1 %i.d, label %bb.c, label %bb.d, !dbg !8597

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4, !dbg !8595
  %i.f = load float, ptr %i.e, align 4, !dbg !8598, !alias.scope !8593, !noalias !8596, !noundef !30
    #dbg_value(float %i.f, !8516, !DIExpression(), !8599)
    #dbg_value(float %i.f, !8509, !DIExpression(DW_OP_LLVM_fragment, 960, 32), !8586)
  br label %bb.d, !dbg !8600

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.921.0 = phi float [ %i.f, %bb.c ], [ 2.000000e+00, %bb.b ], !dbg !8601
    #dbg_value(float %.sroa.921.0, !8509, !DIExpression(DW_OP_LLVM_fragment, 960, 32), !8586)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8, !dbg !8602
  %i.h = load i32, ptr %i.g, align 8, !dbg !8602, !range !1461, !alias.scope !8593, !noalias !8596, !noundef !30
  %i.i = trunc nuw i32 %i.h to i1, !dbg !8603
  br i1 %i.i, label %bb.e, label %bb.f, !dbg !8603

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12, !dbg !8602
  %i.k = load float, ptr %i.j, align 4, !dbg !8604, !alias.scope !8593, !noalias !8596, !noundef !30
    #dbg_value(float %i.k, !8518, !DIExpression(), !8605)
    #dbg_value(float %i.k, !8509, !DIExpression(DW_OP_LLVM_fragment, 992, 32), !8586)
  br label %bb.f, !dbg !8600

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.10.0 = phi float [ %i.k, %bb.e ], [ 2.773000e+00, %bb.d ], !dbg !8601
    #dbg_value(float %.sroa.10.0, !8509, !DIExpression(DW_OP_LLVM_fragment, 992, 32), !8586)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !8606
  %i.m = load i32, ptr %i.l, align 8, !dbg !8606, !range !1461, !alias.scope !8593, !noalias !8596, !noundef !30
  %i.n = trunc nuw i32 %i.m to i1, !dbg !8607
  br i1 %i.n, label %bb.g, label %bb.h, !dbg !8607

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 20, !dbg !8606
  %i.p = load float, ptr %i.o, align 4, !dbg !8608, !alias.scope !8593, !noalias !8596, !noundef !30
    #dbg_value(float %i.p, !8520, !DIExpression(), !8609)
    #dbg_value(float %i.p, !8509, !DIExpression(DW_OP_LLVM_fragment, 1024, 32), !8586)
  br label %bb.h, !dbg !8600

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.11.0 = phi float [ %i.p, %bb.g ], [ 1.250000e+00, %bb.f ], !dbg !8601
    #dbg_value(float %.sroa.11.0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1024, 32), !8586)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24, !dbg !8610
  %i.r = load i64, ptr %i.q, align 8, !dbg !8610, !range !3236, !alias.scope !8593, !noalias !8596, !noundef !30
  %i.s = trunc nuw i64 %i.r to i1, !dbg !8611
  br i1 %i.s, label %bb.i, label %bb.j, !dbg !8611

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !8610
  %i.u = load i64, ptr %i.t, align 8, !dbg !8612, !alias.scope !8593, !noalias !8596, !noundef !30
    #dbg_value(i64 %i.u, !8522, !DIExpression(), !8613)
    #dbg_value(i64 %i.u, !8509, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !8586)
  br label %bb.j, !dbg !8600

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.613.0 = phi i64 [ %i.u, %bb.i ], [ 3, %bb.h ], !dbg !8601
    #dbg_value(i64 %.sroa.613.0, !8509, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !8586)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40, !dbg !8614
  %i.w = load i64, ptr %i.v, align 8, !dbg !8614, !range !3236, !alias.scope !8593, !noalias !8596, !noundef !30
  %i.x = trunc nuw i64 %i.w to i1, !dbg !8615
  br i1 %i.x, label %bb.k, label %bb.l, !dbg !8615

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 48, !dbg !8614
  %i.z = load i64, ptr %i.y, align 8, !dbg !8616, !alias.scope !8593, !noalias !8596, !noundef !30
    #dbg_value(i64 %i.z, !8524, !DIExpression(), !8617)
    #dbg_value(i64 %i.z, !8509, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !8586)
  br label %bb.l, !dbg !8600

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.716.0 = phi i64 [ %i.z, %bb.k ], [ 8, %bb.j ], !dbg !8601
    #dbg_value(i64 %.sroa.716.0, !8509, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !8586)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 56, !dbg !8618
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !8618, !range !1461, !alias.scope !8593, !noalias !8596, !noundef !30
  %i.ac = trunc nuw i32 %i.ab to i1, !dbg !8619
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !8619

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 60, !dbg !8618
  %i.ae = load float, ptr %i.ad, align 4, !dbg !8620, !alias.scope !8593, !noalias !8596, !noundef !30
    #dbg_value(float %i.ae, !8526, !DIExpression(), !8621)
    #dbg_value(float %i.ae, !8509, !DIExpression(DW_OP_LLVM_fragment, 1056, 32), !8586)
  br label %bb.n, !dbg !8600

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.12.0 = phi float [ %i.ae, %bb.m ], [ 2.000000e+00, %bb.l ], !dbg !8601
    #dbg_value(float %.sroa.12.0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1056, 32), !8586)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 64, !dbg !8622
  %i.ag = load i32, ptr %i.af, align 8, !dbg !8622, !range !1461, !alias.scope !8593, !noalias !8596, !noundef !30
  %i.ah = trunc nuw i32 %i.ag to i1, !dbg !8623
  br i1 %i.ah, label %bb.o, label %bb.p, !dbg !8623

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 68, !dbg !8622
  %i.aj = load float, ptr %i.ai, align 4, !dbg !8624, !alias.scope !8593, !noalias !8596, !noundef !30
    #dbg_value(float %i.aj, !8528, !DIExpression(), !8625)
    #dbg_value(float %i.aj, !8509, !DIExpression(DW_OP_LLVM_fragment, 1088, 32), !8586)
  br label %bb.p, !dbg !8600

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.13.0 = phi float [ %i.aj, %bb.o ], [ f0x3EB1783C, %bb.n ], !dbg !8601
    #dbg_value(float %.sroa.13.0, !8509, !DIExpression(DW_OP_LLVM_fragment, 1088, 32), !8586)
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 72, !dbg !8626
  %i.al = load i8, ptr %i.ak, align 8, !dbg !8626, !range !8627, !alias.scope !8593, !noalias !8596, !noundef !30 ; 2 uses
  %.not.i = icmp eq i8 %i.al, 2, !dbg !8626
  %spec.select = select i1 %.not.i, i8 1, i8 %i.al, !dbg !8628
end_hunk_1
begin_hunk_2_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr26ParamsNtB6_5Debug3fmtBE_:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !13529
  store ptr @101, ptr %i.bn, align 8, !dbg !13529, !noalias !13530
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !13529
  store ptr %i.o, ptr %i.bo, align 8, !dbg !13529, !noalias !13530
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !13529
  store ptr @103, ptr %i.bp, align 8, !dbg !13529, !noalias !13530
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !13529
  store ptr %i.p, ptr %i.bq, align 8, !dbg !13529, !noalias !13530
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !13529
  store ptr @48, ptr %i.br, align 8, !dbg !13529, !noalias !13530
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !13529
  store ptr %i.q, ptr %i.bs, align 8, !dbg !13529, !noalias !13530
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 216, !dbg !13529
  store ptr @101, ptr %i.bt, align 8, !dbg !13529, !noalias !13530
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 224, !dbg !13529
  store ptr %i.r, ptr %i.bu, align 8, !dbg !13529, !noalias !13530
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 232, !dbg !13529
  store ptr @101, ptr %i.bv, align 8, !dbg !13529, !noalias !13530
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 240, !dbg !13529
  store ptr %i.s, ptr %i.bw, align 8, !dbg !13529, !noalias !13530
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 248, !dbg !13529
  store ptr @101, ptr %i.bx, align 8, !dbg !13529, !noalias !13530
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 256, !dbg !13529
  store ptr %i.t, ptr %i.by, align 8, !dbg !13529, !noalias !13530
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 264, !dbg !13529
  store ptr @101, ptr %i.bz, align 8, !dbg !13529, !noalias !13530
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 272, !dbg !13529
  store ptr %i.u, ptr %i.ca, align 8, !dbg !13529, !noalias !13530
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 280, !dbg !13529
  store ptr @101, ptr %i.cb, align 8, !dbg !13529, !noalias !13530
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 288, !dbg !13529
  store ptr %i.v, ptr %i.cc, align 8, !dbg !13529, !noalias !13530
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 296, !dbg !13529
  store ptr @102, ptr %i.cd, align 8, !dbg !13529, !noalias !13530
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 304, !dbg !13529
  store ptr %i.w, ptr %i.ce, align 8, !dbg !13529, !noalias !13530
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 312, !dbg !13529
  store ptr @48, ptr %i.cf, align 8, !dbg !13529, !noalias !13530
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 320, !dbg !13529
  store ptr %i.x, ptr %i.cg, align 8, !dbg !13529, !noalias !13530
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 328, !dbg !13529
  store ptr @101, ptr %i.ch, align 8, !dbg !13529, !noalias !13530
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 336, !dbg !13529
  store ptr %i.y, ptr %i.ci, align 8, !dbg !13529, !noalias !13530
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 344, !dbg !13529
  store ptr @103, ptr %i.cj, align 8, !dbg !13529, !noalias !13530
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 352, !dbg !13529
  store ptr %i.z, ptr %i.ck, align 8, !dbg !13529, !noalias !13530
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 360, !dbg !13529
  store ptr @103, ptr %i.cl, align 8, !dbg !13529, !noalias !13530
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 368, !dbg !13529
  store ptr %i.aa, ptr %i.cm, align 8, !dbg !13529, !noalias !13530
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 376, !dbg !13529
  store ptr @101, ptr %i.cn, align 8, !dbg !13529, !noalias !13530
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 384, !dbg !13529
  store ptr %i.ab, ptr %i.co, align 8, !dbg !13529, !noalias !13530
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 392, !dbg !13529
  store ptr @101, ptr %i.cp, align 8, !dbg !13529, !noalias !13530
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 400, !dbg !13529
  store ptr %i.ac, ptr %i.cq, align 8, !dbg !13529, !noalias !13530
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 408, !dbg !13529
  store ptr @48, ptr %i.cr, align 8, !dbg !13529, !noalias !13530
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 416, !dbg !13529
  store ptr %i.ad, ptr %i.cs, align 8, !dbg !13529, !noalias !13530
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 424, !dbg !13529
  store ptr @101, ptr %i.ct, align 8, !dbg !13529, !noalias !13530
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 432, !dbg !13529
  store ptr %i.ae, ptr %i.cu, align 8, !dbg !13529, !noalias !13530
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 440, !dbg !13529
  store ptr @101, ptr %i.cv, align 8, !dbg !13529, !noalias !13530
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 448, !dbg !13529
  store ptr %i.af, ptr %i.cw, align 8, !dbg !13529, !noalias !13530
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 456, !dbg !13529
  store ptr @101, ptr %i.cx, align 8, !dbg !13529, !noalias !13530
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 464, !dbg !13529
  store ptr %i.ag, ptr %i.cy, align 8, !dbg !13529, !noalias !13530
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 472, !dbg !13529
  store ptr @102, ptr %i.cz, align 8, !dbg !13529, !noalias !13530
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 480, !dbg !13529
  store ptr %i.ah, ptr %i.da, align 8, !dbg !13529, !noalias !13530
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 488, !dbg !13529
  store ptr @102, ptr %i.db, align 8, !dbg !13529, !noalias !13530
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 496, !dbg !13529
  store ptr %i.ai, ptr %i.dc, align 8, !dbg !13529, !noalias !13530
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 504, !dbg !13529
  store ptr @102, ptr %i.dd, align 8, !dbg !13529, !noalias !13530
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 512, !dbg !13529
  store ptr %i.aj, ptr %i.de, align 8, !dbg !13529, !noalias !13530
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 520, !dbg !13529
  store ptr @102, ptr %i.df, align 8, !dbg !13529, !noalias !13530
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 528, !dbg !13529
  store ptr %i.ak, ptr %i.dg, align 8, !dbg !13529, !noalias !13530
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 536, !dbg !13529
  store ptr @102, ptr %i.dh, align 8, !dbg !13529, !noalias !13530
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 544, !dbg !13529
  store ptr %i.al, ptr %i.di, align 8, !dbg !13529, !noalias !13530
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 552, !dbg !13529
  store ptr @102, ptr %i.dj, align 8, !dbg !13529, !noalias !13530
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 560, !dbg !13529
  store ptr %i.am, ptr %i.dk, align 8, !dbg !13529, !noalias !13530
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 568, !dbg !13529
  store ptr @102, ptr %i.dl, align 8, !dbg !13529, !noalias !13530
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 576, !dbg !13529
  store ptr %i.an, ptr %i.dm, align 8, !dbg !13529, !noalias !13530
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 584, !dbg !13529
  store ptr @102, ptr %i.dn, align 8, !dbg !13529, !noalias !13530
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 592, !dbg !13529
  store ptr %i.ao, ptr %i.do, align 8, !dbg !13529, !noalias !13530
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 600, !dbg !13529
  store ptr @104, ptr %i.dp, align 8, !dbg !13529, !noalias !13530
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 608, !dbg !13529
  store ptr %i.ap, ptr %i.dq, align 8, !dbg !13529, !noalias !13530
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 616, !dbg !13529
  store ptr @102, ptr %i.dr, align 8, !dbg !13529, !noalias !13530
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 624, !dbg !13529
  store ptr %i.c, ptr %i.ds, align 8, !dbg !13529, !noalias !13530
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 632, !dbg !13529
  store ptr @105, ptr %i.dt, align 8, !dbg !13529, !noalias !13530
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 640, !dbg !13529
  store ptr %i.aq, ptr %i.du, align 8, !dbg !13529, !noalias !13530
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 648, !dbg !13529
  store ptr @102, ptr %i.dv, align 8, !dbg !13529, !noalias !13530
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 656, !dbg !13529
  store ptr %i.ar, ptr %i.dw, align 8, !dbg !13529, !noalias !13530
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 664, !dbg !13529
  store ptr @102, ptr %i.dx, align 8, !dbg !13529, !noalias !13530
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 672, !dbg !13529
  store ptr %i.a, ptr %i.dy, align 8, !dbg !13529, !noalias !13530
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 680, !dbg !13529
  store ptr @106, ptr %i.dz, align 8, !dbg !13529, !noalias !13530
    #dbg_value(ptr %i.b, !13511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13576)
    #dbg_value(i64 43, !13511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13576)
  %i.ea = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @100, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 43), !dbg !13577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13578, !noalias !13530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13578, !noalias !13530
  ret i1 %i.ea, !dbg !13579
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRTyINtNtB8_6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEENtB6_5Debug3fmtB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13580 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !13586, !DIExpression(), !13588)
    #dbg_value(ptr %1, !13587, !DIExpression(), !13588)
  %i.d = load ptr, ptr %0, align 8, !dbg !13589, !nonnull !30, !align !1591, !noundef !30 ; 2 uses
    #dbg_value(ptr %i.d, !13590, !DIExpression(), !13611)
    #dbg_value(ptr %1, !13596, !DIExpression(), !13611)
    #dbg_declare(ptr %i.c, !13597, !DIExpression(), !13613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13614, !noalias !13615
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !13619, !noalias !13620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13621, !noalias !13615
    #dbg_value(ptr %i.d, !13606, !DIExpression(), !13622)
  store ptr %i.d, ptr %i.b, align 8, !dbg !13621, !noalias !13615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13621, !noalias !13615
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13621
    #dbg_value(ptr %i.e, !13608, !DIExpression(), !13622)
  store ptr %i.e, ptr %i.a, align 8, !dbg !13621, !noalias !13615
    #dbg_value(ptr %i.b, !13606, !DIExpression(DW_OP_deref), !13622)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43), !dbg !13623 ; 0 uses
    #dbg_value(ptr %i.a, !13608, !DIExpression(DW_OP_deref), !13622)
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44), !dbg !13623 ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !13624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13625, !noalias !13615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13625, !noalias !13615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13626, !noalias !13615
  ret i1 %i.h, !dbg !13627
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvXs2_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9BandwidthINtNtNtCskKLDkoKarTP_4core3ops5arith3MulNtNtB19_4time8DurationE3mul(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !13628 {
bb.a:
    #dbg_value(i64 %0, !13631, !DIExpression(), !13633)
    #dbg_value(i64 %1, !13632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13633)
    #dbg_value(i32 %2, !13632, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13633)
    #dbg_value(i64 %0, !8325, !DIExpression(), !13634)
    #dbg_value(i64 %1, !8326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13634)
    #dbg_value(i32 %2, !8326, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13634)
    #dbg_value(ptr poison, !8338, !DIExpression(), !13636)
    #dbg_value(ptr poison, !8351, !DIExpression(), !13638)
    #dbg_value(i64 %0, !8358, !DIExpression(), !13640)
    #dbg_value(i64 %0, !8367, !DIExpression(), !13642)
  %i.a = icmp eq i64 %0, -1, !dbg !13644
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !13644

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !8345, !DIExpression(), !13645)
    #dbg_value(ptr poison, !8355, !DIExpression(), !13646)
  %i.b = icmp ne i64 %1, 0, !dbg !13646
  %.not.i = icmp ne i32 %2, 0
  %or.cond.not.i = or i1 %i.b, %.not.i, !dbg !13646
  %spec.select.i = sext i1 %or.cond.not.i to i64, !dbg !13646
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit, !dbg !13646

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !8376, !DIExpression(), !13647)
  %i.c = zext i64 %1 to i128, !dbg !13649
  %i.d = mul nuw nsw i128 %i.c, 1000000000, !dbg !13649
  %i.e = zext nneg i32 %2 to i128, !dbg !13650
  %i.f = add nuw nsw i128 %i.d, %i.e, !dbg !13649 ; 3 uses
    #dbg_value(i128 %i.f, !8331, !DIExpression(), !13651)
    #dbg_value(i128 %i.f, !8387, !DIExpression(), !13652)
    #dbg_value(i128 %i.f, !8413, !DIExpression(), !13654)
    #dbg_value(i128 %i.f, !8422, !DIExpression(), !13656)
    #dbg_value(i128 %i.f, !8433, !DIExpression(), !13658)
  %i.g = icmp samesign ugt i128 %i.f, 18446744073709551615, !dbg !13660
  br i1 %i.g, label %bb.f, label %bb.d, !dbg !13660

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw i128 %i.f to i64, !dbg !13661
    #dbg_value(i64 %i.h, !8327, !DIExpression(), !13662)
    #dbg_value(i64 %i.h, !8361, !DIExpression(), !13640)
    #dbg_value(i64 %i.h, !8370, !DIExpression(), !13642)
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %i.h), !dbg !13663 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !13663
    #dbg_value(i64 poison, !8362, !DIExpression(), !13664)
    #dbg_value(i1 %i.j, !8364, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13664)
    #dbg_value(i1 %i.j, !8452, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13665)
  br i1 %i.j, label %bb.f, label %bb.e, !dbg !13667, !prof !1625

bb.e:                                             ; preds = %bb.d
  %3 = extractvalue { i64, i1 } %i.i, 0, !dbg !13663
    #dbg_value(i64 %3, !8362, !DIExpression(), !13664)
    #dbg_value(i64 %3, !8329, !DIExpression(), !13668)
  %i.k = udiv i64 %3, 8000000000, !dbg !13669
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit, !dbg !13670

bb.f:                                             ; preds = %bb.d, %bb.c
    #dbg_value(ptr poison, !8376, !DIExpression(), !13671)
  %i.l = zext i64 %0 to i128, !dbg !13673
    #dbg_value(i128 %i.l, !8417, !DIExpression(), !13654)
    #dbg_value(i128 %i.l, !8427, !DIExpression(), !13656)
    #dbg_value(i128 %i.l, !8442, !DIExpression(), !13658)
  %i.m = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %i.l, i128 %i.f), !dbg !13674 ; 2 uses
  %4 = extractvalue { i128, i1 } %i.m, 0, !dbg !13674
  %i.n = extractvalue { i128, i1 } %i.m, 1, !dbg !13674
    #dbg_value(i128 %4, !8333, !DIExpression(), !13675)
    #dbg_value(i128 %4, !8428, !DIExpression(), !13676)
    #dbg_value(i1 %i.n, !8430, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13676)
    #dbg_value(i1 %i.n, !8452, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13677)
  br i1 %i.n, label %bb.g, label %bb.h, !dbg !13679, !prof !1625

bb.g:                                             ; preds = %bb.f
    #dbg_value(i128 -1, !8333, !DIExpression(), !13675)
    #dbg_value(i128 -1, !8428, !DIExpression(), !13676)
  br label %bb.h, !dbg !13680

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.05.0.i = phi i128 [ -1, %bb.g ], [ %4, %bb.f ], !dbg !13654
    #dbg_value(i128 %.sroa.05.0.i, !8428, !DIExpression(), !13676)
    #dbg_value(i128 %.sroa.05.0.i, !8333, !DIExpression(), !13675)
  %i.o = udiv i128 %.sroa.05.0.i, 8000000000, !dbg !13681
    #dbg_value(i128 %i.o, !8335, !DIExpression(), !13682)
    #dbg_value(i128 %i.o, !4421, !DIExpression(), !13683)
    #dbg_value(i128 %i.o, !4421, !DIExpression(), !13683)
    #dbg_value(i128 18446744073709551615, !4426, !DIExpression(), !13683)
    #dbg_value(i128 18446744073709551615, !4426, !DIExpression(), !13683)
    #dbg_value(ptr undef, !4421, !DIExpression(DW_OP_deref), !13683)
    #dbg_value(ptr undef, !4426, !DIExpression(DW_OP_deref), !13683)
  %..i.i = tail call noundef range(i128 0, 18446744073709551616) i128 @llvm.umin.i128(i128 range(i128 0, 147573952589676412920000000001) %i.o, i128 18446744073709551615), !dbg !13685
  %i.p = trunc nuw i128 %..i.i to i64, !dbg !13686
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit, !dbg !13687

_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit: ; preds = %bb.b, %bb.e, %bb.h
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.k, %bb.e ], [ %i.p, %bb.h ], !dbg !13634
  ret i64 %.sroa.0.0.i, !dbg !13688
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9BandwidthNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !13689 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !13694, !DIExpression(), !13727)
    #dbg_value(ptr %1, !13695, !DIExpression(), !13727)
    #dbg_value(ptr %1, !13728, !DIExpression(), !13751)
    #dbg_value(ptr %1, !13728, !DIExpression(), !13754)
    #dbg_value(ptr %1, !13728, !DIExpression(), !13757)
    #dbg_value(ptr %0, !13698, !DIExpression(), !13760)
  %i.g = load i64, ptr %0, align 8, !dbg !13761, !noundef !30 ; 3 uses
    #dbg_value(i64 %i.g, !13696, !DIExpression(), !13762)
    #dbg_value(i64 %i.g, !13710, !DIExpression(), !13763)
    #dbg_value(i64 %i.g, !13719, !DIExpression(), !13764)
  %i.h = icmp ult i64 %i.g, 1000000, !dbg !13761
  %i.i = uitofp i64 %i.g to double, !dbg !13727   ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !13761

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !13712, !DIExpression(), !13765)
  %i.j = icmp ult i64 %i.g, 1000000000, !dbg !13766
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13767 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !13766

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13768
  %i.l = fdiv double %i.i, 1.000000e+03, !dbg !13768
  store double %i.l, ptr %i.f, align 8, !dbg !13768
    #dbg_value(ptr %i.f, !13699, !DIExpression(), !13769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13770
  store ptr %i.f, ptr %i.e, align 8, !dbg !13770
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13770
  store ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !13770
    #dbg_value(ptr @45, !13744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13751)
    #dbg_value(ptr %i.e, !13744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13751)
  %i.m = load ptr, ptr %1, align 8, !dbg !13771, !nonnull !30, !noundef !30
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13771
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13771, !nonnull !30, !align !1591, !noundef !30
  %i.p = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @45, ptr noundef nonnull %i.e), !dbg !13772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13773
  br label %bb.f, !dbg !13773

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13774
  %i.q = fdiv double %i.i, 1.000000e+09, !dbg !13774
  store double %i.q, ptr %i.b, align 8, !dbg !13774
    #dbg_value(ptr %i.b, !13721, !DIExpression(), !13775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13776
  store ptr %i.b, ptr %i.a, align 8, !dbg !13776
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13776
  store ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !13776
    #dbg_value(ptr @47, !13744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13757)
    #dbg_value(ptr %i.a, !13744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13757)
  %i.r = load ptr, ptr %1, align 8, !dbg !13777, !nonnull !30, !noundef !30
  %i.s = load ptr, ptr %i.k, align 8, !dbg !13777, !nonnull !30, !align !1591, !noundef !30
  %i.t = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @47, ptr noundef nonnull %i.a), !dbg !13778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13779
  br label %bb.f, !dbg !13779

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13780
  %i.u = fdiv double %i.i, 1.000000e+06, !dbg !13780
  store double %i.u, ptr %i.d, align 8, !dbg !13780
    #dbg_value(ptr %i.d, !13713, !DIExpression(), !13781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13782
  store ptr %i.d, ptr %i.c, align 8, !dbg !13782
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13782
  store ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !13782
    #dbg_value(ptr @46, !13744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13754)
    #dbg_value(ptr %i.c, !13744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13754)
  %i.v = load ptr, ptr %1, align 8, !dbg !13783, !nonnull !30, !noundef !30
  %i.w = load ptr, ptr %i.k, align 8, !dbg !13783, !nonnull !30, !align !1591, !noundef !30
  %i.x = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @46, ptr noundef nonnull %i.c), !dbg !13784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13785
  br label %bb.f, !dbg !13785

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.0.1.in = phi i1 [ %i.p, %bb.c ], [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  ret i1 %.sroa.0.1.in, !dbg !13786
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl13max_bandwidth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1088) %0) unnamed_addr #0 !dbg !4144 {
bb.a:
    #dbg_value(ptr %0, !4143, !DIExpression(), !13787)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13788
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !13789
  %i.c = tail call noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.b), !dbg !13790
  ret i64 %i.c, !dbg !13791
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited(ptr noalias nofree noundef align 8 dereferenceable(1088) %0, i64 noundef %1) unnamed_addr #0 !dbg !4162 {
bb.a:
    #dbg_value(ptr %0, !4161, !DIExpression(), !13792)
    #dbg_value(ptr %0, !4170, !DIExpression(), !13793)
    #dbg_value(i64 %1, !4164, !DIExpression(), !13792)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !13795
  %i.b = load i64, ptr %i.a, align 8, !dbg !13795, !noundef !30
  %.not = icmp ult i64 %1, %i.b, !dbg !13796
  br i1 %.not, label %bb.b, label %bb.c, !dbg !13796

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13797
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.c), !dbg !13798 ; 4 uses
    #dbg_value(ptr %i.d, !4165, !DIExpression(), !13799)
    #dbg_value(ptr %i.d, !4185, !DIExpression(), !13800)
    #dbg_value(ptr %i.d, !4194, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !13802)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !13804
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 464, !dbg !13804
  store i8 1, ptr %i.f, align 8, !dbg !13804
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 432, !dbg !13805
  %i.h = load i64, ptr %i.g, align 8, !dbg !13805, !noundef !30
  store i64 1, ptr %i.e, align 8, !dbg !13806
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !13806
  store i64 %i.h, ptr %i.i, align 8, !dbg !13806
  br label %bb.c, !dbg !13807

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !13807
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent(ptr noalias nofree noundef align 8 dereferenceable(1088) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 !dbg !4245 {
bb.a:
    #dbg_value(ptr %0, !4244, !DIExpression(), !13808)
    #dbg_value(i64 %1, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13808)
    #dbg_value(i32 %2, !4249, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13808)
    #dbg_value(i64 %3, !4250, !DIExpression(), !13808)
    #dbg_value(i64 %4, !4251, !DIExpression(), !13808)
    #dbg_value(i64 %5, !4252, !DIExpression(), !13808)
    #dbg_value(i1 %6, !4253, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13808)
  %i.a = icmp eq i64 %3, 0, !dbg !13809
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.c = load i8, ptr %i.b, align 1, !range !1626
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.a, i1 %i.d, i1 false, !dbg !13809
  br i1 %or.cond, label %bb.b, label %_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv218on_exit_quiescence.exit, !dbg !13809

_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv218on_exit_quiescence.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13810
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.e), !dbg !13811
    #dbg_value(ptr %i.f, !4254, !DIExpression(), !13812)
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel14on_packet_sent(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %i.f, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6), !dbg !13813
  ret void, !dbg !13814

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4262, !DIExpression(), !13815)
    #dbg_value(i64 %1, !4268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13815)
    #dbg_value(i32 %2, !4268, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13815)
    #dbg_value(ptr %0, !4273, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !13817)
    #dbg_value(ptr %0, !4282, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !13819)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1016, !dbg !13821
  %i.h = load i64, ptr %i.g, align 8, !dbg !13821, !alias.scope !13822
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024, !dbg !13821 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !dbg !13821, !range !4295, !alias.scope !13822, !noundef !30 ; 2 uses
  store i32 -1, ptr %i.i, align 8, !dbg !13825, !alias.scope !13822
  %.not.i = icmp eq i32 %i.j, -1, !dbg !13826
  br i1 %.not.i, label %_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv218on_exit_quiescence.exit, label %bb.c, !dbg !13827
end_hunk_2
