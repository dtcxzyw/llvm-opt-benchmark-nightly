Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.15?download=true
inline.NumInlined: 225
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs3f36owOmepS_6quiche5pmtudNtB2_5Pmtud3new:bb.a
  store i64 13, ptr %i.i, align 8, !dbg !7145
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !7145
  store ptr @21, ptr %i.j, align 8, !dbg !7145
  call void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECs3f36owOmepS_6quiche(ptr noundef nonnull @19, ptr noundef nonnull %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a), !dbg !7145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7145
  br label %bb.d, !dbg !7145

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %2, %bb.a ], [ 3, %bb.b ], [ 3, %bb.c ]
    #dbg_value(i8 %.sroa.0.0, !7128, !DIExpression(), !7140)
    #dbg_value(i8 %.sroa.0.0, !7129, !DIExpression(), !7139)
  store i64 0, ptr %0, align 8, !dbg !7191
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7191
  store i64 %1, ptr %i.k, align 8, !dbg !7191
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7191
  store i64 %1, ptr %i.l, align 8, !dbg !7191
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7191
  store i64 0, ptr %i.m, align 8, !dbg !7191
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7191
  store i64 0, ptr %i.n, align 8, !dbg !7191
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7191
  store i8 0, ptr %i.o, align 8, !dbg !7191
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !7191
  store i8 0, ptr %i.p, align 1, !dbg !7191
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 66, !dbg !7191
  store i8 %.sroa.0.0, ptr %i.q, align 2, !dbg !7191
  ret void, !dbg !7192
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMNtNtCs3f36owOmepS_6quiche3tls9boringsslNtB4_7Context22set_early_data_enabled(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #2 !dbg !7193 {
bb.a:
    #dbg_value(ptr %0, !7200, !DIExpression(), !7203)
    #dbg_value(ptr %0, !7197, !DIExpression(), !7204)
    #dbg_value(i1 %1, !7205, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7208)
    #dbg_value(i1 %1, !7198, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7204)
  %i.a = load ptr, ptr %0, align 8, !dbg !7209, !noundef !1281
  %i.b = zext i1 %1 to i32, !dbg !7210
  tail call void @SSL_CTX_set_early_data_enabled(ptr noundef %i.a, i32 noundef %i.b) #21, !dbg !7211
  ret void, !dbg !7212
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer10update_mss(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1152) %0, i64 noundef %1) unnamed_addr #0 !dbg !7213 {
bb.a:
    #dbg_value(ptr %0, !7229, !DIExpression(), !7232)
    #dbg_value(i64 %1, !7230, !DIExpression(), !7232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7233), !dbg !7244
    #dbg_value(ptr %0, !7234, !DIExpression(), !7218)
    #dbg_value(i64 %1, !7235, !DIExpression(), !7218)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !7245 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !7245, !alias.scope !7233, !noundef !1281 ; 6 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !7246
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !7246

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #24, !dbg !7246, !noalias !7233
  unreachable, !dbg !7246

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !7247 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064, !dbg !7247 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !7247, !alias.scope !7233, !noundef !1281
  %i.g = mul i64 %i.f, %1, !dbg !7247
  %i.h = udiv i64 %i.g, %i.b, !dbg !7246
  store i64 %i.h, ptr %i.e, align 8, !dbg !7248, !alias.scope !7233
  %i.i = load i64, ptr %i.d, align 8, !dbg !7249, !alias.scope !7233, !noundef !1281
  %i.j = mul i64 %i.i, %1, !dbg !7249
  %i.k = udiv i64 %i.j, %i.b, !dbg !7250
  store i64 %i.k, ptr %i.d, align 8, !dbg !7251, !alias.scope !7233
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !7252 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !7252, !alias.scope !7233, !noundef !1281
  %i.n = mul i64 %i.m, %1, !dbg !7252
  %i.o = udiv i64 %i.n, %i.b, !dbg !7253
  store i64 %i.o, ptr %i.l, align 8, !dbg !7254, !alias.scope !7233
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1072, !dbg !7255 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !7255, !alias.scope !7233, !noundef !1281
  %i.r = mul i64 %i.q, %1, !dbg !7255
  %i.s = udiv i64 %i.r, %i.b, !dbg !7256
  store i64 %i.s, ptr %i.p, align 8, !dbg !7257, !alias.scope !7233
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 199, !dbg !7258
  %i.u = load i8, ptr %i.t, align 1, !dbg !7258, !range !2015, !alias.scope !7233, !noundef !1281
  %i.v = trunc nuw i8 %i.u to i1, !dbg !7258
  br i1 %i.v, label %bb.d, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl10update_mss.exit, !dbg !7258

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1048, !dbg !7259 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !7259, !alias.scope !7233, !noundef !1281
    #dbg_value(i64 %i.x, !7237, !DIExpression(), !7221)
  %i.y = uitofp i64 %1 to double, !dbg !7260
  %i.z = uitofp i64 %i.b to double, !dbg !7261
  %i.aa = fdiv double %i.y, %i.z, !dbg !7262
    #dbg_value(double %i.aa, !7238, !DIExpression(), !7221)
  %i.ab = uitofp i64 %i.x to double, !dbg !7263
  %i.ac = fmul double %i.aa, %i.ab, !dbg !7264
    #dbg_value(double %i.ac, !7240, !DIExpression(), !7226)
    #dbg_value(double %i.ac, !7242, !DIExpression(), !7227)
  %i.ad = tail call double @llvm.round.f64(double %i.ac), !dbg !7265
  %i.ae = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ad), !dbg !7264
  store i64 %i.ae, ptr %i.w, align 8, !dbg !7266, !alias.scope !7233
  br label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl10update_mss.exit, !dbg !7267

_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl10update_mss.exit: ; preds = %bb.c, %bb.d
  store i64 %1, ptr %i.a, align 8, !dbg !7268, !alias.scope !7233
  ret void, !dbg !7269
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer11pacing_rate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1152) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !383 {
bb.a:
    #dbg_value(ptr %0, !2803, !DIExpression(), !7270)
    #dbg_value(i64 %1, !2810, !DIExpression(), !7272)
    #dbg_value(i64 %1, !2804, !DIExpression(), !7270)
    #dbg_value(ptr %2, !2815, !DIExpression(), !7272)
    #dbg_value(ptr %2, !2805, !DIExpression(), !7270)
    #dbg_value(ptr %0, !2814, !DIExpression(), !7273)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1048, !dbg !7275
  %i.b = load i64, ptr %i.a, align 8, !dbg !7275, !noundef !1281 ; 2 uses
    #dbg_value(i64 %i.b, !2806, !DIExpression(), !7274)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !7276
  %i.d = load i64, ptr %i.c, align 8, !dbg !7276, !range !2465, !noundef !1281
  %i.e = trunc nuw i64 %i.d to i1, !dbg !7277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.g = load i8, ptr %i.f, align 8, !range !2015
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 %i.h, i1 false, !dbg !7277
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !7277
  %i.j = load i64, ptr %i.i, align 8, !dbg !7277
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.j), !dbg !7277
  %.sroa.0.0 = select i1 %or.cond, i64 %..i, i64 %i.b, !dbg !7277
  ret i64 %.sroa.0.0, !dbg !7278
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer13max_bandwidth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %0) unnamed_addr #0 !dbg !7279 {
bb.a:
    #dbg_value(ptr %0, !7285, !DIExpression(), !7287)
    #dbg_value(ptr %0, !2817, !DIExpression(), !7281)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !7288
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !7289
  %i.c = tail call noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.b), !dbg !7290
  ret i64 %i.c, !dbg !7291
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer14on_app_limited(ptr noalias nofree noundef align 8 dereferenceable(1152) initializes((1145, 1146)) %0, i64 noundef %1) unnamed_addr #0 !dbg !7292 {
bb.a:
    #dbg_value(ptr %0, !7305, !DIExpression(), !7308)
    #dbg_value(i64 %1, !7306, !DIExpression(), !7308)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1145, !dbg !7310
  store i8 0, ptr %i.a, align 1, !dbg !7310
    #dbg_value(ptr %0, !2821, !DIExpression(), !7295)
    #dbg_value(ptr %0, !2825, !DIExpression(), !7296)
    #dbg_value(i64 %1, !2826, !DIExpression(), !7296)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !7311
  %i.c = load i64, ptr %i.b, align 8, !dbg !7311, !alias.scope !7309, !noundef !1281
  %.not.i = icmp ult i64 %1, %i.c, !dbg !7312
  br i1 %.not.i, label %bb.b, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited.exit, !dbg !7312

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !7313
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.d), !dbg !7314 ; 4 uses
    #dbg_value(ptr %i.e, !2831, !DIExpression(), !7300)
    #dbg_value(ptr %i.e, !2828, !DIExpression(), !7301)
    #dbg_value(ptr %i.e, !2839, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7303)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !7315
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 464, !dbg !7315
  store i8 1, ptr %i.g, align 8, !dbg !7315
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 432, !dbg !7316
  %i.i = load i64, ptr %i.h, align 8, !dbg !7316, !noundef !1281
  store i64 1, ptr %i.f, align 8, !dbg !7317
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !7317
  store i64 %i.i, ptr %i.j, align 8, !dbg !7317
  br label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited.exit, !dbg !7318

_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !7319
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion5pacerNtB2_5Pacer14on_packet_sent(ptr noalias nofree noundef align 8 dereferenceable(1152) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7321 {
bb.a:
    #dbg_value(ptr %0, !7391, !DIExpression(), !7400)
    #dbg_value(i64 %1, !7392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7400)
    #dbg_value(i32 %2, !7392, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7400)
    #dbg_value(i64 %3, !7393, !DIExpression(), !7400)
    #dbg_value(i64 %4, !7394, !DIExpression(), !7400)
    #dbg_value(i64 %5, !7395, !DIExpression(), !7400)
    #dbg_value(i1 %6, !7396, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7400)
    #dbg_value(ptr %7, !7397, !DIExpression(), !7400)
    #dbg_value(ptr poison, !7401, !DIExpression(), !7409)
    #dbg_declare(ptr poison, !7410, !DIExpression(), !7416)
    #dbg_value(ptr %0, !2846, !DIExpression(), !7326)
    #dbg_value(i64 %1, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7326)
    #dbg_value(i32 %2, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7326)
    #dbg_value(i64 %3, !2850, !DIExpression(), !7326)
    #dbg_value(i64 %4, !2851, !DIExpression(), !7326)
    #dbg_value(i64 %5, !2852, !DIExpression(), !7326)
    #dbg_value(i1 %6, !2853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7326)
  %i.a = icmp eq i64 %3, 0, !dbg !7477            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.c = load i8, ptr %i.b, align 1, !range !2015, !alias.scope !7417
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond.i = select i1 %i.a, i1 %i.d, i1 false, !dbg !7477
  br i1 %or.cond.i, label %bb.b, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, !dbg !7477

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2856, !DIExpression(), !7330)
    #dbg_value(i64 %1, !2860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7330)
    #dbg_value(i32 %2, !2860, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7330)
    #dbg_value(ptr %0, !2865, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !7332)
    #dbg_value(ptr %0, !2870, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !7334)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016, !dbg !7478
  %i.f = load i64, ptr %i.e, align 8, !dbg !7478, !alias.scope !7418
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024, !dbg !7478 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !dbg !7478, !range !2876, !alias.scope !7418, !noundef !1281 ; 2 uses
  store i32 -1, ptr %i.g, align 8, !dbg !7479, !alias.scope !7418
  %.not.i.i = icmp eq i32 %i.h, -1, !dbg !7480
  br i1 %.not.i.i, label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, label %bb.c, !dbg !7481

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.f, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7337)
    #dbg_value(i32 %i.h, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7337)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !7482
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode21do_on_exit_quiescence(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.i, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %i.f, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1088) %0), !dbg !7483
  br label %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, !dbg !7484

_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !7485 ; 2 uses
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.j), !dbg !7486
    #dbg_value(ptr %i.k, !2854, !DIExpression(), !7338)
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel14on_packet_sent(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %i.k, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6), !dbg !7487
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1144, !dbg !7488
  %i.m = load i8, ptr %i.l, align 8, !dbg !7488, !range !2015, !noundef !1281
  %i.n = trunc nuw i8 %i.m to i1, !dbg !7488
  %brmerge.demorgan = and i1 %6, %i.n, !dbg !7488
  br i1 %brmerge.demorgan, label %bb.d, label %bb.e, !dbg !7488

bb.d:                                             ; preds = %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.p = load i32, ptr %i.o, align 8, !range !2876
  %.not = icmp ne i32 %i.p, -1
  %or.cond.not37 = select i1 %i.a, i1 %.not, i1 false, !dbg !7489
  br i1 %or.cond.not37, label %bb.g, label %._crit_edge, !dbg !7489

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !7490
  br label %bb.f, !dbg !7489

bb.e:                                             ; preds = %_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent.exit, %._crit_edge31, %bb.n
  ret void, !dbg !7491

bb.f:                                             ; preds = %._crit_edge, %bb.h
  %i.q = phi i64 [ %.pre, %._crit_edge ], [ %..i, %bb.h ], !dbg !7490 ; 2 uses
  %.not21 = icmp eq i64 %i.q, 0, !dbg !7490
  br i1 %.not21, label %bb.j, label %bb.n, !dbg !7490

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !7419, !DIExpression(), !7422)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !7492
  %i.s = load i64, ptr %i.r, align 8, !dbg !7492, !noundef !1281 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0, !dbg !7493
  br i1 %i.t, label %bb.i, label %bb.h, !dbg !7493

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !7493
  %i.v = load i64, ptr %i.u, align 8, !dbg !7493, !noundef !1281
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1128, !dbg !7494
  %i.x = load i64, ptr %i.w, align 8, !dbg !7494, !noundef !1281
  %i.y = udiv i64 %i.v, %i.s, !dbg !7493
    #dbg_value(i64 %i.x, !2472, !DIExpression(), !7341)
    #dbg_value(i64 %i.x, !2472, !DIExpression(), !7341)
    #dbg_value(i64 %i.y, !2473, !DIExpression(), !7341)
    #dbg_value(i64 %i.y, !2473, !DIExpression(), !7341)
    #dbg_value(ptr undef, !2472, !DIExpression(DW_OP_deref), !7341)
    #dbg_value(ptr undef, !2473, !DIExpression(DW_OP_deref), !7341)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.x), !dbg !7495 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1120, !dbg !7496
  store i64 %..i, ptr %i.z, align 8, !dbg !7496
  br label %bb.f, !dbg !7497

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !dbg !7493
  unreachable, !dbg !7493

bb.j:                                             ; preds = %bb.f
  %i.aa = add i64 %5, %3, !dbg !7498              ; 2 uses
    #dbg_value(i64 %i.aa, !7423, !DIExpression(), !7429)
    #dbg_value(ptr %0, !2803, !DIExpression(), !7344)
    #dbg_value(i64 %i.aa, !2810, !DIExpression(), !7346)
    #dbg_value(i64 %i.aa, !2804, !DIExpression(), !7344)
    #dbg_value(ptr %7, !2815, !DIExpression(), !7346)
    #dbg_value(ptr %7, !2805, !DIExpression(), !7344)
    #dbg_value(ptr %0, !2814, !DIExpression(), !7347)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1048, !dbg !7499
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !7499, !alias.scope !7430, !noundef !1281 ; 2 uses
    #dbg_value(i64 %i.ac, !2806, !DIExpression(), !7350)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !7500
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !7500, !range !2465, !alias.scope !7430, !noundef !1281
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !7501
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !7501
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !7501, !alias.scope !7430
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ah), !dbg !7501
  %.sroa.0.0.i = select i1 %i.af, i64 %..i.i, i64 %i.ac, !dbg !7501 ; 3 uses
    #dbg_value(ptr poison, !7431, !DIExpression(), !7356)
    #dbg_value(i64 %5, !7441, !DIExpression(), !7362)
    #dbg_value(i64 %5, !7436, !DIExpression(), !7356)
    #dbg_value(i64 %5, !7444, !DIExpression(), !7363)
    #dbg_value(i64 8000000000, !7445, !DIExpression(), !7363)
    #dbg_value(i64 8000000000, !7442, !DIExpression(), !7362)
  %.off.i = add i64 %.sroa.0.0.i, -1, !dbg !7502
  %switch.i = icmp ult i64 %.off.i, -2, !dbg !7502
  br i1 %switch.i, label %bb.k, label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit, !dbg !7502

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 8000000000), !dbg !7503 ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1, !dbg !7503
    #dbg_value(i64 poison, !7446, !DIExpression(), !7364)
    #dbg_value(i1 %i.aj, !7449, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7367)
    #dbg_value(i1 %i.aj, !7447, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7364)
  br i1 %i.aj, label %bb.m, label %bb.l, !dbg !7504, !prof !2014

bb.l:                                             ; preds = %bb.k
  %i.ak = extractvalue { i64, i1 } %i.ai, 0, !dbg !7503
    #dbg_value(i64 %i.ak, !7446, !DIExpression(), !7364)
    #dbg_value(i64 %i.ak, !7437, !DIExpression(), !7368)
  %i.al = udiv i64 %i.ak, %.sroa.0.0.i, !dbg !7505 ; 2 uses
    #dbg_value(i64 %i.al, !7451, !DIExpression(), !7371)
  %i.am = udiv i64 %i.al, 1000000000, !dbg !7506
  %i.an = urem i64 %i.al, 1000000000, !dbg !7507
  %i.ao = trunc nuw nsw i64 %i.an to i32, !dbg !7507
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit, !dbg !7508

bb.m:                                             ; preds = %bb.k
    #dbg_value(i128 poison, !7438, !DIExpression(), !7372)
  %i.ap = zext i64 %.sroa.0.0.i to i128, !dbg !7509
  %i.aq = zext i64 %5 to i128, !dbg !7510
  %i.ar = mul nuw nsw i128 %i.aq, 8000000000, !dbg !7510
    #dbg_value(i128 %i.ar, !7438, !DIExpression(), !7372)
  %i.as = udiv i128 %i.ar, %i.ap, !dbg !7511
    #dbg_value(i128 %i.as, !7439, !DIExpression(), !7373)
    #dbg_value(ptr undef, !2893, !DIExpression(DW_OP_deref), !7375)
    #dbg_value(ptr undef, !2896, !DIExpression(DW_OP_deref), !7375)
  %..i.i27 = tail call noundef range(i128 0, 18446744073709551616) i128 @llvm.umin.i128(i128 range(i128 0, 147573952589676412920000000001) %i.as, i128 18446744073709551615), !dbg !7512
  %i.at = trunc nuw i128 %..i.i27 to i64, !dbg !7513 ; 2 uses
    #dbg_value(i64 %i.at, !7451, !DIExpression(), !7377)
  %i.au = udiv i64 %i.at, 1000000000, !dbg !7514
  %i.av = urem i64 %i.at, 1000000000, !dbg !7515
  %i.aw = trunc nuw nsw i64 %i.av to i32, !dbg !7515
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit, !dbg !7516

_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.5.0.i = phi i32 [ %i.aw, %bb.m ], [ %i.ao, %bb.l ], [ 0, %bb.j ], !dbg !7517
  %.sroa.0.0.i26 = phi i64 [ %i.au, %bb.m ], [ %i.am, %bb.l ], [ 0, %bb.j ], !dbg !7517
    #dbg_value(i64 %.sroa.0.0.i26, !7398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7457)
    #dbg_value(i32 %.sroa.5.0.i, !7398, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7457)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1145, !dbg !7518 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !dbg !7518, !range !2015, !noundef !1281
  %i.az = trunc nuw i8 %i.ay to i1, !dbg !7518
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 0
  %or.cond.not = select i1 %i.az, i1 %i.bc, i1 false, !dbg !7518
  br i1 %or.cond.not, label %._crit_edge31, label %bb.o, !dbg !7518

bb.n:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1120, !dbg !7490
  %i.be = add i64 %i.q, -1, !dbg !7519
  store i64 %i.be, ptr %i.bd, align 8, !dbg !7519
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1112, !dbg !7520
  store i32 -1, ptr %i.bf, align 8, !dbg !7520
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1145, !dbg !7521
  store i8 0, ptr %i.bg, align 1, !dbg !7521
  br label %bb.e, !dbg !7522

bb.o:                                             ; preds = %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit
    #dbg_value(ptr %0, !7419, !DIExpression(), !7460)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !7523 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !7524
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !7524, !noundef !1281 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !7523
  br i1 %i.bk, label %bb.q, label %bb.p, !dbg !7523

bb.p:                                             ; preds = %bb.o
  %i.bl = load i64, ptr %i.bh, align 8, !dbg !7523, !noundef !1281
  %i.bm = udiv i64 %i.bl, %i.bj, !dbg !7523
  %i.bn = uitofp i64 %i.bm to double, !dbg !7525
  %i.bo = fmul nnan double %i.bn, 2.500000e-01, !dbg !7526
  %i.bp = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bo), !dbg !7526
    #dbg_value(i64 2, !2472, !DIExpression(), !7379)
    #dbg_value(i64 2, !2472, !DIExpression(), !7379)
    #dbg_value(i64 %i.bp, !2473, !DIExpression(), !7379)
    #dbg_value(i64 %i.bp, !2473, !DIExpression(), !7379)
    #dbg_value(ptr undef, !2472, !DIExpression(DW_OP_deref), !7379)
    #dbg_value(ptr undef, !2473, !DIExpression(DW_OP_deref), !7379)
    #dbg_value(i64 1, !2452, !DIExpression(), !7381)
    #dbg_value(i64 1, !2452, !DIExpression(), !7381)
    #dbg_value(i64 poison, !2454, !DIExpression(), !7381)
    #dbg_value(i64 poison, !2454, !DIExpression(), !7381)
    #dbg_value(ptr undef, !2452, !DIExpression(DW_OP_deref), !7381)
    #dbg_value(ptr undef, !2454, !DIExpression(DW_OP_deref), !7381)
  %i.bq = icmp ult i64 %i.bp, 2, !dbg !7527
  %..i29 = select i1 %i.bq, i64 1, i64 2, !dbg !7527
  store i64 %..i29, ptr %i.ba, align 8, !dbg !7528
    #dbg_value(ptr %0, !2900, !DIExpression(), !7383)
    #dbg_value(ptr %7, !2903, !DIExpression(), !7383)
  %i.br = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.j), !dbg !7529
    #dbg_value(ptr %i.br, !2905, !DIExpression(), !7384)
  %i.bs = tail call noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel18bandwidth_estimate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.br), !dbg !7530
    #dbg_value(ptr poison, !7404, !DIExpression(), !7461)
    #dbg_value(i8 poison, !7462, !DIExpression(), !7467)
    #dbg_value(i8 poison, !7413, !DIExpression(), !7468)
    #dbg_value(i8 poison, !7412, !DIExpression(), !7469)
  %i.bt = icmp ult i64 %i.bs, 1200000, !dbg !7531
  br i1 %i.bt, label %bb.r, label %bb.s, !dbg !7408

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !dbg !7523
  unreachable, !dbg !7523

bb.r:                                             ; preds = %bb.p
  store i64 1, ptr %i.ba, align 8, !dbg !7532
  br label %bb.s, !dbg !7533

bb.s:                                             ; preds = %bb.p, %bb.r
    #dbg_value(ptr %0, !7470, !DIExpression(), !7473)
  %i.bu = load i64, ptr %i.bh, align 8, !dbg !7534, !noundef !1281
  %.not23 = icmp ult i64 %i.aa, %i.bu, !dbg !7535
  %.pre32 = load i64, ptr %i.ba, align 8
  %spec.select = select i1 %.not23, i64 %.pre32, i64 1, !dbg !7535
  br label %._crit_edge31, !dbg !7535

._crit_edge31:                                    ; preds = %bb.s, %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit
  %i.bv = phi i64 [ %spec.select, %bb.s ], [ %i.bb, %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth13transfer_time.exit ], !dbg !7536
  %i.bw = add i64 %i.bv, -1, !dbg !7536
  store i64 %i.bw, ptr %i.ba, align 8, !dbg !7536
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1104, !dbg !7537 ; 2 uses
  tail call void @_RNvMs8_NtCs3f36owOmepS_6quiche8recoveryNtB5_11ReleaseTime7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bx, i64 noundef %1, i32 noundef %2), !dbg !7538
  tail call void @_RNvMs8_NtCs3f36owOmepS_6quiche8recoveryNtB5_11ReleaseTime3inc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bx, i64 noundef %.sroa.0.0.i26, i32 noundef %.sroa.5.0.i), !dbg !7539
    #dbg_value(ptr %0, !7426, !DIExpression(), !7474)
    #dbg_value(ptr %0, !7470, !DIExpression(), !7476)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !7540
  %i.bz = load i64, ptr %i.by, align 8, !dbg !7540, !noundef !1281
end_hunk_0
