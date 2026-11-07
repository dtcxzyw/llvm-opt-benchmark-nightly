Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.02?download=true
inline.NumInlined: 475
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream30StreamFlushablePriorityAdapterE13clear_recurseB16_:bb.a
    #dbg_value(ptr %0, !5454, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16084)
    #dbg_value(ptr %0, !5457, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16086)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16153
    #dbg_value(ptr %i.c, !5468, !DIExpression(), !16089)
    #dbg_value(i64 0, !5471, !DIExpression(), !16089)
    #dbg_value(i8 1, !5472, !DIExpression(), !16089)
  store atomic i64 0, ptr %i.c release, align 8, !dbg !16154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16155
    #dbg_value(ptr poison, !16137, !DIExpression(), !16092)
    #dbg_value(ptr %0, !16141, !DIExpression(), !16092)
    #dbg_value(i64 56, !16143, !DIExpression(), !16095)
    #dbg_value(ptr %0, !16144, !DIExpression(), !16095)
  %i.d = getelementptr inbounds i8, ptr %0, i64 -56, !dbg !16156 ; 2 uses
    #dbg_value(ptr poison, !5480, !DIExpression(), !16097)
    #dbg_value(ptr %i.d, !5484, !DIExpression(), !16097)
    #dbg_value(ptr %i.d, !5486, !DIExpression(), !16099)
    #dbg_value(ptr %i.d, !5491, !DIExpression(), !16101)
    #dbg_value(ptr %i.d, !5500, !DIExpression(), !16103)
    #dbg_declare(ptr poison, !5495, !DIExpression(), !16104)
  %i.e = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEBK_(ptr noundef nonnull %i.d), !dbg !16157
    #dbg_value(i64 %i.e, !5496, !DIExpression(), !16105)
    #dbg_value(i64 %i.e, !5503, !DIExpression(), !16103)
  %i.f = sub nsw i64 0, %i.e, !dbg !16158
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f, !dbg !16159 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !dbg !16160
    #dbg_value(ptr %i.a, !4273, !DIExpression(), !16108)
    #dbg_value(ptr %i.a, !4278, !DIExpression(), !16110)
    #dbg_value(i64 1, !4289, !DIExpression(), !16112)
    #dbg_value(i8 1, !4295, !DIExpression(), !16112)
    #dbg_value(i64 1, !4297, !DIExpression(), !16114)
    #dbg_value(i8 1, !4302, !DIExpression(), !16114)
    #dbg_value(ptr %i.g, !4294, !DIExpression(), !16115)
    #dbg_value(ptr %i.g, !4301, !DIExpression(), !16114)
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !16161, !noalias !16146
  %i.i = icmp eq i64 %i.h, 1, !dbg !16162
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit, !dbg !16162

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !4311, !DIExpression(), !16121)
  fence acquire, !dbg !16163
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #20, !dbg !16164
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit, !dbg !16164

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16165
  br label %bb.d, !dbg !16166

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEB1d_.exit, %bb.a
  ret void, !dbg !16167
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startupNtB2_7StartupNtNtB4_4mode8ModeImpl19on_congestion_event(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([808 x i8]) align 8 captures(none) dereferenceable(808) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(688) %1, i64 %2, i64 %3, i32 range(i32 0, 1000000000) %4, ptr noalias nofree nonnull readonly align 8 captures(none) %5, i64 range(i64 0, 384307168202282326) %6, ptr noalias nofree nonnull readonly align 8 captures(none) %7, i64 range(i64 0, 576460752303423488) %8, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(136) %9, i64 %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %11, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %12, i64 noundef %13) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !16171 {
bb.a:
  %i.a = alloca [688 x i8], align 8               ; 6 uses
  %i.b = alloca [688 x i8], align 8               ; 6 uses
  %.sroa.086 = alloca [472 x i8], align 8         ; 4 uses
  %.sroa.691 = alloca [208 x i8], align 8         ; 4 uses
    #dbg_declare(ptr %.sroa.086, !16265, !DIExpression(DW_OP_LLVM_fragment, 0, 3776), !16175)
    #dbg_declare(ptr %.sroa.691, !16265, !DIExpression(DW_OP_LLVM_fragment, 3840, 1664), !16175)
    #dbg_declare(ptr poison, !16265, !DIExpression(DW_OP_LLVM_fragment, 0, 3776), !16177)
    #dbg_declare(ptr poison, !16265, !DIExpression(DW_OP_LLVM_fragment, 3840, 1664), !16177)
    #dbg_declare(ptr %1, !16250, !DIExpression(), !16275)
    #dbg_value(i64 poison, !16251, !DIExpression(), !16276)
    #dbg_value(i64 poison, !16252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16276)
    #dbg_value(i32 poison, !16252, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16276)
    #dbg_value(ptr poison, !16253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16276)
    #dbg_value(i64 poison, !16253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16276)
    #dbg_value(ptr poison, !16254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16276)
    #dbg_value(i64 poison, !16254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16276)
    #dbg_value(ptr %9, !16255, !DIExpression(), !16276)
    #dbg_value(i64 poison, !16256, !DIExpression(), !16276)
    #dbg_value(ptr %11, !16257, !DIExpression(), !16276)
    #dbg_value(ptr %12, !16258, !DIExpression(), !16276)
    #dbg_value(ptr %12, !16277, !DIExpression(), !16284)
    #dbg_value(ptr %12, !16277, !DIExpression(), !16286)
    #dbg_value(ptr %12, !16277, !DIExpression(), !16288)
    #dbg_value(i64 %13, !16259, !DIExpression(), !16276)
    #dbg_value(i64 %13, !16289, !DIExpression(), !16300)
    #dbg_value(i64 %13, !16289, !DIExpression(), !16302)
    #dbg_value(i64 %13, !16289, !DIExpression(), !16304)
    #dbg_value(i8 1, !16294, !DIExpression(), !16300)
    #dbg_declare(ptr poison, !16305, !DIExpression(), !16312)
    #dbg_value(i8 2, !16294, !DIExpression(), !16302)
    #dbg_declare(ptr poison, !16305, !DIExpression(), !16315)
    #dbg_value(i8 0, !16294, !DIExpression(), !16304)
    #dbg_declare(ptr poison, !16305, !DIExpression(), !16318)
    #dbg_value(ptr %1, !16320, !DIExpression(), !16326)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 682, !dbg !16455 ; 6 uses
  %i.d = load i8, ptr %i.c, align 2, !dbg !16455, !range !4909, !noundef !1224
  %i.e = trunc nuw i8 %i.d to i1, !dbg !16455
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !16456

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 128, !dbg !16457
  %i.g = load i8, ptr %i.f, align 8, !dbg !16457, !range !4909, !noundef !1224
  %i.h = trunc nuw i8 %i.g to i1, !dbg !16457
  br i1 %i.h, label %bb.g, label %bb.f, !dbg !16457

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 poison, !16265, !DIExpression(DW_OP_LLVM_fragment, 3776, 64), !16328)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 480, !dbg !16458 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16329), !dbg !16459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16330), !dbg !16459
    #dbg_declare(ptr poison, !16272, !DIExpression(DW_OP_LLVM_fragment, 64, 5504), !16191)
    #dbg_declare(ptr poison, !16272, !DIExpression(DW_OP_LLVM_fragment, 6048, 160), !16191)
    #dbg_declare(ptr poison, !16272, !DIExpression(DW_OP_LLVM_fragment, 6208, 168), !16191)
    #dbg_value(i64 poison, !16269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16192)
    #dbg_value(i32 poison, !16269, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16192)
    #dbg_value(ptr %9, !16270, !DIExpression(), !16192)
    #dbg_value(ptr %11, !16271, !DIExpression(), !16192)
    #dbg_value(i64 0, !16265, !DIExpression(DW_OP_LLVM_fragment, 3776, 64), !16328)
    #dbg_declare(ptr poison, !16334, !DIExpression(), !16195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16460, !noalias !16339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.b, ptr noundef nonnull align 8 dereferenceable(472) %1, i64 472, i1 false), !dbg !16460
  %.sroa.5.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.b, i64 472, !dbg !16460
  store i64 0, ptr %.sroa.5.0..sroa_idx82, align 8, !dbg !16460, !noalias !16329
  %.sroa.6.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.b, i64 480, !dbg !16460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa_idx85, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa_idx, i64 208, i1 false), !dbg !16460
  %i.i = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.ae unwind label %bb.d, !dbg !16461, !noalias !16339 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_model17BBRv2NetworkModelEBL_(ptr noalias nofree noundef align 8 dereferenceable(688) %i.b) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startup7StartupEBL_.exit unwind label %bb.e, !dbg !16462, !noalias !16339

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16463, !noalias !16339
  unreachable, !dbg !16463

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %i.l, ptr noundef nonnull align 8 dereferenceable(688) %1, i64 688, i1 false), !dbg !16465
  store i64 2, ptr %0, align 8, !dbg !16464
  br label %bb.h, !dbg !16466

bb.g:                                             ; preds = %bb.b
  %i.m = invoke noundef zeroext i1 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel20has_bandwidth_growth(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %11)
          to label %bb.i unwind label %bb.af, !dbg !16467 ; 2 uses

bb.h:                                             ; preds = %bb.z, %bb.ad, %bb.ae, %bb.f
  ret void, !dbg !16468

bb.i:                                             ; preds = %bb.g
    #dbg_value(i1 %i.m, !16260, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16340)
    #dbg_value(ptr %1, !16320, !DIExpression(), !16342)
  %i.n = load i8, ptr %i.c, align 2, !dbg !16469, !range !4909, !noundef !1224
  %i.o = trunc nuw i8 %i.n to i1, !dbg !16469
  br i1 %i.o, label %bb.k, label %bb.j, !dbg !16470

bb.j:                                             ; preds = %bb.l, %bb.m, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 72, !dbg !16471
  %i.q = load i64, ptr %i.p, align 8, !dbg !16471, !noundef !1224
  %.not62 = icmp eq i64 %i.q, 0, !dbg !16471
  %brmerge65 = or i1 %i.m, %.not62, !dbg !16471
  br i1 %brmerge65, label %bb.n, label %bb.o, !dbg !16471

bb.k:                                             ; preds = %bb.i
  %i.r = invoke noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1)
          to label %bb.l unwind label %bb.af, !dbg !16472

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 1, !16293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16300)
    #dbg_value(i64 1, !16306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16343)
    #dbg_value(i64 %i.r, !16293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16300)
    #dbg_value(i64 %i.r, !16306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16343)
    #dbg_value(i64 %i.r, !16307, !DIExpression(), !16344)
    #dbg_value(i64 %i.r, !16345, !DIExpression(), !16349)
    #dbg_value(i64 %13, !16281, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16284)
    #dbg_value(i64 1, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16284)
    #dbg_value(i64 poison, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16284)
    #dbg_value(i8 1, !16281, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !16284)
    #dbg_value(ptr %12, !16359, !DIExpression(), !16365)
    #dbg_value(ptr %12, !16366, !DIExpression(), !16370)
  %i.s = load i64, ptr %12, align 8, !dbg !16473, !range !4321, !noundef !1224
  %.not = icmp eq i64 %i.s, 2, !dbg !16473
  br i1 %.not, label %bb.m, label %bb.j, !dbg !16474

bb.m:                                             ; preds = %bb.l
  %i.t = lshr i64 %i.r, 3, !dbg !16475
    #dbg_value(i64 %i.t, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16284)
  store i64 1, ptr %12, align 8, !dbg !16476
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8, !dbg !16476
  store i64 %i.t, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !16476
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16, !dbg !16476
  store i64 %13, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !16476
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24, !dbg !16476
  store i8 1, ptr %.sroa.617.0..sroa_idx, align 8, !dbg !16476
  br label %bb.j, !dbg !16477

bb.n:                                             ; preds = %bb.r, %bb.s, %bb.j, %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 81, !dbg !16478
  %i.v = load i8, ptr %i.u, align 1, !dbg !16478, !range !4909, !noundef !1224
  %i.w = trunc nuw i8 %i.v to i1, !dbg !16478
  %brmerge = or i1 %i.m, %i.w, !dbg !16478
    #dbg_value(ptr %1, !16320, !DIExpression(), !16372)
  %i.x = load i8, ptr %i.c, align 2               ; 2 uses
  %i.y = trunc nuw i8 %i.x to i1
    #dbg_value(i1 %i.y, !16262, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16374)
  %or.cond = select i1 %brmerge, i1 true, i1 %i.y, !dbg !16478
  br i1 %or.cond, label %_RNvMs_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startupNtB4_7Startup22check_excessive_losses.exit.thread, label %bb.t, !dbg !16478

bb.o:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel22check_persistent_queue(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %1, float noundef 1.750000e+00, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %11)
          to label %bb.p unwind label %bb.af, !dbg !16479

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %1, !16320, !DIExpression(), !16376)
  %i.z = load i8, ptr %i.c, align 2, !dbg !16480, !range !4909, !noundef !1224
  %i.aa = trunc nuw i8 %i.z to i1, !dbg !16480
  br i1 %i.aa, label %bb.q, label %bb.n, !dbg !16481

bb.q:                                             ; preds = %bb.p
  %i.ab = invoke noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1)
          to label %bb.r unwind label %bb.af, !dbg !16482

bb.r:                                             ; preds = %bb.q
    #dbg_value(i64 1, !16293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16302)
    #dbg_value(i64 1, !16306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16377)
    #dbg_value(i64 %i.ab, !16293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16302)
    #dbg_value(i64 %i.ab, !16306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16377)
    #dbg_value(i64 %i.ab, !16308, !DIExpression(), !16378)
    #dbg_value(i64 %i.ab, !16345, !DIExpression(), !16383)
    #dbg_value(i64 %13, !16281, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16286)
    #dbg_value(i64 1, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16286)
    #dbg_value(i64 poison, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16286)
    #dbg_value(i8 2, !16281, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !16286)
    #dbg_value(ptr %12, !16359, !DIExpression(), !16386)
    #dbg_value(ptr %12, !16366, !DIExpression(), !16389)
  %i.ac = load i64, ptr %12, align 8, !dbg !16483, !range !4321, !noundef !1224
  %.not63 = icmp eq i64 %i.ac, 2, !dbg !16483
  br i1 %.not63, label %bb.s, label %bb.n, !dbg !16484

bb.s:                                             ; preds = %bb.r
  %i.ad = lshr i64 %i.ab, 3, !dbg !16485
    #dbg_value(i64 %i.ad, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16286)
  store i64 1, ptr %12, align 8, !dbg !16486
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8, !dbg !16486
  store i64 %i.ad, ptr %.sroa.420.0..sroa_idx, align 8, !dbg !16486
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16, !dbg !16486
  store i64 %13, ptr %.sroa.521.0..sroa_idx, align 8, !dbg !16486
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24, !dbg !16486
  store i8 2, ptr %.sroa.622.0..sroa_idx, align 8, !dbg !16486
  br label %bb.n, !dbg !16487

thread-pre-split:                                 ; preds = %bb.y, %bb.x
  %.pr = load i8, ptr %i.c, align 2, !dbg !16488
  br label %_RNvMs_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startupNtB4_7Startup22check_excessive_losses.exit.thread, !dbg !16488

_RNvMs_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startupNtB4_7Startup22check_excessive_losses.exit.thread: ; preds = %thread-pre-split, %bb.n
  %14 = phi i8 [ %.pr, %thread-pre-split ], [ %i.x, %bb.n ], !dbg !16488
    #dbg_value(ptr %1, !16320, !DIExpression(), !16391)
  %i.ae = trunc nuw i8 %14 to i1, !dbg !16488
  br i1 %i.ae, label %bb.aa, label %bb.z, !dbg !16489

bb.t:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 72, !dbg !16490
  %.val = load i64, ptr %i.af, align 8, !dbg !16490 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 80, !dbg !16490
  %.val67 = load i8, ptr %i.ag, align 8, !dbg !16490, !range !4909, !noundef !1224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16392), !dbg !16490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16393), !dbg !16490
    #dbg_value(ptr %1, !16394, !DIExpression(), !16211)
    #dbg_value(ptr poison, !16399, !DIExpression(), !16211)
    #dbg_value(ptr %11, !16400, !DIExpression(), !16211)
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 80, !dbg !16491
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !16491, !alias.scope !16393, !noundef !1224
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 584, !dbg !16492
  %.val.i = load i64, ptr %i.aj, align 8, !dbg !16492, !alias.scope !16392 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 592, !dbg !16492
  %.val5.i = load i64, ptr %i.ak, align 8, !dbg !16492, !alias.scope !16392
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 180, !dbg !16492
  %.val8.i = load float, ptr %i.al, align 4, !dbg !16492, !alias.scope !16393
    #dbg_value(ptr poison, !16403, !DIExpression(), !16218)
    #dbg_value(ptr poison, !16408, !DIExpression(), !16218)
    #dbg_value(i64 %i.ai, !16409, !DIExpression(), !16218)
    #dbg_value(ptr poison, !16410, !DIExpression(), !16218)
    #dbg_value(ptr poison, !16412, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16219)
  %i.am = trunc nuw i8 %.val67 to i1, !dbg !16493
  %i.an = icmp uge i64 %.val5.i, %i.ai
  %or.cond11.not.i.i = select i1 %i.am, i1 %i.an, i1 false, !dbg !16493
  br i1 %or.cond11.not.i.i, label %bb.u, label %bb.z, !dbg !16493

bb.u:                                             ; preds = %bb.t
    #dbg_value(i64 %.val, !16413, !DIExpression(), !16220)
    #dbg_value(i64 %.val.i, !16414, !DIExpression(), !16221)
  %i.ao = icmp ne i64 %.val, 0, !dbg !16494
  %i.ap = icmp ne i64 %.val.i, 0
  %or.cond.i.i = and i1 %i.ao, %i.ap, !dbg !16494
  br i1 %or.cond.i.i, label %_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel20is_inflight_too_high.exit.i, label %bb.z, !dbg !16494

_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel20is_inflight_too_high.exit.i: ; preds = %bb.u
  %i.aq = uitofp i64 %.val to float, !dbg !16495
  %i.ar = fmul float %.val8.i, %i.aq, !dbg !16496
  %i.as = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.ar), !dbg !16496
    #dbg_value(i64 %i.as, !16415, !DIExpression(), !16222)
  %i.at = icmp ugt i64 %.val.i, %i.as, !dbg !16497
  br i1 %i.at, label %bb.v, label %bb.z, !dbg !16498

bb.v:                                             ; preds = %_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel20is_inflight_too_high.exit.i
  %i.au = invoke noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel4bdp0(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1)
          to label %bb.w unwind label %bb.af, !dbg !16499 ; 2 uses

bb.w:                                             ; preds = %bb.v
    #dbg_value(i64 %i.au, !16401, !DIExpression(), !16223)
    #dbg_value(i64 %i.au, !16417, !DIExpression(), !16226)
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 193, !dbg !16500
  %i.aw = load i8, ptr %i.av, align 1, !dbg !16500, !range !4909, !alias.scope !16393, !noundef !1224
  %i.ax = trunc nuw i8 %i.aw to i1, !dbg !16500
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 600, !dbg !16500
  %i.az = load i64, ptr %i.ay, align 8, !dbg !16500, !alias.scope !16392
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.au), !dbg !16500
  %.sroa.0.0.i = select i1 %i.ax, i64 %..i.i, i64 %i.au, !dbg !16500
    #dbg_value(i64 %.sroa.0.0.i, !16417, !DIExpression(), !16226)
    #dbg_value(i64 %.sroa.0.0.i, !16401, !DIExpression(), !16223)
    #dbg_value(ptr %1, !16421, !DIExpression(), !16227)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 640, !dbg !16501
  store i64 %.sroa.0.0.i, ptr %i.ba, align 8, !dbg !16501, !alias.scope !16392
    #dbg_value(ptr %1, !16423, !DIExpression(), !16230)
  store i8 1, ptr %i.c, align 2, !dbg !16502, !alias.scope !16392
    #dbg_value(ptr %1, !16320, !DIExpression(), !16427)
  %i.bb = invoke noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1)
          to label %bb.x unwind label %bb.af, !dbg !16503

bb.x:                                             ; preds = %bb.w
    #dbg_value(i64 1, !16293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16304)
    #dbg_value(i64 1, !16306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16428)
    #dbg_value(i64 %i.bb, !16293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16304)
    #dbg_value(i64 %i.bb, !16306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16428)
    #dbg_value(i64 %i.bb, !16309, !DIExpression(), !16429)
    #dbg_value(i64 %i.bb, !16345, !DIExpression(), !16434)
    #dbg_value(i64 %13, !16281, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16288)
    #dbg_value(i64 1, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16288)
    #dbg_value(i64 poison, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16288)
    #dbg_value(i8 0, !16281, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !16288)
    #dbg_value(ptr %12, !16359, !DIExpression(), !16437)
    #dbg_value(ptr %12, !16366, !DIExpression(), !16440)
  %i.bc = load i64, ptr %12, align 8, !dbg !16504, !range !4321, !noundef !1224
  %.not64 = icmp eq i64 %i.bc, 2, !dbg !16504
  br i1 %.not64, label %bb.y, label %thread-pre-split, !dbg !16505

bb.y:                                             ; preds = %bb.x
  %i.bd = lshr i64 %i.bb, 3, !dbg !16506
    #dbg_value(i64 %i.bd, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16288)
  store i64 1, ptr %12, align 8, !dbg !16507
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8, !dbg !16507
  store i64 %i.bd, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !16507
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16, !dbg !16507
  store i64 %13, ptr %.sroa.526.0..sroa_idx, align 8, !dbg !16507
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24, !dbg !16507
  store i8 0, ptr %.sroa.627.0..sroa_idx, align 8, !dbg !16507
  br label %thread-pre-split, !dbg !16508

bb.z:                                             ; preds = %bb.t, %bb.u, %_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel20is_inflight_too_high.exit.i, %_RNvMs_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startupNtB4_7Startup22check_excessive_losses.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %i.be, ptr noundef nonnull align 8 dereferenceable(688) %1, i64 688, i1 false), !dbg !16510
  store i64 2, ptr %0, align 8, !dbg !16509
  br label %bb.h, !dbg !16511

bb.aa:                                            ; preds = %_RNvMs_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startupNtB4_7Startup22check_excessive_losses.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.086), !dbg !16512
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.691), !dbg !16512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %.sroa.086, ptr noundef nonnull align 8 dereferenceable(472) %1, i64 472, i1 false), !dbg !16512
    #dbg_value(i64 poison, !16265, !DIExpression(DW_OP_LLVM_fragment, 3776, 64), !16441)
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 480, !dbg !16512 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.691, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.691.0..sroa_idx, i64 208, i1 false), !dbg !16512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16442), !dbg !16513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16443), !dbg !16513
    #dbg_declare(ptr poison, !16272, !DIExpression(DW_OP_LLVM_fragment, 64, 5504), !16234)
    #dbg_declare(ptr poison, !16272, !DIExpression(DW_OP_LLVM_fragment, 6048, 160), !16234)
    #dbg_declare(ptr poison, !16272, !DIExpression(DW_OP_LLVM_fragment, 6208, 168), !16234)
    #dbg_value(i64 poison, !16269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16235)
    #dbg_value(i32 poison, !16269, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16235)
    #dbg_value(ptr %9, !16270, !DIExpression(), !16235)
    #dbg_value(ptr %11, !16271, !DIExpression(), !16235)
    #dbg_value(i64 0, !16265, !DIExpression(DW_OP_LLVM_fragment, 3776, 64), !16441)
    #dbg_declare(ptr poison, !16334, !DIExpression(), !16237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16514, !noalias !16444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.a, ptr noundef nonnull align 8 dereferenceable(472) %1, i64 472, i1 false), !dbg !16514
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.a, i64 472, !dbg !16514
  store i64 0, ptr %.sroa.587.0..sroa_idx88, align 8, !dbg !16514, !noalias !16442
  %.sroa.691.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.a, i64 480, !dbg !16514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.691.0..sroa_idx92, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.691.0..sroa_idx, i64 208, i1 false), !dbg !16514
  %i.bf = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.ad unwind label %bb.ab, !dbg !16515, !noalias !16444 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_model17BBRv2NetworkModelEBL_(ptr noalias nofree noundef align 8 dereferenceable(688) %i.a) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startup7StartupEBL_.exit unwind label %bb.ac, !dbg !16516, !noalias !16444

bb.ac:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16517, !noalias !16444
  unreachable, !dbg !16517

bb.ad:                                            ; preds = %bb.aa
  %i.bi = extractvalue { i64, i32 } %i.bf, 0, !dbg !16515 ; 2 uses
  %i.bj = extractvalue { i64, i32 } %i.bf, 1, !dbg !16515 ; 2 uses
    #dbg_value(i64 %i.bi, !5518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16242)
    #dbg_value(i32 %i.bj, !5518, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16242)
  %.sroa.12.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !16518
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %.sroa.12.0..sroa_idx.i68, i8 0, i64 21, i1 false), !dbg !16519, !alias.scope !16442
  %.sroa.4.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %.sroa.4.0..sroa_idx.i69, ptr noundef nonnull align 8 dereferenceable(472) %.sroa.086, i64 472, i1 false), !dbg !16520, !alias.scope !16445
  %.sroa.587.0..sroa.4.0..sroa_idx.i69.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480, !dbg !16520
  store i64 0, ptr %.sroa.587.0..sroa.4.0..sroa_idx.i69.sroa_idx, align 8, !dbg !16520, !alias.scope !16445
  %.sroa.691.0..sroa.4.0..sroa_idx.i69.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488, !dbg !16520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.691.0..sroa.4.0..sroa_idx.i69.sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.691, i64 208, i1 false), !dbg !16520, !alias.scope !16445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16516, !noalias !16444
    #dbg_value(i64 0, !16272, !DIExpression(DW_OP_LLVM_fragment, 5568, 64), !16243)
    #dbg_value(i64 %i.bi, !16272, !DIExpression(DW_OP_LLVM_fragment, 5696, 64), !16243)
    #dbg_value(i32 %i.bj, !16272, !DIExpression(DW_OP_LLVM_fragment, 5760, 32), !16243)
    #dbg_value(i64 %i.bi, !16272, !DIExpression(DW_OP_LLVM_fragment, 5824, 64), !16243)
    #dbg_value(i32 %i.bj, !16272, !DIExpression(DW_OP_LLVM_fragment, 5888, 32), !16243)
    #dbg_value(i32 -1, !16272, !DIExpression(DW_OP_LLVM_fragment, 6016, 32), !16243)
    #dbg_value(i8 0, !16272, !DIExpression(DW_OP_LLVM_fragment, 6376, 8), !16243)
    #dbg_value(i64 3, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16243)
  store i64 3, ptr %0, align 8, !dbg !16518, !alias.scope !16442
  %.sroa.5.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !16518
  store i64 0, ptr %.sroa.5.0..sroa_idx.i70, align 8, !dbg !16518, !alias.scope !16442
  %.sroa.68.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %0, i64 712, !dbg !16518
  store i64 %i.bi, ptr %.sroa.68.0..sroa_idx.i71, align 8, !dbg !16518, !alias.scope !16442
  %.sroa.7.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %0, i64 720, !dbg !16518
  store i32 %i.bj, ptr %.sroa.7.0..sroa_idx.i72, align 8, !dbg !16518, !alias.scope !16442
  %.sroa.89.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %0, i64 728, !dbg !16518
  store i64 %i.bi, ptr %.sroa.89.0..sroa_idx.i73, align 8, !dbg !16518, !alias.scope !16442
  %.sroa.9.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %0, i64 736, !dbg !16518
  store i32 %i.bj, ptr %.sroa.9.0..sroa_idx.i74, align 8, !dbg !16518, !alias.scope !16442
  %.sroa.1010.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %0, i64 752, !dbg !16518
  store i32 -1, ptr %.sroa.1010.0..sroa_idx.i75, align 8, !dbg !16518, !alias.scope !16442
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 760, !dbg !16518
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !dbg !16518, !alias.scope !16442
  %.sroa.13.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %0, i64 797, !dbg !16518
  store i8 0, ptr %.sroa.13.0..sroa_idx.i76, align 1, !dbg !16518, !alias.scope !16442
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.086), !dbg !16521
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.691), !dbg !16521
  br label %bb.h, !dbg !16511

bb.ae:                                            ; preds = %bb.c
  %i.bl = extractvalue { i64, i32 } %i.i, 0, !dbg !16461 ; 2 uses
  %i.bm = extractvalue { i64, i32 } %i.i, 1, !dbg !16461 ; 2 uses
    #dbg_value(i64 %i.bl, !5518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16244)
    #dbg_value(i32 %i.bm, !5518, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16244)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !16522
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %.sroa.12.0..sroa_idx.i, i8 0, i64 21, i1 false), !dbg !16523, !alias.scope !16329
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16522
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(472) %1, i64 472, i1 false), !dbg !16524
  %.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480, !dbg !16524
  store i64 0, ptr %.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !dbg !16524, !alias.scope !16453
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488, !dbg !16524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa_idx, i64 208, i1 false), !dbg !16524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16462, !noalias !16339
    #dbg_value(i64 0, !16272, !DIExpression(DW_OP_LLVM_fragment, 5568, 64), !16245)
    #dbg_value(i64 %i.bl, !16272, !DIExpression(DW_OP_LLVM_fragment, 5696, 64), !16245)
    #dbg_value(i32 %i.bm, !16272, !DIExpression(DW_OP_LLVM_fragment, 5760, 32), !16245)
    #dbg_value(i64 %i.bl, !16272, !DIExpression(DW_OP_LLVM_fragment, 5824, 64), !16245)
    #dbg_value(i32 %i.bm, !16272, !DIExpression(DW_OP_LLVM_fragment, 5888, 32), !16245)
    #dbg_value(i32 -1, !16272, !DIExpression(DW_OP_LLVM_fragment, 6016, 32), !16245)
    #dbg_value(i8 0, !16272, !DIExpression(DW_OP_LLVM_fragment, 6376, 8), !16245)
    #dbg_value(i64 3, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16245)
  store i64 3, ptr %0, align 8, !dbg !16522, !alias.scope !16329
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !16522
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !16522, !alias.scope !16329
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 712, !dbg !16522
  store i64 %i.bl, ptr %.sroa.68.0..sroa_idx.i, align 8, !dbg !16522, !alias.scope !16329
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 720, !dbg !16522
  store i32 %i.bm, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !16522, !alias.scope !16329
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 728, !dbg !16522
  store i64 %i.bl, ptr %.sroa.89.0..sroa_idx.i, align 8, !dbg !16522, !alias.scope !16329
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 736, !dbg !16522
  store i32 %i.bm, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !16522, !alias.scope !16329
  %.sroa.1010.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 752, !dbg !16522
  store i32 -1, ptr %.sroa.1010.0..sroa_idx.i, align 8, !dbg !16522, !alias.scope !16329
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 760, !dbg !16522
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !dbg !16522, !alias.scope !16329
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 797, !dbg !16522
  store i8 0, ptr %.sroa.13.0..sroa_idx.i, align 1, !dbg !16522, !alias.scope !16329
  br label %bb.h, !dbg !16525

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startup7StartupEBL_.exit: ; preds = %bb.ab, %bb.d, %bb.af
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.bo, %bb.af ], [ %i.j, %bb.d ], [ %i.bg, %bb.ab ]
  resume { ptr, i32 } %eh.lpad-body95, !dbg !16526

bb.af:                                            ; preds = %bb.v, %bb.w, %bb.q, %bb.o, %bb.k, %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !5521, !DIExpression(), !16247)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_model17BBRv2NetworkModelEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startup7StartupEBL_.exit unwind label %bb.ag, !dbg !16527

bb.ag:                                            ; preds = %bb.af
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16526
  unreachable, !dbg !16526
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr27startupNtB2_7StartupNtNtB4_4mode8ModeImpl5enter(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(688) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable_or_null(136) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(208) %4) unnamed_addr #5 !dbg !16528 {
bb.a:
    #dbg_value(ptr %0, !16531, !DIExpression(), !16536)
    #dbg_value(i64 %1, !16532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16536)
    #dbg_value(i32 %2, !16532, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16536)
    #dbg_value(ptr %3, !16533, !DIExpression(), !16536)
    #dbg_value(ptr %4, !16534, !DIExpression(), !16536)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !dbg !16537
  unreachable, !dbg !16537
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24mode11PlaceholderNtB6_5Debug3fmtBG_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !16538 {
bb.a:
    #dbg_value(ptr %0, !16545, !DIExpression(), !16549)
    #dbg_value(ptr %1, !16546, !DIExpression(), !16549)
    #dbg_value(ptr poison, !16550, !DIExpression(), !16541)
    #dbg_value(ptr %1, !16554, !DIExpression(), !16541)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 11), !dbg !16556
  ret i1 %i.a, !dbg !16557
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24mode5CycleNtB6_5Debug3fmtBG_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !16558 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [224 x i8], align 8               ; 31 uses
    #dbg_value(ptr %0, !16576, !DIExpression(), !16581)
    #dbg_value(ptr %1, !16577, !DIExpression(), !16581)
  %i.c = load ptr, ptr %0, align 8, !dbg !16605, !nonnull !1224, !align !4180, !noundef !1224 ; 14 uses
    #dbg_value(ptr %i.c, !16582, !DIExpression(), !16566)
    #dbg_value(ptr %1, !16586, !DIExpression(), !16566)
    #dbg_value(ptr @45, !16591, !DIExpression(), !16567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16606, !noalias !16604
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16607
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 101, !dbg !16608
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !16609
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !16610
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !16611
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !16612
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !16613
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !16614
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96, !dbg !16615
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 97, !dbg !16616
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 98, !dbg !16617
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 99, !dbg !16618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16619, !noalias !16604
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 100, !dbg !16619
  store ptr %i.p, ptr %i.a, align 8, !dbg !16619, !noalias !16604
  store ptr %i.d, ptr %i.b, align 8, !dbg !16606, !noalias !16604
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16606
  store ptr @46, ptr %i.q, align 8, !dbg !16606, !noalias !16604
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16606
end_hunk_0
