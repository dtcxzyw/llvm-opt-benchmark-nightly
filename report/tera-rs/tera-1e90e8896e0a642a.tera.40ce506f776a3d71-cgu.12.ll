Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr:bb.a
  %.sroa.5200.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !15469
  store i64 %.sroa.5200.0.copyload, ptr %.sroa.5200.0..sroa_idx203, align 8, !dbg !15469
  %.sroa.6205.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !15469
  store i64 %.sroa.6205.0.copyload, ptr %.sroa.6205.0..sroa_idx208, align 8, !dbg !15469
  %.sroa.7210.0..sroa_idx213 = getelementptr inbounds nuw i8, ptr %i.aa, i64 40, !dbg !15469
  store i64 %.sroa.7210.0.copyload, ptr %.sroa.7210.0..sroa_idx213, align 8, !dbg !15469
  %.sroa.8215.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.aa, i64 48, !dbg !15469
  store i64 %.sroa.8215.0.copyload, ptr %.sroa.8215.0..sroa_idx218, align 8, !dbg !15469
  store i64 1, ptr %i.aa, align 8, !dbg !15469
  %i.tl = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.aa), !dbg !15470 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !15471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !15471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !15472
  br label %bb.q, !dbg !15473

bb.gs:                                            ; preds = %bb.gq, %bb.n, %bb.go, %bb.gl, %bb.gk
  %lpad.thr_comm1042 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #30
          to label %common.resume unwind label %bb.z, !dbg !15472

bb.gt:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !15474
  store i8 55, ptr %i.w, align 8, !dbg !15474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !15475
  %i.tm = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !15475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tm, ptr noundef nonnull align 8 dereferenceable(48) %i.ft, i64 48, i1 false), !dbg !15475
  store i64 1, ptr %i.v, align 8, !dbg !15475
  %i.tn = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v), !dbg !15476 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !15477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !15477
  br label %bb.q, !dbg !15477

bb.gu:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !15478
  store i8 54, ptr %i.y, align 8, !dbg !15478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15479
  %i.to = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !15479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.to, ptr noundef nonnull align 8 dereferenceable(48) %i.ft, i64 48, i1 false), !dbg !15479
  store i64 1, ptr %i.x, align 8, !dbg !15479
  %i.tp = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.x), !dbg !15480 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !15481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15481
  br label %bb.q, !dbg !15481

bb.gv:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15482

bb.gw:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15483

bb.gx:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15484

bb.gy:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15485

bb.gz:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15486

bb.ha:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15487

bb.hb:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15488

bb.hc:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15489

bb.hd:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15490

bb.he:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15491

bb.hf:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15492

bb.hg:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15493

bb.hh:                                            ; preds = %bb.p, %bb.p
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15494 ; 2 uses
    #dbg_value(ptr %i.tq, !13482, !DIExpression(), !14677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !15495
  store i64 0, ptr %i.t, align 8, !dbg !15495
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !15495
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.439.0..sroa_idx, align 8, !dbg !15495
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !15495
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8, !dbg !15495
  invoke fastcc void @_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8push_mutBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.tq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.hm unwind label %bb.ii, !dbg !15496

bb.hi:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15497

bb.hj:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15498

bb.hk:                                            ; preds = %bb.p, %bb.p
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32
          to label %bb.al unwind label %bb.ii, !dbg !15499

bb.hl:                                            ; preds = %bb.p, %bb.hj, %bb.hi, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv
  %.sink = phi i8 [ 53, %bb.hj ], [ 52, %bb.hi ], [ 51, %bb.hg ], [ 50, %bb.hf ], [ 49, %bb.he ], [ 48, %bb.hd ], [ 47, %bb.hc ], [ 46, %bb.hb ], [ 45, %bb.ha ], [ 41, %bb.gz ], [ 44, %bb.gy ], [ 43, %bb.gx ], [ 42, %bb.gw ], [ 40, %bb.gv ], [ 39, %bb.p ]
  store i8 %.sink, ptr %i.u, align 8, !dbg !15500
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.p)
          to label %bb.if unwind label %bb.ih, !dbg !15501

.thread1057:                                      ; preds = %bb.ih
  br i1 %.sroa.063.2.ph, label %.thread1085, label %common.resume, !dbg !15502

bb.hm:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !15503
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.p)
          to label %bb.hn unwind label %.thread1093, !dbg !15504

bb.hn:                                            ; preds = %bb.hm
    #dbg_value(ptr %0, !14678, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14686)
    #dbg_value(ptr %0, !14687, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14692)
    #dbg_value(ptr %0, !14693, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14697)
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15505 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15506 ; 3 uses
  %i.tt = load i64, ptr %i.ts, align 8, !dbg !15506, !noundef !1394 ; 2 uses
    #dbg_value(ptr poison, !14704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14719)
    #dbg_value(i64 %i.tt, !14704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14719)
  %.not = icmp eq i64 %i.tt, 0, !dbg !15507
  br i1 %.not, label %bb.hp, label %bb.ho, !dbg !15507, !prof !3799

bb.ho:                                            ; preds = %bb.hn
  %i.tu = load ptr, ptr %i.tr, align 8, !dbg !15505, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.tu, !14704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14719)
  %i.tv = getelementptr [24 x i8], ptr %i.tu, i64 %i.tt, !dbg !15508 ; 3 uses
  %i.tw = getelementptr i8, ptr %i.tv, i64 -24, !dbg !15508 ; 3 uses
    #dbg_value(ptr %i.tw, !14716, !DIExpression(), !14720)
  %i.tx = load i64, ptr %i.tw, align 8, !dbg !14685, !range !3473, !noundef !1394 ; 2 uses
  %i.ty = icmp ne i64 %i.tx, -9223372036854775807, !dbg !14685
  call void @llvm.assume(i1 %i.ty), !dbg !14685
  %i.tz = icmp sgt i64 %i.tx, -1, !dbg !14685
  br i1 %i.tz, label %bb.hq, label %bb.hp, !dbg !15509, !prof !3672

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #32
          to label %bb.al unwind label %.thread1093, !dbg !15510

bb.hq:                                            ; preds = %bb.ho
    #dbg_value(ptr %i.tw, !14721, !DIExpression(), !14728)
    #dbg_value(ptr %i.tw, !13242, !DIExpression(), !14729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !15511
    #dbg_value(ptr %i.p, !13720, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !14731)
    #dbg_value(i8 %i.fz, !13721, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14733)
  %i.ua = icmp eq i8 %i.fz, 13, !dbg !15512
  %spec.select = select i1 %i.ua, i8 27, i8 28, !dbg !13724
  %i.ub = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !14729
  store i64 0, ptr %i.ub, align 8, !dbg !14729
  store i8 %spec.select, ptr %i.s, align 8, !dbg !14729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !15513
  store i64 0, ptr %i.r, align 8, !dbg !15513
  %i.uc = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r)
          to label %bb.hr unwind label %.thread1093, !dbg !15514

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15515
  %i.ud = zext i32 %i.uc to i64, !dbg !15516
    #dbg_value(i64 %i.ud, !14725, !DIExpression(), !14728)
  call void @llvm.experimental.noalias.scope.decl(metadata !14734), !dbg !15517
    #dbg_value(ptr %i.tw, !14735, !DIExpression(), !13112)
    #dbg_value(ptr %i.tw, !14743, !DIExpression(), !13113)
    #dbg_value(i64 %i.ud, !14744, !DIExpression(), !13113)
    #dbg_value(i64 8, !14748, !DIExpression(), !13118)
  %i.ue = getelementptr i8, ptr %i.tv, i64 -8, !dbg !15518 ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8, !dbg !15518, !alias.scope !14734, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.uf, !14753, !DIExpression(), !13121)
    #dbg_value(i64 %i.uf, !14745, !DIExpression(), !13122)
    #dbg_value(ptr %i.tw, !14751, !DIExpression(), !13123)
  %i.ug = load i64, ptr %i.tw, align 8, !dbg !15519, !range !3688, !alias.scope !14734, !noundef !1394
  %i.uh = icmp eq i64 %i.uf, %i.ug, !dbg !15520
  br i1 %i.uh, label %bb.hs, label %bb.ht, !dbg !15520

bb.hs:                                            ; preds = %bb.hr
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tw) #29
          to label %bb.ht unwind label %.thread1093, !dbg !15521

bb.ht:                                            ; preds = %bb.hr, %bb.hs
  %i.ui = getelementptr i8, ptr %i.tv, i64 -16, !dbg !15522
  %i.uj = load ptr, ptr %i.ui, align 8, !dbg !15522, !alias.scope !14734, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.uj, !14756, !DIExpression(), !13121)
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %i.uf, !dbg !15523
    #dbg_value(ptr %i.uk, !14768, !DIExpression(), !13132)
    #dbg_value(ptr %i.uk, !14746, !DIExpression(), !13133)
    #dbg_value(i64 %i.ud, !14771, !DIExpression(), !13132)
  store i64 %i.ud, ptr %i.uk, align 8, !dbg !15524, !noalias !14734
  %i.ul = add i64 %i.uf, 1, !dbg !15525
  store i64 %i.ul, ptr %i.ue, align 8, !dbg !15525, !alias.scope !14734
  %i.um = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15526
  call fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.um), !dbg !15527
    #dbg_value(ptr %0, !14464, !DIExpression(), !14774)
    #dbg_value(ptr %0, !14468, !DIExpression(), !14777)
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15528 ; 4 uses
  %i.uo = load i64, ptr %i.un, align 8, !dbg !15528, !noundef !1394 ; 4 uses
    #dbg_value(i64 %i.uo, !13243, !DIExpression(), !14778)
  %i.up = icmp ult i64 %i.uo, 164703072086692426, !dbg !15529
  call void @llvm.assume(i1 %i.up), !dbg !15530
    #dbg_value(ptr %0, !13735, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14779)
    #dbg_value(ptr %0, !13737, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14780)
    #dbg_value(ptr %0, !14781, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14784)
    #dbg_value(ptr %0, !14785, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14788)
  %i.uq = load i64, ptr %i.ts, align 8, !dbg !15531, !noundef !1394 ; 3 uses
  %i.ur = icmp eq i64 %i.uq, 0, !dbg !15531
  br i1 %i.ur, label %bb.hv, label %bb.hu, !dbg !15531, !prof !3799

bb.hu:                                            ; preds = %bb.ht
  %i.us = add nsw i64 %i.uq, -1, !dbg !15532      ; 3 uses
  store i64 %i.us, ptr %i.ts, align 8, !dbg !15532
  %i.ut = load i64, ptr %i.tq, align 8, !dbg !15533, !range !3688, !noundef !1394
    #dbg_value(i64 %i.ut, !14263, !DIExpression(), !14791)
  %i.uu = icmp samesign ult i64 %i.us, %i.ut, !dbg !15534
    #dbg_value(i1 true, !14320, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14793)
  call void @llvm.assume(i1 %i.uu), !dbg !15535
  %i.uv = load ptr, ptr %i.tr, align 8, !dbg !15536, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.uv, !14800, !DIExpression(), !14804)
    #dbg_value(i64 %i.us, !14801, !DIExpression(), !14804)
  %i.uw = icmp ult i64 %i.uq, 384307168202282327, !dbg !15537
  call void @llvm.assume(i1 %i.uw), !dbg !15538
  %i.ux = getelementptr inbounds nuw [24 x i8], ptr %i.uv, i64 %i.us, !dbg !15539 ; 3 uses
    #dbg_value(ptr %i.ux, !14805, !DIExpression(), !14808)
  %.sroa.0114.0.copyload = load i64, ptr %i.ux, align 8, !dbg !15540 ; 3 uses
  %i.uy = icmp ne i64 %.sroa.0114.0.copyload, -9223372036854775807, !dbg !15541
  call void @llvm.assume(i1 %i.uy), !dbg !15541
  %i.uz = icmp sgt i64 %.sroa.0114.0.copyload, -1, !dbg !15541
  br i1 %i.uz, label %bb.hw, label %bb.hv, !dbg !15542, !prof !3672

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #32, !dbg !15543
  unreachable

bb.hw:                                            ; preds = %bb.hu
  %.sroa.4115.sroa.4.0..sroa.4115.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ux, i64 16, !dbg !15540
  %.sroa.4115.sroa.4.0.copyload = load i64, ptr %.sroa.4115.sroa.4.0..sroa.4115.0..sroa_idx.sroa_idx, align 8, !dbg !15540 ; 3 uses
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ux, i64 8, !dbg !15540
  %.sroa.4115.sroa.0.0.copyload = load ptr, ptr %.sroa.4115.0..sroa_idx, align 8, !dbg !15540, !nonnull !1394, !noundef !1394 ; 6 uses
    #dbg_value(i64 %.sroa.0114.0.copyload, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14809)
    #dbg_value(i64 %.sroa.0114.0.copyload, !13281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14810)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14810)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14809)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !13281, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14810)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !13244, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14809)
    #dbg_value(i64 %.sroa.0114.0.copyload, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14811)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14811)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !13282, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14811)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13284, !DIExpression(), !14812)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14813, !DIExpression(), !14817)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13285, !DIExpression(), !14818)
    #dbg_value(ptr undef, !13270, !DIExpression(), !13278)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !14814, !DIExpression(), !14817)
  %i.va = icmp ult i64 %.sroa.4115.sroa.4.0.copyload, 1152921504606846976, !dbg !15544
  call void @llvm.assume(i1 %i.va), !dbg !15545
  %.idx = shl nuw nsw i64 %.sroa.4115.sroa.4.0.copyload, 3, !dbg !15546 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.4115.sroa.0.0.copyload, i64 %.idx, !dbg !15546 ; 2 uses
    #dbg_value(ptr undef, !13291, !DIExpression(), !13298)
    #dbg_value(i64 %.sroa.0114.0.copyload, !14263, !DIExpression(), !14821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !13276
  store ptr %.sroa.4115.sroa.0.0.copyload, ptr %i.q, align 8, !dbg !13276
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !13276 ; 4 uses
  store ptr %.sroa.4115.sroa.0.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !13276
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !13276
  store i64 %.sroa.0114.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8, !dbg !13276
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !13276
  store ptr %i.vb, ptr %.sroa.652.0..sroa_idx, align 8, !dbg !13276
  %i.vc = icmp eq i64 %.sroa.4115.sroa.4.0.copyload, 0, !dbg !15547
  br i1 %i.vc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, label %.lr.ph, !dbg !15548

.lr.ph:                                           ; preds = %bb.hw
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ve = add nsw i64 %.idx, -8, !dbg !15548      ; 2 uses
  %i.vf = and i64 %i.ve, 8, !dbg !15548
  %lcmp.mod.not.not = icmp eq i64 %i.vf, 0, !dbg !15548
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit, !dbg !15548

.prol.preheader:                                  ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !14835), !dbg !13519
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14836, !DIExpression(), !13149)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14832, !DIExpression(), !13150)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14833, !DIExpression(), !13151)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14841, !DIExpression(), !13154)
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.4115.sroa.0.0.copyload, i64 8, !dbg !15549 ; 4 uses
  store ptr %i.vg, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15550, !alias.scope !14835
  %i.vh = load i64, ptr %.sroa.4115.sroa.0.0.copyload, align 8, !dbg !15551, !noalias !14835, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.vh, !14531, !DIExpression(), !14854)
    #dbg_value(i64 %i.vh, !13246, !DIExpression(), !14855)
    #dbg_value(i64 %i.vh, !14541, !DIExpression(), !14856)
    #dbg_value(i64 %i.vh, !14544, !DIExpression(), !14857)
    #dbg_value(ptr %0, !14540, !DIExpression(), !14858)
    #dbg_value(ptr %0, !14564, !DIExpression(), !14860)
    #dbg_value(ptr %0, !14568, !DIExpression(), !14863)
    #dbg_value(ptr %0, !14572, !DIExpression(), !14866)
  %2 = load i64, ptr %i.un, align 8, !dbg !15552, !noundef !1394
    #dbg_value(ptr poison, !14532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14854)
    #dbg_value(ptr poison, !14543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14857)
    #dbg_value(i64 %2, !14532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14854)
    #dbg_value(i64 %2, !14543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14857)
  %i.vi = icmp ult i64 %i.vh, %2, !dbg !15553
  br i1 %i.vi, label %bb.hx, label %.prol.loopexit, !dbg !15553

bb.hx:                                            ; preds = %.prol.preheader
  %i.vj = load ptr, ptr %i.vd, align 8, !dbg !15554, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.vj, !14532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14854)
    #dbg_value(ptr %i.vj, !14543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14857)
  %i.vk = getelementptr inbounds nuw [56 x i8], ptr %i.vj, i64 %i.vh, !dbg !15555 ; 2 uses
  %i.vl = load i8, ptr %i.vk, align 8, !dbg !15556, !range !3235, !noundef !1394
  %.off.prol = add nsw i8 %i.vl, -27, !dbg !15557
  %switch.prol = icmp ult i8 %.off.prol, 2, !dbg !15557
  br i1 %switch.prol, label %bb.hy, label %.prol.loopexit, !dbg !15557

bb.hy:                                            ; preds = %bb.hx
  %.sroa.059.0.prol = getelementptr inbounds nuw i8, ptr %i.vk, i64 8, !dbg !14855
    #dbg_value(ptr %.sroa.059.0.prol, !13247, !DIExpression(), !14873)
  store i64 %i.uo, ptr %.sroa.059.0.prol, align 8, !dbg !15558
  br label %.prol.loopexit, !dbg !15559

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.hx, %bb.hy, %.lr.ph
  %.unr.a = phi ptr [ %.sroa.4115.sroa.0.0.copyload, %.lr.ph ], [ %i.vg, %bb.hy ], [ %i.vg, %bb.hx ], [ %i.vg, %.prol.preheader ]
  %i.vm = icmp eq i64 %i.ve, 0, !dbg !15548
  br i1 %i.vm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, label %.lr.ph.new, !dbg !15548

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.id
  %i.vn = phi ptr [ %i.vu, %bb.id ], [ %.unr.a, %.prol.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14835), !dbg !13519
    #dbg_value(ptr %i.vn, !14836, !DIExpression(), !13149)
    #dbg_value(ptr %i.vn, !14832, !DIExpression(), !13150)
    #dbg_value(ptr %i.vn, !14833, !DIExpression(), !13151)
    #dbg_value(ptr %i.vn, !14841, !DIExpression(), !13154)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8, !dbg !15549 ; 2 uses
  store ptr %i.vo, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15550, !alias.scope !14835
  %3 = load i64, ptr %i.vn, align 8, !dbg !15551, !noalias !14835, !noundef !1394 ; 2 uses
    #dbg_value(i64 %3, !14531, !DIExpression(), !14854)
    #dbg_value(i64 %3, !13246, !DIExpression(), !14855)
    #dbg_value(i64 %3, !14541, !DIExpression(), !14856)
    #dbg_value(i64 %3, !14544, !DIExpression(), !14857)
    #dbg_value(ptr %0, !14540, !DIExpression(), !14858)
    #dbg_value(ptr %0, !14564, !DIExpression(), !14860)
    #dbg_value(ptr %0, !14568, !DIExpression(), !14863)
    #dbg_value(ptr %0, !14572, !DIExpression(), !14866)
  %i.vp = load i64, ptr %i.un, align 8, !dbg !15552, !noundef !1394
    #dbg_value(ptr poison, !14532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14854)
    #dbg_value(ptr poison, !14543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14857)
    #dbg_value(i64 %i.vp, !14532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14854)
    #dbg_value(i64 %i.vp, !14543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14857)
  %i.vq = icmp ult i64 %3, %i.vp, !dbg !15553
  br i1 %i.vq, label %bb.hz, label %bb.ia, !dbg !15553

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657: ; preds = %.prol.loopexit, %bb.id, %bb.hw
    #dbg_value(ptr %i.q, !14874, !DIExpression(), !13159)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !dbg !15560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !15562
  br label %bb.q, !dbg !15563

bb.hz:                                            ; preds = %.lr.ph.new
  %i.vr = load ptr, ptr %i.vd, align 8, !dbg !15554, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.vr, !14532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14854)
    #dbg_value(ptr %i.vr, !14543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14857)
  %i.vs = getelementptr inbounds nuw [56 x i8], ptr %i.vr, i64 %3, !dbg !15555 ; 2 uses
  %i.vt = load i8, ptr %i.vs, align 8, !dbg !15556, !range !3235, !noundef !1394
  %.off = add nsw i8 %i.vt, -27, !dbg !15557
  %switch = icmp ult i8 %.off, 2, !dbg !15557
  br i1 %switch, label %bb.ie, label %bb.ia, !dbg !15557

bb.ia:                                            ; preds = %bb.hz, %.lr.ph.new, %bb.ie
    #dbg_value(ptr %i.q, !14831, !DIExpression(), !13160)
    #dbg_value(i64 1, !14845, !DIExpression(), !13154)
    #dbg_value(ptr %i.q, !14825, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13161)
    #dbg_value(ptr poison, !14826, !DIExpression(), !13162)
  call void @llvm.experimental.noalias.scope.decl(metadata !14880), !dbg !13519
    #dbg_value(ptr %i.vo, !14836, !DIExpression(), !13149)
    #dbg_value(ptr %i.vo, !14832, !DIExpression(), !13150)
    #dbg_value(ptr %i.vo, !14833, !DIExpression(), !13151)
    #dbg_value(ptr %i.vo, !14841, !DIExpression(), !13154)
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 16, !dbg !15549 ; 3 uses
  store ptr %i.vu, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15550, !alias.scope !14880
  %i.vv = load i64, ptr %i.vo, align 8, !dbg !15551, !noalias !14880, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.vv, !14531, !DIExpression(), !14854)
    #dbg_value(i64 %i.vv, !13246, !DIExpression(), !14855)
    #dbg_value(i64 %i.vv, !14541, !DIExpression(), !14856)
    #dbg_value(i64 %i.vv, !14544, !DIExpression(), !14857)
    #dbg_value(ptr %0, !14540, !DIExpression(), !14858)
    #dbg_value(ptr %0, !14564, !DIExpression(), !14860)
    #dbg_value(ptr %0, !14568, !DIExpression(), !14863)
    #dbg_value(ptr %0, !14572, !DIExpression(), !14866)
  %4 = load i64, ptr %i.un, align 8, !dbg !15552, !noundef !1394
    #dbg_value(ptr poison, !14532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14854)
    #dbg_value(ptr poison, !14543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14857)
    #dbg_value(i64 %4, !14532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14854)
    #dbg_value(i64 %4, !14543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14857)
  %i.vw = icmp ult i64 %i.vv, %4, !dbg !15553
  br i1 %i.vw, label %bb.ib, label %bb.id, !dbg !15553

bb.ib:                                            ; preds = %bb.ia
  %i.vx = load ptr, ptr %i.vd, align 8, !dbg !15554, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.vx, !14532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14854)
    #dbg_value(ptr %i.vx, !14543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14857)
  %i.vy = getelementptr inbounds nuw [56 x i8], ptr %i.vx, i64 %i.vv, !dbg !15555 ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 8, !dbg !15556, !range !3235, !noundef !1394
  %.off.1 = add nsw i8 %i.vz, -27, !dbg !15557
  %switch.1 = icmp ult i8 %.off.1, 2, !dbg !15557
  br i1 %switch.1, label %bb.ic, label %bb.id, !dbg !15557

bb.ic:                                            ; preds = %bb.ib
  %.sroa.059.0.1 = getelementptr inbounds nuw i8, ptr %i.vy, i64 8, !dbg !14855
    #dbg_value(ptr %.sroa.059.0.1, !13247, !DIExpression(), !14873)
  store i64 %i.uo, ptr %.sroa.059.0.1, align 8, !dbg !15558
  br label %bb.id, !dbg !15559

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia
    #dbg_value(ptr %i.q, !14831, !DIExpression(), !13160)
    #dbg_value(i64 1, !14845, !DIExpression(), !13154)
    #dbg_value(ptr %i.q, !14825, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13161)
    #dbg_value(ptr poison, !14826, !DIExpression(), !13162)
  %i.wa = icmp eq ptr %i.vu, %i.vb, !dbg !15547
  br i1 %i.wa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, label %.lr.ph.new, !dbg !15548

bb.ie:                                            ; preds = %bb.hz
  %.sroa.059.0 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8, !dbg !14855
    #dbg_value(ptr %.sroa.059.0, !13247, !DIExpression(), !14873)
  store i64 %i.uo, ptr %.sroa.059.0, align 8, !dbg !15558
  br label %bb.ia, !dbg !15559

bb.if:                                            ; preds = %bb.hl
  %i.wb = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15564
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.wb)
          to label %bb.ig unwind label %bb.ih, !dbg !15565

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !15566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !dbg !15566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !15567
  %i.wc = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.wc, ptr noundef nonnull align 8 dereferenceable(48) %i.fx, i64 48, i1 false), !dbg !15567
  store i64 1, ptr %i.n, align 8, !dbg !15567
  %i.wd = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n), !dbg !15568 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !15562
  br label %bb.q, !dbg !15570

bb.ih:                                            ; preds = %bb.if, %bb.hl
  %.sroa.063.2.ph = phi i1 [ true, %bb.hl ], [ false, %bb.if ]
  %lpad.thr_comm1077 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #30
          to label %.thread1057 unwind label %bb.z, !dbg !15562

.thread1093:                                      ; preds = %bb.hm, %bb.hp, %bb.hq, %bb.hs
  %lpad.thr_comm1091 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1085, !dbg !15502

bb.ii:                                            ; preds = %bb.hh, %bb.hk
  %lpad.thr_comm.split-lp1066 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.p) #30
          to label %.thread1085 unwind label %bb.z, !dbg !15502

.thread1085:                                      ; preds = %bb.ii, %.thread1093, %.thread1057
  %.pn10621088 = phi { ptr, i32 } [ %lpad.thr_comm1077, %.thread1057 ], [ %lpad.thr_comm1091, %.thread1093 ], [ %lpad.thr_comm.split-lp1066, %bb.ii ]
  %i.we = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15502
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.we) #30
          to label %common.resume unwind label %bb.z, !dbg !15502
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15624 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !16777, !DIExpression(), !15645)
    #dbg_value(ptr poison, !16802, !DIExpression(), !15648)
    #dbg_value(ptr poison, !16804, !DIExpression(), !15651)
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 3 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [160 x i8], align 8               ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [56 x i8], align 8                ; 4 uses
  %i.u = alloca [56 x i8], align 8                ; 3 uses
  %i.v = alloca [56 x i8], align 8                ; 9 uses
  %i.w = alloca [56 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %i.y = alloca [112 x i8], align 8               ; 3 uses
    #dbg_value(ptr poison, !16808, !DIExpression(), !16816)
    #dbg_value(ptr poison, !16837, !DIExpression(), !16844)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16850)
    #dbg_value(ptr poison, !16851, !DIExpression(), !16856)
    #dbg_value(ptr poison, !16895, !DIExpression(), !16899)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16902)
    #dbg_value(ptr poison, !16851, !DIExpression(), !16906)
    #dbg_value(ptr poison, !16895, !DIExpression(), !16909)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16912)
    #dbg_value(ptr poison, !16851, !DIExpression(), !16916)
    #dbg_value(ptr poison, !16895, !DIExpression(), !16919)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16922)
    #dbg_value(ptr poison, !16851, !DIExpression(), !16926)
    #dbg_value(ptr poison, !16895, !DIExpression(), !16929)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16932)
    #dbg_value(ptr poison, !16851, !DIExpression(), !16936)
    #dbg_value(ptr poison, !16895, !DIExpression(), !16939)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16942)
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = alloca [40 x i8], align 8               ; 9 uses
  %i.ab = alloca [112 x i8], align 8              ; 3 uses
    #dbg_value(ptr poison, !16808, !DIExpression(), !16946)
    #dbg_value(ptr poison, !16837, !DIExpression(), !16949)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16952)
    #dbg_value(ptr poison, !16851, !DIExpression(), !16955)
    #dbg_value(ptr poison, !16895, !DIExpression(), !16957)
    #dbg_value(ptr poison, !16845, !DIExpression(), !16959)
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [56 x i8], align 8               ; 10 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [112 x i8], align 8              ; 6 uses
  %i.ah = alloca [64 x i8], align 8               ; 11 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [56 x i8], align 8               ; 6 uses
  %i.al = alloca [160 x i8], align 8              ; 5 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [48 x i8], align 8               ; 11 uses
  %i.ap = alloca [160 x i8], align 8              ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [32 x i8], align 8               ; 5 uses
  %i.at = alloca [160 x i8], align 8              ; 5 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 5 uses
  %i.ax = alloca [112 x i8], align 8              ; 13 uses
  %i.ay = alloca [56 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 5 uses
  %i.ba = alloca [56 x i8], align 8               ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [160 x i8], align 8              ; 5 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 5 uses
  %i.bg = alloca [48 x i8], align 8               ; 5 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [32 x i8], align 8               ; 4 uses
  %i.bj = alloca [32 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 11 uses
  %i.bl = alloca [160 x i8], align 8              ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [32 x i8], align 8               ; 5 uses
  %i.bp = alloca [48 x i8], align 8               ; 5 uses
  %i.bq = alloca [32 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [32 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 4 uses
  %i.bv = alloca [48 x i8], align 8               ; 10 uses
  %i.bw = alloca [32 x i8], align 8               ; 5 uses
  %i.bx = alloca [160 x i8], align 8              ; 17 uses
  %i.by = alloca [80 x i8], align 8               ; 8 uses
  %i.bz = alloca [56 x i8], align 8               ; 10 uses
  %i.ca = alloca [32 x i8], align 8               ; 5 uses
  %i.cb = alloca [24 x i8], align 8               ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [32 x i8], align 8               ; 3 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [56 x i8], align 8               ; 10 uses
  %i.cg = alloca [32 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 5 uses
  %i.ci = alloca [112 x i8], align 8              ; 6 uses
  %i.cj = alloca [64 x i8], align 8               ; 11 uses
  %i.ck = alloca [32 x i8], align 8               ; 8 uses
  %i.cl = alloca [32 x i8], align 8               ; 4 uses
  %i.cm = alloca [56 x i8], align 8               ; 6 uses
  %i.cn = alloca [160 x i8], align 8              ; 5 uses
  %i.co = alloca [32 x i8], align 8               ; 8 uses
  %i.cp = alloca [32 x i8], align 8               ; 4 uses
  %i.cq = alloca [80 x i8], align 8               ; 15 uses
  %i.cr = alloca [56 x i8], align 8               ; 4 uses
  %i.cs = alloca [32 x i8], align 8               ; 3 uses
  %i.ct = alloca [24 x i8], align 8               ; 4 uses
  %i.cu = alloca [96 x i8], align 8               ; 6 uses
  %i.cv = alloca [56 x i8], align 8               ; 4 uses
  %i.cw = alloca [32 x i8], align 8               ; 4 uses
  %i.cx = alloca [56 x i8], align 8               ; 4 uses
  %i.cy = alloca [32 x i8], align 8               ; 5 uses
    #dbg_value(ptr %0, !16705, !DIExpression(), !16960)
    #dbg_declare(ptr %1, !16706, !DIExpression(), !16961)
    #dbg_declare(ptr poison, !16707, !DIExpression(), !16962)
    #dbg_declare(ptr poison, !16708, !DIExpression(), !16963)
    #dbg_declare(ptr %i.cu, !16709, !DIExpression(), !16964)
    #dbg_declare(ptr %i.ct, !16965, !DIExpression(), !16969)
    #dbg_declare(ptr %i.ct, !16970, !DIExpression(), !16974)
    #dbg_declare(ptr %i.cs, !16711, !DIExpression(), !16975)
    #dbg_declare(ptr %i.cq, !16712, !DIExpression(), !16976)
    #dbg_declare(ptr %i.co, !16713, !DIExpression(), !16977)
    #dbg_declare(ptr %i.cn, !16714, !DIExpression(), !16978)
    #dbg_declare(ptr %i.cm, !16715, !DIExpression(), !16979)
    #dbg_declare(ptr %i.ck, !16716, !DIExpression(), !16980)
    #dbg_declare(ptr %i.cj, !16717, !DIExpression(), !16981)
    #dbg_declare(ptr %i.ci, !16719, !DIExpression(), !16982)
    #dbg_declare(ptr %i.ch, !16983, !DIExpression(), !16987)
    #dbg_declare(ptr %i.ce, !16965, !DIExpression(), !16989)
    #dbg_declare(ptr %i.ce, !16970, !DIExpression(), !16992)
    #dbg_declare(ptr %i.cd, !16722, !DIExpression(), !16993)
    #dbg_declare(ptr %i.cc, !16724, !DIExpression(), !16994)
    #dbg_declare(ptr %i.cb, !16983, !DIExpression(), !16996)
    #dbg_declare(ptr %i.by, !16726, !DIExpression(), !16997)
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!15352 = !DILocation(line: 301, column: 17, scope: !12370)
!15353 = !DILocation(line: 2902, column: 12, scope: !12531, inlinedAt: !13703)
!15354 = !DILocation(line: 2905, column: 13, scope: !12531, inlinedAt: !13703)
!15355 = !DILocation(line: 632, column: 49, scope: !12429, inlinedAt: !13706)
!15356 = !DILocation(line: 2908, column: 46, scope: !12531, inlinedAt: !13703)
!15357 = !DILocation(line: 210, column: 9, scope: !12689, inlinedAt: !14615)
!15358 = !DILocation(line: 627, column: 9, scope: !12752, inlinedAt: !14622)
!15359 = !DILocation(line: 3141, column: 37, scope: !12944, inlinedAt: !14610)
!15360 = !DILocation(line: 3141, column: 18, scope: !12944, inlinedAt: !14610)
!15361 = !DILocation(line: 872, column: 18, scope: !12945, inlinedAt: !14626)
!15362 = !DILocation(line: 1758, column: 9, scope: !12946, inlinedAt: !14630)
!15363 = !DILocation(line: 848, column: 1, scope: !853, inlinedAt: !12949)
!15364 = !DILocation(line: 848, column: 1, scope: !849, inlinedAt: !12957)
!15365 = !DILocation(line: 301, column: 42, scope: !12370)
!15366 = !DILocation(line: 302, column: 13, scope: !12419)
!15367 = !DILocation(line: 848, column: 1, scope: !849, inlinedAt: !12965)
!15368 = !DILocation(line: 333, column: 13, scope: !12368)
!15369 = !DILocation(line: 1013, column: 19, scope: !12492, inlinedAt: !13508)
!15370 = !DILocation(line: 1013, column: 29, scope: !12492, inlinedAt: !13508)
!15371 = !DILocation(line: 3073, column: 11, scope: !12503, inlinedAt: !13538)
!15372 = !DILocation(line: 0, scope: !12503, inlinedAt: !13538)
!15373 = !DILocation(line: 3073, column: 5, scope: !12503, inlinedAt: !13538)
!15374 = !DILocation(line: 1013, column: 45, scope: !12492, inlinedAt: !13508)
!15375 = !DILocation(line: 308, column: 55, scope: !12367)
!15376 = !DILocation(line: 2741, column: 47, scope: !815, inlinedAt: !12967)
!15377 = !DILocation(line: 3075, column: 34, scope: !12503, inlinedAt: !13538)
!15378 = !DILocation(line: 576, column: 63, scope: !812, inlinedAt: !12969)
!15379 = !DILocation(line: 576, column: 37, scope: !812, inlinedAt: !12969)
!15380 = !DILocation(line: 576, column: 80, scope: !812, inlinedAt: !12969)
!15381 = !DILocation(line: 2742, column: 61, scope: !815, inlinedAt: !12967)
!15382 = !DILocation(line: 1000, column: 22, scope: !12806, inlinedAt: !14638)
!15383 = !DILocation(line: 1033, column: 19, scope: !819, inlinedAt: !12974)
!15384 = !DILocation(line: 632, column: 49, scope: !822, inlinedAt: !12982)
!15385 = !DILocation(line: 1036, column: 12, scope: !818, inlinedAt: !12974)
!15386 = !DILocation(line: 1037, column: 22, scope: !818, inlinedAt: !12974)
!15387 = !DILocation(line: 627, column: 9, scope: !826, inlinedAt: !12991)
!15388 = !DILocation(line: 971, column: 18, scope: !824, inlinedAt: !12985)
!15389 = !DILocation(line: 1966, column: 41, scope: !820, inlinedAt: !12975)
!15390 = !DILocation(line: 1043, column: 13, scope: !817, inlinedAt: !12974)
!15391 = !DILocation(line: 312, column: 21, scope: !12367)
!15392 = !DILocation(line: 313, column: 36, scope: !12367)
!15393 = !DILocation(line: 313, column: 58, scope: !12367)
!15394 = !DILocation(line: 313, column: 32, scope: !12367)
!15395 = !DILocation(line: 320, column: 42, scope: !12367)
!15396 = !DILocation(line: 320, column: 65, scope: !12367)
!15397 = !DILocation(line: 320, column: 22, scope: !12367)
!15398 = !DILocation(line: 313, column: 62, scope: !12367)
!15399 = !DILocation(line: 3141, column: 37, scope: !12439, inlinedAt: !13322)
!15400 = !DILocation(line: 3141, column: 18, scope: !12439, inlinedAt: !13322)
!15401 = !DILocation(line: 971, column: 18, scope: !12994, inlinedAt: !14650)
!15402 = !DILocation(line: 49, column: 26, scope: !12632, inlinedAt: !14655)
!15403 = !DILocation(line: 1663, column: 9, scope: !854, inlinedAt: !12996)
!15404 = !DILocation(line: 279, column: 16, scope: !861, inlinedAt: !12995)
!15405 = !DILocation(line: 848, column: 1, scope: !862, inlinedAt: !12997)
!15406 = !DILocation(line: 627, column: 28, scope: !864, inlinedAt: !13005)
!15407 = !DILocation(line: 284, column: 13, scope: !859, inlinedAt: !12995)
!15408 = !DILocation(line: 1758, column: 9, scope: !865, inlinedAt: !13008)
!15409 = !DILocation(line: 314, column: 25, scope: !12366)
!15410 = !DILocation(line: 315, column: 30, scope: !12365)
!15411 = !DILocation(line: 848, column: 1, scope: !862, inlinedAt: !13009)
!15412 = !DILocation(line: 317, column: 79, scope: !12367)
!15413 = !DILocation(line: 316, column: 21, scope: !12367)
!15414 = !DILocation(line: 317, column: 36, scope: !12367)
!15415 = !DILocation(line: 317, column: 61, scope: !12367)
!15416 = !DILocation(line: 317, column: 32, scope: !12367)
!15417 = !DILocation(line: 312, column: 17, scope: !12367)
!15418 = !DILocation(line: 316, column: 21, scope: !12366)
!15419 = !DILocation(line: 30, column: 18, scope: !861, inlinedAt: !12995)
!15420 = !DILocation(line: 320, column: 69, scope: !12367)
!15421 = !DILocation(line: 322, column: 20, scope: !12367)
!15422 = !DILocation(line: 329, column: 25, scope: !12367)
!15423 = !DILocation(line: 329, column: 58, scope: !12367)
!15424 = !DILocation(line: 330, column: 25, scope: !12367)
!15425 = !DILocation(line: 328, column: 32, scope: !12367)
!15426 = !DILocation(line: 324, column: 25, scope: !12367)
!15427 = !DILocation(line: 324, column: 60, scope: !12367)
!15428 = !DILocation(line: 325, column: 25, scope: !12367)
!15429 = !DILocation(line: 323, column: 32, scope: !12367)
!15430 = !DILocation(line: 331, column: 21, scope: !12367)
!15431 = !DILocation(line: 322, column: 17, scope: !12367)
!15432 = !DILocation(line: 326, column: 21, scope: !12367)
!15433 = !DILocation(line: 333, column: 13, scope: !12419)
!15434 = !DILocation(line: 848, column: 1, scope: !406, inlinedAt: !13015)
!15435 = !DILocation(line: 647, column: 12, scope: !358, inlinedAt: !13027)
!15436 = !DILocation(line: 1431, column: 17, scope: !394, inlinedAt: !13029)
!15437 = !DILocation(line: 178, column: 14, scope: !361, inlinedAt: !13037)
!15438 = !DILocation(line: 318, column: 9, scope: !362, inlinedAt: !13036)
!15439 = !DILocation(line: 647, column: 12, scope: !358, inlinedAt: !13048)
!15440 = !DILocation(line: 1431, column: 17, scope: !394, inlinedAt: !13050)
!15441 = !DILocation(line: 178, column: 14, scope: !361, inlinedAt: !13058)
!15442 = !DILocation(line: 318, column: 9, scope: !362, inlinedAt: !13057)
!15443 = !DILocation(line: 338, column: 28, scope: !12363)
!15444 = !DILocation(line: 338, column: 38, scope: !12363)
!15445 = !DILocation(line: 1013, column: 19, scope: !12492, inlinedAt: !13513)
!15446 = !DILocation(line: 1013, column: 29, scope: !12492, inlinedAt: !13513)
!15447 = !DILocation(line: 3073, column: 11, scope: !12503, inlinedAt: !13541)
!15448 = !DILocation(line: 0, scope: !12503, inlinedAt: !13541)
!15449 = !DILocation(line: 3073, column: 5, scope: !12503, inlinedAt: !13541)
!15450 = !DILocation(line: 1013, column: 45, scope: !12492, inlinedAt: !13513)
!15451 = !DILocation(line: 338, column: 45, scope: !12363)
!15452 = !DILocation(line: 2741, column: 47, scope: !815, inlinedAt: !13063)
!15453 = !DILocation(line: 3075, column: 34, scope: !12503, inlinedAt: !13541)
!15454 = !DILocation(line: 576, column: 63, scope: !812, inlinedAt: !13065)
!15455 = !DILocation(line: 576, column: 37, scope: !812, inlinedAt: !13065)
!15456 = !DILocation(line: 576, column: 80, scope: !812, inlinedAt: !13065)
!15457 = !DILocation(line: 2742, column: 61, scope: !815, inlinedAt: !13063)
!15458 = !DILocation(line: 1000, column: 22, scope: !12806, inlinedAt: !14671)
!15459 = !DILocation(line: 1033, column: 19, scope: !819, inlinedAt: !13070)
!15460 = !DILocation(line: 632, column: 49, scope: !822, inlinedAt: !13078)
!15461 = !DILocation(line: 1036, column: 12, scope: !818, inlinedAt: !13070)
!15462 = !DILocation(line: 1037, column: 22, scope: !818, inlinedAt: !13070)
!15463 = !DILocation(line: 627, column: 9, scope: !826, inlinedAt: !13087)
!15464 = !DILocation(line: 971, column: 18, scope: !824, inlinedAt: !13081)
!15465 = !DILocation(line: 1966, column: 41, scope: !820, inlinedAt: !13071)
!15466 = !DILocation(line: 1043, column: 13, scope: !817, inlinedAt: !13070)
!15467 = !DILocation(line: 342, column: 26, scope: !12363)
!15468 = !DILocation(line: 342, column: 52, scope: !12363)
!15469 = !DILocation(line: 342, column: 64, scope: !12363)
!15470 = !DILocation(line: 342, column: 22, scope: !12363)
!15471 = !DILocation(line: 342, column: 74, scope: !12363)
!15472 = !DILocation(line: 343, column: 13, scope: !12364)
!15473 = !DILocation(line: 343, column: 13, scope: !12419)
!15474 = !DILocation(line: 349, column: 60, scope: !12361)
!15475 = !DILocation(line: 349, column: 83, scope: !12361)
!15476 = !DILocation(line: 349, column: 56, scope: !12361)
!15477 = !DILocation(line: 349, column: 93, scope: !12361)
!15478 = !DILocation(line: 348, column: 58, scope: !12361)
!15479 = !DILocation(line: 348, column: 76, scope: !12361)
!15480 = !DILocation(line: 348, column: 54, scope: !12361)
!15481 = !DILocation(line: 348, column: 86, scope: !12361)
!15482 = !DILocation(line: 356, column: 44, scope: !12359)
!15483 = !DILocation(line: 357, column: 44, scope: !12359)
!15484 = !DILocation(line: 358, column: 45, scope: !12359)
!15485 = !DILocation(line: 359, column: 46, scope: !12359)
!15486 = !DILocation(line: 360, column: 49, scope: !12359)
!15487 = !DILocation(line: 361, column: 46, scope: !12359)
!15488 = !DILocation(line: 362, column: 49, scope: !12359)
!15489 = !DILocation(line: 363, column: 52, scope: !12359)
!15490 = !DILocation(line: 364, column: 56, scope: !12359)
!15491 = !DILocation(line: 365, column: 59, scope: !12359)
!15492 = !DILocation(line: 366, column: 46, scope: !12359)
!15493 = !DILocation(line: 367, column: 49, scope: !12359)
!15494 = !DILocation(line: 371, column: 25, scope: !12359)
!15495 = !DILocation(line: 372, column: 35, scope: !12359)
!15496 = !DILocation(line: 1000, column: 22, scope: !12493, inlinedAt: !13517)
!15497 = !DILocation(line: 368, column: 50, scope: !12359)
!15498 = !DILocation(line: 369, column: 43, scope: !12359)
!15499 = !DILocation(line: 409, column: 66, scope: !12359)
!15500 = !DILocation(line: 0, scope: !12359)
!15501 = !DILocation(line: 414, column: 22, scope: !12358)
!15502 = !DILocation(line: 417, column: 13, scope: !12360)
!15503 = !DILocation(line: 372, column: 71, scope: !12359)
!15504 = !DILocation(line: 373, column: 30, scope: !12359)
!15505 = !DILocation(line: 627, column: 9, scope: !13094, inlinedAt: !14703)
!15506 = !DILocation(line: 1912, column: 92, scope: !13092, inlinedAt: !14691)
!15507 = !DILocation(line: 307, column: 16, scope: !13101, inlinedAt: !14718)
!15508 = !DILocation(line: 307, column: 21, scope: !13101, inlinedAt: !14718)
!15509 = !DILocation(line: 374, column: 32, scope: !12357)
!15510 = !DILocation(line: 386, column: 29, scope: !12359)
!15511 = !DILocation(line: 378, column: 33, scope: !12357)
!15512 = !DILocation(line: 27, column: 30, scope: !12534, inlinedAt: !13724)
!15513 = !DILocation(line: 383, column: 33, scope: !12357)
!15514 = !DILocation(line: 377, column: 51, scope: !12357)
!15515 = !DILocation(line: 384, column: 29, scope: !12357)
!15516 = !DILocation(line: 377, column: 40, scope: !12357)
!15517 = !DILocation(line: 1000, column: 22, scope: !13103, inlinedAt: !14727)
!15518 = !DILocation(line: 1033, column: 19, scope: !13108, inlinedAt: !13110)
!15519 = !DILocation(line: 632, column: 49, scope: !13114, inlinedAt: !13117)
!15520 = !DILocation(line: 1036, column: 12, scope: !13109, inlinedAt: !13110)
!15521 = !DILocation(line: 1037, column: 22, scope: !13109, inlinedAt: !13110)
!15522 = !DILocation(line: 627, column: 9, scope: !13124, inlinedAt: !13129)
!15523 = !DILocation(line: 971, column: 18, scope: !13119, inlinedAt: !13120)
!15524 = !DILocation(line: 1966, column: 41, scope: !13130, inlinedAt: !13131)
!15525 = !DILocation(line: 1043, column: 13, scope: !13107, inlinedAt: !13110)
!15526 = !DILocation(line: 388, column: 43, scope: !12359)
!15527 = !DILocation(line: 388, column: 30, scope: !12359)
!15528 = !DILocation(line: 3136, column: 19, scope: !12878, inlinedAt: !14776)
!15529 = !DILocation(line: 3141, column: 37, scope: !12878, inlinedAt: !14776)
!15530 = !DILocation(line: 3141, column: 18, scope: !12878, inlinedAt: !14776)
!15531 = !DILocation(line: 2902, column: 12, scope: !12537, inlinedAt: !13730)
!15532 = !DILocation(line: 2905, column: 13, scope: !12537, inlinedAt: !13730)
!15533 = !DILocation(line: 632, column: 49, scope: !12429, inlinedAt: !13733)
!15534 = !DILocation(line: 2908, column: 46, scope: !12537, inlinedAt: !13730)
!15535 = !DILocation(line: 210, column: 9, scope: !12689, inlinedAt: !14792)
!15536 = !DILocation(line: 627, column: 9, scope: !13094, inlinedAt: !14799)
!15537 = !DILocation(line: 3141, column: 37, scope: !13135, inlinedAt: !14787)
!15538 = !DILocation(line: 3141, column: 18, scope: !13135, inlinedAt: !14787)
!15539 = !DILocation(line: 872, column: 18, scope: !13136, inlinedAt: !14803)
!15540 = !DILocation(line: 1758, column: 9, scope: !13137, inlinedAt: !14807)
!15541 = !DILocation(line: 391, column: 29, scope: !12355)
!15542 = !DILocation(line: 390, column: 32, scope: !12355)
!15543 = !DILocation(line: 403, column: 29, scope: !12356)
!15544 = !DILocation(line: 3141, column: 37, scope: !12420, inlinedAt: !13277)
!15545 = !DILocation(line: 3141, column: 18, scope: !12420, inlinedAt: !13277)
!15546 = !DILocation(line: 971, column: 18, scope: !13138, inlinedAt: !14816)
!15547 = !DILocation(line: 1663, column: 9, scope: !13139, inlinedAt: !13144)
!15548 = !DILocation(line: 279, column: 16, scope: !13142, inlinedAt: !13143)
!15549 = !DILocation(line: 627, column: 28, scope: !13152, inlinedAt: !13153)
!15550 = !DILocation(line: 284, column: 13, scope: !13140, inlinedAt: !13143)
!15551 = !DILocation(line: 1758, column: 9, scope: !13155, inlinedAt: !13156)
!15552 = !DILocation(line: 1912, column: 92, scope: !12939, inlinedAt: !14862)
!15553 = !DILocation(line: 195, column: 12, scope: !12935, inlinedAt: !14853)
!15554 = !DILocation(line: 627, column: 9, scope: !12941, inlinedAt: !14872)
!15555 = !DILocation(line: 197, column: 27, scope: !12935, inlinedAt: !14853)
!15556 = !DILocation(line: 394, column: 39, scope: !12351)
!15557 = !DILocation(line: 394, column: 33, scope: !12351)
!15558 = !DILocation(line: 397, column: 41, scope: !12350)
!15559 = !DILocation(line: 398, column: 37, scope: !12351)
!15560 = !DILocation(line: 848, column: 1, scope: !13157, inlinedAt: !13158)
!15561 = !DILocation(line: 401, column: 29, scope: !12355)
!15562 = !DILocation(line: 417, column: 13, scope: !12359)
!15563 = !DILocation(line: 419, column: 5, scope: !12419)
!15564 = !DILocation(line: 415, column: 35, scope: !12358)
!15565 = !DILocation(line: 415, column: 22, scope: !12358)
!15566 = !DILocation(line: 416, column: 32, scope: !12358)
!15567 = !DILocation(line: 416, column: 39, scope: !12358)
!15568 = !DILocation(line: 416, column: 28, scope: !12358)
!15569 = !DILocation(line: 416, column: 49, scope: !12358)
!15570 = !DILocation(line: 417, column: 13, scope: !12419)
!15571 = distinct !DILexicalBlock(scope: !15572, file: !3971, line: 627, column: 25)
!15572 = distinct !DILexicalBlock(scope: !15573, file: !3971, line: 626, column: 57)
!15573 = distinct !DILexicalBlock(scope: !15574, file: !3971, line: 625, column: 17)
!15574 = distinct !DILexicalBlock(scope: !15575, file: !3971, line: 625, column: 17)
!15575 = distinct !DILexicalBlock(scope: !15578, file: !3971, line: 623, column: 17)
!15576 = distinct !DILexicalBlock(scope: !15577, file: !3971, line: 619, column: 17)
!15577 = distinct !DILexicalBlock(scope: !15578, file: !3971, line: 619, column: 17)
!15578 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 617, column: 13)
!15579 = distinct !DILexicalBlock(scope: !15580, file: !3971, line: 610, column: 21)
!15580 = distinct !DILexicalBlock(scope: !15581, file: !3971, line: 610, column: 21)
!15581 = distinct !DILexicalBlock(scope: !15584, file: !3971, line: 606, column: 21)
!15582 = distinct !DILexicalBlock(scope: !15583, file: !3971, line: 601, column: 17)
!15583 = distinct !DILexicalBlock(scope: !15584, file: !3971, line: 601, column: 17)
!15584 = distinct !DILexicalBlock(scope: !15585, file: !3971, line: 598, column: 17)
!15585 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 595, column: 13)
!15586 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 591, column: 85)
!15587 = distinct !DILexicalBlock(scope: !15588, file: !3971, line: 581, column: 21)
!15588 = distinct !DILexicalBlock(scope: !15589, file: !3971, line: 581, column: 21)
!15589 = distinct !DILexicalBlock(scope: !15593, file: !3971, line: 579, column: 21)
!15590 = distinct !DILexicalBlock(scope: !15591, file: !3971, line: 566, column: 25)
!15591 = distinct !DILexicalBlock(scope: !15592, file: !3971, line: 557, column: 25)
!15592 = distinct !DILexicalBlock(scope: !15593, file: !3971, line: 555, column: 21)
!15593 = distinct !DILexicalBlock(scope: !15596, file: !3971, line: 552, column: 17)
!15594 = distinct !DILexicalBlock(scope: !15595, file: !3971, line: 548, column: 17)
!15595 = distinct !DILexicalBlock(scope: !15596, file: !3971, line: 548, column: 17)
!15596 = distinct !DILexicalBlock(scope: !15598, file: !3971, line: 545, column: 17)
!15597 = distinct !DILexicalBlock(scope: !15598, file: !3971, line: 539, column: 52)
!15598 = distinct !DILexicalBlock(scope: !15599, file: !3971, line: 536, column: 17)
!15599 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 531, column: 13)
!15600 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 528, column: 13)
!15601 = distinct !DILexicalBlock(scope: !15602, file: !3971, line: 521, column: 17)
!15602 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 520, column: 13)
!15603 = distinct !DILexicalBlock(scope: !15604, file: !3971, line: 513, column: 17)
!15604 = distinct !DILexicalBlock(scope: !15611, file: !3971, line: 507, column: 17)
!15605 = distinct !DILexicalBlock(scope: !15606, file: !3971, line: 497, column: 25)
!15606 = distinct !DILexicalBlock(scope: !15607, file: !3971, line: 496, column: 57)
!15607 = distinct !DILexicalBlock(scope: !15610, file: !3971, line: 495, column: 17)
!15608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<tera::parsing::ast::Expression>", scope: !1432, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !16767, templateParams: !1612, identifier: "d4b4108b58304794debac9b3e174ec0b")
!15609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntoIter<tera::parsing::ast::Expression, alloc::alloc::Global>", scope: !3479, file: !1134, size: 256, align: 64, flags: DIFlagPublic, elements: !16765, templateParams: !1724, identifier: "f9a8dfbee0486b7b4d4d97c95c89f8ac")
!15610 = distinct !DILexicalBlock(scope: !15611, file: !3971, line: 495, column: 17)
!15611 = distinct !DILexicalBlock(scope: !15614, file: !3971, line: 493, column: 17)
!15612 = distinct !DILexicalBlock(scope: !15613, file: !3971, line: 489, column: 17)
!15613 = distinct !DILexicalBlock(scope: !15614, file: !3971, line: 489, column: 17)
!15614 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 487, column: 13)
!15615 = distinct !DILexicalBlock(scope: !15620, file: !3971, line: 480, column: 17)
!15616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !15619, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !16773, templateParams: !16775, identifier: "d44bea8c03c07ca929384049f5564964")
!15617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !15619, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !1394, templateParams: !16775, identifier: "55b259d4407d8426bc5e7afd626937ab")
!15618 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !15619, file: !1134, size: 64, align: 64, elements: !16771, templateParams: !1394, identifier: "e0652780e80fc92ec1b0c12d61a27fe0", discriminator: !16776)
!15619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>>", scope: !1571, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !16768, templateParams: !1394, identifier: "4f328e67d2773afcb152bbc37ecb6db6")
!15620 = distinct !DILexicalBlock(scope: !15621, file: !3971, line: 474, column: 17)
!15621 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 472, column: 13)
!15622 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 468, column: 13)
!15623 = distinct !DILexicalBlock(scope: !15624, file: !3971, line: 465, column: 13)
!15624 = distinct !DISubprogram(name: "compile_node", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_node", scope: !753, file: !3971, line: 463, type: !16703, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !16704, retainedNodes: !16757)
!15625 = distinct !DISubprogram(name: "capacity<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE8capacityBS_", scope: !97, file: !2606, line: 317, type: !4175, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4176, retainedNodes: !16778)
!15626 = distinct !DILexicalBlock(scope: !15632, file: !3498, line: 4077, column: 13)
!15627 = distinct !DISubprogram(name: "into_iter<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBL_", scope: !4172, file: !3498, line: 4065, type: !4178, scopeLine: 4065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, retainedNodes: !16786)
!15628 = distinct !DILexicalBlock(scope: !15627, file: !3498, line: 4066, column: 9)
!15629 = distinct !DILexicalBlock(scope: !15628, file: !3498, line: 4069, column: 13)
!15630 = distinct !DILexicalBlock(scope: !15629, file: !3498, line: 4070, column: 13)
!15631 = distinct !DILexicalBlock(scope: !15630, file: !3498, line: 4071, column: 13)
!15632 = distinct !DILexicalBlock(scope: !15631, file: !3498, line: 4072, column: 13)
!15633 = distinct !DILexicalBlock(scope: !15641, file: !3971, line: 433, column: 9)
!15634 = distinct !DILexicalBlock(scope: !15635, file: !3971, line: 429, column: 9)
!15635 = distinct !DILexicalBlock(scope: !15641, file: !3971, line: 429, column: 9)
!15636 = distinct !DISubprogram(name: "compile_block", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block", scope: !753, file: !3971, line: 421, type: !16788, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !16789, retainedNodes: !16801)
!15637 = distinct !DILexicalBlock(scope: !15636, file: !3971, line: 422, column: 9)
!15638 = distinct !DILexicalBlock(scope: !15637, file: !3971, line: 423, column: 9)
!15639 = distinct !DILexicalBlock(scope: !15638, file: !3971, line: 425, column: 9)
!15640 = distinct !DILexicalBlock(scope: !15639, file: !3971, line: 426, column: 9)
!15641 = distinct !DILexicalBlock(scope: !15640, file: !3971, line: 427, column: 9)
!15642 = distinct !DILocation(line: 529, column: 22, scope: !15600)
!15643 = distinct !DILocation(line: 429, column: 21, scope: !15641, inlinedAt: !15642)
!15644 = distinct !DILocation(line: 4077, column: 30, scope: !15632, inlinedAt: !15643)
!15645 = distinct !DILocation(line: 317, column: 34, scope: !15625, inlinedAt: !15644)
!15646 = distinct !DISubprogram(name: "len<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE3lenBK_", scope: !98, file: !3498, line: 3135, type: !4184, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4185, retainedNodes: !16803)
!15647 = distinct !DILocation(line: 4075, column: 30, scope: !15631, inlinedAt: !15643)
!15648 = distinct !DILocation(line: 3135, column: 22, scope: !15646, inlinedAt: !15647)
!15649 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner8capacityCs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 631, type: !4070, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2121, declaration: !4071, retainedNodes: !16806)
!15650 = distinct !DILocation(line: 318, column: 20, scope: !15625, inlinedAt: !15644)
!15651 = distinct !DILocation(line: 631, column: 23, scope: !15649, inlinedAt: !15650)
!15652 = distinct !DISubprogram(name: "capacity<tera::parsing::ast::Expression, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE8capacityBS_", scope: !69, file: !2606, line: 317, type: !16810, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1724, declaration: !16811, retainedNodes: !16812)
!15653 = distinct !DILexicalBlock(scope: !15666, file: !3498, line: 4077, column: 13)
!15654 = distinct !DILexicalBlock(scope: !15655, file: !3498, line: 4077, column: 13)
!15655 = distinct !DILexicalBlock(scope: !15656, file: !3498, line: 4072, column: 13)
!15656 = distinct !DILexicalBlock(scope: !15657, file: !3498, line: 4071, column: 13)
!15657 = distinct !DILexicalBlock(scope: !15658, file: !3498, line: 4070, column: 13)
!15658 = distinct !DILexicalBlock(scope: !15660, file: !3498, line: 4069, column: 13)
!15659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<alloc::vec::Vec<tera::parsing::ast::Expression, alloc::alloc::Global>>", scope: !1566, file: !1134, size: 192, align: 64, flags: DIFlagPublic, elements: !16835, templateParams: !2849, identifier: "4fdbaf2da31721a4c48cc75de7e8c785")
!15660 = distinct !DILexicalBlock(scope: !15661, file: !3498, line: 4066, column: 9)
!15661 = distinct !DISubprogram(name: "into_iter<tera::parsing::ast::Expression, alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBL_", scope: !4172, file: !3498, line: 4065, type: !16818, scopeLine: 4065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1724, retainedNodes: !16833)
!15662 = distinct !DILexicalBlock(scope: !15661, file: !3498, line: 4066, column: 9)
!15663 = distinct !DILexicalBlock(scope: !15662, file: !3498, line: 4069, column: 13)
!15664 = distinct !DILexicalBlock(scope: !15663, file: !3498, line: 4070, column: 13)
!15665 = distinct !DILexicalBlock(scope: !15664, file: !3498, line: 4071, column: 13)
!15666 = distinct !DILexicalBlock(scope: !15665, file: !3498, line: 4072, column: 13)
!15667 = distinct !DISubprogram(name: "len<tera::parsing::ast::Expression, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE3lenBK_", scope: !70, file: !3498, line: 3135, type: !16839, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1724, declaration: !16840, retainedNodes: !16841)
!15668 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner8capacityCs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 631, type: !4070, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2121, declaration: !4071, retainedNodes: !16847)
!15669 = distinct !DISubprogram(name: "capacity<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE8capacityBS_", scope: !97, file: !2606, line: 317, type: !4175, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4176, retainedNodes: !16852)
!15670 = distinct !DILexicalBlock(scope: !15706, file: !3498, line: 4077, column: 13)
!15671 = distinct !DILexicalBlock(scope: !15672, file: !3498, line: 4077, column: 13)
!15672 = distinct !DILexicalBlock(scope: !15673, file: !3498, line: 4072, column: 13)
!15673 = distinct !DILexicalBlock(scope: !15674, file: !3498, line: 4071, column: 13)
!15674 = distinct !DILexicalBlock(scope: !15675, file: !3498, line: 4070, column: 13)
!15675 = distinct !DILexicalBlock(scope: !15676, file: !3498, line: 4069, column: 13)
!15676 = distinct !DILexicalBlock(scope: !15701, file: !3498, line: 4066, column: 9)
!15677 = distinct !DILexicalBlock(scope: !15678, file: !3498, line: 4077, column: 13)
!15678 = distinct !DILexicalBlock(scope: !15679, file: !3498, line: 4072, column: 13)
!15679 = distinct !DILexicalBlock(scope: !15680, file: !3498, line: 4071, column: 13)
!15680 = distinct !DILexicalBlock(scope: !15681, file: !3498, line: 4070, column: 13)
!15681 = distinct !DILexicalBlock(scope: !15682, file: !3498, line: 4069, column: 13)
!15682 = distinct !DILexicalBlock(scope: !15701, file: !3498, line: 4066, column: 9)
!15683 = distinct !DILexicalBlock(scope: !15684, file: !3498, line: 4077, column: 13)
!15684 = distinct !DILexicalBlock(scope: !15685, file: !3498, line: 4072, column: 13)
!15685 = distinct !DILexicalBlock(scope: !15686, file: !3498, line: 4071, column: 13)
!15686 = distinct !DILexicalBlock(scope: !15687, file: !3498, line: 4070, column: 13)
!15687 = distinct !DILexicalBlock(scope: !15688, file: !3498, line: 4069, column: 13)
!15688 = distinct !DILexicalBlock(scope: !15701, file: !3498, line: 4066, column: 9)
!15689 = distinct !DILexicalBlock(scope: !15690, file: !3498, line: 4077, column: 13)
!15690 = distinct !DILexicalBlock(scope: !15691, file: !3498, line: 4072, column: 13)
!15691 = distinct !DILexicalBlock(scope: !15692, file: !3498, line: 4071, column: 13)
!15692 = distinct !DILexicalBlock(scope: !15693, file: !3498, line: 4070, column: 13)
!15693 = distinct !DILexicalBlock(scope: !15694, file: !3498, line: 4069, column: 13)
!15694 = distinct !DILexicalBlock(scope: !15701, file: !3498, line: 4066, column: 9)
!15695 = distinct !DILexicalBlock(scope: !15696, file: !3498, line: 4077, column: 13)
!15696 = distinct !DILexicalBlock(scope: !15697, file: !3498, line: 4072, column: 13)
!15697 = distinct !DILexicalBlock(scope: !15698, file: !3498, line: 4071, column: 13)
!15698 = distinct !DILexicalBlock(scope: !15699, file: !3498, line: 4070, column: 13)
!15699 = distinct !DILexicalBlock(scope: !15700, file: !3498, line: 4069, column: 13)
!15700 = distinct !DILexicalBlock(scope: !15701, file: !3498, line: 4066, column: 9)
!15701 = distinct !DISubprogram(name: "into_iter<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBL_", scope: !4172, file: !3498, line: 4065, type: !4178, scopeLine: 4065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, retainedNodes: !16894)
!15702 = distinct !DILexicalBlock(scope: !15701, file: !3498, line: 4066, column: 9)
!15703 = distinct !DILexicalBlock(scope: !15702, file: !3498, line: 4069, column: 13)
!15704 = distinct !DILexicalBlock(scope: !15703, file: !3498, line: 4070, column: 13)
!15705 = distinct !DILexicalBlock(scope: !15704, file: !3498, line: 4071, column: 13)
!15706 = distinct !DILexicalBlock(scope: !15705, file: !3498, line: 4072, column: 13)
!15707 = distinct !DISubprogram(name: "len<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE3lenBK_", scope: !98, file: !3498, line: 3135, type: !4184, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4185, retainedNodes: !16896)
!15708 = distinct !DISubprogram(name: "insert<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB5_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringE6insertCs5yXxDE1DkoT_4tera", scope: !737, file: !4193, line: 1034, type: !4196, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4015, declaration: !4197, retainedNodes: !16967)
!15709 = distinct !DISubprogram(name: "insert<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsbDKHzkXHCUM_9hashbrown3setINtB5_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs5yXxDE1DkoT_4tera", scope: !736, file: !4198, line: 1074, type: !4201, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4015, declaration: !4202, retainedNodes: !16972)
!15710 = distinct !DISubprogram(name: "entry<alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE5entryB20_", scope: !742, file: !4203, line: 1012, type: !4206, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4032, declaration: !4235, retainedNodes: !16985)
!15711 = distinct !DISubprogram(name: "push<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB7_6string6StringEE4pushCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 999, type: !4241, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4242, retainedNodes: !17013)
!15712 = distinct !DISubprogram(name: "push<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE4pushBL_", scope: !414, file: !3498, line: 999, type: !4237, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4238, retainedNodes: !17018)
!15713 = distinct !DILexicalBlock(scope: !15719, file: !4203, line: 3075, column: 9)
!15714 = distinct !DILexicalBlock(scope: !15719, file: !4203, line: 3074, column: 9)
!15715 = distinct !DILexicalBlock(scope: !15719, file: !4203, line: 3075, column: 9)
!15716 = distinct !DILexicalBlock(scope: !15719, file: !4203, line: 3074, column: 9)
!15717 = distinct !DILexicalBlock(scope: !15719, file: !4203, line: 3075, column: 9)
!15718 = distinct !DILexicalBlock(scope: !15719, file: !4203, line: 3074, column: 9)
!15719 = distinct !DISubprogram(name: "map_entry<alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RINvNtNtNtCs5Xr050g3D4S_3std11collections4hash3map9map_entryNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB10_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtB10_5alloc6GlobalEB1T_", scope: !1977, file: !4203, line: 3070, type: !4253, scopeLine: 3070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4221, retainedNodes: !17052)
!15720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !17064, file: !1134, align: 8, elements: !1394, identifier: "a956736e1c246f517ecba0e7a0fd65a6")
!15721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !15724, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !17070, templateParams: !17072, identifier: "45bac140b346bb774a9e6d55fa5400c0")
!15722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !15724, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !1394, templateParams: !17072, identifier: "3b9a829253dac85cb55a594cdfd6a4b")
!15723 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !15724, file: !1134, size: 64, align: 64, elements: !17068, templateParams: !1394, identifier: "a8cc92a196b4ff742684aa3e65c33905", discriminator: !17073)
!15724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&tera::parsing::ast::Expression>", scope: !1571, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !17065, templateParams: !1394, identifier: "5e6b618c8f58bd6f23b04e01337d847f")
!15725 = distinct !DILexicalBlock(scope: !15726, file: !3959, line: 1165, column: 13)
!15726 = distinct !DISubprogram(name: "map<&tera::parsing::ast::Expression, tera::utils::Span, tera::parsing::compiler::{impl#0}::compile_node::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE3mapNtNtBP_5utils4SpanNCNvMNtBN_8compilerNtB1Y_8Compiler12compile_node0EBP_", scope: !15724, file: !3959, line: 1160, type: !17075, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !17078, declaration: !17079, retainedNodes: !17082)
!15727 = distinct !DISubprogram(name: "pop<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE3popBK_", scope: !414, file: !3498, line: 2901, type: !4073, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4074, retainedNodes: !17096)
!15728 = distinct !DISubprogram(name: "capacity<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8capacityBK_", scope: !414, file: !3498, line: 1444, type: !4077, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4078, retainedNodes: !17098)
!15729 = distinct !DISubprogram(name: "capacity<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8capacityBS_", scope: !413, file: !2606, line: 317, type: !4081, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4082, retainedNodes: !17100)
!15730 = distinct !DISubprogram(name: "pop<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB6_6string6StringEE3popCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 2901, type: !4277, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4285, retainedNodes: !17110)
!15731 = distinct !DISubprogram(name: "capacity<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB6_6string6StringEE8capacityCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 1444, type: !4288, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4289, retainedNodes: !17112)
!15732 = distinct !DISubprogram(name: "capacity<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB7_6string6StringEE8capacityCs5yXxDE1DkoT_4tera", scope: !730, file: !2606, line: 317, type: !4292, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4293, retainedNodes: !17114)
!15733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}", scope: !17064, file: !1134, align: 8, elements: !1394, identifier: "f90d16aa58ee9a85458729842007f285")
!15734 = distinct !DILexicalBlock(scope: !15735, file: !3959, line: 1165, column: 13)
!15735 = distinct !DISubprogram(name: "map<&tera::parsing::ast::Expression, tera::utils::Span, tera::parsing::compiler::{impl#0}::compile_node::{closure_env#1}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE3mapNtNtBP_5utils4SpanNCNvMNtBN_8compilerNtB1Y_8Compiler12compile_nodes_0EBP_", scope: !15724, file: !3959, line: 1160, type: !17125, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !17127, declaration: !17128, retainedNodes: !17131)
!15736 = distinct !DISubprogram(name: "into_parts<alloc::string::String>", linkageName: "_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtCsgCecv3eZDcN_5alloc6string6StringE10into_partsB4_", scope: !83, file: !3875, line: 30, type: !17140, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1619, declaration: !17141, retainedNodes: !17142)
!15737 = distinct !DILexicalBlock(scope: !15739, file: !3024, line: 2039, column: 9)
!15738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<alloc::string::String>", scope: !2117, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !17155, templateParams: !1619, identifier: "bc54c48911b0e224486b22bfd1fff8ee")
!15739 = distinct !DILexicalBlock(scope: !15740, file: !3024, line: 2034, column: 9)
!15740 = distinct !DISubprogram(name: "drop<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera", scope: !3027, file: !3024, line: 2031, type: !17149, scopeLine: 2031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2810, retainedNodes: !17152)
!15741 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgCecv3eZDcN_5alloc5alloc15dealloc_nonnull", scope: !1406, file: !2650, line: 176, type: !2667, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, retainedNodes: !17161)
!15742 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate", scope: !2659, file: !2650, line: 559, type: !2654, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, retainedNodes: !17170)
!15743 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc5allocNtB5_6Global15deallocate_impl", scope: !3, file: !2650, line: 441, type: !2654, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !2655, retainedNodes: !17174)
!15744 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc5allocNtB5_6Global23deallocate_impl_runtime", scope: !3, file: !2650, line: 317, type: !2667, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !2670, retainedNodes: !17177)
!15745 = distinct !{!15745, !"_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block"}
!15746 = distinct !{!15746, !15745, !"_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block: argument 0"}
!15747 = distinct !{!15747, !15745, !"_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block: argument 1"}
!15748 = distinct !DILocation(line: 0, scope: !15636, inlinedAt: !15642)
!15749 = distinct !DILocation(line: 421, column: 33, scope: !15636, inlinedAt: !15642)
!15750 = distinct !DILocation(line: 422, column: 14, scope: !15637, inlinedAt: !15642)
!15751 = distinct !DILocation(line: 425, column: 13, scope: !15639, inlinedAt: !15642)
!15752 = distinct !DILocation(line: 426, column: 13, scope: !15640, inlinedAt: !15642)
!15753 = distinct !DISubprogram(name: "replace<tera::parsing::instructions::Chunk>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3mem7replaceNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEBF_", scope: !1235, file: !17189, line: 961, type: !17192, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3262, retainedNodes: !17194)
!15754 = distinct !DILocation(line: 426, column: 28, scope: !15639, inlinedAt: !15642)
!15755 = distinct !DILocation(line: 961, column: 39, scope: !15753, inlinedAt: !15754)
!15756 = distinct !DILocation(line: 427, column: 13, scope: !15641, inlinedAt: !15642)
!15757 = distinct !DILocation(line: 429, column: 21, scope: !15635, inlinedAt: !15642)
!15758 = distinct !DILocation(line: 429, column: 13, scope: !15634, inlinedAt: !15642)
end_hunk_1
