Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.06?download=true
begin_hunk_0_@_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery19black_hole_detected:bb.a
    #dbg_value(ptr undef, !21220, !DIExpression(DW_OP_deref), !21381)
    #dbg_value(ptr poison, !21227, !DIExpression(DW_OP_deref), !21382)
    #dbg_value(ptr poison, !21232, !DIExpression(), !21382)
  %i.w = load i16, ptr %i.v, align 2, !dbg !21384, !alias.scope !21385, !noalias !21303, !noundef !52
  %i.x = icmp ult i16 %i.w, %.sroa.6.0.copyload.i.i, !dbg !21384
  br i1 %i.x, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE6filterNCNvMs1_BL_NtBL_17BlackHoleDetector17finish_loss_bursts_0EBP_.exit.i.i, label %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector17finish_loss_burst.exit.i, !dbg !21388

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21319 ; 2 uses
    #dbg_value(ptr %i.y, !20842, !DIExpression(), !21315)
    #dbg_value(ptr %i.y, !20831, !DIExpression(), !21389)
    #dbg_value(ptr %i.y, !20822, !DIExpression(), !21391)
    #dbg_value(i16 %.sroa.6.0.copyload.i.i, !20832, !DIExpression(), !21389)
    #dbg_value(i64 2, !21242, !DIExpression(), !21393)
    #dbg_value(i64 %i.m, !20833, !DIExpression(), !21396)
    #dbg_value(i64 %i.m, !20883, !DIExpression(), !21397)
    #dbg_value(ptr %i.y, !21256, !DIExpression(), !21399)
  %i.z = load i64, ptr %i.y, align 8, !dbg !21400, !range !5372, !alias.scope !21401, !noundef !52
  %i.aa = icmp eq i64 %i.m, %i.z, !dbg !21404
  br i1 %i.aa, label %bb.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE8push_mutBL_.exit.i.i, !dbg !21404

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #30, !dbg !21405
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE8push_mutBL_.exit.i.i, !dbg !21406

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE8push_mutBL_.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21407
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !21407, !alias.scope !21401, !nonnull !52, !noundef !52
    #dbg_value(ptr %i.ac, !20878, !DIExpression(), !21397)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.m, !dbg !21411
    #dbg_value(ptr %i.ad, !20834, !DIExpression(), !21412)
    #dbg_value(ptr %i.ad, !20888, !DIExpression(), !21413)
    #dbg_value(i16 %.sroa.6.0.copyload.i.i, !20893, !DIExpression(), !21413)
  store i16 %.sroa.6.0.copyload.i.i, ptr %i.ad, align 2, !dbg !21415
  %i.ae = add nuw nsw i64 %i.m, 1, !dbg !21416
  store i64 %i.ae, ptr %i.l, align 8, !dbg !21416, !alias.scope !21401
  br label %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector17finish_loss_burst.exit.i, !dbg !21417

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE6filterNCNvMs1_BL_NtBL_17BlackHoleDetector17finish_loss_bursts_0EBP_.exit.i.i: ; preds = %bb.g
    #dbg_value(ptr %i.v, !20855, !DIExpression(), !21419)
    #dbg_value(ptr %i.v, !20870, !DIExpression(), !21420)
  store i16 %.sroa.6.0.copyload.i.i, ptr %i.v, align 2, !dbg !21421, !noalias !21303
  br label %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector17finish_loss_burst.exit.i, !dbg !21422

_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector17finish_loss_burst.exit.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE6filterNCNvMs1_BL_NtBL_17BlackHoleDetector17finish_loss_bursts_0EBP_.exit.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE8push_mutBL_.exit.i.i, %bb.g, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keytNCNvMs1_BO_NtBO_17BlackHoleDetector17finish_loss_burst0EBS_.exit.i.i, %bb.c, %bb.b, %bb.a
    #dbg_value(ptr %0, !21423, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21426)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21428 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !21428, !alias.scope !21280, !noundef !52 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 4611686018427387904, !dbg !21429
  tail call void @llvm.assume(i1 %i.ah), !dbg !21430
  %i.ai = icmp samesign ugt i64 %i.ag, 3, !dbg !21431 ; 2 uses
  br i1 %i.ai, label %bb.j, label %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector19black_hole_detected.exit, !dbg !21431

bb.j:                                             ; preds = %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector17finish_loss_burst.exit.i
    #dbg_value(ptr %0, !21432, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !21444)
    #dbg_value(ptr poison, !21438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21446)
    #dbg_value(i64 poison, !21438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21446)
  store i64 0, ptr %i.af, align 8, !dbg !21447, !alias.scope !21280
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 58, !dbg !21448
  %i.ak = load i16, ptr %i.aj, align 2, !dbg !21448, !noundef !52
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !21449
  store i16 %i.ak, ptr %i.al, align 8, !dbg !21449
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !21450 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !dbg !21450, !range !20400, !noundef !52
  %.not = icmp eq i64 %i.an, -1, !dbg !21450
  br i1 %.not, label %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector19black_hole_detected.exit, label %bb.k, !dbg !21451

_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector19black_hole_detected.exit: ; preds = %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector17finish_loss_burst.exit.i, %bb.j, %bb.k
  ret i1 %i.ai, !dbg !21452

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %i.am, !21277, !DIExpression(), !21453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21454), !dbg !21457
    #dbg_value(ptr %i.am, !21458, !DIExpression(), !21467)
    #dbg_value(i64 %1, !21464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21467)
    #dbg_value(i32 %2, !21464, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21467)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !21469
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !21469, !alias.scope !21454, !noundef !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !21469
  %i.ar = load i32, ptr %i.aq, align 8, !dbg !21469, !range !20592, !alias.scope !21454, !noundef !52
  %i.as = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %i.ap, i32 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82), !dbg !21470, !noalias !21454 ; 2 uses
  %i.at = extractvalue { i64, i32 } %i.as, 0, !dbg !21470
  %i.au = extractvalue { i64, i32 } %i.as, 1, !dbg !21470
    #dbg_value(i64 %i.at, !21465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21471)
    #dbg_value(i32 %i.au, !21465, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21471)
  store i64 4, ptr %i.am, align 8, !dbg !21472, !alias.scope !21454
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !21472
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !21472, !alias.scope !21454
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !21472
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !21472, !alias.scope !21454
  br label %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector19black_hole_detected.exit, !dbg !21473
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery37on_peer_max_udp_payload_size_received(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %0, i16 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !21474 {
bb.a:
    #dbg_value(ptr %0, !21479, !DIExpression(), !21483)
    #dbg_value(i16 %1, !21480, !DIExpression(), !21483)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !21484 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !dbg !21484, !noundef !52
    #dbg_value(i16 %i.b, !20488, !DIExpression(), !21485)
    #dbg_value(i16 %i.b, !20488, !DIExpression(), !21485)
    #dbg_value(i16 %1, !20494, !DIExpression(), !21485)
    #dbg_value(i16 %1, !20494, !DIExpression(), !21485)
    #dbg_value(ptr undef, !20488, !DIExpression(DW_OP_deref), !21485)
    #dbg_value(ptr undef, !20494, !DIExpression(DW_OP_deref), !21485)
  %..i = tail call noundef i16 @llvm.umin.i16(i16 %1, i16 %i.b), !dbg !21487
  store i16 %..i, ptr %i.a, align 8, !dbg !21488
    #dbg_value(ptr %0, !21489, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !21494)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !21496
  %i.d = load i64, ptr %i.c, align 8, !dbg !21496, !range !20400, !noundef !52
  %.not = icmp eq i64 %i.d, -1, !dbg !21496
  br i1 %.not, label %bb.c, label %bb.b, !dbg !21497

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !21481, !DIExpression(), !21498)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !21499
  store i16 %1, ptr %i.e, align 8, !dbg !21499
  br label %bb.c, !dbg !21500

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !21501
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, i16 noundef %1, i16 noundef %2, i16 noundef range(i16 0, 2) %3, i16 %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21502 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [64 x i8], align 8            ; 4 uses
    #dbg_declare(ptr %.sroa.4, !21526, !DIExpression(DW_OP_LLVM_fragment, 64, 512), !21534)
  %.sroa.10 = alloca [64 x i8], align 8           ; 4 uses
    #dbg_declare(ptr poison, !21522, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !21536)
    #dbg_declare(ptr %.sroa.10, !21522, !DIExpression(DW_OP_LLVM_fragment, 576, 512), !21536)
    #dbg_value(ptr poison, !21479, !DIExpression(), !21537)
    #dbg_value(i16 %3, !21509, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !21539)
    #dbg_value(i16 %4, !21509, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !21539)
    #dbg_value(i16 %1, !21507, !DIExpression(), !21539)
    #dbg_value(i16 %2, !21508, !DIExpression(), !21539)
    #dbg_declare(ptr %5, !21510, !DIExpression(), !21540)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10), !dbg !21541
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !21542
    #dbg_value(i64 2, !21526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21543)
  %.sroa.4.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 24, !dbg !21542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !dbg !21542
    #dbg_value(i16 -9, !21526, !DIExpression(DW_OP_LLVM_fragment, 576, 16), !21543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21544), !dbg !21547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21548), !dbg !21547
    #dbg_value(i16 %1, !21532, !DIExpression(), !21543)
    #dbg_value(i16 %2, !21533, !DIExpression(), !21543)
    #dbg_value(i16 %2, !21550, !DIExpression(), !21556)
    #dbg_value(i64 4, !21558, !DIExpression(), !21564)
    #dbg_value(i64 4, !21566, !DIExpression(), !21573)
    #dbg_declare(ptr poison, !21572, !DIExpression(), !21575)
    #dbg_value(i64 4, !21576, !DIExpression(), !21583)
    #dbg_declare(ptr poison, !21582, !DIExpression(), !21585)
    #dbg_value(i64 4, !21586, !DIExpression(), !21595)
    #dbg_declare(ptr poison, !21589, !DIExpression(), !21597)
    #dbg_value(i64 0, !21598, !DIExpression(), !21604)
    #dbg_value(i64 4, !21602, !DIExpression(), !21604)
    #dbg_value(i64 2, !21590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21595)
    #dbg_value(i64 2, !21603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21604)
    #dbg_value(i64 2, !21590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21595)
    #dbg_value(i64 2, !21603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21606, !noalias !21607
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !dbg !21606, !noalias !21607
  %i.b = load i64, ptr %i.a, align 8, !dbg !21606, !range !4289, !noalias !21607, !noundef !52
  %i.c = trunc nuw i64 %i.b to i1, !dbg !21610
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21595
  %i.e = load i64, ptr %i.d, align 8, !dbg !21595, !range !4291, !noalias !21607, !noundef !52 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21595 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery10with_state.exit, !dbg !21610, !prof !4292

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !dbg !21611, !noalias !21607
    #dbg_value(i64 %i.e, !21593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21612)
    #dbg_value(i64 %i.g, !21593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21612)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #26, !dbg !21613, !noalias !21607
  unreachable, !dbg !21613

_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery10with_state.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !dbg !21614, !noalias !21607, !nonnull !52, !noundef !52
    #dbg_value(i64 %i.e, !21591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21615)
    #dbg_value(ptr %i.h, !21591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21615)
    #dbg_value(ptr poison, !21601, !DIExpression(), !21616)
  %i.i = icmp samesign ugt i64 %i.e, 3, !dbg !21617
    #dbg_value(i1 true, !21618, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21621)
  tail call void @llvm.assume(i1 %i.i), !dbg !21623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21624, !noalias !21607
    #dbg_value(i16 %1, !21522, !DIExpression(DW_OP_LLVM_fragment, 1152, 16), !21625)
    #dbg_value(i64 2, !21522, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !21625)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4, i64 64, i1 false), !dbg !21626, !alias.scope !21627
    #dbg_value(i16 -9, !21522, !DIExpression(DW_OP_LLVM_fragment, 1088, 16), !21625)
    #dbg_value(i64 0, !21522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21625)
    #dbg_value(i64 %i.e, !21522, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21625)
    #dbg_value(ptr %i.h, !21522, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21625)
    #dbg_value(i16 %2, !21522, !DIExpression(DW_OP_LLVM_fragment, 448, 16), !21625)
    #dbg_value(i16 %2, !21522, !DIExpression(DW_OP_LLVM_fragment, 464, 16), !21625)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !21628
  %i.j = trunc nuw i16 %3 to i1, !dbg !21629      ; 2 uses
  %..i.i = tail call i16 @llvm.umin.i16(i16 %4, i16 %1), !dbg !21629
  %.sroa.11.0.a = select i1 %i.j, i16 %4, i16 -9, !dbg !21629
  %.sroa.1314.0 = select i1 %i.j, i16 %..i.i, i16 %1, !dbg !21629
    #dbg_value(i16 %.sroa.1314.0, !21522, !DIExpression(DW_OP_LLVM_fragment, 1152, 16), !21625)
    #dbg_value(i16 %.sroa.11.0.a, !21522, !DIExpression(DW_OP_LLVM_fragment, 1088, 16), !21625)
  store i64 0, ptr %0, align 8, !dbg !21630
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21630
  store i64 %i.e, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !21630
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21630
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21630
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21630
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !21630
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21630
  store i16 %2, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21630
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58, !dbg !21630
  store i16 %2, ptr %.sroa.8.0..sroa_idx, align 2, !dbg !21630
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !21630
  store i64 2, ptr %.sroa.913.0..sroa_idx, align 8, !dbg !21630
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !21630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10, i64 64, i1 false), !dbg !21630
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !21630
  store i16 %.sroa.11.0.a, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !21630
  %.sroa.1314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !21630
  store i16 %.sroa.1314.0, ptr %.sroa.1314.0..sroa_idx, align 8, !dbg !21630
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !21631
  ret void, !dbg !21632
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery5reset(ptr noalias nofree noundef align 8 dereferenceable(152) initializes((144, 146)) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21633 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !21638, !DIExpression(), !21643)
    #dbg_value(i16 %1, !21639, !DIExpression(), !21643)
    #dbg_value(i16 %2, !21640, !DIExpression(), !21643)
    #dbg_declare(ptr poison, !21641, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !21644)
    #dbg_declare(ptr poison, !21645, !DIExpression(), !21651)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !21653 ; 2 uses
  store i16 %1, ptr %i.b, align 8, !dbg !21653
    #dbg_value(ptr %0, !21654, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !21660)
    #dbg_value(ptr %0, !21662, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !21669)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !21671 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !dbg !21671
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !21671 ; 2 uses
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !21671 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !dbg !21672
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1, !dbg !21673
  br i1 %.not, label %bb.b, label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery37on_peer_max_udp_payload_size_received.exit, !dbg !21674

_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery37on_peer_max_udp_payload_size_received.exit: ; preds = %bb.a
    #dbg_value(i64 %.sroa.0.0.copyload, !21641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21675)
    #dbg_value(i16 %.sroa.6.0.copyload, !21641, !DIExpression(DW_OP_LLVM_fragment, 576, 16), !21675)
  store i64 2, ptr %i.c, align 8, !dbg !21676
    #dbg_value(ptr %0, !21479, !DIExpression(), !21677)
    #dbg_value(i16 %.sroa.6.0.copyload, !21480, !DIExpression(), !21677)
    #dbg_value(ptr undef, !20488, !DIExpression(DW_OP_deref), !21679)
    #dbg_value(ptr undef, !20494, !DIExpression(DW_OP_deref), !21679)
  %..i.i = tail call noundef i16 @llvm.umin.i16(i16 %.sroa.6.0.copyload, i16 %1), !dbg !21681
  store i16 %..i.i, ptr %i.b, align 8, !dbg !21682, !alias.scope !21683
    #dbg_value(ptr %i.c, !21481, !DIExpression(), !21686)
  store i16 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !21687, !alias.scope !21683
  br label %bb.b, !dbg !21688

bb.b:                                             ; preds = %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery37on_peer_max_udp_payload_size_received.exit, %bb.a
    #dbg_value(i16 %2, !21550, !DIExpression(), !21689)
    #dbg_value(i64 4, !21558, !DIExpression(), !21691)
    #dbg_value(i64 4, !21566, !DIExpression(), !21693)
    #dbg_declare(ptr poison, !21572, !DIExpression(), !21695)
    #dbg_value(i64 4, !21576, !DIExpression(), !21696)
    #dbg_declare(ptr poison, !21582, !DIExpression(), !21698)
    #dbg_value(i64 4, !21586, !DIExpression(), !21699)
    #dbg_declare(ptr poison, !21589, !DIExpression(), !21701)
    #dbg_value(i64 0, !21598, !DIExpression(), !21702)
    #dbg_value(i64 4, !21602, !DIExpression(), !21702)
    #dbg_value(i64 2, !21590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21699)
    #dbg_value(i64 2, !21603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21702)
    #dbg_value(i64 2, !21590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21699)
    #dbg_value(i64 2, !21603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21704, !noalias !21705
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !dbg !21704, !noalias !21705
  %i.d = load i64, ptr %i.a, align 8, !dbg !21704, !range !4289, !noalias !21705, !noundef !52
  %i.e = trunc nuw i64 %i.d to i1, !dbg !21708
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21699
  %i.g = load i64, ptr %i.f, align 8, !dbg !21699, !range !4291, !noalias !21705, !noundef !52 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21699 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector3new.exit, !dbg !21708, !prof !4292

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !dbg !21709, !noalias !21705
    #dbg_value(i64 %i.g, !21593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21710)
    #dbg_value(i64 %i.i, !21593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21710)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #26, !dbg !21711, !noalias !21705
  unreachable, !dbg !21711

_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector3new.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !dbg !21712, !noalias !21705, !nonnull !52, !noundef !52 ; 2 uses
    #dbg_value(i64 %i.g, !21591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21713)
    #dbg_value(ptr %i.j, !21591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21713)
    #dbg_value(ptr poison, !21601, !DIExpression(), !21714)
  %i.k = icmp samesign ugt i64 %i.g, 3, !dbg !21715
    #dbg_value(i1 true, !21618, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21716)
  tail call void @llvm.assume(i1 %i.k), !dbg !21718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21719, !noalias !21705
    #dbg_value(ptr %0, !21720, !DIExpression(), !21725)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21727 ; 5 uses
    #dbg_value(ptr %i.l, !21728, !DIExpression(), !21733)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstEEB1e_.exit.i unwind label %bb.d, !dbg !21735

bb.d:                                             ; preds = %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector3new.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.l, !21736, !DIExpression(), !21744)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.e, !dbg !21746

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !21735
  unreachable, !dbg !21735

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstEEB1e_.exit.i: ; preds = %_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB5_17BlackHoleDetector3new.exit
    #dbg_value(ptr %i.l, !21736, !DIExpression(), !21747)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud17BlackHoleDetectorEBH_.exit unwind label %bb.f, !dbg !21749

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstEEB1e_.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !21750

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.m, %bb.d ]
  store i64 0, ptr %0, align 8, !dbg !21750
  store i64 %i.g, ptr %i.l, align 8, !dbg !21750
  %.sroa.6.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21750
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx27, align 8, !dbg !21750
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21750
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !21750
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21750
  store i16 %2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !21750
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58, !dbg !21750
  store i16 %2, ptr %.sroa.9.0..sroa_idx, align 2, !dbg !21750
  resume { ptr, i32 } %eh.lpad-body, !dbg !21751

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud17BlackHoleDetectorEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstEEB1e_.exit.i
  store i64 0, ptr %0, align 8, !dbg !21750
  store i64 %i.g, ptr %i.l, align 8, !dbg !21750
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21750
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx29, align 8, !dbg !21750
  %.sroa.7.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21750
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx31, i8 0, i64 16, i1 false), !dbg !21750
  %.sroa.8.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21750
  store i16 %2, ptr %.sroa.8.0..sroa_idx32, align 8, !dbg !21750
  %.sroa.9.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 58, !dbg !21750
  store i16 %2, ptr %.sroa.9.0..sroa_idx34, align 2, !dbg !21750
  ret void, !dbg !21752
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery8disabled(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #1 !dbg !21753 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(i16 %1, !21758, !DIExpression(), !21760)
    #dbg_value(i16 %2, !21759, !DIExpression(), !21760)
    #dbg_value(i64 -1, !21526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21763), !dbg !21766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21767), !dbg !21766
    #dbg_value(i16 %1, !21532, !DIExpression(), !21761)
    #dbg_value(i16 %2, !21533, !DIExpression(), !21761)
    #dbg_value(i16 %2, !21550, !DIExpression(), !21769)
    #dbg_value(i64 4, !21558, !DIExpression(), !21771)
    #dbg_value(i64 4, !21566, !DIExpression(), !21773)
    #dbg_declare(ptr poison, !21572, !DIExpression(), !21775)
    #dbg_value(i64 4, !21576, !DIExpression(), !21776)
    #dbg_declare(ptr poison, !21582, !DIExpression(), !21778)
    #dbg_value(i64 4, !21586, !DIExpression(), !21779)
    #dbg_declare(ptr poison, !21589, !DIExpression(), !21781)
    #dbg_value(i64 0, !21598, !DIExpression(), !21782)
    #dbg_value(i64 4, !21602, !DIExpression(), !21782)
    #dbg_value(i64 2, !21590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21779)
    #dbg_value(i64 2, !21603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21782)
    #dbg_value(i64 2, !21590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21779)
    #dbg_value(i64 2, !21603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21784, !noalias !21785
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !dbg !21784, !noalias !21785
  %i.b = load i64, ptr %i.a, align 8, !dbg !21784, !range !4289, !noalias !21785, !noundef !52
  %i.c = trunc nuw i64 %i.b to i1, !dbg !21788
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21779
  %i.e = load i64, ptr %i.d, align 8, !dbg !21779, !range !4291, !noalias !21785, !noundef !52 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21779 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery10with_state.exit, !dbg !21788, !prof !4292

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !dbg !21789, !noalias !21785
    #dbg_value(i64 %i.e, !21593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21790)
    #dbg_value(i64 %i.g, !21593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21790)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #26, !dbg !21791, !noalias !21785
  unreachable, !dbg !21791

_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection4mtudNtB2_12MtuDiscovery10with_state.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !dbg !21792, !noalias !21785, !nonnull !52, !noundef !52
    #dbg_value(i64 %i.e, !21591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21793)
    #dbg_value(ptr %i.h, !21591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21793)
    #dbg_value(ptr poison, !21601, !DIExpression(), !21794)
  %i.i = icmp samesign ugt i64 %i.e, 3, !dbg !21795
    #dbg_value(i1 true, !21618, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21796)
  tail call void @llvm.assume(i1 %i.i), !dbg !21798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21799, !noalias !21785
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21800
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !21801, !alias.scope !21763, !noalias !21767
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !21800
  store i16 %1, ptr %i.j, align 8, !dbg !21800, !alias.scope !21763, !noalias !21767
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !21800
  store i64 -1, ptr %i.k, align 8, !dbg !21800, !alias.scope !21802
  store i64 0, ptr %0, align 8, !dbg !21800, !alias.scope !21763, !noalias !21767
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21800
  store i64 %i.e, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !21800, !alias.scope !21763, !noalias !21767
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21800
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !21800, !alias.scope !21763, !noalias !21767
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21800
  store i16 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !21800, !alias.scope !21763, !noalias !21767
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58, !dbg !21800
end_hunk_0
begin_hunk_1_@_RNvXsj_NtCsjx2R6KBUtVL_6rustls5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a

bb.ag:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27920

bb.ah:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ay, !27887, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27978)
    #dbg_value(ptr %i.ay, !27979, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27988)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27990
    #dbg_value(ptr %i.br, !27890, !DIExpression(), !27991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27978, !noalias !27956
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !27988 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !27988, !range !9816, !alias.scope !27856, !noalias !27922, !noundef !52 ; 2 uses
  %i.bu = xor i64 %i.bt, -9223372036854775808, !dbg !27988
  %i.bv = icmp slt i64 %i.bt, 0, !dbg !27988
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 2, !dbg !27988
  switch i64 %i.bw, label %bb.p [
    i64 0, label %bb.ay
    i64 1, label %bb.az
    i64 2, label %bb.ba
  ], !dbg !27988

bb.ai:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27920

bb.aj:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27920

bb.ak:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ay, !27892, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27992)
    #dbg_value(ptr %i.ay, !27911, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27993)
    #dbg_value(ptr %i.ay, !27905, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27994)
    #dbg_value(ptr %i.ay, !27995, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28005)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28007
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !28007, !alias.scope !27856, !noalias !27922, !nonnull !52, !noundef !52 ; 2 uses
    #dbg_value(ptr %i.by, !27899, !DIExpression(), !28014)
    #dbg_value(ptr %i.by, !27916, !DIExpression(), !27918)
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !dbg !28015, !noalias !27956
    #dbg_value(i64 %i.bz, !27906, !DIExpression(), !28016)
  %i.ca = icmp slt i64 %i.bz, 0, !dbg !28017
  br i1 %i.ca, label %bb.bf, label %bb.be, !dbg !28017

bb.al:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #27
          to label %common.resume unwind label %bb.an, !dbg !28018, !noalias !27922

bb.am:                                            ; preds = %bb.ac
  %i.cc = load <2 x i64>, ptr %i.m, align 16, !dbg !28019, !noalias !27856
  %.sroa.36.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !28019
  %i.cd = load i64, ptr %.sroa.36.8..sroa_idx32, align 16, !dbg !28019, !noalias !27856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !28019, !noalias !27856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !28018, !noalias !27956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !28018, !noalias !27956
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27939

bb.an:                                            ; preds = %bb.bc, %bb.aw, %bb.ao, %bb.al
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !27920, !noalias !27922
  unreachable, !dbg !27920

common.resume:                                    ; preds = %bb.bk, %bb.bn, %bb.al, %bb.ao, %bb.aw, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %i.ct, %bb.bc ], [ %i.cb, %bb.al ], [ %i.cf, %bb.ao ], [ %i.cr, %bb.aw ], [ %i.dn, %bb.bk ], [ %i.dr, %bb.bn ]
  resume { ptr, i32 } %common.resume.op, !dbg !27714

bb.ao:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %common.resume unwind label %bb.an, !dbg !28020, !noalias !27922

bb.ap:                                            ; preds = %bb.ad
  %i.cg = load <2 x i64>, ptr %i.k, align 16, !dbg !28021, !noalias !27856
  %.sroa.36.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !28021
  %i.ch = load i64, ptr %.sroa.36.8..sroa_idx31, align 16, !dbg !28021, !noalias !27856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !28021, !noalias !27856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !28020, !noalias !27956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !28020, !noalias !27956
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27939

bb.aq:                                            ; preds = %bb.af
    #dbg_value(ptr %i.ay, !27972, !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value), !28022)
    #dbg_value(ptr %i.ay, !28023, !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value), !28029)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 33, !dbg !28029
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !28022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cj, ptr noundef nonnull readonly align 1 dereferenceable(17) %i.ci, i64 17, i1 false), !dbg !28029, !noalias !27922
  br label %bb.av, !dbg !27975

bb.ar:                                            ; preds = %bb.af
    #dbg_value(ptr %i.ay, !27970, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !28031)
    #dbg_value(ptr %i.ay, !28032, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !28038)
    #dbg_value(ptr %i.ay, !28041, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !28051)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28051 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !28051, !range !5166, !alias.scope !27856, !noalias !27922, !noundef !52
  %.not.i14 = icmp eq i64 %i.cl, -1, !dbg !28051
  br i1 %.not.i14, label %bb.at, label %bb.as, !dbg !28051

bb.as:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.ck, !28049, !DIExpression(), !28053)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !28054, !noalias !27956
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck), !dbg !28054, !noalias !27922
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.e, align 8, !dbg !28054, !noalias !27956
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !28054
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !28054, !noalias !27956
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !28054
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !28054, !noalias !27956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28054, !noalias !27956
  br label %bb.au, !dbg !28051

bb.at:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.ay, !28047, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !28055)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !28055
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !28055, !alias.scope !27856, !noalias !27922, !nonnull !52, !noundef !52
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !28055
  %i.cp = load i64, ptr %i.co, align 8, !dbg !28055, !alias.scope !27856, !noalias !27922, !noundef !52
  br label %bb.au, !dbg !28051

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.as ], [ %i.cp, %bb.at ], !dbg !28051
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.as ], [ %i.cn, %bb.at ], !dbg !28051
  %.sroa.0.0.i16 = phi i64 [ %.sroa.0.0.copyload.i15, %bb.as ], [ -1, %bb.at ], !dbg !28051
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !28031
  store i64 %.sroa.0.0.i16, ptr %i.cq, align 8, !dbg !28031, !noalias !27956
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !28031
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !28031, !noalias !27956
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !28031
  store i64 %.sroa.6.0.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !28031, !noalias !27956
  br label %bb.av, !dbg !27975

bb.av:                                            ; preds = %bb.au, %bb.aq
  %storemerge.i = phi i8 [ 0, %bb.au ], [ 1, %bb.aq ], !dbg !27975
  store i8 %storemerge.i, ptr %i.i, align 8, !dbg !27975, !noalias !27956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !28056, !noalias !27956
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay)
          to label %bb.ax unwind label %bb.aw, !dbg !28056, !noalias !27922

bb.aw:                                            ; preds = %bb.av
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCseEeXhZwqjpo_16rustls_pki_types11server_name10ServerNameECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #27
          to label %common.resume unwind label %bb.an, !dbg !28057, !noalias !27922

bb.ax:                                            ; preds = %bb.av
  %.sroa.36.sroa.0.0.copyload41 = load i64, ptr %i.i, align 8, !dbg !28058, !noalias !27856
  %.sroa.36.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !28058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7.0..sroa_idx, i64 24, i1 false), !dbg !28058, !noalias !27856
  %.sroa.018.0.copyload19 = load i64, ptr %i.h, align 8, !dbg !28058, !noalias !27856
  %.sroa.2520.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !28058
  %i.cs = load <2 x i64>, ptr %.sroa.2520.0..sroa_idx21, align 8, !dbg !28058, !noalias !27856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !28057, !noalias !27956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !28057, !noalias !27956
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27939

bb.ay:                                            ; preds = %bb.ah
  store i64 -9223372036854775808, ptr %i.g, align 8, !dbg !27988, !noalias !27956
  br label %bb.bb, !dbg !27988

bb.az:                                            ; preds = %bb.ah
  store i64 -9223372036854775807, ptr %i.g, align 8, !dbg !27988, !noalias !27956
  br label %bb.bb, !dbg !27988

bb.ba:                                            ; preds = %bb.ah
    #dbg_value(ptr %i.bs, !27985, !DIExpression(), !28059)
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs), !dbg !28060, !noalias !27922
  br label %bb.bb, !dbg !27988

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !28061, !noalias !27956
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.bd unwind label %bb.bc, !dbg !28061, !noalias !27922

bb.bc:                                            ; preds = %bb.bb
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #27
          to label %common.resume unwind label %bb.an, !dbg !28062, !noalias !27922

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !28063, !noalias !27856
  %i.cu = load <2 x i64>, ptr %i.f, align 16, !dbg !28063, !noalias !27856
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !28063
  %i.cv = load i64, ptr %.sroa.36.8..sroa_idx, align 16, !dbg !28063, !noalias !27856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !28062, !noalias !27956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !28062, !noalias !27956
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27939

bb.be:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !28007
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !28064, !alias.scope !27856, !noalias !27922, !nonnull !52, !align !4299, !noundef !52
  %i.cy = insertelement <2 x ptr> poison, ptr %i.by, i64 0, !dbg !28065
  %i.cz = insertelement <2 x ptr> %i.cy, ptr %i.cx, i64 1, !dbg !28065
  %i.da = ptrtoint <2 x ptr> %i.cz to <2 x i64>, !dbg !28065
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !27939

bb.bf:                                            ; preds = %bb.ak
  tail call void @llvm.trap(), !dbg !28066
  unreachable, !dbg !28066

_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.o, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ae, %bb.ag, %bb.ai, %bb.aj, %bb.am, %bb.ap, %bb.ax, %bb.bd, %bb.be
  %.sroa.36.sroa.0.0 = phi i64 [ undef, %bb.o ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.cd, %bb.am ], [ %i.ch, %bb.ap ], [ undef, %bb.ae ], [ %.sroa.36.sroa.0.0.copyload41, %bb.ax ], [ undef, %bb.ag ], [ %i.cv, %bb.bd ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.be ]
  %.sroa.018.0 = phi i64 [ -9223372036854775808, %bb.o ], [ -9223372036854775807, %bb.q ], [ -9223372036854775806, %bb.r ], [ -9223372036854775805, %bb.s ], [ -9223372036854775804, %bb.t ], [ -9223372036854775803, %bb.u ], [ -9223372036854775802, %bb.v ], [ -9223372036854775801, %bb.w ], [ -9223372036854775800, %bb.x ], [ -9223372036854775799, %bb.y ], [ -9223372036854775798, %bb.z ], [ -9223372036854775797, %bb.aa ], [ -9223372036854775796, %bb.ab ], [ -9223372036854775795, %bb.am ], [ -9223372036854775794, %bb.ap ], [ -9223372036854775793, %bb.ae ], [ %.sroa.018.0.copyload19, %bb.ax ], [ -9223372036854775791, %bb.ag ], [ -9223372036854775790, %bb.bd ], [ -9223372036854775789, %bb.ai ], [ -9223372036854775788, %bb.aj ], [ -9223372036854775787, %bb.be ], !dbg !27920
  %i.db = phi <2 x i64> [ undef, %bb.o ], [ undef, %bb.q ], [ %i.bf, %bb.r ], [ undef, %bb.s ], [ %i.bh, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %i.bj, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.cc, %bb.am ], [ %i.cg, %bb.ap ], [ undef, %bb.ae ], [ %i.cs, %bb.ax ], [ undef, %bb.ag ], [ %i.cu, %bb.bd ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ %i.da, %bb.be ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28067
  store i64 %.sroa.018.0, ptr %i.dc, align 8, !dbg !28067
  %.sroa.2520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28067
  store <2 x i64> %i.db, ptr %.sroa.2520.0..sroa_idx, align 8, !dbg !28067
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28067
  store i64 %.sroa.36.sroa.0.0, ptr %.sroa.36.0..sroa_idx, align 8, !dbg !28067
  %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, i64 24, i1 false), !dbg !28067
  store i8 11, ptr %0, align 8, !dbg !28067
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.7), !dbg !28068
  br label %bb.ca, !dbg !27763

bb.bg:                                            ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28069
    #dbg_value(ptr %i.dd, !27703, !DIExpression(), !28070)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.sroa.5), !dbg !28071
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28072), !dbg !28071
    #dbg_value(ptr %i.dd, !28075, !DIExpression(), !28089)
    #dbg_value(i64 1, !28091, !DIExpression(), !28096)
    #dbg_value(i8 0, !28095, !DIExpression(), !28096)
    #dbg_value(i64 1, !28108, !DIExpression(), !28113)
    #dbg_value(i8 0, !28112, !DIExpression(), !28113)
  %i.de = load i64, ptr %i.dd, align 8, !dbg !28115, !range !28116, !alias.scope !28072, !noalias !28117, !noundef !52 ; 2 uses
  switch i64 %i.de, label %default.unreachable42 [
    i64 0, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 1, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 2, label %bb.bh
    i64 3, label %bb.bi
    i64 4, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 5, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 6, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 7, label %bb.bj
    i64 8, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 9, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 10, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 11, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 12, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 13, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ], !dbg !28115

bb.bh:                                            ; preds = %bb.bg
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28119
    #dbg_value(ptr %i.df, !28081, !DIExpression(), !28120)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28121
    #dbg_value(ptr %i.dg, !28083, !DIExpression(), !28120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !28122, !noalias !28123
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df), !dbg !28122, !noalias !28117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28124, !noalias !28123
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCseEeXhZwqjpo_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.bl unwind label %bb.bk, !dbg !28124, !noalias !28117

bb.bi:                                            ; preds = %bb.bg
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28125
    #dbg_value(ptr %i.dh, !28084, !DIExpression(), !28126)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28127
    #dbg_value(ptr %i.di, !28086, !DIExpression(), !28126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28128, !noalias !28123
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh), !dbg !28128, !noalias !28117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28129, !noalias !28123
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %bb.bo unwind label %bb.bn, !dbg !28129, !noalias !28117

bb.bj:                                            ; preds = %bb.bg
    #dbg_value(ptr %i.dd, !28087, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28130)
    #dbg_value(ptr %i.dd, !28106, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28131)
    #dbg_value(ptr %i.dd, !28100, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28132)
    #dbg_value(ptr %i.dd, !28133, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28136)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28138
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !28138, !alias.scope !28072, !noalias !28117, !nonnull !52, !noundef !52 ; 2 uses
    #dbg_value(ptr %i.dk, !28094, !DIExpression(), !28141)
    #dbg_value(ptr %i.dk, !28111, !DIExpression(), !28113)
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !dbg !28142, !noalias !28123
    #dbg_value(i64 %i.dl, !28101, !DIExpression(), !28143)
  %i.dm = icmp slt i64 %i.dl, 0, !dbg !28144
  br i1 %i.dm, label %bb.bq, label %bb.bp, !dbg !28144

bb.bk:                                            ; preds = %bb.bh
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.bm, !dbg !28145, !noalias !28117

bb.bl:                                            ; preds = %bb.bh
  %i.do = load <2 x ptr>, ptr %i.d, align 16, !dbg !28146, !noalias !28072
  %.sroa.21.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !28146
  %i.dp = load i64, ptr %.sroa.21.8..sroa_idx39, align 16, !dbg !28146, !noalias !28072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !28146, !noalias !28072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28145, !noalias !28123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28145, !noalias !28123
  br label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28147

bb.bm:                                            ; preds = %bb.bn, %bb.bk
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !28115, !noalias !28117
  unreachable, !dbg !28115

bb.bn:                                            ; preds = %bb.bi
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.bm, !dbg !28148, !noalias !28117

bb.bo:                                            ; preds = %bb.bi
  %i.ds = load <2 x ptr>, ptr %i.b, align 16, !dbg !28149, !noalias !28072
  %.sroa.21.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !28149
  %i.dt = load i64, ptr %.sroa.21.8..sroa_idx, align 16, !dbg !28149, !noalias !28072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !28149, !noalias !28072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28148, !noalias !28123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28148, !noalias !28123
  br label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28147

bb.bp:                                            ; preds = %bb.bj
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !28138
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !28150, !alias.scope !28072, !noalias !28117, !nonnull !52, !align !4299, !noundef !52
  %i.dw = insertelement <2 x ptr> poison, ptr %i.dk, i64 0
  %i.dx = insertelement <2 x ptr> %i.dw, ptr %i.dv, i64 1
  br label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28147

bb.bq:                                            ; preds = %bb.bj
  tail call void @llvm.trap(), !dbg !28151
  unreachable, !dbg !28151

_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bl, %bb.bo, %bb.bp
  %.sroa.21.sroa.0.0 = phi i64 [ %i.dp, %bb.bl ], [ %i.dt, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ]
  %i.dy = phi <2 x ptr> [ %i.do, %bb.bl ], [ %i.ds, %bb.bo ], [ %i.dx, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28152
  store i64 %i.de, ptr %i.dz, align 8, !dbg !28152
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28152
  store <2 x ptr> %i.dy, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !28152
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28152
  store i64 %.sroa.21.sroa.0.0, ptr %.sroa.21.0..sroa_idx, align 8, !dbg !28152
  %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, i64 24, i1 false), !dbg !28152
  store i8 12, ptr %0, align 8, !dbg !28152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.5), !dbg !28153
  br label %bb.ca, !dbg !27763

bb.br:                                            ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28154
    #dbg_value(ptr %i.ea, !27706, !DIExpression(), !28155)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28156
  tail call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea), !dbg !28157
  store i8 13, ptr %0, align 8, !dbg !28156
  br label %bb.ca, !dbg !27763

bb.bs:                                            ; preds = %bb.a
  store i8 14, ptr %0, align 8, !dbg !27747
  br label %bb.ca, !dbg !27747

bb.bt:                                            ; preds = %bb.a
  store i8 15, ptr %0, align 8, !dbg !27747
  br label %bb.ca, !dbg !27747

bb.bu:                                            ; preds = %bb.a
  store i8 16, ptr %0, align 8, !dbg !27747
  br label %bb.ca, !dbg !27747

bb.bv:                                            ; preds = %bb.a
  store i8 17, ptr %0, align 8, !dbg !27747
  br label %bb.ca, !dbg !27747

bb.bw:                                            ; preds = %bb.a
  store i8 18, ptr %0, align 8, !dbg !27747
  br label %bb.ca, !dbg !27747

bb.bx:                                            ; preds = %bb.a
  store i8 19, ptr %0, align 8, !dbg !27747
  br label %bb.ca, !dbg !27747

bb.by:                                            ; preds = %bb.a
    #dbg_value(ptr %1, !27708, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !28158)
    #dbg_value(ptr %1, !28159, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !28165)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !28165
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !28165, !range !1978, !noundef !52
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !28166
  store i8 %i.ed, ptr %i.ee, align 1, !dbg !28166
  store i8 20, ptr %0, align 8, !dbg !28166
  br label %bb.ca, !dbg !27763

bb.bz:                                            ; preds = %bb.a
    #dbg_value(ptr %1, !27711, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27739)
    #dbg_value(ptr %1, !27738, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27732)
    #dbg_value(ptr %1, !27729, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28167)
    #dbg_value(ptr %1, !28168, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28171)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28173
  %i.eg = load ptr, ptr %i.ef, align 8, !dbg !28173, !nonnull !52, !noundef !52 ; 2 uses
    #dbg_value(ptr %i.eg, !27719, !DIExpression(), !28176)
    #dbg_value(ptr %i.eg, !27743, !DIExpression(), !27745)
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !dbg !28177
    #dbg_value(i64 %i.eh, !27730, !DIExpression(), !28178)
  %i.ei = icmp slt i64 %i.eh, 0, !dbg !28179
  br i1 %i.ei, label %bb.cc, label %bb.cb, !dbg !28179

bb.ca:                                            ; preds = %bb.cb, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.n, %bb.m, %_RNvXsE_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16PeerIncompatibleNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !28180

bb.cb:                                            ; preds = %bb.bz
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28173
  %i.ek = load ptr, ptr %i.ej, align 8, !dbg !28181, !nonnull !52, !align !4299, !noundef !52
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28182
  store ptr %i.eg, ptr %i.el, align 8, !dbg !28182
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28182
  store ptr %i.ek, ptr %i.em, align 8, !dbg !28182
  store i8 21, ptr %0, align 8, !dbg !28182
  br label %bb.ca, !dbg !27763

bb.cc:                                            ; preds = %bb.bz
  tail call void @llvm.trap(), !dbg !28183
  unreachable, !dbg !28183
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtNtB7_3ops5range5RangeyENtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28184 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28190)
    #dbg_value(ptr %0, !28191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28208)
    #dbg_value(ptr %0, !28210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28220)
    #dbg_value(i64 %1, !28188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28190)
    #dbg_value(i64 %1, !28191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28208)
    #dbg_value(i64 %1, !28210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28220)
    #dbg_value(ptr %2, !28189, !DIExpression(), !28190)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28222
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28223
    #dbg_value(i64 %1, !28214, !DIExpression(), !28224)
    #dbg_value(i64 %1, !28225, !DIExpression(), !28232)
    #dbg_value(ptr %0, !28216, !DIExpression(), !28234)
    #dbg_value(ptr %0, !28231, !DIExpression(), !28232)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !28235
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtNtBa_3ops5range5RangeyEINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28236
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28238
  ret i1 %i.d, !dbg !28239
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28240 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28251)
    #dbg_value(ptr %0, !28252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28269)
    #dbg_value(ptr %0, !28271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28281)
    #dbg_value(i64 %1, !28249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28251)
    #dbg_value(i64 %1, !28252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28269)
    #dbg_value(i64 %1, !28271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28281)
    #dbg_value(ptr %2, !28250, !DIExpression(), !28251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28283
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28284
    #dbg_value(i64 %1, !28275, !DIExpression(), !28285)
    #dbg_value(i64 %1, !28286, !DIExpression(), !28293)
    #dbg_value(ptr %0, !28277, !DIExpression(), !28295)
    #dbg_value(ptr %0, !28292, !DIExpression(), !28293)
  %i.b = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %1, !dbg !28296
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28297
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28299
  ret i1 %i.d, !dbg !28300
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28301 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28312)
    #dbg_value(ptr %0, !28313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28330)
    #dbg_value(ptr %0, !28332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28342)
    #dbg_value(i64 %1, !28310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28312)
    #dbg_value(i64 %1, !28313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28330)
    #dbg_value(i64 %1, !28332, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28342)
    #dbg_value(ptr %2, !28311, !DIExpression(), !28312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28344
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28345
    #dbg_value(i64 %1, !28336, !DIExpression(), !28346)
    #dbg_value(i64 %1, !28347, !DIExpression(), !28354)
    #dbg_value(ptr %0, !28338, !DIExpression(), !28356)
    #dbg_value(ptr %0, !28353, !DIExpression(), !28354)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !28357
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28358
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28360
  ret i1 %i.d, !dbg !28361
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28362 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28373)
    #dbg_value(ptr %0, !28374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28391)
    #dbg_value(ptr %0, !28393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28403)
    #dbg_value(i64 %1, !28371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28373)
    #dbg_value(i64 %1, !28374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28391)
    #dbg_value(i64 %1, !28393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28403)
    #dbg_value(ptr %2, !28372, !DIExpression(), !28373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28405
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28406
    #dbg_value(i64 %1, !28397, !DIExpression(), !28407)
    #dbg_value(i64 %1, !28408, !DIExpression(), !28415)
    #dbg_value(ptr %0, !28399, !DIExpression(), !28417)
    #dbg_value(ptr %0, !28414, !DIExpression(), !28415)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !28418
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28419
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28421
  ret i1 %i.d, !dbg !28422
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28423 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28429)
    #dbg_value(ptr %0, !28430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28435)
    #dbg_value(ptr %0, !28437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28447)
    #dbg_value(i64 %1, !28427, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28429)
    #dbg_value(i64 %1, !28430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28435)
    #dbg_value(i64 %1, !28437, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28447)
    #dbg_value(ptr %2, !28428, !DIExpression(), !28429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28449
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28450
    #dbg_value(i64 %1, !28441, !DIExpression(), !28451)
    #dbg_value(i64 %1, !28452, !DIExpression(), !28456)
    #dbg_value(ptr %0, !28443, !DIExpression(), !28458)
    #dbg_value(ptr %0, !28455, !DIExpression(), !28456)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !28459
end_hunk_1
