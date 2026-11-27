Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.06?download=true
inline.NumInlined: 313
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsa2e0UnRrdBM_12tokio_quiche:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9369
  store ptr %i.d, ptr %i.o, align 8, !dbg !9369
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9369
  store i64 %i.f, ptr %i.p, align 8, !dbg !9369
  store i64 -1, ptr %0, align 8, !dbg !9369
  br label %bb.f, !dbg !9370

bb.f:                                             ; preds = %bb.e, %_RNvXs2_NtCsexYYUdYSQU6_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit
  ret void, !dbg !9371
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 5) i8 @_RNvXs0_NtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labelsNtB5_14HandshakeErrorINtNtCskKLDkoKarTP_4core7convert4FromRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1g_5error5ErrorNtNtB1g_6marker4SendNtB2J_4SyncEL_EE4from(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !9399 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr %0, !9427, !DIExpression(), !9466)
    #dbg_declare(ptr %i.b, !9467, !DIExpression(), !9485)
    #dbg_declare(ptr %i.a, !9507, !DIExpression(), !9518)
    #dbg_declare(ptr poison, !9478, !DIExpression(), !9536)
    #dbg_declare(ptr poison, !9509, !DIExpression(), !9537)
  %i.c = load ptr, ptr %0, align 8, !dbg !9581, !nonnull !560, !noundef !560 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9581
  %i.e = load ptr, ptr %i.d, align 8, !dbg !9581, !nonnull !560, !align !1165, !noundef !560
    #dbg_value(ptr %i.c, !9501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9538)
    #dbg_value(ptr %i.e, !9501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9538)
    #dbg_value(ptr %i.c, !9505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9539)
    #dbg_value(ptr %i.c, !9477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9540)
    #dbg_value(ptr %i.e, !9505, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9539)
    #dbg_value(ptr %i.e, !9477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9582
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !9583
  %i.g = load ptr, ptr %i.f, align 8, !dbg !9583, !invariant.load !560, !nonnull !560 ; 2 uses
  call void %i.g(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.c) #26, !dbg !9584
    #dbg_value(ptr poison, !9543, !DIExpression(), !9550)
    #dbg_value(ptr %i.b, !9547, !DIExpression(), !9551)
  %i.h = load i128, ptr %i.b, align 16, !dbg !9585, !noundef !560
  %i.i = icmp eq i128 %i.h, 147888148921034348319275460288379410457, !dbg !9586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9587
  br i1 %i.i, label %bb.c, label %bb.b, !dbg !9588

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !9530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9555)
    #dbg_value(ptr %i.e, !9530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9555)
    #dbg_value(ptr %i.c, !9534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9556)
    #dbg_value(ptr %i.c, !9508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9557)
    #dbg_value(ptr %i.e, !9534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9556)
    #dbg_value(ptr %i.e, !9508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9589
  call void %i.g(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.c) #26, !dbg !9590
    #dbg_value(ptr poison, !9543, !DIExpression(), !9560)
    #dbg_value(ptr %i.a, !9547, !DIExpression(), !9561)
  %i.j = load i128, ptr %i.a, align 16, !dbg !9591, !noundef !560
  %i.k = icmp eq i128 %i.j, 163597094810227692666139106753400429487, !dbg !9592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9593
  br i1 %i.k, label %bb.d, label %bb.e, !dbg !9594

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !9429, !DIExpression(), !9564)
    #dbg_value(ptr %i.c, !9565, !DIExpression(), !9571)
  %i.l = load i8, ptr %i.c, align 1, !dbg !9595, !range !1285, !noundef !560
  %. = or disjoint i8 %i.l, 2, !dbg !9571
  br label %bb.e, !dbg !9571

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.c, !9431, !DIExpression(), !9572)
    #dbg_value(ptr %i.c, !9573, !DIExpression(), !9579)
  %i.m = load i64, ptr %i.c, align 8, !dbg !9596, !range !9580, !noundef !560 ; 2 uses
  %switch.selectcmp = icmp eq i64 %i.m, 9, !dbg !9597
  %switch.select = select i1 %switch.selectcmp, i8 1, i8 4, !dbg !9597
  %switch.selectcmp13 = icmp eq i64 %i.m, 8, !dbg !9597
  %switch.select14 = select i1 %switch.selectcmp13, i8 0, i8 %switch.select, !dbg !9597
  br label %bb.e, !dbg !9597

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.0.1 = phi i8 [ 4, %bb.b ], [ %switch.select14, %bb.d ], [ %., %bb.c ], !dbg !9466
  ret i8 %.sroa.0.1, !dbg !9598
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB5_12QuicSettingsNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9599 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr @67, !9639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9643)
    #dbg_value(i64 5, !9639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9643)
    #dbg_value(ptr @67, !9645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9650)
    #dbg_value(i64 5, !9645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9650)
    #dbg_value(ptr @67, !9647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9651)
    #dbg_value(i64 5, !9647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9651)
    #dbg_value(ptr @67, !9652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9655)
    #dbg_value(i64 5, !9652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9655)
    #dbg_value(ptr @67, !9656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9659)
    #dbg_value(i64 5, !9656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9659)
    #dbg_value(i64 0, !9660, !DIExpression(), !9673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9742
    #dbg_value(ptr @69, !9699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9744)
    #dbg_value(ptr @69, !9748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9754)
    #dbg_value(ptr @69, !9756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9761)
    #dbg_value(ptr poison, !9699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9744)
    #dbg_value(ptr poison, !9748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9754)
    #dbg_value(ptr poison, !9756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9761)
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_hEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterRShENCNvMNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB32_12QuicSettings12default_alpn0EE9from_iterB36_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @69, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @69, i64 16)), !dbg !9795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9765
  store i64 -1, ptr %i.c, align 8, !dbg !9796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9766
  store i64 -1, ptr %i.b, align 8, !dbg !9797
    #dbg_value(ptr @67, !9674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9767)
    #dbg_value(ptr @67, !9676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9768)
    #dbg_value(ptr @67, !9678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9769)
    #dbg_value(ptr @67, !9681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9770)
    #dbg_value(i64 5, !9674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9767)
    #dbg_value(i64 5, !9676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9768)
    #dbg_value(i64 5, !9678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9769)
    #dbg_value(i64 5, !9681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9770)
    #dbg_value(i64 5, !9683, !DIExpression(), !9771)
    #dbg_value(i64 5, !9686, !DIExpression(), !9772)
    #dbg_value(i64 5, !9689, !DIExpression(), !9773)
    #dbg_value(i64 5, !9774, !DIExpression(), !9779)
    #dbg_value(i64 5, !9780, !DIExpression(), !9785)
    #dbg_value(i64 5, !9692, !DIExpression(), !9786)
    #dbg_value(i64 5, !9662, !DIExpression(), !9673)
    #dbg_value(i64 1, !9694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9786)
    #dbg_value(i64 1, !9663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9673)
    #dbg_value(i64 1, !9694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9786)
    #dbg_value(i64 1, !9663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9798
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b, !dbg !9798

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %bb.h unwind label %bb.g, !dbg !9799

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !dbg !9798, !range !839, !noundef !560
  %i.g = trunc nuw i64 %i.f to i1, !dbg !9800
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9786
  %i.i = load i64, ptr %i.h, align 8, !dbg !9786, !range !840, !noundef !560 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9786 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !9800, !prof !841

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !dbg !9801
    #dbg_value(i64 %i.i, !9696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9787)
    #dbg_value(i64 %i.k, !9696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9787)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #22
          to label %bb.f unwind label %bb.b, !dbg !9802

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8, !dbg !9803, !nonnull !560, !noundef !560 ; 2 uses
    #dbg_value(i64 %i.i, !9695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9788)
    #dbg_value(ptr %i.l, !9695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9788)
    #dbg_value(ptr poison, !9661, !DIExpression(), !9789)
  %i.m = icmp samesign ugt i64 %i.i, 4, !dbg !9804
    #dbg_value(i1 true, !9790, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9793)
  tail call void @llvm.assume(i1 %i.m), !dbg !9805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9806
    #dbg_value(i64 %i.i, !9684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9794)
    #dbg_value(ptr %i.l, !9684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9794)
    #dbg_value(i64 0, !9684, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9794)
    #dbg_value(ptr @67, !9775, !DIExpression(), !9779)
    #dbg_value(ptr @67, !9781, !DIExpression(), !9785)
    #dbg_value(ptr %i.l, !9776, !DIExpression(), !9779)
    #dbg_value(ptr %i.l, !9782, !DIExpression(), !9785)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.l, ptr noundef nonnull align 1 dereferenceable(5) @67, i64 5, i1 false), !dbg !9807
    #dbg_value(i64 5, !9684, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9794)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !9808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !9808
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !9808
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !9808
  store i64 65536, ptr %i.p, align 16, !dbg !9808
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !9808
  store i64 65536, ptr %i.q, align 8, !dbg !9808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !9808
  store i64 10000000, ptr %i.r, align 16, !dbg !9808
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !9808
  store i64 1000000, ptr %i.s, align 8, !dbg !9808
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !9808
  store i64 1000000, ptr %i.t, align 16, !dbg !9808
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !9808
  store i64 1000000, ptr %i.u, align 8, !dbg !9808
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !9808
  store i64 100, ptr %i.v, align 16, !dbg !9808
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !9808
  store i64 100, ptr %i.w, align 8, !dbg !9808
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9808
  store i64 56, ptr %i.x, align 16, !dbg !9808
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9808
  store i32 0, ptr %i.y, align 8, !dbg !9808
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !9808
  store i64 2, ptr %i.z, align 16, !dbg !9808
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !9808
  store i64 1350, ptr %i.aa, align 8, !dbg !9808
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !9808
  store i64 1350, ptr %i.ab, align 16, !dbg !9808
  store i32 65537, ptr %i.o, align 16, !dbg !9808
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !9808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !9808
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !9808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !9808
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !9808
  store i64 %i.i, ptr %i.ae, align 8, !dbg !9808
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !9808
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 16, !dbg !9808
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !9808
  store i64 5, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9808
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !9808
  store i64 10, ptr %i.af, align 8, !dbg !9808
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 356, !dbg !9808
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !9808
  store i8 3, ptr %i.ag, align 16, !dbg !9808
  store i32 65536, ptr %1, align 4, !dbg !9808
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9808
  store i64 0, ptr %i.ah, align 16, !dbg !9808
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !9808
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !9808
  store i32 -1, ptr %i.ai, align 8, !dbg !9808
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !9808
  store i64 1024, ptr %i.aj, align 16, !dbg !9808
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !9808
  store i64 25165824, ptr %i.ak, align 8, !dbg !9808
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304, !dbg !9808
  store i64 16777216, ptr %i.al, align 16, !dbg !9808
  store i32 0, ptr %2, align 8, !dbg !9808
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 364, !dbg !9808
  store i16 256, ptr %3, align 4, !dbg !9808
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !9808
  store i64 3, ptr %i.am, align 8, !dbg !9808
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !9808
  store double 1.000000e+00, ptr %i.an, align 16, !dbg !9808
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !9808
  store i64 3, ptr %i.ao, align 8, !dbg !9808
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !9808
  store i64 25, ptr %i.ap, align 16, !dbg !9808
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !9808
  store i64 3, ptr %i.aq, align 8, !dbg !9808
  store i128 0, ptr %0, align 16, !dbg !9808
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 366, !dbg !9808
  store i16 0, ptr %4, align 2, !dbg !9808
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9808
  store i64 0, ptr %i.ar, align 16, !dbg !9808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9799
  ret void, !dbg !9809

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.b
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !9808
  unreachable, !dbg !9808

bb.h:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.i unwind label %bb.g, !dbg !9799

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %bb.j unwind label %bb.g, !dbg !9799

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.e, !dbg !9808
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quics_1__NtBa_12QuicSettingsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1k_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9812 {
bb.a:
    #dbg_value(ptr %0, !9822, !DIExpression(), !9825)
    #dbg_value(ptr %1, !9823, !DIExpression(), !9825)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 19), !dbg !9826
  ret i1 %i.a, !dbg !9827
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labelsNtB5_29QuicInvalidInitialPacketErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9832 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !9838, !DIExpression(), !9849)
    #dbg_value(ptr %1, !9839, !DIExpression(), !9849)
    #dbg_value(ptr %1, !9850, !DIExpression(), !9859)
  %i.c = load i8, ptr %0, align 1, !dbg !9863, !range !1550, !noundef !560 ; 3 uses
  %i.d = icmp ne i8 %i.c, 8, !dbg !9863
  tail call void @llvm.assume(i1 %i.d), !dbg !9863
  %i.e = add nsw i8 %i.c, -6, !dbg !9863
  %i.f = icmp samesign ugt i8 %i.c, 5, !dbg !9863
  %narrow = select i1 %i.f, i8 %i.e, i8 2, !dbg !9863
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ], !dbg !9864

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !9865

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 21), !dbg !9866
  br label %bb.h, !dbg !9866

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 22), !dbg !9867
  br label %bb.h, !dbg !9867

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9868
    #dbg_value(ptr %0, !9840, !DIExpression(), !9861)
  store ptr %0, ptr %i.b, align 8, !dbg !9868
    #dbg_value(ptr %i.b, !9842, !DIExpression(), !9862)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9869
  store ptr %i.b, ptr %i.a, align 8, !dbg !9869
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9869
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche6packet4TypeNtB6_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !9869
    #dbg_value(ptr @71, !9854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9859)
    #dbg_value(ptr %i.a, !9854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9859)
  %i.i = load ptr, ptr %1, align 8, !dbg !9870, !nonnull !560, !noundef !560
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9870
  %i.k = load ptr, ptr %i.j, align 8, !dbg !9870, !nonnull !560, !align !1165, !noundef !560
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @71, ptr noundef nonnull %i.a), !dbg !9871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9872
  br label %bb.h, !dbg !9872

bb.f:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 21), !dbg !9873
  br label %bb.h, !dbg !9873

bb.g:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 16), !dbg !9874
  br label %bb.h, !dbg !9874

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  ret i1 %.sroa.0.0.in, !dbg !9875
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9876 {
bb.a:
    #dbg_value(ptr %0, !9883, !DIExpression(), !9886)
    #dbg_value(ptr %1, !9884, !DIExpression(), !9886)
  %i.a = load ptr, ptr %0, align 8, !dbg !9893, !nonnull !560, !align !1165, !noundef !560 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !9894
  %.val = load ptr, ptr %i.b, align 8, !dbg !9894, !nonnull !560, !noundef !560
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !9894
  %.val2 = load i64, ptr %i.c, align 8, !dbg !9894, !noundef !560
    #dbg_value(ptr poison, !9887, !DIExpression(), !9879)
    #dbg_value(ptr %1, !9891, !DIExpression(), !9879)
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9895
  ret i1 %i.d, !dbg !9896
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsa2e0UnRrdBM_12tokio_quiche8settings3tls15CertificateKindNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9897 {
bb.a:
    #dbg_value(ptr %0, !9904, !DIExpression(), !9909)
    #dbg_value(ptr %1, !9905, !DIExpression(), !9909)
  %i.a = load ptr, ptr %0, align 8, !dbg !9916, !nonnull !560, !noundef !560
  %.val = load i8, ptr %i.a, align 1, !dbg !9917, !range !1285, !noundef !560
    #dbg_value(ptr poison, !9910, !DIExpression(), !9900)
    #dbg_value(ptr %1, !9914, !DIExpression(), !9900)
  %i.b = trunc nuw i8 %.val to i1, !dbg !9918     ; 2 uses
  %..i = select i1 %i.b, i64 12, i64 4, !dbg !9919
  %.3.i = select i1 %i.b, ptr @83, ptr @82, !dbg !9919
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.3.i, i64 noundef %..i), !dbg !9918
  ret i1 %i.c, !dbg !9920
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsa2e0UnRrdBM_12tokio_quiche8settings3tls19TlsCertificatePathsNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9922 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !9937, !DIExpression(), !9942)
    #dbg_value(ptr %1, !9938, !DIExpression(), !9942)
  %i.b = load ptr, ptr %0, align 8, !dbg !9950, !nonnull !560, !align !1165, !noundef !560 ; 3 uses
    #dbg_value(ptr %i.b, !9943, !DIExpression(), !9925)
    #dbg_value(ptr %1, !9947, !DIExpression(), !9925)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9952, !noalias !9949
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9952
  store ptr %i.d, ptr %i.a, align 8, !dbg !9952, !noalias !9949
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 11, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77), !dbg !9953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9954, !noalias !9949
  ret i1 %i.e, !dbg !9955
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv6AddrNtB6_7Display3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9956 {
bb.a:
    #dbg_value(ptr %0, !9959, !DIExpression(), !9964)
    #dbg_value(ptr %1, !9960, !DIExpression(), !9964)
  %i.a = load ptr, ptr %0, align 8, !dbg !9965, !nonnull !560, !noundef !560
  %i.b = tail call noundef zeroext i1 @_RNvXsj_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_8Ipv6AddrNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9966
  ret i1 %i.b, !dbg !9967
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labels29QuicInvalidInitialPacketErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9968 {
bb.a:
    #dbg_value(ptr %0, !9972, !DIExpression(), !9975)
    #dbg_value(ptr %1, !9973, !DIExpression(), !9975)
  %i.a = load ptr, ptr %0, align 8, !dbg !9976, !nonnull !560, !noundef !560
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labelsNtB5_29QuicInvalidInitialPacketErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9977
  ret i1 %i.b, !dbg !9978
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsa2e0UnRrdBM_12tokio_quiche(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 !dbg !9980 {
bb.a:
    #dbg_value(ptr %0, !10006, !DIExpression(), !10014)
    #dbg_value(ptr %0, !10015, !DIExpression(), !10021)
    #dbg_value(ptr %1, !10007, !DIExpression(), !10014)
    #dbg_value(ptr %1, !10015, !DIExpression(), !10023)
    #dbg_value(i64 %2, !10008, !DIExpression(), !10014)
    #dbg_value(i64 0, !10009, !DIExpression(), !10024)
  %i.a = icmp eq i64 %2, 0, !dbg !10068
  br i1 %i.a, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsa2e0UnRrdBM_12tokio_quiche.exit.thread, label %.lr.ph, !dbg !10068

bb.b:                                             ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsa2e0UnRrdBM_12tokio_quiche.exit
  %i.b = add nuw i64 %.sroa.01.014, 1, !dbg !10069 ; 2 uses
    #dbg_value(i64 %i.b, !10009, !DIExpression(), !10024)
  %exitcond.not = icmp eq i64 %i.b, %2, !dbg !10068
  br i1 %exitcond.not, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsa2e0UnRrdBM_12tokio_quiche.exit.thread, label %.lr.ph, !dbg !10068

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.014 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
    #dbg_value(i64 %.sroa.01.014, !10009, !DIExpression(), !10024)
    #dbg_value(i64 %.sroa.01.014, !10018, !DIExpression(), !10021)
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.014, !dbg !10070 ; 2 uses
    #dbg_value(i64 %.sroa.01.014, !10018, !DIExpression(), !10023)
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.014, !dbg !10071 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16, !dbg !10072
  %.val10 = load i64, ptr %i.e, align 8, !dbg !10072, !noundef !560 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16, !dbg !10072
end_hunk_0
