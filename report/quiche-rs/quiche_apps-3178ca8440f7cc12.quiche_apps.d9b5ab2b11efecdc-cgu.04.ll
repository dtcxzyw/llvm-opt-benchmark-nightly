Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.04?download=true
inline.NumInlined: 191
inline.NumDeleted: 133
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReENCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB1W_10ClientArgsNtB1W_4Args11with_docopts_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callNtCs7NSBlMkneoK_3url3UrlNCINvMsk_B12_INtB12_3VecB4h_E14extend_trustedBN_E0E0EB1Y_:bb.a
  %i.q = load i8, ptr %i.p, align 8, !dbg !7240, !range !2342, !alias.scope !7172, !noalias !7180, !noundef !857
  store i8 %i.q, ptr %i.b, align 1, !dbg !7240, !noalias !7181
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !dbg !7241, !noalias !7097

.noexc24.i:                                       ; preds = %bb.c
  unreachable, !dbg !7241

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtCs7NSBlMkneoK_3url3UrluNCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB1t_10ClientArgsNtB1t_4Args11with_docopts_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3P_3VecBW_E14extend_trustedINtB4_3MapINtNtB3P_9into_iter8IntoIterBU_EB1l_EE0E0E0B1v_.exit.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.d, i64 88, i1 false), !dbg !7242, !noalias !7182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7243, !noalias !7129
    #dbg_value(ptr poison, !7183, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6958)
    #dbg_declare(ptr poison, !7188, !DIExpression(), !6959)
    #dbg_declare(ptr %i.e, !7187, !DIExpression(), !6960)
    #dbg_value(ptr poison, !7192, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6963)
    #dbg_value(ptr poison, !7197, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6963)
    #dbg_declare(ptr %i.e, !7196, !DIExpression(), !6964)
  %i.r = getelementptr inbounds nuw [88 x i8], ptr %.sroa.10.0.copyload, i64 %.val2333.i, !dbg !7244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.e, i64 88, i1 false), !dbg !7245, !noalias !7203
  %i.s = add i64 %.val2333.i, 1, !dbg !7246       ; 2 uses
    #dbg_value(i64 %i.s, !7067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7073)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7247
    #dbg_value(ptr undef, !7089, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6893)
    #dbg_value(ptr undef, !7092, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6896)
    #dbg_value(ptr poison, !7090, !DIExpression(), !6897)
    #dbg_value(ptr poison, !7093, !DIExpression(), !6898)
  %.not.not.i = icmp eq ptr %i.m, %.sroa.8.0.copyload, !dbg !7227
  br i1 %.not.not.i, label %._crit_edge.i, label %bb.b, !dbg !7228

._crit_edge.i:                                    ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtCs7NSBlMkneoK_3url3UrluNCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB1t_10ClientArgsNtB1t_4Args11with_docopts_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3P_3VecBW_E14extend_trustedINtB4_3MapINtNtB3P_9into_iter8IntoIterBU_EB1l_EE0E0E0B1v_.exit.i, %bb.a
  %.sroa.62.0 = phi i64 [ %.sroa.62.0.copyload, %bb.a ], [ %i.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtCs7NSBlMkneoK_3url3UrluNCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB1t_10ClientArgsNtB1t_4Args11with_docopts_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3P_3VecBW_E14extend_trustedINtB4_3MapINtNtB3P_9into_iter8IntoIterBU_EB1l_EE0E0E0B1v_.exit.i ], !dbg !7248 ; 2 uses
    #dbg_value(i64 %.sroa.62.0, !7067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7073)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr %.sroa.0.0.copyload, !7077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6975)
    #dbg_value(ptr %.sroa.0.0.copyload, !7081, !DIExpression(), !6976)
    #dbg_value(i64 %.sroa.6.0.copyload, !7077, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6975)
    #dbg_value(i64 %.sroa.6.0.copyload, !7078, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6977)
    #dbg_value(i64 %.sroa.6.0.copyload, !7082, !DIExpression(), !6976)
    #dbg_value(ptr poison, !7077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6975)
    #dbg_value(ptr poison, !7078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6977)
    #dbg_value(ptr poison, !7077, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6975)
    #dbg_value(ptr poison, !7078, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6977)
    #dbg_value(ptr %.sroa.0.0.copyload, !7078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6977)
    #dbg_value(ptr poison, !7075, !DIExpression(), !6978)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !7249, !noalias !7097
    #dbg_value(ptr %.sroa.0.0.copyload, !7083, !DIExpression(), !6979)
    #dbg_value(i64 %.sroa.6.0.copyload, !7084, !DIExpression(), !6980)
  store i64 %.sroa.6.0.copyload, ptr %i.f, align 8, !dbg !7250, !noalias !7097
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !7250
  store ptr %.sroa.0.0.copyload, ptr %i.t, align 8, !dbg !7250, !noalias !7097
    #dbg_value(ptr %i.f, !2261, !DIExpression(), !6982)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBX_NtCs7NSBlMkneoK_3url3UrluNCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB3a_10ClientArgsNtB3a_4Args11with_docopts_0NCINvNvB10_8for_each4callB2D_NCINvMsk_B8_INtB8_3VecB2D_E14extend_trustedINtB26_3MapBI_B32_EE0E0E0EB3c_.exit unwind label %bb.e, !dbg !7251, !noalias !7097

bb.d:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !7252, !noalias !7097
  unreachable, !dbg !7252

bb.e:                                             ; preds = %._crit_edge.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
    #dbg_value(ptr poison, !7206, !DIExpression(), !6985)
    #dbg_value(ptr poison, !7212, !DIExpression(), !6988)
    #dbg_value(ptr poison, !7218, !DIExpression(), !6991)
    #dbg_value(ptr poison, !2141, !DIExpression(), !6993)
    #dbg_value(ptr poison, !2147, !DIExpression(), !6995)
  store i64 %.sroa.62.0, ptr %.sroa.01.0.copyload, align 8, !dbg !7253, !noalias !7097
  br label %.thread.i, !dbg !7254

.thread.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEECsiGRwBGCeC5s_11quiche_apps.exit.i, %bb.e
  %.pn29.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.e ], [ %lpad.phi.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEECsiGRwBGCeC5s_11quiche_apps.exit.i ]
  resume { ptr, i32 } %.pn29.i, !dbg !7252

.loopexit.i:                                      ; preds = %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
    #dbg_value(ptr poison, !7206, !DIExpression(), !6985)
    #dbg_value(ptr poison, !7212, !DIExpression(), !6988)
    #dbg_value(ptr poison, !7218, !DIExpression(), !6991)
    #dbg_value(ptr poison, !2141, !DIExpression(), !6993)
    #dbg_value(ptr poison, !2147, !DIExpression(), !6995)
  store i64 %.val2333.i, ptr %.sroa.01.0.copyload, align 8, !dbg !7253, !noalias !7097
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !2267, !DIExpression(), !6997)
    #dbg_value(ptr poison, !2270, !DIExpression(), !6999)
    #dbg_value(ptr poison, !2278, !DIExpression(), !7001)
    #dbg_value(ptr poison, !2284, !DIExpression(), !7003)
    #dbg_declare(ptr poison, !2287, !DIExpression(), !7005)
    #dbg_declare(ptr poison, !2290, !DIExpression(), !7007)
    #dbg_value(ptr poison, !2288, !DIExpression(), !7008)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7255, !noalias !7224
    #dbg_value(ptr %.sroa.0.0.copyload, !2291, !DIExpression(), !7011)
    #dbg_value(i64 %.sroa.6.0.copyload, !2292, !DIExpression(), !7011)
    #dbg_value(ptr %.sroa.0.0.copyload, !2293, !DIExpression(), !7012)
    #dbg_value(i64 %.sroa.6.0.copyload, !2294, !DIExpression(), !7013)
  store i64 %.sroa.6.0.copyload, ptr %i.a, align 8, !dbg !7256, !noalias !7224
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7256
  store ptr %.sroa.0.0.copyload, ptr %i.v, align 8, !dbg !7256, !noalias !7224
    #dbg_value(ptr %i.a, !2261, !DIExpression(), !7015)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEECsiGRwBGCeC5s_11quiche_apps.exit.i unwind label %bb.d, !dbg !7257, !noalias !7097

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7258, !noalias !7224
  br label %.thread.i, !dbg !7259

_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBX_NtCs7NSBlMkneoK_3url3UrluNCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB3a_10ClientArgsNtB3a_4Args11with_docopts_0NCINvNvB10_8for_each4callB2D_NCINvMsk_B8_INtB8_3VecB2D_E14extend_trustedINtB26_3MapBI_B32_EE0E0E0EB3c_.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7260, !noalias !7097
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
    #dbg_value(ptr poison, !7206, !DIExpression(), !7017)
    #dbg_value(ptr poison, !7212, !DIExpression(), !7019)
    #dbg_value(ptr poison, !7218, !DIExpression(), !7021)
    #dbg_value(ptr poison, !2141, !DIExpression(), !7023)
    #dbg_value(ptr poison, !2147, !DIExpression(), !7025)
  store i64 %.sroa.62.0, ptr %.sroa.01.0.copyload, align 8, !dbg !7261, !noalias !7097
  ret void, !dbg !7262
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMNtCs3f36owOmepS_6quiche5dgramINtB2_13DatagramQueueNtNtB4_7buffers17DefaultBufFactoryE3popCsiGRwBGCeC5s_11quiche_apps(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !7268 {
bb.a:
    #dbg_value(ptr %1, !7337, !DIExpression(), !7340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7341), !dbg !7392
    #dbg_value(ptr %1, !7342, !DIExpression(), !7274)
    #dbg_value(ptr %1, !7348, !DIExpression(), !7277)
    #dbg_value(ptr %1, !7351, !DIExpression(), !7280)
    #dbg_value(ptr %1, !7354, !DIExpression(), !7283)
    #dbg_value(ptr %1, !7358, !DIExpression(), !7286)
    #dbg_value(ptr %1, !7358, !DIExpression(), !7288)
    #dbg_value(ptr %1, !7360, !DIExpression(), !7291)
    #dbg_value(ptr %1, !7366, !DIExpression(), !7294)
    #dbg_value(i64 1, !7352, !DIExpression(), !7280)
    #dbg_value(i64 1, !7356, !DIExpression(), !7283)
    #dbg_value(i64 1, !7368, !DIExpression(), !7297)
    #dbg_value(i64 24, !7371, !DIExpression(), !7302)
    #dbg_value(i64 24, !7371, !DIExpression(), !7305)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !7393 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !7393, !alias.scope !7341, !noalias !7378, !noundef !857 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !7393
  br i1 %i.c, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit.thread, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7394

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7395 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !7395, !alias.scope !7341, !noalias !7378, !noundef !857 ; 2 uses
    #dbg_value(i64 %i.e, !7346, !DIExpression(), !7307)
    #dbg_value(i64 %i.e, !7364, !DIExpression(), !7291)
    #dbg_value(i64 %i.e, !7355, !DIExpression(), !7283)
    #dbg_value(i64 %i.e, !7369, !DIExpression(), !7297)
  %i.f = add i64 %i.e, 1, !dbg !7396              ; 2 uses
    #dbg_value(i64 %i.f, !7379, !DIExpression(), !7310)
    #dbg_value(ptr %1, !7374, !DIExpression(), !7311)
  %i.g = load i64, ptr %1, align 8, !dbg !7397, !range !2388, !alias.scope !7341, !noalias !7378, !noundef !857 ; 3 uses
    #dbg_value(i64 %i.g, !7380, !DIExpression(), !7310)
  %.not.i = icmp ult i64 %i.f, %i.g, !dbg !7398
  %i.h = select i1 %.not.i, i64 0, i64 %i.g, !dbg !7398
  %.sroa.0.0.i = sub nuw i64 %i.f, %i.h, !dbg !7398
  store i64 %.sroa.0.0.i, ptr %i.d, align 8, !dbg !7399, !alias.scope !7341, !noalias !7378
  %i.i = add i64 %i.b, -1, !dbg !7400             ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !dbg !7400, !alias.scope !7341, !noalias !7378
    #dbg_value(ptr %1, !7374, !DIExpression(), !7312)
  %i.j = icmp ult i64 %i.i, %i.g, !dbg !7401
    #dbg_value(i1 true, !7382, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7315)
  tail call void @llvm.assume(i1 %i.j), !dbg !7402
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7403
  %i.l = load ptr, ptr %i.k, align 8, !dbg !7403, !alias.scope !7341, !noalias !7378, !nonnull !857, !noundef !857
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.e, !dbg !7404 ; 3 uses
  %.sroa.0.0.copyload5 = load i64, ptr %i.m, align 8, !dbg !7405, !noalias !7341 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload5, -1, !dbg !7406
  br i1 %.not, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit.thread, label %bb.b, !dbg !7407

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit.thread: ; preds = %bb.a, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit
  store i64 -1, ptr %0, align 8, !dbg !7408
  br label %bb.c, !dbg !7409

bb.b:                                             ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !7405
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !7405
    #dbg_value(i64 %.sroa.0.0.copyload5, !7338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7386)
    #dbg_value(i64 poison, !7338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7386)
    #dbg_value(i64 poison, !7338, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7386)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !7410 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !7410, !noundef !857
    #dbg_value(i64 %i.o, !7387, !DIExpression(), !7391)
    #dbg_value(i64 poison, !7388, !DIExpression(), !7391)
  store i64 %.sroa.0.0.copyload5, ptr %0, align 8, !dbg !7411
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7411
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx, align 8, !dbg !7405, !noalias !7341
    #dbg_value(i64 %.sroa.7.sroa.5.0.copyload, !7388, !DIExpression(), !7391)
    #dbg_value(i64 %.sroa.7.sroa.5.0.copyload, !7338, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7386)
  %i.p = load <2 x i64>, ptr %.sroa.7.0..sroa_idx6, align 8, !dbg !7405, !noalias !7341
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 %.sroa.7.sroa.5.0.copyload), !dbg !7412
  store i64 %i.q, ptr %i.n, align 8, !dbg !7413
  store <2 x i64> %i.p, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !7411
  br label %bb.c, !dbg !7409

bb.c:                                             ; preds = %bb.b, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCsiGRwBGCeC5s_11quiche_apps.exit.thread
  ret void, !dbg !7409
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtCs3f36owOmepS_6quiche5dgramINtB2_13DatagramQueueNtNtB4_7buffers17DefaultBufFactoryE4pushCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7418 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !7498, !DIExpression(), !7501)
    #dbg_value(ptr %0, !7502, !DIExpression(), !7509)
    #dbg_value(ptr %0, !7510, !DIExpression(), !7516)
    #dbg_declare(ptr %1, !7499, !DIExpression(), !7517)
    #dbg_declare(ptr %i.a, !7518, !DIExpression(), !7525)
    #dbg_value(ptr %0, !7526, !DIExpression(), !7530)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7576 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !7576, !noundef !857 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7577
  %i.e = load i64, ptr %i.d, align 8, !dbg !7577, !noundef !857
  %i.f = icmp eq i64 %i.c, %i.e, !dbg !7578
  br i1 %i.f, label %bb.b, label %bb.e, !dbg !7579

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !1638, !DIExpression(), !7424)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.c, !dbg !7580

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !1645, !DIExpression(), !7426)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.d, !dbg !7581

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !7580
  unreachable, !dbg !7580

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !7501

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.b
    #dbg_value(ptr %1, !1645, !DIExpression(), !7428)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !7582
  br label %bb.j, !dbg !7583

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7584
  %.val5 = load i64, ptr %i.i, align 8, !dbg !7584, !noundef !857
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7585 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !7585, !noundef !857
  %i.l = add i64 %i.k, %.val5, !dbg !7585
  store i64 %i.l, ptr %i.j, align 8, !dbg !7585
    #dbg_value(ptr %0, !7522, !DIExpression(), !7531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !7586
    #dbg_value(ptr %0, !7532, !DIExpression(), !7432)
    #dbg_value(ptr %0, !7539, !DIExpression(), !7435)
    #dbg_value(ptr %0, !7541, !DIExpression(), !7438)
    #dbg_value(ptr %0, !7543, !DIExpression(), !7441)
    #dbg_value(ptr %0, !7546, !DIExpression(), !7444)
    #dbg_value(ptr %0, !7541, !DIExpression(), !7446)
    #dbg_value(ptr %0, !7550, !DIExpression(), !7449)
    #dbg_value(ptr %0, !7557, !DIExpression(), !7452)
    #dbg_declare(ptr %i.a, !7536, !DIExpression(), !7453)
    #dbg_declare(ptr poison, !7555, !DIExpression(), !7454)
    #dbg_value(i64 24, !7559, !DIExpression(), !7459)
    #dbg_value(i64 24, !7559, !DIExpression(), !7462)
    #dbg_value(ptr %0, !7562, !DIExpression(), !7463)
  %i.m = load i64, ptr %0, align 8, !dbg !7587, !range !2388, !alias.scope !7566, !noalias !7567, !noundef !857 ; 2 uses
  %i.n = icmp eq i64 %i.c, %i.m, !dbg !7588
  br i1 %i.n, label %bb.f, label %bb.i, !dbg !7589

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4growCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %._crit_edge.i unwind label %bb.g, !dbg !7590, !noalias !7567

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load i64, ptr %i.b, align 8, !dbg !7591, !alias.scope !7566, !noalias !7567
  %.pre14.i = load i64, ptr %0, align 8, !dbg !7592, !range !2388, !alias.scope !7566, !noalias !7567
  br label %bb.i, !dbg !7590

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %common.resume unwind label %bb.h, !dbg !7593

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !7594
  unreachable, !dbg !7594

bb.i:                                             ; preds = %._crit_edge.i, %bb.e
  %i.q = phi i64 [ %.pre14.i, %._crit_edge.i ], [ %i.m, %bb.e ], !dbg !7592 ; 2 uses
  %i.r = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.c, %bb.e ], !dbg !7591 ; 2 uses
    #dbg_value(i64 %i.r, !7537, !DIExpression(), !7467)
    #dbg_value(i64 %i.r, !7544, !DIExpression(), !7441)
    #dbg_value(i64 %i.r, !7548, !DIExpression(), !7444)
    #dbg_value(i64 %i.r, !7568, !DIExpression(), !7470)
  %i.s = add i64 %i.r, 1, !dbg !7595
  store i64 %i.s, ptr %i.b, align 8, !dbg !7595, !alias.scope !7566, !noalias !7567
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7596
  %i.u = load i64, ptr %i.t, align 8, !dbg !7596, !alias.scope !7566, !noalias !7567, !noundef !857
    #dbg_value(i64 %i.u, !7547, !DIExpression(), !7444)
    #dbg_value(i64 %i.u, !7569, !DIExpression(), !7470)
  %i.v = add i64 %i.u, %i.r, !dbg !7597           ; 2 uses
    #dbg_value(i64 %i.v, !7571, !DIExpression(), !7473)
    #dbg_value(ptr %0, !7562, !DIExpression(), !7474)
    #dbg_value(i64 %i.q, !7572, !DIExpression(), !7473)
  %.not.i = icmp ult i64 %i.v, %i.q, !dbg !7598
  %i.w = select i1 %.not.i, i64 0, i64 %i.q, !dbg !7598
  %.sroa.03.0.i = sub nuw i64 %i.v, %i.w, !dbg !7598
    #dbg_value(i64 %.sroa.03.0.i, !7554, !DIExpression(), !7449)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7599
  %i.y = load ptr, ptr %i.x, align 8, !dbg !7599, !alias.scope !7566, !noalias !7567, !nonnull !857, !noundef !857
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.03.0.i, !dbg !7600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !7601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7602
  br label %bb.j, !dbg !7583

bb.j:                                             ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit
  %.sroa.0.0 = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiGRwBGCeC5s_11quiche_apps.exit ], [ -1, %bb.i ], !dbg !7501
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !7603
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 undef, 1, !dbg !7603
  ret { i64, i64 } %i.ab, !dbg !7603
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4growCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #5 !dbg !7605 {
bb.a:
    #dbg_value(ptr %0, !7750, !DIExpression(), !7753)
    #dbg_value(ptr %0, !7754, !DIExpression(), !7757)
    #dbg_value(i64 24, !7758, !DIExpression(), !7765)
    #dbg_value(i64 24, !7758, !DIExpression(), !7774)
    #dbg_value(i64 24, !7758, !DIExpression(), !7782)
    #dbg_value(ptr %0, !7768, !DIExpression(), !7783)
  %i.a = load i64, ptr %0, align 8, !dbg !7935, !range !2388, !noundef !857 ; 4 uses
    #dbg_value(i64 %i.a, !7751, !DIExpression(), !7784)
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #22, !dbg !7936
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7785), !dbg !7937
    #dbg_value(ptr %0, !7786, !DIExpression(), !7618)
    #dbg_value(ptr %0, !7796, !DIExpression(), !7621)
    #dbg_value(ptr %0, !7798, !DIExpression(), !7629)
    #dbg_value(ptr %0, !7822, !DIExpression(), !7632)
    #dbg_value(ptr %0, !7822, !DIExpression(), !7634)
    #dbg_value(ptr %0, !7824, !DIExpression(), !7641)
    #dbg_value(ptr %0, !7822, !DIExpression(), !7643)
    #dbg_value(ptr %0, !7822, !DIExpression(), !7645)
    #dbg_value(i64 %i.a, !7790, !DIExpression(), !7618)
    #dbg_value(i64 %i.a, !7803, !DIExpression(), !7629)
    #dbg_value(i64 %i.a, !7838, !DIExpression(), !7648)
    #dbg_value(i64 24, !7842, !DIExpression(), !7653)
    #dbg_declare(ptr poison, !7850, !DIExpression(), !7663)
    #dbg_value(i64 0, !7802, !DIExpression(), !7629)
    #dbg_value(i64 24, !7842, !DIExpression(), !7667)
    #dbg_value(i64 24, !7842, !DIExpression(), !7671)
    #dbg_value(i64 24, !7842, !DIExpression(), !7675)
    #dbg_value(i64 24, !7842, !DIExpression(), !7679)
    #dbg_value(i64 0, !7840, !DIExpression(), !7681)
    #dbg_value(i64 24, !7842, !DIExpression(), !7685)
    #dbg_value(i64 24, !7842, !DIExpression(), !7689)
    #dbg_value(i64 24, !7842, !DIExpression(), !7693)
    #dbg_value(i64 24, !7842, !DIExpression(), !7697)
    #dbg_value(i64 24, !7842, !DIExpression(), !7701)
    #dbg_value(i64 24, !7842, !DIExpression(), !7705)
    #dbg_value(ptr %0, !7845, !DIExpression(), !7706)
  %i.b = load i64, ptr %0, align 8, !dbg !7938, !range !2388, !alias.scope !7785, !noundef !857 ; 2 uses
    #dbg_value(i64 %i.b, !7791, !DIExpression(), !7707)
    #dbg_value(ptr %0, !7871, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !7708)
    #dbg_value(ptr %0, !7897, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !7711)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7939
  %i.d = load i64, ptr %i.c, align 8, !dbg !7939, !alias.scope !7785, !noundef !857 ; 2 uses
  %i.e = sub i64 %i.a, %i.d, !dbg !7940
    #dbg_value(ptr poison, !7872, !DIExpression(), !7712)
    #dbg_value(ptr poison, !7901, !DIExpression(), !7713)
    #dbg_value(ptr poison, !7903, !DIExpression(), !7716)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7941 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !7941, !alias.scope !7785, !noundef !857 ; 3 uses
    #dbg_value(i8 poison, !7866, !DIExpression(), !7717)
    #dbg_value(i8 poison, !7909, !DIExpression(), !7723)
    #dbg_value(i8 poison, !7865, !DIExpression(), !7724)
  %.not.i = icmp ugt i64 %i.g, %i.e, !dbg !7942
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE24handle_capacity_increaseCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7943

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g, !dbg !7944           ; 4 uses
    #dbg_value(i64 %i.h, !7792, !DIExpression(), !7725)
    #dbg_value(i64 %i.h, !7828, !DIExpression(), !7641)
    #dbg_value(i64 %i.h, !7922, !DIExpression(), !7728)
  %i.i = sub i64 %i.d, %i.h, !dbg !7945           ; 3 uses
end_hunk_0
