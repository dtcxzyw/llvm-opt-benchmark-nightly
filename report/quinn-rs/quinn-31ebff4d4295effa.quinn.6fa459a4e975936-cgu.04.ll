Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn-31ebff4d4295effa.quinn.6fa459a4e975936-cgu.04?download=true
inline.NumInlined: 349
inline.NumDeleted: 208
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6shared23DatagramConnectionEventECsB8MOEg02Qk_5quinn:bb.a
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECsB8MOEg02Qk_5quinn.exit2, label %bb.d, !dbg !5982

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13PartialDecodeECsB8MOEg02Qk_5quinn.exit
    #dbg_value(ptr %i.f, !1373, !DIExpression(), !5973)
  tail call void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f), !dbg !5983
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECsB8MOEg02Qk_5quinn.exit2, !dbg !5982

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECsB8MOEg02Qk_5quinn.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13PartialDecodeECsB8MOEg02Qk_5quinn.exit, %bb.d
  ret void, !dbg !5979

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !5979
  unreachable, !dbg !5979

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECsB8MOEg02Qk_5quinn.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b, !dbg !5979
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core7TrailerECsB8MOEg02Qk_5quinn(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !591 {
bb.a:
    #dbg_value(ptr %0, !3253, !DIExpression(), !6040)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6049
  %.val = load ptr, ptr %i.a, align 8, !dbg !6049, !align !2970, !noundef !1061 ; 2 uses
    #dbg_value(ptr poison, !3260, !DIExpression(), !5985)
    #dbg_value(ptr poison, !3267, !DIExpression(), !5987)
    #dbg_value(ptr poison, !3274, !DIExpression(), !5989)
  %i.b = icmp eq ptr %.val, null, !dbg !6050
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsB8MOEg02Qk_5quinn.exit, label %bb.b, !dbg !6050

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24, !dbg !6049
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !6049
    #dbg_value(ptr poison, !3279, !DIExpression(), !5991)
    #dbg_value(ptr poison, !3283, !DIExpression(), !5993)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !6051
  %i.e = load ptr, ptr %i.d, align 8, !dbg !6051, !nonnull !1061, !noundef !1061
  invoke void %i.e(ptr noundef %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsB8MOEg02Qk_5quinn.exit unwind label %bb.c, !dbg !6051, !inline_history !597

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6049 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6041), !dbg !6049
    #dbg_value(ptr %i.g, !3287, !DIExpression(), !5997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6042), !dbg !6052
    #dbg_value(ptr %i.g, !3294, !DIExpression(), !6001)
  %i.h = load ptr, ptr %i.g, align 8, !dbg !6053, !alias.scope !6043, !noundef !1061 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !6053
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit, label %bb.d, !dbg !6053

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !3301, !DIExpression(), !6003)
    #dbg_value(ptr %i.g, !3305, !DIExpression(), !6005)
    #dbg_value(i64 1, !3307, !DIExpression(), !6007)
    #dbg_value(i8 1, !3309, !DIExpression(), !6007)
    #dbg_value(i64 1, !3311, !DIExpression(), !6009)
    #dbg_value(i8 1, !3313, !DIExpression(), !6009)
    #dbg_value(ptr %i.h, !3308, !DIExpression(), !6010)
    #dbg_value(ptr %i.h, !3312, !DIExpression(), !6009)
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !6054, !noalias !6044
  %i.k = icmp eq i64 %i.j, 1, !dbg !6055
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit, !dbg !6055

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !3005, !DIExpression(), !6016)
  fence acquire, !dbg !6056
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit unwind label %bb.h, !dbg !6057

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsB8MOEg02Qk_5quinn.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6049 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6045), !dbg !6049
    #dbg_value(ptr %i.l, !3287, !DIExpression(), !6020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6046), !dbg !6058
    #dbg_value(ptr %i.l, !3294, !DIExpression(), !6024)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !6059, !alias.scope !6047, !noundef !1061 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !6059
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit4, label %bb.f, !dbg !6059

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsB8MOEg02Qk_5quinn.exit
    #dbg_value(ptr %i.l, !3301, !DIExpression(), !6026)
    #dbg_value(ptr %i.l, !3305, !DIExpression(), !6028)
    #dbg_value(i64 1, !3307, !DIExpression(), !6030)
    #dbg_value(i8 1, !3309, !DIExpression(), !6030)
    #dbg_value(i64 1, !3311, !DIExpression(), !6032)
    #dbg_value(i8 1, !3313, !DIExpression(), !6032)
    #dbg_value(ptr %i.m, !3308, !DIExpression(), !6033)
    #dbg_value(ptr %i.m, !3312, !DIExpression(), !6032)
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !6060, !noalias !6048
  %i.p = icmp eq i64 %i.o, 1, !dbg !6061
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit4, !dbg !6061

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !3005, !DIExpression(), !6039)
  fence acquire, !dbg !6062
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #20, !dbg !6063
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit4, !dbg !6063

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsB8MOEg02Qk_5quinn.exit, %bb.f, %bb.g
  ret void, !dbg !6049

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !6049
  unreachable, !dbg !6049

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECsB8MOEg02Qk_5quinn.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f, !dbg !6049
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5state10StreamRecvECsB8MOEg02Qk_5quinn(ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6064 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
    #dbg_value(ptr poison, !6201, !DIExpression(), !6203)
    #dbg_value(ptr poison, !6205, !DIExpression(), !6067)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6211), !dbg !6276
    #dbg_value(ptr %.8.val, !6213, !DIExpression(), !6072)
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 24, !dbg !6277
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6219), !dbg !6277
    #dbg_value(ptr %i.c, !6221, !DIExpression(), !6077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6227), !dbg !6278
    #dbg_value(ptr %i.c, !6229, !DIExpression(), !6082)
  %i.d = load i64, ptr %i.c, align 8, !dbg !6279, !range !3942, !alias.scope !6235, !noundef !1061
  %i.e = icmp eq i64 %i.d, 0, !dbg !6279
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler5StateECsB8MOEg02Qk_5quinn.exit.i.i.i, label %bb.b, !dbg !6279

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 32, !dbg !6279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6236), !dbg !6279
    #dbg_value(ptr %i.f, !6238, !DIExpression(), !6087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6244), !dbg !6280
    #dbg_value(ptr %i.f, !6245, !DIExpression(), !6092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6247), !dbg !6281
    #dbg_value(ptr %i.f, !3948, !DIExpression(), !6096)
    #dbg_value(ptr %i.f, !3951, !DIExpression(), !6098)
    #dbg_declare(ptr %i.b, !3956, !DIExpression(), !6100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6282, !noalias !6248
  %.sroa.06.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !6283, !alias.scope !6248 ; 3 uses
    #dbg_value(ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, !4004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6102)
    #dbg_value(i64 poison, !4004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6102)
    #dbg_value(i64 poison, !4004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6102)
    #dbg_value(i64 poison, !4008, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
    #dbg_value(ptr poison, !4008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6103)
    #dbg_value(i64 poison, !4008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6103)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, null, !dbg !6284
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c, !dbg !6285

bb.c:                                             ; preds = %bb.b
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 48, !dbg !6283
  %.sroa.58.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6283, !alias.scope !6248
    #dbg_value(i64 %.sroa.58.0.copyload.i.i.i.i.i.i.i, !4004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6102)
    #dbg_value(i64 %.sroa.58.0.copyload.i.i.i.i.i.i.i, !4008, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
  %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 40, !dbg !6283
  %.sroa.47.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6283, !alias.scope !6248 ; 2 uses
    #dbg_value(i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, !4004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6102)
    #dbg_value(i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, !4008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6103)
    #dbg_value(i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, !4009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6104)
    #dbg_value(ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, !4009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6104)
    #dbg_value(i64 1, !4010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6105)
    #dbg_value(ptr null, !4010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6105)
    #dbg_value(ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, !4010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6105)
    #dbg_value(i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, !4010, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6105)
    #dbg_value(i64 1, !4010, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6105)
    #dbg_value(ptr null, !4010, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6105)
    #dbg_value(ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, !4010, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6105)
    #dbg_value(i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, !4010, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !6105)
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6286
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6286, !noalias !6248
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6286
  store ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6286, !noalias !6248
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !6286
  store i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6286, !noalias !6248
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !6286
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6286, !noalias !6248
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !6286
  store ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6286, !noalias !6248
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !6286
  store i64 %.sroa.47.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !6286, !noalias !6248
  br label %bb.d, !dbg !6287

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink35.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], !dbg !6288 ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ], !dbg !6288
  store i64 %.sink35.i.i.i.i.i.i.i, ptr %i.b, align 8, !dbg !6288, !noalias !6248
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !6288
  store i64 %.sink35.i.i.i.i.i.i.i, ptr %i.g, align 8, !dbg !6288, !noalias !6248
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !6288
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i.i.i.i, ptr %i.h, align 8, !dbg !6288, !noalias !6248
    #dbg_value(ptr %i.b, !4024, !DIExpression(), !6107)
    #dbg_value(ptr %i.b, !4028, !DIExpression(), !6109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6289, !noalias !6249
  invoke fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !dbg !6290, !noalias !6250

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !dbg !6289, !noalias !6249, !noundef !1061
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null, !dbg !6289
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetECsB8MOEg02Qk_5quinn.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !dbg !6291

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc.i.i.i, %.noexc2.i.i.i
    #dbg_value(ptr poison, !4029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6114)
    #dbg_value(i64 poison, !4029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6114)
    #dbg_value(i64 poison, !4029, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6292, !noalias !6249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6289, !noalias !6249
  invoke fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc2.i.i.i unwind label %.loopexit.i.i.i, !dbg !6290, !noalias !6250

.noexc2.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %i.a, align 8, !dbg !6289, !noalias !6249, !noundef !1061
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null, !dbg !6289
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetECsB8MOEg02Qk_5quinn.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !dbg !6291

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetECsB8MOEg02Qk_5quinn.exit.i.i.i.i: ; preds = %.noexc2.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6292, !noalias !6249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6293, !noalias !6248
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler5StateECsB8MOEg02Qk_5quinn.exit.i.i.i, !dbg !6279

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i.i.i:                         ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 56, !dbg !6278
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11binary_heap10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #19
          to label %bb.k unwind label %bb.i, !dbg !6278

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler5StateECsB8MOEg02Qk_5quinn.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto9range_set15btree_range_set8RangeSetECsB8MOEg02Qk_5quinn.exit.i.i.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 56, !dbg !6278 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6251), !dbg !6278
    #dbg_value(ptr %i.l, !3100, !DIExpression(), !6118)
  call void @llvm.experimental.noalias.scope.decl(metadata !6252), !dbg !6294
    #dbg_value(ptr %i.l, !3105, !DIExpression(), !6122)
  call void @llvm.experimental.noalias.scope.decl(metadata !6253), !dbg !6295
    #dbg_value(ptr %i.l, !3111, !DIExpression(), !6126)
    #dbg_value(ptr %i.l, !3113, !DIExpression(), !6128)
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 64, !dbg !6296
  %i.n = load ptr, ptr %i.m, align 8, !dbg !6296, !alias.scope !6254, !nonnull !1061, !noundef !1061 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 72, !dbg !6297
  %i.p = load i64, ptr %i.o, align 8, !dbg !6297, !alias.scope !6254, !noundef !1061 ; 4 uses
    #dbg_value(ptr %i.n, !3133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6133)
    #dbg_value(ptr %i.n, !3144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6135)
    #dbg_value(i64 %i.p, !3133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6133)
    #dbg_value(i64 %i.p, !3144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6135)
    #dbg_value(ptr %i.n, !3146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6137)
    #dbg_value(i64 %i.p, !3146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6137)
  %i.q = icmp eq i64 %i.p, 0, !dbg !6298
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler9AssemblerECsB8MOEg02Qk_5quinn.exit.i.i, label %.lr.ph, !dbg !6298

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.r = icmp eq i64 %i.t, %i.p, !dbg !6298
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler9AssemblerECsB8MOEg02Qk_5quinn.exit.i.i, label %.lr.ph, !dbg !6298

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler5StateECsB8MOEg02Qk_5quinn.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i1 = phi i64 [ %i.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit.i.i.i.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler5StateECsB8MOEg02Qk_5quinn.exit.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i.i.i.i.i.i.i1, !dbg !6298 ; 4 uses
  %i.t = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i1, 1, !dbg !6298 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6255), !dbg !6298
    #dbg_value(ptr %i.s, !3154, !DIExpression(), !6141)
  call void @llvm.experimental.noalias.scope.decl(metadata !6256), !dbg !6299
    #dbg_value(ptr %i.s, !3159, !DIExpression(), !6145)
  call void @llvm.experimental.noalias.scope.decl(metadata !6257), !dbg !6300
    #dbg_value(ptr %i.s, !3166, !DIExpression(), !6149)
  %i.u = load ptr, ptr %i.s, align 8, !dbg !6301, !alias.scope !6258, !noalias !6254, !nonnull !1061, !align !2970, !noundef !1061
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !6301
  %i.w = load ptr, ptr %i.v, align 8, !dbg !6301, !noalias !6259, !nonnull !1061, !noundef !1061
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !6302
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !6303
  %i.z = load ptr, ptr %i.y, align 8, !dbg !6303, !alias.scope !6258, !noalias !6254, !noundef !1061
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !6304
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !6304, !alias.scope !6258, !noalias !6254, !noundef !1061
  invoke void %i.w(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit.i.i.i.i.i.i.i unwind label %bb.f, !dbg !6301, !noalias !6254, !inline_history !572

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit8.i.i.i.i.i.i.i: ; preds = %.lr.ph3
  %i.ac = add i64 %.sroa.0.1.i.i.i.i.i.i.i2, 1, !dbg !6298 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.p, !dbg !6298
  br i1 %i.ad, label %.body.i.i.i.i.i, label %.lr.ph3, !dbg !6298

bb.f:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = icmp eq i64 %i.t, %i.p, !dbg !6298
  br i1 %i.af, label %.body.i.i.i.i.i, label %.lr.ph3, !dbg !6298

.lr.ph3:                                          ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit8.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i2 = phi i64 [ %i.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit8.i.i.i.i.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.1.i.i.i.i.i.i.i2, !dbg !6298 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6260), !dbg !6298
    #dbg_value(ptr %i.ag, !3154, !DIExpression(), !6155)
  call void @llvm.experimental.noalias.scope.decl(metadata !6261), !dbg !6305
    #dbg_value(ptr %i.ag, !3159, !DIExpression(), !6159)
  call void @llvm.experimental.noalias.scope.decl(metadata !6262), !dbg !6306
    #dbg_value(ptr %i.ag, !3166, !DIExpression(), !6163)
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !6307, !alias.scope !6263, !noalias !6254, !nonnull !1061, !align !2970, !noundef !1061
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !6307
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !6307, !noalias !6264, !nonnull !1061, !noundef !1061
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !6308
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !6309
  %i.am = load ptr, ptr %i.al, align 8, !dbg !6309, !alias.scope !6263, !noalias !6254, !noundef !1061
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !6310
  %i.ao = load i64, ptr %i.an, align 8, !dbg !6310, !alias.scope !6263, !noalias !6254, !noundef !1061
  invoke void %i.aj(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit8.i.i.i.i.i.i.i unwind label %bb.g, !dbg !6307, !noalias !6254, !inline_history !572

bb.g:                                             ; preds = %.lr.ph3
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !6298, !noalias !6254
  unreachable, !dbg !6298

.body.i.i.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit8.i.i.i.i.i.i.i, %bb.f
    #dbg_value(ptr %i.l, !3170, !DIExpression(), !6165)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.k unwind label %bb.h, !dbg !6311

bb.h:                                             ; preds = %.body.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !6295
  unreachable, !dbg !6295

bb.i:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !6278
  unreachable, !dbg !6278

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler9AssemblerECsB8MOEg02Qk_5quinn.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferECsB8MOEg02Qk_5quinn.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler5StateECsB8MOEg02Qk_5quinn.exit.i.i.i
    #dbg_value(ptr %i.l, !3170, !DIExpression(), !6167)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4recv4RecvEECsB8MOEg02Qk_5quinn.exit unwind label %bb.j, !dbg !6312

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler9AssemblerECsB8MOEg02Qk_5quinn.exit.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.k, !dbg !6276

bb.k:                                             ; preds = %bb.j, %.body.i.i.i.i.i, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.ae, %.body.i.i.i.i.i ], [ %lpad.phi.i.i.i, %bb.e ]
    #dbg_value(ptr poison, !6265, !DIExpression(), !6175)
    #dbg_value(ptr %.8.val, !6266, !DIExpression(), !6176)
    #dbg_value(i64 8, !6267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6177)
    #dbg_value(i64 136, !6267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6177)
    #dbg_value(ptr poison, !3386, !DIExpression(), !6179)
    #dbg_value(ptr poison, !3393, !DIExpression(), !6181)
    #dbg_value(ptr %.8.val, !3390, !DIExpression(), !6179)
    #dbg_value(ptr %.8.val, !3396, !DIExpression(), !6181)
    #dbg_value(ptr %.8.val, !3399, !DIExpression(), !6183)
    #dbg_value(ptr %.8.val, !3405, !DIExpression(), !6185)
    #dbg_value(i64 8, !3391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6179)
    #dbg_value(i64 8, !3397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6181)
    #dbg_value(i64 8, !3403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6183)
    #dbg_value(i64 8, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6185)
    #dbg_value(i64 136, !3391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6179)
    #dbg_value(i64 136, !3397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6181)
    #dbg_value(i64 136, !3403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6183)
    #dbg_value(i64 136, !3406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6185)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #21, !dbg !6313
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !6276

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4recv4RecvEECsB8MOEg02Qk_5quinn.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler9AssemblerECsB8MOEg02Qk_5quinn.exit.i.i
    #dbg_value(ptr poison, !6265, !DIExpression(), !6187)
    #dbg_value(ptr %.8.val, !6266, !DIExpression(), !6188)
    #dbg_value(i64 8, !6267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6189)
    #dbg_value(i64 136, !6267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6189)
    #dbg_value(ptr poison, !3386, !DIExpression(), !6191)
    #dbg_value(ptr poison, !3393, !DIExpression(), !6193)
    #dbg_value(ptr %.8.val, !3390, !DIExpression(), !6191)
    #dbg_value(ptr %.8.val, !3396, !DIExpression(), !6193)
    #dbg_value(ptr %.8.val, !3399, !DIExpression(), !6195)
    #dbg_value(ptr %.8.val, !3405, !DIExpression(), !6197)
    #dbg_value(i64 8, !3391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6191)
    #dbg_value(i64 8, !3397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6193)
    #dbg_value(i64 8, !3403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6195)
    #dbg_value(i64 8, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6197)
    #dbg_value(i64 136, !3391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6191)
    #dbg_value(i64 136, !3397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6193)
    #dbg_value(i64 136, !3403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6195)
    #dbg_value(i64 136, !3406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6197)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #21, !dbg !6314
  ret void, !dbg !6315
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtCsar2VadbF9t7_5tokio4sync7oneshot7channelbECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6320 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
    #dbg_value(i64 1, !6354, !DIExpression(), !6360)
    #dbg_value(i8 0, !6356, !DIExpression(), !6360)
    #dbg_value(i64 1, !6366, !DIExpression(), !6371)
    #dbg_value(i8 0, !6368, !DIExpression(), !6371)
    #dbg_value(i64 0, !6372, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6380)
    #dbg_value(i8 2, !6372, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !6380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6392
  store i64 1, ptr %i.a, align 8, !dbg !6392
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6392
  store i64 1, ptr %i.b, align 8, !dbg !6392
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !6392
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !dbg !6392
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !6392
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6392
    #dbg_declare(ptr %i.a, !6381, !DIExpression(), !6330)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6332)
    #dbg_value(i64 8, !4057, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6334)
    #dbg_value(i64 8, !4074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6336)
    #dbg_value(i64 64, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6332)
    #dbg_value(i64 64, !4057, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6334)
    #dbg_value(i64 64, !4074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6336)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4072, !DIExpression(), !6334)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4078, !DIExpression(), !6336)
    #dbg_value(i8 0, !4079, !DIExpression(), !6336)
    #dbg_value(i64 8, !4081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6338)
    #dbg_value(i64 8, !4103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6340)
    #dbg_value(i64 64, !4081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6338)
    #dbg_value(i64 64, !4103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6340)
    #dbg_value(i1 false, !4085, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6338)
    #dbg_value(i64 64, !4086, !DIExpression(), !6341)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !6393, !noalias !6387
  %i.c = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 129) 64, i64 noundef range(i64 8, 129) 8) #21, !dbg !6394, !noalias !6387 ; 5 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !6395
  br i1 %i.d, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEE3newCsB8MOEg02Qk_5quinn.exit, !dbg !6396, !prof !4106

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #23
          to label %.noexc unwind label %bb.c, !dbg !6397

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !6397

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %bb.e unwind label %bb.d, !dbg !6398

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !6399
  unreachable, !dbg !6399

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !6399

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEE3newCsB8MOEg02Qk_5quinn.exit: ; preds = %bb.a
    #dbg_value(ptr %i.c, !6385, !DIExpression(), !6344)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !6400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6401
    #dbg_value(ptr %i.c, !6350, !DIExpression(), !6388)
    #dbg_value(ptr poison, !6363, !DIExpression(), !6389)
    #dbg_value(ptr %i.c, !6355, !DIExpression(), !6390)
    #dbg_value(ptr %i.c, !6367, !DIExpression(), !6371)
  %i.g = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !6402
    #dbg_value(i64 %i.g, !6364, !DIExpression(), !6391)
  %i.h = icmp slt i64 %i.g, 0, !dbg !6403
  br i1 %i.h, label %bb.g, label %bb.f, !dbg !6403

bb.f:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEE3newCsB8MOEg02Qk_5quinn.exit
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0, !dbg !6404
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.c, 1, !dbg !6404
  ret { ptr, ptr } %i.j, !dbg !6404

bb.g:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEE3newCsB8MOEg02Qk_5quinn.exit
  tail call void @llvm.trap(), !dbg !6405
  unreachable, !dbg !6405
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtCsar2VadbF9t7_5tokio4sync7oneshot7channeluECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6410 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
    #dbg_value(i64 1, !6444, !DIExpression(), !6450)
    #dbg_value(i8 0, !6446, !DIExpression(), !6450)
    #dbg_value(i64 1, !6456, !DIExpression(), !6461)
    #dbg_value(i8 0, !6458, !DIExpression(), !6461)
    #dbg_value(i64 0, !6462, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6470)
    #dbg_value(i8 0, !6462, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !6470)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6482
  store i64 1, ptr %i.a, align 8, !dbg !6482
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6482
  store i64 1, ptr %i.b, align 8, !dbg !6482
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !6482
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !dbg !6482
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !6482
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6482
    #dbg_declare(ptr %i.a, !6471, !DIExpression(), !6420)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6422)
    #dbg_value(i64 8, !4057, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6424)
    #dbg_value(i64 8, !4074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6426)
    #dbg_value(i64 64, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6422)
    #dbg_value(i64 64, !4057, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6424)
    #dbg_value(i64 64, !4074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6426)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4072, !DIExpression(), !6424)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4078, !DIExpression(), !6426)
    #dbg_value(i8 0, !4079, !DIExpression(), !6426)
    #dbg_value(i64 8, !4081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6428)
    #dbg_value(i64 8, !4103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6430)
    #dbg_value(i64 64, !4081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6428)
    #dbg_value(i64 64, !4103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6430)
    #dbg_value(i1 false, !4085, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6428)
    #dbg_value(i64 64, !4086, !DIExpression(), !6431)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !6483, !noalias !6477
  %i.c = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 129) 64, i64 noundef range(i64 8, 129) 8) #21, !dbg !6484, !noalias !6477 ; 5 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !6485
  br i1 %i.d, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEE3newCsB8MOEg02Qk_5quinn.exit, !dbg !6486, !prof !4106

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #23
          to label %.noexc unwind label %bb.c, !dbg !6487

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !6487

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #19
          to label %bb.e unwind label %bb.d, !dbg !6488

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !6489
  unreachable, !dbg !6489

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !6489

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEE3newCsB8MOEg02Qk_5quinn.exit: ; preds = %bb.a
    #dbg_value(ptr %i.c, !6475, !DIExpression(), !6434)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !6490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6491
    #dbg_value(ptr %i.c, !6440, !DIExpression(), !6478)
    #dbg_value(ptr poison, !6453, !DIExpression(), !6479)
    #dbg_value(ptr %i.c, !6445, !DIExpression(), !6480)
    #dbg_value(ptr %i.c, !6457, !DIExpression(), !6461)
  %i.g = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !6492
    #dbg_value(i64 %i.g, !6454, !DIExpression(), !6481)
  %i.h = icmp slt i64 %i.g, 0, !dbg !6493
end_hunk_0
