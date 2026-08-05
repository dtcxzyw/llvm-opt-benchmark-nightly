inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10BinaryTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array6binary9namespace19BinaryNameSpaceImpl16contains_chunked0CskY9G75ZWc4U_11polars_expr:bb.a
  %i.cc = icmp eq i64 %i.g, 0, !dbg !85418
  %i.cd = icmp eq i64 %i.k, 0
  %or.cond12.i = or i1 %i.cc, %i.cd, !dbg !85418
  br i1 %or.cond12.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i, label %bb.o, !dbg !85418

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef 1) #56, !dbg !85422, !noalias !85429
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !85436

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85437, !noalias !85163
  br label %_RNvNtCslnrARR2vGZ9_6memchr6memmem4find.exit, !dbg !85438

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.bx, !dbg !85439

_RNvNtCslnrARR2vGZ9_6memchr6memmem4find.exit:     ; preds = %bb.f, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i, %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i
  %.sroa.0.0.i8.pn.i = phi i1 [ %.sroa.0.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i ], [ true, %bb.i ], [ false, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i8.pn.i, !dbg !85440
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0CskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2, ptr noalias noundef readonly captures(address, read_provenance) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85441 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %1, null, !dbg !85446
  %.not15 = icmp eq ptr %3, null
  %or.cond = or i1 %.not, %.not15, !dbg !85447
  br i1 %or.cond, label %bb.b, label %bb.c, !dbg !85447

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85448
  store i64 -9223372036854775808, ptr %i.h, align 8, !dbg !85448
  store i64 18, ptr %0, align 8, !dbg !85448
  br label %bb.m, !dbg !85449

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !85450
  call void @_RNvMs0_CsdnXzjeJpNm1_12jsonpath_libNtB5_12PathCompiled7compile(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !dbg !85450
  %i.i = load i64, ptr %i.g, align 8, !dbg !85452, !range !85455, !noundef !14
  %.not16 = icmp eq i64 %i.i, 4, !dbg !85452
  br i1 %.not16, label %bb.g, label %bb.d, !dbg !85456

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !85457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !85459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !85460, !noalias !85464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85468, !noalias !85464
  store ptr %i.f, ptr %i.b, align 8, !dbg !85468, !noalias !85464
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !85468
  store ptr @_RNvXs0_NtCsdnXzjeJpNm1_12jsonpath_lib6selectNtB5_13JsonPathErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !85468, !noalias !85464
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @114, ptr noundef nonnull %i.b)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.e, !dbg !85471, !noalias !85477

bb.e:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit.i, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsdnXzjeJpNm1_12jsonpath_lib6select13JsonPathErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #52
          to label %common.resume unwind label %bb.f, !dbg !85460, !noalias !85477

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85460, !noalias !85464
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116)
          to label %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr.exit unwind label %bb.e, !dbg !85478, !noalias !85477

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !85482, !noalias !85477
  unreachable, !dbg !85482

common.resume:                                    ; preds = %bb.h, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !85483

_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.4.8.copyload = load ptr, ptr %i.d, align 8, !dbg !85460, !noalias !85484
  %.sroa.61.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !85460
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !85485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61.8..sroa_idx, i64 16, i1 false), !dbg !85460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !85460, !noalias !85464
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsdnXzjeJpNm1_12jsonpath_lib6select13JsonPathErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f), !dbg !85460, !noalias !85477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !85490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !85491
  store i64 2, ptr %0, align 8, !dbg !85485
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85485
  store ptr %.sroa.4.8.copyload, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !85485
  br label %bb.m, !dbg !85492

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !85493
  %i.m = load ptr, ptr %i.l, align 8, !dbg !85493, !nonnull !14, !noundef !14 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !85491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !85494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8, !noalias !85496
  invoke void @_RNvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path12extract_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.j unwind label %bb.h, !dbg !85500

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !dbg !85503, !noalias !85516, !noundef !14
  %i.p = add i64 %i.o, -1, !dbg !85523            ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !dbg !85524, !noalias !85516
  %i.q = icmp eq i64 %i.p, 0, !dbg !85532
  br i1 %i.q, label %bb.i, label %common.resume, !dbg !85532

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #51
          to label %common.resume unwind label %bb.l, !dbg !85533, !noalias !85534

bb.j:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.m, align 8, !dbg !85535, !noalias !85542, !noundef !14
  %i.s = add i64 %i.r, -1, !dbg !85549            ; 2 uses
  store i64 %i.s, ptr %i.m, align 8, !dbg !85550, !noalias !85542
  %i.t = icmp eq i64 %i.s, 0, !dbg !85554
  br i1 %i.t, label %bb.k, label %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr.exit, !dbg !85554

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs6_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #51, !dbg !85555, !noalias !85534
  br label %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr.exit, !dbg !85555

bb.l:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !85556, !noalias !85534
  unreachable, !dbg !85556

_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85557
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !85558
  store i64 18, ptr %0, align 8, !dbg !85558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !85559
  br label %bb.m, !dbg !85560

bb.m:                                             ; preds = %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr.exit, %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr.exit, %bb.b
  ret void, !dbg !85561
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16contains_chunked0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85562 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85563), !dbg !85566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85569), !dbg !85566
  %i.d = icmp eq i64 %3, 0, !dbg !85571
  br i1 %i.d, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.b, !dbg !85571

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %3, %1, !dbg !85574
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !85574

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %3, 1, !dbg !85575
  br i1 %i.f, label %bb.f, label %bb.e, !dbg !85575

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %3, %1, !dbg !85576
  br i1 %i.g, label %bb.y, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !85576

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %3, 33, !dbg !85588
  br i1 %i.h, label %bb.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.i, !dbg !85588

bb.f:                                             ; preds = %bb.c
  %i.i = load i8, ptr %2, align 1, !dbg !85589, !alias.scope !85563, !noalias !85569, !noundef !14 ; 2 uses
  %i.j = icmp samesign ult i64 %1, 16, !dbg !85595
  br i1 %i.j, label %.lr.ph.i.i, label %bb.g, !dbg !85595

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr14memchr_aligned(i8 noundef %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1), !dbg !85597, !noalias !85563
  %i.l = extractvalue { i64, i64 } %i.k, 0, !dbg !85598
  %i.m = icmp eq i64 %i.l, 1, !dbg !85599
  %i.n = zext i1 %i.m to i8, !dbg !85599
  br label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !85597

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.h
  %.sroa.01.05.i.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.i.i, !dbg !85603
  %i.p = load i8, ptr %i.o, align 1, !dbg !85603, !alias.scope !85605, !noalias !85563, !noundef !14
  %i.q = icmp eq i8 %i.p, %i.i, !dbg !85603
  br i1 %i.q, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.h, !dbg !85603

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.r = add nuw nsw i64 %.sroa.01.05.i.i, 1, !dbg !85608 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %1, !dbg !85609
  br i1 %exitcond.not.i.i, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.lr.ph.i.i, !dbg !85609

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.i: ; preds = %bb.k, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85610, !noalias !85611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85610, !noalias !85611
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !85612
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b) #50, !dbg !85615
  %i.s = load i64, ptr %i.c, align 8, !dbg !85616, !range !3262, !noalias !85611, !noundef !14
  %i.t = trunc nuw nsw i64 %i.s to i8, !dbg !85621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85622, !noalias !85611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85622, !noalias !85611
  br label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !85622

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85623), !dbg !85626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85628), !dbg !85626
  %i.u = load i8, ptr %2, align 1, !dbg !85630, !alias.scope !85635, !noalias !85636, !noundef !14 ; 3 uses
  %i.v = add nsw i64 %3, -1, !dbg !85637          ; 2 uses
  %i.w = icmp eq i64 %3, 2, !dbg !85639
  br i1 %i.w, label %.thread.i.i, label %bb.j, !dbg !85639

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %3, i64 4), !dbg !85641
  br label %.lr.ph, !dbg !85644

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.y = icmp ult i64 %i.x, %i.aa, !dbg !85655
  br i1 %i.y, label %.lr.ph, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.i, !dbg !85644

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.z = phi i64 [ %3, %bb.j ], [ %i.aa, %bb.k ]
  %i.aa = add nsw i64 %i.z, -1, !dbg !85658       ; 6 uses
  %i.ab = icmp ult i64 %i.aa, %3, !dbg !85663
  br i1 %i.ab, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i, label %bb.l, !dbg !85663

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef range(i64 2, 33) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #54, !dbg !85663, !noalias !85671
  unreachable, !dbg !85663

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa, !dbg !85663
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !85663, !alias.scope !85635, !noalias !85679, !noundef !14 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ad, %i.u, !dbg !85663
  br i1 %.not.i.not.i.i.i, label %bb.k, label %bb.m, !dbg !85680

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.ae = add nuw nsw i64 %3, 15, !dbg !85681
  %i.af = icmp ult i64 %1, %i.ae, !dbg !85683
  br i1 %i.af, label %.lr.ph.split.us.i.i.i, label %bb.n, !dbg !85683

.thread.i.i:                                      ; preds = %bb.i
  %i.ag = icmp ult i64 %1, 17, !dbg !85683
  br i1 %i.ag, label %.lr.ph.split.us.i.i.i, label %.thread93.i.i, !dbg !85683

.thread93.i.i:                                    ; preds = %.thread.i.i
  %i.ah = insertelement <16 x i8> poison, i8 %i.u, i64 0, !dbg !85684
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !85684
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !dbg !85691, !alias.scope !85635, !noalias !85636
  br label %bb.o, !dbg !85691

bb.n:                                             ; preds = %bb.m
  %i.aj = insertelement <16 x i8> poison, i8 %i.u, i64 0, !dbg !85684
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !85684
  br label %bb.o, !dbg !85691

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.m
  %bcmp.i.i.us23.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %2, i64 range(i64 2, 33) %3), !dbg !85693, !alias.scope !85714, !noalias !85715
  %i.al = icmp eq i32 %bcmp.i.i.us23.i.i.i, 0, !dbg !85693
  br i1 %i.al, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskY9G75ZWc4U_11polars_expr.exit.backedge.us.i.i.i, !dbg !85719

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskY9G75ZWc4U_11polars_expr.exit.backedge.us.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1, !dbg !85720 ; 2 uses
  %bcmp.i.i.us.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.am, ptr noundef nonnull readonly dereferenceable(1) %2, i64 range(i64 2, 33) %3), !dbg !85693, !alias.scope !85714, !noalias !85715
  %i.an = icmp eq i32 %bcmp.i.i.us.i.i.i, 0, !dbg !85693
  br i1 %i.an, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskY9G75ZWc4U_11polars_expr.exit.backedge.us.i.i.i, !dbg !85719

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskY9G75ZWc4U_11polars_expr.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i, %.split.us.i.i.i
  %.pn.i.i = phi ptr [ %i.am, %.split.us.i.i.i ], [ %0, %.lr.ph.split.us.i.i.i ]
  %.in.i.i = phi i64 [ %i.ao, %.split.us.i.i.i ], [ %1, %.lr.ph.split.us.i.i.i ]
  %i.ao = add i64 %.in.i.i, -1, !dbg !85735       ; 2 uses
  %.not28.i.i.i = icmp ugt i64 %3, %i.ao, !dbg !85736
  br i1 %.not28.i.i.i, label %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i, !dbg !85736

bb.o:                                             ; preds = %bb.n, %.thread93.i.i
  %i.ap = phi i8 [ %.pre.i.i, %.thread93.i.i ], [ %i.ad, %bb.n ], !dbg !85691
  %i.aq = phi <16 x i8> [ %i.ai, %.thread93.i.i ], [ %i.ak, %bb.n ] ; 6 uses
  %storemerge9295.i.i = phi i64 [ 1, %.thread93.i.i ], [ %i.aa, %bb.n ] ; 6 uses
  %i.ar = insertelement <16 x i8> poison, i8 %i.ap, i64 0, !dbg !85737
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !85737 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1, !dbg !85739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85749, !noalias !85714
  store ptr %0, ptr %i.a, align 8, !dbg !85751, !noalias !85714
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !85751
  store i64 %1, ptr %i.au, align 8, !dbg !85751, !noalias !85714
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !85751
  store ptr %i.at, ptr %i.av, align 8, !dbg !85751, !noalias !85714
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !85751
  store i64 %i.v, ptr %i.aw, align 8, !dbg !85751, !noalias !85714
  %i.ax = add nuw nsw i64 %3, 63                  ; 2 uses
  %.not.i5.i = icmp ult i64 %i.ax, %1, !dbg !85752
  br i1 %.not.i5.i, label %.lr.ph.i8.i, label %.preheader.i6.i, !dbg !85752

.preheader.i6.i:                                  ; preds = %bb.s, %bb.o
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.o ], [ %i.ct, %bb.s ], !dbg !85757 ; 2 uses
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i.i, %bb.s ], !dbg !85758 ; 2 uses
  %i.ay = add nuw nsw i64 %3, 15                  ; 2 uses
  %i.az = add i64 %.sroa.06.0.lcssa.i.i, %i.ay, !dbg !85759
  %i.ba = icmp uge i64 %i.az, %1, !dbg !85759
  %i.bb = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3105.i.i = select i1 %i.ba, i1 true, i1 %i.bb, !dbg !85759
  br i1 %or.cond3105.i.i, label %._crit_edge.i7.i, label %.lr.ph107.i.i, !dbg !85759

.lr.ph.i8.i:                                      ; preds = %bb.o, %bb.s
  %.sroa.06.0103.i.i = phi i64 [ %i.ct, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.0103.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.bc, align 1, !dbg !85760, !alias.scope !85636, !noalias !85773
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %storemerge9295.i.i, !dbg !85776
  %.sroa.02.0.copyload.i.i.i = load <16 x i8>, ptr %i.bd, align 1, !dbg !85780, !alias.scope !85636, !noalias !85773
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.aq, !dbg !85787
  %i.bf = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i, %i.as, !dbg !85796
  %i.bg = and <16 x i1> %i.be, %i.bf, !dbg !85799
  %i.bh = bitcast <16 x i1> %i.bg to i16, !dbg !85806 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !85807 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !85760, !alias.scope !85636, !noalias !85773
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %storemerge9295.i.i, !dbg !85776
  %.sroa.02.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bj, align 1, !dbg !85780, !alias.scope !85636, !noalias !85773
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.aq, !dbg !85787
  %i.bl = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i, %i.as, !dbg !85796
  %i.bm = and <16 x i1> %i.bk, %i.bl, !dbg !85799
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !85806 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 32, !dbg !85807 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.bo, align 1, !dbg !85760, !alias.scope !85636, !noalias !85773
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %storemerge9295.i.i, !dbg !85776
  %.sroa.02.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.bp, align 1, !dbg !85780, !alias.scope !85636, !noalias !85773
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.aq, !dbg !85787
  %i.br = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i, %i.as, !dbg !85796
  %i.bs = and <16 x i1> %i.bq, %i.br, !dbg !85799
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !85806 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !85807 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.bu, align 1, !dbg !85760, !alias.scope !85636, !noalias !85773
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %storemerge9295.i.i, !dbg !85776
  %.sroa.02.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.bv, align 1, !dbg !85780, !alias.scope !85636, !noalias !85773
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.aq, !dbg !85787
  %i.bx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i, %i.as, !dbg !85796
  %i.by = and <16 x i1> %i.bw, %i.bx, !dbg !85799
  %i.bz = bitcast <16 x i1> %i.by to i16, !dbg !85806 ; 2 uses
  %i.ca = icmp eq i16 %i.bh, 0, !dbg !85809
  br i1 %i.ca, label %.preheader96.1.i.i, label %bb.t, !dbg !85809

.preheader96.1.i.i:                               ; preds = %bb.t, %.lr.ph.i8.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i8.i ], [ %i.cy, %bb.t ], !dbg !85813 ; 3 uses
  %i.cb = icmp eq i16 %i.bn, 0, !dbg !85809
  br i1 %i.cb, label %.preheader96.2.i.i, label %bb.p, !dbg !85809

bb.p:                                             ; preds = %.preheader96.1.i.i
  %i.cc = or disjoint i64 %.sroa.06.0103.i.i, 16, !dbg !85814
  %i.cd = trunc nuw i8 %.sroa.014.2.i.i to i1, !dbg !85815
  %i.ce = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cc, i16 noundef %i.bn, i1 noundef zeroext %i.cd) #50, !dbg !85816
  %i.cf = zext i1 %i.ce to i8, !dbg !85817
  %i.cg = or i8 %.sroa.014.2.i.i, %i.cf, !dbg !85817
  br label %.preheader96.2.i.i, !dbg !85818

.preheader96.2.i.i:                               ; preds = %bb.p, %.preheader96.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader96.1.i.i ], [ %i.cg, %bb.p ], !dbg !85813 ; 3 uses
  %i.ch = icmp eq i16 %i.bt, 0, !dbg !85809
  br i1 %i.ch, label %.preheader96.3.i.i, label %bb.q, !dbg !85809

bb.q:                                             ; preds = %.preheader96.2.i.i
  %i.ci = or disjoint i64 %.sroa.06.0103.i.i, 32, !dbg !85814
  %i.cj = trunc nuw i8 %.sroa.014.2.1.i.i to i1, !dbg !85815
  %i.ck = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ci, i16 noundef %i.bt, i1 noundef zeroext %i.cj) #50, !dbg !85816
  %i.cl = zext i1 %i.ck to i8, !dbg !85817
  %i.cm = or i8 %.sroa.014.2.1.i.i, %i.cl, !dbg !85817
  br label %.preheader96.3.i.i, !dbg !85818

.preheader96.3.i.i:                               ; preds = %bb.q, %.preheader96.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader96.2.i.i ], [ %i.cm, %bb.q ], !dbg !85813 ; 3 uses
  %i.cn = icmp eq i16 %i.bz, 0, !dbg !85809
  br i1 %i.cn, label %bb.s, label %bb.r, !dbg !85809

bb.r:                                             ; preds = %.preheader96.3.i.i
  %i.co = or disjoint i64 %.sroa.06.0103.i.i, 48, !dbg !85814
  %i.cp = trunc nuw i8 %.sroa.014.2.2.i.i to i1, !dbg !85815
  %i.cq = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.co, i16 noundef %i.bz, i1 noundef zeroext %i.cp) #50, !dbg !85816
  %i.cr = zext i1 %i.cq to i8, !dbg !85817
  %i.cs = or i8 %.sroa.014.2.2.i.i, %i.cr, !dbg !85817
  br label %bb.s, !dbg !85818

bb.s:                                             ; preds = %bb.r, %.preheader96.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader96.3.i.i ], [ %i.cs, %bb.r ], !dbg !85813 ; 2 uses
  %i.ct = add i64 %.sroa.06.0103.i.i, 64, !dbg !85819 ; 3 uses
  %i.cu = add i64 %i.ct, %i.ax, !dbg !85752
  %i.cv = icmp uge i64 %i.cu, %1, !dbg !85752
  %i.cw = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %i.cw, !dbg !85752
  br i1 %or.cond.i.i, label %.preheader.i6.i, label %.lr.ph.i8.i, !dbg !85752

bb.t:                                             ; preds = %.lr.ph.i8.i
  %i.cx = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i.i, i16 noundef %i.bh, i1 noundef zeroext false) #50, !dbg !85816
  %i.cy = zext i1 %i.cx to i8, !dbg !85817
  br label %.preheader96.1.i.i, !dbg !85818

._crit_edge.i7.i:                                 ; preds = %bb.u, %.preheader.i6.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i6.i ], [ %.sroa.014.4.i.i, %bb.u ], !dbg !85758 ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.bb, %.preheader.i6.i ], [ %i.ds, %bb.u ]
  %i.cz = sub i64 %1, %i.v, !dbg !85820
  %i.da = add i64 %i.cz, -16, !dbg !85820         ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da, !dbg !85821 ; 2 uses
  %.sroa.0.0.copyload.i58.i.i = load <16 x i8>, ptr %i.db, align 1, !dbg !85825, !alias.scope !85636, !noalias !85829
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %storemerge9295.i.i, !dbg !85832
  %.sroa.02.0.copyload.i59.i.i = load <16 x i8>, ptr %i.dc, align 1, !dbg !85834, !alias.scope !85636, !noalias !85829
  %i.dd = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i, %i.aq, !dbg !85838
  %i.de = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i, %i.as, !dbg !85840
  %i.df = and <16 x i1> %i.dd, %i.de, !dbg !85842
  %i.dg = bitcast <16 x i1> %i.df to i16, !dbg !85844 ; 2 uses
  %i.dh = icmp eq i16 %i.dg, 0, !dbg !85854
  br i1 %i.dh, label %bb.w, label %bb.x, !dbg !85854

.lr.ph107.i.i:                                    ; preds = %.preheader.i6.i, %bb.u
  %.sroa.06.1106.i.i = phi i64 [ %i.dp, %bb.u ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i6.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.1106.i.i, !dbg !85856 ; 2 uses
  %.sroa.0.0.copyload.i60.i.i = load <16 x i8>, ptr %i.di, align 1, !dbg !85859, !alias.scope !85636, !noalias !85863
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %storemerge9295.i.i, !dbg !85866
  %.sroa.02.0.copyload.i61.i.i = load <16 x i8>, ptr %i.dj, align 1, !dbg !85868, !alias.scope !85636, !noalias !85863
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i, %i.aq, !dbg !85872
  %i.dl = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i, %i.as, !dbg !85874
  %i.dm = and <16 x i1> %i.dk, %i.dl, !dbg !85876
  %i.dn = bitcast <16 x i1> %i.dm to i16, !dbg !85878 ; 2 uses
  %i.do = icmp eq i16 %i.dn, 0, !dbg !85881
  br i1 %i.do, label %bb.u, label %bb.v, !dbg !85881
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umin.v2i64
!85444 = !DINamespace(name: "Utf8JsonPathImpl", scope: !85445)
!85445 = !DINamespace(name: "json_path", scope: !76193)
!85446 = !DILocation(line: 63, column: 27, scope: !85441)
!85447 = !DILocation(line: 63, column: 21, scope: !85441)
!85448 = !DILocation(line: 69, column: 26, scope: !85441)
!85449 = !DILocation(line: 69, column: 33, scope: !85441)
!85450 = !DILocation(line: 65, column: 25, scope: !85451)
!85451 = distinct !DILexicalBlock(scope: !85441, file: !85442, line: 64, column: 21)
!85452 = !DILocation(line: 966, column: 15, scope: !85453, inlinedAt: !85454)
!85453 = distinct !DISubprogram(name: "map_err<jsonpath_lib::PathCompiled, jsonpath_lib::select::JsonPathError, polars_error::PolarsError, polars_ops::chunked_array::strings::json_path::Utf8JsonPathImpl::json_path_match::{closure#2}::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtCsdnXzjeJpNm1_12jsonpath_lib12PathCompiledNtNtBK_6select13JsonPathErrorE7map_errNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB2V_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00ECskY9G75ZWc4U_11polars_expr", scope: !385, file: !384, line: 962, type: !13, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85454 = !DILocation(line: 66, column: 30, scope: !85451)
!85455 = !{i64 0, i64 5}
!85456 = !DILocation(line: 966, column: 9, scope: !85453, inlinedAt: !85454)
!85457 = !DILocation(line: 968, column: 27, scope: !85458, inlinedAt: !85454)
!85458 = distinct !DILexicalBlock(scope: !85453, file: !384, line: 968, column: 13)
!85459 = !DILocation(line: 968, column: 17, scope: !85453, inlinedAt: !85454)
!85460 = !DILocation(line: 66, column: 42, scope: !85461, inlinedAt: !85463)
!85461 = distinct !DISubprogram(name: "{closure#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>", linkageName: "_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr", scope: !85462, file: !85442, line: 66, type: !13, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85462 = !DINamespace(name: "{closure#2}", scope: !85443)
!85463 = distinct !DILocation(line: 968, column: 27, scope: !85458, inlinedAt: !85454)
!85464 = !{!85465, !85467}
!85465 = distinct !{!85465, !85466, !"_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr: argument 0"}
!85466 = distinct !{!85466, !"_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr"}
!85467 = distinct !{!85467, !85466, !"_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr: argument 1"}
!85468 = !DILocation(line: 66, column: 42, scope: !85469, inlinedAt: !85463)
!85469 = !DILexicalBlockFile(scope: !85470, file: !85442, discriminator: 0)
!85470 = distinct !DILexicalBlock(scope: !85461, file: !82204, line: 114, column: 33)
!85471 = !DILocation(line: 659, column: 34, scope: !82206, inlinedAt: !85472)
!85472 = distinct !DILocation(line: 1278, column: 21, scope: !82211, inlinedAt: !85473)
!85473 = distinct !DILocation(line: 659, column: 19, scope: !85474, inlinedAt: !85475)
!85474 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !82209, file: !82207, line: 649, type: !13, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85475 = distinct !DILocation(line: 66, column: 42, scope: !85476, inlinedAt: !85463)
!85476 = !DILexicalBlockFile(scope: !85461, file: !85442, discriminator: 4)
!85477 = !{!85465}
!85478 = !DILocation(line: 778, column: 9, scope: !85479, inlinedAt: !85480)
!85479 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCskY9G75ZWc4U_11polars_expr", scope: !21644, file: !21643, line: 777, type: !13, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85480 = distinct !DILocation(line: 66, column: 42, scope: !85481, inlinedAt: !85463)
!85481 = !DILexicalBlockFile(scope: !85461, file: !85442, discriminator: 8)
!85482 = !DILocation(line: 66, column: 38, scope: !85461, inlinedAt: !85463)
!85483 = !DILocation(line: 0, scope: !85451)
!85484 = !{!85467}
!85485 = !DILocation(line: 837, column: 23, scope: !85486, inlinedAt: !85488)
!85486 = distinct !DILexicalBlock(scope: !85487, file: !384, line: 837, column: 13)
!85487 = distinct !DISubprogram(name: "map<jsonpath_lib::PathCompiled, polars_error::PolarsError, core::option::Option<alloc::string::String>, polars_ops::chunked_array::strings::json_path::Utf8JsonPathImpl::json_path_match::{closure#2}::{closure_env#1}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtCsdnXzjeJpNm1_12jsonpath_lib12PathCompiledNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3mapINtNtB5_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB3n_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0ECskY9G75ZWc4U_11polars_expr", scope: !385, file: !384, line: 831, type: !13, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85488 = !DILocation(line: 67, column: 30, scope: !85451)
!85489 = !DILocation(line: 66, column: 113, scope: !85461, inlinedAt: !85463)
!85490 = !DILocation(line: 968, column: 31, scope: !85458, inlinedAt: !85454)
!85491 = !DILocation(line: 66, column: 113, scope: !85451)
!85492 = !DILocation(line: 839, column: 5, scope: !85487, inlinedAt: !85488)
!85493 = !DILocation(line: 967, column: 16, scope: !85453, inlinedAt: !85454)
!85494 = !DILocation(line: 836, column: 25, scope: !85495, inlinedAt: !85488)
!85495 = distinct !DILexicalBlock(scope: !85487, file: !384, line: 836, column: 13)
!85496 = !{!85497, !85499}
!85497 = distinct !{!85497, !85498, !"_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr: argument 0"}
!85498 = distinct !{!85498, !"_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr"}
!85499 = distinct !{!85499, !85498, !"_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr: argument 1"}
!85500 = !DILocation(line: 67, column: 41, scope: !85501, inlinedAt: !85502)
!85501 = distinct !DISubprogram(name: "{closure#1}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>", linkageName: "_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0s_0CskY9G75ZWc4U_11polars_expr", scope: !85462, file: !85442, line: 67, type: !13, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85502 = distinct !DILocation(line: 836, column: 25, scope: !85495, inlinedAt: !85488)
!85503 = !DILocation(line: 555, column: 18, scope: !85504, inlinedAt: !85505)
!85504 = distinct !DISubprogram(name: "get<usize>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE3getCskY9G75ZWc4U_11polars_expr", scope: !2928, file: !2923, line: 552, type: !13, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85505 = distinct !DILocation(line: 3734, column: 27, scope: !85506, inlinedAt: !85507)
!85506 = distinct !DISubprogram(name: "strong<alloc::rc::RcInner<jsonpath_lib::paths::path_parser::PathParser>>", linkageName: "_RNvYINtNtCsgZ49sUHp3tW_5alloc2rc7RcInnerNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserENtB5_10RcInnerPtr6strongCskY9G75ZWc4U_11polars_expr", scope: !15904, file: !15892, line: 3733, type: !13, scopeLine: 3733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85507 = distinct !DILocation(line: 3762, column: 36, scope: !85508, inlinedAt: !85509)
!85508 = distinct !DISubprogram(name: "dec_strong<alloc::rc::RcInner<jsonpath_lib::paths::path_parser::PathParser>>", linkageName: "_RNvYINtNtCsgZ49sUHp3tW_5alloc2rc7RcInnerNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserENtB5_10RcInnerPtr10dec_strongCskY9G75ZWc4U_11polars_expr", scope: !15904, file: !15892, line: 3761, type: !13, scopeLine: 3761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85509 = distinct !DILocation(line: 2473, column: 26, scope: !85510, inlinedAt: !85511)
!85510 = distinct !DISubprogram(name: "drop<jsonpath_lib::paths::path_parser::PathParser, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr", scope: !15897, file: !15892, line: 2471, type: !13, scopeLine: 2471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85511 = distinct !DILocation(line: 810, column: 1, scope: !85512, inlinedAt: !85513)
!85512 = distinct !DISubprogram(name: "drop_in_place<alloc::rc::Rc<jsonpath_lib::paths::path_parser::PathParser, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc2rc2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserEECskY9G75ZWc4U_11polars_expr", scope: !2965, file: !2964, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85513 = distinct !DILocation(line: 810, column: 1, scope: !85514, inlinedAt: !85515)
!85514 = distinct !DISubprogram(name: "drop_in_place<jsonpath_lib::PathCompiled>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsdnXzjeJpNm1_12jsonpath_lib12PathCompiledECskY9G75ZWc4U_11polars_expr", scope: !2965, file: !2964, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85515 = distinct !DILocation(line: 67, column: 68, scope: !85501, inlinedAt: !85502)
!85516 = !{!85517, !85519, !85521, !85497, !85499}
!85517 = distinct !{!85517, !85518, !"_RNvXsw_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!85518 = distinct !{!85518, !"_RNvXsw_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!85519 = distinct !{!85519, !85520, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc2rc2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserEECskY9G75ZWc4U_11polars_expr: argument 0"}
!85520 = distinct !{!85520, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc2rc2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserEECskY9G75ZWc4U_11polars_expr"}
!85521 = distinct !{!85521, !85522, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsdnXzjeJpNm1_12jsonpath_lib12PathCompiledECskY9G75ZWc4U_11polars_expr: argument 0"}
!85522 = distinct !{!85522, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsdnXzjeJpNm1_12jsonpath_lib12PathCompiledECskY9G75ZWc4U_11polars_expr"}
!85523 = !DILocation(line: 3762, column: 31, scope: !85508, inlinedAt: !85509)
!85524 = !DILocation(line: 930, column: 49, scope: !85525, inlinedAt: !85527)
!85525 = distinct !DILexicalBlock(scope: !85526, file: !2940, line: 929, column: 9)
!85526 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replacejECskY9G75ZWc4U_11polars_expr", scope: !2941, file: !2940, line: 915, type: !13, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85527 = distinct !DILocation(line: 513, column: 9, scope: !85528, inlinedAt: !85529)
!85528 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE7replaceCskY9G75ZWc4U_11polars_expr", scope: !2928, file: !2923, line: 510, type: !13, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85529 = distinct !DILocation(line: 437, column: 14, scope: !85530, inlinedAt: !85531)
!85530 = distinct !DISubprogram(name: "set<usize>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE3setCskY9G75ZWc4U_11polars_expr", scope: !2928, file: !2923, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85531 = distinct !DILocation(line: 3762, column: 27, scope: !85508, inlinedAt: !85509)
!85532 = !DILocation(line: 2474, column: 16, scope: !85510, inlinedAt: !85511)
!85533 = !DILocation(line: 2475, column: 22, scope: !85510, inlinedAt: !85511)
!85534 = !{!85497}
!85535 = !DILocation(line: 555, column: 18, scope: !85504, inlinedAt: !85536)
!85536 = distinct !DILocation(line: 3734, column: 27, scope: !85506, inlinedAt: !85537)
!85537 = distinct !DILocation(line: 3762, column: 36, scope: !85508, inlinedAt: !85538)
!85538 = distinct !DILocation(line: 2473, column: 26, scope: !85510, inlinedAt: !85539)
!85539 = distinct !DILocation(line: 810, column: 1, scope: !85512, inlinedAt: !85540)
!85540 = distinct !DILocation(line: 810, column: 1, scope: !85514, inlinedAt: !85541)
!85541 = distinct !DILocation(line: 67, column: 68, scope: !85501, inlinedAt: !85502)
!85542 = !{!85543, !85545, !85547, !85497, !85499}
!85543 = distinct !{!85543, !85544, !"_RNvXsw_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!85544 = distinct !{!85544, !"_RNvXsw_NtCsgZ49sUHp3tW_5alloc2rcINtB5_2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!85545 = distinct !{!85545, !85546, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc2rc2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserEECskY9G75ZWc4U_11polars_expr: argument 0"}
!85546 = distinct !{!85546, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc2rc2RcNtNtNtCsdnXzjeJpNm1_12jsonpath_lib5paths11path_parser10PathParserEECskY9G75ZWc4U_11polars_expr"}
!85547 = distinct !{!85547, !85548, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsdnXzjeJpNm1_12jsonpath_lib12PathCompiledECskY9G75ZWc4U_11polars_expr: argument 0"}
!85548 = distinct !{!85548, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsdnXzjeJpNm1_12jsonpath_lib12PathCompiledECskY9G75ZWc4U_11polars_expr"}
!85549 = !DILocation(line: 3762, column: 31, scope: !85508, inlinedAt: !85538)
!85550 = !DILocation(line: 930, column: 49, scope: !85525, inlinedAt: !85551)
!85551 = distinct !DILocation(line: 513, column: 9, scope: !85528, inlinedAt: !85552)
!85552 = distinct !DILocation(line: 437, column: 14, scope: !85530, inlinedAt: !85553)
!85553 = distinct !DILocation(line: 3762, column: 27, scope: !85508, inlinedAt: !85538)
!85554 = !DILocation(line: 2474, column: 16, scope: !85510, inlinedAt: !85539)
!85555 = !DILocation(line: 2475, column: 22, scope: !85510, inlinedAt: !85539)
!85556 = !DILocation(line: 67, column: 34, scope: !85501, inlinedAt: !85502)
!85557 = !DILocation(line: 67, column: 69, scope: !85501, inlinedAt: !85502)
!85558 = !DILocation(line: 836, column: 22, scope: !85495, inlinedAt: !85488)
!85559 = !DILocation(line: 836, column: 30, scope: !85495, inlinedAt: !85488)
!85560 = !DILocation(line: 836, column: 30, scope: !85487, inlinedAt: !85488)
!85561 = !DILocation(line: 71, column: 18, scope: !85441)
!85562 = distinct !DISubprogram(name: "{closure#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>", linkageName: "_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl16contains_chunked0CskY9G75ZWc4U_11polars_expr", scope: !76190, file: !76188, line: 198, type: !50, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85563 = !{!85564}
!85564 = distinct !{!85564, !85565, !"_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in: argument 0"}
!85565 = distinct !{!85565, !"_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in"}
!85566 = !DILocation(line: 1364, column: 13, scope: !85567, inlinedAt: !85568)
!85567 = distinct !DISubprogram(name: "contains<&str>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core3stre8containsReECskY9G75ZWc4U_11polars_expr", scope: !37, file: !36, line: 1363, type: !13, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85568 = !DILocation(line: 199, column: 29, scope: !85562)
!85569 = !{!85570}
!85570 = distinct !{!85570, !85565, !"_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in: argument 1"}
!85571 = !DILocation(line: 988, column: 12, scope: !85572, inlinedAt: !85573)
!85572 = distinct !DISubprogram(name: "is_contained_in", linkageName: "_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in", scope: !12664, file: !4009, line: 987, type: !13, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85573 = distinct !DILocation(line: 1364, column: 13, scope: !85567, inlinedAt: !85568)
!85574 = !DILocation(line: 992, column: 9, scope: !85572, inlinedAt: !85573)
!85575 = !DILocation(line: 994, column: 20, scope: !85572, inlinedAt: !85573)
!85576 = !DILocation(line: 22, column: 12, scope: !85577, inlinedAt: !85579)
!85577 = distinct !DILexicalBlock(scope: !85578, file: !12635, line: 21, column: 9)
!85578 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !12642, file: !12635, line: 20, type: !13, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85579 = distinct !DILocation(line: 2124, column: 13, scope: !85580, inlinedAt: !85582)
!85580 = !DILexicalBlockFile(scope: !85581, file: !352, discriminator: 2)
!85581 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !12645, file: !352, line: 2123, type: !13, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85582 = distinct !DILocation(line: 30, column: 9, scope: !85583, inlinedAt: !85585)
!85583 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !85584, file: !12678, line: 29, type: !13, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85584 = !DINamespace(name: "{impl#1}", scope: !12681)
!85585 = distinct !DILocation(line: 2124, column: 13, scope: !85586, inlinedAt: !85587)
!85586 = distinct !DISubprogram(name: "eq<str, str>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !12645, file: !352, line: 2123, type: !13, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85587 = distinct !DILocation(line: 1011, column: 18, scope: !85572, inlinedAt: !85573)
!85588 = !DILocation(line: 1003, column: 20, scope: !85572, inlinedAt: !85573)
!85589 = !DILocation(line: 414, column: 24, scope: !85590, inlinedAt: !85592)
!85590 = distinct !DISubprogram(name: "slice_contains", linkageName: "_RNvXsg_NtNtCscgRAwXFJnXP_4core5slice3cmphNtB5_13SliceContains14slice_contains", scope: !85591, file: !12635, line: 413, type: !13, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85591 = !DINamespace(name: "{impl#18}", scope: !12638)
!85592 = distinct !DILocation(line: 2593, column: 9, scope: !85593, inlinedAt: !85594)
!85593 = distinct !DISubprogram(name: "contains<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh8containsCskY9G75ZWc4U_11polars_expr", scope: !3492, file: !3490, line: 2589, type: !13, scopeLine: 2589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85594 = distinct !DILocation(line: 995, column: 48, scope: !85572, inlinedAt: !85573)
!85595 = !DILocation(line: 27, column: 8, scope: !12592, inlinedAt: !85596)
!85596 = distinct !DILocation(line: 414, column: 9, scope: !85590, inlinedAt: !85592)
!85597 = !DILocation(line: 31, column: 5, scope: !12592, inlinedAt: !85596)
!85598 = !DILocation(line: 414, column: 9, scope: !85590, inlinedAt: !85592)
!85599 = !DILocation(line: 429, column: 9, scope: !85600, inlinedAt: !85602)
!85600 = distinct !DILexicalBlock(scope: !85601, file: !6231, line: 429, column: 9)
!85601 = distinct !DISubprogram(name: "is_some<usize>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionjE7is_someCskY9G75ZWc4U_11polars_expr", scope: !211, file: !210, line: 635, type: !13, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85602 = distinct !DILocation(line: 414, column: 34, scope: !85590, inlinedAt: !85592)
!85603 = !DILocation(line: 40, column: 12, scope: !12600, inlinedAt: !85604)
!85604 = distinct !DILocation(line: 28, column: 16, scope: !12592, inlinedAt: !85596)
!85605 = !{!85606, !85570}
!85606 = distinct !{!85606, !85607, !"_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr6memchr: argument 0"}
!85607 = distinct !{!85607, !"_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr6memchr"}
!85608 = !DILocation(line: 44, column: 9, scope: !12600, inlinedAt: !85604)
!85609 = !DILocation(line: 39, column: 11, scope: !12600, inlinedAt: !85604)
!85610 = !DILocation(line: 1009, column: 17, scope: !85572, inlinedAt: !85573)
!85611 = !{!85564, !85570}
!85612 = !DILocation(line: 976, column: 9, scope: !85613, inlinedAt: !85614)
!85613 = distinct !DISubprogram(name: "into_searcher", linkageName: "_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher", scope: !12664, file: !4009, line: 975, type: !13, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85614 = distinct !DILocation(line: 1009, column: 22, scope: !85572, inlinedAt: !85573)
!85615 = !DILocation(line: 1009, column: 46, scope: !85572, inlinedAt: !85573)
!85616 = !DILocation(line: 636, column: 18, scope: !85617, inlinedAt: !85620)
!85617 = !DILexicalBlockFile(scope: !85618, file: !210, discriminator: 0)
!85618 = distinct !DILexicalBlock(scope: !85619, file: !6231, line: 429, column: 9)
!85619 = distinct !DISubprogram(name: "is_some<(usize, usize)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionTjjEE7is_someCskY9G75ZWc4U_11polars_expr", scope: !211, file: !210, line: 635, type: !13, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85620 = distinct !DILocation(line: 1009, column: 59, scope: !85572, inlinedAt: !85573)
!85621 = !DILocation(line: 429, column: 9, scope: !85618, inlinedAt: !85620)
!85622 = !DILocation(line: 1009, column: 67, scope: !85572, inlinedAt: !85573)
!85623 = !{!85624}
!85624 = distinct !{!85624, !85625, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains: argument 0"}
!85625 = distinct !{!85625, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains"}
!85626 = !DILocation(line: 1004, column: 43, scope: !85627, inlinedAt: !85573)
!85627 = distinct !DILexicalBlock(scope: !85572, file: !4009, line: 1004, column: 73)
!85628 = !{!85629}
!85629 = distinct !{!85629, !85625, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains: argument 1"}
!85630 = !DILocation(line: 1800, column: 23, scope: !85631, inlinedAt: !85634)
!85631 = distinct !DILexicalBlock(scope: !85632, file: !4009, line: 1792, column: 5)
!85632 = distinct !DILexicalBlock(scope: !85633, file: !4009, line: 1791, column: 5)
!85633 = distinct !DISubprogram(name: "simd_contains", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains", scope: !4011, file: !4009, line: 1790, type: !13, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85634 = distinct !DILocation(line: 1004, column: 43, scope: !85627, inlinedAt: !85573)
!85635 = !{!85624, !85564}
!85636 = !{!85629, !85570}
!85637 = !DILocation(line: 1801, column: 28, scope: !85638, inlinedAt: !85634)
!85638 = distinct !DILexicalBlock(scope: !85631, file: !4009, line: 1800, column: 5)
!85639 = !DILocation(line: 1804, column: 34, scope: !85640, inlinedAt: !85634)
!85640 = distinct !DILexicalBlock(scope: !85638, file: !4009, line: 1801, column: 5)
!85641 = !DILocation(line: 2399, column: 13, scope: !85642, inlinedAt: !85643)
!85642 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj14saturating_sub", scope: !3442, file: !249, line: 2398, type: !13, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85643 = distinct !DILocation(line: 1811, column: 27, scope: !85640, inlinedAt: !85634)
!85644 = !DILocation(line: 823, column: 12, scope: !85645, inlinedAt: !85646)
!85645 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCskY9G75ZWc4U_11polars_expr", scope: !4051, file: !4050, line: 822, type: !13, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85646 = distinct !DILocation(line: 988, column: 14, scope: !85647, inlinedAt: !85648)
!85647 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCskY9G75ZWc4U_11polars_expr", scope: !4073, file: !4050, line: 987, type: !13, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85648 = distinct !DILocation(line: 237, column: 34, scope: !85649, inlinedAt: !85652)
!85649 = distinct !DILexicalBlock(scope: !85650, file: !53733, line: 237, column: 46)
!85650 = distinct !DILexicalBlock(scope: !85651, file: !53733, line: 236, column: 9)
!85651 = distinct !DISubprogram(name: "try_rfold<core::ops::range::Range<usize>, (), core::iter::traits::double_ended::DoubleEndedIterator::rfind::check::{closure_env#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>, core::ops::control_flow::ControlFlow<usize, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECskY9G75ZWc4U_11polars_expr", scope: !53736, file: !53733, line: 230, type: !13, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85652 = distinct !DILocation(line: 378, column: 14, scope: !85653, inlinedAt: !85654)
!85653 = distinct !DISubprogram(name: "rfind<core::ops::range::Range<usize>, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfindNCNvNtNtBa_3str7pattern13simd_contains0ECskY9G75ZWc4U_11polars_expr", scope: !53736, file: !53733, line: 366, type: !13, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85654 = distinct !DILocation(line: 1811, column: 60, scope: !85640, inlinedAt: !85634)
!85655 = !DILocation(line: 1917, column: 50, scope: !85656, inlinedAt: !85657)
!85656 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !4046, file: !352, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85657 = distinct !DILocation(line: 823, column: 12, scope: !85645, inlinedAt: !85646)
!85658 = !DILocation(line: 1077, column: 17, scope: !85659, inlinedAt: !85660)
!85659 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_sub", scope: !3442, file: !249, line: 1065, type: !13, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85660 = distinct !DILocation(line: 220, column: 28, scope: !85661, inlinedAt: !85662)
!85661 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !4064, file: !4050, line: 218, type: !13, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85662 = distinct !DILocation(line: 825, column: 33, scope: !85645, inlinedAt: !85646)
!85663 = !DILocation(line: 1811, column: 73, scope: !85664, inlinedAt: !85666)
!85664 = distinct !DILexicalBlock(scope: !85665, file: !4009, line: 1811, column: 73)
!85665 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CskY9G75ZWc4U_11polars_expr", scope: !83815, file: !4009, line: 1811, type: !50, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85666 = distinct !DILocation(line: 374, column: 20, scope: !85667, inlinedAt: !85670)
!85667 = distinct !DISubprogram(name: "{closure#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskY9G75ZWc4U_11polars_expr", scope: !85668, file: !53733, line: 373, type: !13, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85668 = !DINamespace(name: "check", scope: !85669)
!85669 = !DINamespace(name: "rfind", scope: !53736)
!85670 = distinct !DILocation(line: 238, column: 21, scope: !85649, inlinedAt: !85652)
!85671 = !{!85672, !85674, !85676, !85678, !85624, !85629, !85564, !85570}
!85672 = distinct !{!85672, !85673, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CskY9G75ZWc4U_11polars_expr: argument 0"}
!85673 = distinct !{!85673, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CskY9G75ZWc4U_11polars_expr"}
!85674 = distinct !{!85674, !85675, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskY9G75ZWc4U_11polars_expr: argument 0"}
!85675 = distinct !{!85675, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskY9G75ZWc4U_11polars_expr"}
!85676 = distinct !{!85676, !85677, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECskY9G75ZWc4U_11polars_expr: argument 0"}
!85677 = distinct !{!85677, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECskY9G75ZWc4U_11polars_expr"}
!85678 = distinct !{!85678, !85677, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECskY9G75ZWc4U_11polars_expr: argument 1"}
!85679 = !{!85672, !85674, !85676, !85678, !85629, !85570}
!85680 = !DILocation(line: 238, column: 21, scope: !85649, inlinedAt: !85652)
!85681 = !DILocation(line: 1821, column: 25, scope: !85682, inlinedAt: !85634)
!85682 = distinct !DILexicalBlock(scope: !85640, file: !4009, line: 1804, column: 5)
!85683 = !DILocation(line: 1821, column: 8, scope: !85682, inlinedAt: !85634)
!85684 = !DILocation(line: 153, column: 18, scope: !85685, inlinedAt: !85690)
!85685 = distinct !DISubprogram(name: "splat<u8, 16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core9core_simd6vectorINtB2_4SimdhKj10_E5splatCskY9G75ZWc4U_11polars_expr", scope: !85687, file: !85686, line: 151, type: !13, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85686 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/vector.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9007a8fc0e081f1d4ddc6b9e6405748")
!85687 = !DINamespace(name: "Simd", scope: !85688)
!85688 = !DINamespace(name: "vector", scope: !85689)
!85689 = !DINamespace(name: "core_simd", scope: !30)
!85690 = distinct !DILocation(line: 1825, column: 30, scope: !85682, inlinedAt: !85634)
!85691 = !DILocation(line: 1826, column: 44, scope: !85692, inlinedAt: !85634)
!85692 = distinct !DILexicalBlock(scope: !85682, file: !4009, line: 1825, column: 5)
!85693 = !DILocation(line: 158, column: 13, scope: !85694, inlinedAt: !85696)
!85694 = distinct !DILexicalBlock(scope: !85695, file: !12635, line: 157, column: 13)
!85695 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCskY9G75ZWc4U_11polars_expr", scope: !12637, file: !12635, line: 152, type: !13, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85696 = distinct !DILocation(line: 25, column: 22, scope: !85697, inlinedAt: !85699)
!85697 = distinct !DILexicalBlock(scope: !85698, file: !12635, line: 21, column: 9)
!85698 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !12642, file: !12635, line: 20, type: !13, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85699 = distinct !DILocation(line: 2124, column: 13, scope: !85700, inlinedAt: !85701)
!85700 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !12645, file: !352, line: 2123, type: !13, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85701 = distinct !DILocation(line: 1822, column: 60, scope: !85702, inlinedAt: !85703)
!85702 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss_0CskY9G75ZWc4U_11polars_expr", scope: !83815, file: !4009, line: 1822, type: !50, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85703 = distinct !DILocation(line: 2911, column: 20, scope: !85704, inlinedAt: !85707)
!85704 = distinct !DISubprogram(name: "{closure#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskY9G75ZWc4U_11polars_expr", scope: !85705, file: !6118, line: 2910, type: !50, scopeLine: 2910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85705 = !DINamespace(name: "check", scope: !85706)
!85706 = !DINamespace(name: "any", scope: !6119)
!85707 = distinct !DILocation(line: 2509, column: 21, scope: !85708, inlinedAt: !85711)
!85708 = distinct !DILexicalBlock(scope: !85709, file: !6118, line: 2508, column: 41)
!85709 = distinct !DILexicalBlock(scope: !85710, file: !6118, line: 2507, column: 9)
!85710 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Windows<u8>, (), core::iter::traits::iterator::Iterator::any::check::{closure_env#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>, core::ops::control_flow::ControlFlow<(), ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr", scope: !6119, file: !6118, line: 2501, type: !13, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85711 = distinct !DILocation(line: 2915, column: 14, scope: !85712, inlinedAt: !85713)
!85712 = distinct !DISubprogram(name: "any<core::slice::iter::Windows<u8>, core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator3anyNCNvNtNtBa_3str7pattern13simd_containss_0ECskY9G75ZWc4U_11polars_expr", scope: !6119, file: !6118, line: 2903, type: !13, scopeLine: 2903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85713 = distinct !DILocation(line: 1822, column: 52, scope: !85682, inlinedAt: !85634)
!85714 = !{!85624, !85629, !85564, !85570}
!85715 = !{!85716, !85718}
!85716 = distinct !{!85716, !85717, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr: argument 0"}
!85717 = distinct !{!85717, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr"}
!85718 = distinct !{!85718, !85717, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr: argument 1"}
!85719 = !DILocation(line: 2509, column: 21, scope: !85708, inlinedAt: !85711)
!85720 = !DILocation(line: 89, column: 24, scope: !85721, inlinedAt: !85723)
!85721 = distinct !DILexicalBlock(scope: !85722, file: !4019, line: 87, column: 5)
!85722 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECskY9G75ZWc4U_11polars_expr", scope: !4021, file: !4019, line: 82, type: !13, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85723 = distinct !DILocation(line: 574, column: 15, scope: !85724, inlinedAt: !85726)
!85724 = distinct !DILexicalBlock(scope: !85725, file: !4019, line: 573, column: 13)
!85725 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCskY9G75ZWc4U_11polars_expr", scope: !12096, file: !4019, line: 567, type: !13, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85726 = distinct !DILocation(line: 19, column: 15, scope: !85727, inlinedAt: !85730)
!85727 = !DILexicalBlockFile(scope: !85728, file: !4019, discriminator: 2)
!85728 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCskY9G75ZWc4U_11polars_expr", scope: !85729, file: !4019, line: 18, type: !13, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85729 = !DINamespace(name: "{impl#0}", scope: !4021)
!85730 = distinct !DILocation(line: 1361, column: 29, scope: !85731, inlinedAt: !85734)
!85731 = distinct !DILexicalBlock(scope: !85732, file: !6100, line: 1360, column: 13)
!85732 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXsY_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !85733, file: !6100, line: 1356, type: !13, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85733 = !DINamespace(name: "{impl#62}", scope: !3681)
!85734 = distinct !DILocation(line: 2508, column: 34, scope: !85708, inlinedAt: !85711)
!85735 = !DILocation(line: 573, column: 27, scope: !85725, inlinedAt: !85726)
!85736 = !DILocation(line: 1357, column: 12, scope: !85732, inlinedAt: !85734)
!85737 = !DILocation(line: 153, column: 18, scope: !85685, inlinedAt: !85738)
!85738 = distinct !DILocation(line: 1826, column: 31, scope: !85692, inlinedAt: !85634)
!85739 = !DILocation(line: 89, column: 24, scope: !85740, inlinedAt: !85742)
!85740 = distinct !DILexicalBlock(scope: !85741, file: !4019, line: 87, column: 5)
!85741 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECskY9G75ZWc4U_11polars_expr", scope: !4021, file: !4019, line: 82, type: !13, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85742 = distinct !DILocation(line: 574, column: 15, scope: !85743, inlinedAt: !85745)
!85743 = distinct !DILexicalBlock(scope: !85744, file: !4019, line: 573, column: 13)
!85744 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCskY9G75ZWc4U_11polars_expr", scope: !12096, file: !4019, line: 567, type: !13, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85745 = distinct !DILocation(line: 19, column: 15, scope: !85746, inlinedAt: !85747)
!85746 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCskY9G75ZWc4U_11polars_expr", scope: !85729, file: !4019, line: 18, type: !13, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85747 = distinct !DILocation(line: 1829, column: 33, scope: !85748, inlinedAt: !85634)
!85748 = distinct !DILexicalBlock(scope: !85692, file: !4009, line: 1826, column: 5)
!85749 = !DILocation(line: 1832, column: 9, scope: !85750, inlinedAt: !85634)
!85750 = distinct !DILexicalBlock(scope: !85748, file: !4009, line: 1829, column: 5)
!85751 = !DILocation(line: 1833, column: 5, scope: !85750, inlinedAt: !85634)
!85752 = !DILocation(line: 1878, column: 11, scope: !85753, inlinedAt: !85634)
!85753 = distinct !DILexicalBlock(scope: !85754, file: !4009, line: 1874, column: 5)
!85754 = distinct !DILexicalBlock(scope: !85755, file: !4009, line: 1873, column: 5)
!85755 = distinct !DILexicalBlock(scope: !85756, file: !4009, line: 1857, column: 5)
!85756 = distinct !DILexicalBlock(scope: !85750, file: !4009, line: 1832, column: 5)
!85757 = !DILocation(line: 0, scope: !85755, inlinedAt: !85634)
!85758 = !DILocation(line: 1874, column: 22, scope: !85754, inlinedAt: !85634)
!85759 = !DILocation(line: 1891, column: 11, scope: !85753, inlinedAt: !85634)
!85760 = !DILocation(line: 552, column: 14, scope: !85761, inlinedAt: !85762)
!85761 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECskY9G75ZWc4U_11polars_expr", scope: !2965, file: !2964, line: 531, type: !13, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85762 = distinct !DILocation(line: 1809, column: 9, scope: !85763, inlinedAt: !85765)
!85763 = distinct !DILexicalBlock(scope: !85764, file: !2964, line: 1801, column: 5)
!85764 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr14read_unalignedINtNtNtB4_9core_simd6vector4SimdhKj10_EECskY9G75ZWc4U_11polars_expr", scope: !2965, file: !2964, line: 1800, type: !13, scopeLine: 1800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85765 = distinct !DILocation(line: 1212, column: 18, scope: !85766, inlinedAt: !85767)
!85766 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtNtB6_9core_simd6vector4SimdhKj10_E14read_unalignedCskY9G75ZWc4U_11polars_expr", scope: !12692, file: !12691, line: 1207, type: !13, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85767 = distinct !DILocation(line: 1860, column: 76, scope: !85768, inlinedAt: !85769)
!85768 = distinct !DISubprogram(name: "{closure#3}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CskY9G75ZWc4U_11polars_expr", scope: !83815, file: !4009, line: 1857, type: !13, scopeLine: 1857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85769 = distinct !DILocation(line: 1881, column: 24, scope: !85770, inlinedAt: !85634)
!85770 = distinct !DILexicalBlock(scope: !85771, file: !4009, line: 1880, column: 9)
!85771 = distinct !DILexicalBlock(scope: !85772, file: !4009, line: 1880, column: 9)
!85772 = distinct !DILexicalBlock(scope: !85753, file: !4009, line: 1879, column: 9)
!85773 = !{!85774, !85624, !85564}
!85774 = distinct !{!85774, !85775, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CskY9G75ZWc4U_11polars_expr: argument 0"}
!85775 = distinct !{!85775, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CskY9G75ZWc4U_11polars_expr"}
!85776 = !DILocation(line: 863, column: 18, scope: !85777, inlinedAt: !85778)
!85777 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCskY9G75ZWc4U_11polars_expr", scope: !12692, file: !12691, line: 829, type: !13, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85778 = distinct !DILocation(line: 1863, column: 40, scope: !85779, inlinedAt: !85769)
!85779 = distinct !DILexicalBlock(scope: !85768, file: !4009, line: 1860, column: 9)
!85780 = !DILocation(line: 552, column: 14, scope: !85761, inlinedAt: !85781)
!85781 = distinct !DILocation(line: 1809, column: 9, scope: !85782, inlinedAt: !85784)
!85782 = !DILexicalBlockFile(scope: !85783, file: !2964, discriminator: 2)
!85783 = distinct !DILexicalBlock(scope: !85764, file: !2964, line: 1801, column: 5)
!85784 = distinct !DILocation(line: 1212, column: 18, scope: !85785, inlinedAt: !85786)
!85785 = !DILexicalBlockFile(scope: !85766, file: !12691, discriminator: 2)
!85786 = distinct !DILocation(line: 1863, column: 81, scope: !85779, inlinedAt: !85769)
!85787 = !DILocation(line: 31, column: 52, scope: !85788, inlinedAt: !85794)
!85788 = distinct !DISubprogram(name: "simd_eq<16>", linkageName: "_RNvXs2_NtNtNtNtCscgRAwXFJnXP_4core9core_simd4simd3cmp2eqINtNtBb_6vector4SimdhKj10_ENtB5_13SimdPartialEq7simd_eqCskY9G75ZWc4U_11polars_expr", scope: !85790, file: !85789, line: 28, type: !13, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85789 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/simd/cmp/eq.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7685cb03cbca8e20bb043063063cbb87")
!85790 = !DINamespace(name: "{impl#4}", scope: !85791)
!85791 = !DINamespace(name: "eq", scope: !85792)
!85792 = !DINamespace(name: "cmp", scope: !85793)
!85793 = !DINamespace(name: "simd", scope: !85689)
!85794 = distinct !DILocation(line: 1865, column: 32, scope: !85795, inlinedAt: !85769)
!85795 = distinct !DILexicalBlock(scope: !85779, file: !4009, line: 1862, column: 9)
!85796 = !DILocation(line: 31, column: 52, scope: !85788, inlinedAt: !85797)
!85797 = distinct !DILocation(line: 1866, column: 31, scope: !85798, inlinedAt: !85769)
!85798 = distinct !DILexicalBlock(scope: !85795, file: !4009, line: 1865, column: 9)
!85799 = !DILocation(line: 481, column: 23, scope: !85800, inlinedAt: !85804)
!85800 = distinct !DISubprogram(name: "bitand<i8, 16>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_ENtNtNtB9_3ops3bit6BitAnd6bitandCskY9G75ZWc4U_11polars_expr", scope: !85802, file: !85801, line: 479, type: !13, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85801 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/masks.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "9d00f8d04957d898984aa5da18e7e089")
!85802 = !DINamespace(name: "{impl#9}", scope: !85803)
!85803 = !DINamespace(name: "masks", scope: !85689)
!85804 = distinct !DILocation(line: 1867, column: 29, scope: !85805, inlinedAt: !85769)
!85805 = distinct !DILexicalBlock(scope: !85798, file: !4009, line: 1866, column: 9)
!85806 = !DILocation(line: 1881, column: 13, scope: !85770, inlinedAt: !85634)
!85807 = !DILocation(line: 863, column: 18, scope: !85777, inlinedAt: !85808)
!85808 = distinct !DILocation(line: 1860, column: 51, scope: !85768, inlinedAt: !85769)
!85809 = !DILocation(line: 1885, column: 16, scope: !85810, inlinedAt: !85634)
!85810 = distinct !DILexicalBlock(scope: !85811, file: !4009, line: 1884, column: 13)
!85811 = distinct !DILexicalBlock(scope: !85812, file: !4009, line: 1883, column: 9)
!85812 = distinct !DILexicalBlock(scope: !85772, file: !4009, line: 1883, column: 9)
!85813 = !DILocation(line: 0, scope: !85754, inlinedAt: !85634)
!85814 = !DILocation(line: 1886, column: 38, scope: !85810, inlinedAt: !85634)
!85815 = !DILocation(line: 1886, column: 64, scope: !85810, inlinedAt: !85634)
!85816 = !DILocation(line: 1886, column: 27, scope: !85810, inlinedAt: !85634)
!85817 = !DILocation(line: 1886, column: 17, scope: !85810, inlinedAt: !85634)
!85818 = !DILocation(line: 1885, column: 13, scope: !85810, inlinedAt: !85634)
!85819 = !DILocation(line: 1889, column: 9, scope: !85772, inlinedAt: !85634)
!85820 = !DILocation(line: 1903, column: 13, scope: !85753, inlinedAt: !85634)
!85821 = !DILocation(line: 863, column: 18, scope: !85777, inlinedAt: !85822)
!85822 = distinct !DILocation(line: 1860, column: 51, scope: !85768, inlinedAt: !85823)
!85823 = distinct !DILocation(line: 1904, column: 16, scope: !85824, inlinedAt: !85634)
!85824 = distinct !DILexicalBlock(scope: !85753, file: !4009, line: 1903, column: 5)
!85825 = !DILocation(line: 552, column: 14, scope: !85761, inlinedAt: !85826)
!85826 = distinct !DILocation(line: 1809, column: 9, scope: !85763, inlinedAt: !85827)
!85827 = distinct !DILocation(line: 1212, column: 18, scope: !85766, inlinedAt: !85828)
!85828 = distinct !DILocation(line: 1860, column: 76, scope: !85768, inlinedAt: !85823)
!85829 = !{!85830, !85624, !85564}
!85830 = distinct !{!85830, !85831, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CskY9G75ZWc4U_11polars_expr: argument 0"}
!85831 = distinct !{!85831, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CskY9G75ZWc4U_11polars_expr"}
!85832 = !DILocation(line: 863, column: 18, scope: !85777, inlinedAt: !85833)
!85833 = distinct !DILocation(line: 1863, column: 40, scope: !85779, inlinedAt: !85823)
!85834 = !DILocation(line: 552, column: 14, scope: !85761, inlinedAt: !85835)
!85835 = distinct !DILocation(line: 1809, column: 9, scope: !85782, inlinedAt: !85836)
!85836 = distinct !DILocation(line: 1212, column: 18, scope: !85785, inlinedAt: !85837)
!85837 = distinct !DILocation(line: 1863, column: 81, scope: !85779, inlinedAt: !85823)
!85838 = !DILocation(line: 31, column: 52, scope: !85788, inlinedAt: !85839)
!85839 = distinct !DILocation(line: 1865, column: 32, scope: !85795, inlinedAt: !85823)
!85840 = !DILocation(line: 31, column: 52, scope: !85788, inlinedAt: !85841)
!85841 = distinct !DILocation(line: 1866, column: 31, scope: !85798, inlinedAt: !85823)
!85842 = !DILocation(line: 481, column: 23, scope: !85800, inlinedAt: !85843)
!85843 = distinct !DILocation(line: 1867, column: 29, scope: !85805, inlinedAt: !85823)
!85844 = !DILocation(line: 314, column: 39, scope: !85845, inlinedAt: !85849)
!85845 = distinct !DILexicalBlock(scope: !85846, file: !85801, line: 311, column: 13)
!85846 = distinct !DISubprogram(name: "to_bitmask_impl<i8, u16, 16, 16>", linkageName: "_RINvNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB8_4MaskpKpE10to_bitmask15to_bitmask_implatKj10_KB1w_ECskY9G75ZWc4U_11polars_expr", scope: !85847, file: !85801, line: 305, type: !13, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85847 = !DINamespace(name: "to_bitmask", scope: !85848)
!85848 = !DINamespace(name: "{impl#2}", scope: !85803)
!85849 = distinct !DILocation(line: 326, column: 22, scope: !85850, inlinedAt: !85852)
!85850 = distinct !DISubprogram(name: "to_bitmask<i8, 16>", linkageName: "_RNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCskY9G75ZWc4U_11polars_expr", scope: !85851, file: !85801, line: 299, type: !50, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!85851 = !DINamespace(name: "Mask", scope: !85803)
!85852 = distinct !DILocation(line: 1868, column: 25, scope: !85853, inlinedAt: !85823)
!85853 = distinct !DILexicalBlock(scope: !85805, file: !4009, line: 1867, column: 9)
!85854 = !DILocation(line: 1905, column: 8, scope: !85855, inlinedAt: !85634)
!85855 = distinct !DILexicalBlock(scope: !85824, file: !4009, line: 1904, column: 5)
!85856 = !DILocation(line: 863, column: 18, scope: !85777, inlinedAt: !85857)
!85857 = distinct !DILocation(line: 1860, column: 51, scope: !85768, inlinedAt: !85858)
!85858 = distinct !DILocation(line: 1892, column: 20, scope: !85753, inlinedAt: !85634)
!85859 = !DILocation(line: 552, column: 14, scope: !85761, inlinedAt: !85860)
!85860 = distinct !DILocation(line: 1809, column: 9, scope: !85763, inlinedAt: !85861)
!85861 = distinct !DILocation(line: 1212, column: 18, scope: !85766, inlinedAt: !85862)
!85862 = distinct !DILocation(line: 1860, column: 76, scope: !85768, inlinedAt: !85858)
!85863 = !{!85864, !85624, !85564}
!85864 = distinct !{!85864, !85865, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CskY9G75ZWc4U_11polars_expr: argument 0"}
!85865 = distinct !{!85865, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CskY9G75ZWc4U_11polars_expr"}
!85866 = !DILocation(line: 863, column: 18, scope: !85777, inlinedAt: !85867)
!85867 = distinct !DILocation(line: 1863, column: 40, scope: !85779, inlinedAt: !85858)
!85868 = !DILocation(line: 552, column: 14, scope: !85761, inlinedAt: !85869)
!85869 = distinct !DILocation(line: 1809, column: 9, scope: !85782, inlinedAt: !85870)
!85870 = distinct !DILocation(line: 1212, column: 18, scope: !85785, inlinedAt: !85871)
!85871 = distinct !DILocation(line: 1863, column: 81, scope: !85779, inlinedAt: !85858)
!85872 = !DILocation(line: 31, column: 52, scope: !85788, inlinedAt: !85873)
!85873 = distinct !DILocation(line: 1865, column: 32, scope: !85795, inlinedAt: !85858)
!85874 = !DILocation(line: 31, column: 52, scope: !85788, inlinedAt: !85875)
!85875 = distinct !DILocation(line: 1866, column: 31, scope: !85798, inlinedAt: !85858)
!85876 = !DILocation(line: 481, column: 23, scope: !85800, inlinedAt: !85877)
!85877 = distinct !DILocation(line: 1867, column: 29, scope: !85805, inlinedAt: !85858)
!85878 = !DILocation(line: 314, column: 39, scope: !85845, inlinedAt: !85879)
!85879 = distinct !DILocation(line: 326, column: 22, scope: !85850, inlinedAt: !85880)
!85880 = distinct !DILocation(line: 1868, column: 25, scope: !85853, inlinedAt: !85858)
end_hunk_1
