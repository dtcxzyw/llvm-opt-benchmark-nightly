Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.11?download=true
inline.NumInlined: 1088
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(ptr %0, !24183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24204)
    #dbg_value(ptr %0, !24205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24209)
    #dbg_value(ptr %0, !24210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24215)
    #dbg_value(ptr %0, !24216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24223)
    #dbg_value(i64 %1, !24183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24204)
    #dbg_value(i64 %1, !24205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24209)
    #dbg_value(i64 %1, !24210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24215)
    #dbg_value(i64 %1, !24216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24223)
    #dbg_value(ptr %2, !24184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24204)
    #dbg_value(i64 %3, !24184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24204)
    #dbg_value(i1 %4, !24185, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24204)
    #dbg_value(ptr %5, !24186, !DIExpression(), !24204)
    #dbg_declare(ptr %i.b, !24191, !DIExpression(), !24224)
    #dbg_declare(ptr %i.a, !24193, !DIExpression(), !24225)
    #dbg_value(i64 4611686018427387904, !24226, !DIExpression(), !24233)
    #dbg_value(i64 64, !24236, !DIExpression(), !24240)
    #dbg_value(i64 %1, !24187, !DIExpression(), !24241)
    #dbg_value(i64 %1, !24234, !DIExpression(), !24242)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !24489
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !24489

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !24227, !DIExpression(), !24233)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !24490
    #dbg_value(i64 %i.d, !24228, !DIExpression(), !24243)
  %i.e = urem i64 4611686018427387904, %1, !dbg !24491
    #dbg_value(i64 %i.e, !24229, !DIExpression(), !24244)
  %.not = icmp ne i64 %i.e, 0, !dbg !24492
  %i.f = zext i1 %.not to i64, !dbg !24492
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !24492 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !24188, !DIExpression(), !24245)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !24493
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !24493

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !24494
    #dbg_value(i64 %i.h, !24189, !DIExpression(), !24246)
  br label %bb.e, !dbg !24494

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !24495
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !24496
    #dbg_value(i64 %i.j, !24237, !DIExpression(), !24240)
    #dbg_value(ptr undef, !6575, !DIExpression(DW_OP_deref), !23934)
    #dbg_value(ptr undef, !6576, !DIExpression(DW_OP_deref), !23934)
  %..i = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !24497
    #dbg_value(i64 %..i, !24189, !DIExpression(), !24246)
  br label %bb.e, !dbg !24498

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !24245 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !24189, !DIExpression(), !24246)
    #dbg_value(i64 0, !24190, !DIExpression(), !24247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24499
    #dbg_value(ptr %i.b, !24192, !DIExpression(), !24248)
    #dbg_value(ptr %i.b, !24249, !DIExpression(), !24253)
    #dbg_value(ptr %i.b, !24249, !DIExpression(), !24255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24500
    #dbg_value(ptr %i.a, !24194, !DIExpression(), !24256)
    #dbg_value(ptr %i.a, !24257, !DIExpression(), !24261)
    #dbg_value(ptr %i.a, !24257, !DIExpression(), !24263)
    #dbg_value(i64 0, !24195, !DIExpression(), !24264)
    #dbg_value(i64 1, !24196, !DIExpression(), !24265)
  %.not27.i80130 = icmp ugt i64 %.sroa.01.0, 2
  %.not27.i80135 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !24501

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !24264 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ], !dbg !24256 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.y ], !dbg !24246 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !24190, !DIExpression(), !24247)
    #dbg_value(i64 %.sroa.09.0, !24195, !DIExpression(), !24264)
    #dbg_value(i64 %.sroa.023.0, !24196, !DIExpression(), !24265)
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !24502 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !24502

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ 0, %bb.f ], !dbg !24266 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ 1, %bb.f ], !dbg !24266 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !24197, !DIExpression(), !24266)
    #dbg_value(i8 %.sroa.021.0, !24198, !DIExpression(), !24266)
    #dbg_value(i64 %.sroa.02.0, !24190, !DIExpression(), !24247)
    #dbg_value(i64 %.sroa.023.0, !24196, !DIExpression(), !24265)
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !24503
  br i1 %i.l, label %.lr.ph111, label %._crit_edge, !dbg !24503

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !24206, !DIExpression(), !24209)
    #dbg_value(i64 %.sroa.09.0, !24211, !DIExpression(), !24215)
    #dbg_value(i64 %.sroa.09.0, !24267, !DIExpression(), !24272)
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !24504 ; 11 uses
    #dbg_value(i64 %i.m, !24212, !DIExpression(), !24273)
    #dbg_value(i64 %i.m, !24269, !DIExpression(), !24272)
    #dbg_value(ptr %0, !24268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24272)
    #dbg_value(i64 %1, !24268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24272)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !24505 ; 11 uses
    #dbg_value(ptr %i.n, !24274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23943)
    #dbg_value(i64 %i.m, !24274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23943)
    #dbg_value(ptr %2, !24277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23943)
    #dbg_value(i64 %3, !24277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23943)
    #dbg_value(i64 %.sroa.01.0, !24278, !DIExpression(), !23943)
    #dbg_value(i64 %.sroa.01.0, !24286, !DIExpression(), !23946)
    #dbg_value(i1 %4, !24279, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23943)
    #dbg_value(ptr %5, !24280, !DIExpression(), !23943)
    #dbg_value(i64 %i.m, !24281, !DIExpression(), !23947)
    #dbg_value(i64 %i.m, !24287, !DIExpression(), !23949)
    #dbg_value(i64 %i.m, !24287, !DIExpression(), !23946)
  %.not.i79 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !24506
  br i1 %.not.i79, label %bb.i, label %bb.j, !dbg !24506

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread133, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !24507

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.n, !24289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23955)
    #dbg_value(ptr %i.n, !24297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23958)
    #dbg_value(ptr %i.n, !24304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23962)
    #dbg_value(ptr %i.n, !24297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23964)
    #dbg_value(ptr %i.n, !24304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23966)
    #dbg_value(ptr %i.n, !24297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23968)
    #dbg_value(ptr %i.n, !24304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23970)
    #dbg_value(ptr %i.n, !24297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23972)
    #dbg_value(ptr %i.n, !24304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23974)
    #dbg_value(ptr %i.n, !24297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23976)
    #dbg_value(ptr %i.n, !24304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23978)
    #dbg_value(ptr %i.n, !24297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23980)
    #dbg_value(ptr %i.n, !24304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23982)
    #dbg_value(i64 %i.m, !24289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23955)
    #dbg_value(i64 %i.m, !24297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23958)
    #dbg_value(i64 %i.m, !24304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23962)
    #dbg_value(i64 %i.m, !24297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23964)
    #dbg_value(i64 %i.m, !24304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23966)
    #dbg_value(i64 %i.m, !24297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23968)
    #dbg_value(i64 %i.m, !24304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23970)
    #dbg_value(i64 %i.m, !24297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23972)
    #dbg_value(i64 %i.m, !24304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23974)
    #dbg_value(i64 %i.m, !24297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23976)
    #dbg_value(i64 %i.m, !24304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23978)
    #dbg_value(i64 %i.m, !24297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23980)
    #dbg_value(i64 %i.m, !24304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23982)
    #dbg_value(ptr %5, !24292, !DIExpression(), !23955)
    #dbg_value(i64 1, !24300, !DIExpression(), !23958)
    #dbg_value(i64 1, !24310, !DIExpression(), !23962)
    #dbg_value(i64 0, !24300, !DIExpression(), !23964)
    #dbg_value(i64 0, !24310, !DIExpression(), !23966)
    #dbg_value(i64 %i.m, !24293, !DIExpression(), !23983)
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !24508
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.k, !dbg !24508

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !24294, !DIExpression(), !23984)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !24509
    #dbg_value(ptr %i.p, !6600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23986)
    #dbg_value(ptr %i.n, !6600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23986)
    #dbg_value(ptr poison, !6606, !DIExpression(), !23986)
    #dbg_value(ptr %i.p, !6611, !DIExpression(), !23988)
    #dbg_value(ptr %i.n, !6613, !DIExpression(), !23988)
    #dbg_declare(ptr poison, !6621, !DIExpression(), !23990)
  %i.q = tail call noundef i8 @_RNvXs_NtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygonNtB4_4EdgeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n), !dbg !24510, !noalias !24318 ; 2 uses
    #dbg_value(i8 %i.q, !6636, !DIExpression(), !23994)
  %.not.i.i89 = icmp ne i8 %i.q, -2, !dbg !24511
  %i.r = icmp slt i8 %i.q, 0, !dbg !24512
  %.sroa.0.0.i.i90 = and i1 %.not.i.i89, %i.r, !dbg !24512 ; 2 uses
    #dbg_value(i1 %.sroa.0.0.i.i90, !24295, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23995)
    #dbg_value(i64 2, !24294, !DIExpression(), !23984)
    #dbg_value(i64 2, !24294, !DIExpression(), !23984)
  %.not118 = icmp eq i64 %i.m, 2, !dbg !24513     ; 2 uses
  br i1 %.sroa.0.0.i.i90, label %.preheader, label %.preheader99, !dbg !24514

.preheader99:                                     ; preds = %bb.k
  br i1 %.not118, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread, label %.lr.ph, !dbg !24515

.preheader:                                       ; preds = %bb.k
  br i1 %.not118, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread133, label %.lr.ph105, !dbg !24516

.lr.ph:                                           ; preds = %.preheader99, %bb.l
  %.sroa.01.0.i.i101 = phi i64 [ %i.x, %bb.l ], [ 2, %.preheader99 ] ; 4 uses
    #dbg_value(i64 %.sroa.01.0.i.i101, !24294, !DIExpression(), !23984)
    #dbg_value(i64 %.sroa.01.0.i.i101, !24301, !DIExpression(), !23976)
    #dbg_value(i64 %.sroa.01.0.i.i101, !24311, !DIExpression(), !23978)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i101, !dbg !24517
    #dbg_value(i64 %.sroa.01.0.i.i101, !24301, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23980)
    #dbg_value(i64 %.sroa.01.0.i.i101, !24311, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23982)
  %i.t = getelementptr [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i101, !dbg !24518
  %i.u = getelementptr i8, ptr %i.t, i64 -16, !dbg !24518
    #dbg_value(ptr %i.s, !6600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23997)
    #dbg_value(ptr %i.u, !6600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23997)
    #dbg_value(ptr poison, !6606, !DIExpression(), !23997)
    #dbg_value(ptr %i.s, !6611, !DIExpression(), !23999)
    #dbg_value(ptr %i.u, !6613, !DIExpression(), !23999)
    #dbg_declare(ptr poison, !6621, !DIExpression(), !24001)
  %i.v = tail call noundef i8 @_RNvXs_NtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygonNtB4_4EdgeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.u), !dbg !24519, !noalias !24318 ; 2 uses
    #dbg_value(i8 %i.v, !6636, !DIExpression(), !24002)
  %.not.i.i87 = icmp ne i8 %i.v, -2, !dbg !24520
  %i.w = icmp slt i8 %i.v, 0, !dbg !24521
  %.sroa.0.0.i.i88 = and i1 %.not.i.i87, %i.w, !dbg !24521
  br i1 %.sroa.0.0.i.i88, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %bb.l, !dbg !24522

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.01.0.i.i101, 1, !dbg !24523 ; 2 uses
    #dbg_value(i64 %i.x, !24294, !DIExpression(), !23984)
  %exitcond.not = icmp eq i64 %i.x, %i.m, !dbg !24515
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %.lr.ph, !dbg !24515

.lr.ph105:                                        ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i104 = phi i64 [ %i.ad, %bb.m ], [ 2, %.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.1.i.i104, !24294, !DIExpression(), !23984)
    #dbg_value(i64 %.sroa.01.1.i.i104, !24301, !DIExpression(), !23968)
    #dbg_value(i64 %.sroa.01.1.i.i104, !24311, !DIExpression(), !23970)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i104, !dbg !24524
    #dbg_value(i64 %.sroa.01.1.i.i104, !24301, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23972)
    #dbg_value(i64 %.sroa.01.1.i.i104, !24311, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !23974)
  %i.z = getelementptr [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i104, !dbg !24525
  %i.aa = getelementptr i8, ptr %i.z, i64 -16, !dbg !24525
    #dbg_value(ptr %i.y, !6600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24004)
    #dbg_value(ptr %i.aa, !6600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24004)
    #dbg_value(ptr poison, !6606, !DIExpression(), !24004)
    #dbg_value(ptr %i.y, !6611, !DIExpression(), !24006)
    #dbg_value(ptr %i.aa, !6613, !DIExpression(), !24006)
    #dbg_declare(ptr poison, !6621, !DIExpression(), !24008)
  %i.ab = tail call noundef i8 @_RNvXs_NtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygonNtB4_4EdgeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.aa), !dbg !24526, !noalias !24318 ; 2 uses
    #dbg_value(i8 %i.ab, !6636, !DIExpression(), !24009)
  %.not.i.i85 = icmp ne i8 %i.ab, -2, !dbg !24527
  %i.ac = icmp slt i8 %i.ab, 0, !dbg !24528
  %.sroa.0.0.i.i86 = and i1 %.not.i.i85, %i.ac, !dbg !24528
  br i1 %.sroa.0.0.i.i86, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !24529

bb.m:                                             ; preds = %.lr.ph105
  %i.ad = add nuw nsw i64 %.sroa.01.1.i.i104, 1, !dbg !24530 ; 2 uses
    #dbg_value(i64 %i.ad, !24294, !DIExpression(), !23984)
  %exitcond121.not = icmp eq i64 %i.ad, %i.m, !dbg !24516
  br i1 %exitcond121.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %.lr.ph105, !dbg !24516

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph105
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i104, %.lr.ph105 ], [ %i.m, %bb.m ], [ %.sroa.01.0.i.i101, %.lr.ph ], [ %i.m, %bb.l ], !dbg !24531 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !24282, !DIExpression(), !24010)
    #dbg_value(i64 %.sroa.0.0.i.i, !24320, !DIExpression(), !24013)
    #dbg_value(i1 poison, !24283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24010)
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !24532
  tail call void @llvm.assume(i1 %i.ae), !dbg !24533
  %.not27.i80 = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !24534
  br i1 %.not27.i80, label %bb.i, label %bb.n, !dbg !24534

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread133: ; preds = %.preheader
    #dbg_value(i64 2, !24282, !DIExpression(), !24010)
    #dbg_value(i64 2, !24320, !DIExpression(), !24013)
    #dbg_value(i1 poison, !24283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24010)
  br i1 %.not27.i80135, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i, !dbg !24534

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread: ; preds = %.preheader99
    #dbg_value(i64 2, !24282, !DIExpression(), !24010)
    #dbg_value(i64 2, !24320, !DIExpression(), !24013)
    #dbg_value(i1 poison, !24283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24010)
  br i1 %.not27.i80130, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24534

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i
    #dbg_value(i1 %.sroa.0.0.i.i90, !24283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24010)
  br i1 %.sroa.0.0.i.i90, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24535

bb.o:                                             ; preds = %bb.i
    #dbg_value(ptr undef, !6575, !DIExpression(DW_OP_deref), !24015)
    #dbg_value(ptr undef, !6576, !DIExpression(DW_OP_deref), !24015)
  %..i84 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0), !dbg !24536
    #dbg_value(i64 %..i84, !24322, !DIExpression(), !24018)
  %i.af = shl nuw nsw i64 %..i84, 1, !dbg !24537
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24538

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !24286, !DIExpression(), !23949)
    #dbg_value(ptr undef, !6575, !DIExpression(DW_OP_deref), !24020)
    #dbg_value(ptr undef, !6576, !DIExpression(DW_OP_deref), !24020)
  %..i83 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32), !dbg !24539 ; 2 uses
    #dbg_value(i64 %..i83, !24284, !DIExpression(), !24021)
    #dbg_value(i64 %..i83, !24320, !DIExpression(), !24023)
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 4 %i.n, i64 noundef %..i83, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #23, !dbg !24540, !inline_history !24024
  %i.ag = shl nuw nsw i64 %..i83, 1, !dbg !24541
  %i.ah = or disjoint i64 %i.ag, 1, !dbg !24541
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24538

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !24542
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, !dbg !24542

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i ], [ %i.be, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod149 = trunc i64 %i.aq to i1, !dbg !24542
  tail call void @llvm.assume(i1 %lcmp.mod149), !dbg !24542
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !24331, !DIExpression(), !24035)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.026.i.i.epil.init), !24343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24038)
  %i.ai = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !24543
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.026.i.i.epil.init, !dbg !24544 ; 2 uses
    #dbg_value(ptr %i.aj, !24343, !DIExpression(), !24038)
  %i.ak = getelementptr [16 x i8], ptr %i.ar, i64 %i.ai, !dbg !24545 ; 2 uses
    #dbg_value(ptr %i.ak, !24346, !DIExpression(), !24038)
    #dbg_value(ptr %i.aj, !24348, !DIExpression(), !24041)
    #dbg_value(ptr %i.ak, !24351, !DIExpression(), !24041)
    #dbg_value(ptr %i.aj, !24353, !DIExpression(), !24044)
    #dbg_value(ptr %i.aj, !24359, !DIExpression(), !24050)
    #dbg_value(ptr %i.ak, !24356, !DIExpression(), !24044)
    #dbg_value(ptr %i.ak, !24362, !DIExpression(), !24050)
    #dbg_value(i64 1, !24357, !DIExpression(), !24044)
    #dbg_value(i64 1, !24363, !DIExpression(), !24050)
    #dbg_value(ptr %i.aj, !24364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24051)
    #dbg_value(i64 1, !24364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24051)
    #dbg_value(i64 16, !24365, !DIExpression(), !24052)
    #dbg_value(i64 16, !24366, !DIExpression(), !24053)
    #dbg_value(ptr %i.aj, !4396, !DIExpression(), !24055)
    #dbg_value(ptr %i.ak, !4397, !DIExpression(), !24055)
    #dbg_value(i64 16, !4398, !DIExpression(), !24055)
    #dbg_value(i64 16, !4399, !DIExpression(), !24056)
    #dbg_value(i64 0, !4401, !DIExpression(), !24057)
    #dbg_value(i64 2, !4400, !DIExpression(), !24058)
    #dbg_value(i64 2, !4402, !DIExpression(), !24059)
    #dbg_value(ptr %i.aj, !4387, !DIExpression(), !24061)
    #dbg_value(ptr %i.aj, !4439, !DIExpression(), !24063)
    #dbg_value(ptr %i.ak, !4388, !DIExpression(), !24061)
    #dbg_value(ptr %i.ak, !4439, !DIExpression(), !24065)
    #dbg_value(i64 2, !4389, !DIExpression(), !24061)
    #dbg_value(i64 2, !4390, !DIExpression(), !24066)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24067)
    #dbg_value(i64 1, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24067)
    #dbg_value(i64 0, !4392, !DIExpression(), !24068)
    #dbg_value(i64 0, !4442, !DIExpression(), !24063)
    #dbg_value(i64 0, !4442, !DIExpression(), !24065)
    #dbg_value(ptr %i.aj, !4360, !DIExpression(), !24070)
    #dbg_value(ptr %i.ak, !4377, !DIExpression(), !24070)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24067)
    #dbg_value(i64 1, !4392, !DIExpression(), !24068)
    #dbg_value(i64 1, !4442, !DIExpression(), !24063)
    #dbg_value(i64 1, !4442, !DIExpression(), !24065)
    #dbg_value(ptr %i.aj, !4360, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24070)
    #dbg_value(ptr %i.ak, !4377, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24070)
  %i.al = load <2 x i64>, ptr %i.aj, align 4, !dbg !24546, !alias.scope !24369, !noalias !24370
  %i.am = load <2 x i64>, ptr %i.ak, align 4, !dbg !24547, !alias.scope !24371, !noalias !24372
  store <2 x i64> %i.am, ptr %i.aj, align 4, !dbg !24548, !alias.scope !24369, !noalias !24370
  store <2 x i64> %i.al, ptr %i.ak, align 4, !dbg !24549, !alias.scope !24371, !noalias !24372
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !24331, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24035)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24550

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i9598 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread ], [ %.sroa.0.0.i.i131138142, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i131138142, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i.i9598, 1, !dbg !24550
  %i.ao = or disjoint i64 %i.an, 1, !dbg !24550
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24551

bb.q:                                             ; preds = %bb.n
    #dbg_value(ptr %i.n, !24335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24081)
    #dbg_value(ptr %i.n, !24373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24085)
    #dbg_value(i64 %.sroa.0.0.i.i, !24335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24081)
    #dbg_value(i64 %.sroa.0.0.i.i, !24373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24085)
  %i.ap = lshr i64 %.sroa.0.0.i.i, 1, !dbg !24552 ; 2 uses
    #dbg_value(i64 %i.ap, !24336, !DIExpression(), !24086)
    #dbg_value(ptr %i.n, !24337, !DIExpression(), !24087)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.0.i.i), !24338, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24087)
    #dbg_value(ptr %i.n, !24339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24088)
    #dbg_value(i64 %i.ap, !24339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24088)
    #dbg_value(!DIArgList(ptr %i.n, i64 0, i64 %i.ap, i64 %.sroa.0.0.i.i), !24340, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24088)
    #dbg_value(i64 %i.ap, !24340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24382), !dbg !24553, !noalias !24318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24383), !dbg !24553, !noalias !24318
    #dbg_value(ptr %i.n, !24326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24089)
    #dbg_value(i64 %i.ap, !24326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24089)
    #dbg_value(!DIArgList(ptr %i.n, i64 0, i64 %i.ap, i64 %.sroa.0.0.i.i), !24327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24089)
    #dbg_value(i64 %i.ap, !24327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24089)
    #dbg_value(i64 %i.ap, !24328, !DIExpression(), !24089)
    #dbg_value(ptr %i.n, !24329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24090)
    #dbg_value(i64 %i.ap, !24329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24090)
    #dbg_value(i64 0, !24331, !DIExpression(), !24035)
  %.not.i.i = icmp eq i64 %i.ap, 0, !dbg !24542
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i, !dbg !24542

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread133, %bb.q
  %i.aq = phi i64 [ %i.ap, %bb.q ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread133 ] ; 4 uses
  %.sroa.0.0.i.i131138142 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread133 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i131138142, !dbg !24554 ; 3 uses
    #dbg_value(ptr %i.ar, !24338, !DIExpression(), !24087)
    #dbg_value(!DIArgList(ptr %i.ar, i64 0, i64 %i.aq), !24340, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24088)
    #dbg_value(!DIArgList(ptr %i.ar, i64 0, i64 %i.aq), !24327, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24089)
  %xtraiter = and i64 %i.aq, 1, !dbg !24542
  %i.as = icmp eq i64 %i.aq, 1, !dbg !24542
  br i1 %i.as, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new, !dbg !24542

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i
  %unroll_iter = and i64 %i.aq, 9223372036854775806, !dbg !24542
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i, !dbg !24542

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new ], [ %i.be, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4Edge12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !24331, !DIExpression(), !24035)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.026.i.i), !24343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24038)
  %i.at = xor i64 %.sroa.0.026.i.i, -1, !dbg !24543
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.026.i.i, !dbg !24544 ; 2 uses
    #dbg_value(ptr %i.au, !24343, !DIExpression(), !24038)
  %i.av = getelementptr [16 x i8], ptr %i.ar, i64 %i.at, !dbg !24545 ; 2 uses
    #dbg_value(ptr %i.av, !24346, !DIExpression(), !24038)
    #dbg_value(ptr %i.au, !24348, !DIExpression(), !24041)
    #dbg_value(ptr %i.av, !24351, !DIExpression(), !24041)
    #dbg_value(ptr %i.au, !24353, !DIExpression(), !24044)
    #dbg_value(ptr %i.au, !24359, !DIExpression(), !24050)
    #dbg_value(ptr %i.av, !24356, !DIExpression(), !24044)
    #dbg_value(ptr %i.av, !24362, !DIExpression(), !24050)
    #dbg_value(i64 1, !24357, !DIExpression(), !24044)
    #dbg_value(i64 1, !24363, !DIExpression(), !24050)
    #dbg_value(ptr %i.au, !24364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24051)
    #dbg_value(i64 1, !24364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24051)
    #dbg_value(i64 16, !24365, !DIExpression(), !24052)
    #dbg_value(i64 16, !24366, !DIExpression(), !24053)
    #dbg_value(ptr %i.au, !4396, !DIExpression(), !24055)
    #dbg_value(ptr %i.av, !4397, !DIExpression(), !24055)
    #dbg_value(i64 16, !4398, !DIExpression(), !24055)
    #dbg_value(i64 16, !4399, !DIExpression(), !24056)
    #dbg_value(i64 0, !4401, !DIExpression(), !24057)
    #dbg_value(i64 2, !4400, !DIExpression(), !24058)
    #dbg_value(i64 2, !4402, !DIExpression(), !24059)
    #dbg_value(ptr %i.au, !4387, !DIExpression(), !24061)
    #dbg_value(ptr %i.au, !4439, !DIExpression(), !24063)
    #dbg_value(ptr %i.av, !4388, !DIExpression(), !24061)
    #dbg_value(ptr %i.av, !4439, !DIExpression(), !24065)
    #dbg_value(i64 2, !4389, !DIExpression(), !24061)
    #dbg_value(i64 2, !4390, !DIExpression(), !24066)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24067)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24067)
    #dbg_value(i64 1, !4392, !DIExpression(), !24068)
    #dbg_value(i64 1, !4442, !DIExpression(), !24063)
    #dbg_value(i64 1, !4442, !DIExpression(), !24065)
    #dbg_value(ptr %i.au, !4360, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24070)
    #dbg_value(ptr %i.av, !4377, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24070)
  %i.aw = load <2 x i64>, ptr %i.au, align 4, !dbg !24546, !alias.scope !24369, !noalias !24370
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTTllEBX_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB24_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %.val3.i89 = load ptr, ptr %.val30.i, align 8, !dbg !25405, !noalias !25173, !nonnull !1846, !noundef !1846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25174), !dbg !25405, !noalias !25175
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24704)
    #dbg_value(ptr %i.n, !6764, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !24704)
    #dbg_value(ptr %i.n, !6760, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !24705)
    #dbg_value(ptr %i.n, !6761, !DIExpression(DW_OP_plus_uconst, 20, DW_OP_stack_value), !24705)
    #dbg_value(ptr %i.n, !6762, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !24705)
    #dbg_value(ptr %i.n, !6763, !DIExpression(DW_OP_plus_uconst, 28, DW_OP_stack_value), !24705)
  %i.p = load i8, ptr %.val3.i89, align 1, !dbg !25406, !range !4758, !noalias !25176, !noundef !1846
  %i.q = trunc nuw i8 %i.p to i1, !dbg !25406     ; 3 uses
  br i1 %i.q, label %bb.m, label %bb.l, !dbg !25406

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 28, !dbg !25407
    #dbg_value(ptr %i.r, !6763, !DIExpression(), !24705)
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 20, !dbg !25408
    #dbg_value(ptr %i.s, !6761, !DIExpression(), !24705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25177), !dbg !25409, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25178), !dbg !25409, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24710)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24710)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24712)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25179), !dbg !25410, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25180), !dbg !25410, !noalias !25175
    #dbg_value(ptr %i.r, !6745, !DIExpression(), !24717)
    #dbg_value(ptr %i.s, !6741, !DIExpression(), !24717)
  %i.t = load i32, ptr %i.r, align 4, !dbg !25411, !alias.scope !25181, !noalias !25182, !noundef !1846
  %i.u = load i32, ptr %i.s, align 4, !dbg !25412, !alias.scope !25183, !noalias !25184, !noundef !1846
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.u), !dbg !25413
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24719)
    #dbg_value(ptr %i.n, !6764, !DIExpression(), !24719)
    #dbg_value(ptr %i.n, !6760, !DIExpression(), !24720)
    #dbg_value(ptr %i.n, !6761, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24720)
    #dbg_value(ptr %i.n, !6762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24720)
    #dbg_value(ptr %i.n, !6763, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !24720)
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !25414
    #dbg_value(ptr %i.w, !6763, !DIExpression(), !24720)
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !25415
    #dbg_value(ptr %i.x, !6761, !DIExpression(), !24720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25185), !dbg !25416, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25186), !dbg !25416, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24725)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24725)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24727)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25187), !dbg !25417, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25188), !dbg !25417, !noalias !25175
    #dbg_value(ptr %i.w, !6745, !DIExpression(), !24732)
    #dbg_value(ptr %i.x, !6741, !DIExpression(), !24732)
  %i.y = load i32, ptr %i.w, align 4, !dbg !25418, !alias.scope !25189, !noalias !25190, !noundef !1846
  %i.z = load i32, ptr %i.x, align 4, !dbg !25419, !alias.scope !25191, !noalias !25192, !noundef !1846
  %i.aa = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.z), !dbg !25420
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92, !dbg !25421

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !25422
    #dbg_value(ptr %i.ab, !6749, !DIExpression(), !24700)
    #dbg_value(ptr %i.ab, !6764, !DIExpression(), !24704)
    #dbg_value(ptr %i.ab, !6760, !DIExpression(), !24705)
    #dbg_value(ptr %i.ab, !6761, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24705)
    #dbg_value(ptr %i.ab, !6762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24705)
    #dbg_value(ptr %i.ab, !6763, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !24705)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !25423
    #dbg_value(ptr %i.ac, !6762, !DIExpression(), !24705)
    #dbg_value(ptr %i.ac, !6763, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25193), !dbg !25424, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25194), !dbg !25424, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24739)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24739)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24741)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25195), !dbg !25425, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25196), !dbg !25425, !noalias !25175
    #dbg_value(ptr %i.ac, !6745, !DIExpression(), !24746)
    #dbg_value(ptr %i.ab, !6741, !DIExpression(), !24746)
  %i.ad = load i32, ptr %i.ac, align 4, !dbg !25426, !alias.scope !25197, !noalias !25198, !noundef !1846
  %i.ae = load i32, ptr %i.ab, align 4, !dbg !25427, !alias.scope !25199, !noalias !25200, !noundef !1846
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ae), !dbg !25413
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24719)
    #dbg_value(ptr %i.n, !6764, !DIExpression(), !24719)
    #dbg_value(ptr %i.n, !6760, !DIExpression(), !24720)
    #dbg_value(ptr %i.n, !6761, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24720)
    #dbg_value(ptr %i.n, !6762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24720)
    #dbg_value(ptr %i.n, !6763, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !24720)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !25428
    #dbg_value(ptr %i.ag, !6762, !DIExpression(), !24720)
    #dbg_value(ptr %i.ag, !6763, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25201), !dbg !25429, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25202), !dbg !25429, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24751)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24751)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24753)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25203), !dbg !25430, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25204), !dbg !25430, !noalias !25175
    #dbg_value(ptr %i.ag, !6745, !DIExpression(), !24758)
    #dbg_value(ptr %i.n, !6741, !DIExpression(), !24758)
  %i.ah = load i32, ptr %i.ag, align 4, !dbg !25431, !alias.scope !25205, !noalias !25206, !noundef !1846
  %i.ai = load i32, ptr %i.n, align 4, !dbg !25432, !alias.scope !25207, !noalias !25208, !noundef !1846
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ai), !dbg !25420
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92, !dbg !25421

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i3.i90 = phi i32 [ %i.af, %bb.m ], [ %i.v, %bb.l ]
  %.sroa.0.0.i4.i91 = phi i32 [ %i.aj, %bb.m ], [ %i.aa, %bb.l ], !dbg !25420
    #dbg_value(ptr undef, !6745, !DIExpression(), !24699)
    #dbg_value(ptr undef, !6741, !DIExpression(), !24699)
  %i.ak = icmp slt i32 %.sroa.0.0.i3.i90, %.sroa.0.0.i4.i91, !dbg !25433 ; 2 uses
    #dbg_value(i1 %i.ak, !25155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24759)
    #dbg_value(i64 2, !25154, !DIExpression(), !24691)
    #dbg_value(i64 2, !25154, !DIExpression(), !24691)
  %.not121 = icmp eq i64 %i.m, 2, !dbg !25434     ; 2 uses
  br i1 %i.ak, label %.preheader, label %.preheader101, !dbg !25435

.preheader101:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92
  br i1 %.not121, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread, label %.lr.ph, !dbg !25436

.lr.ph:                                           ; preds = %.preheader101
  br i1 %i.q, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader: ; preds = %.lr.ph
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.pre = load i32, ptr %.phi.trans.insert134, align 4, !dbg !25437, !alias.scope !25209, !noalias !25210
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.pre136 = load i32, ptr %.phi.trans.insert135, align 4, !dbg !25438, !alias.scope !25211, !noalias !25212
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88, !dbg !25439

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader: ; preds = %.lr.ph
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.pre139 = load i32, ptr %.phi.trans.insert138, align 4, !dbg !25440, !alias.scope !25213, !noalias !25214
  %.pre140 = load i32, ptr %.phi.trans.insert137, align 4, !dbg !25441, !alias.scope !25215, !noalias !25216
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us, !dbg !25439

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader, %bb.n
  %i.al = phi i32 [ %i.as, %bb.n ], [ %.pre140, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader ], !dbg !25441
  %i.am = phi i32 [ %i.ar, %bb.n ], [ %.pre139, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader ], !dbg !25440
  %.sroa.01.0.i.i103.us = phi i64 [ %i.aw, %bb.n ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.0.i.i103.us, !25154, !DIExpression(), !24691)
    #dbg_value(i64 %.sroa.01.0.i.i103.us, !25159, !DIExpression(), !24683)
    #dbg_value(i64 %.sroa.01.0.i.i103.us, !25163, !DIExpression(), !24685)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i103.us, !dbg !25442 ; 2 uses
  %i.ao = add nsw i64 %.sroa.01.0.i.i103.us, -1, !dbg !25443
    #dbg_value(i64 %i.ao, !25159, !DIExpression(), !24687)
    #dbg_value(i64 %i.ao, !25163, !DIExpression(), !24689)
  %i.ap = icmp ult i64 %i.ao, %i.m, !dbg !25444
  tail call void @llvm.assume(i1 %i.ap), !dbg !25445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25217), !dbg !25439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25218), !dbg !25439
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24786)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24786)
    #dbg_value(ptr poison, !6751, !DIExpression(DW_OP_deref, DW_OP_deref), !24787)
    #dbg_value(ptr %i.an, !6749, !DIExpression(), !24787)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24787)
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24789)
    #dbg_value(ptr %i.an, !6764, !DIExpression(), !24789)
    #dbg_value(ptr %i.an, !6760, !DIExpression(), !24790)
    #dbg_value(ptr %i.an, !6761, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24790)
    #dbg_value(ptr %i.an, !6762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24790)
    #dbg_value(ptr %i.an, !6763, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !24790)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !25446
    #dbg_value(ptr %i.aq, !6762, !DIExpression(), !24790)
    #dbg_value(ptr %i.aq, !6763, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25219), !dbg !25447, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25220), !dbg !25447, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24795)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24795)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24797)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25221), !dbg !25448, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25222), !dbg !25448, !noalias !25175
    #dbg_value(ptr %i.aq, !6745, !DIExpression(), !24802)
    #dbg_value(ptr %i.an, !6741, !DIExpression(), !24802)
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !25449, !alias.scope !25223, !noalias !25224, !noundef !1846 ; 2 uses
  %i.as = load i32, ptr %i.an, align 4, !dbg !25450, !alias.scope !25225, !noalias !25226, !noundef !1846 ; 2 uses
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.as), !dbg !25451
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24805)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6764, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24805)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24806)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !24806)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6762, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !24806)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6763, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !24806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25227), !dbg !25452, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25228), !dbg !25452, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24807)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24807)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24808)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25229), !dbg !25453, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25230), !dbg !25453, !noalias !25175
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !24809)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24809)
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.al), !dbg !25454
    #dbg_value(ptr undef, !6745, !DIExpression(), !24786)
    #dbg_value(ptr undef, !6741, !DIExpression(), !24786)
  %i.av = icmp slt i32 %i.at, %i.au, !dbg !25455
  br i1 %i.av, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %bb.n, !dbg !25439

bb.n:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us
  %i.aw = add nuw nsw i64 %.sroa.01.0.i.i103.us, 1, !dbg !25456 ; 2 uses
    #dbg_value(i64 %i.aw, !25154, !DIExpression(), !24691)
  %exitcond129.not = icmp eq i64 %i.aw, %i.m, !dbg !25436
  br i1 %exitcond129.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us, !dbg !25436

.preheader:                                       ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92
  br i1 %.not121, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163, label %.lr.ph107, !dbg !25457

.lr.ph107:                                        ; preds = %.preheader
  br i1 %i.q, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader: ; preds = %.lr.ph107
  %.phi.trans.insert142 = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.pre143 = load i32, ptr %.phi.trans.insert142, align 4, !dbg !25458, !alias.scope !25231, !noalias !25232
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.pre145 = load i32, ptr %.phi.trans.insert144, align 4, !dbg !25459, !alias.scope !25233, !noalias !25234
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25460

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader: ; preds = %.lr.ph107
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.phi.trans.insert147 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.pre148 = load i32, ptr %.phi.trans.insert147, align 4, !dbg !25461, !alias.scope !25235, !noalias !25236
  %.pre149 = load i32, ptr %.phi.trans.insert146, align 4, !dbg !25462, !alias.scope !25237, !noalias !25238
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us, !dbg !25460

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader, %bb.o
  %i.ax = phi i32 [ %i.be, %bb.o ], [ %.pre149, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader ], !dbg !25462
  %i.ay = phi i32 [ %i.bd, %bb.o ], [ %.pre148, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader ], !dbg !25461
  %.sroa.01.1.i.i106.us = phi i64 [ %i.bi, %bb.o ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.1.i.i106.us, !25154, !DIExpression(), !24691)
    #dbg_value(i64 %.sroa.01.1.i.i106.us, !25159, !DIExpression(), !24675)
    #dbg_value(i64 %.sroa.01.1.i.i106.us, !25163, !DIExpression(), !24677)
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i106.us, !dbg !25463 ; 2 uses
  %i.ba = add nsw i64 %.sroa.01.1.i.i106.us, -1, !dbg !25464
    #dbg_value(i64 %i.ba, !25159, !DIExpression(), !24679)
    #dbg_value(i64 %i.ba, !25163, !DIExpression(), !24681)
  %i.bb = icmp ult i64 %i.ba, %i.m, !dbg !25465
  tail call void @llvm.assume(i1 %i.bb), !dbg !25466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25239), !dbg !25460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25240), !dbg !25460
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24836)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24836)
    #dbg_value(ptr poison, !6751, !DIExpression(DW_OP_deref, DW_OP_deref), !24837)
    #dbg_value(ptr %i.az, !6749, !DIExpression(), !24837)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24837)
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24839)
    #dbg_value(ptr %i.az, !6764, !DIExpression(), !24839)
    #dbg_value(ptr %i.az, !6760, !DIExpression(), !24840)
    #dbg_value(ptr %i.az, !6761, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24840)
    #dbg_value(ptr %i.az, !6762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24840)
    #dbg_value(ptr %i.az, !6763, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !24840)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !25467
    #dbg_value(ptr %i.bc, !6762, !DIExpression(), !24840)
    #dbg_value(ptr %i.bc, !6763, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25241), !dbg !25468, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25242), !dbg !25468, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24845)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24845)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24847)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25243), !dbg !25469, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25244), !dbg !25469, !noalias !25175
    #dbg_value(ptr %i.bc, !6745, !DIExpression(), !24852)
    #dbg_value(ptr %i.az, !6741, !DIExpression(), !24852)
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !25470, !alias.scope !25245, !noalias !25246, !noundef !1846 ; 2 uses
  %i.be = load i32, ptr %i.az, align 4, !dbg !25471, !alias.scope !25247, !noalias !25248, !noundef !1846 ; 2 uses
  %i.bf = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.be), !dbg !25472
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24855)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6764, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24855)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24856)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !24856)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6762, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !24856)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6763, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !24856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25249), !dbg !25473, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25250), !dbg !25473, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24857)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24857)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24858)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25251), !dbg !25474, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25252), !dbg !25474, !noalias !25175
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !24859)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24859)
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.ax), !dbg !25475
    #dbg_value(ptr undef, !6745, !DIExpression(), !24836)
    #dbg_value(ptr undef, !6741, !DIExpression(), !24836)
  %i.bh = icmp slt i32 %i.bf, %i.bg, !dbg !25476
  br i1 %i.bh, label %bb.o, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !25460

bb.o:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us
  %i.bi = add nuw nsw i64 %.sroa.01.1.i.i106.us, 1, !dbg !25477 ; 2 uses
    #dbg_value(i64 %i.bi, !25154, !DIExpression(), !24691)
  %exitcond133.not = icmp eq i64 %i.bi, %i.m, !dbg !25457
  br i1 %exitcond133.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us, !dbg !25457

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader, %bb.p
  %i.bj = phi i32 [ %i.br, %bb.p ], [ %.pre136, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader ], !dbg !25438
  %i.bk = phi i32 [ %i.bq, %bb.p ], [ %.pre, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader ], !dbg !25437
  %.sroa.01.0.i.i103 = phi i64 [ %i.bv, %bb.p ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.0.i.i103, !25154, !DIExpression(), !24691)
    #dbg_value(i64 %.sroa.01.0.i.i103, !25159, !DIExpression(), !24683)
    #dbg_value(i64 %.sroa.01.0.i.i103, !25163, !DIExpression(), !24685)
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i103, !dbg !25442 ; 2 uses
  %i.bm = add nsw i64 %.sroa.01.0.i.i103, -1, !dbg !25443
    #dbg_value(i64 %i.bm, !25159, !DIExpression(), !24687)
    #dbg_value(i64 %i.bm, !25163, !DIExpression(), !24689)
  %i.bn = icmp ult i64 %i.bm, %i.m, !dbg !25444
  tail call void @llvm.assume(i1 %i.bn), !dbg !25445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25217), !dbg !25439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25218), !dbg !25439
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24786)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24786)
    #dbg_value(ptr poison, !6751, !DIExpression(DW_OP_deref, DW_OP_deref), !24787)
    #dbg_value(ptr %i.bl, !6749, !DIExpression(), !24787)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24787)
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24789)
    #dbg_value(ptr %i.bl, !6764, !DIExpression(), !24789)
    #dbg_value(ptr %i.bl, !6760, !DIExpression(), !24790)
    #dbg_value(ptr %i.bl, !6761, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24790)
    #dbg_value(ptr %i.bl, !6762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24790)
    #dbg_value(ptr %i.bl, !6763, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !24790)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 12, !dbg !25478
    #dbg_value(ptr %i.bo, !6763, !DIExpression(), !24790)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4, !dbg !25479
    #dbg_value(ptr %i.bp, !6761, !DIExpression(), !24790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25253), !dbg !25480, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25254), !dbg !25480, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24864)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24864)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24866)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25255), !dbg !25481, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25256), !dbg !25481, !noalias !25175
    #dbg_value(ptr %i.bo, !6745, !DIExpression(), !24871)
    #dbg_value(ptr %i.bp, !6741, !DIExpression(), !24871)
  %i.bq = load i32, ptr %i.bo, align 4, !dbg !25482, !alias.scope !25257, !noalias !25258, !noundef !1846 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !dbg !25483, !alias.scope !25259, !noalias !25260, !noundef !1846 ; 2 uses
  %i.bs = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.br), !dbg !25451
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24805)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6764, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24805)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24806)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6762, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !24806)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6763, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !24806)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !24806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25261), !dbg !25484, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25262), !dbg !25484, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24872)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24872)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24873)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25263), !dbg !25485, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25264), !dbg !25485, !noalias !25175
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !24874)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !24874)
  %i.bt = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bj), !dbg !25454
    #dbg_value(ptr undef, !6745, !DIExpression(), !24786)
    #dbg_value(ptr undef, !6741, !DIExpression(), !24786)
  %i.bu = icmp slt i32 %i.bs, %i.bt, !dbg !25455
  br i1 %i.bu, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %bb.p, !dbg !25439

bb.p:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88
  %i.bv = add nuw nsw i64 %.sroa.01.0.i.i103, 1, !dbg !25456 ; 2 uses
    #dbg_value(i64 %i.bv, !25154, !DIExpression(), !24691)
  %exitcond.not = icmp eq i64 %i.bv, %i.m, !dbg !25436
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88, !dbg !25436

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader, %bb.q
  %i.bw = phi i32 [ %i.ce, %bb.q ], [ %.pre145, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader ], !dbg !25459
  %i.bx = phi i32 [ %i.cd, %bb.q ], [ %.pre143, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader ], !dbg !25458
  %.sroa.01.1.i.i106 = phi i64 [ %i.ci, %bb.q ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.1.i.i106, !25154, !DIExpression(), !24691)
    #dbg_value(i64 %.sroa.01.1.i.i106, !25159, !DIExpression(), !24675)
    #dbg_value(i64 %.sroa.01.1.i.i106, !25163, !DIExpression(), !24677)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i106, !dbg !25463 ; 2 uses
  %i.bz = add nsw i64 %.sroa.01.1.i.i106, -1, !dbg !25464
    #dbg_value(i64 %i.bz, !25159, !DIExpression(), !24679)
    #dbg_value(i64 %i.bz, !25163, !DIExpression(), !24681)
  %i.ca = icmp ult i64 %i.bz, %i.m, !dbg !25465
  tail call void @llvm.assume(i1 %i.ca), !dbg !25466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25239), !dbg !25460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25240), !dbg !25460
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24836)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24836)
    #dbg_value(ptr poison, !6751, !DIExpression(DW_OP_deref, DW_OP_deref), !24837)
    #dbg_value(ptr %i.by, !6749, !DIExpression(), !24837)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24837)
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24839)
    #dbg_value(ptr %i.by, !6764, !DIExpression(), !24839)
    #dbg_value(ptr %i.by, !6760, !DIExpression(), !24840)
    #dbg_value(ptr %i.by, !6761, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !24840)
    #dbg_value(ptr %i.by, !6762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24840)
    #dbg_value(ptr %i.by, !6763, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !24840)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 12, !dbg !25486
    #dbg_value(ptr %i.cb, !6763, !DIExpression(), !24840)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4, !dbg !25487
    #dbg_value(ptr %i.cc, !6761, !DIExpression(), !24840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25265), !dbg !25488, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25266), !dbg !25488, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24879)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24879)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24881)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25267), !dbg !25489, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25268), !dbg !25489, !noalias !25175
    #dbg_value(ptr %i.cb, !6745, !DIExpression(), !24886)
    #dbg_value(ptr %i.cc, !6741, !DIExpression(), !24886)
  %i.cd = load i32, ptr %i.cb, align 4, !dbg !25490, !alias.scope !25269, !noalias !25270, !noundef !1846 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !dbg !25491, !alias.scope !25271, !noalias !25272, !noundef !1846 ; 2 uses
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.ce), !dbg !25472
    #dbg_value(ptr poison, !6757, !DIExpression(DW_OP_deref, DW_OP_deref), !24855)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6764, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24855)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24856)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6762, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !24856)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6763, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !24856)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !24856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25273), !dbg !25492, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25274), !dbg !25492, !noalias !25175
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !24887)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !24887)
    #dbg_value(ptr poison, !6778, !DIExpression(), !24888)
    #dbg_value(ptr poison, !6781, !DIExpression(), !24888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25275), !dbg !25493, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25276), !dbg !25493, !noalias !25175
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !24889)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !24889)
  %i.cg = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.bw), !dbg !25475
    #dbg_value(ptr undef, !6745, !DIExpression(), !24836)
    #dbg_value(ptr undef, !6741, !DIExpression(), !24836)
  %i.ch = icmp slt i32 %i.cf, %i.cg, !dbg !25476
  br i1 %i.ch, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !25460

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit
  %i.ci = add nuw nsw i64 %.sroa.01.1.i.i106, 1, !dbg !25477 ; 2 uses
    #dbg_value(i64 %i.ci, !25154, !DIExpression(), !24691)
  %exitcond131.not = icmp eq i64 %i.ci, %i.m, !dbg !25457
  br i1 %exitcond131.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25457

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.p, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88, %bb.n, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us, %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit, %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.n ], [ %i.m, %bb.o ], [ %i.m, %bb.q ], [ %.sroa.01.1.i.i106.us, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us ], [ %.sroa.01.1.i.i106, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.01.0.i.i103.us, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us ], [ %.sroa.01.0.i.i103, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB14_5style12BackendColorEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88 ], [ %i.m, %bb.p ], !dbg !25494 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !25142, !DIExpression(), !24890)
    #dbg_value(i64 %.sroa.0.0.i.i, !25277, !DIExpression(), !24893)
    #dbg_value(i1 poison, !25143, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24890)
  %i.cj = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !25495
  tail call void @llvm.assume(i1 %i.cj), !dbg !25496
  %.not27.i80 = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !25497
  br i1 %.not27.i80, label %bb.i, label %bb.r, !dbg !25497

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163: ; preds = %.preheader
    #dbg_value(i64 2, !25142, !DIExpression(), !24890)
    #dbg_value(i64 2, !25277, !DIExpression(), !24893)
    #dbg_value(i1 poison, !25143, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24890)
  br i1 %.not27.i80165, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i, !dbg !25497

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread: ; preds = %.preheader101
    #dbg_value(i64 2, !25142, !DIExpression(), !24890)
    #dbg_value(i64 2, !25277, !DIExpression(), !24893)
    #dbg_value(i1 poison, !25143, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24890)
  br i1 %.not27.i80160, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25497

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i
    #dbg_value(i1 %i.ak, !25143, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24890)
  br i1 %i.ak, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25498

bb.s:                                             ; preds = %bb.i
    #dbg_value(ptr undef, !6575, !DIExpression(DW_OP_deref), !24895)
    #dbg_value(ptr undef, !6576, !DIExpression(DW_OP_deref), !24895)
  %..i84 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0), !dbg !25499
    #dbg_value(i64 %..i84, !25279, !DIExpression(), !24898)
  %i.ck = shl nuw nsw i64 %..i84, 1, !dbg !25500
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTTllEB14_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2d_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25501

bb.t:                                             ; preds = %bb.i
    #dbg_value(i64 32, !25146, !DIExpression(), !24657)
    #dbg_value(ptr undef, !6575, !DIExpression(DW_OP_deref), !24900)
    #dbg_value(ptr undef, !6576, !DIExpression(DW_OP_deref), !24900)
  %..i83 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32), !dbg !25502 ; 2 uses
    #dbg_value(i64 %..i83, !25144, !DIExpression(), !24901)
    #dbg_value(i64 %..i83, !25277, !DIExpression(), !24903)
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTTllEB16_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2f_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 4 %i.n, i64 noundef %..i83, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23, !dbg !25503, !inline_history !24904
  %i.cl = shl nuw nsw i64 %..i83, 1, !dbg !25504
  %i.cm = or disjoint i64 %i.cl, 1, !dbg !25504
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTTllEB14_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2d_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25501

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !25505
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, !dbg !25505

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i ], [ %i.dj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod191 = trunc i64 %i.cv to i1, !dbg !25505
  tail call void @llvm.assume(i1 %lcmp.mod191), !dbg !25505
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !6798, !DIExpression(), !24907)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.026.i.i.epil.init), !6811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24909)
  %i.cn = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !25506
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.026.i.i.epil.init, !dbg !25507 ; 2 uses
    #dbg_value(ptr %i.co, !6811, !DIExpression(), !24909)
  %i.cp = getelementptr [16 x i8], ptr %i.cw, i64 %i.cn, !dbg !25508 ; 2 uses
    #dbg_value(ptr %i.cp, !6814, !DIExpression(), !24909)
    #dbg_value(ptr %i.co, !6816, !DIExpression(), !24911)
    #dbg_value(ptr %i.cp, !6819, !DIExpression(), !24911)
    #dbg_value(ptr %i.co, !6821, !DIExpression(), !24913)
    #dbg_value(ptr %i.co, !6827, !DIExpression(), !24915)
    #dbg_value(ptr %i.cp, !6824, !DIExpression(), !24913)
    #dbg_value(ptr %i.cp, !6830, !DIExpression(), !24915)
    #dbg_value(i64 1, !6825, !DIExpression(), !24913)
    #dbg_value(i64 1, !6831, !DIExpression(), !24915)
    #dbg_value(ptr %i.co, !6832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24916)
    #dbg_value(i64 1, !6832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24916)
    #dbg_value(i64 16, !6833, !DIExpression(), !24917)
    #dbg_value(i64 16, !6834, !DIExpression(), !24918)
    #dbg_value(ptr %i.co, !4396, !DIExpression(), !24920)
    #dbg_value(ptr %i.cp, !4397, !DIExpression(), !24920)
    #dbg_value(i64 16, !4398, !DIExpression(), !24920)
    #dbg_value(i64 16, !4399, !DIExpression(), !24921)
    #dbg_value(i64 0, !4401, !DIExpression(), !24922)
    #dbg_value(i64 2, !4400, !DIExpression(), !24923)
    #dbg_value(i64 2, !4402, !DIExpression(), !24924)
    #dbg_value(ptr %i.co, !4387, !DIExpression(), !24926)
    #dbg_value(ptr %i.co, !4439, !DIExpression(), !24928)
    #dbg_value(ptr %i.cp, !4388, !DIExpression(), !24926)
    #dbg_value(ptr %i.cp, !4439, !DIExpression(), !24930)
    #dbg_value(i64 2, !4389, !DIExpression(), !24926)
    #dbg_value(i64 2, !4390, !DIExpression(), !24931)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24932)
    #dbg_value(i64 1, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24932)
    #dbg_value(i64 0, !4392, !DIExpression(), !24933)
    #dbg_value(i64 0, !4442, !DIExpression(), !24928)
    #dbg_value(i64 0, !4442, !DIExpression(), !24930)
    #dbg_value(ptr %i.co, !4360, !DIExpression(), !24935)
    #dbg_value(ptr %i.cp, !4377, !DIExpression(), !24935)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24932)
    #dbg_value(i64 1, !4392, !DIExpression(), !24933)
    #dbg_value(i64 1, !4442, !DIExpression(), !24928)
    #dbg_value(i64 1, !4442, !DIExpression(), !24930)
    #dbg_value(ptr %i.co, !4360, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24935)
    #dbg_value(ptr %i.cp, !4377, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24935)
  %i.cq = load <2 x i64>, ptr %i.co, align 4, !dbg !25509, !alias.scope !25281, !noalias !25282
  %i.cr = load <2 x i64>, ptr %i.cp, align 4, !dbg !25510, !alias.scope !25283, !noalias !25284
  store <2 x i64> %i.cr, ptr %i.co, align 4, !dbg !25511, !alias.scope !25281, !noalias !25282
  store <2 x i64> %i.cq, ptr %i.cp, align 4, !dbg !25512, !alias.scope !25283, !noalias !25284
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !6798, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24907)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25513

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread, %bb.j, %bb.u, %bb.r
  %.sroa.0.0.i.i97100 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread ], [ %.sroa.0.0.i.i161168172, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i161168172, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader ]
  %i.cs = shl nuw nsw i64 %.sroa.0.0.i.i97100, 1, !dbg !25513
  %i.ct = or disjoint i64 %i.cs, 1, !dbg !25513
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTTllEB14_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2d_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !25514

bb.u:                                             ; preds = %bb.r
    #dbg_value(ptr %i.n, !6802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24946)
    #dbg_value(ptr %i.n, !6837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24948)
    #dbg_value(i64 %.sroa.0.0.i.i, !6802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24946)
    #dbg_value(i64 %.sroa.0.0.i.i, !6837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24948)
  %i.cu = lshr i64 %.sroa.0.0.i.i, 1, !dbg !25515 ; 2 uses
    #dbg_value(i64 %i.cu, !6803, !DIExpression(), !24949)
    #dbg_value(ptr %i.n, !6805, !DIExpression(), !24950)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.0.i.i), !6806, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24950)
    #dbg_value(ptr %i.n, !6807, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24951)
    #dbg_value(i64 %i.cu, !6807, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24951)
    #dbg_value(!DIArgList(ptr %i.n, i64 0, i64 %i.cu, i64 %.sroa.0.0.i.i), !6808, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24951)
    #dbg_value(i64 %i.cu, !6808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25285), !dbg !25516, !noalias !25175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25286), !dbg !25516, !noalias !25175
    #dbg_value(ptr %i.n, !6793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24952)
    #dbg_value(i64 %i.cu, !6793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24952)
    #dbg_value(!DIArgList(ptr %i.n, i64 0, i64 %i.cu, i64 %.sroa.0.0.i.i), !6794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24952)
    #dbg_value(i64 %i.cu, !6794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24952)
    #dbg_value(i64 %i.cu, !6795, !DIExpression(), !24952)
    #dbg_value(ptr %i.n, !6796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24953)
    #dbg_value(i64 %i.cu, !6796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24953)
    #dbg_value(i64 0, !6798, !DIExpression(), !24907)
  %.not.i.i = icmp eq i64 %i.cu, 0, !dbg !25505
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i, !dbg !25505

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163, %bb.u
  %i.cv = phi i64 [ %i.cu, %bb.u ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163 ] ; 4 uses
  %.sroa.0.0.i.i161168172 = phi i64 [ %.sroa.0.0.i.i, %bb.u ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2c_5style12BackendColorEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i161168172, !dbg !25517 ; 3 uses
    #dbg_value(ptr %i.cw, !6806, !DIExpression(), !24950)
    #dbg_value(!DIArgList(ptr %i.cw, i64 0, i64 %i.cv), !6808, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24951)
    #dbg_value(!DIArgList(ptr %i.cw, i64 0, i64 %i.cv), !6794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24952)
  %xtraiter = and i64 %i.cv, 1, !dbg !25505
  %i.cx = icmp eq i64 %i.cv, 1, !dbg !25505
  br i1 %i.cx, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new, !dbg !25505

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i
  %unroll_iter = and i64 %i.cv, 9223372036854775806, !dbg !25505
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i, !dbg !25505

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new ], [ %i.dj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !6798, !DIExpression(), !24907)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.026.i.i), !6811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24909)
  %i.cy = xor i64 %.sroa.0.026.i.i, -1, !dbg !25506
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.026.i.i, !dbg !25507 ; 2 uses
    #dbg_value(ptr %i.cz, !6811, !DIExpression(), !24909)
  %i.da = getelementptr [16 x i8], ptr %i.cw, i64 %i.cy, !dbg !25508 ; 2 uses
    #dbg_value(ptr %i.da, !6814, !DIExpression(), !24909)
    #dbg_value(ptr %i.cz, !6816, !DIExpression(), !24911)
    #dbg_value(ptr %i.da, !6819, !DIExpression(), !24911)
    #dbg_value(ptr %i.cz, !6821, !DIExpression(), !24913)
    #dbg_value(ptr %i.cz, !6827, !DIExpression(), !24915)
    #dbg_value(ptr %i.da, !6824, !DIExpression(), !24913)
    #dbg_value(ptr %i.da, !6830, !DIExpression(), !24915)
    #dbg_value(i64 1, !6825, !DIExpression(), !24913)
    #dbg_value(i64 1, !6831, !DIExpression(), !24915)
    #dbg_value(ptr %i.cz, !6832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24916)
    #dbg_value(i64 1, !6832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24916)
    #dbg_value(i64 16, !6833, !DIExpression(), !24917)
    #dbg_value(i64 16, !6834, !DIExpression(), !24918)
    #dbg_value(ptr %i.cz, !4396, !DIExpression(), !24920)
    #dbg_value(ptr %i.da, !4397, !DIExpression(), !24920)
    #dbg_value(i64 16, !4398, !DIExpression(), !24920)
    #dbg_value(i64 16, !4399, !DIExpression(), !24921)
    #dbg_value(i64 0, !4401, !DIExpression(), !24922)
    #dbg_value(i64 2, !4400, !DIExpression(), !24923)
    #dbg_value(i64 2, !4402, !DIExpression(), !24924)
    #dbg_value(ptr %i.cz, !4387, !DIExpression(), !24926)
    #dbg_value(ptr %i.cz, !4439, !DIExpression(), !24928)
    #dbg_value(ptr %i.da, !4388, !DIExpression(), !24926)
    #dbg_value(ptr %i.da, !4439, !DIExpression(), !24930)
    #dbg_value(i64 2, !4389, !DIExpression(), !24926)
    #dbg_value(i64 2, !4390, !DIExpression(), !24931)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24932)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24932)
    #dbg_value(i64 1, !4392, !DIExpression(), !24933)
    #dbg_value(i64 1, !4442, !DIExpression(), !24928)
    #dbg_value(i64 1, !4442, !DIExpression(), !24930)
    #dbg_value(ptr %i.cz, !4360, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24935)
    #dbg_value(ptr %i.da, !4377, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24935)
  %i.db = load <2 x i64>, ptr %i.cz, align 4, !dbg !25509, !alias.scope !25281, !noalias !25282
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTTllEBX_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %.val3.i89 = load ptr, ptr %.val30.i, align 8, !dbg !26368, !noalias !26136, !nonnull !1846, !noundef !1846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26137), !dbg !26368, !noalias !26138
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25667)
    #dbg_value(ptr %i.n, !6882, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !25667)
    #dbg_value(ptr %i.n, !6878, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !25668)
    #dbg_value(ptr %i.n, !6879, !DIExpression(DW_OP_plus_uconst, 20, DW_OP_stack_value), !25668)
    #dbg_value(ptr %i.n, !6880, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !25668)
    #dbg_value(ptr %i.n, !6881, !DIExpression(DW_OP_plus_uconst, 28, DW_OP_stack_value), !25668)
  %i.p = load i8, ptr %.val3.i89, align 1, !dbg !26369, !range !4758, !noalias !26139, !noundef !1846
  %i.q = trunc nuw i8 %i.p to i1, !dbg !26369     ; 3 uses
  br i1 %i.q, label %bb.m, label %bb.l, !dbg !26369

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 28, !dbg !26370
    #dbg_value(ptr %i.r, !6881, !DIExpression(), !25668)
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 20, !dbg !26371
    #dbg_value(ptr %i.s, !6879, !DIExpression(), !25668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26140), !dbg !26372, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26141), !dbg !26372, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25673)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25673)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25675)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26142), !dbg !26373, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26143), !dbg !26373, !noalias !26138
    #dbg_value(ptr %i.r, !6745, !DIExpression(), !25680)
    #dbg_value(ptr %i.s, !6741, !DIExpression(), !25680)
  %i.t = load i32, ptr %i.r, align 4, !dbg !26374, !alias.scope !26144, !noalias !26145, !noundef !1846
  %i.u = load i32, ptr %i.s, align 4, !dbg !26375, !alias.scope !26146, !noalias !26147, !noundef !1846
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.u), !dbg !26376
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25682)
    #dbg_value(ptr %i.n, !6882, !DIExpression(), !25682)
    #dbg_value(ptr %i.n, !6878, !DIExpression(), !25683)
    #dbg_value(ptr %i.n, !6879, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25683)
    #dbg_value(ptr %i.n, !6880, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25683)
    #dbg_value(ptr %i.n, !6881, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !25683)
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !26377
    #dbg_value(ptr %i.w, !6881, !DIExpression(), !25683)
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !26378
    #dbg_value(ptr %i.x, !6879, !DIExpression(), !25683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26148), !dbg !26379, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26149), !dbg !26379, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25688)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25688)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25690)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26150), !dbg !26380, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26151), !dbg !26380, !noalias !26138
    #dbg_value(ptr %i.w, !6745, !DIExpression(), !25695)
    #dbg_value(ptr %i.x, !6741, !DIExpression(), !25695)
  %i.y = load i32, ptr %i.w, align 4, !dbg !26381, !alias.scope !26152, !noalias !26153, !noundef !1846
  %i.z = load i32, ptr %i.x, align 4, !dbg !26382, !alias.scope !26154, !noalias !26155, !noundef !1846
  %i.aa = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.z), !dbg !26383
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92, !dbg !26384

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !26385
    #dbg_value(ptr %i.ab, !6869, !DIExpression(), !25663)
    #dbg_value(ptr %i.ab, !6882, !DIExpression(), !25667)
    #dbg_value(ptr %i.ab, !6878, !DIExpression(), !25668)
    #dbg_value(ptr %i.ab, !6879, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25668)
    #dbg_value(ptr %i.ab, !6880, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25668)
    #dbg_value(ptr %i.ab, !6881, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !25668)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !26386
    #dbg_value(ptr %i.ac, !6880, !DIExpression(), !25668)
    #dbg_value(ptr %i.ac, !6881, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26156), !dbg !26387, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26157), !dbg !26387, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25702)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25702)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25704)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26158), !dbg !26388, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26159), !dbg !26388, !noalias !26138
    #dbg_value(ptr %i.ac, !6745, !DIExpression(), !25709)
    #dbg_value(ptr %i.ab, !6741, !DIExpression(), !25709)
  %i.ad = load i32, ptr %i.ac, align 4, !dbg !26389, !alias.scope !26160, !noalias !26161, !noundef !1846
  %i.ae = load i32, ptr %i.ab, align 4, !dbg !26390, !alias.scope !26162, !noalias !26163, !noundef !1846
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ae), !dbg !26376
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25682)
    #dbg_value(ptr %i.n, !6882, !DIExpression(), !25682)
    #dbg_value(ptr %i.n, !6878, !DIExpression(), !25683)
    #dbg_value(ptr %i.n, !6879, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25683)
    #dbg_value(ptr %i.n, !6880, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25683)
    #dbg_value(ptr %i.n, !6881, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !25683)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !26391
    #dbg_value(ptr %i.ag, !6880, !DIExpression(), !25683)
    #dbg_value(ptr %i.ag, !6881, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26164), !dbg !26392, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26165), !dbg !26392, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25714)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25714)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25716)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26166), !dbg !26393, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26167), !dbg !26393, !noalias !26138
    #dbg_value(ptr %i.ag, !6745, !DIExpression(), !25721)
    #dbg_value(ptr %i.n, !6741, !DIExpression(), !25721)
  %i.ah = load i32, ptr %i.ag, align 4, !dbg !26394, !alias.scope !26168, !noalias !26169, !noundef !1846
  %i.ai = load i32, ptr %i.n, align 4, !dbg !26395, !alias.scope !26170, !noalias !26171, !noundef !1846
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ai), !dbg !26383
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92, !dbg !26384

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i3.i90 = phi i32 [ %i.af, %bb.m ], [ %i.v, %bb.l ]
  %.sroa.0.0.i4.i91 = phi i32 [ %i.aj, %bb.m ], [ %i.aa, %bb.l ], !dbg !26383
    #dbg_value(ptr undef, !6745, !DIExpression(), !25662)
    #dbg_value(ptr undef, !6741, !DIExpression(), !25662)
  %i.ak = icmp slt i32 %.sroa.0.0.i3.i90, %.sroa.0.0.i4.i91, !dbg !26396 ; 2 uses
    #dbg_value(i1 %i.ak, !26118, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25722)
    #dbg_value(i64 2, !26117, !DIExpression(), !25654)
    #dbg_value(i64 2, !26117, !DIExpression(), !25654)
  %.not121 = icmp eq i64 %i.m, 2, !dbg !26397     ; 2 uses
  br i1 %i.ak, label %.preheader, label %.preheader101, !dbg !26398

.preheader101:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92
  br i1 %.not121, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread, label %.lr.ph, !dbg !26399

.lr.ph:                                           ; preds = %.preheader101
  br i1 %i.q, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader: ; preds = %.lr.ph
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.pre = load i32, ptr %.phi.trans.insert134, align 4, !dbg !26400, !alias.scope !26172, !noalias !26173
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.pre136 = load i32, ptr %.phi.trans.insert135, align 4, !dbg !26401, !alias.scope !26174, !noalias !26175
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88, !dbg !26402

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader: ; preds = %.lr.ph
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.pre139 = load i32, ptr %.phi.trans.insert138, align 4, !dbg !26403, !alias.scope !26176, !noalias !26177
  %.pre140 = load i32, ptr %.phi.trans.insert137, align 4, !dbg !26404, !alias.scope !26178, !noalias !26179
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us, !dbg !26402

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader, %bb.n
  %i.al = phi i32 [ %i.as, %bb.n ], [ %.pre140, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader ], !dbg !26404
  %i.am = phi i32 [ %i.ar, %bb.n ], [ %.pre139, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader ], !dbg !26403
  %.sroa.01.0.i.i103.us = phi i64 [ %i.aw, %bb.n ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.0.i.i103.us, !26117, !DIExpression(), !25654)
    #dbg_value(i64 %.sroa.01.0.i.i103.us, !26122, !DIExpression(), !25646)
    #dbg_value(i64 %.sroa.01.0.i.i103.us, !26126, !DIExpression(), !25648)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i103.us, !dbg !26405 ; 2 uses
  %i.ao = add nsw i64 %.sroa.01.0.i.i103.us, -1, !dbg !26406
    #dbg_value(i64 %i.ao, !26122, !DIExpression(), !25650)
    #dbg_value(i64 %i.ao, !26126, !DIExpression(), !25652)
  %i.ap = icmp ult i64 %i.ao, %i.m, !dbg !26407
  tail call void @llvm.assume(i1 %i.ap), !dbg !26408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26180), !dbg !26402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26181), !dbg !26402
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25749)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25749)
    #dbg_value(ptr poison, !6871, !DIExpression(DW_OP_deref, DW_OP_deref), !25750)
    #dbg_value(ptr %i.an, !6869, !DIExpression(), !25750)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6870, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25750)
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25752)
    #dbg_value(ptr %i.an, !6882, !DIExpression(), !25752)
    #dbg_value(ptr %i.an, !6878, !DIExpression(), !25753)
    #dbg_value(ptr %i.an, !6879, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25753)
    #dbg_value(ptr %i.an, !6880, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25753)
    #dbg_value(ptr %i.an, !6881, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !25753)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !26409
    #dbg_value(ptr %i.aq, !6880, !DIExpression(), !25753)
    #dbg_value(ptr %i.aq, !6881, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26182), !dbg !26410, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26183), !dbg !26410, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25758)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25758)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25760)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26184), !dbg !26411, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26185), !dbg !26411, !noalias !26138
    #dbg_value(ptr %i.aq, !6745, !DIExpression(), !25765)
    #dbg_value(ptr %i.an, !6741, !DIExpression(), !25765)
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !26412, !alias.scope !26186, !noalias !26187, !noundef !1846 ; 2 uses
  %i.as = load i32, ptr %i.an, align 4, !dbg !26413, !alias.scope !26188, !noalias !26189, !noundef !1846 ; 2 uses
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.as), !dbg !26414
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25768)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25768)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25769)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !25769)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !25769)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !25769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26190), !dbg !26415, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26191), !dbg !26415, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25770)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25770)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25771)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26192), !dbg !26416, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26193), !dbg !26416, !noalias !26138
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !25772)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ao), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25772)
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.al), !dbg !26417
    #dbg_value(ptr undef, !6745, !DIExpression(), !25749)
    #dbg_value(ptr undef, !6741, !DIExpression(), !25749)
  %i.av = icmp slt i32 %i.at, %i.au, !dbg !26418
  br i1 %i.av, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %bb.n, !dbg !26402

bb.n:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us
  %i.aw = add nuw nsw i64 %.sroa.01.0.i.i103.us, 1, !dbg !26419 ; 2 uses
    #dbg_value(i64 %i.aw, !26117, !DIExpression(), !25654)
  %exitcond129.not = icmp eq i64 %i.aw, %i.m, !dbg !26399
  br i1 %exitcond129.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us, !dbg !26399

.preheader:                                       ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit92
  br i1 %.not121, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163, label %.lr.ph107, !dbg !26420

.lr.ph107:                                        ; preds = %.preheader
  br i1 %i.q, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader: ; preds = %.lr.ph107
  %.phi.trans.insert142 = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.pre143 = load i32, ptr %.phi.trans.insert142, align 4, !dbg !26421, !alias.scope !26194, !noalias !26195
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.pre145 = load i32, ptr %.phi.trans.insert144, align 4, !dbg !26422, !alias.scope !26196, !noalias !26197
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26423

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader: ; preds = %.lr.ph107
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.phi.trans.insert147 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.pre148 = load i32, ptr %.phi.trans.insert147, align 4, !dbg !26424, !alias.scope !26198, !noalias !26199
  %.pre149 = load i32, ptr %.phi.trans.insert146, align 4, !dbg !26425, !alias.scope !26200, !noalias !26201
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us, !dbg !26423

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader, %bb.o
  %i.ax = phi i32 [ %i.be, %bb.o ], [ %.pre149, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader ], !dbg !26425
  %i.ay = phi i32 [ %i.bd, %bb.o ], [ %.pre148, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader ], !dbg !26424
  %.sroa.01.1.i.i106.us = phi i64 [ %i.bi, %bb.o ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.1.i.i106.us, !26117, !DIExpression(), !25654)
    #dbg_value(i64 %.sroa.01.1.i.i106.us, !26122, !DIExpression(), !25638)
    #dbg_value(i64 %.sroa.01.1.i.i106.us, !26126, !DIExpression(), !25640)
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i106.us, !dbg !26426 ; 2 uses
  %i.ba = add nsw i64 %.sroa.01.1.i.i106.us, -1, !dbg !26427
    #dbg_value(i64 %i.ba, !26122, !DIExpression(), !25642)
    #dbg_value(i64 %i.ba, !26126, !DIExpression(), !25644)
  %i.bb = icmp ult i64 %i.ba, %i.m, !dbg !26428
  tail call void @llvm.assume(i1 %i.bb), !dbg !26429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26202), !dbg !26423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26203), !dbg !26423
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25799)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25799)
    #dbg_value(ptr poison, !6871, !DIExpression(DW_OP_deref, DW_OP_deref), !25800)
    #dbg_value(ptr %i.az, !6869, !DIExpression(), !25800)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6870, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25800)
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25802)
    #dbg_value(ptr %i.az, !6882, !DIExpression(), !25802)
    #dbg_value(ptr %i.az, !6878, !DIExpression(), !25803)
    #dbg_value(ptr %i.az, !6879, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25803)
    #dbg_value(ptr %i.az, !6880, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25803)
    #dbg_value(ptr %i.az, !6881, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !25803)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !26430
    #dbg_value(ptr %i.bc, !6880, !DIExpression(), !25803)
    #dbg_value(ptr %i.bc, !6881, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26204), !dbg !26431, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26205), !dbg !26431, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25808)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25808)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25810)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26206), !dbg !26432, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26207), !dbg !26432, !noalias !26138
    #dbg_value(ptr %i.bc, !6745, !DIExpression(), !25815)
    #dbg_value(ptr %i.az, !6741, !DIExpression(), !25815)
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !26433, !alias.scope !26208, !noalias !26209, !noundef !1846 ; 2 uses
  %i.be = load i32, ptr %i.az, align 4, !dbg !26434, !alias.scope !26210, !noalias !26211, !noundef !1846 ; 2 uses
  %i.bf = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.be), !dbg !26435
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25818)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25818)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25819)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !25819)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !25819)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !25819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26212), !dbg !26436, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26213), !dbg !26436, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25820)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25820)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25821)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26214), !dbg !26437, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26215), !dbg !26437, !noalias !26138
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !25822)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.ba), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25822)
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.ax), !dbg !26438
    #dbg_value(ptr undef, !6745, !DIExpression(), !25799)
    #dbg_value(ptr undef, !6741, !DIExpression(), !25799)
  %i.bh = icmp slt i32 %i.bf, %i.bg, !dbg !26439
  br i1 %i.bh, label %bb.o, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !26423

bb.o:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us
  %i.bi = add nuw nsw i64 %.sroa.01.1.i.i106.us, 1, !dbg !26440 ; 2 uses
    #dbg_value(i64 %i.bi, !26117, !DIExpression(), !25654)
  %exitcond133.not = icmp eq i64 %i.bi, %i.m, !dbg !26420
  br i1 %exitcond133.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us, !dbg !26420

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader, %bb.p
  %i.bj = phi i32 [ %i.br, %bb.p ], [ %.pre136, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader ], !dbg !26401
  %i.bk = phi i32 [ %i.bq, %bb.p ], [ %.pre, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader ], !dbg !26400
  %.sroa.01.0.i.i103 = phi i64 [ %i.bv, %bb.p ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.0.i.i103, !26117, !DIExpression(), !25654)
    #dbg_value(i64 %.sroa.01.0.i.i103, !26122, !DIExpression(), !25646)
    #dbg_value(i64 %.sroa.01.0.i.i103, !26126, !DIExpression(), !25648)
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i103, !dbg !26405 ; 2 uses
  %i.bm = add nsw i64 %.sroa.01.0.i.i103, -1, !dbg !26406
    #dbg_value(i64 %i.bm, !26122, !DIExpression(), !25650)
    #dbg_value(i64 %i.bm, !26126, !DIExpression(), !25652)
  %i.bn = icmp ult i64 %i.bm, %i.m, !dbg !26407
  tail call void @llvm.assume(i1 %i.bn), !dbg !26408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26180), !dbg !26402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26181), !dbg !26402
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25749)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25749)
    #dbg_value(ptr poison, !6871, !DIExpression(DW_OP_deref, DW_OP_deref), !25750)
    #dbg_value(ptr %i.bl, !6869, !DIExpression(), !25750)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6870, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25750)
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25752)
    #dbg_value(ptr %i.bl, !6882, !DIExpression(), !25752)
    #dbg_value(ptr %i.bl, !6878, !DIExpression(), !25753)
    #dbg_value(ptr %i.bl, !6879, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25753)
    #dbg_value(ptr %i.bl, !6880, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25753)
    #dbg_value(ptr %i.bl, !6881, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !25753)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 12, !dbg !26441
    #dbg_value(ptr %i.bo, !6881, !DIExpression(), !25753)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4, !dbg !26442
    #dbg_value(ptr %i.bp, !6879, !DIExpression(), !25753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26216), !dbg !26443, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26217), !dbg !26443, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25827)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25827)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25829)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26218), !dbg !26444, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26219), !dbg !26444, !noalias !26138
    #dbg_value(ptr %i.bo, !6745, !DIExpression(), !25834)
    #dbg_value(ptr %i.bp, !6741, !DIExpression(), !25834)
  %i.bq = load i32, ptr %i.bo, align 4, !dbg !26445, !alias.scope !26220, !noalias !26221, !noundef !1846 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !dbg !26446, !alias.scope !26222, !noalias !26223, !noundef !1846 ; 2 uses
  %i.bs = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.br), !dbg !26414
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25768)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25768)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25769)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !25769)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !25769)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !25769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26224), !dbg !26447, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26225), !dbg !26447, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25835)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25835)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25836)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26226), !dbg !26448, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26227), !dbg !26448, !noalias !26138
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !25837)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bm), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !25837)
  %i.bt = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bj), !dbg !26417
    #dbg_value(ptr undef, !6745, !DIExpression(), !25749)
    #dbg_value(ptr undef, !6741, !DIExpression(), !25749)
  %i.bu = icmp slt i32 %i.bs, %i.bt, !dbg !26418
  br i1 %i.bu, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %bb.p, !dbg !26402

bb.p:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88
  %i.bv = add nuw nsw i64 %.sroa.01.0.i.i103, 1, !dbg !26419 ; 2 uses
    #dbg_value(i64 %i.bv, !26117, !DIExpression(), !25654)
  %exitcond.not = icmp eq i64 %i.bv, %i.m, !dbg !26399
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88, !dbg !26399

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader, %bb.q
  %i.bw = phi i32 [ %i.ce, %bb.q ], [ %.pre145, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader ], !dbg !26422
  %i.bx = phi i32 [ %i.cd, %bb.q ], [ %.pre143, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader ], !dbg !26421
  %.sroa.01.1.i.i106 = phi i64 [ %i.ci, %bb.q ], [ 2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.1.i.i106, !26117, !DIExpression(), !25654)
    #dbg_value(i64 %.sroa.01.1.i.i106, !26122, !DIExpression(), !25638)
    #dbg_value(i64 %.sroa.01.1.i.i106, !26126, !DIExpression(), !25640)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i106, !dbg !26426 ; 2 uses
  %i.bz = add nsw i64 %.sroa.01.1.i.i106, -1, !dbg !26427
    #dbg_value(i64 %i.bz, !26122, !DIExpression(), !25642)
    #dbg_value(i64 %i.bz, !26126, !DIExpression(), !25644)
  %i.ca = icmp ult i64 %i.bz, %i.m, !dbg !26428
  tail call void @llvm.assume(i1 %i.ca), !dbg !26429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26202), !dbg !26423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26203), !dbg !26423
    #dbg_value(ptr poison, !6741, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25799)
    #dbg_value(ptr poison, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25799)
    #dbg_value(ptr poison, !6871, !DIExpression(DW_OP_deref, DW_OP_deref), !25800)
    #dbg_value(ptr %i.by, !6869, !DIExpression(), !25800)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6870, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25800)
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25802)
    #dbg_value(ptr %i.by, !6882, !DIExpression(), !25802)
    #dbg_value(ptr %i.by, !6878, !DIExpression(), !25803)
    #dbg_value(ptr %i.by, !6879, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !25803)
    #dbg_value(ptr %i.by, !6880, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25803)
    #dbg_value(ptr %i.by, !6881, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !25803)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 12, !dbg !26449
    #dbg_value(ptr %i.cb, !6881, !DIExpression(), !25803)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4, !dbg !26450
    #dbg_value(ptr %i.cc, !6879, !DIExpression(), !25803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26228), !dbg !26451, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26229), !dbg !26451, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25842)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25842)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25844)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26230), !dbg !26452, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26231), !dbg !26452, !noalias !26138
    #dbg_value(ptr %i.cb, !6745, !DIExpression(), !25849)
    #dbg_value(ptr %i.cc, !6741, !DIExpression(), !25849)
  %i.cd = load i32, ptr %i.cb, align 4, !dbg !26453, !alias.scope !26232, !noalias !26233, !noundef !1846 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !dbg !26454, !alias.scope !26234, !noalias !26235, !noundef !1846 ; 2 uses
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.ce), !dbg !26435
    #dbg_value(ptr poison, !6875, !DIExpression(DW_OP_deref, DW_OP_deref), !25818)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25818)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25819)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !25819)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !25819)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !25819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26236), !dbg !26455, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26237), !dbg !26455, !noalias !26138
    #dbg_value(ptr undef, !6770, !DIExpression(DW_OP_deref), !25850)
    #dbg_value(ptr undef, !6773, !DIExpression(DW_OP_deref), !25850)
    #dbg_value(ptr poison, !6778, !DIExpression(), !25851)
    #dbg_value(ptr poison, !6781, !DIExpression(), !25851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26238), !dbg !26456, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26239), !dbg !26456, !noalias !26138
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !25852)
    #dbg_value(!DIArgList(ptr %i.n, i64 %i.bz), !6741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 4, DW_OP_stack_value), !25852)
  %i.cg = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.bw), !dbg !26438
    #dbg_value(ptr undef, !6745, !DIExpression(), !25799)
    #dbg_value(ptr undef, !6741, !DIExpression(), !25799)
  %i.ch = icmp slt i32 %i.cf, %i.cg, !dbg !26439
  br i1 %i.ch, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !26423

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit
  %i.ci = add nuw nsw i64 %.sroa.01.1.i.i106, 1, !dbg !26440 ; 2 uses
    #dbg_value(i64 %i.ci, !26117, !DIExpression(), !25654)
  %exitcond131.not = icmp eq i64 %i.ci, %i.m, !dbg !26420
  br i1 %exitcond131.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26420

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.p, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88, %bb.n, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us, %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit, %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.n ], [ %i.m, %bb.o ], [ %i.m, %bb.q ], [ %.sroa.01.1.i.i106.us, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit.us ], [ %.sroa.01.1.i.i106, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.01.0.i.i103.us, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88.us ], [ %.sroa.01.0.i.i103, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTTllEBz_E11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0CsaTqK2fWTXJW_11qlog_dancer.exit88 ], [ %i.m, %bb.p ], !dbg !26457 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !26105, !DIExpression(), !25853)
    #dbg_value(i64 %.sroa.0.0.i.i, !26240, !DIExpression(), !25856)
    #dbg_value(i1 poison, !26106, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25853)
  %i.cj = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !26458
  tail call void @llvm.assume(i1 %i.cj), !dbg !26459
  %.not27.i80 = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !26460
  br i1 %.not27.i80, label %bb.i, label %bb.r, !dbg !26460

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163: ; preds = %.preheader
    #dbg_value(i64 2, !26105, !DIExpression(), !25853)
    #dbg_value(i64 2, !26240, !DIExpression(), !25856)
    #dbg_value(i1 poison, !26106, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25853)
  br i1 %.not27.i80165, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i, !dbg !26460

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread: ; preds = %.preheader101
    #dbg_value(i64 2, !26105, !DIExpression(), !25853)
    #dbg_value(i64 2, !26240, !DIExpression(), !25856)
    #dbg_value(i1 poison, !26106, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25853)
  br i1 %.not27.i80160, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26460

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i
    #dbg_value(i1 %i.ak, !26106, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25853)
  br i1 %i.ak, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26461

bb.s:                                             ; preds = %bb.i
    #dbg_value(ptr undef, !6575, !DIExpression(DW_OP_deref), !25858)
    #dbg_value(ptr undef, !6576, !DIExpression(DW_OP_deref), !25858)
  %..i84 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0), !dbg !26462
    #dbg_value(i64 %..i84, !26242, !DIExpression(), !25861)
  %i.ck = shl nuw nsw i64 %..i84, 1, !dbg !26463
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTTllEB14_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26464

bb.t:                                             ; preds = %bb.i
    #dbg_value(i64 32, !26109, !DIExpression(), !25620)
    #dbg_value(ptr undef, !6575, !DIExpression(DW_OP_deref), !25863)
    #dbg_value(ptr undef, !6576, !DIExpression(DW_OP_deref), !25863)
  %..i83 = tail call noundef range(i64 0, 576460752303423488) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32), !dbg !26465 ; 2 uses
    #dbg_value(i64 %..i83, !26107, !DIExpression(), !25864)
    #dbg_value(i64 %..i83, !26240, !DIExpression(), !25866)
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTTllEB16_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 4 %i.n, i64 noundef %..i83, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23, !dbg !26466, !inline_history !25867
  %i.cl = shl nuw nsw i64 %..i83, 1, !dbg !26467
  %i.cm = or disjoint i64 %i.cl, 1, !dbg !26467
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTTllEB14_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26464

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !26468
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, !dbg !26468

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i ], [ %i.dj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod191 = trunc i64 %i.cv to i1, !dbg !26468
  tail call void @llvm.assume(i1 %lcmp.mod191), !dbg !26468
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !6798, !DIExpression(), !25870)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.026.i.i.epil.init), !6811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25872)
  %i.cn = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !26469
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.026.i.i.epil.init, !dbg !26470 ; 2 uses
    #dbg_value(ptr %i.co, !6811, !DIExpression(), !25872)
  %i.cp = getelementptr [16 x i8], ptr %i.cw, i64 %i.cn, !dbg !26471 ; 2 uses
    #dbg_value(ptr %i.cp, !6814, !DIExpression(), !25872)
    #dbg_value(ptr %i.co, !6816, !DIExpression(), !25874)
    #dbg_value(ptr %i.cp, !6819, !DIExpression(), !25874)
    #dbg_value(ptr %i.co, !6821, !DIExpression(), !25876)
    #dbg_value(ptr %i.co, !6827, !DIExpression(), !25878)
    #dbg_value(ptr %i.cp, !6824, !DIExpression(), !25876)
    #dbg_value(ptr %i.cp, !6830, !DIExpression(), !25878)
    #dbg_value(i64 1, !6825, !DIExpression(), !25876)
    #dbg_value(i64 1, !6831, !DIExpression(), !25878)
    #dbg_value(ptr %i.co, !6832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25879)
    #dbg_value(i64 1, !6832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25879)
    #dbg_value(i64 16, !6833, !DIExpression(), !25880)
    #dbg_value(i64 16, !6834, !DIExpression(), !25881)
    #dbg_value(ptr %i.co, !4396, !DIExpression(), !25883)
    #dbg_value(ptr %i.cp, !4397, !DIExpression(), !25883)
    #dbg_value(i64 16, !4398, !DIExpression(), !25883)
    #dbg_value(i64 16, !4399, !DIExpression(), !25884)
    #dbg_value(i64 0, !4401, !DIExpression(), !25885)
    #dbg_value(i64 2, !4400, !DIExpression(), !25886)
    #dbg_value(i64 2, !4402, !DIExpression(), !25887)
    #dbg_value(ptr %i.co, !4387, !DIExpression(), !25889)
    #dbg_value(ptr %i.co, !4439, !DIExpression(), !25891)
    #dbg_value(ptr %i.cp, !4388, !DIExpression(), !25889)
    #dbg_value(ptr %i.cp, !4439, !DIExpression(), !25893)
    #dbg_value(i64 2, !4389, !DIExpression(), !25889)
    #dbg_value(i64 2, !4390, !DIExpression(), !25894)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25895)
    #dbg_value(i64 1, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25895)
    #dbg_value(i64 0, !4392, !DIExpression(), !25896)
    #dbg_value(i64 0, !4442, !DIExpression(), !25891)
    #dbg_value(i64 0, !4442, !DIExpression(), !25893)
    #dbg_value(ptr %i.co, !4360, !DIExpression(), !25898)
    #dbg_value(ptr %i.cp, !4377, !DIExpression(), !25898)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25895)
    #dbg_value(i64 1, !4392, !DIExpression(), !25896)
    #dbg_value(i64 1, !4442, !DIExpression(), !25891)
    #dbg_value(i64 1, !4442, !DIExpression(), !25893)
    #dbg_value(ptr %i.co, !4360, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25898)
    #dbg_value(ptr %i.cp, !4377, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25898)
  %i.cq = load <2 x i64>, ptr %i.co, align 4, !dbg !26472, !alias.scope !26244, !noalias !26245
  %i.cr = load <2 x i64>, ptr %i.cp, align 4, !dbg !26473, !alias.scope !26246, !noalias !26247
  store <2 x i64> %i.cr, ptr %i.co, align 4, !dbg !26474, !alias.scope !26244, !noalias !26245
  store <2 x i64> %i.cq, ptr %i.cp, align 4, !dbg !26475, !alias.scope !26246, !noalias !26247
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !6798, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25870)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26476

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread, %bb.j, %bb.u, %bb.r
  %.sroa.0.0.i.i97100 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread ], [ %.sroa.0.0.i.i161168172, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i161168172, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader ]
  %i.cs = shl nuw nsw i64 %.sroa.0.0.i.i97100, 1, !dbg !26476
  %i.ct = or disjoint i64 %i.cs, 1, !dbg !26476
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTTllEB14_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !26477

bb.u:                                             ; preds = %bb.r
    #dbg_value(ptr %i.n, !6802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25909)
    #dbg_value(ptr %i.n, !6837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25911)
    #dbg_value(i64 %.sroa.0.0.i.i, !6802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25909)
    #dbg_value(i64 %.sroa.0.0.i.i, !6837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25911)
  %i.cu = lshr i64 %.sroa.0.0.i.i, 1, !dbg !26478 ; 2 uses
    #dbg_value(i64 %i.cu, !6803, !DIExpression(), !25912)
    #dbg_value(ptr %i.n, !6805, !DIExpression(), !25913)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.0.i.i), !6806, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25913)
    #dbg_value(ptr %i.n, !6807, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25914)
    #dbg_value(i64 %i.cu, !6807, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25914)
    #dbg_value(!DIArgList(ptr %i.n, i64 0, i64 %i.cu, i64 %.sroa.0.0.i.i), !6808, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25914)
    #dbg_value(i64 %i.cu, !6808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26248), !dbg !26479, !noalias !26138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26249), !dbg !26479, !noalias !26138
    #dbg_value(ptr %i.n, !6793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25915)
    #dbg_value(i64 %i.cu, !6793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25915)
    #dbg_value(!DIArgList(ptr %i.n, i64 0, i64 %i.cu, i64 %.sroa.0.0.i.i), !6794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25915)
    #dbg_value(i64 %i.cu, !6794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25915)
    #dbg_value(i64 %i.cu, !6795, !DIExpression(), !25915)
    #dbg_value(ptr %i.n, !6796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25916)
    #dbg_value(i64 %i.cu, !6796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25916)
    #dbg_value(i64 0, !6798, !DIExpression(), !25870)
  %.not.i.i = icmp eq i64 %i.cu, 0, !dbg !26468
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E7reverseCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i, !dbg !26468

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163, %bb.u
  %i.cv = phi i64 [ %i.cu, %bb.u ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163 ] ; 4 uses
  %.sroa.0.0.i.i161168172 = phi i64 [ %.sroa.0.0.i.i, %bb.u ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTTllEB13_ENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keylNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.thread163 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i161168172, !dbg !26480 ; 3 uses
    #dbg_value(ptr %i.cw, !6806, !DIExpression(), !25913)
    #dbg_value(!DIArgList(ptr %i.cw, i64 0, i64 %i.cv), !6808, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25914)
    #dbg_value(!DIArgList(ptr %i.cw, i64 0, i64 %i.cv), !6794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25915)
  %xtraiter = and i64 %i.cv, 1, !dbg !26468
  %i.cx = icmp eq i64 %i.cv, 1, !dbg !26468
  br i1 %i.cx, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new, !dbg !26468

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i
  %unroll_iter = and i64 %i.cv, 9223372036854775806, !dbg !26468
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i, !dbg !26468

_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new ], [ %i.dj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTTllEBv_E12split_at_mutCsaTqK2fWTXJW_11qlog_dancer.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !6798, !DIExpression(), !25870)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.0.026.i.i), !6811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !25872)
  %i.cy = xor i64 %.sroa.0.026.i.i, -1, !dbg !26469
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.026.i.i, !dbg !26470 ; 2 uses
    #dbg_value(ptr %i.cz, !6811, !DIExpression(), !25872)
  %i.da = getelementptr [16 x i8], ptr %i.cw, i64 %i.cy, !dbg !26471 ; 2 uses
    #dbg_value(ptr %i.da, !6814, !DIExpression(), !25872)
    #dbg_value(ptr %i.cz, !6816, !DIExpression(), !25874)
    #dbg_value(ptr %i.da, !6819, !DIExpression(), !25874)
    #dbg_value(ptr %i.cz, !6821, !DIExpression(), !25876)
    #dbg_value(ptr %i.cz, !6827, !DIExpression(), !25878)
    #dbg_value(ptr %i.da, !6824, !DIExpression(), !25876)
    #dbg_value(ptr %i.da, !6830, !DIExpression(), !25878)
    #dbg_value(i64 1, !6825, !DIExpression(), !25876)
    #dbg_value(i64 1, !6831, !DIExpression(), !25878)
    #dbg_value(ptr %i.cz, !6832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25879)
    #dbg_value(i64 1, !6832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25879)
    #dbg_value(i64 16, !6833, !DIExpression(), !25880)
    #dbg_value(i64 16, !6834, !DIExpression(), !25881)
    #dbg_value(ptr %i.cz, !4396, !DIExpression(), !25883)
    #dbg_value(ptr %i.da, !4397, !DIExpression(), !25883)
    #dbg_value(i64 16, !4398, !DIExpression(), !25883)
    #dbg_value(i64 16, !4399, !DIExpression(), !25884)
    #dbg_value(i64 0, !4401, !DIExpression(), !25885)
    #dbg_value(i64 2, !4400, !DIExpression(), !25886)
    #dbg_value(i64 2, !4402, !DIExpression(), !25887)
    #dbg_value(ptr %i.cz, !4387, !DIExpression(), !25889)
    #dbg_value(ptr %i.cz, !4439, !DIExpression(), !25891)
    #dbg_value(ptr %i.da, !4388, !DIExpression(), !25889)
    #dbg_value(ptr %i.da, !4439, !DIExpression(), !25893)
    #dbg_value(i64 2, !4389, !DIExpression(), !25889)
    #dbg_value(i64 2, !4390, !DIExpression(), !25894)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25895)
    #dbg_value(i64 2, !4391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25895)
    #dbg_value(i64 1, !4392, !DIExpression(), !25896)
    #dbg_value(i64 1, !4442, !DIExpression(), !25891)
    #dbg_value(i64 1, !4442, !DIExpression(), !25893)
    #dbg_value(ptr %i.cz, !4360, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25898)
    #dbg_value(ptr %i.da, !4377, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25898)
  %i.db = load <2 x i64>, ptr %i.cz, align 4, !dbg !26472, !alias.scope !26244, !noalias !26245
end_hunk_2
