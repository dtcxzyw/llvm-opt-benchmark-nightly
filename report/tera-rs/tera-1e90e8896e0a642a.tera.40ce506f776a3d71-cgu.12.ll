Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr:bb.a
  %.sroa.5200.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !15470
  store i64 %.sroa.5200.0.copyload, ptr %.sroa.5200.0..sroa_idx203, align 8, !dbg !15470
  %.sroa.6205.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !15470
  store i64 %.sroa.6205.0.copyload, ptr %.sroa.6205.0..sroa_idx208, align 8, !dbg !15470
  %.sroa.7210.0..sroa_idx213 = getelementptr inbounds nuw i8, ptr %i.aa, i64 40, !dbg !15470
  store i64 %.sroa.7210.0.copyload, ptr %.sroa.7210.0..sroa_idx213, align 8, !dbg !15470
  %.sroa.8215.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.aa, i64 48, !dbg !15470
  store i64 %.sroa.8215.0.copyload, ptr %.sroa.8215.0..sroa_idx218, align 8, !dbg !15470
  store i64 1, ptr %i.aa, align 8, !dbg !15470
  %i.tl = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.aa), !dbg !15471 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !15472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !15472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !15473
  br label %bb.q, !dbg !15474

bb.gs:                                            ; preds = %bb.gq, %bb.n, %bb.go, %bb.gl, %bb.gk
  %lpad.thr_comm1042 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #30
          to label %common.resume unwind label %bb.z, !dbg !15473

bb.gt:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !15475
  store i8 55, ptr %i.w, align 8, !dbg !15475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !15476
  %i.tm = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !15476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tm, ptr noundef nonnull align 8 dereferenceable(48) %i.ft, i64 48, i1 false), !dbg !15476
  store i64 1, ptr %i.v, align 8, !dbg !15476
  %i.tn = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v), !dbg !15477 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !15478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !15478
  br label %bb.q, !dbg !15478

bb.gu:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !15479
  store i8 54, ptr %i.y, align 8, !dbg !15479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15480
  %i.to = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !15480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.to, ptr noundef nonnull align 8 dereferenceable(48) %i.ft, i64 48, i1 false), !dbg !15480
  store i64 1, ptr %i.x, align 8, !dbg !15480
  %i.tp = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.x), !dbg !15481 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !15482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15482
  br label %bb.q, !dbg !15482

bb.gv:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15483

bb.gw:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15484

bb.gx:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15485

bb.gy:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15486

bb.gz:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15487

bb.ha:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15488

bb.hb:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15489

bb.hc:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15490

bb.hd:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15491

bb.he:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15492

bb.hf:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15493

bb.hg:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15494

bb.hh:                                            ; preds = %bb.p, %bb.p
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15495 ; 2 uses
    #dbg_value(ptr %i.tq, !13483, !DIExpression(), !14678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !15496
  store i64 0, ptr %i.t, align 8, !dbg !15496
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !15496
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.439.0..sroa_idx, align 8, !dbg !15496
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !15496
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8, !dbg !15496
  invoke fastcc void @_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8push_mutBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.tq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.hm unwind label %bb.ii, !dbg !15497

bb.hi:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15498

bb.hj:                                            ; preds = %bb.p
  br label %bb.hl, !dbg !15499

bb.hk:                                            ; preds = %bb.p, %bb.p
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32
          to label %bb.al unwind label %bb.ii, !dbg !15500

bb.hl:                                            ; preds = %bb.p, %bb.hj, %bb.hi, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv
  %.sink = phi i8 [ 53, %bb.hj ], [ 52, %bb.hi ], [ 51, %bb.hg ], [ 50, %bb.hf ], [ 49, %bb.he ], [ 48, %bb.hd ], [ 47, %bb.hc ], [ 46, %bb.hb ], [ 45, %bb.ha ], [ 41, %bb.gz ], [ 44, %bb.gy ], [ 43, %bb.gx ], [ 42, %bb.gw ], [ 40, %bb.gv ], [ 39, %bb.p ]
  store i8 %.sink, ptr %i.u, align 8, !dbg !15501
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.p)
          to label %bb.if unwind label %bb.ih, !dbg !15502

.thread1057:                                      ; preds = %bb.ih
  br i1 %.sroa.063.2.ph, label %.thread1085, label %common.resume, !dbg !15503

bb.hm:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !15504
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.p)
          to label %bb.hn unwind label %.thread1093, !dbg !15505

bb.hn:                                            ; preds = %bb.hm
    #dbg_value(ptr %0, !14679, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14687)
    #dbg_value(ptr %0, !14688, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14693)
    #dbg_value(ptr %0, !14694, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14698)
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15506 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15507 ; 3 uses
  %i.tt = load i64, ptr %i.ts, align 8, !dbg !15507, !noundef !1394 ; 2 uses
    #dbg_value(ptr poison, !14705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14720)
    #dbg_value(i64 %i.tt, !14705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14720)
  %.not = icmp eq i64 %i.tt, 0, !dbg !15508
  br i1 %.not, label %bb.hp, label %bb.ho, !dbg !15508, !prof !3799

bb.ho:                                            ; preds = %bb.hn
  %i.tu = load ptr, ptr %i.tr, align 8, !dbg !15506, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.tu, !14705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14720)
  %i.tv = getelementptr [24 x i8], ptr %i.tu, i64 %i.tt, !dbg !15509 ; 3 uses
  %i.tw = getelementptr i8, ptr %i.tv, i64 -24, !dbg !15509 ; 3 uses
    #dbg_value(ptr %i.tw, !14717, !DIExpression(), !14721)
  %i.tx = load i64, ptr %i.tw, align 8, !dbg !14686, !range !3473, !noundef !1394 ; 2 uses
  %i.ty = icmp ne i64 %i.tx, -9223372036854775807, !dbg !14686
  call void @llvm.assume(i1 %i.ty), !dbg !14686
  %i.tz = icmp sgt i64 %i.tx, -1, !dbg !14686
  br i1 %i.tz, label %bb.hq, label %bb.hp, !dbg !15510, !prof !3672

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #32
          to label %bb.al unwind label %.thread1093, !dbg !15511

bb.hq:                                            ; preds = %bb.ho
    #dbg_value(ptr %i.tw, !13243, !DIExpression(), !14722)
    #dbg_value(ptr %i.tw, !14723, !DIExpression(), !14730)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !15512
    #dbg_value(ptr %i.p, !13721, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !14732)
    #dbg_value(i8 %i.fz, !13722, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14734)
  %i.ua = icmp eq i8 %i.fz, 13, !dbg !15513
  %spec.select = select i1 %i.ua, i8 27, i8 28, !dbg !13725
  %i.ub = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !14722
  store i64 0, ptr %i.ub, align 8, !dbg !14722
  store i8 %spec.select, ptr %i.s, align 8, !dbg !14722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !15514
  store i64 0, ptr %i.r, align 8, !dbg !15514
  %i.uc = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r)
          to label %bb.hr unwind label %.thread1093, !dbg !15515

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !15516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !15516
  %i.ud = zext i32 %i.uc to i64, !dbg !15517
    #dbg_value(i64 %i.ud, !14727, !DIExpression(), !14730)
  call void @llvm.experimental.noalias.scope.decl(metadata !14735), !dbg !15518
    #dbg_value(ptr %i.tw, !14736, !DIExpression(), !13111)
    #dbg_value(ptr %i.tw, !14744, !DIExpression(), !13114)
    #dbg_value(i64 %i.ud, !14740, !DIExpression(), !13111)
    #dbg_value(i64 8, !14749, !DIExpression(), !13119)
  %i.ue = getelementptr i8, ptr %i.tv, i64 -8, !dbg !15519 ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8, !dbg !15519, !alias.scope !14735, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.uf, !14741, !DIExpression(), !13120)
    #dbg_value(i64 %i.uf, !14754, !DIExpression(), !13123)
    #dbg_value(ptr %i.tw, !14752, !DIExpression(), !13124)
  %i.ug = load i64, ptr %i.tw, align 8, !dbg !15520, !range !3688, !alias.scope !14735, !noundef !1394
  %i.uh = icmp eq i64 %i.uf, %i.ug, !dbg !15521
  br i1 %i.uh, label %bb.hs, label %bb.ht, !dbg !15521

bb.hs:                                            ; preds = %bb.hr
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tw) #29
          to label %bb.ht unwind label %.thread1093, !dbg !15522

bb.ht:                                            ; preds = %bb.hr, %bb.hs
  %i.ui = getelementptr i8, ptr %i.tv, i64 -16, !dbg !15523
  %i.uj = load ptr, ptr %i.ui, align 8, !dbg !15523, !alias.scope !14735, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.uj, !14757, !DIExpression(), !13123)
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %i.uf, !dbg !15524
    #dbg_value(ptr %i.uk, !14742, !DIExpression(), !13131)
    #dbg_value(ptr %i.uk, !14769, !DIExpression(), !13134)
    #dbg_value(i64 %i.ud, !14772, !DIExpression(), !13134)
  store i64 %i.ud, ptr %i.uk, align 8, !dbg !15525, !noalias !14735
  %i.ul = add i64 %i.uf, 1, !dbg !15526
  store i64 %i.ul, ptr %i.ue, align 8, !dbg !15526, !alias.scope !14735
  %i.um = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15527
  call fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.um), !dbg !15528
    #dbg_value(ptr %0, !14465, !DIExpression(), !14775)
    #dbg_value(ptr %0, !14469, !DIExpression(), !14778)
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15529 ; 4 uses
  %i.uo = load i64, ptr %i.un, align 8, !dbg !15529, !noundef !1394 ; 8 uses
    #dbg_value(i64 %i.uo, !13244, !DIExpression(), !14779)
  %i.up = icmp ult i64 %i.uo, 164703072086692426, !dbg !15530
  call void @llvm.assume(i1 %i.up), !dbg !15531
    #dbg_value(ptr %0, !13736, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14780)
    #dbg_value(ptr %0, !13738, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14781)
    #dbg_value(ptr %0, !14782, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14785)
    #dbg_value(ptr %0, !14786, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14789)
  %i.uq = load i64, ptr %i.ts, align 8, !dbg !15532, !noundef !1394 ; 3 uses
  %i.ur = icmp eq i64 %i.uq, 0, !dbg !15532
  br i1 %i.ur, label %bb.hv, label %bb.hu, !dbg !15532, !prof !3799

bb.hu:                                            ; preds = %bb.ht
  %i.us = add nsw i64 %i.uq, -1, !dbg !15533      ; 3 uses
  store i64 %i.us, ptr %i.ts, align 8, !dbg !15533
  %i.ut = load i64, ptr %i.tq, align 8, !dbg !15534, !range !3688, !noundef !1394
    #dbg_value(i64 %i.ut, !14264, !DIExpression(), !14792)
  %i.uu = icmp samesign ult i64 %i.us, %i.ut, !dbg !15535
    #dbg_value(i1 true, !14321, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14794)
  call void @llvm.assume(i1 %i.uu), !dbg !15536
  %i.uv = load ptr, ptr %i.tr, align 8, !dbg !15537, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.uv, !14801, !DIExpression(), !14805)
    #dbg_value(i64 %i.us, !14802, !DIExpression(), !14805)
  %i.uw = icmp ult i64 %i.uq, 384307168202282327, !dbg !15538
  call void @llvm.assume(i1 %i.uw), !dbg !15539
  %i.ux = getelementptr inbounds nuw [24 x i8], ptr %i.uv, i64 %i.us, !dbg !15540 ; 3 uses
    #dbg_value(ptr %i.ux, !14806, !DIExpression(), !14809)
  %.sroa.0114.0.copyload = load i64, ptr %i.ux, align 8, !dbg !15541 ; 3 uses
  %i.uy = icmp ne i64 %.sroa.0114.0.copyload, -9223372036854775807, !dbg !15542
  call void @llvm.assume(i1 %i.uy), !dbg !15542
  %i.uz = icmp sgt i64 %.sroa.0114.0.copyload, -1, !dbg !15542
  br i1 %i.uz, label %bb.hw, label %bb.hv, !dbg !15543, !prof !3672

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #32, !dbg !15544
  unreachable

bb.hw:                                            ; preds = %bb.hu
  %.sroa.4115.sroa.4.0..sroa.4115.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ux, i64 16, !dbg !15541
  %.sroa.4115.sroa.4.0.copyload = load i64, ptr %.sroa.4115.sroa.4.0..sroa.4115.0..sroa_idx.sroa_idx, align 8, !dbg !15541 ; 3 uses
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ux, i64 8, !dbg !15541
  %.sroa.4115.sroa.0.0.copyload = load ptr, ptr %.sroa.4115.0..sroa_idx, align 8, !dbg !15541, !nonnull !1394, !noundef !1394 ; 6 uses
    #dbg_value(i64 %.sroa.0114.0.copyload, !13245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14810)
    #dbg_value(i64 %.sroa.0114.0.copyload, !13281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14811)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14811)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14810)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !13281, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14811)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !13245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14810)
    #dbg_value(i64 %.sroa.0114.0.copyload, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14812)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14812)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !13282, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14812)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13284, !DIExpression(), !14813)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !13285, !DIExpression(), !14814)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14815, !DIExpression(), !14819)
    #dbg_value(ptr undef, !13298, !DIExpression(), !13305)
    #dbg_value(i64 %.sroa.4115.sroa.4.0.copyload, !14816, !DIExpression(), !14819)
  %i.va = icmp ult i64 %.sroa.4115.sroa.4.0.copyload, 1152921504606846976, !dbg !15545
  call void @llvm.assume(i1 %i.va), !dbg !15546
  %.idx = shl nuw nsw i64 %.sroa.4115.sroa.4.0.copyload, 3, !dbg !15547 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.4115.sroa.0.0.copyload, i64 %.idx, !dbg !15547 ; 2 uses
    #dbg_value(ptr undef, !13270, !DIExpression(), !13278)
    #dbg_value(i64 %.sroa.0114.0.copyload, !14264, !DIExpression(), !14822)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !13275
  store ptr %.sroa.4115.sroa.0.0.copyload, ptr %i.q, align 8, !dbg !13275
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !13275 ; 4 uses
  store ptr %.sroa.4115.sroa.0.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !13275
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !13275
  store i64 %.sroa.0114.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8, !dbg !13275
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !13275
  store ptr %i.vb, ptr %.sroa.652.0..sroa_idx, align 8, !dbg !13275
  %i.vc = icmp eq i64 %.sroa.4115.sroa.4.0.copyload, 0, !dbg !15548
  br i1 %i.vc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, label %.lr.ph, !dbg !15549

.lr.ph:                                           ; preds = %bb.hw
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ve = add nsw i64 %.idx, -8, !dbg !15549      ; 2 uses
  %i.vf = and i64 %i.ve, 8, !dbg !15549
  %lcmp.mod.not.not = icmp eq i64 %i.vf, 0, !dbg !15549
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit, !dbg !15549

.prol.preheader:                                  ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !14836), !dbg !13520
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14833, !DIExpression(), !13148)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14834, !DIExpression(), !13149)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14837, !DIExpression(), !13152)
    #dbg_value(ptr %.sroa.4115.sroa.0.0.copyload, !14843, !DIExpression(), !13155)
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.4115.sroa.0.0.copyload, i64 8, !dbg !15550 ; 4 uses
  store ptr %i.vg, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15551, !alias.scope !14836
  %i.vh = load i64, ptr %.sroa.4115.sroa.0.0.copyload, align 8, !dbg !15552, !noalias !14836, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.vh, !13247, !DIExpression(), !14850)
    #dbg_value(i64 %i.vh, !14533, !DIExpression(), !14852)
    #dbg_value(i64 %i.vh, !14538, !DIExpression(), !14855)
    #dbg_value(i64 %i.vh, !14544, !DIExpression(), !14858)
    #dbg_value(ptr %0, !14534, !DIExpression(), !14859)
    #dbg_value(ptr %0, !14565, !DIExpression(), !14861)
    #dbg_value(ptr %0, !14569, !DIExpression(), !14864)
    #dbg_value(ptr %0, !14573, !DIExpression(), !14867)
    #dbg_value(ptr poison, !14539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14855)
    #dbg_value(ptr poison, !14545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14858)
    #dbg_value(i64 %i.uo, !14539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14855)
    #dbg_value(i64 %i.uo, !14545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14858)
  %i.vi = icmp ult i64 %i.vh, %i.uo, !dbg !15553
  br i1 %i.vi, label %bb.hx, label %.prol.loopexit, !dbg !15553

bb.hx:                                            ; preds = %.prol.preheader
  %i.vj = load ptr, ptr %i.vd, align 8, !dbg !15554, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.vj, !14539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14855)
    #dbg_value(ptr %i.vj, !14545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14858)
  %i.vk = getelementptr inbounds nuw [56 x i8], ptr %i.vj, i64 %i.vh, !dbg !15555 ; 2 uses
  %i.vl = load i8, ptr %i.vk, align 8, !dbg !15556, !range !3235, !noundef !1394
  %.off.prol = add nsw i8 %i.vl, -27, !dbg !15557
  %switch.prol = icmp ult i8 %.off.prol, 2, !dbg !15557
  br i1 %switch.prol, label %bb.hy, label %.prol.loopexit, !dbg !15557

bb.hy:                                            ; preds = %bb.hx
  %.sroa.059.0.prol = getelementptr inbounds nuw i8, ptr %i.vk, i64 8, !dbg !14850
    #dbg_value(ptr %.sroa.059.0.prol, !13248, !DIExpression(), !14874)
  store i64 %i.uo, ptr %.sroa.059.0.prol, align 8, !dbg !15558
  %.pre.prol = load i64, ptr %i.un, align 8, !dbg !15559
  br label %.prol.loopexit, !dbg !15560

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.hx, %bb.hy, %.lr.ph
  %.unr = phi i64 [ %i.uo, %.lr.ph ], [ %i.uo, %bb.hx ], [ %i.uo, %.prol.preheader ], [ %.pre.prol, %bb.hy ]
  %.unr.a = phi ptr [ %.sroa.4115.sroa.0.0.copyload, %.lr.ph ], [ %i.vg, %bb.hy ], [ %i.vg, %bb.hx ], [ %i.vg, %.prol.preheader ]
  %i.vm = icmp eq i64 %i.ve, 0, !dbg !15549
  br i1 %i.vm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, label %.lr.ph.new, !dbg !15549

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.id
  %2 = phi i64 [ %4, %bb.id ], [ %.unr, %.prol.loopexit ], !dbg !15559 ; 3 uses
  %i.vn = phi ptr [ %i.vu, %bb.id ], [ %.unr.a, %.prol.loopexit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14836), !dbg !13520
    #dbg_value(ptr %i.vn, !14833, !DIExpression(), !13148)
    #dbg_value(ptr %i.vn, !14834, !DIExpression(), !13149)
    #dbg_value(ptr %i.vn, !14837, !DIExpression(), !13152)
    #dbg_value(ptr %i.vn, !14843, !DIExpression(), !13155)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8, !dbg !15550 ; 2 uses
  store ptr %i.vo, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15551, !alias.scope !14836
  %i.vp = load i64, ptr %i.vn, align 8, !dbg !15552, !noalias !14836, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.vp, !13247, !DIExpression(), !14850)
    #dbg_value(i64 %i.vp, !14533, !DIExpression(), !14852)
    #dbg_value(i64 %i.vp, !14538, !DIExpression(), !14855)
    #dbg_value(i64 %i.vp, !14544, !DIExpression(), !14858)
    #dbg_value(ptr %0, !14534, !DIExpression(), !14859)
    #dbg_value(ptr %0, !14565, !DIExpression(), !14861)
    #dbg_value(ptr %0, !14569, !DIExpression(), !14864)
    #dbg_value(ptr %0, !14573, !DIExpression(), !14867)
    #dbg_value(ptr poison, !14539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14855)
    #dbg_value(ptr poison, !14545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14858)
    #dbg_value(i64 %2, !14539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14855)
    #dbg_value(i64 %2, !14545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14858)
  %i.vq = icmp ult i64 %i.vp, %2, !dbg !15553
  br i1 %i.vq, label %bb.hz, label %bb.ia, !dbg !15553

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657: ; preds = %.prol.loopexit, %bb.id, %bb.hw
    #dbg_value(ptr %i.q, !14875, !DIExpression(), !13160)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !dbg !15561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !15562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !15563
  br label %bb.q, !dbg !15564

bb.hz:                                            ; preds = %.lr.ph.new
  %i.vr = load ptr, ptr %i.vd, align 8, !dbg !15554, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.vr, !14539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14855)
    #dbg_value(ptr %i.vr, !14545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14858)
  %i.vs = getelementptr inbounds nuw [56 x i8], ptr %i.vr, i64 %i.vp, !dbg !15555 ; 2 uses
  %i.vt = load i8, ptr %i.vs, align 8, !dbg !15556, !range !3235, !noundef !1394
  %.off = add nsw i8 %i.vt, -27, !dbg !15557
  %switch = icmp ult i8 %.off, 2, !dbg !15557
  br i1 %switch, label %bb.ie, label %bb.ia, !dbg !15557

bb.ia:                                            ; preds = %bb.hz, %.lr.ph.new, %bb.ie
  %3 = phi i64 [ %2, %bb.hz ], [ %2, %.lr.ph.new ], [ %.pre, %bb.ie ] ; 3 uses
    #dbg_value(ptr %i.q, !14832, !DIExpression(), !13161)
    #dbg_value(i64 1, !14841, !DIExpression(), !13152)
    #dbg_value(ptr %i.q, !14826, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13162)
    #dbg_value(ptr poison, !14827, !DIExpression(), !13163)
  call void @llvm.experimental.noalias.scope.decl(metadata !14881), !dbg !13520
    #dbg_value(ptr %i.vo, !14833, !DIExpression(), !13148)
    #dbg_value(ptr %i.vo, !14834, !DIExpression(), !13149)
    #dbg_value(ptr %i.vo, !14837, !DIExpression(), !13152)
    #dbg_value(ptr %i.vo, !14843, !DIExpression(), !13155)
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 16, !dbg !15550 ; 3 uses
  store ptr %i.vu, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15551, !alias.scope !14881
  %i.vv = load i64, ptr %i.vo, align 8, !dbg !15552, !noalias !14881, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.vv, !13247, !DIExpression(), !14850)
    #dbg_value(i64 %i.vv, !14533, !DIExpression(), !14852)
    #dbg_value(i64 %i.vv, !14538, !DIExpression(), !14855)
    #dbg_value(i64 %i.vv, !14544, !DIExpression(), !14858)
    #dbg_value(ptr %0, !14534, !DIExpression(), !14859)
    #dbg_value(ptr %0, !14565, !DIExpression(), !14861)
    #dbg_value(ptr %0, !14569, !DIExpression(), !14864)
    #dbg_value(ptr %0, !14573, !DIExpression(), !14867)
    #dbg_value(ptr poison, !14539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14855)
    #dbg_value(ptr poison, !14545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14858)
    #dbg_value(i64 %3, !14539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14855)
    #dbg_value(i64 %3, !14545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14858)
  %i.vw = icmp ult i64 %i.vv, %3, !dbg !15553
  br i1 %i.vw, label %bb.ib, label %bb.id, !dbg !15553

bb.ib:                                            ; preds = %bb.ia
  %i.vx = load ptr, ptr %i.vd, align 8, !dbg !15554, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.vx, !14539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14855)
    #dbg_value(ptr %i.vx, !14545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14858)
  %i.vy = getelementptr inbounds nuw [56 x i8], ptr %i.vx, i64 %i.vv, !dbg !15555 ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 8, !dbg !15556, !range !3235, !noundef !1394
  %.off.1 = add nsw i8 %i.vz, -27, !dbg !15557
  %switch.1 = icmp ult i8 %.off.1, 2, !dbg !15557
  br i1 %switch.1, label %bb.ic, label %bb.id, !dbg !15557

bb.ic:                                            ; preds = %bb.ib
  %.sroa.059.0.1 = getelementptr inbounds nuw i8, ptr %i.vy, i64 8, !dbg !14850
    #dbg_value(ptr %.sroa.059.0.1, !13248, !DIExpression(), !14874)
  store i64 %i.uo, ptr %.sroa.059.0.1, align 8, !dbg !15558
  %.pre.1 = load i64, ptr %i.un, align 8, !dbg !15559
  br label %bb.id, !dbg !15560

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia
  %4 = phi i64 [ %3, %bb.ib ], [ %3, %bb.ia ], [ %.pre.1, %bb.ic ]
    #dbg_value(ptr %i.q, !14832, !DIExpression(), !13161)
    #dbg_value(i64 1, !14841, !DIExpression(), !13152)
    #dbg_value(ptr %i.q, !14826, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13162)
    #dbg_value(ptr poison, !14827, !DIExpression(), !13163)
  %i.wa = icmp eq ptr %i.vu, %i.vb, !dbg !15548
  br i1 %i.wa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, label %.lr.ph.new, !dbg !15549

bb.ie:                                            ; preds = %bb.hz
  %.sroa.059.0 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8, !dbg !14850
    #dbg_value(ptr %.sroa.059.0, !13248, !DIExpression(), !14874)
  store i64 %i.uo, ptr %.sroa.059.0, align 8, !dbg !15558
  %.pre = load i64, ptr %i.un, align 8, !dbg !15559
  br label %bb.ia, !dbg !15560

bb.if:                                            ; preds = %bb.hl
  %i.wb = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15565
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.wb)
          to label %bb.ig unwind label %bb.ih, !dbg !15566

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !15567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !dbg !15567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !15568
  %i.wc = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.wc, ptr noundef nonnull align 8 dereferenceable(48) %i.fx, i64 48, i1 false), !dbg !15568
  store i64 1, ptr %i.n, align 8, !dbg !15568
  %i.wd = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n), !dbg !15569 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !15563
  br label %bb.q, !dbg !15571

bb.ih:                                            ; preds = %bb.if, %bb.hl
  %.sroa.063.2.ph = phi i1 [ true, %bb.hl ], [ false, %bb.if ]
  %lpad.thr_comm1077 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #30
          to label %.thread1057 unwind label %bb.z, !dbg !15563

.thread1093:                                      ; preds = %bb.hm, %bb.hp, %bb.hq, %bb.hs
  %lpad.thr_comm1091 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1085, !dbg !15503

bb.ii:                                            ; preds = %bb.hh, %bb.hk
  %lpad.thr_comm.split-lp1066 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.p) #30
          to label %.thread1085 unwind label %bb.z, !dbg !15503

.thread1085:                                      ; preds = %bb.ii, %.thread1093, %.thread1057
  %.pn10621088 = phi { ptr, i32 } [ %lpad.thr_comm1077, %.thread1057 ], [ %lpad.thr_comm1091, %.thread1093 ], [ %lpad.thr_comm.split-lp1066, %bb.ii ]
  %i.we = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15503
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.we) #30
          to label %common.resume unwind label %bb.z, !dbg !15503
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15625 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !16778, !DIExpression(), !15648)
    #dbg_value(ptr poison, !16781, !DIExpression(), !15649)
    #dbg_value(ptr poison, !16806, !DIExpression(), !15652)
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
    #dbg_value(ptr poison, !16840, !DIExpression(), !16842)
    #dbg_value(ptr poison, !16844, !DIExpression(), !16851)
    #dbg_value(ptr poison, !16808, !DIExpression(), !16857)
    #dbg_value(ptr poison, !16896, !DIExpression(), !16898)
    #dbg_value(ptr poison, !16899, !DIExpression(), !16903)
    #dbg_value(ptr poison, !16808, !DIExpression(), !16909)
    #dbg_value(ptr poison, !16896, !DIExpression(), !16910)
    #dbg_value(ptr poison, !16899, !DIExpression(), !16913)
    #dbg_value(ptr poison, !16808, !DIExpression(), !16919)
    #dbg_value(ptr poison, !16896, !DIExpression(), !16920)
    #dbg_value(ptr poison, !16899, !DIExpression(), !16923)
    #dbg_value(ptr poison, !16808, !DIExpression(), !16929)
    #dbg_value(ptr poison, !16896, !DIExpression(), !16930)
    #dbg_value(ptr poison, !16899, !DIExpression(), !16933)
    #dbg_value(ptr poison, !16808, !DIExpression(), !16939)
    #dbg_value(ptr poison, !16896, !DIExpression(), !16940)
    #dbg_value(ptr poison, !16899, !DIExpression(), !16943)
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = alloca [40 x i8], align 8               ; 9 uses
  %i.ab = alloca [112 x i8], align 8              ; 3 uses
    #dbg_value(ptr poison, !16808, !DIExpression(), !16949)
    #dbg_value(ptr poison, !16840, !DIExpression(), !16950)
    #dbg_value(ptr poison, !16844, !DIExpression(), !16953)
    #dbg_value(ptr poison, !16808, !DIExpression(), !16957)
    #dbg_value(ptr poison, !16896, !DIExpression(), !16958)
    #dbg_value(ptr poison, !16899, !DIExpression(), !16960)
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
    #dbg_value(ptr %0, !16706, !DIExpression(), !16961)
    #dbg_declare(ptr %1, !16707, !DIExpression(), !16962)
    #dbg_declare(ptr poison, !16708, !DIExpression(), !16963)
    #dbg_declare(ptr poison, !16709, !DIExpression(), !16964)
    #dbg_declare(ptr %i.cu, !16710, !DIExpression(), !16965)
    #dbg_declare(ptr %i.ct, !16966, !DIExpression(), !16970)
    #dbg_declare(ptr %i.ct, !16971, !DIExpression(), !16975)
    #dbg_declare(ptr %i.cs, !16712, !DIExpression(), !16976)
    #dbg_declare(ptr %i.cq, !16713, !DIExpression(), !16977)
    #dbg_declare(ptr %i.co, !16714, !DIExpression(), !16978)
    #dbg_declare(ptr %i.cn, !16715, !DIExpression(), !16979)
    #dbg_declare(ptr %i.cm, !16716, !DIExpression(), !16980)
    #dbg_declare(ptr %i.ck, !16717, !DIExpression(), !16981)
    #dbg_declare(ptr %i.cj, !16718, !DIExpression(), !16982)
    #dbg_declare(ptr %i.ci, !16720, !DIExpression(), !16983)
    #dbg_declare(ptr %i.ch, !16984, !DIExpression(), !16988)
    #dbg_declare(ptr %i.ce, !16966, !DIExpression(), !16990)
    #dbg_declare(ptr %i.ce, !16971, !DIExpression(), !16993)
    #dbg_declare(ptr %i.cd, !16723, !DIExpression(), !16994)
    #dbg_declare(ptr %i.cc, !16725, !DIExpression(), !16995)
    #dbg_declare(ptr %i.cb, !16984, !DIExpression(), !16997)
    #dbg_declare(ptr %i.by, !16727, !DIExpression(), !16998)
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!15353 = !DILocation(line: 301, column: 17, scope: !12370)
!15354 = !DILocation(line: 2902, column: 12, scope: !12531, inlinedAt: !13704)
!15355 = !DILocation(line: 2905, column: 13, scope: !12531, inlinedAt: !13704)
!15356 = !DILocation(line: 632, column: 49, scope: !12420, inlinedAt: !13707)
!15357 = !DILocation(line: 2908, column: 46, scope: !12531, inlinedAt: !13704)
!15358 = !DILocation(line: 210, column: 9, scope: !12690, inlinedAt: !14616)
!15359 = !DILocation(line: 627, column: 9, scope: !12753, inlinedAt: !14623)
!15360 = !DILocation(line: 3141, column: 37, scope: !12945, inlinedAt: !14611)
!15361 = !DILocation(line: 3141, column: 18, scope: !12945, inlinedAt: !14611)
!15362 = !DILocation(line: 872, column: 18, scope: !12946, inlinedAt: !14627)
!15363 = !DILocation(line: 1758, column: 9, scope: !12947, inlinedAt: !14631)
!15364 = !DILocation(line: 848, column: 1, scope: !853, inlinedAt: !12950)
!15365 = !DILocation(line: 848, column: 1, scope: !849, inlinedAt: !12958)
!15366 = !DILocation(line: 301, column: 42, scope: !12370)
!15367 = !DILocation(line: 302, column: 13, scope: !12419)
!15368 = !DILocation(line: 848, column: 1, scope: !849, inlinedAt: !12966)
!15369 = !DILocation(line: 333, column: 13, scope: !12368)
!15370 = !DILocation(line: 1013, column: 19, scope: !12492, inlinedAt: !13509)
!15371 = !DILocation(line: 1013, column: 29, scope: !12492, inlinedAt: !13509)
!15372 = !DILocation(line: 3073, column: 11, scope: !12503, inlinedAt: !13539)
!15373 = !DILocation(line: 0, scope: !12503, inlinedAt: !13539)
!15374 = !DILocation(line: 3073, column: 5, scope: !12503, inlinedAt: !13539)
!15375 = !DILocation(line: 1013, column: 45, scope: !12492, inlinedAt: !13509)
!15376 = !DILocation(line: 308, column: 55, scope: !12367)
!15377 = !DILocation(line: 2741, column: 47, scope: !815, inlinedAt: !12968)
!15378 = !DILocation(line: 3075, column: 34, scope: !12503, inlinedAt: !13539)
!15379 = !DILocation(line: 576, column: 63, scope: !812, inlinedAt: !12970)
!15380 = !DILocation(line: 576, column: 37, scope: !812, inlinedAt: !12970)
!15381 = !DILocation(line: 576, column: 80, scope: !812, inlinedAt: !12970)
!15382 = !DILocation(line: 2742, column: 61, scope: !815, inlinedAt: !12968)
!15383 = !DILocation(line: 1000, column: 22, scope: !12807, inlinedAt: !14639)
!15384 = !DILocation(line: 1033, column: 19, scope: !819, inlinedAt: !12975)
!15385 = !DILocation(line: 632, column: 49, scope: !822, inlinedAt: !12983)
!15386 = !DILocation(line: 1036, column: 12, scope: !818, inlinedAt: !12975)
!15387 = !DILocation(line: 1037, column: 22, scope: !818, inlinedAt: !12975)
!15388 = !DILocation(line: 627, column: 9, scope: !826, inlinedAt: !12992)
!15389 = !DILocation(line: 971, column: 18, scope: !824, inlinedAt: !12987)
!15390 = !DILocation(line: 1966, column: 41, scope: !820, inlinedAt: !12976)
!15391 = !DILocation(line: 1043, column: 13, scope: !817, inlinedAt: !12975)
!15392 = !DILocation(line: 312, column: 21, scope: !12367)
!15393 = !DILocation(line: 313, column: 36, scope: !12367)
!15394 = !DILocation(line: 313, column: 58, scope: !12367)
!15395 = !DILocation(line: 313, column: 32, scope: !12367)
!15396 = !DILocation(line: 320, column: 42, scope: !12367)
!15397 = !DILocation(line: 320, column: 65, scope: !12367)
!15398 = !DILocation(line: 320, column: 22, scope: !12367)
!15399 = !DILocation(line: 313, column: 62, scope: !12367)
!15400 = !DILocation(line: 3141, column: 37, scope: !12439, inlinedAt: !13326)
!15401 = !DILocation(line: 3141, column: 18, scope: !12439, inlinedAt: !13326)
!15402 = !DILocation(line: 971, column: 18, scope: !12995, inlinedAt: !14652)
!15403 = !DILocation(line: 49, column: 26, scope: !12632, inlinedAt: !14656)
!15404 = !DILocation(line: 1663, column: 9, scope: !854, inlinedAt: !12997)
!15405 = !DILocation(line: 279, column: 16, scope: !861, inlinedAt: !12996)
!15406 = !DILocation(line: 848, column: 1, scope: !862, inlinedAt: !12998)
!15407 = !DILocation(line: 627, column: 28, scope: !863, inlinedAt: !13004)
!15408 = !DILocation(line: 284, column: 13, scope: !859, inlinedAt: !12996)
!15409 = !DILocation(line: 1758, column: 9, scope: !865, inlinedAt: !13009)
!15410 = !DILocation(line: 314, column: 25, scope: !12366)
!15411 = !DILocation(line: 315, column: 30, scope: !12365)
!15412 = !DILocation(line: 848, column: 1, scope: !862, inlinedAt: !13010)
!15413 = !DILocation(line: 317, column: 79, scope: !12367)
!15414 = !DILocation(line: 316, column: 21, scope: !12367)
!15415 = !DILocation(line: 317, column: 36, scope: !12367)
!15416 = !DILocation(line: 317, column: 61, scope: !12367)
!15417 = !DILocation(line: 317, column: 32, scope: !12367)
!15418 = !DILocation(line: 312, column: 17, scope: !12367)
!15419 = !DILocation(line: 316, column: 21, scope: !12366)
!15420 = !DILocation(line: 30, column: 18, scope: !861, inlinedAt: !12996)
!15421 = !DILocation(line: 320, column: 69, scope: !12367)
!15422 = !DILocation(line: 322, column: 20, scope: !12367)
!15423 = !DILocation(line: 329, column: 25, scope: !12367)
!15424 = !DILocation(line: 329, column: 58, scope: !12367)
!15425 = !DILocation(line: 330, column: 25, scope: !12367)
!15426 = !DILocation(line: 328, column: 32, scope: !12367)
!15427 = !DILocation(line: 324, column: 25, scope: !12367)
!15428 = !DILocation(line: 324, column: 60, scope: !12367)
!15429 = !DILocation(line: 325, column: 25, scope: !12367)
!15430 = !DILocation(line: 323, column: 32, scope: !12367)
!15431 = !DILocation(line: 331, column: 21, scope: !12367)
!15432 = !DILocation(line: 322, column: 17, scope: !12367)
!15433 = !DILocation(line: 326, column: 21, scope: !12367)
!15434 = !DILocation(line: 333, column: 13, scope: !12419)
!15435 = !DILocation(line: 848, column: 1, scope: !406, inlinedAt: !13016)
!15436 = !DILocation(line: 647, column: 12, scope: !358, inlinedAt: !13028)
!15437 = !DILocation(line: 1431, column: 17, scope: !394, inlinedAt: !13030)
!15438 = !DILocation(line: 178, column: 14, scope: !362, inlinedAt: !13039)
!15439 = !DILocation(line: 318, column: 9, scope: !361, inlinedAt: !13037)
!15440 = !DILocation(line: 647, column: 12, scope: !358, inlinedAt: !13049)
!15441 = !DILocation(line: 1431, column: 17, scope: !394, inlinedAt: !13051)
!15442 = !DILocation(line: 178, column: 14, scope: !362, inlinedAt: !13060)
!15443 = !DILocation(line: 318, column: 9, scope: !361, inlinedAt: !13058)
!15444 = !DILocation(line: 338, column: 28, scope: !12363)
!15445 = !DILocation(line: 338, column: 38, scope: !12363)
!15446 = !DILocation(line: 1013, column: 19, scope: !12492, inlinedAt: !13514)
!15447 = !DILocation(line: 1013, column: 29, scope: !12492, inlinedAt: !13514)
!15448 = !DILocation(line: 3073, column: 11, scope: !12503, inlinedAt: !13542)
!15449 = !DILocation(line: 0, scope: !12503, inlinedAt: !13542)
!15450 = !DILocation(line: 3073, column: 5, scope: !12503, inlinedAt: !13542)
!15451 = !DILocation(line: 1013, column: 45, scope: !12492, inlinedAt: !13514)
!15452 = !DILocation(line: 338, column: 45, scope: !12363)
!15453 = !DILocation(line: 2741, column: 47, scope: !815, inlinedAt: !13064)
!15454 = !DILocation(line: 3075, column: 34, scope: !12503, inlinedAt: !13542)
!15455 = !DILocation(line: 576, column: 63, scope: !812, inlinedAt: !13066)
!15456 = !DILocation(line: 576, column: 37, scope: !812, inlinedAt: !13066)
!15457 = !DILocation(line: 576, column: 80, scope: !812, inlinedAt: !13066)
!15458 = !DILocation(line: 2742, column: 61, scope: !815, inlinedAt: !13064)
!15459 = !DILocation(line: 1000, column: 22, scope: !12807, inlinedAt: !14672)
!15460 = !DILocation(line: 1033, column: 19, scope: !819, inlinedAt: !13071)
!15461 = !DILocation(line: 632, column: 49, scope: !822, inlinedAt: !13079)
!15462 = !DILocation(line: 1036, column: 12, scope: !818, inlinedAt: !13071)
!15463 = !DILocation(line: 1037, column: 22, scope: !818, inlinedAt: !13071)
!15464 = !DILocation(line: 627, column: 9, scope: !826, inlinedAt: !13088)
!15465 = !DILocation(line: 971, column: 18, scope: !824, inlinedAt: !13083)
!15466 = !DILocation(line: 1966, column: 41, scope: !820, inlinedAt: !13072)
!15467 = !DILocation(line: 1043, column: 13, scope: !817, inlinedAt: !13071)
!15468 = !DILocation(line: 342, column: 26, scope: !12363)
!15469 = !DILocation(line: 342, column: 52, scope: !12363)
!15470 = !DILocation(line: 342, column: 64, scope: !12363)
!15471 = !DILocation(line: 342, column: 22, scope: !12363)
!15472 = !DILocation(line: 342, column: 74, scope: !12363)
!15473 = !DILocation(line: 343, column: 13, scope: !12364)
!15474 = !DILocation(line: 343, column: 13, scope: !12419)
!15475 = !DILocation(line: 349, column: 60, scope: !12361)
!15476 = !DILocation(line: 349, column: 83, scope: !12361)
!15477 = !DILocation(line: 349, column: 56, scope: !12361)
!15478 = !DILocation(line: 349, column: 93, scope: !12361)
!15479 = !DILocation(line: 348, column: 58, scope: !12361)
!15480 = !DILocation(line: 348, column: 76, scope: !12361)
!15481 = !DILocation(line: 348, column: 54, scope: !12361)
!15482 = !DILocation(line: 348, column: 86, scope: !12361)
!15483 = !DILocation(line: 356, column: 44, scope: !12359)
!15484 = !DILocation(line: 357, column: 44, scope: !12359)
!15485 = !DILocation(line: 358, column: 45, scope: !12359)
!15486 = !DILocation(line: 359, column: 46, scope: !12359)
!15487 = !DILocation(line: 360, column: 49, scope: !12359)
!15488 = !DILocation(line: 361, column: 46, scope: !12359)
!15489 = !DILocation(line: 362, column: 49, scope: !12359)
!15490 = !DILocation(line: 363, column: 52, scope: !12359)
!15491 = !DILocation(line: 364, column: 56, scope: !12359)
!15492 = !DILocation(line: 365, column: 59, scope: !12359)
!15493 = !DILocation(line: 366, column: 46, scope: !12359)
!15494 = !DILocation(line: 367, column: 49, scope: !12359)
!15495 = !DILocation(line: 371, column: 25, scope: !12359)
!15496 = !DILocation(line: 372, column: 35, scope: !12359)
!15497 = !DILocation(line: 1000, column: 22, scope: !12493, inlinedAt: !13518)
!15498 = !DILocation(line: 368, column: 50, scope: !12359)
!15499 = !DILocation(line: 369, column: 43, scope: !12359)
!15500 = !DILocation(line: 409, column: 66, scope: !12359)
!15501 = !DILocation(line: 0, scope: !12359)
!15502 = !DILocation(line: 414, column: 22, scope: !12358)
!15503 = !DILocation(line: 417, column: 13, scope: !12360)
!15504 = !DILocation(line: 372, column: 71, scope: !12359)
!15505 = !DILocation(line: 373, column: 30, scope: !12359)
!15506 = !DILocation(line: 627, column: 9, scope: !13095, inlinedAt: !14704)
!15507 = !DILocation(line: 1912, column: 92, scope: !13093, inlinedAt: !14692)
!15508 = !DILocation(line: 307, column: 16, scope: !13102, inlinedAt: !14719)
!15509 = !DILocation(line: 307, column: 21, scope: !13102, inlinedAt: !14719)
!15510 = !DILocation(line: 374, column: 32, scope: !12357)
!15511 = !DILocation(line: 386, column: 29, scope: !12359)
!15512 = !DILocation(line: 378, column: 33, scope: !12357)
!15513 = !DILocation(line: 27, column: 30, scope: !12534, inlinedAt: !13725)
!15514 = !DILocation(line: 383, column: 33, scope: !12357)
!15515 = !DILocation(line: 377, column: 51, scope: !12357)
!15516 = !DILocation(line: 384, column: 29, scope: !12357)
!15517 = !DILocation(line: 377, column: 40, scope: !12357)
!15518 = !DILocation(line: 1000, column: 22, scope: !13104, inlinedAt: !14729)
!15519 = !DILocation(line: 1033, column: 19, scope: !13109, inlinedAt: !13110)
!15520 = !DILocation(line: 632, column: 49, scope: !13115, inlinedAt: !13118)
!15521 = !DILocation(line: 1036, column: 12, scope: !13108, inlinedAt: !13110)
!15522 = !DILocation(line: 1037, column: 22, scope: !13108, inlinedAt: !13110)
!15523 = !DILocation(line: 627, column: 9, scope: !13125, inlinedAt: !13130)
!15524 = !DILocation(line: 971, column: 18, scope: !13121, inlinedAt: !13122)
!15525 = !DILocation(line: 1966, column: 41, scope: !13132, inlinedAt: !13133)
!15526 = !DILocation(line: 1043, column: 13, scope: !13107, inlinedAt: !13110)
!15527 = !DILocation(line: 388, column: 43, scope: !12359)
!15528 = !DILocation(line: 388, column: 30, scope: !12359)
!15529 = !DILocation(line: 3136, column: 19, scope: !12879, inlinedAt: !14777)
!15530 = !DILocation(line: 3141, column: 37, scope: !12879, inlinedAt: !14777)
!15531 = !DILocation(line: 3141, column: 18, scope: !12879, inlinedAt: !14777)
!15532 = !DILocation(line: 2902, column: 12, scope: !12537, inlinedAt: !13731)
!15533 = !DILocation(line: 2905, column: 13, scope: !12537, inlinedAt: !13731)
!15534 = !DILocation(line: 632, column: 49, scope: !12420, inlinedAt: !13734)
!15535 = !DILocation(line: 2908, column: 46, scope: !12537, inlinedAt: !13731)
!15536 = !DILocation(line: 210, column: 9, scope: !12690, inlinedAt: !14793)
!15537 = !DILocation(line: 627, column: 9, scope: !13095, inlinedAt: !14800)
!15538 = !DILocation(line: 3141, column: 37, scope: !13136, inlinedAt: !14788)
!15539 = !DILocation(line: 3141, column: 18, scope: !13136, inlinedAt: !14788)
!15540 = !DILocation(line: 872, column: 18, scope: !13137, inlinedAt: !14804)
!15541 = !DILocation(line: 1758, column: 9, scope: !13138, inlinedAt: !14808)
!15542 = !DILocation(line: 391, column: 29, scope: !12355)
!15543 = !DILocation(line: 390, column: 32, scope: !12355)
!15544 = !DILocation(line: 403, column: 29, scope: !12356)
!15545 = !DILocation(line: 3141, column: 37, scope: !12430, inlinedAt: !13304)
!15546 = !DILocation(line: 3141, column: 18, scope: !12430, inlinedAt: !13304)
!15547 = !DILocation(line: 971, column: 18, scope: !13139, inlinedAt: !14818)
!15548 = !DILocation(line: 1663, column: 9, scope: !13140, inlinedAt: !13145)
!15549 = !DILocation(line: 279, column: 16, scope: !13143, inlinedAt: !13144)
!15550 = !DILocation(line: 627, column: 28, scope: !13150, inlinedAt: !13151)
!15551 = !DILocation(line: 284, column: 13, scope: !13141, inlinedAt: !13144)
!15552 = !DILocation(line: 1758, column: 9, scope: !13156, inlinedAt: !13157)
!15553 = !DILocation(line: 195, column: 12, scope: !12938, inlinedAt: !14857)
!15554 = !DILocation(line: 627, column: 9, scope: !12942, inlinedAt: !14873)
!15555 = !DILocation(line: 197, column: 27, scope: !12938, inlinedAt: !14857)
!15556 = !DILocation(line: 394, column: 39, scope: !12351)
!15557 = !DILocation(line: 394, column: 33, scope: !12351)
!15558 = !DILocation(line: 397, column: 41, scope: !12350)
!15559 = !DILocation(line: 1912, column: 92, scope: !12940, inlinedAt: !14863)
!15560 = !DILocation(line: 398, column: 37, scope: !12351)
!15561 = !DILocation(line: 848, column: 1, scope: !13158, inlinedAt: !13159)
!15562 = !DILocation(line: 401, column: 29, scope: !12355)
!15563 = !DILocation(line: 417, column: 13, scope: !12359)
!15564 = !DILocation(line: 419, column: 5, scope: !12419)
!15565 = !DILocation(line: 415, column: 35, scope: !12358)
!15566 = !DILocation(line: 415, column: 22, scope: !12358)
!15567 = !DILocation(line: 416, column: 32, scope: !12358)
!15568 = !DILocation(line: 416, column: 39, scope: !12358)
!15569 = !DILocation(line: 416, column: 28, scope: !12358)
!15570 = !DILocation(line: 416, column: 49, scope: !12358)
!15571 = !DILocation(line: 417, column: 13, scope: !12419)
!15572 = distinct !DILexicalBlock(scope: !15573, file: !3971, line: 627, column: 25)
!15573 = distinct !DILexicalBlock(scope: !15574, file: !3971, line: 626, column: 57)
!15574 = distinct !DILexicalBlock(scope: !15575, file: !3971, line: 625, column: 17)
!15575 = distinct !DILexicalBlock(scope: !15576, file: !3971, line: 625, column: 17)
!15576 = distinct !DILexicalBlock(scope: !15579, file: !3971, line: 623, column: 17)
!15577 = distinct !DILexicalBlock(scope: !15578, file: !3971, line: 619, column: 17)
!15578 = distinct !DILexicalBlock(scope: !15579, file: !3971, line: 619, column: 17)
!15579 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 617, column: 13)
!15580 = distinct !DILexicalBlock(scope: !15581, file: !3971, line: 610, column: 21)
!15581 = distinct !DILexicalBlock(scope: !15582, file: !3971, line: 610, column: 21)
!15582 = distinct !DILexicalBlock(scope: !15585, file: !3971, line: 606, column: 21)
!15583 = distinct !DILexicalBlock(scope: !15584, file: !3971, line: 601, column: 17)
!15584 = distinct !DILexicalBlock(scope: !15585, file: !3971, line: 601, column: 17)
!15585 = distinct !DILexicalBlock(scope: !15586, file: !3971, line: 598, column: 17)
!15586 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 595, column: 13)
!15587 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 591, column: 85)
!15588 = distinct !DILexicalBlock(scope: !15589, file: !3971, line: 581, column: 21)
!15589 = distinct !DILexicalBlock(scope: !15590, file: !3971, line: 581, column: 21)
!15590 = distinct !DILexicalBlock(scope: !15594, file: !3971, line: 579, column: 21)
!15591 = distinct !DILexicalBlock(scope: !15592, file: !3971, line: 566, column: 25)
!15592 = distinct !DILexicalBlock(scope: !15593, file: !3971, line: 557, column: 25)
!15593 = distinct !DILexicalBlock(scope: !15594, file: !3971, line: 555, column: 21)
!15594 = distinct !DILexicalBlock(scope: !15597, file: !3971, line: 552, column: 17)
!15595 = distinct !DILexicalBlock(scope: !15596, file: !3971, line: 548, column: 17)
!15596 = distinct !DILexicalBlock(scope: !15597, file: !3971, line: 548, column: 17)
!15597 = distinct !DILexicalBlock(scope: !15599, file: !3971, line: 545, column: 17)
!15598 = distinct !DILexicalBlock(scope: !15599, file: !3971, line: 539, column: 52)
!15599 = distinct !DILexicalBlock(scope: !15600, file: !3971, line: 536, column: 17)
!15600 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 531, column: 13)
!15601 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 528, column: 13)
!15602 = distinct !DILexicalBlock(scope: !15603, file: !3971, line: 521, column: 17)
!15603 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 520, column: 13)
!15604 = distinct !DILexicalBlock(scope: !15605, file: !3971, line: 513, column: 17)
!15605 = distinct !DILexicalBlock(scope: !15612, file: !3971, line: 507, column: 17)
!15606 = distinct !DILexicalBlock(scope: !15607, file: !3971, line: 497, column: 25)
!15607 = distinct !DILexicalBlock(scope: !15608, file: !3971, line: 496, column: 57)
!15608 = distinct !DILexicalBlock(scope: !15611, file: !3971, line: 495, column: 17)
!15609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<tera::parsing::ast::Expression>", scope: !1432, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !16768, templateParams: !1612, identifier: "d4b4108b58304794debac9b3e174ec0b")
!15610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntoIter<tera::parsing::ast::Expression, alloc::alloc::Global>", scope: !3479, file: !1134, size: 256, align: 64, flags: DIFlagPublic, elements: !16766, templateParams: !1724, identifier: "f9a8dfbee0486b7b4d4d97c95c89f8ac")
!15611 = distinct !DILexicalBlock(scope: !15612, file: !3971, line: 495, column: 17)
!15612 = distinct !DILexicalBlock(scope: !15615, file: !3971, line: 493, column: 17)
!15613 = distinct !DILexicalBlock(scope: !15614, file: !3971, line: 489, column: 17)
!15614 = distinct !DILexicalBlock(scope: !15615, file: !3971, line: 489, column: 17)
!15615 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 487, column: 13)
!15616 = distinct !DILexicalBlock(scope: !15621, file: !3971, line: 480, column: 17)
!15617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !15620, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !16774, templateParams: !16776, identifier: "d44bea8c03c07ca929384049f5564964")
!15618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !15620, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !1394, templateParams: !16776, identifier: "55b259d4407d8426bc5e7afd626937ab")
!15619 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !15620, file: !1134, size: 64, align: 64, elements: !16772, templateParams: !1394, identifier: "e0652780e80fc92ec1b0c12d61a27fe0", discriminator: !16777)
!15620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>>", scope: !1571, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !16769, templateParams: !1394, identifier: "4f328e67d2773afcb152bbc37ecb6db6")
!15621 = distinct !DILexicalBlock(scope: !15622, file: !3971, line: 474, column: 17)
!15622 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 472, column: 13)
!15623 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 468, column: 13)
!15624 = distinct !DILexicalBlock(scope: !15625, file: !3971, line: 465, column: 13)
!15625 = distinct !DISubprogram(name: "compile_node", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_node", scope: !753, file: !3971, line: 463, type: !16704, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !16705, retainedNodes: !16758)
!15626 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner8capacityCs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 631, type: !4070, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2121, declaration: !4071, retainedNodes: !16780)
!15627 = distinct !DISubprogram(name: "capacity<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE8capacityBS_", scope: !97, file: !2606, line: 317, type: !4180, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4181, retainedNodes: !16782)
!15628 = distinct !DILexicalBlock(scope: !15634, file: !3498, line: 4077, column: 13)
!15629 = distinct !DISubprogram(name: "into_iter<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBL_", scope: !4172, file: !3498, line: 4065, type: !4174, scopeLine: 4065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, retainedNodes: !16790)
!15630 = distinct !DILexicalBlock(scope: !15629, file: !3498, line: 4066, column: 9)
!15631 = distinct !DILexicalBlock(scope: !15630, file: !3498, line: 4069, column: 13)
!15632 = distinct !DILexicalBlock(scope: !15631, file: !3498, line: 4070, column: 13)
!15633 = distinct !DILexicalBlock(scope: !15632, file: !3498, line: 4071, column: 13)
!15634 = distinct !DILexicalBlock(scope: !15633, file: !3498, line: 4072, column: 13)
!15635 = distinct !DILexicalBlock(scope: !15643, file: !3971, line: 433, column: 9)
!15636 = distinct !DILexicalBlock(scope: !15637, file: !3971, line: 429, column: 9)
!15637 = distinct !DILexicalBlock(scope: !15643, file: !3971, line: 429, column: 9)
!15638 = distinct !DISubprogram(name: "compile_block", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block", scope: !753, file: !3971, line: 421, type: !16792, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !16793, retainedNodes: !16805)
!15639 = distinct !DILexicalBlock(scope: !15638, file: !3971, line: 422, column: 9)
!15640 = distinct !DILexicalBlock(scope: !15639, file: !3971, line: 423, column: 9)
!15641 = distinct !DILexicalBlock(scope: !15640, file: !3971, line: 425, column: 9)
!15642 = distinct !DILexicalBlock(scope: !15641, file: !3971, line: 426, column: 9)
!15643 = distinct !DILexicalBlock(scope: !15642, file: !3971, line: 427, column: 9)
!15644 = distinct !DILocation(line: 529, column: 22, scope: !15601)
!15645 = distinct !DILocation(line: 429, column: 21, scope: !15643, inlinedAt: !15644)
!15646 = distinct !DILocation(line: 4077, column: 30, scope: !15634, inlinedAt: !15645)
!15647 = distinct !DILocation(line: 318, column: 20, scope: !15627, inlinedAt: !15646)
!15648 = distinct !DILocation(line: 631, column: 23, scope: !15626, inlinedAt: !15647)
!15649 = distinct !DILocation(line: 317, column: 34, scope: !15627, inlinedAt: !15646)
!15650 = distinct !DISubprogram(name: "len<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE3lenBK_", scope: !98, file: !3498, line: 3135, type: !4184, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4185, retainedNodes: !16807)
!15651 = distinct !DILocation(line: 4075, column: 30, scope: !15633, inlinedAt: !15645)
!15652 = distinct !DILocation(line: 3135, column: 22, scope: !15650, inlinedAt: !15651)
!15653 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner8capacityCs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 631, type: !4070, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2121, declaration: !4071, retainedNodes: !16810)
!15654 = distinct !DILexicalBlock(scope: !15667, file: !3498, line: 4077, column: 13)
!15655 = distinct !DILexicalBlock(scope: !15656, file: !3498, line: 4077, column: 13)
!15656 = distinct !DILexicalBlock(scope: !15657, file: !3498, line: 4072, column: 13)
!15657 = distinct !DILexicalBlock(scope: !15658, file: !3498, line: 4071, column: 13)
!15658 = distinct !DILexicalBlock(scope: !15659, file: !3498, line: 4070, column: 13)
!15659 = distinct !DILexicalBlock(scope: !15661, file: !3498, line: 4069, column: 13)
!15660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<alloc::vec::Vec<tera::parsing::ast::Expression, alloc::alloc::Global>>", scope: !1566, file: !1134, size: 192, align: 64, flags: DIFlagPublic, elements: !16835, templateParams: !2849, identifier: "4fdbaf2da31721a4c48cc75de7e8c785")
!15661 = distinct !DILexicalBlock(scope: !15662, file: !3498, line: 4066, column: 9)
!15662 = distinct !DISubprogram(name: "into_iter<tera::parsing::ast::Expression, alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBL_", scope: !4172, file: !3498, line: 4065, type: !16818, scopeLine: 4065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1724, retainedNodes: !16833)
!15663 = distinct !DILexicalBlock(scope: !15662, file: !3498, line: 4066, column: 9)
!15664 = distinct !DILexicalBlock(scope: !15663, file: !3498, line: 4069, column: 13)
!15665 = distinct !DILexicalBlock(scope: !15664, file: !3498, line: 4070, column: 13)
!15666 = distinct !DILexicalBlock(scope: !15665, file: !3498, line: 4071, column: 13)
!15667 = distinct !DILexicalBlock(scope: !15666, file: !3498, line: 4072, column: 13)
!15668 = distinct !DISubprogram(name: "capacity<tera::parsing::ast::Expression, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE8capacityBS_", scope: !69, file: !2606, line: 317, type: !16838, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1724, declaration: !16839, retainedNodes: !16841)
!15669 = distinct !DISubprogram(name: "len<tera::parsing::ast::Expression, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE3lenBK_", scope: !70, file: !3498, line: 3135, type: !16846, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1724, declaration: !16847, retainedNodes: !16848)
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
!15701 = distinct !DISubprogram(name: "into_iter<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBL_", scope: !4172, file: !3498, line: 4065, type: !4174, scopeLine: 4065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, retainedNodes: !16895)
!15702 = distinct !DILexicalBlock(scope: !15701, file: !3498, line: 4066, column: 9)
!15703 = distinct !DILexicalBlock(scope: !15702, file: !3498, line: 4069, column: 13)
!15704 = distinct !DILexicalBlock(scope: !15703, file: !3498, line: 4070, column: 13)
!15705 = distinct !DILexicalBlock(scope: !15704, file: !3498, line: 4071, column: 13)
!15706 = distinct !DILexicalBlock(scope: !15705, file: !3498, line: 4072, column: 13)
!15707 = distinct !DISubprogram(name: "capacity<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE8capacityBS_", scope: !97, file: !2606, line: 317, type: !4180, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4181, retainedNodes: !16897)
!15708 = distinct !DISubprogram(name: "len<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE3lenBK_", scope: !98, file: !3498, line: 3135, type: !4184, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1777, declaration: !4185, retainedNodes: !16900)
!15709 = distinct !DISubprogram(name: "insert<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB5_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringE6insertCs5yXxDE1DkoT_4tera", scope: !737, file: !4193, line: 1034, type: !4196, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4015, declaration: !4197, retainedNodes: !16968)
!15710 = distinct !DISubprogram(name: "insert<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsbDKHzkXHCUM_9hashbrown3setINtB5_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs5yXxDE1DkoT_4tera", scope: !736, file: !4198, line: 1074, type: !4201, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4015, declaration: !4202, retainedNodes: !16973)
!15711 = distinct !DISubprogram(name: "entry<alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE5entryB20_", scope: !742, file: !4203, line: 1012, type: !4206, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4032, declaration: !4235, retainedNodes: !16986)
!15712 = distinct !DISubprogram(name: "push<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB7_6string6StringEE4pushCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 999, type: !4241, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4242, retainedNodes: !17014)
!15713 = distinct !DISubprogram(name: "push<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE4pushBL_", scope: !414, file: !3498, line: 999, type: !4237, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4238, retainedNodes: !17019)
!15714 = distinct !DILexicalBlock(scope: !15720, file: !4203, line: 3075, column: 9)
!15715 = distinct !DILexicalBlock(scope: !15720, file: !4203, line: 3074, column: 9)
!15716 = distinct !DILexicalBlock(scope: !15720, file: !4203, line: 3075, column: 9)
!15717 = distinct !DILexicalBlock(scope: !15720, file: !4203, line: 3074, column: 9)
!15718 = distinct !DILexicalBlock(scope: !15720, file: !4203, line: 3075, column: 9)
!15719 = distinct !DILexicalBlock(scope: !15720, file: !4203, line: 3074, column: 9)
!15720 = distinct !DISubprogram(name: "map_entry<alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RINvNtNtNtCs5Xr050g3D4S_3std11collections4hash3map9map_entryNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB10_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtB10_5alloc6GlobalEB1T_", scope: !1977, file: !4203, line: 3070, type: !4253, scopeLine: 3070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !4221, retainedNodes: !17053)
!15721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !17065, file: !1134, align: 8, elements: !1394, identifier: "a956736e1c246f517ecba0e7a0fd65a6")
!15722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !15725, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !17071, templateParams: !17073, identifier: "45bac140b346bb774a9e6d55fa5400c0")
!15723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !15725, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !1394, templateParams: !17073, identifier: "3b9a829253dac85cb55a594cdfd6a4b")
!15724 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !15725, file: !1134, size: 64, align: 64, elements: !17069, templateParams: !1394, identifier: "a8cc92a196b4ff742684aa3e65c33905", discriminator: !17074)
!15725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&tera::parsing::ast::Expression>", scope: !1571, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !17066, templateParams: !1394, identifier: "5e6b618c8f58bd6f23b04e01337d847f")
!15726 = distinct !DILexicalBlock(scope: !15727, file: !3959, line: 1165, column: 13)
!15727 = distinct !DISubprogram(name: "map<&tera::parsing::ast::Expression, tera::utils::Span, tera::parsing::compiler::{impl#0}::compile_node::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE3mapNtNtBP_5utils4SpanNCNvMNtBN_8compilerNtB1Y_8Compiler12compile_node0EBP_", scope: !15725, file: !3959, line: 1160, type: !17076, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !17079, declaration: !17080, retainedNodes: !17083)
!15728 = distinct !DISubprogram(name: "pop<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE3popBK_", scope: !414, file: !3498, line: 2901, type: !4073, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4074, retainedNodes: !17097)
!15729 = distinct !DISubprogram(name: "capacity<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8capacityBK_", scope: !414, file: !3498, line: 1444, type: !4077, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4078, retainedNodes: !17099)
!15730 = distinct !DISubprogram(name: "capacity<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8capacityBS_", scope: !413, file: !2606, line: 317, type: !4081, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2898, declaration: !4082, retainedNodes: !17101)
!15731 = distinct !DISubprogram(name: "pop<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB6_6string6StringEE3popCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 2901, type: !4277, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4285, retainedNodes: !17111)
!15732 = distinct !DISubprogram(name: "capacity<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB6_6string6StringEE8capacityCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 1444, type: !4288, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4289, retainedNodes: !17113)
!15733 = distinct !DISubprogram(name: "capacity<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB7_6string6StringEE8capacityCs5yXxDE1DkoT_4tera", scope: !730, file: !2606, line: 317, type: !4292, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3993, declaration: !4293, retainedNodes: !17115)
!15734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}", scope: !17065, file: !1134, align: 8, elements: !1394, identifier: "f90d16aa58ee9a85458729842007f285")
!15735 = distinct !DILexicalBlock(scope: !15736, file: !3959, line: 1165, column: 13)
!15736 = distinct !DISubprogram(name: "map<&tera::parsing::ast::Expression, tera::utils::Span, tera::parsing::compiler::{impl#0}::compile_node::{closure_env#1}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE3mapNtNtBP_5utils4SpanNCNvMNtBN_8compilerNtB1Y_8Compiler12compile_nodes_0EBP_", scope: !15725, file: !3959, line: 1160, type: !17126, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !17128, declaration: !17129, retainedNodes: !17132)
!15737 = distinct !DISubprogram(name: "into_parts<alloc::string::String>", linkageName: "_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtCsgCecv3eZDcN_5alloc6string6StringE10into_partsB4_", scope: !83, file: !3875, line: 30, type: !17142, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1619, declaration: !17143, retainedNodes: !17144)
!15738 = distinct !DILexicalBlock(scope: !15740, file: !3024, line: 2039, column: 9)
!15739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<alloc::string::String>", scope: !2117, file: !1134, size: 64, align: 64, flags: DIFlagPublic, elements: !17156, templateParams: !1619, identifier: "bc54c48911b0e224486b22bfd1fff8ee")
!15740 = distinct !DILexicalBlock(scope: !15741, file: !3024, line: 2034, column: 9)
!15741 = distinct !DISubprogram(name: "drop<alloc::string::String, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera", scope: !3027, file: !3024, line: 2031, type: !17150, scopeLine: 2031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !2810, retainedNodes: !17153)
!15742 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate", scope: !2653, file: !2650, line: 559, type: !2660, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, retainedNodes: !17164)
!15743 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc5allocNtB5_6Global15deallocate_impl", scope: !3, file: !2650, line: 441, type: !2660, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !2661, retainedNodes: !17170)
!15744 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc5allocNtB5_6Global23deallocate_impl_runtime", scope: !3, file: !2650, line: 317, type: !2667, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, declaration: !2668, retainedNodes: !17175)
!15745 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgCecv3eZDcN_5alloc5alloc15dealloc_nonnull", scope: !1406, file: !2650, line: 176, type: !2667, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !1394, retainedNodes: !17180)
!15746 = distinct !{!15746, i1 false, !"_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block"}
!15747 = distinct !{!15747, !15746, !"_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block: argument 0"}
!15748 = distinct !{!15748, !15746, !"_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler13compile_block: argument 1"}
!15749 = distinct !DILocation(line: 0, scope: !15638, inlinedAt: !15644)
!15750 = distinct !DILocation(line: 421, column: 33, scope: !15638, inlinedAt: !15644)
!15751 = distinct !DILocation(line: 422, column: 14, scope: !15639, inlinedAt: !15644)
!15752 = distinct !DILocation(line: 425, column: 13, scope: !15641, inlinedAt: !15644)
!15753 = distinct !DILocation(line: 426, column: 13, scope: !15642, inlinedAt: !15644)
!15754 = distinct !DISubprogram(name: "replace<tera::parsing::instructions::Chunk>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3mem7replaceNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEBF_", scope: !1235, file: !17190, line: 961, type: !17193, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, templateParams: !3262, retainedNodes: !17195)
!15755 = distinct !DILocation(line: 426, column: 28, scope: !15641, inlinedAt: !15644)
!15756 = distinct !DILocation(line: 961, column: 39, scope: !15754, inlinedAt: !15755)
!15757 = distinct !DILocation(line: 427, column: 13, scope: !15643, inlinedAt: !15644)
!15758 = distinct !DILocation(line: 429, column: 21, scope: !15637, inlinedAt: !15644)
!15759 = distinct !DILocation(line: 429, column: 13, scope: !15636, inlinedAt: !15644)
end_hunk_1
