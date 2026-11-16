Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.07?download=true
inline.NumInlined: 2030
inline.NumDeleted: 930
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCsaTqK2fWTXJW_11qlog_dancer:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2B_INtNtNtB2J_3ops5range5RangejENCNvMsz_NtB1h_6schemeNtB44_6Scheme5lists0ENCINvMNtB1h_17execution_contextNtB4I_16ExecutionContext8new_withNvYuNtNtB2J_7default7Default7defaultE0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32155 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr %1, !32338, !DIExpression(), !32342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32343), !dbg !32430
    #dbg_declare(ptr %1, !32344, !DIExpression(), !32162)
    #dbg_declare(ptr %i.c, !32345, !DIExpression(), !32163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !32431, !noalias !32348
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32432
  %.val.i = load i64, ptr %i.d, align 8, !dbg !32432, !alias.scope !32349, !noundef !3895
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32432
  %.val4.i = load i64, ptr %i.e, align 8, !dbg !32432, !alias.scope !32350, !noundef !3895
    #dbg_value(ptr poison, !32352, !DIExpression(), !32170)
    #dbg_value(ptr poison, !32359, !DIExpression(), !32174)
    #dbg_value(ptr poison, !32369, !DIExpression(), !32177)
  %spec.select.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val4.i, i64 %.val.i), !dbg !32433 ; 2 uses
    #dbg_value(i64 %spec.select.i.i.i.i, !32346, !DIExpression(), !32178)
    #dbg_value(i64 %spec.select.i.i.i.i, !32373, !DIExpression(), !32181)
    #dbg_value(i64 %spec.select.i.i.i.i, !32378, !DIExpression(), !32184)
    #dbg_value(i64 %spec.select.i.i.i.i, !32384, !DIExpression(), !32187)
    #dbg_value(i64 %spec.select.i.i.i.i, !12671, !DIExpression(), !32189)
    #dbg_value(i64 %spec.select.i.i.i.i, !12690, !DIExpression(), !32191)
    #dbg_value(i64 8, !12676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32189)
    #dbg_value(i64 8, !12693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32191)
    #dbg_value(i64 16, !12676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32189)
    #dbg_value(i64 16, !12693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32191)
    #dbg_value(i64 0, !12692, !DIExpression(), !32191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32434, !noalias !32348
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !32434, !noalias !32348
  %i.f = load i64, ptr %i.b, align 8, !dbg !32434, !range !6514, !noalias !32348, !noundef !3895
  %i.g = trunc nuw i64 %i.f to i1, !dbg !32435
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32436
  %i.i = load i64, ptr %i.h, align 8, !dbg !32436, !range !12695, !noalias !32348, !noundef !3895 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32436 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_3ops5range5RangejENCNvMsz_NtB13_6schemeNtB3J_6Scheme5lists0ENCINvMNtB13_17execution_contextNtB4n_16ExecutionContext8new_withNvYuNtNtB2o_7default7Default7defaultE0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !32435, !prof !5708

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !32437, !noalias !32348
    #dbg_value(i64 %i.i, !12678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32192)
    #dbg_value(i64 %i.k, !12678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32192)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26, !dbg !32438, !noalias !32348
  unreachable, !dbg !32438

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_3ops5range5RangejENCNvMsz_NtB13_6schemeNtB3J_6Scheme5lists0ENCINvMNtB13_17execution_contextNtB4n_16ExecutionContext8new_withNvYuNtNtB2o_7default7Default7defaultE0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !32439, !noalias !32348, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(i64 %i.i, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32193)
    #dbg_value(ptr %i.l, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32193)
    #dbg_value(ptr poison, !12691, !DIExpression(), !32194)
  %i.m = icmp ule i64 %spec.select.i.i.i.i, %i.i, !dbg !32440
    #dbg_value(i1 true, !12698, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !32196)
  tail call void @llvm.assume(i1 %i.m), !dbg !32441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32442, !noalias !32348
  store i64 %i.i, ptr %i.c, align 8, !dbg !32443, !noalias !32348
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !32443
  store ptr %i.l, ptr %i.n, align 8, !dbg !32443, !noalias !32348
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !32443 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !32443, !noalias !32348
    #dbg_value(ptr %i.c, !32390, !DIExpression(), !32199)
    #dbg_declare(ptr %1, !32393, !DIExpression(), !32200)
    #dbg_value(ptr %i.c, !32396, !DIExpression(), !32211)
    #dbg_declare(ptr %1, !32400, !DIExpression(), !32212)
    #dbg_value(ptr poison, !32352, !DIExpression(), !32214)
    #dbg_value(ptr poison, !32359, !DIExpression(), !32216)
    #dbg_value(ptr poison, !32369, !DIExpression(), !32218)
    #dbg_value(i64 poison, !32401, !DIExpression(), !32219)
    #dbg_value(i64 1, !32402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32219)
    #dbg_value(i64 %spec.select.i.i.i.i, !32402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32219)
    #dbg_value(i64 %spec.select.i.i.i.i, !32403, !DIExpression(), !32220)
    #dbg_value(ptr %i.l, !32414, !DIExpression(), !32221)
    #dbg_value(ptr %i.o, !32415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32222)
    #dbg_value(i64 0, !32415, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32444, !noalias !32417
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !32444
  store ptr %i.l, ptr %i.p, align 8, !dbg !32444, !noalias !32417
  store ptr %i.o, ptr %i.a, align 8, !dbg !32444, !noalias !32417
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !32444
  store i64 0, ptr %i.q, align 8, !dbg !32444, !noalias !32417
    #dbg_declare(ptr %1, !32418, !DIExpression(), !32232)
    #dbg_declare(ptr %i.a, !32424, !DIExpression(), !32233)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNvMsz_NtCs9uoxEJIHcZN_10wirefilter6schemeNtB1B_6Scheme5lists0ENCINvMNtB1D_17execution_contextNtB2B_16ExecutionContext8new_withNvYuNtNtBc_7default7Default7defaultE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB49_8for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1D_12list_matcher11ListMatcherEL_ENCINvMsk_NtB5h_3vecINtB6y_3VecB5c_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2R_INtNtNtB2Z_3ops5range5RangejENCNvMsz_NtB1q_6schemeNtB4k_6Scheme5lists0ENCINvMNtB1q_17execution_contextNtB4Y_16ExecutionContext8new_withNvYuNtNtB2Z_7default7Default7defaultE0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.c, !dbg !32445, !noalias !32429

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_3ops5range5RangejENCNvMsz_NtB13_6schemeNtB3J_6Scheme5lists0ENCINvMNtB13_17execution_contextNtB4n_16ExecutionContext8new_withNvYuNtNtB2o_7default7Default7defaultE0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !32446, !noalias !32348

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !32447, !noalias !32348
  unreachable, !dbg !32447

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r, !dbg !32447

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2R_INtNtNtB2Z_3ops5range5RangejENCNvMsz_NtB1q_6schemeNtB4k_6Scheme5lists0ENCINvMNtB1q_17execution_contextNtB4Y_16ExecutionContext8new_withNvYuNtNtB2Z_7default7Default7defaultE0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs9uoxEJIHcZN_10wirefilter12list_matcher11ListMatcherEL_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_3ops5range5RangejENCNvMsz_NtB13_6schemeNtB3J_6Scheme5lists0ENCINvMNtB13_17execution_contextNtB4n_16ExecutionContext8new_withNvYuNtNtB2o_7default7Default7defaultE0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32448, !noalias !32417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !32449, !noalias !32343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !32446, !noalias !32348
  ret void, !dbg !32450
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB11_5coord5ShiftEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3x_7flatten7FlatMapINtNtB4_9into_iter8IntoIterTllEEIB3t_B4F_NCNCINvMBX_NtBX_4Rect10split_gridIB3t_INtNtNtB3B_5slice4iter4IterlENCINvMs7_BX_BU_20split_by_breakpointsllRSlB72_E0EIB3t_B5W_NCB6r_s_0EEs2_00ENCB5o_s2_0ENCB6r_s0_0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32451 {
bb.a:
  %.sroa.5.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [144 x i8], align 8               ; 15 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
    #dbg_declare(ptr %1, !32734, !DIExpression(), !32738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32739), !dbg !32966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32740), !dbg !32966
    #dbg_declare(ptr %1, !32741, !DIExpression(), !32462)
    #dbg_declare(ptr %i.g, !32742, !DIExpression(), !32463)
    #dbg_declare(ptr %i.e, !32743, !DIExpression(), !32464)
    #dbg_value(i64 4, !32748, !DIExpression(), !32467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !32967, !noalias !32751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32968, !noalias !32751
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTllEEIBN_B1k_NCNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB2t_4Rect10split_gridIBN_INtNtNtBb_5slice4iter4IterlENCINvMs7_B2t_INtB2t_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2x_5coord5ShiftE20split_by_breakpointsllRSlB6b_E0EIBN_B3y_NCB42_s_0EEs2_00ENCB2p_s2_0ENCB42_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %1)
          to label %bb.c unwind label %bb.b, !dbg !32969, !noalias !32739

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !dbg !32968, !noalias !32751, !noundef !3895
  %.not.i = icmp eq ptr %i.i, null, !dbg !32968
  br i1 %.not.i, label %bb.g, label %bb.d, !dbg !32970

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32971, !noalias !32751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !32971, !noalias !32751
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !32972
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !32972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32752), !dbg !32973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32753), !dbg !32973
    #dbg_value(ptr %1, !32755, !DIExpression(), !32473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32759), !dbg !32974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32760), !dbg !32974
    #dbg_value(ptr %1, !32762, !DIExpression(), !32479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32766), !dbg !32975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32767), !dbg !32975
    #dbg_value(ptr %1, !32769, !DIExpression(), !32505)
    #dbg_value(ptr %1, !32798, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !32514)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !32976
  %i.k = load ptr, ptr %i.j, align 8, !dbg !32976, !alias.scope !32815, !noundef !3895
  %.not.i.i.i.i = icmp eq ptr %i.k, null, !dbg !32976
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32518)
    #dbg_value(i64 1, !32816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32518)
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32518)
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32520)
    #dbg_value(i64 1, !32816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32520)
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32520)
    #dbg_value(ptr poison, !32826, !DIExpression(), !32521)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !32977
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !dbg !32977, !alias.scope !32815, !nonnull !3895
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !32977
  %.val4.i.i.i.i.i = load ptr, ptr %i.m, align 8, !dbg !32977, !alias.scope !32815, !nonnull !3895
  %i.n = ptrtoint ptr %.val4.i.i.i.i.i to i64, !dbg !32977
  %i.o = ptrtoint ptr %.val.i.i.i.i.i to i64, !dbg !32977
  %i.p = sub nuw i64 %i.n, %i.o, !dbg !32977
  %i.q = lshr exact i64 %i.p, 3, !dbg !32977
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.q, !dbg !32977
    #dbg_value(i64 %.sroa.7.0.i.i.i.i, !32772, !DIExpression(), !32522)
    #dbg_value(i64 %.sroa.7.0.i.i.i.i, !32830, !DIExpression(), !32525)
    #dbg_value(i64 1, !32773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32522)
    #dbg_value(i64 %.sroa.7.0.i.i.i.i, !32773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32522)
    #dbg_value(ptr %1, !32798, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !32527)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !32978
  %i.s = load ptr, ptr %i.r, align 8, !dbg !32978, !alias.scope !32815, !noundef !3895
  %.not84.i.i.i.i = icmp eq ptr %i.s, null, !dbg !32978
    #dbg_value(ptr poison, !32826, !DIExpression(), !32528)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !32979
  %.val.i93.i.i.i.i = load ptr, ptr %i.t, align 8, !dbg !32979, !alias.scope !32815, !nonnull !3895
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !32979
  %.val4.i94.i.i.i.i = load ptr, ptr %i.u, align 8, !dbg !32979, !alias.scope !32815, !nonnull !3895
  %i.v = ptrtoint ptr %.val4.i94.i.i.i.i to i64, !dbg !32979
  %i.w = ptrtoint ptr %.val.i93.i.i.i.i to i64, !dbg !32979
  %i.x = sub nuw i64 %i.v, %i.w, !dbg !32979
  %i.y = lshr exact i64 %i.x, 3, !dbg !32979
  %.sroa.8.0.i.i.i.i = select i1 %.not84.i.i.i.i, i64 0, i64 %i.y, !dbg !32979
    #dbg_value(i64 %.sroa.8.0.i.i.i.i, !32774, !DIExpression(), !32529)
    #dbg_value(i64 %.sroa.8.0.i.i.i.i, !32831, !DIExpression(), !32525)
    #dbg_value(i64 1, !32775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32529)
    #dbg_value(i64 %.sroa.8.0.i.i.i.i, !32775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32529)
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i, !dbg !32980 ; 2 uses
    #dbg_value(i64 poison, !32776, !DIExpression(), !32530)
    #dbg_value(i64 poison, !32831, !DIExpression(), !32532)
    #dbg_value(ptr %1, !32834, !DIExpression(), !32537)
  %i.aa = load i64, ptr %1, align 8, !dbg !32981, !range !5929, !alias.scope !32815, !noundef !3895
  %.not85.i.i.i.i = icmp eq i64 %i.aa, -1, !dbg !32981
  br i1 %.not85.i.i.i.i, label %bb.f, label %bb.e, !dbg !32982

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !32839, !DIExpression(), !32538)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !32983
  %.val.i.i.i.i = load ptr, ptr %i.ab, align 8, !dbg !32983, !alias.scope !32815, !nonnull !3895, !noundef !3895
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !32983
  %.val92.i.i.i.i = load ptr, ptr %i.ac, align 8, !dbg !32983, !alias.scope !32815, !nonnull !3895, !noundef !3895
  %i.ad = icmp eq ptr %.val92.i.i.i.i, %.val.i.i.i.i, !dbg !32984
  br i1 %i.ad, label %bb.f, label %bb.j, !dbg !32984

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.j, !dbg !32985

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !dbg !32986, !alias.scope !32739
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32986
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !dbg !32986, !alias.scope !32739
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !32986
  store i64 0, ptr %i.af, align 8, !dbg !32986, !alias.scope !32739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32987, !noalias !32751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32988, !noalias !32751
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTllEEIBC_B1x_NCNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB2G_4Rect10split_gridIBC_INtNtNtB4_5slice4iter4IterlENCINvMs7_B2G_INtB2G_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2K_5coord5ShiftE20split_by_breakpointsllRSlB6o_E0EIBC_B3L_NCB4f_s_0EEs2_00ENCB2C_s2_0ENCB4f_s0_0EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %1), !dbg !32988, !noalias !32739
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB18_5coord5ShiftEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3L_7flatten7FlatMapINtNtB4_9into_iter8IntoIterTllEEIB3H_B4T_NCNCINvMB14_NtB14_4Rect10split_gridIB3H_INtNtNtB3P_5slice4iter4IterlENCINvMs7_B14_B11_20split_by_breakpointsllRSlB7k_E0EIB3H_B6c_NCB6H_s_0EEs2_00ENCB5C_s2_0ENCB6H_s0_0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !32988

bb.h:                                             ; preds = %bb.k, %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32844), !dbg !32989
    #dbg_value(ptr %i.e, !7464, !DIExpression(), !32544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32845), !dbg !32990
    #dbg_value(ptr %i.e, !7469, !DIExpression(), !32548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32846), !dbg !32991
    #dbg_value(ptr %i.e, !7476, !DIExpression(), !32552)
    #dbg_value(ptr %i.e, !7479, !DIExpression(), !32554)
    #dbg_value(ptr %i.e, !7479, !DIExpression(), !32556)
  %i.ah = load ptr, ptr %i.e, align 8, !dbg !32992, !alias.scope !32847, !noalias !32751, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(ptr %i.ah, !7491, !DIExpression(), !32559)
    #dbg_value(ptr %i.ah, !7498, !DIExpression(), !32561)
    #dbg_value(ptr %i.ah, !7504, !DIExpression(), !32563)
    #dbg_value(ptr %i.ah, !7510, !DIExpression(), !32565)
    #dbg_value(ptr %i.ah, !7516, !DIExpression(), !32567)
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !32993, !noalias !32848, !noundef !3895
  %i.aj = add i64 %i.ai, -1, !dbg !32994          ; 2 uses
    #dbg_value(i64 %i.aj, !7508, !DIExpression(), !32568)
    #dbg_value(i64 %i.aj, !7514, !DIExpression(), !32569)
  store i64 %i.aj, ptr %i.ah, align 8, !dbg !32995, !noalias !32848
    #dbg_value(ptr %i.ah, !7498, !DIExpression(), !32572)
    #dbg_value(ptr %i.ah, !7516, !DIExpression(), !32574)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !32996
  br i1 %i.ak, label %bb.i, label %bb.aa, !dbg !32996

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #25
          to label %bb.aa unwind label %bb.y, !dbg !32997, !noalias !32739

bb.j:                                             ; preds = %bb.f, %bb.e
  %.sink110.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.f ], [ %.sroa.5.i, %bb.e ]
  %.sink.i.i.i.i = phi i64 [ %i.z, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i.i, ptr %.sink110.i.i.i.sroa.phi.i, align 8, !dbg !32998, !alias.scope !32849, !noalias !32751
    #dbg_value(i64 %i.z, !32744, !DIExpression(), !32575)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !32999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !32999
    #dbg_value(i64 poison, !32749, !DIExpression(), !32467)
    #dbg_value(ptr undef, !13098, !DIExpression(DW_OP_deref), !32577)
    #dbg_value(ptr undef, !13100, !DIExpression(DW_OP_deref), !32577)
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3), !dbg !33000 ; 2 uses
  %..i.i = add nuw nsw i64 %i.al, 1, !dbg !33000
    #dbg_value(i64 %..i.i, !32745, !DIExpression(), !32578)
    #dbg_value(i64 %..i.i, !32850, !DIExpression(), !32581)
    #dbg_value(i64 %..i.i, !32855, !DIExpression(), !32584)
    #dbg_value(i64 %..i.i, !32861, !DIExpression(), !32587)
    #dbg_value(i64 %..i.i, !12671, !DIExpression(), !32589)
    #dbg_value(i64 %..i.i, !12690, !DIExpression(), !32591)
    #dbg_value(i64 8, !12676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32589)
    #dbg_value(i64 8, !12693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32591)
    #dbg_value(i64 32, !12676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32589)
    #dbg_value(i64 32, !12693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32591)
    #dbg_value(i64 0, !12692, !DIExpression(), !32591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33001, !noalias !32751
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc12.i unwind label %bb.h, !dbg !33001, !noalias !32739

.noexc12.i:                                       ; preds = %bb.j
  %i.am = load i64, ptr %i.c, align 8, !dbg !33001, !range !6514, !noalias !32751, !noundef !3895
  %i.an = trunc nuw i64 %i.am to i1, !dbg !33002
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33003
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !33003, !range !12695, !noalias !32751, !noundef !3895 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !33003 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l, !dbg !33002, !prof !5708

bb.k:                                             ; preds = %.noexc12.i
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !33004, !noalias !32751
    #dbg_value(i64 %i.ap, !12678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32592)
    #dbg_value(i64 %i.ar, !12678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32592)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #26
          to label %.noexc13.i unwind label %bb.h, !dbg !33005, !noalias !32739

.noexc13.i:                                       ; preds = %bb.k
  unreachable, !dbg !33005

bb.l:                                             ; preds = %.noexc12.i
  %i.as = load ptr, ptr %i.aq, align 8, !dbg !33006, !noalias !32751, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(i64 %i.ap, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32593)
    #dbg_value(ptr %i.as, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32593)
    #dbg_value(ptr poison, !12691, !DIExpression(), !32594)
  %i.at = icmp ult i64 %i.al, %i.ap, !dbg !33007
    #dbg_value(i1 true, !12698, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !32596)
  tail call void @llvm.assume(i1 %i.at), !dbg !33008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33009, !noalias !32751
    #dbg_value(i64 %i.ap, !32746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32597)
    #dbg_value(ptr %i.as, !32746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32597)
    #dbg_value(i64 0, !32746, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32597)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !33010, !noalias !32739
    #dbg_value(i64 1, !32746, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32597)
  store i64 %i.ap, ptr %i.g, align 8, !dbg !33011, !noalias !32751
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !33011 ; 2 uses
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !33011, !noalias !32751
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !33011 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !33011, !noalias !32751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !32989, !noalias !32751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32987, !noalias !32751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33012, !noalias !32751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false), !dbg !33012, !noalias !32739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32867), !dbg !33013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32868), !dbg !33013
    #dbg_value(ptr %i.g, !32869, !DIExpression(), !32603)
    #dbg_declare(ptr %i.d, !32872, !DIExpression(), !32604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32875), !dbg !33014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32876), !dbg !33014
    #dbg_value(ptr %i.g, !32877, !DIExpression(), !32613)
    #dbg_value(ptr %i.g, !32885, !DIExpression(), !32616)
    #dbg_value(ptr %i.g, !32891, !DIExpression(), !32619)
    #dbg_value(ptr %i.g, !32894, !DIExpression(), !32622)
    #dbg_value(ptr %i.g, !32900, !DIExpression(), !32625)
    #dbg_value(ptr %i.g, !32891, !DIExpression(), !32627)
    #dbg_declare(ptr %i.d, !32880, !DIExpression(), !32628)
    #dbg_declare(ptr %i.a, !32881, !DIExpression(), !32629)
    #dbg_value(i64 32, !32906, !DIExpression(), !32634)
    #dbg_value(i64 1, !32915, !DIExpression(), !32637)
    #dbg_value(i64 32, !32906, !DIExpression(), !32640)
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.m, !dbg !33015

bb.m:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBL_5coord5ShiftEE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33016, !noalias !32920
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTllEEIBN_B1k_NCNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB2t_4Rect10split_gridIBN_INtNtNtBb_5slice4iter4IterlENCINvMs7_B2t_INtB2t_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2x_5coord5ShiftE20split_by_breakpointsllRSlB6b_E0EIBN_B3y_NCB42_s_0EEs2_00ENCB2p_s2_0ENCB42_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.d)
          to label %bb.o unwind label %bb.n, !dbg !33017, !noalias !32739

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.by, %bb.u ], [ %i.by, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTllEEIBC_B1x_NCNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB2G_4Rect10split_gridIBC_INtNtNtB4_5slice4iter4IterlENCINvMs7_B2G_INtB2G_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2K_5coord5ShiftE20split_by_breakpointsllRSlB6o_E0EIBC_B3L_NCB4f_s_0EEs2_00ENCB2C_s2_0ENCB4f_s0_0EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.d) #20
          to label %.body.i unwind label %bb.w, !dbg !33018, !noalias !32739

bb.n:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %i.b, align 8, !dbg !33016, !noalias !32920, !noundef !3895
  %.not.i.i.i = icmp eq ptr %i.bd, null, !dbg !33016
  br i1 %.not.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBN_5coord5ShiftEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3d_7flatten7FlatMapINtNtB6_9into_iter8IntoIterTllEEIB39_B4l_NCNCINvMBJ_NtBJ_4Rect10split_gridIB39_INtNtNtB3h_5slice4iter4IterlENCINvMs7_BJ_BG_20split_by_breakpointsllRSlB6I_E0EIB39_B5C_NCB67_s_0EEs2_00ENCB54_s2_0ENCB67_s0_0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, label %bb.p, !dbg !33019

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33020, !noalias !32920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !33020, !noalias !32920
  %i.be = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !33021, !alias.scope !32921, !noalias !32751, !noundef !3895 ; 5 uses
    #dbg_value(i64 %i.be, !32882, !DIExpression(), !32641)
    #dbg_value(i64 %i.be, !32922, !DIExpression(), !32644)
  %i.bf = icmp ult i64 %i.be, 288230376151711744, !dbg !33022
  call void @llvm.assume(i1 %i.bf), !dbg !33023
    #dbg_value(ptr %i.g, !32913, !DIExpression(), !32645)
  %i.bg = load i64, ptr %i.g, align 8, !dbg !33024, !range !5707, !alias.scope !32921, !noalias !32751, !noundef !3895
  %i.bh = icmp eq i64 %i.be, %i.bg, !dbg !33025
  br i1 %i.bh, label %bb.q, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBL_5coord5ShiftEE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, !dbg !33025

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !33026
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !33026
  call void @llvm.experimental.noalias.scope.decl(metadata !32927), !dbg !33027
  call void @llvm.experimental.noalias.scope.decl(metadata !32928), !dbg !33027
    #dbg_value(ptr %i.d, !32755, !DIExpression(), !32650)
  call void @llvm.experimental.noalias.scope.decl(metadata !32929), !dbg !33028
  call void @llvm.experimental.noalias.scope.decl(metadata !32930), !dbg !33028
    #dbg_value(ptr %i.d, !32762, !DIExpression(), !32655)
  call void @llvm.experimental.noalias.scope.decl(metadata !32931), !dbg !33029
  call void @llvm.experimental.noalias.scope.decl(metadata !32932), !dbg !33029
    #dbg_value(ptr %i.d, !32769, !DIExpression(), !32660)
    #dbg_value(ptr %i.d, !32798, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !32662)
  %i.bi = load ptr, ptr %i.au, align 8, !dbg !33030, !alias.scope !32933, !noalias !32751, !noundef !3895
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null, !dbg !33030
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32664)
    #dbg_value(i64 1, !32816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32664)
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32664)
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32666)
    #dbg_value(i64 1, !32816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32666)
    #dbg_value(i64 0, !32816, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32666)
    #dbg_value(ptr poison, !32826, !DIExpression(), !32667)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !dbg !33031, !alias.scope !32933, !noalias !32751, !nonnull !3895
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !dbg !33031, !alias.scope !32933, !noalias !32751, !nonnull !3895
  %i.bj = ptrtoint ptr %.val4.i.i.i.i.i.i.i to i64, !dbg !33031
  %i.bk = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64, !dbg !33031
  %i.bl = sub nuw i64 %i.bj, %i.bk, !dbg !33031
  %i.bm = lshr exact i64 %i.bl, 3, !dbg !33031
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %i.bm, !dbg !33031
    #dbg_value(i64 %.sroa.7.0.i.i.i.i.i.i, !32772, !DIExpression(), !32668)
    #dbg_value(i64 %.sroa.7.0.i.i.i.i.i.i, !32830, !DIExpression(), !32670)
    #dbg_value(i64 1, !32773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32668)
    #dbg_value(i64 %.sroa.7.0.i.i.i.i.i.i, !32773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32668)
    #dbg_value(ptr %i.d, !32798, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !32672)
  %i.bn = load ptr, ptr %i.ax, align 8, !dbg !33032, !alias.scope !32933, !noalias !32751, !noundef !3895
  %.not84.i.i.i.i.i.i = icmp eq ptr %i.bn, null, !dbg !33032
    #dbg_value(ptr poison, !32826, !DIExpression(), !32673)
  %.val.i93.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !dbg !33033, !alias.scope !32933, !noalias !32751, !nonnull !3895
  %.val4.i94.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !dbg !33033, !alias.scope !32933, !noalias !32751, !nonnull !3895
  %i.bo = ptrtoint ptr %.val4.i94.i.i.i.i.i.i to i64, !dbg !33033
  %i.bp = ptrtoint ptr %.val.i93.i.i.i.i.i.i to i64, !dbg !33033
  %i.bq = sub nuw i64 %i.bo, %i.bp, !dbg !33033
  %i.br = lshr exact i64 %i.bq, 3, !dbg !33033
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not84.i.i.i.i.i.i, i64 0, i64 %i.br, !dbg !33033
    #dbg_value(i64 %.sroa.8.0.i.i.i.i.i.i, !32774, !DIExpression(), !32674)
    #dbg_value(i64 %.sroa.8.0.i.i.i.i.i.i, !32831, !DIExpression(), !32670)
    #dbg_value(i64 1, !32775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32674)
    #dbg_value(i64 %.sroa.8.0.i.i.i.i.i.i, !32775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32674)
  %i.bs = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i, !dbg !33034 ; 2 uses
    #dbg_value(i64 poison, !32776, !DIExpression(), !32675)
    #dbg_value(i64 poison, !32831, !DIExpression(), !32677)
    #dbg_value(ptr %i.d, !32834, !DIExpression(), !32679)
  %i.bt = load i64, ptr %i.d, align 8, !dbg !33035, !range !5929, !alias.scope !32933, !noalias !32751, !noundef !3895
  %.not85.i.i.i.i.i.i = icmp eq i64 %i.bt, -1, !dbg !33035
  br i1 %.not85.i.i.i.i.i.i, label %bb.s, label %bb.r, !dbg !33036

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %i.d, !32839, !DIExpression(), !32680)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !dbg !33037, !alias.scope !32933, !noalias !32751, !nonnull !3895, !noundef !3895
  %.val92.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !dbg !33037, !alias.scope !32933, !noalias !32751, !nonnull !3895, !noundef !3895
  %i.bu = icmp eq ptr %.val92.i.i.i.i.i.i, %.val.i.i.i.i.i.i, !dbg !33038
  br i1 %i.bu, label %bb.s, label %bb.v, !dbg !33038

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.v, !dbg !33039

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBL_5coord5ShiftEE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.v, %bb.p
  %i.bv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !33040, !alias.scope !32921, !noalias !32751, !nonnull !3895, !noundef !3895
    #dbg_value(ptr %i.bv, !32925, !DIExpression(), !32644)
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.be, !dbg !33041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !33042, !noalias !32739
  %i.bx = add nuw nsw i64 %i.be, 1, !dbg !33043
    #dbg_value(i64 %i.bx, !32904, !DIExpression(), !32625)
  store i64 %i.bx, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !33044, !alias.scope !32921, !noalias !32751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33045, !noalias !32920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33045, !noalias !32920
  br label %bb.m, !dbg !33015

bb.t:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32944), !dbg !33045
    #dbg_value(ptr %i.a, !7464, !DIExpression(), !32690)
  call void @llvm.experimental.noalias.scope.decl(metadata !32945), !dbg !33046
    #dbg_value(ptr %i.a, !7469, !DIExpression(), !32694)
  call void @llvm.experimental.noalias.scope.decl(metadata !32946), !dbg !33047
    #dbg_value(ptr %i.a, !7476, !DIExpression(), !32698)
    #dbg_value(ptr %i.a, !7479, !DIExpression(), !32700)
    #dbg_value(ptr %i.a, !7479, !DIExpression(), !32702)
  %i.bz = load ptr, ptr %i.a, align 8, !dbg !33048, !alias.scope !32947, !noalias !32920, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(ptr %i.bz, !7491, !DIExpression(), !32705)
    #dbg_value(ptr %i.bz, !7498, !DIExpression(), !32707)
    #dbg_value(ptr %i.bz, !7504, !DIExpression(), !32709)
    #dbg_value(ptr %i.bz, !7510, !DIExpression(), !32711)
    #dbg_value(ptr %i.bz, !7516, !DIExpression(), !32713)
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !33049, !noalias !32948, !noundef !3895
  %i.cb = add i64 %i.ca, -1, !dbg !33050          ; 2 uses
    #dbg_value(i64 %i.cb, !7508, !DIExpression(), !32714)
    #dbg_value(i64 %i.cb, !7514, !DIExpression(), !32715)
  store i64 %i.cb, ptr %i.bz, align 8, !dbg !33051, !noalias !32948
    #dbg_value(ptr %i.bz, !7498, !DIExpression(), !32718)
    #dbg_value(ptr %i.bz, !7516, !DIExpression(), !32720)
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !33052
  br i1 %i.cc, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, !dbg !33052

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.w, !dbg !33053, !noalias !32739

bb.v:                                             ; preds = %bb.s, %bb.r
  %.sink110.i.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.s ], [ %.sroa.5.i.i.i, %bb.r ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.bs, %bb.s ], [ 0, %bb.r ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink110.i.i.i.sroa.phi.i.i.i, align 8, !dbg !33054, !alias.scope !32949, !noalias !32920
    #dbg_value(i64 %i.bs, !32883, !DIExpression(), !32721)
    #dbg_value(i64 %i.bs, !32916, !DIExpression(), !32637)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !33055
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !33055
    #dbg_value(ptr %i.g, !32950, !DIExpression(), !32724)
    #dbg_value(i64 poison, !32952, !DIExpression(), !32724)
    #dbg_value(i64 poison, !32954, !DIExpression(), !32727)
    #dbg_value(i64 poison, !32961, !DIExpression(), !32730)
    #dbg_value(ptr %i.g, !32958, !DIExpression(), !32731)
    #dbg_value(i64 %i.be, !32959, !DIExpression(), !32727)
    #dbg_value(i64 %i.be, !32963, !DIExpression(), !32730)
    #dbg_value(ptr %i.g, !32962, !DIExpression(), !32730)
    #dbg_value(i64 8, !32964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32730)
    #dbg_value(i64 32, !32964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32730)
  %i.cd = add nuw nsw i64 %i.bs, 1, !dbg !33056
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.be, i64 noundef range(i64 1, 0) %i.cd, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBL_5coord5ShiftEE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.t, !dbg !33057, !noalias !32739

bb.w:                                             ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !33058, !noalias !32739
  unreachable, !dbg !33058

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBN_5coord5ShiftEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3d_7flatten7FlatMapINtNtB6_9into_iter8IntoIterTllEEIB39_B4l_NCNCINvMBJ_NtBJ_4Rect10split_gridIB39_INtNtNtB3h_5slice4iter4IterlENCINvMs7_BJ_BG_20split_by_breakpointsllRSlB6I_E0EIB39_B5C_NCB67_s_0EEs2_00ENCB54_s2_0ENCB67_s0_0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33045, !noalias !32920
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTllEEIBC_B1x_NCNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB2G_4Rect10split_gridIBC_INtNtNtB4_5slice4iter4IterlENCINvMs7_B2G_INtB2G_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2K_5coord5ShiftE20split_by_breakpointsllRSlB6o_E0EIBC_B3L_NCB4f_s_0EEs2_00ENCB2C_s2_0ENCB4f_s0_0EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.d)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBY_5coord5ShiftEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3r_7flatten7FlatMapINtNtB4_9into_iter8IntoIterTllEEIB3n_B4z_NCNCINvMBU_NtBU_4Rect10split_gridIB3n_INtNtNtB3v_5slice4iter4IterlENCINvMs7_BU_BR_20split_by_breakpointsllRSlB6W_E0EIB3n_B5Q_NCB6l_s_0EEs2_00ENCB5i_s2_0ENCB6l_s0_0EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.x, !dbg !33018, !noalias !32739

bb.x:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBN_5coord5ShiftEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3d_7flatten7FlatMapINtNtB6_9into_iter8IntoIterTllEEIB39_B4l_NCNCINvMBJ_NtBJ_4Rect10split_gridIB39_INtNtNtB3h_5slice4iter4IterlENCINvMs7_BJ_BG_20split_by_breakpointsllRSlB6I_E0EIB39_B5C_NCB67_s_0EEs2_00ENCB54_s2_0ENCB67_s0_0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !32988

.body.i:                                          ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cf, %bb.x ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBI_5coord5ShiftEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1f_5coord5ShiftEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #20
          to label %bb.z unwind label %bb.y, !dbg !32988, !noalias !32739

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBY_5coord5ShiftEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3r_7flatten7FlatMapINtNtB4_9into_iter8IntoIterTllEEIB3n_B4z_NCNCINvMBU_NtBU_4Rect10split_gridIB3n_INtNtNtB3v_5slice4iter4IterlENCINvMs7_BU_BR_20split_by_breakpointsllRSlB6W_E0EIB3n_B5Q_NCB6l_s_0EEs2_00ENCB5i_s2_0ENCB6l_s0_0EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBN_5coord5ShiftEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3d_7flatten7FlatMapINtNtB6_9into_iter8IntoIterTllEEIB39_B4l_NCNCINvMBJ_NtBJ_4Rect10split_gridIB39_INtNtNtB3h_5slice4iter4IterlENCINvMs7_BJ_BG_20split_by_breakpointsllRSlB6I_E0EIB39_B5C_NCB67_s_0EEs2_00ENCB54_s2_0ENCB67_s0_0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33059, !noalias !32751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !33060, !noalias !32740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32988, !noalias !32751
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB18_5coord5ShiftEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3L_7flatten7FlatMapINtNtB4_9into_iter8IntoIterTllEEIB3H_B4T_NCNCINvMB14_NtB14_4Rect10split_gridIB3H_INtNtNtB3P_5slice4iter4IterlENCINvMs7_B14_B11_20split_by_breakpointsllRSlB7k_E0EIB3H_B6c_NCB6H_s_0EEs2_00ENCB5C_s2_0ENCB6H_s0_0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !32988

bb.y:                                             ; preds = %bb.aa, %.body.i, %bb.i
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !33061, !noalias !32739
  unreachable, !dbg !33061

bb.z:                                             ; preds = %bb.aa, %.body.i
  %.pn18.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.aa ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn18.i, !dbg !33061

bb.aa:                                            ; preds = %bb.i, %bb.h, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTllEEIBC_B1x_NCNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB2G_4Rect10split_gridIBC_INtNtNtB4_5slice4iter4IterlENCINvMs7_B2G_INtB2G_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2K_5coord5ShiftE20split_by_breakpointsllRSlB6o_E0EIBC_B3L_NCB4f_s_0EEs2_00ENCB2C_s2_0ENCB4f_s0_0EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %1) #20
          to label %bb.z unwind label %bb.y, !dbg !32988, !noalias !32739

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB18_5coord5ShiftEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3L_7flatten7FlatMapINtNtB4_9into_iter8IntoIterTllEEIB3H_B4T_NCNCINvMB14_NtB14_4Rect10split_gridIB3H_INtNtNtB3P_5slice4iter4IterlENCINvMs7_B14_B11_20split_by_breakpointsllRSlB7k_E0EIB3H_B6c_NCB6H_s_0EEs2_00ENCB5C_s2_0ENCB6H_s0_0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.g, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7drawing4area11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtBY_5coord5ShiftEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB3r_7flatten7FlatMapINtNtB4_9into_iter8IntoIterTllEEIB3n_B4z_NCNCINvMBU_NtBU_4Rect10split_gridIB3n_INtNtNtB3v_5slice4iter4IterlENCINvMs7_BU_BR_20split_by_breakpointsllRSlB6W_E0EIB3n_B5Q_NCB6l_s_0EEs2_00ENCB5i_s2_0ENCB6l_s0_0EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit.i
  ret void, !dbg !33062
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterB1R_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EE9from_iterB3O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33065 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !33158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33162)
    #dbg_value(ptr %2, !33158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33162)
    #dbg_value(ptr %1, !33163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33070)
    #dbg_value(ptr %2, !33163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33070)
    #dbg_declare(ptr %i.c, !33164, !DIExpression(), !33071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33220, !noalias !33167
    #dbg_value(ptr poison, !33169, !DIExpression(), !33076)
    #dbg_value(ptr poison, !13152, !DIExpression(), !33078)
    #dbg_value(i64 16, !13159, !DIExpression(), !33082)
    #dbg_value(ptr %2, !13157, !DIExpression(), !33083)
    #dbg_value(ptr %2, !13174, !DIExpression(), !33084)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !13175, !DIExpression(), !33084)
    #dbg_value(ptr %2, !13168, !DIExpression(), !33085)
    #dbg_value(ptr %1, !13169, !DIExpression(), !33085)
    #dbg_value(ptr %1, !13163, !DIExpression(), !33086)
    #dbg_value(ptr %2, !13162, !DIExpression(), !33086)
  %i.d = ptrtoint ptr %2 to i64, !dbg !33221
  %i.e = ptrtoint ptr %1 to i64, !dbg !33221
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !33221
  %i.g = lshr exact i64 %i.f, 4, !dbg !33221      ; 2 uses
    #dbg_value(i64 %i.g, !33165, !DIExpression(), !33087)
    #dbg_value(i64 %i.g, !33174, !DIExpression(), !33090)
    #dbg_value(i64 %i.g, !33176, !DIExpression(), !33093)
    #dbg_value(i64 %i.g, !33179, !DIExpression(), !33096)
    #dbg_value(i64 %i.g, !12671, !DIExpression(), !33098)
    #dbg_value(i64 %i.g, !12690, !DIExpression(), !33100)
    #dbg_value(i64 8, !12676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33098)
    #dbg_value(i64 8, !12693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33100)
    #dbg_value(i64 48, !12676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33098)
    #dbg_value(i64 48, !12693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33100)
    #dbg_value(i64 0, !12692, !DIExpression(), !33100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33222, !noalias !33167
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !33222, !noalias !33167
  %i.h = load i64, ptr %i.b, align 8, !dbg !33222, !range !6514, !noalias !33167, !noundef !3895
  %i.i = trunc nuw i64 %i.h to i1, !dbg !33223
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !33224
  %i.k = load i64, ptr %i.j, align 8, !dbg !33224, !range !12695, !noalias !33167, !noundef !3895 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !33224 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterB1D_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EEB3t_.exit.i.i, !dbg !33223, !prof !5708

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !33225, !noalias !33167
    #dbg_value(i64 %i.k, !12678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33101)
    #dbg_value(i64 %i.m, !12678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33101)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !33226, !noalias !33167
  unreachable, !dbg !33226

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterB1D_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EEB3t_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !33227, !noalias !33167, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(i64 %i.k, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33102)
    #dbg_value(ptr %i.n, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33102)
    #dbg_value(ptr poison, !12691, !DIExpression(), !33103)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !33228
    #dbg_value(i1 true, !12698, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !33105)
  tail call void @llvm.assume(i1 %i.o), !dbg !33229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33230, !noalias !33167
  store i64 %i.k, ptr %i.c, align 8, !dbg !33231, !noalias !33167
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33231
  store ptr %i.n, ptr %i.p, align 8, !dbg !33231, !noalias !33167
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !33231 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !33231, !noalias !33167
    #dbg_value(ptr %i.c, !33182, !DIExpression(), !33108)
    #dbg_value(ptr %1, !33185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33108)
    #dbg_value(ptr %2, !33185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33108)
    #dbg_value(ptr %1, !33188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33119)
    #dbg_value(ptr %2, !33188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33119)
    #dbg_value(ptr %i.c, !33192, !DIExpression(), !33119)
    #dbg_value(ptr poison, !33169, !DIExpression(), !33121)
    #dbg_value(ptr poison, !13152, !DIExpression(), !33123)
    #dbg_value(i64 16, !13159, !DIExpression(), !33127)
    #dbg_value(ptr %2, !13157, !DIExpression(), !33128)
    #dbg_value(ptr %2, !13174, !DIExpression(), !33129)
    #dbg_value(ptr %1, !13175, !DIExpression(), !33129)
    #dbg_value(ptr %2, !13168, !DIExpression(), !33130)
    #dbg_value(ptr %1, !13169, !DIExpression(), !33130)
    #dbg_value(ptr %1, !13163, !DIExpression(), !33131)
    #dbg_value(ptr %2, !13162, !DIExpression(), !33131)
    #dbg_value(i64 poison, !33193, !DIExpression(), !33132)
    #dbg_value(i64 1, !33194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33132)
    #dbg_value(i64 %i.g, !33194, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33132)
    #dbg_value(i64 %i.g, !33195, !DIExpression(), !33133)
    #dbg_value(ptr %i.n, !33205, !DIExpression(), !33134)
    #dbg_value(ptr %i.q, !33206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33135)
    #dbg_value(i64 0, !33206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33232, !noalias !33208
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !33232
  store ptr %i.n, ptr %i.r, align 8, !dbg !33232, !noalias !33208
  store ptr %i.q, ptr %i.a, align 8, !dbg !33232, !noalias !33208
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33232
  store i64 0, ptr %i.s, align 8, !dbg !33232, !noalias !33208
    #dbg_value(ptr %1, !33209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33143)
    #dbg_value(ptr %2, !33209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33143)
    #dbg_declare(ptr %i.a, !33215, !DIExpression(), !33144)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTdyEENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleB1n_lENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Z_3VecB4N_E14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2K_5slice4iter4IterB20_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EE9from_iterB44_.exit unwind label %bb.c, !dbg !33233, !noalias !33167

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterB1D_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EEB3t_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !13188, !DIExpression(), !33146)
    #dbg_value(ptr %i.c, !13195, !DIExpression(), !33148)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEEECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.d, !dbg !33234, !noalias !33167

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !33235, !noalias !33167
  unreachable, !dbg !33235

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !33235

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2K_5slice4iter4IterB20_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EE9from_iterB44_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterB1D_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks23draw_stream_frames_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EEB3t_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33236, !noalias !33208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !33237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33238, !noalias !33167
  ret void, !dbg !33239
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterB1R_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots17conn_flow_control14window_updatesNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EE9from_iterB3O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33242 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !33335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33339)
    #dbg_value(ptr %2, !33335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33339)
    #dbg_value(ptr %1, !33340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33247)
    #dbg_value(ptr %2, !33340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33247)
    #dbg_declare(ptr %i.c, !33341, !DIExpression(), !33248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33397, !noalias !33344
    #dbg_value(ptr poison, !33346, !DIExpression(), !33253)
    #dbg_value(ptr poison, !13152, !DIExpression(), !33255)
    #dbg_value(i64 16, !13159, !DIExpression(), !33259)
    #dbg_value(ptr %2, !13157, !DIExpression(), !33260)
    #dbg_value(ptr %2, !13174, !DIExpression(), !33261)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !13175, !DIExpression(), !33261)
    #dbg_value(ptr %2, !13168, !DIExpression(), !33262)
    #dbg_value(ptr %1, !13169, !DIExpression(), !33262)
    #dbg_value(ptr %1, !13163, !DIExpression(), !33263)
    #dbg_value(ptr %2, !13162, !DIExpression(), !33263)
  %i.d = ptrtoint ptr %2 to i64, !dbg !33398
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes6CircleTdyElEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterB1R_ENCINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots17conn_flow_control14window_updatesNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE0EE9from_iterB3O_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBU_EE9from_iterCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33424 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !33535, !DIExpression(), !33539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33540), !dbg !33651
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33541), !dbg !33651
    #dbg_value(ptr poison, !33542, !DIExpression(), !33444)
    #dbg_value(ptr poison, !33566, !DIExpression(), !33445)
    #dbg_declare(ptr %1, !33570, !DIExpression(), !33446)
  %.val.i = load i32, ptr %1, align 4, !dbg !33652, !range !33574, !alias.scope !33541, !noundef !3895 ; 2 uses
    #dbg_value(ptr poison, !33576, !DIExpression(), !33449)
  %i.b = icmp ne i32 %.val.i, -1, !dbg !33653     ; 2 uses
  %i.c = zext i1 %i.b to i64, !dbg !33653         ; 2 uses
    #dbg_value(i64 %i.c, !33572, !DIExpression(), !33456)
    #dbg_value(i64 %i.c, !33590, !DIExpression(), !33459)
    #dbg_value(i64 %i.c, !33595, !DIExpression(), !33462)
    #dbg_value(i64 %i.c, !33601, !DIExpression(), !33465)
    #dbg_value(i64 %i.c, !12671, !DIExpression(), !33467)
    #dbg_value(i64 %i.c, !12690, !DIExpression(), !33469)
    #dbg_value(i64 4, !12676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33467)
    #dbg_value(i64 4, !12693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33469)
    #dbg_value(i64 12, !12676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33467)
    #dbg_value(i64 12, !12693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33469)
    #dbg_value(i64 0, !12692, !DIExpression(), !33469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33654, !noalias !33607
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !dbg !33654, !noalias !33607
  %i.d = load i64, ptr %i.a, align 8, !dbg !33654, !range !6514, !noalias !33607, !noundef !3895
  %i.e = trunc nuw i64 %i.d to i1, !dbg !33655
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33656
  %i.g = load i64, ptr %i.f, align 8, !dbg !33656, !range !12695, !noalias !33607, !noundef !3895 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !33656 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, !dbg !33655, !prof !5708

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !33657, !noalias !33607
    #dbg_value(i64 %i.g, !12678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33470)
    #dbg_value(i64 %i.i, !12678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33470)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #26, !dbg !33658, !noalias !33607
  unreachable, !dbg !33658

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !33659, !noalias !33607, !nonnull !3895, !noundef !3895 ; 3 uses
    #dbg_value(i64 %i.g, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33471)
    #dbg_value(ptr %i.j, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33471)
    #dbg_value(ptr poison, !12691, !DIExpression(), !33472)
  %i.k = icmp uge i64 %i.g, %i.c, !dbg !33660
    #dbg_value(i1 true, !12698, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !33474)
  tail call void @llvm.assume(i1 %i.k), !dbg !33661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33662, !noalias !33607
    #dbg_value(i64 %i.g, !33571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33475)
    #dbg_value(ptr %i.j, !33571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33475)
    #dbg_value(i64 0, !33571, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33475)
    #dbg_value(ptr undef, !33566, !DIExpression(), !33445)
    #dbg_declare(ptr poison, !33567, !DIExpression(), !33476)
    #dbg_value(ptr undef, !33542, !DIExpression(), !33444)
    #dbg_declare(ptr poison, !33548, !DIExpression(), !33477)
    #dbg_value(ptr poison, !33576, !DIExpression(), !33479)
    #dbg_value(i64 poison, !33549, !DIExpression(), !33480)
    #dbg_value(i64 1, !33550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33480)
    #dbg_value(i64 %i.c, !33550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33480)
    #dbg_value(i64 %i.c, !33551, !DIExpression(), !33481)
    #dbg_value(ptr poison, !33562, !DIExpression(), !33482)
    #dbg_value(ptr undef, !33563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33483)
    #dbg_value(i64 0, !33563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33483)
    #dbg_value(ptr poison, !33608, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33487)
    #dbg_value(ptr undef, !33608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33487)
    #dbg_value(i64 0, !33608, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33487)
    #dbg_declare(ptr poison, !33614, !DIExpression(), !33488)
    #dbg_value(ptr undef, !33619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33494)
    #dbg_value(i64 0, !33619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33494)
    #dbg_value(ptr poison, !33619, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33494)
    #dbg_declare(ptr poison, !33624, !DIExpression(), !33495)
  br i1 %i.b, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceB13_EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !33663

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !33664
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 4, !dbg !33664, !alias.scope !33541
    #dbg_value(ptr %i.j, !33562, !DIExpression(), !33482)
    #dbg_value(ptr %i.j, !33608, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33487)
    #dbg_value(ptr %i.j, !33619, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33494)
    #dbg_value(i32 %.val.i, !33627, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33496)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !33627, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !33496)
    #dbg_value(i32 %.val.i, !33632, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33499)
    #dbg_value(i32 %.val.i, !33641, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33502)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !33632, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !33499)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !33641, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !33502)
    #dbg_value(ptr poison, !33636, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !33503)
    #dbg_value(ptr poison, !33645, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !33504)
    #dbg_value(ptr poison, !33646, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !33504)
  store i32 %.val.i, ptr %i.j, align 4, !dbg !33665, !noalias !33648
  %.sroa.410.0..sroa_idx.us.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4, !dbg !33665
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.410.0..sroa_idx.us.i.i.i.i.i, align 4, !dbg !33665, !noalias !33648
  br label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceB13_EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !33663

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceB13_EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %.val4.i.i.i.i.i = phi i64 [ 1, %.lr.ph.split.us.i.i.i.i.i ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs9uoxEJIHcZN_10wirefilter5types12ExpectedTypeE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ], !dbg !33666
    #dbg_value(i64 %.val4.i.i.i.i.i, !33571, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33475)
  store i64 %i.g, ptr %0, align 8, !dbg !33667, !alias.scope !33540
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33667
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx8.i, align 8, !dbg !33667, !alias.scope !33540
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33667
  store i64 %.val4.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !33667, !alias.scope !33540
  ret void, !dbg !33668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB3d_7RawArgsINtNtB28_7convert4FromB2N_E4from0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33674 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
    #dbg_declare(ptr %1, !33972, !DIExpression(), !33976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33977), !dbg !34187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33978), !dbg !34187
    #dbg_declare(ptr %1, !33979, !DIExpression(), !33685)
    #dbg_declare(ptr %i.e, !33980, !DIExpression(), !33686)
    #dbg_declare(ptr %i.d, !33981, !DIExpression(), !33687)
    #dbg_value(i64 4, !33986, !DIExpression(), !33690)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !34188, !noalias !33989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33990), !dbg !34189
    #dbg_declare(ptr poison, !33992, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !33702)
    #dbg_value(ptr %1, !34013, !DIExpression(), !33703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34017), !dbg !34190
    #dbg_value(ptr %1, !34020, !DIExpression(), !33708)
    #dbg_value(ptr %1, !34027, !DIExpression(), !33711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34032), !dbg !34191
    #dbg_value(ptr %1, !34034, !DIExpression(), !33718)
    #dbg_value(i64 1, !34040, !DIExpression(), !33721)
    #dbg_value(ptr %1, !34047, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !33724)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !34192
  %i.g = load ptr, ptr %i.f, align 8, !dbg !34193, !alias.scope !34052, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(ptr poison, !34050, !DIExpression(), !33725)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34194 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !34194, !alias.scope !34052, !nonnull !3895, !noundef !3895 ; 4 uses
  %i.j = icmp eq ptr %i.i, %i.g, !dbg !34194
  br i1 %i.j, label %bb.b, label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !34195

_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %bb.a
    #dbg_value(ptr %i.i, !34037, !DIExpression(), !33726)
    #dbg_value(ptr %i.i, !34038, !DIExpression(), !33727)
    #dbg_value(ptr %i.i, !34044, !DIExpression(), !33721)
    #dbg_value(ptr %i.i, !34053, !DIExpression(), !33730)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !34196 ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !dbg !34197, !alias.scope !34052
  %.sroa.0.0.copyload2.i.i = load i64, ptr %i.i, align 8, !dbg !34198, !noalias !34058 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.copyload2.i.i, !33992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33734)
    #dbg_value(ptr %1, !34007, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !33734)
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i, -1, !dbg !34199
  br i1 %.not.i.i, label %bb.b, label %bb.d, !dbg !34200

bb.b:                                             ; preds = %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i, %bb.a
  store i64 0, ptr %0, align 8, !dbg !34201, !alias.scope !33977
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34201
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !dbg !34201, !alias.scope !33977
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34201
  store i64 0, ptr %i.m, align 8, !dbg !34201, !alias.scope !33977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !34202, !noalias !33989
    #dbg_value(ptr %1, !34064, !DIExpression(), !33739)
    #dbg_value(ptr %1, !34070, !DIExpression(), !33742)
    #dbg_value(ptr %1, !34076, !DIExpression(), !33745)
    #dbg_value(ptr %1, !34082, !DIExpression(), !33748)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !34203, !noalias !33977
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB3r_7RawArgsINtNtB2m_7convert4FromB31_E4from0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !34202

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !8037, !DIExpression(), !33750)
    #dbg_value(ptr %i.d, !8042, !DIExpression(), !33752)
    #dbg_value(ptr %i.d, !5763, !DIExpression(), !33754)
    #dbg_value(ptr %i.d, !5769, !DIExpression(), !33756)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.l, !dbg !34204, !noalias !33989

bb.d:                                             ; preds = %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !34198
    #dbg_value(ptr %1, !34007, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !33734)
  %.sroa.6.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !34205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !34205, !noalias !33989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i, i64 16, i1 false), !dbg !34206, !noalias !33989
  store i64 %.sroa.0.0.copyload2.i.i, ptr %i.d, align 8, !dbg !34205, !noalias !33989
    #dbg_value(ptr poison, !34089, !DIExpression(), !33759)
    #dbg_value(ptr poison, !34094, !DIExpression(), !33762)
    #dbg_value(ptr poison, !34099, !DIExpression(), !33765)
    #dbg_value(ptr poison, !34104, !DIExpression(), !33769)
    #dbg_value(i64 24, !34109, !DIExpression(), !33777)
    #dbg_value(ptr %i.g, !34123, !DIExpression(), !33778)
    #dbg_value(ptr %i.k, !34124, !DIExpression(), !33778)
    #dbg_value(ptr %i.g, !34117, !DIExpression(), !33779)
    #dbg_value(ptr %i.k, !34118, !DIExpression(), !33779)
    #dbg_value(ptr %i.k, !34113, !DIExpression(), !33780)
    #dbg_value(ptr %i.g, !34112, !DIExpression(), !33780)
  %i.o = ptrtoint ptr %i.g to i64, !dbg !34207
  %i.p = ptrtoint ptr %i.k to i64, !dbg !34207
  %i.q = sub nuw i64 %i.o, %i.p, !dbg !34207
  %i.r = udiv exact i64 %i.q, 24, !dbg !34207
    #dbg_value(i64 %i.r, !33982, !DIExpression(), !33781)
    #dbg_value(i64 poison, !33987, !DIExpression(), !33690)
    #dbg_value(ptr undef, !13098, !DIExpression(DW_OP_deref), !33783)
    #dbg_value(ptr undef, !13100, !DIExpression(DW_OP_deref), !33783)
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.r, i64 3), !dbg !34208 ; 2 uses
  %..i.i = add nuw nsw i64 %i.s, 1, !dbg !34208
    #dbg_value(i64 %..i.i, !33983, !DIExpression(), !33784)
    #dbg_value(i64 %..i.i, !34126, !DIExpression(), !33787)
    #dbg_value(i64 %..i.i, !34128, !DIExpression(), !33790)
    #dbg_value(i64 %..i.i, !34131, !DIExpression(), !33793)
    #dbg_value(i64 %..i.i, !12671, !DIExpression(), !33795)
    #dbg_value(i64 %..i.i, !12690, !DIExpression(), !33797)
    #dbg_value(i64 8, !12676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33795)
    #dbg_value(i64 8, !12693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33797)
    #dbg_value(i64 24, !12676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33795)
    #dbg_value(i64 24, !12693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33797)
    #dbg_value(i64 0, !12692, !DIExpression(), !33797)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !34209, !noalias !33989
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.c, !dbg !34209, !noalias !33989

.noexc.i:                                         ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !dbg !34209, !range !6514, !noalias !33989, !noundef !3895
  %i.u = trunc nuw i64 %i.t to i1, !dbg !34210
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !34211
  %i.w = load i64, ptr %i.v, align 8, !dbg !34211, !range !12695, !noalias !33989, !noundef !3895 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !34211 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f, !dbg !34210, !prof !5708

bb.e:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.x, align 8, !dbg !34212, !noalias !33989
    #dbg_value(i64 %i.w, !12678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33798)
    #dbg_value(i64 %i.y, !12678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33798)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #26
          to label %.noexc13.i unwind label %bb.c, !dbg !34213, !noalias !33989

.noexc13.i:                                       ; preds = %bb.e
  unreachable, !dbg !34213

bb.f:                                             ; preds = %.noexc.i
  %i.z = load ptr, ptr %i.x, align 8, !dbg !34214, !noalias !33989, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(i64 %i.w, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33799)
    #dbg_value(ptr %i.z, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33799)
    #dbg_value(ptr poison, !12691, !DIExpression(), !33800)
  %i.aa = icmp ult i64 %i.s, %i.w, !dbg !34215
    #dbg_value(i1 true, !12698, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !33802)
  tail call void @llvm.assume(i1 %i.aa), !dbg !34216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !34217, !noalias !33989
    #dbg_value(i64 %i.w, !33984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33803)
    #dbg_value(ptr %i.z, !33984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33803)
    #dbg_value(i64 0, !33984, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33803)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !34218, !noalias !33989
    #dbg_value(i64 1, !33984, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33803)
  store i64 %i.w, ptr %i.e, align 8, !dbg !34219, !noalias !33989
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !34219 ; 2 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !34219, !noalias !33989
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !34219 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !34219, !noalias !33989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !34220, !noalias !33989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !34221, !noalias !33989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !34221, !noalias !33977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34134), !dbg !34222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34135), !dbg !34222
    #dbg_value(ptr %i.e, !34136, !DIExpression(), !33809)
    #dbg_declare(ptr %i.c, !34139, !DIExpression(), !33810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34142), !dbg !34223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34143), !dbg !34223
    #dbg_value(ptr %i.e, !34144, !DIExpression(), !33819)
    #dbg_value(ptr %i.e, !34152, !DIExpression(), !33822)
    #dbg_value(ptr %i.e, !34154, !DIExpression(), !33825)
    #dbg_value(ptr %i.e, !34157, !DIExpression(), !33828)
    #dbg_value(ptr %i.e, !34159, !DIExpression(), !33831)
    #dbg_value(ptr %i.e, !34154, !DIExpression(), !33833)
    #dbg_declare(ptr %i.c, !34147, !DIExpression(), !33834)
    #dbg_declare(ptr %i.a, !34148, !DIExpression(), !33835)
    #dbg_value(i64 24, !34162, !DIExpression(), !33840)
    #dbg_value(i64 1, !34170, !DIExpression(), !33843)
    #dbg_value(i64 24, !34162, !DIExpression(), !33846)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !34224, !alias.scope !34175, !noalias !33989, !nonnull !3895, !noundef !3895 ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !dbg !34225, !alias.scope !34175, !noalias !33989, !nonnull !3895, !noundef !3895 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad, !dbg !34225
  br i1 %i.af, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i, !dbg !34226

_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i: ; preds = %bb.f
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = ptrtoint ptr %i.ad to i64
  br label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !34226

_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i
  %i.ah = phi i64 [ 1, %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i ], [ %i.ap, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ] ; 5 uses
  %i.ai = phi ptr [ %i.ae, %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i ], [ %i.aj, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34176), !dbg !34227
  call void @llvm.experimental.noalias.scope.decl(metadata !34177), !dbg !34228
  call void @llvm.experimental.noalias.scope.decl(metadata !34178), !dbg !34229
    #dbg_value(ptr %i.ai, !34037, !DIExpression(), !33864)
    #dbg_value(ptr %i.ai, !34038, !DIExpression(), !33865)
    #dbg_value(ptr %i.ai, !34044, !DIExpression(), !33867)
    #dbg_value(ptr %i.ai, !34053, !DIExpression(), !33869)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !34230 ; 5 uses
  %.sroa.0.0.copyload2.i.i.i.i = load i64, ptr %i.ai, align 8, !dbg !34231, !noalias !34179 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.copyload2.i.i.i.i, !33992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33873)
    #dbg_value(ptr %i.c, !34007, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !33873)
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i.i.i, -1, !dbg !34232
  br i1 %.not.i.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.loopexit.i, label %bb.g, !dbg !34233

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.h
    #dbg_value(ptr %i.c, !34064, !DIExpression(), !33875)
    #dbg_value(ptr %i.c, !34070, !DIExpression(), !33877)
    #dbg_value(ptr %i.c, !34076, !DIExpression(), !33879)
    #dbg_value(ptr %i.c, !34082, !DIExpression(), !33881)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body.i unwind label %bb.j, !dbg !34234, !noalias !33989

bb.g:                                             ; preds = %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !34231
    #dbg_value(ptr %i.c, !34007, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !33873)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34235, !noalias !34180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !dbg !34236, !noalias !34181
  store i64 %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !dbg !34235, !noalias !34180
    #dbg_value(i64 %i.ah, !34149, !DIExpression(), !33882)
    #dbg_value(i64 %i.ah, !34182, !DIExpression(), !33885)
  %i.ak = icmp samesign ult i64 %i.ah, 384307168202282326, !dbg !34237
  call void @llvm.assume(i1 %i.ak), !dbg !34238
    #dbg_value(ptr %i.e, !34168, !DIExpression(), !33886)
  %i.al = load i64, ptr %i.e, align 8, !dbg !34239, !range !5707, !alias.scope !34185, !noalias !33989, !noundef !3895
  %i.am = icmp eq i64 %i.ah, %i.al, !dbg !34240
  br i1 %i.am, label %bb.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, !dbg !34240

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.i, %bb.g
  %i.an = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !34241, !alias.scope !34185, !noalias !33989, !nonnull !3895, !noundef !3895
    #dbg_value(ptr %i.an, !34183, !DIExpression(), !33885)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ah, !dbg !34242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !34243, !noalias !34181
  %i.ap = add nuw nsw i64 %i.ah, 1, !dbg !34244   ; 2 uses
    #dbg_value(i64 %i.ap, !34160, !DIExpression(), !33831)
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !34245, !alias.scope !34185, !noalias !33989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34246, !noalias !34180
    #dbg_declare(ptr poison, !33992, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !33893)
    #dbg_value(ptr %i.c, !34013, !DIExpression(), !33894)
    #dbg_value(ptr %i.c, !34020, !DIExpression(), !33895)
    #dbg_value(ptr %i.c, !34027, !DIExpression(), !33896)
    #dbg_value(ptr %i.c, !34034, !DIExpression(), !33897)
    #dbg_value(i64 1, !34040, !DIExpression(), !33867)
    #dbg_value(ptr %i.c, !34047, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !33898)
    #dbg_value(ptr poison, !34050, !DIExpression(), !33899)
  %i.aq = icmp eq ptr %i.aj, %i.ad, !dbg !34225
  br i1 %i.aq, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.loopexit.i, label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !34226

bb.h:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aj, ptr %i.ac, align 8, !dbg !34247, !alias.scope !34186, !noalias !33989
    #dbg_value(ptr %i.a, !8037, !DIExpression(), !33901)
    #dbg_value(ptr %i.a, !8042, !DIExpression(), !33903)
    #dbg_value(ptr %i.a, !5763, !DIExpression(), !33905)
    #dbg_value(ptr %i.a, !5769, !DIExpression(), !33907)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.j, !dbg !34248, !noalias !34181

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !34089, !DIExpression(), !33909)
    #dbg_value(ptr poison, !34094, !DIExpression(), !33911)
    #dbg_value(ptr poison, !34099, !DIExpression(), !33913)
    #dbg_value(ptr poison, !34104, !DIExpression(), !33915)
    #dbg_value(i64 24, !34109, !DIExpression(), !33919)
    #dbg_value(ptr %i.ad, !34123, !DIExpression(), !33920)
    #dbg_value(ptr %i.ad, !34117, !DIExpression(), !33921)
    #dbg_value(ptr %i.ad, !34112, !DIExpression(), !33922)
    #dbg_value(i64 poison, !34150, !DIExpression(), !33923)
    #dbg_value(i64 poison, !34171, !DIExpression(), !33843)
    #dbg_value(ptr %i.e, !13235, !DIExpression(), !33925)
    #dbg_value(i64 poison, !13237, !DIExpression(), !33925)
    #dbg_value(i64 poison, !13239, !DIExpression(), !33927)
    #dbg_value(i64 poison, !13246, !DIExpression(), !33929)
    #dbg_value(ptr %i.e, !13243, !DIExpression(), !33930)
    #dbg_value(i64 %i.ah, !13244, !DIExpression(), !33927)
    #dbg_value(i64 %i.ah, !13248, !DIExpression(), !33929)
    #dbg_value(ptr %i.e, !13247, !DIExpression(), !33929)
    #dbg_value(i64 8, !13249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33929)
    #dbg_value(i64 24, !13249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33929)
    #dbg_value(ptr %i.aj, !34124, !DIExpression(), !33920)
    #dbg_value(ptr %i.aj, !34118, !DIExpression(), !33921)
    #dbg_value(ptr %i.aj, !34113, !DIExpression(), !33922)
  %i.as = ptrtoint ptr %i.aj to i64, !dbg !34249
  %i.at = sub nuw i64 %i.ag, %i.as, !dbg !34249
  %i.au = udiv exact i64 %i.at, 24, !dbg !34249
    #dbg_value(i64 %i.au, !34150, !DIExpression(), !33923)
    #dbg_value(i64 %i.au, !34171, !DIExpression(), !33843)
  %i.av = add nuw nsw i64 %i.au, 1, !dbg !34250
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ah, i64 noundef %i.av, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.h, !dbg !34251, !noalias !34181

bb.j:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !34252, !noalias !33989
  unreachable, !dbg !34252

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.loopexit.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  store ptr %i.aj, ptr %i.ac, align 8, !dbg !34247, !alias.scope !34186, !noalias !33989
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !34253

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.loopexit.i, %bb.f
    #dbg_value(ptr %i.c, !34064, !DIExpression(), !33935)
    #dbg_value(ptr %i.c, !34070, !DIExpression(), !33936)
    #dbg_value(ptr %i.c, !34076, !DIExpression(), !33937)
    #dbg_value(ptr %i.c, !34082, !DIExpression(), !33938)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB37_7RawArgsINtNtB23_7convert4FromB2I_E4from0EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.k, !dbg !34253, !noalias !33989

bb.k:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !34202

.body.i:                                          ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsG258MDvU3F_3std3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB1M_7RawArgsINtNtB4_7convert4FromB19_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.l, !dbg !34202, !noalias !33989

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB37_7RawArgsINtNtB23_7convert4FromB2I_E4from0EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB2T_7RawArgsINtNtB1P_7convert4FromB2u_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !34254, !noalias !33989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !34255, !noalias !33978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !34202, !noalias !33989
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB3r_7RawArgsINtNtB2m_7convert4FromB31_E4from0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !34202

bb.l:                                             ; preds = %bb.m, %.body.i, %bb.c
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !34256, !noalias !33977
  unreachable, !dbg !34256

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsG258MDvU3F_3std3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB1M_7RawArgsINtNtB4_7convert4FromB19_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.m, %.body.i
  %.pn20.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.n, %bb.m ]
  resume { ptr, i32 } %.pn20.i, !dbg !34256

bb.m:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !34064, !DIExpression(), !33940)
    #dbg_value(ptr %1, !34070, !DIExpression(), !33942)
    #dbg_value(ptr %1, !34076, !DIExpression(), !33944)
    #dbg_value(ptr %1, !34082, !DIExpression(), !33946)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsG258MDvU3F_3std3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB1M_7RawArgsINtNtB4_7convert4FromB19_E4from0EECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.l, !dbg !34257, !noalias !33977

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB3r_7RawArgsINtNtB2m_7convert4FromB31_E4from0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.b, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsevqIFpGXeYf_8clap_lexNtB37_7RawArgsINtNtB23_7convert4FromB2I_E4from0EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit.i
  ret void, !dbg !34258
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_QINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB29_5array4iter8IntoIterRNtNtB6_6string6StringKj1_ENvYB3j_INtNtB29_7convert4IntoBU_E4intoEE9from_iterCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34259 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %1, !34328, !DIExpression(), !34331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
    #dbg_value(ptr %1, !34332, !DIExpression(), !34264)
  store ptr %1, ptr %i.g, align 8, !noalias !34336
    #dbg_declare(ptr %i.f, !34333, !DIExpression(), !34268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !34354, !noalias !34336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !34355, !noalias !34336
    #dbg_value(ptr %i.g, !34332, !DIExpression(DW_OP_deref), !34264)
  call void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters3map3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1L_INtNtBb_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB5_8Iterator9size_hintCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !dbg !34356, !noalias !34337
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !34355
  %i.i = load i64, ptr %i.h, align 8, !dbg !34355, !range !6514, !noalias !34336, !noundef !3895
  %i.j = trunc nuw i64 %i.i to i1, !dbg !34357
  br i1 %i.j, label %bb.b, label %bb.g, !dbg !34357, !prof !13021

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !34355
  %i.l = load i64, ptr %i.k, align 8, !dbg !34358, !noalias !34336, !noundef !3895 ; 2 uses
    #dbg_value(i64 %i.l, !34334, !DIExpression(), !34269)
    #dbg_value(i64 %i.l, !34338, !DIExpression(), !34272)
    #dbg_value(i64 %i.l, !34340, !DIExpression(), !34275)
    #dbg_value(i64 %i.l, !34343, !DIExpression(), !34278)
    #dbg_value(i64 %i.l, !12671, !DIExpression(), !34280)
    #dbg_value(i64 %i.l, !12690, !DIExpression(), !34282)
    #dbg_value(i64 8, !12676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34280)
    #dbg_value(i64 8, !12693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34282)
    #dbg_value(i64 24, !12676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34280)
    #dbg_value(i64 24, !12693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34282)
    #dbg_value(i64 0, !12692, !DIExpression(), !34282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !34359, !noalias !34336
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !34359, !noalias !34337
  %i.m = load i64, ptr %i.d, align 8, !dbg !34359, !range !6514, !noalias !34336, !noundef !3895
  %i.n = trunc nuw i64 %i.m to i1, !dbg !34360
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !34361
  %i.p = load i64, ptr %i.o, align 8, !dbg !34361, !range !12695, !noalias !34336, !noundef !3895 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !34361 ; 2 uses
  br i1 %i.n, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !34360, !prof !5708

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.q, align 8, !dbg !34362, !noalias !34336
    #dbg_value(i64 %i.p, !12678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34283)
    #dbg_value(i64 %i.r, !12678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34283)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #26, !dbg !34363, !noalias !34337
  unreachable, !dbg !34363

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.q, align 8, !dbg !34364, !noalias !34336, !nonnull !3895, !noundef !3895 ; 2 uses
    #dbg_value(i64 %i.p, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34284)
    #dbg_value(ptr %i.s, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34284)
    #dbg_value(ptr poison, !12691, !DIExpression(), !34285)
  %i.t = icmp ule i64 %i.l, %i.p, !dbg !34365
    #dbg_value(i1 true, !12698, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !34287)
  call void @llvm.assume(i1 %i.t), !dbg !34366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !34367, !noalias !34336
  store i64 %i.p, ptr %i.f, align 8, !dbg !34368, !noalias !34336
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !34368 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !dbg !34368, !noalias !34336
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !34368 ; 3 uses
  store i64 0, ptr %i.v, align 8, !dbg !34368, !noalias !34336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !34369, !noalias !34336
  call void @llvm.experimental.noalias.scope.decl(metadata !34346), !dbg !34370
    #dbg_value(ptr %i.f, !13297, !DIExpression(), !34291)
    #dbg_value(ptr %1, !13300, !DIExpression(), !34291)
  call void @llvm.experimental.noalias.scope.decl(metadata !34347), !dbg !34371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34348
    #dbg_value(ptr %1, !13303, !DIExpression(), !34296)
  store ptr %1, ptr %i.c, align 8, !noalias !34349
    #dbg_value(ptr %i.f, !13307, !DIExpression(), !34296)
    #dbg_value(ptr %i.f, !13323, !DIExpression(), !34299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !34372, !noalias !34349
    #dbg_value(ptr %i.c, !13303, !DIExpression(DW_OP_deref), !34296)
  invoke void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters3map3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1L_INtNtBb_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB5_8Iterator9size_hintCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc.i unwind label %bb.h, !dbg !34373, !noalias !34337

.noexc.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit.i
    #dbg_value(i64 poison, !13308, !DIExpression(), !34300)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !34374
  %i.x = load i64, ptr %i.w, align 8, !dbg !34374, !range !6514, !noalias !34349, !noundef !3895
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !34374
  %i.z = load i64, ptr %i.y, align 8, !dbg !34374, !noalias !34349 ; 2 uses
    #dbg_value(i64 %i.x, !13309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34300)
    #dbg_value(i64 %i.z, !13309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34300)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !34375, !noalias !34349
  %i.aa = trunc nuw i64 %i.x to i1, !dbg !34376
  br i1 %i.aa, label %bb.d, label %bb.f, !dbg !34376, !prof !13021

bb.d:                                             ; preds = %.noexc.i
    #dbg_value(i64 %i.z, !13310, !DIExpression(), !34301)
    #dbg_value(ptr %i.f, !13235, !DIExpression(), !34303)
    #dbg_value(i64 %i.z, !13237, !DIExpression(), !34303)
    #dbg_value(i64 %i.z, !13239, !DIExpression(), !34305)
    #dbg_value(i64 %i.z, !13246, !DIExpression(), !34307)
    #dbg_value(i64 %i.z, !13325, !DIExpression(), !34309)
    #dbg_value(ptr %i.f, !13243, !DIExpression(), !34310)
    #dbg_value(i64 0, !13244, !DIExpression(), !34305)
    #dbg_value(i64 0, !13248, !DIExpression(), !34307)
    #dbg_value(i64 0, !13327, !DIExpression(), !34309)
    #dbg_value(ptr %i.f, !13247, !DIExpression(), !34307)
    #dbg_value(ptr %i.f, !13326, !DIExpression(), !34309)
    #dbg_value(i64 8, !13249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34307)
    #dbg_value(i64 8, !13328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34309)
    #dbg_value(i64 24, !13249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34307)
    #dbg_value(i64 24, !13328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34309)
  %i.ab = icmp ugt i64 %i.z, %i.p, !dbg !34377
  br i1 %i.ab, label %bb.e, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1O_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Y_INtNtB1O_7convert4IntoBG_E4intoEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !34378, !prof !5708

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.z, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i unwind label %bb.h, !dbg !34379, !noalias !34337

.noexc4.i:                                        ; preds = %bb.e
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !dbg !34380, !alias.scope !34350, !noalias !34336
  %.pre.i = load ptr, ptr %i.u, align 8, !dbg !34381, !alias.scope !34350, !noalias !34336
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1O_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Y_INtNtB1O_7convert4IntoBG_E4intoEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !34379

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28
          to label %.noexc5.i unwind label %bb.h, !dbg !34382, !noalias !34337

.noexc5.i:                                        ; preds = %bb.f
  unreachable, !dbg !34382

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1O_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Y_INtNtB1O_7convert4IntoBG_E4intoEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.noexc4.i, %bb.d
  %i.ac = phi ptr [ %i.s, %bb.d ], [ %.pre.i, %.noexc4.i ], !dbg !34381
  %i.ad = phi i64 [ 0, %bb.d ], [ %.pre.i.i.i, %.noexc4.i ], !dbg !34380
    #dbg_value(ptr %i.ac, !13320, !DIExpression(), !34315)
    #dbg_value(ptr %i.v, !13330, !DIExpression(), !34316)
    #dbg_value(ptr %i.v, !13321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34317)
    #dbg_value(i64 %i.ad, !13321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34317)
    #dbg_value(ptr %i.ac, !13332, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !34319)
    #dbg_value(ptr %i.ac, !13343, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !34321)
    #dbg_value(ptr %i.v, !13332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34319)
end_hunk_1
