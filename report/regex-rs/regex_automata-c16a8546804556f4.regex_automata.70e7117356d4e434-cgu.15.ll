Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.15?download=true
inline.NumInlined: 533
inline.NumDeleted: 289
begin_hunk_0_@_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB5_9RegexInfo3new:bb.a
  br i1 %i.f, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread.i, label %.lr.ph, !dbg !12575

.lr.ph:                                           ; preds = %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.0.040 = phi ptr [ %i.g, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 8, !dbg !12940 ; 2 uses
    #dbg_value(ptr %i.g, !12501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12566)
    #dbg_value(ptr %.sroa.0.040, !12502, !DIExpression(), !12578)
    #dbg_value(ptr %i.b, !12579, !DIExpression(), !12586)
  %i.h = load ptr, ptr %.sroa.0.040, align 8, !dbg !12941, !nonnull !1422, !align !2714, !noundef !1422
    #dbg_value(ptr %i.h, !12588, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !12594)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !12594
  %.val = load ptr, ptr %i.i, align 8, !dbg !12594 ; 10 uses
    #dbg_value(ptr poison, !12595, !DIExpression(), !12191)
  %i.j = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir11PropertiesIE13new_uninit_inCs9GYDdpCSJ4S_14regex_automata()
          to label %bb.u unwind label %.loopexit, !dbg !12942 ; 11 uses

._crit_edge:                                      ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %.val30.pre = load ptr, ptr %i.c, align 8, !dbg !12943 ; 3 uses
    #dbg_value(ptr poison, !12611, !DIExpression(), !12218)
    #dbg_value(ptr poison, !12618, !DIExpression(), !12219)
    #dbg_value(ptr poison, !12666, !DIExpression(), !12223)
    #dbg_value(ptr poison, !12674, !DIExpression(), !12235)
    #dbg_value(ptr poison, !12674, !DIExpression(), !12238)
    #dbg_value(ptr poison, !12700, !DIExpression(), !12239)
    #dbg_value(ptr poison, !12700, !DIExpression(), !12240)
    #dbg_value(ptr poison, !12630, !DIExpression(), !12241)
    #dbg_declare(ptr poison, !12704, !DIExpression(), !12246)
    #dbg_value(ptr poison, !12715, !DIExpression(), !12249)
    #dbg_value(i64 %i.di, !12720, !DIExpression(), !12258)
    #dbg_value(i64 %i.di, !12730, !DIExpression(), !12261)
    #dbg_value(ptr %.val30.pre, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12262)
    #dbg_value(ptr %.val30.pre, !12721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12263)
    #dbg_value(i64 %i.di, !12728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12262)
    #dbg_value(i64 %i.di, !12721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12263)
    #dbg_value(ptr %.val30.pre, !12722, !DIExpression(), !12264)
    #dbg_value(ptr %.val30.pre, !12731, !DIExpression(), !12261)
  %.idx.i = shl nuw nsw i64 %i.di, 3, !dbg !12944
  %i.k = getelementptr inbounds nuw i8, ptr %.val30.pre, i64 %.idx.i, !dbg !12944
    #dbg_value(ptr %.val30.pre, !12631, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12265)
    #dbg_value(ptr %i.k, !12631, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12265)
    #dbg_value(i64 0, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12265)
    #dbg_value(ptr undef, !12700, !DIExpression(), !12240)
    #dbg_value(ptr undef, !12701, !DIExpression(), !12266)
    #dbg_value(ptr undef, !12674, !DIExpression(), !12238)
    #dbg_value(ptr undef, !12686, !DIExpression(), !12238)
    #dbg_value(ptr poison, !12734, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12269)
    #dbg_value(ptr undef, !12738, !DIExpression(), !12275)
    #dbg_value(ptr %.val30.pre, !12741, !DIExpression(), !12276)
    #dbg_value(ptr %i.k, !12742, !DIExpression(), !12277)
    #dbg_value(ptr poison, !12746, !DIExpression(), !12280)
    #dbg_value(ptr poison, !12749, !DIExpression(), !12281)
  %i.l = icmp eq i64 %i.di, 0, !dbg !12945
  br i1 %i.l, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread.i, label %.peel.next.i, !dbg !12946

.peel.next.i:                                     ; preds = %._crit_edge
    #dbg_value(i32 -1, !12632, !DIExpression(), !12282)
    #dbg_value(ptr undef, !12700, !DIExpression(), !12239)
    #dbg_value(ptr undef, !12674, !DIExpression(), !12235)
    #dbg_value(ptr undef, !12686, !DIExpression(), !12235)
    #dbg_value(i64 1, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12265)
    #dbg_value(ptr %.val30.pre, !12631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12265)
    #dbg_value(ptr %.val30.pre, !12631, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12265)
    #dbg_value(ptr undef, !12712, !DIExpression(), !12283)
    #dbg_value(ptr undef, !12713, !DIExpression(), !12284)
    #dbg_value(ptr undef, !12752, !DIExpression(), !12287)
    #dbg_value(ptr %.val30.pre, !12756, !DIExpression(), !12290)
  %i.m = load ptr, ptr %.val30.pre, align 8, !dbg !12947, !nonnull !1422, !noundef !1422 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !12947
  %i.o = load i64, ptr %i.n, align 8, !dbg !12947, !range !2713, !noundef !1422 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !12947
  %i.q = load i64, ptr %i.p, align 8, !dbg !12947 ; 3 uses
    #dbg_value(i64 %i.o, !12633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12291)
    #dbg_value(i64 %i.q, !12633, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12291)
    #dbg_value(i64 %i.q, !12634, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !12292)
    #dbg_value(i64 %i.q, !12760, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !12296)
    #dbg_value(i8 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !12292)
    #dbg_value(i8 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !12296)
    #dbg_value(ptr %.val30.pre, !12637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12297)
    #dbg_value(ptr %i.k, !12637, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12297)
    #dbg_value(i64 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12296)
    #dbg_value(i64 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12292)
    #dbg_value(i64 undef, !12760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12296)
    #dbg_value(i64 undef, !12634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12292)
    #dbg_value(i64 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12296)
    #dbg_value(i64 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12292)
    #dbg_value(i64 undef, !12760, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12296)
    #dbg_value(i64 undef, !12634, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12292)
    #dbg_value(i64 %i.o, !12760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12296)
    #dbg_value(i64 %i.o, !12634, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12292)
    #dbg_value(i64 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12296)
    #dbg_value(i64 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12292)
    #dbg_value(i32 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !12296)
    #dbg_value(i32 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !12292)
    #dbg_value(i32 -1, !12760, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !12296)
    #dbg_value(i32 -1, !12634, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !12292)
    #dbg_value(i32 -1, !12760, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !12296)
    #dbg_value(i32 -1, !12634, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !12292)
    #dbg_value(i32 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !12296)
    #dbg_value(i32 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !12292)
    #dbg_value(i32 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !12296)
    #dbg_value(i32 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !12292)
    #dbg_value(i8 1, !12760, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !12296)
    #dbg_value(i8 1, !12634, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !12292)
    #dbg_value(i8 1, !12760, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !12296)
    #dbg_value(i8 1, !12634, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !12292)
    #dbg_value(i8 poison, !12635, !DIExpression(), !12298)
    #dbg_value(i8 poison, !12636, !DIExpression(), !12298)
    #dbg_value(ptr undef, !12666, !DIExpression(), !12223)
    #dbg_value(i64 0, !12637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12297)
    #dbg_value(ptr %.val30.pre, !12637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12297)
    #dbg_value(ptr undef, !12638, !DIExpression(DW_OP_deref), !12299)
    #dbg_value(ptr %.val30.pre, !12639, !DIExpression(), !12300)
    #dbg_value(ptr %.val30.pre, !12776, !DIExpression(), !12303)
    #dbg_value(ptr %.val30.pre, !12779, !DIExpression(), !12306)
    #dbg_value(ptr %.val30.pre, !12781, !DIExpression(), !12309)
    #dbg_value(ptr %.val30.pre, !12783, !DIExpression(), !12312)
    #dbg_value(ptr %.val30.pre, !12786, !DIExpression(), !12315)
    #dbg_value(ptr %.val30.pre, !12789, !DIExpression(), !12318)
    #dbg_value(ptr %.val30.pre, !12794, !DIExpression(), !12321)
    #dbg_value(ptr %.val30.pre, !12756, !DIExpression(), !12323)
    #dbg_value(ptr %.val30.pre, !12799, !DIExpression(), !12326)
    #dbg_value(ptr %.val30.pre, !12802, !DIExpression(), !12329)
    #dbg_value(ptr %.val30.pre, !12804, !DIExpression(), !12332)
    #dbg_value(ptr undef, !12808, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !12335)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !12948
    #dbg_value(i32 poison, !12812, !DIExpression(), !12336)
    #dbg_value(i32 poison, !12814, !DIExpression(), !12339)
    #dbg_value(i32 0, !12818, !DIExpression(), !12339)
    #dbg_value(i32 poison, !12634, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !12292)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !12296)
    #dbg_value(ptr undef, !12821, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !12342)
    #dbg_value(i32 poison, !12823, !DIExpression(), !12343)
    #dbg_value(i32 poison, !12825, !DIExpression(), !12346)
    #dbg_value(i32 -1, !12827, !DIExpression(), !12346)
    #dbg_value(i32 poison, !12634, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !12292)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !12296)
    #dbg_value(ptr undef, !12821, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !12348)
    #dbg_value(i32 poison, !12823, !DIExpression(), !12349)
    #dbg_value(i32 poison, !12825, !DIExpression(), !12351)
    #dbg_value(i32 -1, !12827, !DIExpression(), !12351)
    #dbg_value(i32 poison, !12634, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !12292)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !12296)
    #dbg_value(ptr undef, !12808, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !12353)
  %i.s = load <4 x i32>, ptr %i.r, align 8, !dbg !12948 ; 2 uses
    #dbg_value(i32 poison, !12812, !DIExpression(), !12354)
    #dbg_value(i32 poison, !12814, !DIExpression(), !12356)
    #dbg_value(i32 0, !12818, !DIExpression(), !12356)
    #dbg_value(i32 poison, !12634, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !12292)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !12296)
    #dbg_value(ptr undef, !12808, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12358)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 72, !dbg !12949
  %i.u = load i32, ptr %i.t, align 8, !dbg !12949, !noundef !1422 ; 2 uses
    #dbg_value(i32 %i.u, !12812, !DIExpression(), !12359)
    #dbg_value(i32 %i.u, !12814, !DIExpression(), !12361)
    #dbg_value(i32 0, !12818, !DIExpression(), !12361)
    #dbg_value(i32 %i.u, !12634, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !12292)
    #dbg_value(i32 %i.u, !12760, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !12296)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 76, !dbg !12950
  %i.w = load i8, ptr %i.v, align 4, !dbg !12950, !range !2970, !noundef !1422 ; 2 uses
    #dbg_value(i8 %i.w, !12634, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !12292)
    #dbg_value(i8 %i.w, !12760, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !12296)
    #dbg_value(i64 0, !12834, !DIExpression(), !12364)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !12951
  %i.y = load i64, ptr %i.x, align 8, !dbg !12951, !noundef !1422 ; 2 uses
    #dbg_value(i64 %i.y, !12835, !DIExpression(), !12364)
    #dbg_value(i64 %i.y, !12634, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12292)
    #dbg_value(i64 %i.y, !12760, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12296)
    #dbg_value(ptr undef, !12617, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !12365)
    #dbg_value(ptr undef, !12612, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !12366)
    #dbg_value(ptr undef, !12618, !DIExpression(), !12219)
    #dbg_value(ptr undef, !12611, !DIExpression(), !12218)
    #dbg_value(i64 %i.o, !12760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12296)
    #dbg_value(i64 %i.o, !12634, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12292)
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 77, !dbg !12952
  %i.aa = load i8, ptr %i.z, align 1, !dbg !12952, !range !2970, !noundef !1422 ; 2 uses
    #dbg_value(i8 %i.aa, !12634, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !12292)
    #dbg_value(i8 %i.aa, !12760, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !12296)
  %i.ab = load i64, ptr %i.m, align 8, !dbg !12953, !range !2713, !noundef !1422 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !12953
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !12953
  %i.ae = trunc nuw i64 %i.ab to i1, !dbg !12954  ; 3 uses
  %spec.select.i = select i1 %i.ae, i64 %i.ad, i64 undef, !dbg !12954 ; 3 uses
    #dbg_value(i64 %i.ab, !12760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12296)
    #dbg_value(i64 %i.ab, !12634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12292)
    #dbg_value(i64 %spec.select.i, !12760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12296)
    #dbg_value(i64 %spec.select.i, !12634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12292)
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !12955
  %i.ag = load i64, ptr %i.af, align 8, !dbg !12955, !range !2713, !noundef !1422 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !12955
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !12955
  %i.aj = trunc nuw i64 %i.ag to i1, !dbg !12956  ; 3 uses
  %.sroa.86.2.peel.i = select i1 %i.aj, i64 %i.ai, i64 undef, !dbg !12956 ; 3 uses
    #dbg_value(i64 %i.ag, !12760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12296)
    #dbg_value(i64 %i.ag, !12634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12292)
    #dbg_value(i64 %.sroa.86.2.peel.i, !12760, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12296)
    #dbg_value(i64 %.sroa.86.2.peel.i, !12634, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12292)
  %i.ak = icmp eq i64 %i.dc, 0, !dbg !12957
  br i1 %i.ak, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread.i, label %.lr.ph60.preheader, !dbg !12958

.lr.ph60.preheader:                               ; preds = %.peel.next.i
  %.sroa.7.0.i41 = getelementptr i8, ptr %.val30.pre, i64 8, !dbg !12959
  %.sroa.011.1.peel.i = xor i1 %i.aj, true, !dbg !12960
  %.sroa.010.2.peel.i = xor i1 %i.ae, true, !dbg !12961
  br label %.lr.ph60, !dbg !12962

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %bb.t
  %.sroa.7.0.i59 = phi ptr [ %.sroa.7.0.i, %bb.t ], [ %.sroa.7.0.i41, %.lr.ph60.preheader ] ; 2 uses
  %i.al = phi i1 [ %i.by, %bb.t ], [ %i.ae, %.lr.ph60.preheader ] ; 2 uses
  %i.am = phi i64 [ %i.bx, %bb.t ], [ %spec.select.i, %.lr.ph60.preheader ] ; 3 uses
  %i.an = phi i1 [ %i.cj, %bb.t ], [ %i.aj, %.lr.ph60.preheader ] ; 2 uses
  %i.ao = phi i64 [ %i.ci, %bb.t ], [ %.sroa.86.2.peel.i, %.lr.ph60.preheader ] ; 3 uses
  %.sroa.02.0.load5.i58 = phi i64 [ %.sroa.02.0.load4.i, %bb.t ], [ %i.o, %.lr.ph60.preheader ]
  %.sroa.3.8.load7.i57 = phi i64 [ %.sroa.3.8.load6.i, %bb.t ], [ %i.q, %.lr.ph60.preheader ] ; 3 uses
  %.sroa.010.0.i56 = phi i1 [ %.sroa.010.1.i, %bb.t ], [ %.sroa.010.2.peel.i, %.lr.ph60.preheader ]
  %.sroa.011.0.i55 = phi i1 [ %.sroa.011.2.i, %bb.t ], [ %.sroa.011.1.peel.i, %.lr.ph60.preheader ]
  %.sroa.05.0.i54 = phi i64 [ %.sroa.05.1.i, %bb.t ], [ %i.ab, %.lr.ph60.preheader ] ; 2 uses
  %.sroa.4.0.i53 = phi i64 [ %.sroa.4.1.i, %bb.t ], [ %spec.select.i, %.lr.ph60.preheader ] ; 3 uses
  %.sroa.5.0.i52 = phi i64 [ %.sroa.5.3.i, %bb.t ], [ %i.ag, %.lr.ph60.preheader ] ; 2 uses
  %.sroa.86.0.i51 = phi i64 [ %.sroa.86.3.i, %bb.t ], [ %.sroa.86.2.peel.i, %.lr.ph60.preheader ] ; 3 uses
  %.sroa.9.0.i50 = phi i64 [ %.sroa.9.1.i, %bb.t ], [ %i.o, %.lr.ph60.preheader ] ; 2 uses
  %.sroa.12.0.i49 = phi i64 [ %i.bh, %bb.t ], [ %i.y, %.lr.ph60.preheader ]
  %.sroa.22.0.i44 = phi i32 [ %i.ay, %bb.t ], [ %i.u, %.lr.ph60.preheader ]
  %.sroa.24.0.i43 = phi i8 [ %.sroa.014.0.i, %bb.t ], [ %i.w, %.lr.ph60.preheader ]
  %.sroa.27.0.i42 = phi i8 [ %.sroa.019.0.i, %bb.t ], [ %i.aa, %.lr.ph60.preheader ]
  %i.ap = phi <4 x i32> [ %i.av, %bb.t ], [ %i.s, %.lr.ph60.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.05.0.i54, !12760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12296)
    #dbg_value(i64 %.sroa.4.0.i53, !12760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12296)
    #dbg_value(i64 %.sroa.5.0.i52, !12760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12296)
    #dbg_value(i64 %.sroa.86.0.i51, !12760, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12296)
    #dbg_value(i64 %.sroa.9.0.i50, !12760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12296)
    #dbg_value(i64 %.sroa.12.0.i49, !12760, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12296)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !12296)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !12296)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !12296)
    #dbg_value(i32 poison, !12760, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !12296)
    #dbg_value(i32 %.sroa.22.0.i44, !12760, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !12296)
    #dbg_value(i8 %.sroa.24.0.i43, !12760, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !12296)
    #dbg_value(i8 %.sroa.27.0.i42, !12760, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !12296)
    #dbg_value(ptr %.sroa.7.0.i59, !12637, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12297)
    #dbg_value(ptr undef, !12638, !DIExpression(DW_OP_deref), !12299)
    #dbg_value(ptr %.sroa.7.0.i59, !12639, !DIExpression(), !12300)
    #dbg_value(ptr %.sroa.7.0.i59, !12776, !DIExpression(), !12303)
    #dbg_value(ptr %.sroa.7.0.i59, !12779, !DIExpression(), !12306)
    #dbg_value(ptr %.sroa.7.0.i59, !12781, !DIExpression(), !12309)
    #dbg_value(ptr %.sroa.7.0.i59, !12783, !DIExpression(), !12312)
    #dbg_value(ptr %.sroa.7.0.i59, !12786, !DIExpression(), !12315)
    #dbg_value(ptr %.sroa.7.0.i59, !12789, !DIExpression(), !12318)
    #dbg_value(ptr %.sroa.7.0.i59, !12794, !DIExpression(), !12321)
    #dbg_value(ptr %.sroa.7.0.i59, !12756, !DIExpression(), !12323)
    #dbg_value(ptr %.sroa.7.0.i59, !12799, !DIExpression(), !12326)
    #dbg_value(ptr %.sroa.7.0.i59, !12802, !DIExpression(), !12329)
    #dbg_value(ptr %.sroa.7.0.i59, !12804, !DIExpression(), !12332)
    #dbg_value(ptr undef, !12808, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !12335)
  %i.aq = load ptr, ptr %.sroa.7.0.i59, align 8, !dbg !12948, !nonnull !1422, !noundef !1422 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56, !dbg !12948
    #dbg_value(i32 poison, !12812, !DIExpression(), !12336)
    #dbg_value(i32 poison, !12814, !DIExpression(), !12339)
    #dbg_value(i32 poison, !12818, !DIExpression(), !12339)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !12292)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !12296)
    #dbg_value(ptr undef, !12821, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !12342)
    #dbg_value(i32 poison, !12823, !DIExpression(), !12343)
    #dbg_value(i32 poison, !12825, !DIExpression(), !12346)
    #dbg_value(i32 poison, !12827, !DIExpression(), !12346)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !12292)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !12296)
    #dbg_value(ptr undef, !12821, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !12348)
    #dbg_value(i32 poison, !12823, !DIExpression(), !12349)
    #dbg_value(i32 poison, !12825, !DIExpression(), !12351)
    #dbg_value(i32 poison, !12827, !DIExpression(), !12351)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 512, 32), !12292)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 512, 32), !12296)
    #dbg_value(ptr undef, !12808, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !12353)
  %i.as = load <4 x i32>, ptr %i.ar, align 8, !dbg !12948 ; 2 uses
    #dbg_value(i32 poison, !12812, !DIExpression(), !12354)
    #dbg_value(i32 poison, !12814, !DIExpression(), !12356)
    #dbg_value(i32 poison, !12818, !DIExpression(), !12356)
  %i.at = or <4 x i32> %i.as, %i.ap, !dbg !12963
  %i.au = and <4 x i32> %i.as, %i.ap, !dbg !12963
  %i.av = shufflevector <4 x i32> %i.at, <4 x i32> %i.au, <4 x i32> <i32 0, i32 5, i32 6, i32 3>, !dbg !12963 ; 2 uses
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 544, 32), !12292)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !12760, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 544, 32), !12296)
    #dbg_value(ptr undef, !12808, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12358)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 72, !dbg !12949
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !12949, !noundef !1422
    #dbg_value(i32 %i.ax, !12812, !DIExpression(), !12359)
    #dbg_value(i32 %i.ax, !12814, !DIExpression(), !12361)
    #dbg_value(i32 %.sroa.22.0.i44, !12818, !DIExpression(), !12361)
  %i.ay = or i32 %i.ax, %.sroa.22.0.i44, !dbg !12964 ; 2 uses
    #dbg_value(i32 %i.ay, !12634, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !12292)
    #dbg_value(i32 %i.ay, !12760, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !12296)
  %i.az = trunc nuw i8 %.sroa.24.0.i43 to i1, !dbg !12962
  br i1 %i.az, label %bb.c, label %bb.d, !dbg !12962

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread.i: ; preds = %bb.t, %bb.a, %.peel.next.i, %._crit_edge
  %.sroa.3.048.i = phi i64 [ undef, %._crit_edge ], [ %i.q, %.peel.next.i ], [ undef, %bb.a ], [ %i.q, %bb.t ]
  %.sroa.27.0.lcssa.i = phi i8 [ 1, %._crit_edge ], [ %i.aa, %.peel.next.i ], [ 1, %bb.a ], [ %.sroa.019.0.i, %bb.t ], !dbg !12965
  %.sroa.24.0.lcssa.i = phi i8 [ 1, %._crit_edge ], [ %i.w, %.peel.next.i ], [ 1, %bb.a ], [ %.sroa.014.0.i, %bb.t ], !dbg !12965
  %.sroa.22.0.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.u, %.peel.next.i ], [ 0, %bb.a ], [ %i.ay, %bb.t ], !dbg !12965
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.y, %.peel.next.i ], [ 0, %bb.a ], [ %i.bh, %bb.t ], !dbg !12965
  %.sroa.9.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.o, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.9.1.i, %bb.t ], !dbg !12965
  %.sroa.86.0.lcssa.i = phi i64 [ undef, %._crit_edge ], [ %.sroa.86.2.peel.i, %.peel.next.i ], [ undef, %bb.a ], [ %.sroa.86.3.i, %bb.t ]
  %.sroa.5.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ag, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.5.3.i, %bb.t ], !dbg !12966
  %.sroa.4.0.lcssa.i = phi i64 [ undef, %._crit_edge ], [ %spec.select.i, %.peel.next.i ], [ undef, %bb.a ], [ %.sroa.4.1.i, %bb.t ]
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ab, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.05.1.i, %bb.t ], !dbg !12966
  %i.ba = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.s, %.peel.next.i ], [ zeroinitializer, %bb.a ], [ %i.av, %bb.t ], !dbg !12965
    #dbg_value(i64 8, !4887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12370)
    #dbg_value(i64 8, !4892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12372)
    #dbg_value(i64 8, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12374)
    #dbg_value(i64 80, !4887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12370)
    #dbg_value(i64 80, !4892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12372)
    #dbg_value(i64 80, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12374)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4907, !DIExpression(), !12372)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4913, !DIExpression(), !12374)
    #dbg_value(i8 0, !4914, !DIExpression(), !12374)
    #dbg_value(i64 8, !4916, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12376)
    #dbg_value(i64 8, !4939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12378)
    #dbg_value(i64 80, !4916, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12376)
    #dbg_value(i64 80, !4939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12378)
    #dbg_value(i1 false, !4920, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12376)
    #dbg_value(i64 80, !4921, !DIExpression(), !12379)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !12967, !noalias !12841
  %i.bb = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1449) 80, i64 noundef 8) #29, !dbg !12968, !noalias !12841 ; 14 uses
  %i.bc = icmp eq ptr %i.bb, null, !dbg !12969
  br i1 %i.bc, label %bb.b, label %bb.x, !dbg !12970, !prof !2582

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #31
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !12971

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !12971

bb.c:                                             ; preds = %.lr.ph60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 76, !dbg !12950
  %i.be = load i8, ptr %i.bd, align 4, !dbg !12950, !range !2970, !noundef !1422
  br label %bb.d, !dbg !12962

bb.d:                                             ; preds = %bb.c, %.lr.ph60
  %.sroa.014.0.i = phi i8 [ %i.be, %bb.c ], [ 0, %.lr.ph60 ], !dbg !12972 ; 2 uses
    #dbg_value(i8 %.sroa.014.0.i, !12634, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !12292)
    #dbg_value(i8 %.sroa.014.0.i, !12760, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !12296)
    #dbg_value(i64 %.sroa.12.0.i49, !12834, !DIExpression(), !12364)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !12951
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !12951, !noundef !1422
    #dbg_value(i64 %i.bg, !12835, !DIExpression(), !12364)
  %i.bh = call i64 @llvm.uadd.sat.i64(i64 %.sroa.12.0.i49, i64 %i.bg), !dbg !12973 ; 2 uses
    #dbg_value(i64 %i.bh, !12634, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12292)
    #dbg_value(i64 %i.bh, !12760, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !12296)
    #dbg_value(ptr undef, !12617, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !12365)
    #dbg_value(ptr undef, !12612, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !12366)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !12974
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !12974, !range !2713, !noundef !1422 ; 2 uses
    #dbg_value(ptr undef, !12618, !DIExpression(), !12219)
    #dbg_value(ptr undef, !12611, !DIExpression(), !12218)
  %i.bk = trunc nuw i64 %.sroa.02.0.load5.i58 to i1, !dbg !12975
  br i1 %i.bk, label %bb.e, label %bb.f, !dbg !12975

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !12974
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !12974
  %i.bn = trunc nuw i64 %i.bj to i1, !dbg !12975
  %i.bo = icmp eq i64 %.sroa.3.8.load7.i57, %i.bm
  %or.cond.not.i = select i1 %i.bn, i1 %i.bo, i1 false, !dbg !12975
  br i1 %or.cond.not.i, label %bb.h, label %bb.g, !dbg !12975

bb.f:                                             ; preds = %bb.d
  %i.bp = trunc nuw i64 %i.bj to i1, !dbg !12975
  br i1 %i.bp, label %bb.g, label %bb.h, !dbg !12976

bb.g:                                             ; preds = %bb.f, %bb.e
    #dbg_value(i64 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12292)
    #dbg_value(i64 0, !12760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12296)
  br label %bb.h, !dbg !12977

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.9.1.i = phi i64 [ 0, %bb.g ], [ %.sroa.9.0.i50, %bb.f ], [ %.sroa.9.0.i50, %bb.e ], !dbg !12965 ; 2 uses
  %.sroa.3.8.load6.i = phi i64 [ undef, %bb.g ], [ %.sroa.3.8.load7.i57, %bb.f ], [ %.sroa.3.8.load7.i57, %bb.e ]
  %.sroa.02.0.load4.i = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ 1, %bb.e ]
    #dbg_value(i64 %.sroa.9.1.i, !12760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12296)
    #dbg_value(i64 %.sroa.9.1.i, !12634, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12292)
  %i.bq = trunc nuw i8 %.sroa.27.0.i42 to i1, !dbg !12978
  br i1 %i.bq, label %bb.i, label %bb.j, !dbg !12978

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 77, !dbg !12952
  %i.bs = load i8, ptr %i.br, align 1, !dbg !12952, !range !2970, !noundef !1422
  br label %bb.j, !dbg !12978

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.019.0.i = phi i8 [ %i.bs, %bb.i ], [ 0, %bb.h ], !dbg !12979 ; 2 uses
    #dbg_value(i8 %.sroa.019.0.i, !12634, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !12292)
    #dbg_value(i8 %.sroa.019.0.i, !12760, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !12296)
  br i1 %.sroa.010.0.i56, label %bb.l, label %bb.k, !dbg !12980

bb.k:                                             ; preds = %bb.j
  %i.bt = load i64, ptr %i.aq, align 8, !dbg !12953, !range !2713, !noundef !1422
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !12953
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !12953 ; 3 uses
  %i.bw = trunc nuw i64 %i.bt to i1, !dbg !12954  ; 3 uses
  br i1 %i.bw, label %bb.m, label %bb.o, !dbg !12954
end_hunk_0
