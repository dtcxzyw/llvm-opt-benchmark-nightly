Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.09?download=true
inline.NumInlined: 1477
inline.NumDeleted: 556
begin_hunk_0_@_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub29set_response_info_from_netlog:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub8NaOptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEBG_.exit45: ; preds = %bb.t, %bb.s, %bb.o
  store i64 %.sroa.09.0, ptr %i.p, align 8, !dbg !62580
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !62580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511, i64 16, i1 false), !dbg !62580
  %i.x = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_E3geteECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 14)
          to label %bb.v unwind label %bb.c, !dbg !62593 ; 2 uses

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub8NaOptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEBG_.exit45
    #dbg_value(ptr %i.x, !62513, !DIExpression(), !62544)
    #dbg_value(ptr %i.x, !62505, !DIExpression(), !62545)
  %.not36 = icmp eq ptr %i.x, null, !dbg !62594
  br i1 %.not36, label %bb.x, label %bb.w, !dbg !62595

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr %i.x, !62508, !DIExpression(), !62546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !62596
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.ad unwind label %bb.c, !dbg !62597

bb.x:                                             ; preds = %bb.v, %bb.ad
  %.sroa.019.0 = phi i64 [ %.sroa.019.0.copyload20, %bb.ad ], [ -1, %bb.v ], !dbg !62545 ; 2 uses
    #dbg_value(i64 %.sroa.019.0, !62494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62549)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 576, !dbg !62598 ; 6 uses
    #dbg_value(ptr %i.y, !6407, !DIExpression(), !62432)
    #dbg_value(ptr %i.y, !6347, !DIExpression(), !62434)
  %i.z = load i64, ptr %i.y, align 8, !dbg !62599, !range !6308, !alias.scope !62550, !noundef !3374
  %i.aa = icmp eq i64 %i.z, -1, !dbg !62599
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub8NaOptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEBG_.exit53, label %bb.y, !dbg !62599

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr %i.y, !5699, !DIExpression(), !62440)
    #dbg_value(ptr %i.y, !5704, !DIExpression(), !62442)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.ab unwind label %bb.z, !dbg !62600

bb.z:                                             ; preds = %bb.y
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val3.i.i.i.i46 = load i64, ptr %i.y, align 8, !dbg !62600, !alias.scope !62551 ; 2 uses
    #dbg_value(ptr poison, !5711, !DIExpression(), !62450)
    #dbg_value(ptr poison, !5717, !DIExpression(), !62452)
    #dbg_value(ptr poison, !5722, !DIExpression(), !62454)
    #dbg_value(i64 1, !5727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62454)
    #dbg_value(i64 1, !5727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62454)
    #dbg_value(ptr poison, !5731, !DIExpression(), !62456)
    #dbg_value(i64 1, !5748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62456)
    #dbg_value(i64 1, !5748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62456)
  %i.ac = icmp eq i64 %.val3.i.i.i.i46, 0
  br i1 %i.ac, label %.body51, label %bb.aa, !dbg !62601

bb.aa:                                            ; preds = %bb.z
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !62600
  %.val4.i.i.i.i47 = load ptr, ptr %i.ad, align 8, !dbg !62600, !alias.scope !62552, !nonnull !3374, !noundef !3374
    #dbg_value(ptr %.val4.i.i.i.i47, !5728, !DIExpression(), !62457)
    #dbg_value(i64 1, !5729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62457)
    #dbg_value(i64 %.val3.i.i.i.i46, !5729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62457)
    #dbg_value(ptr poison, !5752, !DIExpression(), !62459)
    #dbg_value(ptr poison, !5758, !DIExpression(), !62461)
    #dbg_value(ptr %.val4.i.i.i.i47, !5755, !DIExpression(), !62459)
    #dbg_value(ptr %.val4.i.i.i.i47, !5761, !DIExpression(), !62461)
    #dbg_value(ptr %.val4.i.i.i.i47, !5764, !DIExpression(), !62463)
    #dbg_value(ptr %.val4.i.i.i.i47, !5770, !DIExpression(), !62465)
    #dbg_value(i64 1, !5756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62459)
    #dbg_value(i64 1, !5762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62461)
    #dbg_value(i64 1, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62463)
    #dbg_value(i64 1, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62465)
    #dbg_value(i64 %.val3.i.i.i.i46, !5756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62459)
    #dbg_value(i64 %.val3.i.i.i.i46, !5762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62461)
    #dbg_value(i64 %.val3.i.i.i.i46, !5768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62463)
    #dbg_value(i64 %.val3.i.i.i.i46, !5771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62465)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i47, i64 noundef %.val3.i.i.i.i46, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !dbg !62602, !noalias !62553
  br label %.body51, !dbg !62603

bb.ab:                                            ; preds = %bb.y
  %.val.i.i.i.i49 = load i64, ptr %i.y, align 8, !dbg !62600, !alias.scope !62551 ; 2 uses
    #dbg_value(ptr poison, !5711, !DIExpression(), !62469)
    #dbg_value(ptr poison, !5717, !DIExpression(), !62471)
    #dbg_value(ptr poison, !5722, !DIExpression(), !62473)
    #dbg_value(i64 1, !5727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62473)
    #dbg_value(i64 1, !5727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62473)
    #dbg_value(ptr poison, !5731, !DIExpression(), !62475)
    #dbg_value(i64 1, !5748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62475)
    #dbg_value(i64 1, !5748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62475)
  %i.ae = icmp eq i64 %.val.i.i.i.i49, 0
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub8NaOptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEBG_.exit53, label %bb.ac, !dbg !62604

bb.ac:                                            ; preds = %bb.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !62600
  %.val2.i.i.i.i50 = load ptr, ptr %i.af, align 8, !dbg !62600, !alias.scope !62552, !nonnull !3374, !noundef !3374
    #dbg_value(ptr %.val2.i.i.i.i50, !5728, !DIExpression(), !62476)
    #dbg_value(i64 1, !5729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62476)
    #dbg_value(i64 %.val.i.i.i.i49, !5729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62476)
    #dbg_value(ptr poison, !5752, !DIExpression(), !62478)
    #dbg_value(ptr poison, !5758, !DIExpression(), !62480)
    #dbg_value(ptr %.val2.i.i.i.i50, !5755, !DIExpression(), !62478)
    #dbg_value(ptr %.val2.i.i.i.i50, !5761, !DIExpression(), !62480)
    #dbg_value(ptr %.val2.i.i.i.i50, !5764, !DIExpression(), !62482)
    #dbg_value(ptr %.val2.i.i.i.i50, !5770, !DIExpression(), !62484)
    #dbg_value(i64 1, !5756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62478)
    #dbg_value(i64 1, !5762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62480)
    #dbg_value(i64 1, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62482)
    #dbg_value(i64 1, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62484)
    #dbg_value(i64 %.val.i.i.i.i49, !5756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62478)
    #dbg_value(i64 %.val.i.i.i.i49, !5762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62480)
    #dbg_value(i64 %.val.i.i.i.i49, !5768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62482)
    #dbg_value(i64 %.val.i.i.i.i49, !5771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62484)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i50, i64 noundef %.val.i.i.i.i49, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !dbg !62605, !noalias !62554
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub8NaOptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEBG_.exit53, !dbg !62606

bb.ad:                                            ; preds = %bb.w
  %.sroa.019.0.copyload20 = load i64, ptr %i.a, align 8, !dbg !62607
    #dbg_value(i64 %.sroa.019.0.copyload20, !62494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62549)
  %.sroa.521.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !62607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx22, i64 16, i1 false), !dbg !62607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62608
  br label %bb.x, !dbg !62609

.body51:                                          ; preds = %bb.z, %bb.aa
  store i64 %.sroa.019.0, ptr %i.y, align 8, !dbg !62598
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !62598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521, i64 16, i1 false), !dbg !62598
  br label %bb.b, !dbg !62610

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub8NaOptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEBG_.exit53: ; preds = %bb.ac, %bb.ab, %bb.x
  store i64 %.sroa.019.0, ptr %i.y, align 8, !dbg !62598
  %.sroa.525.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !62598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521, i64 16, i1 false), !dbg !62598
    #dbg_value(ptr %i.d, !10250, !DIExpression(), !62488)
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringB14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !62611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !62612
  ret void, !dbg !62613

bb.ae:                                            ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !dbg !62614
  unreachable, !dbg !62614

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !62614
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub30calculate_upload_download_rate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(904) initializes((160, 176)) %0) unnamed_addr #5 !dbg !62615 {
bb.a:
    #dbg_value(ptr %0, !62671, !DIExpression(), !62673)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 896, !dbg !62690
  %i.b = load i8, ptr %i.a, align 8, !dbg !62690, !range !9848, !noundef !3374
  %i.c = trunc nuw i8 %i.b to i1, !dbg !62690
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !62673
  %i.e = load i64, ptr %i.d, align 8, !dbg !62673, !range !9217, !noundef !3374
  %i.f = trunc nuw i64 %i.e to i1, !dbg !62691    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e, !dbg !62692

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !62693
  %i.h = load i64, ptr %i.g, align 8, !dbg !62693, !range !9217, !noundef !3374
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !62694
  %i.j = load i64, ptr %i.i, align 8, !dbg !62694, !range !9217, !noundef !3374
    #dbg_value(i64 %i.h, !62677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62622)
    #dbg_value(double poison, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62622)
    #dbg_value(i64 %i.j, !62678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62622)
    #dbg_value(double poison, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62622)
    #dbg_value(i64 %i.e, !62679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62622)
    #dbg_value(i64 poison, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62622)
    #dbg_value(i64 poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62625)
    #dbg_value(double poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62625)
  %i.k = and i64 %i.j, %i.h, !dbg !62695
  %or.cond.i = icmp ne i64 %i.k, 0, !dbg !62695
  %or.cond20.i = and i1 %or.cond.i, %i.f, !dbg !62695
  br i1 %or.cond20.i, label %bb.c, label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit, !dbg !62695

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !62696
  %i.m = load i64, ptr %i.l, align 8, !dbg !62696
    #dbg_value(i64 %i.m, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62622)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !62694
  %i.o = load double, ptr %i.n, align 8, !dbg !62694
    #dbg_value(double %i.o, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62622)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !62693
  %i.q = load double, ptr %i.p, align 8, !dbg !62693
    #dbg_value(double %i.q, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62622)
    #dbg_value(double %i.o, !62680, !DIExpression(), !62626)
    #dbg_value(double %i.q, !62681, !DIExpression(), !62626)
    #dbg_value(i64 %i.m, !62682, !DIExpression(), !62626)
  %i.r = fsub double %i.o, %i.q, !dbg !62697      ; 2 uses
    #dbg_value(double %i.r, !62683, !DIExpression(), !62627)
  %i.s = fcmp oeq double %i.r, 0.000000e+00, !dbg !62698
    #dbg_value(double poison, !62683, !DIExpression(), !62627)
    #dbg_value(double %i.z, !62683, !DIExpression(), !62627)
  %i.t = shl i64 %i.m, 3, !dbg !62699
  %i.u = uitofp i64 %i.t to double, !dbg !62699
  %i.v = insertelement <2 x double> poison, double %i.r, i64 0, !dbg !62700
  %i.w = insertelement <2 x double> %i.v, double %i.u, i64 1, !dbg !62700
  %i.x = fdiv <2 x double> %i.w, <double 1.000000e+03, double 1.000000e+06>, !dbg !62700 ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0, !dbg !62698
  %i.z = select i1 %i.s, double 1.000000e-03, double %i.y, !dbg !62698
    #dbg_value(double poison, !62684, !DIExpression(), !62628)
  %i.aa = extractelement <2 x double> %i.x, i64 1, !dbg !62701
    #dbg_value(double %i.aa, !62684, !DIExpression(), !62628)
  %i.ab = fdiv double %i.aa, %i.z, !dbg !62701
    #dbg_value(i64 1, !62688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62630)
    #dbg_value(double %i.ab, !62688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62630)
  br label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit, !dbg !62702

_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit: ; preds = %bb.b, %bb.c
  %.sroa.08.0.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], !dbg !62703
  %.sroa.3.0.i = phi double [ %i.ab, %bb.c ], [ undef, %bb.b ], !dbg !62703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !62704
  store i64 %.sroa.08.0.i, ptr %i.ac, align 8, !dbg !62704
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !62704
  store double %.sroa.3.0.i, ptr %i.ad, align 8, !dbg !62704
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !62705
  %i.af = load i64, ptr %i.ae, align 8, !dbg !62705, !range !9217, !noundef !3374
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !62706
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !62706, !range !9217, !noundef !3374
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !62707
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !62707, !range !9217, !noundef !3374
    #dbg_value(i64 %i.af, !62677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62633)
    #dbg_value(double poison, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62633)
    #dbg_value(i64 %i.ah, !62678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62633)
    #dbg_value(double poison, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62633)
    #dbg_value(i64 %i.aj, !62679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62633)
    #dbg_value(i64 poison, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62633)
    #dbg_value(i64 poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62635)
    #dbg_value(double poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62635)
  %i.ak = and i64 %i.ah, %i.af, !dbg !62708
  %or.cond.i1 = icmp ne i64 %i.ak, 0, !dbg !62708
  %i.al = trunc nuw i64 %i.aj to i1, !dbg !62708
  %or.cond20.i2 = and i1 %or.cond.i1, %i.al, !dbg !62708
  br i1 %or.cond20.i2, label %bb.d, label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit5, !dbg !62708

bb.d:                                             ; preds = %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !62707
  %i.an = load i64, ptr %i.am, align 8, !dbg !62707
    #dbg_value(i64 %i.an, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62633)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !62706
  %i.ap = load double, ptr %i.ao, align 8, !dbg !62706
    #dbg_value(double %i.ap, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62633)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !62705
  %i.ar = load double, ptr %i.aq, align 8, !dbg !62705
    #dbg_value(double %i.ar, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62633)
    #dbg_value(double %i.ap, !62680, !DIExpression(), !62636)
    #dbg_value(double %i.ar, !62681, !DIExpression(), !62636)
    #dbg_value(i64 %i.an, !62682, !DIExpression(), !62636)
  %i.as = fsub double %i.ap, %i.ar, !dbg !62709   ; 2 uses
    #dbg_value(double %i.as, !62683, !DIExpression(), !62637)
  %i.at = fcmp oeq double %i.as, 0.000000e+00, !dbg !62710
    #dbg_value(double poison, !62683, !DIExpression(), !62637)
    #dbg_value(double %i.ba, !62683, !DIExpression(), !62637)
  %i.au = shl i64 %i.an, 3, !dbg !62711
  %i.av = uitofp i64 %i.au to double, !dbg !62711
  %i.aw = insertelement <2 x double> poison, double %i.as, i64 0, !dbg !62712
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1, !dbg !62712
  %i.ay = fdiv <2 x double> %i.ax, <double 1.000000e+03, double 1.000000e+06>, !dbg !62712 ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0, !dbg !62710
  %i.ba = select i1 %i.at, double 1.000000e-03, double %i.az, !dbg !62710
    #dbg_value(double poison, !62684, !DIExpression(), !62638)
  %i.bb = extractelement <2 x double> %i.ay, i64 1, !dbg !62713
    #dbg_value(double %i.bb, !62684, !DIExpression(), !62638)
  %i.bc = fdiv double %i.bb, %i.ba, !dbg !62713
    #dbg_value(i64 1, !62688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62640)
    #dbg_value(double %i.bc, !62688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62640)
  br label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit5, !dbg !62714

bb.e:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !62715
  %i.be = load i64, ptr %i.bd, align 8, !dbg !62715, !range !9217, !noundef !3374
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !62716
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !62716, !range !9217, !noundef !3374
    #dbg_value(i64 %i.be, !62677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62642)
    #dbg_value(double poison, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62642)
    #dbg_value(i64 %i.bg, !62678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62642)
    #dbg_value(double poison, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62642)
    #dbg_value(i64 %i.e, !62679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62642)
    #dbg_value(i64 poison, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62642)
    #dbg_value(i64 poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62644)
    #dbg_value(double poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62644)
  %i.bh = and i64 %i.bg, %i.be, !dbg !62717
  %or.cond.i6 = icmp ne i64 %i.bh, 0, !dbg !62717
  %or.cond20.i7 = and i1 %or.cond.i6, %i.f, !dbg !62717
  br i1 %or.cond20.i7, label %bb.f, label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit10, !dbg !62717

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !62718
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !62718
    #dbg_value(i64 %i.bj, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62642)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !62716
  %i.bl = load double, ptr %i.bk, align 8, !dbg !62716
    #dbg_value(double %i.bl, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62642)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !62715
  %i.bn = load double, ptr %i.bm, align 8, !dbg !62715
    #dbg_value(double %i.bn, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62642)
    #dbg_value(double %i.bl, !62680, !DIExpression(), !62645)
    #dbg_value(double %i.bn, !62681, !DIExpression(), !62645)
    #dbg_value(i64 %i.bj, !62682, !DIExpression(), !62645)
  %i.bo = fsub double %i.bl, %i.bn, !dbg !62719   ; 2 uses
    #dbg_value(double %i.bo, !62683, !DIExpression(), !62646)
  %i.bp = fcmp oeq double %i.bo, 0.000000e+00, !dbg !62720
    #dbg_value(double poison, !62683, !DIExpression(), !62646)
    #dbg_value(double %i.bw, !62683, !DIExpression(), !62646)
  %i.bq = shl i64 %i.bj, 3, !dbg !62721
  %i.br = uitofp i64 %i.bq to double, !dbg !62721
  %i.bs = insertelement <2 x double> poison, double %i.bo, i64 0, !dbg !62722
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1, !dbg !62722
  %i.bu = fdiv <2 x double> %i.bt, <double 1.000000e+03, double 1.000000e+06>, !dbg !62722 ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0, !dbg !62720
  %i.bw = select i1 %i.bp, double 1.000000e-03, double %i.bv, !dbg !62720
    #dbg_value(double poison, !62684, !DIExpression(), !62647)
  %i.bx = extractelement <2 x double> %i.bu, i64 1, !dbg !62723
    #dbg_value(double %i.bx, !62684, !DIExpression(), !62647)
  %i.by = fdiv double %i.bx, %i.bw, !dbg !62723
    #dbg_value(i64 1, !62688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62649)
    #dbg_value(double %i.by, !62688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62649)
  br label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit10, !dbg !62724

_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit10: ; preds = %bb.e, %bb.f
  %.sroa.08.0.i8 = phi i64 [ 1, %bb.f ], [ 0, %bb.e ], !dbg !62725
  %.sroa.3.0.i9 = phi double [ %i.by, %bb.f ], [ undef, %bb.e ], !dbg !62725
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !62726
  store i64 %.sroa.08.0.i8, ptr %i.bz, align 8, !dbg !62726
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !62726
  store double %.sroa.3.0.i9, ptr %i.ca, align 8, !dbg !62726
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !62727
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !62727, !range !9217, !noundef !3374
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !62728
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !62728, !range !9217, !noundef !3374 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !62728
  %i.cg = load double, ptr %i.cf, align 8, !dbg !62728 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !62729
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !62729, !range !9217, !noundef !3374
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !62729
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !62729 ; 2 uses
    #dbg_value(i64 %i.cc, !62677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62652)
    #dbg_value(double poison, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62652)
    #dbg_value(i64 %i.ce, !62678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62652)
    #dbg_value(double %i.cg, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62652)
    #dbg_value(i64 %i.ci, !62679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62652)
    #dbg_value(i64 %i.ck, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62652)
    #dbg_value(i64 poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62654)
    #dbg_value(double poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62654)
  %i.cl = and i64 %i.ce, %i.cc, !dbg !62730
  %or.cond.i11 = icmp ne i64 %i.cl, 0, !dbg !62730
  %i.cm = trunc nuw i64 %i.ci to i1, !dbg !62730  ; 2 uses
  %or.cond20.i12 = and i1 %or.cond.i11, %i.cm, !dbg !62730
  br i1 %or.cond20.i12, label %bb.g, label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15, !dbg !62730

bb.g:                                             ; preds = %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit10
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !62727
  %i.co = load double, ptr %i.cn, align 8, !dbg !62727
    #dbg_value(double %i.co, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62652)
    #dbg_value(double %i.cg, !62680, !DIExpression(), !62655)
    #dbg_value(double %i.co, !62681, !DIExpression(), !62655)
    #dbg_value(i64 %i.ck, !62682, !DIExpression(), !62655)
  %i.cp = fsub double %i.cg, %i.co, !dbg !62731   ; 2 uses
    #dbg_value(double %i.cp, !62683, !DIExpression(), !62656)
  %i.cq = fcmp oeq double %i.cp, 0.000000e+00, !dbg !62732
    #dbg_value(double poison, !62683, !DIExpression(), !62656)
    #dbg_value(double %i.cx, !62683, !DIExpression(), !62656)
  %i.cr = shl i64 %i.ck, 3, !dbg !62733
  %i.cs = uitofp i64 %i.cr to double, !dbg !62733
  %i.ct = insertelement <2 x double> poison, double %i.cp, i64 0, !dbg !62734
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1, !dbg !62734
  %i.cv = fdiv <2 x double> %i.cu, <double 1.000000e+03, double 1.000000e+06>, !dbg !62734 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0, !dbg !62732
  %i.cx = select i1 %i.cq, double 1.000000e-03, double %i.cw, !dbg !62732
    #dbg_value(double poison, !62684, !DIExpression(), !62657)
  %i.cy = extractelement <2 x double> %i.cv, i64 1, !dbg !62735
    #dbg_value(double %i.cy, !62684, !DIExpression(), !62657)
  %i.cz = fdiv double %i.cy, %i.cx, !dbg !62735
    #dbg_value(i64 1, !62688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62659)
    #dbg_value(double %i.cz, !62688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62659)
  br label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15, !dbg !62736

_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15: ; preds = %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit10, %bb.g
  %.sroa.08.0.i13 = phi i64 [ 1, %bb.g ], [ 0, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit10 ], !dbg !62737
  %.sroa.3.0.i14 = phi double [ %i.cz, %bb.g ], [ undef, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit10 ], !dbg !62737
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !62738
  store i64 %.sroa.08.0.i13, ptr %i.da, align 8, !dbg !62738
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !62738
  store double %.sroa.3.0.i14, ptr %i.db, align 8, !dbg !62738
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !62739
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !62739, !range !9217, !noundef !3374
    #dbg_value(i64 %i.dd, !62677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62662)
    #dbg_value(double poison, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62662)
    #dbg_value(i64 %i.ce, !62678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62662)
    #dbg_value(double %i.cg, !62678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62662)
    #dbg_value(i64 %i.ci, !62679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62662)
    #dbg_value(i64 %i.ck, !62679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62662)
    #dbg_value(i64 poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62664)
    #dbg_value(double poison, !62687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62664)
  %i.de = and i64 %i.dd, %i.ce, !dbg !62740
  %or.cond.i16 = icmp ne i64 %i.de, 0, !dbg !62740
  %or.cond20.i17 = and i1 %or.cond.i16, %i.cm, !dbg !62740
  br i1 %or.cond20.i17, label %bb.h, label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit5, !dbg !62740

bb.h:                                             ; preds = %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !62739
  %i.dg = load double, ptr %i.df, align 8, !dbg !62739
    #dbg_value(double %i.dg, !62677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62662)
    #dbg_value(double %i.cg, !62680, !DIExpression(), !62665)
    #dbg_value(double %i.dg, !62681, !DIExpression(), !62665)
    #dbg_value(i64 %i.ck, !62682, !DIExpression(), !62665)
  %i.dh = fsub double %i.cg, %i.dg, !dbg !62741   ; 2 uses
    #dbg_value(double %i.dh, !62683, !DIExpression(), !62666)
  %i.di = fcmp oeq double %i.dh, 0.000000e+00, !dbg !62742
    #dbg_value(double poison, !62683, !DIExpression(), !62666)
    #dbg_value(double %i.dp, !62683, !DIExpression(), !62666)
  %i.dj = shl i64 %i.ck, 3, !dbg !62743
  %i.dk = uitofp i64 %i.dj to double, !dbg !62743
  %i.dl = insertelement <2 x double> poison, double %i.dh, i64 0, !dbg !62744
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1, !dbg !62744
  %i.dn = fdiv <2 x double> %i.dm, <double 1.000000e+03, double 1.000000e+06>, !dbg !62744 ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0, !dbg !62742
  %i.dp = select i1 %i.di, double 1.000000e-03, double %i.do, !dbg !62742
    #dbg_value(double poison, !62684, !DIExpression(), !62667)
  %i.dq = extractelement <2 x double> %i.dn, i64 1, !dbg !62745
    #dbg_value(double %i.dq, !62684, !DIExpression(), !62667)
  %i.dr = fdiv double %i.dq, %i.dp, !dbg !62745
    #dbg_value(i64 1, !62688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62669)
    #dbg_value(double %i.dr, !62688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62669)
  br label %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit5, !dbg !62746

_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit5: ; preds = %bb.h, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15, %bb.d, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit
  %.sink22 = phi i64 [ 176, %bb.d ], [ 176, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit ], [ 192, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15 ], [ 192, %bb.h ]
  %.sroa.08.0.i18.sink = phi i64 [ 1, %bb.d ], [ 0, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit ], [ 0, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15 ], [ 1, %bb.h ]
  %.sink21 = phi i64 [ 184, %bb.d ], [ 184, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit ], [ 200, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15 ], [ 200, %bb.h ]
  %.sroa.3.0.i19.sink = phi double [ %i.bc, %bb.d ], [ undef, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit ], [ undef, %_RNvMs3_NtCsaTqK2fWTXJW_11qlog_dancer12request_stubNtB5_15HttpRequestStub25maybe_megabits_per_second.exit15 ], [ %i.dr, %bb.h ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %.sink22, !dbg !62673
  store i64 %.sroa.08.0.i18.sink, ptr %i.ds, align 8, !dbg !62673
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.sink21, !dbg !62673
  store double %.sroa.3.0.i19.sink, ptr %i.dt, align 8, !dbg !62673
  ret void, !dbg !62747
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1p_EEE8grow_oneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !62748 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !62773, !DIExpression(), !62775)
    #dbg_value(i64 8, !62776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62781)
    #dbg_value(i64 64, !62776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62781)
    #dbg_value(ptr %0, !62777, !DIExpression(), !62781)
  %i.b = load i64, ptr %0, align 8, !dbg !62784, !range !3784, !noundef !3374 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62782), !dbg !62785
    #dbg_value(ptr %0, !9126, !DIExpression(), !62754)
    #dbg_value(ptr %0, !9171, !DIExpression(), !62756)
    #dbg_value(i64 %i.b, !9140, !DIExpression(), !62754)
    #dbg_value(i64 1, !9141, !DIExpression(), !62754)
    #dbg_value(i64 8, !9142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62754)
    #dbg_value(i64 64, !9142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62754)
    #dbg_declare(ptr %i.a, !9181, !DIExpression(), !62758)
    #dbg_value(i64 %i.b, !9143, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !62759)
    #dbg_value(i64 %i.b, !9214, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !62761)
  %i.c = shl nuw i64 %i.b, 1, !dbg !62786
    #dbg_value(i64 %i.c, !9215, !DIExpression(), !62761)
    #dbg_value(ptr undef, !5961, !DIExpression(DW_OP_deref), !62763)
    #dbg_value(ptr undef, !5963, !DIExpression(DW_OP_deref), !62763)
    #dbg_value(i64 poison, !9146, !DIExpression(), !62764)
    #dbg_value(i64 poison, !9214, !DIExpression(), !62766)
    #dbg_value(i64 4, !9215, !DIExpression(), !62766)
    #dbg_value(ptr undef, !5961, !DIExpression(DW_OP_deref), !62768)
    #dbg_value(ptr undef, !5963, !DIExpression(DW_OP_deref), !62768)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !62787 ; 3 uses
    #dbg_value(i64 %i.d, !9147, !DIExpression(), !62769)
    #dbg_value(i64 %i.d, !9176, !DIExpression(), !62756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !62788, !noalias !62782
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62789 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !62789, !alias.scope !62782
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !dbg !62789, !noalias !62782
  %i.f = load i64, ptr %i.a, align 8, !dbg !62790, !range !9217, !noalias !62782, !noundef !3374
  %i.g = trunc nuw i64 %i.f to i1, !dbg !62791
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !62792 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !62791

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !62793, !range !9218, !noalias !62782, !noundef !3374
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !62793
  %i.k = load i64, ptr %i.j, align 8, !dbg !62793, !noalias !62782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62794, !noalias !62782
    #dbg_value(i64 %i.i, !62778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62783)
    #dbg_value(i64 %i.k, !62778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62783)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !dbg !62795
  unreachable, !dbg !62795

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !62796, !noalias !62782, !nonnull !3374, !noundef !3374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62794, !noalias !62782
    #dbg_value(ptr %i.l, !9148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62770)
    #dbg_value(ptr %i.l, !9175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62756)
    #dbg_value(i64 poison, !9148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62770)
    #dbg_value(i64 poison, !9175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62756)
  store ptr %i.l, ptr %i.e, align 8, !dbg !62797, !alias.scope !62782
  %i.m = icmp sgt i64 %i.d, -1, !dbg !62798
  tail call void @llvm.assume(i1 %i.m), !dbg !62798
  store i64 %i.d, ptr %0, align 8, !dbg !62799, !alias.scope !62782
  ret void, !dbg !62800
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4bweDUTR8gt_8plotters5chart6series10SeriesAnnoNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEE8grow_oneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !62801 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !62826, !DIExpression(), !62828)
    #dbg_value(i64 8, !62829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62834)
    #dbg_value(i64 40, !62829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62834)
    #dbg_value(ptr %0, !62830, !DIExpression(), !62834)
  %i.b = load i64, ptr %0, align 8, !dbg !62837, !range !3784, !noundef !3374 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62835), !dbg !62838
    #dbg_value(ptr %0, !9126, !DIExpression(), !62807)
    #dbg_value(ptr %0, !9171, !DIExpression(), !62809)
    #dbg_value(i64 %i.b, !9140, !DIExpression(), !62807)
    #dbg_value(i64 1, !9141, !DIExpression(), !62807)
    #dbg_value(i64 8, !9142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62807)
    #dbg_value(i64 40, !9142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62807)
    #dbg_declare(ptr %i.a, !9181, !DIExpression(), !62811)
    #dbg_value(i64 %i.b, !9143, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !62812)
    #dbg_value(i64 %i.b, !9214, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !62814)
  %i.c = shl nuw i64 %i.b, 1, !dbg !62839
    #dbg_value(i64 %i.c, !9215, !DIExpression(), !62814)
    #dbg_value(ptr undef, !5961, !DIExpression(DW_OP_deref), !62816)
    #dbg_value(ptr undef, !5963, !DIExpression(DW_OP_deref), !62816)
    #dbg_value(i64 poison, !9146, !DIExpression(), !62817)
    #dbg_value(i64 poison, !9214, !DIExpression(), !62819)
    #dbg_value(i64 4, !9215, !DIExpression(), !62819)
    #dbg_value(ptr undef, !5961, !DIExpression(DW_OP_deref), !62821)
    #dbg_value(ptr undef, !5963, !DIExpression(DW_OP_deref), !62821)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !62840 ; 3 uses
    #dbg_value(i64 %i.d, !9147, !DIExpression(), !62822)
    #dbg_value(i64 %i.d, !9176, !DIExpression(), !62809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !62841, !noalias !62835
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62842 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !62842, !alias.scope !62835
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !dbg !62842, !noalias !62835
  %i.f = load i64, ptr %i.a, align 8, !dbg !62843, !range !9217, !noalias !62835, !noundef !3374
  %i.g = trunc nuw i64 %i.f to i1, !dbg !62844
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !62845 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !62844

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !62846, !range !9218, !noalias !62835, !noundef !3374
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !62846
  %i.k = load i64, ptr %i.j, align 8, !dbg !62846, !noalias !62835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62847, !noalias !62835
    #dbg_value(i64 %i.i, !62831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62836)
    #dbg_value(i64 %i.k, !62831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62836)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !dbg !62848
  unreachable, !dbg !62848

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !62849, !noalias !62835, !nonnull !3374, !noundef !3374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62847, !noalias !62835
    #dbg_value(ptr %i.l, !9148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62823)
    #dbg_value(ptr %i.l, !9175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62809)
    #dbg_value(i64 poison, !9148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62823)
    #dbg_value(i64 poison, !9175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62809)
  store ptr %i.l, ptr %i.e, align 8, !dbg !62850, !alias.scope !62835
  %i.m = icmp sgt i64 %i.d, -1, !dbg !62851
  tail call void @llvm.assume(i1 %i.m), !dbg !62851
  store i64 %i.d, ptr %0, align 8, !dbg !62852, !alias.scope !62835
  ret void, !dbg !62853
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4bweDUTR8gt_8plotters7element12basic_shapes11PathElementTdlEEE8grow_oneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !62854 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !62879, !DIExpression(), !62881)
    #dbg_value(i64 8, !62882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62887)
    #dbg_value(i64 48, !62882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62887)
    #dbg_value(ptr %0, !62883, !DIExpression(), !62887)
  %i.b = load i64, ptr %0, align 8, !dbg !62890, !range !3784, !noundef !3374 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62888), !dbg !62891
    #dbg_value(ptr %0, !9126, !DIExpression(), !62860)
    #dbg_value(ptr %0, !9171, !DIExpression(), !62862)
    #dbg_value(i64 %i.b, !9140, !DIExpression(), !62860)
    #dbg_value(i64 1, !9141, !DIExpression(), !62860)
    #dbg_value(i64 8, !9142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62860)
    #dbg_value(i64 48, !9142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62860)
    #dbg_declare(ptr %i.a, !9181, !DIExpression(), !62864)
    #dbg_value(i64 %i.b, !9143, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !62865)
    #dbg_value(i64 %i.b, !9214, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !62867)
  %i.c = shl nuw i64 %i.b, 1, !dbg !62892
    #dbg_value(i64 %i.c, !9215, !DIExpression(), !62867)
    #dbg_value(ptr undef, !5961, !DIExpression(DW_OP_deref), !62869)
    #dbg_value(ptr undef, !5963, !DIExpression(DW_OP_deref), !62869)
    #dbg_value(i64 poison, !9146, !DIExpression(), !62870)
    #dbg_value(i64 poison, !9214, !DIExpression(), !62872)
    #dbg_value(i64 4, !9215, !DIExpression(), !62872)
    #dbg_value(ptr undef, !5961, !DIExpression(DW_OP_deref), !62874)
    #dbg_value(ptr undef, !5963, !DIExpression(DW_OP_deref), !62874)
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !62893 ; 3 uses
    #dbg_value(i64 %i.d, !9147, !DIExpression(), !62875)
    #dbg_value(i64 %i.d, !9176, !DIExpression(), !62862)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !62894, !noalias !62888
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62895 ; 2 uses
  %.val48.i = load ptr, ptr %i.e, align 8, !dbg !62895, !alias.scope !62888
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val48.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !dbg !62895, !noalias !62888
  %i.f = load i64, ptr %i.a, align 8, !dbg !62896, !range !9217, !noalias !62888, !noundef !3374
  %i.g = trunc nuw i64 %i.f to i1, !dbg !62897
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !62898 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !62897

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !62899, !range !9218, !noalias !62888, !noundef !3374
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !62899
  %i.k = load i64, ptr %i.j, align 8, !dbg !62899, !noalias !62888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62900, !noalias !62888
    #dbg_value(i64 %i.i, !62884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62889)
    #dbg_value(i64 %i.k, !62884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62889)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !dbg !62901
  unreachable, !dbg !62901

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !62902, !noalias !62888, !nonnull !3374, !noundef !3374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62900, !noalias !62888
    #dbg_value(ptr %i.l, !9148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62876)
    #dbg_value(ptr %i.l, !9175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62862)
end_hunk_0
