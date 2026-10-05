Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.02?download=true
inline.NumInlined: 1006
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection11recv_singleCslusEaBCZKLp_13quiche_client:bb.a
  %.sroa.4533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.6535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 13648
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 14041
  br label %bb.gb, !dbg !20542

bb.fo:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !20543
  %i.ro = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !20544
  %.sroa.643.0..sroa_idx.val1295 = load ptr, ptr %i.ro, align 8, !dbg !20544, !nonnull !2431, !noundef !2431
  %i.rp = getelementptr inbounds nuw i8, ptr %i.cp, i64 40, !dbg !20544
  %.sroa.643.0..sroa_idx.val1296 = load i64, ptr %i.rp, align 8, !dbg !20544, !noundef !2431
  invoke fastcc void @_RNvXsd_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aa, ptr nonnull %.sroa.643.0..sroa_idx.val1295, i64 %.sroa.643.0..sroa_idx.val1296)
          to label %bb.fp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20544

bb.fp:                                            ; preds = %bb.fo
  %i.rq = invoke fastcc i64 @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection16set_initial_dcidCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa, i128 noundef 0, i128 undef, i64 noundef %.sroa.0227.0)
          to label %._crit_edge1859 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20545 ; 2 uses

._crit_edge1859:                                  ; preds = %bb.fp
    #dbg_value(i64 %i.rq, !19039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19563)
    #dbg_value(i64 undef, !19039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19563)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !20546
  %.not1137 = icmp eq i64 %i.rq, -1, !dbg !20547
  br i1 %.not1137, label %bb.fr, label %bb.fq, !dbg !20548

bb.fq:                                            ; preds = %._crit_edge1859
    #dbg_value(i64 %i.rq, !18146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19564)
    #dbg_value(i64 %i.rq, !18989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19567)
    #dbg_value(i64 undef, !18146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19564)
    #dbg_value(i64 undef, !18989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19567)
    #dbg_value(i64 %i.rq, !19011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19568)
    #dbg_value(i64 undef, !19011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19568)
  store i64 %i.rq, ptr %0, align 8, !dbg !20549
  br label %bb.fm, !dbg !20539

bb.fr:                                            ; preds = %._crit_edge1859
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 15522, !dbg !20550
  %i.rs = load i8, ptr %i.rr, align 2, !dbg !20550, !range !7366, !noundef !2431
  %i.rt = trunc nuw i8 %i.rs to i1, !dbg !20550
  br i1 %i.rt, label %.sink.split, label %bb.fs, !dbg !20550

bb.fs:                                            ; preds = %bb.fr
  %.val1257 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !20551, !nonnull !2431, !noundef !2431
  %.val1258 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !20551, !noundef !2431 ; 6 uses
    #dbg_value(ptr %.val1257, !18733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19569)
    #dbg_value(ptr %.val1257, !18728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19570)
    #dbg_value(ptr %.val1257, !18736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19571)
    #dbg_value(i64 %.val1258, !18733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19569)
    #dbg_value(i64 %.val1258, !18728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19570)
    #dbg_value(i64 %.val1258, !18736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19571)
    #dbg_value(i64 %.val1258, !18739, !DIExpression(), !19572)
    #dbg_value(i64 %.val1258, !18745, !DIExpression(), !19573)
    #dbg_value(i64 %.val1258, !18750, !DIExpression(), !19574)
    #dbg_value(i64 %.val1258, !19172, !DIExpression(), !19577)
    #dbg_value(i64 %.val1258, !19178, !DIExpression(), !19580)
    #dbg_value(i64 %.val1258, !18755, !DIExpression(), !19581)
    #dbg_value(i64 %.val1258, !18766, !DIExpression(), !18888)
    #dbg_value(i64 1, !18756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19581)
    #dbg_value(i64 1, !18767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18888)
    #dbg_value(i64 1, !18756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19581)
    #dbg_value(i64 1, !18767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20552
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val1258, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ft unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20552

bb.ft:                                            ; preds = %bb.fs
  %i.ru = load i64, ptr %i.b, align 8, !dbg !20552, !range !2896, !noundef !2431
  %i.rv = trunc nuw i64 %i.ru to i1, !dbg !20553
  %i.rw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !19581
  %i.rx = load i64, ptr %i.rw, align 8, !dbg !19581, !range !8171, !noundef !2431 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !19581 ; 2 uses
  br i1 %i.rv, label %bb.fu, label %bb.fv, !dbg !20553, !prof !7439

bb.fu:                                            ; preds = %bb.ft
  %i.rz = load i64, ptr %i.ry, align 8, !dbg !20554
    #dbg_value(i64 %i.rx, !18760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19582)
    #dbg_value(i64 %i.rz, !18760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19582)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.rx, i64 %i.rz) #29
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20555

bb.fv:                                            ; preds = %bb.ft
  %i.sa = load ptr, ptr %i.ry, align 8, !dbg !20556, !nonnull !2431, !noundef !2431 ; 3 uses
    #dbg_value(i64 %i.rx, !18759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19583)
    #dbg_value(ptr %i.sa, !18759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19583)
    #dbg_value(ptr poison, !18765, !DIExpression(), !19584)
  %i.sb = icmp ule i64 %.val1258, %i.rx, !dbg !20557
    #dbg_value(i1 true, !19198, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19586)
  call void @llvm.assume(i1 %i.sb), !dbg !20558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20559
    #dbg_value(i64 %i.rx, !18740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19587)
    #dbg_value(ptr %i.sa, !18740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19587)
    #dbg_value(i64 0, !18740, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19587)
  %.not1138 = icmp eq i64 %.val1258, 0, !dbg !20560
  br i1 %.not1138, label %bb.fx, label %bb.fw, !dbg !20560

bb.fw:                                            ; preds = %bb.fv
    #dbg_value(ptr %.val1257, !19173, !DIExpression(), !19577)
    #dbg_value(ptr %.val1257, !19179, !DIExpression(), !19580)
    #dbg_value(ptr %i.sa, !19174, !DIExpression(), !19577)
    #dbg_value(ptr %i.sa, !19180, !DIExpression(), !19580)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sa, ptr nonnull align 1 %.val1257, i64 %.val1258, i1 false), !dbg !20561
    #dbg_value(i64 %.val1258, !18740, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19587)
  br label %bb.fx, !dbg !20562

bb.fx:                                            ; preds = %bb.fv, %bb.fw
    #dbg_value(i64 %.val1258, !18740, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19587)
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !20563 ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sc)
          to label %bb.fz unwind label %bb.fy, !dbg !20563

bb.fy:                                            ; preds = %bb.fx
  %i.sd = landingpad { ptr, i32 }
          cleanup
  store i64 %i.rx, ptr %i.sc, align 16, !dbg !20563
  %.sroa.51430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !20563
  store ptr %i.sa, ptr %.sroa.51430.0..sroa_idx, align 8, !dbg !20563
  %.sroa.61433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352, !dbg !20563
  store i64 %.val1258, ptr %.sroa.61433.0..sroa_idx, align 16, !dbg !20563
  br label %.loopexit.split-lp, !dbg !20563

bb.fz:                                            ; preds = %bb.fx
  store i64 %i.rx, ptr %i.sc, align 16, !dbg !20563
  %.sroa.51430.0..sroa_idx1431 = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !20563
  store ptr %i.sa, ptr %.sroa.51430.0..sroa_idx1431, align 8, !dbg !20563
  %.sroa.61433.0..sroa_idx1434 = getelementptr inbounds nuw i8, ptr %1, i64 352, !dbg !20563
  store i64 %.val1258, ptr %.sroa.61433.0..sroa_idx1434, align 16, !dbg !20563
    #dbg_value(ptr %1, !19036, !DIExpression(), !17595)
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 14128, !dbg !20564
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !20565
  %i.sg = load i8, ptr %i.eg, align 1, !dbg !20566, !range !7366, !alias.scope !19588, !noundef !2431
  %i.sh = trunc nuw i8 %i.sg to i1, !dbg !20566
  %i.si = invoke { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake25set_quic_transport_params(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.se, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(256) %i.sf, i1 noundef zeroext %i.sh)
          to label %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection23encode_transport_paramsCslusEaBCZKLp_13quiche_client.exit1338 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20567 ; 2 uses

_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection23encode_transport_paramsCslusEaBCZKLp_13quiche_client.exit1338: ; preds = %bb.fz
  %i.sj = extractvalue { i64, i64 } %i.si, 0, !dbg !19589 ; 2 uses
    #dbg_value(i64 %i.sj, !19039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19590)
    #dbg_value(i64 poison, !19039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19590)
  %.not1139 = icmp eq i64 %i.sj, -1, !dbg !20568
  br i1 %.not1139, label %.sink.split, label %bb.ga, !dbg !20569

bb.ga:                                            ; preds = %_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection23encode_transport_paramsCslusEaBCZKLp_13quiche_client.exit1338
  %i.sk = extractvalue { i64, i64 } %i.si, 1, !dbg !19589
    #dbg_value(i64 %i.sk, !19039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19590)
    #dbg_value(i64 %i.sj, !18148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19591)
    #dbg_value(i64 %i.sj, !18989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19594)
    #dbg_value(i64 %i.sk, !18148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19591)
    #dbg_value(i64 %i.sk, !18989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19594)
    #dbg_value(i64 %i.sj, !19012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19595)
    #dbg_value(i64 %i.sk, !19012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19595)
  store i64 %i.sj, ptr %0, align 8, !dbg !20570
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20570
  store i64 %i.sk, ptr %i.sl, align 8, !dbg !20570
  br label %bb.fm, !dbg !20539

bb.gb:                                            ; preds = %.lr.ph, %bb.gs
  %.sroa.0283.01728 = phi i8 [ 0, %.lr.ph ], [ %i.tc, %bb.gs ] ; 4 uses
  %.sroa.0284.01727 = phi i1 [ true, %.lr.ph ], [ %i.td, %bb.gs ]
    #dbg_value(i8 %.sroa.0283.01728, !19553, !DIExpression(), !19558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !20571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !18284
  %i.sm = load i8, ptr %i.ff, align 1, !dbg !20572, !range !7402, !noundef !2431
  invoke void @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame10from_bytes(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, i8 noundef %i.sm)
          to label %bb.gc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !18284

.loopexit1693:                                    ; preds = %bb.gs, %bb.fn, %bb.gr
  %.sroa.4305.0 = phi i64 [ %i.tg, %bb.gr ], [ undef, %bb.fn ], [ undef, %bb.gs ], !dbg !19545
  %.sroa.0303.0 = phi i64 [ %i.tf, %bb.gr ], [ -1, %bb.fn ], [ -1, %bb.gs ], !dbg !19545 ; 2 uses
  %.sroa.0284.1 = phi i1 [ %i.td, %bb.gr ], [ true, %bb.fn ], [ %i.td, %bb.gs ], !dbg !20573
  %.sroa.0283.1 = phi i8 [ %i.tc, %bb.gr ], [ 0, %bb.fn ], [ %i.tc, %bb.gs ], !dbg !19444
    #dbg_value(i8 %.sroa.0283.1, !19553, !DIExpression(), !19558)
    #dbg_value(i8 %.sroa.0283.1, !19546, !DIExpression(), !19552)
    #dbg_value(i8 %.sroa.0283.1, !18150, !DIExpression(), !19545)
    #dbg_value(i8 poison, !18152, !DIExpression(), !19560)
    #dbg_value(i64 %.sroa.0303.0, !18151, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19559)
    #dbg_value(i64 %.sroa.4305.0, !18151, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19559)
  %i.sn = invoke noundef i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef 0, i8 13)
          to label %bb.gt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20574 ; 2 uses

bb.gc:                                            ; preds = %bb.gb
  %i.so = load i64, ptr %i.y, align 8, !dbg !20575, !range !8617, !noundef !2431 ; 2 uses
  %i.sp = icmp eq i64 %i.so, -1, !dbg !20575
  %i.sq = load <2 x i64>, ptr %.sroa.4533.0..sroa_idx, align 8, !dbg !20576 ; 3 uses
  br i1 %i.sp, label %bb.gd, label %bb.ge, !dbg !20577

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !20578
    #dbg_value(i64 poison, !18154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19596)
    #dbg_value(i64 poison, !18989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19599)
    #dbg_value(i64 poison, !18154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19596)
    #dbg_value(i64 poison, !18989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19599)
    #dbg_value(i64 poison, !19013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19600)
    #dbg_value(i64 poison, !19013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19600)
  %i.sr = extractelement <2 x i64> %i.sq, i64 0, !dbg !20579
  store i64 %i.sr, ptr %0, align 8, !dbg !20579
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20579
  %i.st = extractelement <2 x i64> %i.sq, i64 1, !dbg !20579
    #dbg_value(i64 %i.st, !18989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19599)
    #dbg_value(i64 %i.st, !18154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19596)
    #dbg_value(i64 %i.st, !19013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19600)
  store i64 %i.st, ptr %i.ss, align 8, !dbg !20579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !20580
  br label %bb.fm, !dbg !20581

bb.ge:                                            ; preds = %bb.gc
    #dbg_value(i64 %i.so, !18280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19602)
    #dbg_value(i64 poison, !18280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19602)
    #dbg_value(i64 poison, !18280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19602)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6298.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6535.0..sroa_idx, i64 104, i1 false), !dbg !20582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !20578
    #dbg_value(i64 %i.so, !18155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19603)
    #dbg_value(i64 poison, !18155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19603)
    #dbg_value(i64 poison, !18155, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19603)
  store i64 %i.so, ptr %i.z, align 8, !dbg !18411
  store <2 x i64> %i.sq, ptr %.sroa.4296.0..sroa_idx, align 8, !dbg !18411
  %i.su = invoke noundef i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef 0, i8 13)
          to label %bb.gg unwind label %bb.mx, !dbg !20583 ; 2 uses

bb.gf:                                            ; preds = %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame7probing.exit
  %lpad.thr_comm.split-lp1554 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp, !dbg !20580

bb.gg:                                            ; preds = %bb.ge
    #dbg_value(ptr poison, !19503, !DIExpression(), !19606)
    #dbg_value(ptr %1, !19504, !DIExpression(DW_OP_plus_uconst, 14041, DW_OP_stack_value), !19607)
  %i.sv = load i8, ptr %i.rn, align 1, !dbg !20584, !range !8018, !noundef !2431
  switch i8 %i.sv, label %default.unreachable1825 [
    i8 0, label %bb.gh
    i8 1, label %bb.gi
    i8 2, label %bb.gj
  ], !dbg !20585

bb.gh:                                            ; preds = %bb.gg
  %i.sw = icmp eq i8 %i.su, 0, !dbg !20585
  br i1 %i.sw, label %bb.gj, label %bb.gk, !dbg !20583

bb.gi:                                            ; preds = %bb.gg
  %i.sx = icmp eq i8 %i.su, 2, !dbg !20585
  br i1 %i.sx, label %bb.gk, label %bb.gj, !dbg !20585

bb.gj:                                            ; preds = %bb.gi, %bb.gg, %bb.gh
  %i.sy = load i64, ptr %i.rm, align 16, !dbg !20586, !range !3339, !noundef !2431
  %.not1141 = icmp eq i64 %i.sy, -1, !dbg !20586
  br i1 %.not1141, label %bb.gk, label %bb.gl, !dbg !20587

bb.gk:                                            ; preds = %bb.gi, %bb.gh, %bb.gn, %bb.gj
  %.val1299 = load i64, ptr %i.z, align 8, !dbg !20588, !range !7112, !noundef !2431 ; 3 uses
    #dbg_value(ptr poison, !19609, !DIExpression(), !17600)
  %i.sz = icmp ne i64 %.val1299, 4, !dbg !20589
  call void @llvm.assume(i1 %i.sz), !dbg !20589
  %i.ta = add nsw i64 %.val1299, -2, !dbg !20589
  %.inv.i = icmp samesign ult i64 %.val1299, 2, !dbg !20589
  %i.tb = select i1 %.inv.i, i64 2, i64 %i.ta, !dbg !20589 ; 2 uses
  switch i64 %i.tb, label %bb.go [
    i64 0, label %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit
    i64 2, label %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit
    i64 22, label %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit
    i64 23, label %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit
  ], !dbg !20590

bb.gl:                                            ; preds = %bb.gj
    #dbg_value(ptr %1, !18156, !DIExpression(DW_OP_plus_uconst, 13648, DW_OP_stack_value), !19615)
    #dbg_value(ptr %i.bb, !18600, !DIExpression(), !19616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !20591
  invoke void @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame7to_qlog(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.z)
          to label %bb.gm unwind label %bb.mx, !dbg !20592

bb.gm:                                            ; preds = %bb.gl
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameE8push_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.x)
          to label %bb.gn unwind label %bb.mx, !dbg !20593

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !20594
  br label %bb.gk, !dbg !20595

bb.go:                                            ; preds = %bb.gk
  br label %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit, !dbg !20596

_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit: ; preds = %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.go
  %i.tc = phi i8 [ 1, %bb.go ], [ %.sroa.0283.01728, %bb.gk ], [ %.sroa.0283.01728, %bb.gk ], [ %.sroa.0283.01728, %bb.gk ], [ %.sroa.0283.01728, %bb.gk ], !dbg !20596 ; 3 uses
    #dbg_value(i8 %i.tc, !19553, !DIExpression(), !19558)
    #dbg_value(i8 %i.tc, !19546, !DIExpression(), !19552)
    #dbg_value(i8 %i.tc, !18150, !DIExpression(), !19545)
    #dbg_value(ptr poison, !19617, !DIExpression(), !17603)
  switch i64 %i.tb, label %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame7probing.exit [
    i64 0, label %bb.gp
    i64 18, label %bb.gp
    i64 20, label %bb.gp
    i64 21, label %bb.gp
  ], !dbg !20597

bb.gp:                                            ; preds = %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit, %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit, %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit, %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit
  br label %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame7probing.exit, !dbg !20598

_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame7probing.exit: ; preds = %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit, %bb.gp
  %i.td = phi i1 [ %.sroa.0284.01727, %bb.gp ], [ false, %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame13ack_eliciting.exit ], !dbg !20598 ; 3 uses
    #dbg_value(i8 poison, !18152, !DIExpression(), !19560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !20599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 128, i1 false), !dbg !20599
  %i.te = invoke fastcc { i64, i64 } @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection13process_frameCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 16 dereferenceable(15552) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cp, i64 noundef %.sroa.0227.0, i8 noundef %.sroa.51409.8.extract.trunc1494, i64 noundef %i.cs, i32 noundef %i.ct)
          to label %bb.gq unwind label %bb.gf, !dbg !20600 ; 2 uses

bb.gq:                                            ; preds = %_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame7probing.exit
  %i.tf = extractvalue { i64, i64 } %i.te, 0, !dbg !20601 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !20602
  %.not1142 = icmp eq i64 %i.tf, -1, !dbg !20601
  br i1 %.not1142, label %bb.gs, label %bb.gr, !dbg !20603

bb.gr:                                            ; preds = %bb.gq
  %i.tg = extractvalue { i64, i64 } %i.te, 1, !dbg !20601
    #dbg_value(i64 %i.tf, !18157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19620)
    #dbg_value(i64 %i.tg, !18157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19620)
    #dbg_value(i64 %i.tf, !18151, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19559)
    #dbg_value(i64 %i.tg, !18151, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19559)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !20580
  br label %.loopexit1693, !dbg !20581

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !20580
    #dbg_value(i8 %i.tc, !19553, !DIExpression(), !19558)
    #dbg_value(i8 %i.tc, !19546, !DIExpression(), !19552)
    #dbg_value(i8 %i.tc, !18150, !DIExpression(), !19545)
    #dbg_value(i8 poison, !18152, !DIExpression(), !19560)
    #dbg_value(ptr %i.au, !19431, !DIExpression(), !19561)
  %i.th = load i64, ptr %.sroa.4219.0..sroa_idx, align 8, !dbg !20540, !noundef !2431
  %i.ti = load i64, ptr %.sroa.5220.0..sroa_idx, align 8, !dbg !20541, !noundef !2431
  %.not1140 = icmp eq i64 %i.th, %i.ti, !dbg !20542
  br i1 %.not1140, label %.loopexit1693, label %bb.gb, !dbg !20542

bb.gt:                                            ; preds = %.loopexit1693
    #dbg_value(ptr poison, !19503, !DIExpression(), !19623)
    #dbg_value(ptr %1, !19504, !DIExpression(DW_OP_plus_uconst, 14041, DW_OP_stack_value), !19624)
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 13648, !dbg !20604 ; 10 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 14041, !dbg !20604 ; 5 uses
  %i.tl = load i8, ptr %i.tk, align 1, !dbg !20604, !range !8018, !noundef !2431
  switch i8 %i.tl, label %default.unreachable1825 [
    i8 0, label %bb.gu
    i8 1, label %bb.gv
    i8 2, label %bb.gw
  ], !dbg !20605

bb.gu:                                            ; preds = %bb.gt
  %i.tm = icmp eq i8 %i.sn, 0, !dbg !20605
  br i1 %i.tm, label %bb.gw, label %bb.gx, !dbg !20574

bb.gv:                                            ; preds = %bb.gt
  %i.tn = icmp eq i8 %i.sn, 2, !dbg !20605
  br i1 %i.tn, label %bb.gx, label %bb.gw, !dbg !20605

bb.gw:                                            ; preds = %bb.gv, %bb.gt, %bb.gu
  %i.to = load i64, ptr %i.tj, align 16, !dbg !20606, !range !3339, !noundef !2431
  %.not1143 = icmp eq i64 %i.to, -1, !dbg !20606
  br i1 %.not1143, label %bb.gx, label %switch.lookup, !dbg !20607

bb.gx:                                            ; preds = %bb.gv, %bb.gu, %bb.hi, %bb.gw
  %.sroa.0400.5 = phi i8 [ 0, %bb.hi ], [ 1, %bb.gw ], [ 1, %bb.gu ], [ 1, %bb.gv ], !dbg !20356 ; 30 uses
  %i.tp = invoke noundef i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef 0, i8 31)
          to label %bb.hj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20574 ; 2 uses

switch.lookup:                                    ; preds = %bb.gw
    #dbg_value(ptr %i.tj, !18158, !DIExpression(), !19625)
    #dbg_value(ptr %i.cq, !19626, !DIExpression(), !19630)
  %i.tq = load i64, ptr %i.da, align 8, !dbg !20608, !noundef !2431
    #dbg_value(i64 %i.tq, !18159, !DIExpression(), !19631)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !20609
  %i.tr = load i8, ptr %i.ff, align 1, !dbg !20610, !range !7402, !noundef !2431
    #dbg_value(i8 %i.tr, !19632, !DIExpression(), !17607)
  %i.ts = shl nuw nsw i8 %i.tr, 3, !dbg !20611
  %switch.shiftamt = zext nneg i8 %i.ts to i48, !dbg !20611
  %switch.downshift = lshr i48 3320043340800, %switch.shiftamt, !dbg !20611
  %switch.masked = trunc i48 %switch.downshift to i8, !dbg !20611
  %i.tt = load i64, ptr %i.bf, align 8, !dbg !20612, !noundef !2431
    #dbg_value(i64 %i.tt, !19261, !DIExpression(), !19267)
    #dbg_value(i64 %i.tt, !19261, !DIExpression(), !19265)
    #dbg_value(i64 %i.tt, !18092, !DIExpression(), !19260)
  %i.tu = getelementptr inbounds nuw i8, ptr %i.cp, i64 112, !dbg !20613
  %i.tv = load i32, ptr %i.tu, align 8, !dbg !20613, !noundef !2431
  %i.tw = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !20614
  %.sroa.643.0..sroa_idx.val1255 = load ptr, ptr %i.tw, align 8, !dbg !20614, !nonnull !2431, !noundef !2431
  %i.tx = getelementptr inbounds nuw i8, ptr %i.cp, i64 40, !dbg !20614
  %.sroa.643.0..sroa_idx.val1256 = load i64, ptr %i.tx, align 8, !dbg !20614, !noundef !2431
  %.val1253 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !20615, !nonnull !2431, !noundef !2431
  %.val1254 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !20615, !noundef !2431
  invoke void @_RNvMs2_NtNtCs3JBf551F2Kj_4qlog6events4quicNtB5_12PacketHeader9with_type(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.v, i8 noundef %switch.masked, i64 noundef 1, i64 %i.tt, i32 noundef 1, i32 %i.tv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.643.0..sroa_idx.val1255, i64 %.sroa.643.0..sroa_idx.val1256, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val1253, i64 %.val1254)
          to label %bb.gy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20616

bb.gy:                                            ; preds = %switch.lookup
  %i.ty = load i64, ptr %i.bk, align 8, !dbg !20617, !noundef !2431
    #dbg_value(i64 %i.ty, !18072, !DIExpression(), !19075)
    #dbg_value(i64 1, !18161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19634)
    #dbg_value(i64 %i.tq, !18161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19634)
    #dbg_value(i64 1, !18161, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19634)
    #dbg_value(i64 %i.ty, !18161, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19634)
    #dbg_value(ptr null, !18161, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !19634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !20618
  %.sroa.0312.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 216, !dbg !20619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0312.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !dbg !20620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !19638
  store i64 0, ptr %i.t, align 8, !dbg !20621
end_hunk_0
begin_hunk_1_@_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection11send_singleCslusEaBCZKLp_13quiche_client:bb.a
  %.sroa.3.1 = phi i64 [ %i.acm, %bb.hg ], [ undef, %.loopexit2572 ] ; 2 uses
  %.sroa.0281.1 = phi i1 [ %.not1473, %bb.hg ], [ false, %.loopexit2572 ], !dbg !26210 ; 2 uses
  %.sroa.0191.9 = phi i64 [ %.sroa.0191.10, %bb.hg ], [ %.sroa.0191.83026, %.loopexit2572 ], !dbg !26210 ; 2 uses
  %.sroa.0158.6 = phi i8 [ %.sroa.0158.7, %bb.hg ], [ %.sroa.0158.53020, %.loopexit2572 ], !dbg !27944 ; 2 uses
    #dbg_value(i8 %.sroa.0158.6, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0158.6, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.9, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.9, !23785, !DIExpression(), !25922)
    #dbg_value(i8 poison, !23834, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26223)
    #dbg_value(i64 %.sroa.3.1, !23834, !DIExpression(DW_OP_LLVM_fragment, 8, 64), !26223)
    #dbg_value(ptr %i.qc, !26334, !DIExpression(DW_OP_plus_uconst, 368, DW_OP_stack_value), !26350)
  %i.ack = getelementptr inbounds nuw i8, ptr %i.qc, i64 368, !dbg !28119
  %i.acl = load i64, ptr %i.ack, align 16, !dbg !28119, !range !3339, !noundef !2431
  %.not1475 = icmp eq i64 %i.acl, -1, !dbg !28119
  br i1 %.not1475, label %bb.eu, label %bb.hm, !dbg !28120

bb.hb:                                            ; preds = %bb.gz
    #dbg_value(i64 %i.acj, !26351, !DIExpression(), !26356)
    #dbg_value(i64 %i.acj, !26357, !DIExpression(), !26362)
    #dbg_value(i64 %i.acj, !26363, !DIExpression(), !26366)
  %i.acm = call i64 @llvm.bswap.i64(i64 %i.acj), !dbg !28121 ; 2 uses
    #dbg_value(i64 %i.acm, !23859, !DIExpression(), !26367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !dbg !28122
  %i.acn = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !28123
  store i64 %i.acm, ptr %i.acn, align 8, !dbg !28123
  store i64 22, ptr %i.eg, align 8, !dbg !28123
  %i.aco = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.eg)
          to label %bb.hd unwind label %bb.add, !dbg !28124

bb.hc:                                            ; preds = %bb.hk
  %lpad.thr_comm.split-lp2101 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2030, !dbg !28125

bb.hd:                                            ; preds = %bb.hb
  %.not1473 = icmp ule i64 %i.aco, %.sroa.0191.83026, !dbg !28126 ; 2 uses
  br i1 %.not1473, label %bb.hf, label %bb.he, !dbg !28126

bb.he:                                            ; preds = %bb.hd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.eg)
          to label %bb.hg unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28125

bb.hf:                                            ; preds = %bb.hd
  %i.acp = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.eg)
          to label %bb.hh unwind label %bb.add, !dbg !28127

bb.hg:                                            ; preds = %bb.hl, %bb.he
  %.sroa.0191.10 = phi i64 [ %i.acq, %bb.hl ], [ %.sroa.0191.83026, %bb.he ], !dbg !26210
  %.sroa.0158.7 = phi i8 [ 1, %bb.hl ], [ %.sroa.0158.53020, %bb.he ], !dbg !27944
    #dbg_value(i8 %.sroa.0158.7, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0158.7, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.10, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.10, !23785, !DIExpression(), !25922)
    #dbg_value(i8 poison, !23834, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26223)
    #dbg_value(i64 %i.acm, !23834, !DIExpression(DW_OP_LLVM_fragment, 8, 64), !26223)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !28125
  br label %bb.ha, !dbg !28128

bb.hh:                                            ; preds = %bb.hf
  %i.acq = sub i64 %.sroa.0191.83026, %i.acp, !dbg !28129
    #dbg_value(i64 %i.acq, !23785, !DIExpression(), !25922)
    #dbg_value(i64 %i.acq, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %i.acq, !25128, !DIExpression(), !25926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !dbg !28130
  invoke void @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8to_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.eg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %bb.hi unwind label %bb.add, !dbg !28131

bb.hi:                                            ; preds = %bb.hh
  %i.acr = load i64, ptr %i.ef, align 8, !dbg !28132, !range !8114, !noundef !2431 ; 2 uses
  %.not1474 = icmp eq i64 %i.acr, -1, !dbg !28132
  br i1 %.not1474, label %bb.hk, label %bb.hj, !dbg !28133

bb.hj:                                            ; preds = %bb.hi
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ef, i64 8, !dbg !28134
  %i.act = load i64, ptr %i.acs, align 8, !dbg !28134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !28135
    #dbg_value(i64 %i.acr, !23861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26368)
    #dbg_value(i64 %i.acr, !25740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26371)
    #dbg_value(i64 %i.act, !23861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26368)
    #dbg_value(i64 %i.act, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26371)
    #dbg_value(i64 %i.acr, !25758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26372)
    #dbg_value(i64 %i.act, !25758, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26372)
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28136
  store i64 %i.acr, ptr %i.acu, align 8, !dbg !28136
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28136
  store i64 %i.act, ptr %i.acv, align 8, !dbg !28136
  store i64 1, ptr %0, align 8, !dbg !28136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.eg)
          to label %bb.adb unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28125

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !28135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !dbg !28137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ee, ptr noundef nonnull align 8 dereferenceable(128) %i.eg, i64 128, i1 false), !dbg !28137
  invoke fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_E4pushCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(136) %i.fa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ee)
          to label %bb.hl unwind label %bb.hc, !dbg !28138

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !28139
    #dbg_value(i64 %i.acm, !23834, !DIExpression(DW_OP_LLVM_fragment, 8, 64), !26223)
    #dbg_value(i8 1, !23834, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26223)
    #dbg_value(i8 1, !23816, !DIExpression(), !26151)
    #dbg_value(i8 1, !23817, !DIExpression(), !26152)
  br label %bb.hg, !dbg !28125

bb.hm:                                            ; preds = %bb.ha
    #dbg_value(ptr %i.ack, !23863, !DIExpression(), !26373)
  %i.acw = getelementptr inbounds nuw i8, ptr %i.qc, i64 1312, !dbg !28140
  store i8 1, ptr %i.acw, align 16, !dbg !28140
  br label %bb.eu, !dbg !28141

bb.hn:                                            ; preds = %bb.eu, %bb.ev
    #dbg_value(i64 5, !23865, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26374)
    #dbg_value(i64 5, !25740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26377)
    #dbg_value(i64 undef, !23865, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26374)
    #dbg_value(i64 undef, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26377)
    #dbg_value(i64 5, !25759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26378)
    #dbg_value(i64 undef, !25759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26378)
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28142
  store i64 5, ptr %i.acx, align 8, !dbg !28142
  store i64 1, ptr %0, align 8, !dbg !28142
  br label %bb.adc, !dbg !28106

bb.ho:                                            ; preds = %bb.ev
    #dbg_value(ptr %i.yz, !23864, !DIExpression(), !26379)
    #dbg_value(ptr poison, !8448, !DIExpression(), !22747)
    #dbg_value(ptr poison, !8451, !DIExpression(), !22747)
    #dbg_value(i8 %.sroa.13.0.ph, !8452, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22748)
    #dbg_value(i8 5, !8453, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22749)
  %.not = xor i1 %i.wa, true, !dbg !28143
  %brmerge1 = or i1 %i.fz, %.not, !dbg !28143
  br i1 %brmerge1, label %.thread2123, label %.preheader2563, !dbg !28143

.preheader2563:                                   ; preds = %bb.ho
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 14528 ; 2 uses
    #dbg_value(i8 %.sroa.0158.0, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0158.0, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.3, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.3, !23785, !DIExpression(), !25922)
  %i.acz = load i64, ptr %i.acy, align 16, !dbg !28144, !alias.scope !26380, !noundef !2431
  %.not.i17522809 = icmp eq i64 %i.acz, 0, !dbg !28145
  br i1 %.not.i17522809, label %.loopexit2564, label %.lr.ph, !dbg !28145

.lr.ph:                                           ; preds = %.preheader2563
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 14504
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 14520
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 14512
  %.sroa.4604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.6606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.6301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  br label %bb.hp, !dbg !28145

bb.hp:                                            ; preds = %.lr.ph, %bb.id
  %.sroa.0158.92811 = phi i8 [ %.sroa.0158.0, %.lr.ph ], [ 1, %bb.id ]
  %.sroa.0191.122810 = phi i64 [ %.sroa.0191.3, %.lr.ph ], [ %i.ads, %bb.id ] ; 3 uses
    #dbg_value(i8 %.sroa.0158.92811, !23816, !DIExpression(), !26151)
    #dbg_value(i64 %.sroa.0191.122810, !25128, !DIExpression(), !25924)
  call void @llvm.experimental.noalias.scope.decl(metadata !26404), !dbg !28146
  %i.add = load i64, ptr %i.adb, align 8, !dbg !28147, !alias.scope !26404, !noundef !2431 ; 2 uses
    #dbg_value(i64 %i.add, !26411, !DIExpression(), !22768)
    #dbg_value(i64 %i.add, !26418, !DIExpression(), !22771)
    #dbg_value(ptr %i.tw, !26422, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22776)
  %i.ade = load i64, ptr %i.ada, align 8, !dbg !28148, !range !3804, !alias.scope !26404, !noundef !2431 ; 2 uses
    #dbg_value(i64 %i.ade, !26419, !DIExpression(), !22771)
  %.not15.i = icmp ult i64 %i.add, %i.ade, !dbg !28149
  %i.adf = select i1 %.not15.i, i64 0, i64 %i.ade, !dbg !28149
  %.sroa.02.0.i = sub nuw i64 %i.add, %i.adf, !dbg !28149
    #dbg_value(i64 %.sroa.02.0.i, !26435, !DIExpression(), !22781)
    #dbg_value(i64 %.sroa.02.0.i, !26394, !DIExpression(), !22782)
  %i.adg = load ptr, ptr %i.adc, align 16, !dbg !28150, !alias.scope !26404, !nonnull !2431, !noundef !2431
    #dbg_value(ptr %i.adg, !26439, !DIExpression(), !22781)
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.adg, i64 %.sroa.02.0.i, !dbg !28151
    #dbg_value(ptr %i.adh, !26456, !DIExpression(), !22794)
  %i.adi = load i64, ptr %i.adh, align 8, !dbg !28152, !noalias !26404, !noundef !2431 ; 2 uses
    #dbg_value(i64 %i.adi, !23867, !DIExpression(), !26462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !28153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !dbg !24380
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche3cidNtB5_21ConnectionIdentifiers31get_new_connection_id_frame_for(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.tw, i64 noundef %i.adi)
          to label %bb.hq unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !28154

bb.hq:                                            ; preds = %bb.hp
  %i.adj = load i64, ptr %i.ec, align 8, !dbg !28155, !range !8617, !noundef !2431 ; 2 uses
  %i.adk = icmp eq i64 %i.adj, -1, !dbg !28155
  %i.adl = load <2 x i64>, ptr %.sroa.4604.0..sroa_idx, align 8, !dbg !28156 ; 3 uses
  br i1 %i.adk, label %bb.hr, label %bb.hs, !dbg !28157

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !dbg !28158
    #dbg_value(i64 poison, !23869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26463)
    #dbg_value(i64 poison, !25740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26466)
    #dbg_value(i64 poison, !23869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26463)
    #dbg_value(i64 poison, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26466)
    #dbg_value(i64 poison, !25760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26467)
    #dbg_value(i64 poison, !25760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26467)
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28159
  %i.adn = extractelement <2 x i64> %i.adl, i64 0, !dbg !28159
  store i64 %i.adn, ptr %i.adm, align 8, !dbg !28159
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28159
  %i.adp = extractelement <2 x i64> %i.adl, i64 1, !dbg !28159
    #dbg_value(i64 %i.adp, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26466)
    #dbg_value(i64 %i.adp, !23869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26463)
    #dbg_value(i64 %i.adp, !25760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26467)
  store i64 %i.adp, ptr %i.ado, align 8, !dbg !28159
  store i64 1, ptr %0, align 8, !dbg !28159
  br label %bb.ie, !dbg !28160

bb.hs:                                            ; preds = %bb.hq
    #dbg_value(i64 %i.adj, !24376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26469)
    #dbg_value(i64 poison, !24376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26469)
    #dbg_value(i64 poison, !24376, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26469)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6301.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6606.0..sroa_idx, i64 104, i1 false), !dbg !28161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !dbg !28158
    #dbg_value(i64 %i.adj, !23870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26470)
    #dbg_value(i64 poison, !23870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26470)
    #dbg_value(i64 poison, !23870, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26470)
  store i64 %i.adj, ptr %i.ed, align 8, !dbg !24409
  store <2 x i64> %i.adl, ptr %.sroa.4299.0..sroa_idx, align 8, !dbg !24409
  %i.adq = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ed)
          to label %bb.hu unwind label %bb.if, !dbg !28162

bb.ht:                                            ; preds = %bb.ic, %bb.ib
  %lpad.thr_comm.split-lp2118 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2030, !dbg !28163

bb.hu:                                            ; preds = %bb.hs
  %.not1477 = icmp ugt i64 %i.adq, %.sroa.0191.122810, !dbg !28164
  br i1 %.not1477, label %bb.hx, label %bb.hv, !dbg !28164

bb.hv:                                            ; preds = %bb.hu
  %i.adr = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ed)
          to label %bb.hy unwind label %bb.if, !dbg !28165

bb.hw:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !28163
  br label %.loopexit2564, !dbg !28166

bb.hx:                                            ; preds = %bb.hu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ed)
          to label %bb.hw unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28163

bb.hy:                                            ; preds = %bb.hv
  %i.ads = sub i64 %.sroa.0191.122810, %i.adr, !dbg !28167 ; 2 uses
    #dbg_value(i64 %i.ads, !23785, !DIExpression(), !25922)
    #dbg_value(i64 %i.ads, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %i.ads, !25128, !DIExpression(), !25926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !dbg !28168
  invoke void @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8to_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ed, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %bb.hz unwind label %bb.if, !dbg !28169

bb.hz:                                            ; preds = %bb.hy
  %i.adt = load i64, ptr %i.eb, align 8, !dbg !28170, !range !8114, !noundef !2431 ; 2 uses
  %.not1478 = icmp eq i64 %i.adt, -1, !dbg !28170
  br i1 %.not1478, label %bb.ib, label %bb.ia, !dbg !28171

bb.ia:                                            ; preds = %bb.hz
  %i.adu = getelementptr inbounds nuw i8, ptr %i.eb, i64 8, !dbg !28172
  %i.adv = load i64, ptr %i.adu, align 8, !dbg !28172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !28173
    #dbg_value(i64 %i.adt, !23871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26472)
    #dbg_value(i64 %i.adt, !25740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26475)
    #dbg_value(i64 %i.adv, !23871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26472)
    #dbg_value(i64 %i.adv, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26475)
    #dbg_value(i64 %i.adt, !25761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26476)
    #dbg_value(i64 %i.adv, !25761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26476)
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28174
  store i64 %i.adt, ptr %i.adw, align 8, !dbg !28174
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28174
  store i64 %i.adv, ptr %i.adx, align 8, !dbg !28174
  store i64 1, ptr %0, align 8, !dbg !28174
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ed)
          to label %bb.ie unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28163

bb.ib:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !28173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !dbg !28175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ea, ptr noundef nonnull align 8 dereferenceable(128) %i.ed, i64 128, i1 false), !dbg !28175
  invoke fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_E4pushCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(136) %i.fa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ea)
          to label %bb.ic unwind label %bb.ht, !dbg !28176

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !dbg !28177
  invoke fastcc void @_RNvMs0_NtCs3f36owOmepS_6quiche3cidNtB5_21ConnectionIdentifiers27mark_advertise_new_scid_seq(ptr noalias nofree noundef align 8 dereferenceable(248) %i.tw, i64 noundef %i.adi, i1 noundef zeroext false)
          to label %bb.id unwind label %bb.ht, !dbg !28178

bb.id:                                            ; preds = %bb.ic
    #dbg_value(i8 1, !23816, !DIExpression(), !26151)
    #dbg_value(i8 1, !23817, !DIExpression(), !26152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !28163
    #dbg_value(i64 %i.ads, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %i.ads, !23785, !DIExpression(), !25922)
    #dbg_value(ptr %i.tw, !26402, !DIExpression(), !22795)
    #dbg_value(i64 0, !26393, !DIExpression(), !22796)
    #dbg_value(i64 0, !26409, !DIExpression(), !22797)
    #dbg_value(i64 0, !26416, !DIExpression(), !22768)
    #dbg_value(i64 8, !26433, !DIExpression(), !22798)
    #dbg_value(ptr %i.tw, !26399, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22799)
    #dbg_value(ptr %i.tw, !26392, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22800)
    #dbg_value(ptr %i.tw, !26408, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22801)
    #dbg_value(ptr %i.tw, !26415, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22802)
    #dbg_value(ptr %i.tw, !26430, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22803)
    #dbg_value(ptr %i.tw, !26454, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22804)
  %i.ady = load i64, ptr %i.acy, align 16, !dbg !28144, !alias.scope !26477, !noundef !2431
  %.not.i1752 = icmp eq i64 %i.ady, 0, !dbg !28145
  br i1 %.not.i1752, label %.loopexit2564, label %bb.hp, !dbg !28145

bb.ie:                                            ; preds = %bb.ia, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !28163
  br label %bb.adc, !dbg !28166

bb.if:                                            ; preds = %bb.hy, %bb.hv, %bb.hs
  %lpad.thr_comm2117 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ed) #24
          to label %.thread2030 unwind label %bb.gm, !dbg !28163

.thread2123:                                      ; preds = %.loopexit2564, %bb.ho, %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1762, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECslusEaBCZKLp_13quiche_client.exit1799
  %.sroa.0191.13 = phi i64 [ %.sroa.0191.122780, %.loopexit2564 ], [ %.sroa.0191.32.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECslusEaBCZKLp_13quiche_client.exit1799 ], [ %.sroa.0191.122780, %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1762 ], [ %.sroa.0191.3, %bb.ho ], !dbg !28179 ; 8 uses
  %.sroa.0166.10 = phi i8 [ %.sroa.0158.92773, %.loopexit2564 ], [ %.sroa.0166.29.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECslusEaBCZKLp_13quiche_client.exit1799 ], [ %.sroa.0158.92773, %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1762 ], [ %.sroa.0158.0, %bb.ho ], !dbg !26223 ; 4 uses
  %.sroa.0158.10 = phi i8 [ %.sroa.0158.92773, %.loopexit2564 ], [ %.sroa.0158.29.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECslusEaBCZKLp_13quiche_client.exit1799 ], [ %.sroa.0158.92773, %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1762 ], [ %.sroa.0158.0, %bb.ho ], !dbg !26223 ; 4 uses
    #dbg_value(i8 %.sroa.0158.10, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.10, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.13, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.13, !23785, !DIExpression(), !25922)
    #dbg_value(ptr %i.yz, !26211, !DIExpression(), !22807)
  %i.adz = getelementptr inbounds nuw i8, ptr %i.yz, i64 2784, !dbg !28180 ; 4 uses
  %i.aea = load i8, ptr %i.adz, align 8, !dbg !28180, !range !7366, !alias.scope !26478, !noundef !2431
  %i.aeb = trunc nuw i8 %i.aea to i1, !dbg !28180
  %i.aec = getelementptr inbounds nuw i8, ptr %i.yz, i64 2791 ; 5 uses
  %i.aed = load i8, ptr %i.aec, align 1, !range !7995, !alias.scope !26478
  %.not.i1755 = icmp ne i8 %i.aed, 0
  %or.cond.not.i1756 = select i1 %i.aeb, i1 %.not.i1755, i1 false, !dbg !28180
  br i1 %or.cond.not.i1756, label %bb.ig, label %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1758, !dbg !28180

bb.ig:                                            ; preds = %.thread2123
    #dbg_value(ptr %i.yz, !26224, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22811)
  %i.aee = getelementptr inbounds nuw i8, ptr %i.yz, i64 16, !dbg !28181
  %i.aef = load i64, ptr %i.aee, align 8, !dbg !28181, !range !2896, !alias.scope !26478, !noundef !2431
  %i.aeg = trunc nuw i64 %i.aef to i1, !dbg !28182
  br label %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1758, !dbg !28180

.loopexit2564:                                    ; preds = %bb.id, %.preheader2563, %bb.hw
  %.sroa.0191.122780 = phi i64 [ %.sroa.0191.122810, %bb.hw ], [ %.sroa.0191.3, %.preheader2563 ], [ %i.ads, %bb.id ] ; 6 uses
  %.sroa.0158.92773 = phi i8 [ %.sroa.0158.92811, %bb.hw ], [ %.sroa.0158.0, %.preheader2563 ], [ 1, %bb.id ] ; 6 uses
    #dbg_value(i8 %.sroa.0158.92773, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0158.92773, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.122780, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.122780, !23785, !DIExpression(), !25922)
    #dbg_value(ptr poison, !8448, !DIExpression(), !22813)
    #dbg_value(ptr poison, !8451, !DIExpression(), !22813)
    #dbg_value(i8 %.sroa.13.0.ph, !8452, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22814)
    #dbg_value(i8 5, !8453, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !22815)
    #dbg_value(ptr %i.yz, !26211, !DIExpression(), !22817)
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.yz, i64 2784, !dbg !28183
  %i.aei = load i8, ptr %i.aeh, align 8, !dbg !28183, !range !7366, !alias.scope !26479, !noundef !2431
  %i.aej = trunc nuw i8 %i.aei to i1, !dbg !28183
  %i.aek = getelementptr inbounds nuw i8, ptr %i.yz, i64 2791
  %i.ael = load i8, ptr %i.aek, align 1, !range !7995, !alias.scope !26479
  %.not.i1759 = icmp ne i8 %i.ael, 0
  %or.cond.not.i1760 = select i1 %i.aej, i1 %.not.i1759, i1 false, !dbg !28183
  br i1 %or.cond.not.i1760, label %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1762, label %.thread2123, !dbg !28183

_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1762: ; preds = %.loopexit2564
    #dbg_value(ptr %i.yz, !26224, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22821)
  %i.aem = getelementptr inbounds nuw i8, ptr %i.yz, i64 16, !dbg !28184 ; 2 uses
  %i.aen = load i64, ptr %i.aem, align 8, !dbg !28184, !range !2896, !alias.scope !26479, !noundef !2431
  %i.aeo = trunc nuw i64 %i.aen to i1, !dbg !28185
  br i1 %i.aeo, label %bb.ih, label %.thread2123, !dbg !28186

bb.ih:                                            ; preds = %_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path6active.exit1762
  %i.aep = load i8, ptr %i.so, align 2, !dbg !28187, !range !7366, !noundef !2431
  %i.aeq = trunc nuw i8 %i.aep to i1, !dbg !28187
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 15527 ; 2 uses
  %i.aes = load i8, ptr %i.aer, align 1, !range !7366
  %i.aet = trunc nuw i8 %i.aes to i1
  %.not1479 = xor i1 %i.aet, true, !dbg !28187
  %or.cond.not = select i1 %i.aeq, i1 %.not1479, i1 false, !dbg !28187
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 15519
  %i.aev = load i8, ptr %i.aeu, align 1, !range !7366
  %i.aew = trunc nuw i8 %i.aev to i1
  %or.cond9 = select i1 %or.cond.not, i1 %i.aew, i1 false, !dbg !28187
  br i1 %or.cond9, label %bb.ik, label %bb.ii, !dbg !28187

bb.ii:                                            ; preds = %bb.ip, %bb.ih
  %.sroa.0191.14 = phi i64 [ %.sroa.0191.15, %bb.ip ], [ %.sroa.0191.122780, %bb.ih ], !dbg !28179 ; 4 uses
  %.sroa.0158.11 = phi i8 [ %.sroa.0158.12, %bb.ip ], [ %.sroa.0158.92773, %bb.ih ], !dbg !26223 ; 2 uses
    #dbg_value(i8 %.sroa.0158.11, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0158.11, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.14, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.14, !23785, !DIExpression(), !25922)
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 14920, !dbg !28188 ; 10 uses
    #dbg_value(ptr %i.aex, !26480, !DIExpression(), !22825)
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 15144, !dbg !28189 ; 2 uses
  %i.aez = load i64, ptr %i.aey, align 8, !dbg !28189, !alias.scope !26483, !noundef !2431 ; 2 uses
    #dbg_value(i64 %i.aez, !26484, !DIExpression(), !22830)
    #dbg_value(i64 poison, !26485, !DIExpression(), !22830)
    #dbg_value(i64 poison, !26481, !DIExpression(), !22831)
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 15152, !dbg !28190 ; 2 uses
  %i.afb = load i64, ptr %i.afa, align 16, !dbg !28190, !alias.scope !26483, !noundef !2431 ; 2 uses
  %.not.i1763 = icmp eq i64 %i.afb, %i.aez, !dbg !28190
  br i1 %.not.i1763, label %_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap30should_update_max_streams_bidiCslusEaBCZKLp_13quiche_client.exit, label %bb.ij, !dbg !28190

end_hunk_1
begin_hunk_2_@_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection11send_singleCslusEaBCZKLp_13quiche_client:bb.a

bb.lt:                                            ; preds = %bb.md, %bb.lr
  %.sroa.0191.27 = phi i64 [ %.sroa.0191.282205, %bb.md ], [ %.sroa.0191.26.ph, %bb.lr ], !dbg !28215 ; 2 uses
  %.sroa.0166.24 = phi i8 [ %.sroa.0166.252207, %bb.md ], [ %.sroa.0166.23.ph, %bb.lr ], !dbg !26379 ; 2 uses
  %.sroa.0158.24 = phi i8 [ %.sroa.0158.252209, %bb.md ], [ %.sroa.0158.23.ph, %bb.lr ], !dbg !26379 ; 2 uses
    #dbg_value(i8 %.sroa.0158.24, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.24, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.27, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.27, !23785, !DIExpression(), !25922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !dbg !24369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !24369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !dbg !24369
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap7stoppedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aex)
          to label %bb.mf unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28359

bb.lu:                                            ; preds = %.thread, %bb.lr
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 15516, !dbg !28355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !28360
  %.val1700 = load i64, ptr %i.sb, align 16, !dbg !28361, !noundef !2431
  %.val1701 = load i64, ptr %i.akd, align 16, !dbg !28361, !noundef !2431
    #dbg_value(ptr poison, !26620, !DIExpression(), !22937)
  %i.akn = add i64 %.val1701, %.val1700, !dbg !28362
  %i.ako = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !28363
  store i64 %i.akn, ptr %i.ako, align 8, !dbg !28363
  store i64 12, ptr %i.dc, align 8, !dbg !28363
  %i.akp = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dc)
          to label %bb.lw unwind label %bb.oz, !dbg !28364

bb.lv:                                            ; preds = %bb.mc
  %lpad.thr_comm.split-lp2196 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2030, !dbg !28365

bb.lw:                                            ; preds = %bb.lu
  %.not1492 = icmp ugt i64 %i.akp, %.sroa.0191.26.ph, !dbg !28366
  br i1 %.not1492, label %bb.me, label %bb.lx, !dbg !28366

bb.lx:                                            ; preds = %bb.lw
  %i.akq = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dc)
          to label %bb.lz unwind label %bb.oz, !dbg !28367

bb.ly:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !28368
  store i8 0, ptr %i.akm, align 4, !dbg !28369
    #dbg_value(ptr %i.sb, !26631, !DIExpression(), !22940)
    #dbg_value(ptr %i.sb, !26637, !DIExpression(), !22943)
    #dbg_value(i64 %6, !26635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22940)
    #dbg_value(i32 %7, !26635, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !22940)
  %i.akr = load i64, ptr %i.sb, align 16, !dbg !28370, !alias.scope !26639, !noundef !2431
  %i.aks = load i64, ptr %i.akd, align 16, !dbg !28371, !alias.scope !26639, !noundef !2431
  %i.akt = add i64 %i.aks, %i.akr, !dbg !28370
  store i64 %i.akt, ptr %i.ajz, align 8, !dbg !28372, !alias.scope !26639
  %i.aku = getelementptr inbounds nuw i8, ptr %1, i64 14112, !dbg !28373
  store i64 %6, ptr %i.aku, align 16, !dbg !28373, !alias.scope !26639
  %i.akv = getelementptr inbounds nuw i8, ptr %1, i64 14120, !dbg !28373
  store i32 %7, ptr %i.akv, align 8, !dbg !28373, !alias.scope !26639
    #dbg_value(i8 1, !23816, !DIExpression(), !26151)
    #dbg_value(i8 1, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %i.akw, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %i.akw, !23785, !DIExpression(), !25922)
  br label %bb.md, !dbg !28365

bb.lz:                                            ; preds = %bb.lx
  %i.akw = sub i64 %.sroa.0191.26.ph, %i.akq, !dbg !28374
    #dbg_value(i64 %i.akw, !23785, !DIExpression(), !25922)
    #dbg_value(i64 %i.akw, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %i.akw, !25128, !DIExpression(), !25926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !28375
  invoke void @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8to_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %bb.ma unwind label %bb.oz, !dbg !28376

bb.ma:                                            ; preds = %bb.lz
  %i.akx = load i64, ptr %i.db, align 8, !dbg !28377, !range !8114, !noundef !2431 ; 2 uses
  %.not1493 = icmp eq i64 %i.akx, -1, !dbg !28377
  br i1 %.not1493, label %bb.mc, label %bb.mb, !dbg !28378

bb.mb:                                            ; preds = %bb.ma
  %i.aky = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !28379
  %i.akz = load i64, ptr %i.aky, align 8, !dbg !28379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !28380
    #dbg_value(i64 %i.akx, !23903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26640)
    #dbg_value(i64 %i.akx, !25740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26643)
    #dbg_value(i64 %i.akz, !23903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26640)
    #dbg_value(i64 %i.akz, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26643)
    #dbg_value(i64 %i.akx, !25769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26644)
    #dbg_value(i64 %i.akz, !25769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26644)
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28381
  store i64 %i.akx, ptr %i.ala, align 8, !dbg !28381
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28381
  store i64 %i.akz, ptr %i.alb, align 8, !dbg !28381
  store i64 1, ptr %0, align 8, !dbg !28381
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.dc)
          to label %bb.oy unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28365

bb.mc:                                            ; preds = %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !28380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !28382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.da, ptr noundef nonnull align 8 dereferenceable(128) %i.dc, i64 128, i1 false), !dbg !28382
  invoke fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_E4pushCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(136) %i.fa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.da)
          to label %bb.ly unwind label %bb.lv, !dbg !28383

bb.md:                                            ; preds = %bb.ly, %bb.me
  %.sroa.0158.252209 = phi i8 [ %.sroa.0158.23.ph, %bb.me ], [ 1, %bb.ly ]
  %.sroa.0166.252207 = phi i8 [ %.sroa.0166.23.ph, %bb.me ], [ 1, %bb.ly ]
  %.sroa.0191.282205 = phi i64 [ %.sroa.0191.26.ph, %bb.me ], [ %i.akw, %bb.ly ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !28365
  br label %bb.lt, !dbg !28384

bb.me:                                            ; preds = %bb.lw
    #dbg_value(i8 %.sroa.0158.23.ph, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.23.ph, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.26.ph, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.26.ph, !23785, !DIExpression(), !25922)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.dc)
          to label %bb.md unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28365

bb.mf:                                            ; preds = %bb.lt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !dbg !28385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !28386
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTyyEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryyENCNvMs1_Cs3f36owOmepS_6quicheNtB3c_10Connection11send_singles0_0EE9from_iterCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cy)
          to label %bb.mg unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28387

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !28388
  %.sroa.01420.0.copyload = load i64, ptr %i.cz, align 8, !dbg !28389 ; 2 uses
  %.sroa.41421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8, !dbg !28389
  %.sroa.41421.0.copyload = load ptr, ptr %.sroa.41421.0..sroa_idx, align 8, !dbg !28389, !nonnull !2431, !noundef !2431 ; 4 uses
  %.sroa.51422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !28389
  %.sroa.51422.0.copyload = load i64, ptr %.sroa.51422.0..sroa_idx, align 8, !dbg !28389 ; 3 uses
    #dbg_value(i64 %.sroa.01420.0.copyload, !24285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26652)
    #dbg_value(ptr %.sroa.41421.0.copyload, !24285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26652)
    #dbg_value(i64 %.sroa.51422.0.copyload, !24285, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26652)
    #dbg_value(ptr %.sroa.41421.0.copyload, !24287, !DIExpression(), !26653)
    #dbg_value(ptr %.sroa.41421.0.copyload, !24288, !DIExpression(), !26654)
    #dbg_value(ptr %.sroa.41421.0.copyload, !26655, !DIExpression(), !26659)
    #dbg_value(ptr undef, !24314, !DIExpression(), !24375)
    #dbg_value(i64 %.sroa.51422.0.copyload, !26656, !DIExpression(), !26659)
  %i.alc = icmp ult i64 %.sroa.51422.0.copyload, 576460752303423488, !dbg !28390
  call void @llvm.assume(i1 %i.alc), !dbg !28391
  %.idx = shl nuw nsw i64 %.sroa.51422.0.copyload, 4, !dbg !28392
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.41421.0.copyload, i64 %.idx, !dbg !28392
    #dbg_value(ptr %i.ald, !24289, !DIExpression(), !26660)
    #dbg_value(ptr undef, !24310, !DIExpression(), !24373)
    #dbg_value(ptr undef, !24266, !DIExpression(), !24372)
    #dbg_value(i64 %.sroa.01420.0.copyload, !26661, !DIExpression(), !26667)
  %i.ale = icmp sgt i64 %.sroa.01420.0.copyload, -1, !dbg !28393
  call void @llvm.assume(i1 %i.ale), !dbg !28393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !28388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !dbg !24369
  store ptr %.sroa.41421.0.copyload, ptr %i.cw, align 8, !dbg !24369
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !24369 ; 3 uses
  store ptr %.sroa.41421.0.copyload, ptr %.sroa.5335.0..sroa_idx, align 8, !dbg !24369
  %.sroa.6336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16, !dbg !24369
  store i64 %.sroa.01420.0.copyload, ptr %.sroa.6336.0..sroa_idx, align 8, !dbg !24369
  %.sroa.7337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24, !dbg !24369 ; 2 uses
  store ptr %i.ald, ptr %.sroa.7337.0..sroa_idx, align 8, !dbg !24369
    #dbg_value(i8 %.sroa.0158.24, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.24, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.27, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.27, !23785, !DIExpression(), !25922)
  %i.alf = icmp eq i64 %.sroa.51422.0.copyload, 0, !dbg !28394
  br i1 %i.alf, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit, label %.lr.ph2817, !dbg !28395

.lr.ph2817:                                       ; preds = %bb.mg
  %i.alg = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  br label %bb.mi, !dbg !28395

bb.mh:                                            ; preds = %.loopexit2549, %.loopexit.split-lp2550, %bb.om, %bb.ox
  %.pn1509 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2275, %bb.om ], [ %lpad.thr_comm2274, %bb.ox ], [ %lpad.loopexit2551, %.loopexit2549 ], [ %lpad.loopexit.split-lp2552, %.loopexit.split-lp2550 ]
    #dbg_value(ptr %i.cw, !26690, !DIExpression(), !22962)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %.thread2030 unwind label %bb.gm, !dbg !28396

.loopexit2549:                                    ; preds = %bb.ov
  %lpad.loopexit2551 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

.loopexit.split-lp2550:                           ; preds = %bb.or
  %lpad.loopexit.split-lp2552 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

bb.mi:                                            ; preds = %.lr.ph2817, %bb.ou
  %i.alh = phi ptr [ %.sroa.41421.0.copyload, %.lr.ph2817 ], [ %i.aog, %bb.ou ] ; 3 uses
  %.sroa.0158.262815 = phi i8 [ %.sroa.0158.24, %.lr.ph2817 ], [ %.sroa.0158.322288, %bb.ou ]
  %.sroa.0166.262814 = phi i8 [ %.sroa.0166.24, %.lr.ph2817 ], [ %.sroa.0166.322286, %bb.ou ]
  %.sroa.0191.292813 = phi i64 [ %.sroa.0191.27, %.lr.ph2817 ], [ %.sroa.0191.352284, %bb.ou ] ; 3 uses
    #dbg_value(i8 %.sroa.0158.262815, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.262814, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.292813, !25128, !DIExpression(), !25924)
  call void @llvm.experimental.noalias.scope.decl(metadata !26696), !dbg !24643
    #dbg_value(ptr %i.alh, !26687, !DIExpression(), !22965)
    #dbg_value(ptr %i.alh, !26688, !DIExpression(), !22966)
    #dbg_value(ptr %i.alh, !26697, !DIExpression(), !22969)
    #dbg_value(ptr %i.alh, !26703, !DIExpression(), !22972)
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 16, !dbg !28397
  store ptr %i.ali, ptr %.sroa.5335.0..sroa_idx, align 8, !dbg !28398, !alias.scope !26696, !noalias !26708
  %i.alj = load <2 x i64>, ptr %i.alh, align 8, !dbg !28399, !noalias !26709
  %i.alk = load i64, ptr %i.alh, align 8, !dbg !28399, !noalias !26709, !noundef !2431
    #dbg_value(i64 %i.alk, !23906, !DIExpression(), !26712)
    #dbg_value(i64 poison, !23907, !DIExpression(), !26712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !28400
  store <2 x i64> %i.alj, ptr %i.alg, align 8, !dbg !28401
  store i64 6, ptr %i.cv, align 8, !dbg !28401
  %i.all = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cv)
          to label %bb.on unwind label %bb.ox, !dbg !28402

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.ou, %bb.mg
  %.sroa.0191.29.lcssa = phi i64 [ %.sroa.0191.27, %bb.mg ], [ %.sroa.0191.352284, %bb.ou ], !dbg !28215 ; 2 uses
  %.sroa.0166.26.lcssa = phi i8 [ %.sroa.0166.24, %bb.mg ], [ %.sroa.0166.322286, %bb.ou ], !dbg !26379 ; 2 uses
  %.sroa.0158.26.lcssa = phi i8 [ %.sroa.0158.24, %bb.mg ], [ %.sroa.0158.322288, %bb.ou ], !dbg !26379 ; 2 uses
    #dbg_value(ptr %i.cw, !26690, !DIExpression(), !22977)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyyEEECslusEaBCZKLp_13quiche_client.exit1785 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28403

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyyEEECslusEaBCZKLp_13quiche_client.exit1785: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !28404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !24324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !24324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !24324
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap5resetCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aex)
          to label %bb.mj unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28405

bb.mj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyyEEECslusEaBCZKLp_13quiche_client.exit1785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false), !dbg !28406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !28407
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTyTyyEEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryBW_ENCNvMs1_Cs3f36owOmepS_6quicheNtB3h_10Connection11send_singles1_0EE9from_iterCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cr)
          to label %bb.mk unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28408

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !28409
  %.sroa.01414.0.copyload = load i64, ptr %i.cs, align 8, !dbg !28410 ; 2 uses
  %.sroa.41415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !28410
  %.sroa.41415.0.copyload = load ptr, ptr %.sroa.41415.0..sroa_idx, align 8, !dbg !28410, !nonnull !2431, !noundef !2431 ; 4 uses
  %.sroa.51416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !28410
  %.sroa.51416.0.copyload = load i64, ptr %.sroa.51416.0..sroa_idx, align 8, !dbg !28410 ; 3 uses
    #dbg_value(i64 %.sroa.01414.0.copyload, !24337, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26721)
    #dbg_value(ptr %.sroa.41415.0.copyload, !24337, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26721)
    #dbg_value(i64 %.sroa.51416.0.copyload, !24337, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26721)
    #dbg_value(ptr %.sroa.41415.0.copyload, !24339, !DIExpression(), !26722)
    #dbg_value(ptr %.sroa.41415.0.copyload, !24341, !DIExpression(), !26723)
    #dbg_value(ptr %.sroa.41415.0.copyload, !26724, !DIExpression(), !26730)
    #dbg_value(ptr undef, !24361, !DIExpression(), !24368)
    #dbg_value(i64 %.sroa.51416.0.copyload, !26727, !DIExpression(), !26730)
  %i.alm = icmp ult i64 %.sroa.51416.0.copyload, 384307168202282326, !dbg !28411
  call void @llvm.assume(i1 %i.alm), !dbg !28412
  %.idx2842 = mul nuw nsw i64 %.sroa.51416.0.copyload, 24, !dbg !28413
  %i.aln = getelementptr inbounds nuw i8, ptr %.sroa.41415.0.copyload, i64 %.idx2842, !dbg !28413
    #dbg_value(ptr %i.aln, !24342, !DIExpression(), !26731)
    #dbg_value(ptr undef, !24357, !DIExpression(), !24359)
    #dbg_value(ptr undef, !24266, !DIExpression(), !24327)
    #dbg_value(i64 %.sroa.01414.0.copyload, !26661, !DIExpression(), !26734)
  %i.alo = icmp sgt i64 %.sroa.01414.0.copyload, -1, !dbg !28414
  call void @llvm.assume(i1 %i.alo), !dbg !28414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !28409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !24324
  store ptr %.sroa.41415.0.copyload, ptr %i.cp, align 8, !dbg !24324
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !24324 ; 3 uses
  store ptr %.sroa.41415.0.copyload, ptr %.sroa.5342.0..sroa_idx, align 8, !dbg !24324
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !24324
  store i64 %.sroa.01414.0.copyload, ptr %.sroa.6343.0..sroa_idx, align 8, !dbg !24324
  %.sroa.7344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24, !dbg !24324 ; 2 uses
  store ptr %i.aln, ptr %.sroa.7344.0..sroa_idx, align 8, !dbg !24324
    #dbg_value(i8 %.sroa.0158.26.lcssa, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.26.lcssa, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.29.lcssa, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.29.lcssa, !23785, !DIExpression(), !25922)
  %i.alp = icmp eq i64 %.sroa.51416.0.copyload, 0, !dbg !28415
  br i1 %i.alp, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTyyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit, label %.lr.ph2825, !dbg !28416

.lr.ph2825:                                       ; preds = %bb.mk
  %i.alq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.alr = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  br label %bb.mm, !dbg !28416

bb.ml:                                            ; preds = %.loopexit2544, %.loopexit.split-lp2545, %bb.oa, %bb.ol
  %.pn1505 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2257, %bb.oa ], [ %lpad.thr_comm2256, %bb.ol ], [ %lpad.loopexit2546, %.loopexit2544 ], [ %lpad.loopexit.split-lp2547, %.loopexit.split-lp2545 ]
    #dbg_value(ptr %i.cp, !26755, !DIExpression(), !22993)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %.thread2030 unwind label %bb.gm, !dbg !28417

.loopexit2544:                                    ; preds = %bb.oj
  %lpad.loopexit2546 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

.loopexit.split-lp2545:                           ; preds = %bb.of
  %lpad.loopexit.split-lp2547 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

bb.mm:                                            ; preds = %.lr.ph2825, %bb.oi
  %i.als = phi ptr [ %.sroa.41415.0.copyload, %.lr.ph2825 ], [ %i.anw, %bb.oi ] ; 4 uses
  %.sroa.0158.272823 = phi i8 [ %.sroa.0158.26.lcssa, %.lr.ph2825 ], [ %.sroa.0158.312270, %bb.oi ]
  %.sroa.0166.272822 = phi i8 [ %.sroa.0166.26.lcssa, %.lr.ph2825 ], [ %.sroa.0166.312268, %bb.oi ]
  %.sroa.0191.302821 = phi i64 [ %.sroa.0191.29.lcssa, %.lr.ph2825 ], [ %.sroa.0191.342266, %bb.oi ] ; 3 uses
    #dbg_value(i8 %.sroa.0158.272823, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.272822, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.302821, !25128, !DIExpression(), !25924)
  call void @llvm.experimental.noalias.scope.decl(metadata !26761), !dbg !24715
    #dbg_value(ptr %i.als, !26752, !DIExpression(), !22996)
    #dbg_value(ptr %i.als, !26753, !DIExpression(), !22997)
    #dbg_value(ptr %i.als, !26762, !DIExpression(), !23000)
    #dbg_value(ptr %i.als, !26768, !DIExpression(), !23003)
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 24, !dbg !28418
  store ptr %i.alt, ptr %.sroa.5342.0..sroa_idx, align 8, !dbg !28419, !alias.scope !26761, !noalias !26773
  %.sroa.91967.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.als, i64 16, !dbg !28420
  %.sroa.91967.8.copyload = load i64, ptr %.sroa.91967.8..sroa_idx, align 8, !dbg !28420, !noalias !26761
  %i.alu = load <2 x i64>, ptr %i.als, align 8, !dbg !28420, !noalias !26761
  %.sroa.61965.8.copyload = load i64, ptr %i.als, align 8, !dbg !28420, !noalias !26761
    #dbg_value(i64 %.sroa.61965.8.copyload, !23912, !DIExpression(), !26776)
    #dbg_value(i64 poison, !23913, !DIExpression(), !26776)
    #dbg_value(i64 %.sroa.91967.8.copyload, !23914, !DIExpression(), !26776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !28421
  store <2 x i64> %i.alu, ptr %i.alq, align 8, !dbg !28422
  store i64 %.sroa.91967.8.copyload, ptr %i.alr, align 8, !dbg !28422
  store i64 5, ptr %i.co, align 8, !dbg !28422
  %i.alv = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.co)
          to label %bb.ob unwind label %bb.ol, !dbg !28423

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTyyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.oi, %bb.mk
  %.sroa.0191.30.lcssa = phi i64 [ %.sroa.0191.29.lcssa, %bb.mk ], [ %.sroa.0191.342266, %bb.oi ], !dbg !28215 ; 2 uses
  %.sroa.0166.27.lcssa = phi i8 [ %.sroa.0166.26.lcssa, %bb.mk ], [ %.sroa.0166.312268, %bb.oi ], !dbg !26379 ; 2 uses
  %.sroa.0158.27.lcssa = phi i8 [ %.sroa.0158.26.lcssa, %bb.mk ], [ %.sroa.0158.312270, %bb.oi ], !dbg !26379 ; 2 uses
    #dbg_value(ptr %i.cp, !26755, !DIExpression(), !23008)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyTyyEEEECslusEaBCZKLp_13quiche_client.exit1789 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28424

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyTyyEEEECslusEaBCZKLp_13quiche_client.exit1789: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTyyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !28425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !24271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !24271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !24271
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap7blockedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aex)
          to label %bb.mn unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28426

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyTyyEEEECslusEaBCZKLp_13quiche_client.exit1789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i64 40, i1 false), !dbg !28427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !28428
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTyyEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryyENCNvMs1_Cs3f36owOmepS_6quicheNtB3c_10Connection11send_singles2_0EE9from_iterCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ck)
          to label %bb.mo unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28429

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !28430
  %.sroa.01408.0.copyload = load i64, ptr %i.cl, align 8, !dbg !28431 ; 2 uses
  %.sroa.41409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !28431
  %.sroa.41409.0.copyload = load ptr, ptr %.sroa.41409.0..sroa_idx, align 8, !dbg !28431, !nonnull !2431, !noundef !2431 ; 4 uses
  %.sroa.51410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16, !dbg !28431
  %.sroa.51410.0.copyload = load i64, ptr %.sroa.51410.0..sroa_idx, align 8, !dbg !28431 ; 3 uses
    #dbg_value(i64 %.sroa.01408.0.copyload, !24291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26782)
    #dbg_value(ptr %.sroa.41409.0.copyload, !24291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26782)
    #dbg_value(i64 %.sroa.51410.0.copyload, !24291, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26782)
    #dbg_value(ptr %.sroa.41409.0.copyload, !24293, !DIExpression(), !26783)
    #dbg_value(ptr %.sroa.41409.0.copyload, !24294, !DIExpression(), !26784)
    #dbg_value(ptr %.sroa.41409.0.copyload, !26655, !DIExpression(), !26786)
    #dbg_value(ptr undef, !24314, !DIExpression(), !24321)
    #dbg_value(i64 %.sroa.51410.0.copyload, !26656, !DIExpression(), !26786)
  %i.alw = icmp ult i64 %.sroa.51410.0.copyload, 576460752303423488, !dbg !28432
  call void @llvm.assume(i1 %i.alw), !dbg !28433
  %.idx2843 = shl nuw nsw i64 %.sroa.51410.0.copyload, 4, !dbg !28434
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.41409.0.copyload, i64 %.idx2843, !dbg !28434
    #dbg_value(ptr %i.alx, !24295, !DIExpression(), !26787)
    #dbg_value(ptr undef, !24310, !DIExpression(), !24312)
    #dbg_value(ptr undef, !24266, !DIExpression(), !24274)
    #dbg_value(i64 %.sroa.01408.0.copyload, !26661, !DIExpression(), !26790)
  %i.aly = icmp sgt i64 %.sroa.01408.0.copyload, -1, !dbg !28435
  call void @llvm.assume(i1 %i.aly), !dbg !28435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !28430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !24271
  store ptr %.sroa.41409.0.copyload, ptr %i.ci, align 8, !dbg !24271
  %.sroa.5349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !24271 ; 3 uses
  store ptr %.sroa.41409.0.copyload, ptr %.sroa.5349.0..sroa_idx, align 8, !dbg !24271
  %.sroa.6350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16, !dbg !24271
  store i64 %.sroa.01408.0.copyload, ptr %.sroa.6350.0..sroa_idx, align 8, !dbg !24271
  %.sroa.7351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !24271 ; 2 uses
  store ptr %i.alx, ptr %.sroa.7351.0..sroa_idx, align 8, !dbg !24271
    #dbg_value(i8 %.sroa.0158.27.lcssa, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.27.lcssa, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.30.lcssa, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.30.lcssa, !23785, !DIExpression(), !25922)
  %i.alz = icmp eq i64 %.sroa.51410.0.copyload, 0, !dbg !28436
  br i1 %i.alz, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit1791, label %.lr.ph2833, !dbg !28437

.lr.ph2833:                                       ; preds = %bb.mo
  %i.ama = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.amb = getelementptr inbounds nuw i8, ptr %1, i64 15456 ; 2 uses
  br label %bb.mq, !dbg !28437

bb.mp:                                            ; preds = %.loopexit2539, %.loopexit.split-lp2540, %bb.nn, %bb.nz
  %.pn1501 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2239, %bb.nn ], [ %lpad.thr_comm2238, %bb.nz ], [ %lpad.loopexit2541, %.loopexit2539 ], [ %lpad.loopexit.split-lp2542, %.loopexit.split-lp2540 ]
    #dbg_value(ptr %i.ci, !26690, !DIExpression(), !23013)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %.thread2030 unwind label %bb.gm, !dbg !28438

.loopexit2539:                                    ; preds = %bb.nx
  %lpad.loopexit2541 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mp

.loopexit.split-lp2540:                           ; preds = %bb.nt
  %lpad.loopexit.split-lp2542 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mp

bb.mq:                                            ; preds = %.lr.ph2833, %bb.nw
  %i.amc = phi ptr [ %.sroa.41409.0.copyload, %.lr.ph2833 ], [ %i.anm, %bb.nw ] ; 3 uses
  %.sroa.0158.282831 = phi i8 [ %.sroa.0158.27.lcssa, %.lr.ph2833 ], [ %.sroa.0158.302252, %bb.nw ]
  %.sroa.0166.282830 = phi i8 [ %.sroa.0166.27.lcssa, %.lr.ph2833 ], [ %.sroa.0166.302250, %bb.nw ]
  %.sroa.0191.312829 = phi i64 [ %.sroa.0191.30.lcssa, %.lr.ph2833 ], [ %.sroa.0191.332248, %bb.nw ] ; 3 uses
    #dbg_value(i8 %.sroa.0158.282831, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.282830, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.312829, !25128, !DIExpression(), !25924)
  call void @llvm.experimental.noalias.scope.decl(metadata !26791), !dbg !24757
    #dbg_value(ptr %i.amc, !26687, !DIExpression(), !23016)
    #dbg_value(ptr %i.amc, !26688, !DIExpression(), !23017)
    #dbg_value(ptr %i.amc, !26697, !DIExpression(), !23019)
    #dbg_value(ptr %i.amc, !26703, !DIExpression(), !23021)
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 16, !dbg !28439
  store ptr %i.amd, ptr %.sroa.5349.0..sroa_idx, align 8, !dbg !28440, !alias.scope !26791, !noalias !26792
  %i.ame = load <2 x i64>, ptr %i.amc, align 8, !dbg !28441, !noalias !26793
  %i.amf = load i64, ptr %i.amc, align 8, !dbg !28441, !noalias !26793, !noundef !2431
    #dbg_value(i64 %i.amf, !23919, !DIExpression(), !26794)
    #dbg_value(i64 poison, !23920, !DIExpression(), !26794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !28442
  store <2 x i64> %i.ame, ptr %i.ama, align 8, !dbg !28443
  store i64 17, ptr %i.ch, align 8, !dbg !28443
  %i.amg = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ch)
          to label %bb.no unwind label %bb.nz, !dbg !28444

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit1791: ; preds = %bb.nw, %bb.mo
  %.sroa.0191.31.lcssa = phi i64 [ %.sroa.0191.30.lcssa, %bb.mo ], [ %.sroa.0191.332248, %bb.nw ], !dbg !28215
  %.sroa.0166.28.lcssa = phi i8 [ %.sroa.0166.27.lcssa, %bb.mo ], [ %.sroa.0166.302250, %bb.nw ], !dbg !26379
  %.sroa.0158.28.lcssa = phi i8 [ %.sroa.0158.27.lcssa, %bb.mo ], [ %.sroa.0158.302252, %bb.nw ], !dbg !26379
    #dbg_value(ptr %i.ci, !26690, !DIExpression(), !23025)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyyEEECslusEaBCZKLp_13quiche_client.exit1795 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28445

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyyEEECslusEaBCZKLp_13quiche_client.exit1795: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit1791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !28446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !28447
    #dbg_value(ptr %i.tw, !26795, !DIExpression(), !23028)
    #dbg_value(ptr %i.tw, !26801, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !23031)
    #dbg_value(ptr %i.tw, !26807, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !23034)
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 14568, !dbg !28448 ; 2 uses
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.amh)
          to label %_RNvMs0_NtCs3f36owOmepS_6quiche3cidNtB5_21ConnectionIdentifiers16retire_dcid_seqs.exit unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28449

_RNvMs0_NtCs3f36owOmepS_6quiche3cidNtB5_21ConnectionIdentifiers16retire_dcid_seqs.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyyEEECslusEaBCZKLp_13quiche_client.exit1795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !24861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.ce, i64 48, i1 false), !dbg !24861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !28450
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.mr unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28451

bb.mr:                                            ; preds = %_RNvMs0_NtCs3f36owOmepS_6quiche3cidNtB5_21ConnectionIdentifiers16retire_dcid_seqs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !24861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !28452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !28453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !28454
  %i.ami = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.amj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  br label %.outer2538, !dbg !28455

.outer2538:                                       ; preds = %bb.nk, %bb.mr
  %.sroa.0191.32.ph = phi i64 [ %i.amv, %bb.nk ], [ %.sroa.0191.31.lcssa, %bb.mr ] ; 3 uses
  %.sroa.0166.29.ph = phi i8 [ 1, %bb.nk ], [ %.sroa.0166.28.lcssa, %bb.mr ]
  %.sroa.0158.29.ph = phi i8 [ 1, %bb.nk ], [ %.sroa.0158.28.lcssa, %bb.mr ]
  br label %bb.ms, !dbg !28456

bb.ms:                                            ; preds = %.outer2538, %bb.mw
    #dbg_value(i8 %.sroa.0158.29.ph, !23816, !DIExpression(), !26151)
    #dbg_value(i8 %.sroa.0166.29.ph, !23817, !DIExpression(), !26152)
    #dbg_value(i64 %.sroa.0191.32.ph, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %.sroa.0191.32.ph, !23785, !DIExpression(), !25922)
    #dbg_value(ptr %i.cd, !26833, !DIExpression(), !26842)
    #dbg_value(ptr %i.cd, !26839, !DIExpression(), !26843)
    #dbg_value(ptr %i.cd, !26823, !DIExpression(), !26844)
  %i.amk = invoke { i64, i64 } @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cd)
          to label %bb.mu unwind label %.loopexit2532, !dbg !28456 ; 2 uses

bb.mt:                                            ; preds = %.loopexit2532, %.loopexit.split-lp2533, %bb.na, %bb.nm
  %.pn1497 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2231, %bb.na ], [ %lpad.thr_comm2230, %bb.nm ], [ %lpad.loopexit2534, %.loopexit2532 ], [ %lpad.loopexit.split-lp2535, %.loopexit.split-lp2533 ]
    #dbg_value(ptr %i.cd, !26845, !DIExpression(), !23045)
    #dbg_value(ptr %i.cd, !26851, !DIExpression(), !23048)
    #dbg_value(ptr %i.cd, !26857, !DIExpression(), !23051)
    #dbg_value(ptr %i.cd, !26864, !DIExpression(), !23054)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cd)
          to label %.thread2030 unwind label %bb.gm, !dbg !28457

.loopexit2532:                                    ; preds = %bb.ms
  %lpad.loopexit2534 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt

.loopexit.split-lp2533:                           ; preds = %bb.ne, %bb.nh
  %lpad.loopexit.split-lp2535 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt

bb.mu:                                            ; preds = %bb.ms
  %i.aml = extractvalue { i64, i64 } %i.amk, 0, !dbg !28458
  %i.amm = extractvalue { i64, i64 } %i.amk, 1, !dbg !28458 ; 3 uses
  %i.amn = trunc nuw i64 %i.aml to i1, !dbg !28459
  br i1 %i.amn, label %bb.mv, label %.loopexit2537, !dbg !28459

bb.mv:                                            ; preds = %bb.mu
    #dbg_value(i64 %i.amm, !23926, !DIExpression(), !26870)
  %i.amo = load i64, ptr %i.aem, align 8, !dbg !28460, !range !2896, !noundef !2431
    #dbg_value(i64 %i.amo, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25100)
    #dbg_value(i64 poison, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25100)
  %i.amp = trunc nuw i64 %i.amo to i1, !dbg !28461
  br i1 %i.amp, label %bb.mw, label %bb.mx, !dbg !28461

.loopexit2537:                                    ; preds = %bb.mu, %bb.nd
    #dbg_value(ptr %i.cd, !26845, !DIExpression(), !23056)
    #dbg_value(ptr %i.cd, !26851, !DIExpression(), !23058)
    #dbg_value(ptr %i.cd, !26857, !DIExpression(), !23060)
    #dbg_value(ptr %i.cd, !26864, !DIExpression(), !23062)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECslusEaBCZKLp_13quiche_client.exit1799 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28462

bb.mw:                                            ; preds = %bb.mv
  %i.amq = load i64, ptr %i.ami, align 8, !dbg !28460
    #dbg_value(i64 %i.amq, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25100)
    #dbg_value(i64 %i.amq, !23927, !DIExpression(), !26871)
  %i.amr = icmp eq i64 %i.amm, %i.amq, !dbg !28463
  br i1 %i.amr, label %bb.ms, label %bb.mz, !dbg !28463

bb.mx:                                            ; preds = %bb.mv
    #dbg_value(i64 5, !23928, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26872)
    #dbg_value(i64 5, !25740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26875)
    #dbg_value(i64 undef, !23928, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26872)
    #dbg_value(i64 undef, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26875)
    #dbg_value(i64 5, !25773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26876)
    #dbg_value(i64 undef, !25773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26876)
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28464
  store i64 5, ptr %i.ams, align 8, !dbg !28464
  store i64 1, ptr %0, align 8, !dbg !28464
  br label %bb.my, !dbg !28465

bb.my:                                            ; preds = %bb.nl, %bb.mx
    #dbg_value(ptr %i.cd, !26845, !DIExpression(), !23064)
    #dbg_value(ptr %i.cd, !26851, !DIExpression(), !23066)
    #dbg_value(ptr %i.cd, !26857, !DIExpression(), !23068)
    #dbg_value(ptr %i.cd, !26864, !DIExpression(), !23070)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECslusEaBCZKLp_13quiche_client.exit1801 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !28466

bb.mz:                                            ; preds = %bb.mw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !dbg !28467
  store i64 %i.amm, ptr %i.amj, align 8, !dbg !28468
  store i64 21, ptr %i.cc, align 8, !dbg !28468
  %i.amt = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cc)
          to label %bb.nb unwind label %bb.nm, !dbg !28469

bb.na:                                            ; preds = %bb.nj, %bb.ni
  %lpad.thr_comm.split-lp2231 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt, !dbg !28470

bb.nb:                                            ; preds = %bb.mz
  %.not1494 = icmp ugt i64 %i.amt, %.sroa.0191.32.ph, !dbg !28471
  br i1 %.not1494, label %bb.ne, label %bb.nc, !dbg !28471

bb.nc:                                            ; preds = %bb.nb
  %i.amu = invoke noundef i64 @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8wire_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cc)
          to label %bb.nf unwind label %bb.nm, !dbg !28472

bb.nd:                                            ; preds = %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !28470
  br label %.loopexit2537, !dbg !28473

bb.ne:                                            ; preds = %bb.nb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.cc)
          to label %bb.nd unwind label %.loopexit.split-lp2533, !dbg !28470

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECslusEaBCZKLp_13quiche_client.exit1799: ; preds = %.loopexit2537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !28474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !28475
  br label %.thread2123, !dbg !28476

bb.nf:                                            ; preds = %bb.nc
  %i.amv = sub i64 %.sroa.0191.32.ph, %i.amu, !dbg !28477
    #dbg_value(i64 %i.amv, !23785, !DIExpression(), !25922)
    #dbg_value(i64 %i.amv, !25128, !DIExpression(), !25924)
    #dbg_value(i64 %i.amv, !25128, !DIExpression(), !25926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !dbg !28478
  invoke void @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame8to_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %bb.ng unwind label %bb.nm, !dbg !28479

bb.ng:                                            ; preds = %bb.nf
  %i.amw = load i64, ptr %i.cb, align 8, !dbg !28480, !range !8114, !noundef !2431 ; 2 uses
  %.not1495 = icmp eq i64 %i.amw, -1, !dbg !28480
  br i1 %.not1495, label %bb.ni, label %bb.nh, !dbg !28481

bb.nh:                                            ; preds = %bb.ng
  %i.amx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !28482
  %i.amy = load i64, ptr %i.amx, align 8, !dbg !28482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !28483
    #dbg_value(i64 %i.amw, !23931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26879)
    #dbg_value(i64 %i.amw, !25740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26882)
    #dbg_value(i64 %i.amy, !23931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26879)
    #dbg_value(i64 %i.amy, !25740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26882)
    #dbg_value(i64 %i.amw, !25774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26883)
    #dbg_value(i64 %i.amy, !25774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26883)
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28484
  store i64 %i.amw, ptr %i.amz, align 8, !dbg !28484
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28484
  store i64 %i.amy, ptr %i.ana, align 8, !dbg !28484
  store i64 1, ptr %0, align 8, !dbg !28484
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.cc)
          to label %bb.nl unwind label %.loopexit.split-lp2533, !dbg !28470

bb.ni:                                            ; preds = %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !28483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !dbg !28485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ca, ptr noundef nonnull align 8 dereferenceable(128) %i.cc, i64 128, i1 false), !dbg !28485
  invoke fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_E4pushCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(136) %i.fa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ca)
          to label %bb.nj unwind label %bb.na, !dbg !28486

bb.nj:                                            ; preds = %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !28487
end_hunk_2
begin_hunk_3_@_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection3newCslusEaBCZKLp_13quiche_client:bb.a
bb.af:                                            ; preds = %bb.ad
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !40716, !noalias !40362
  invoke void @_RNvMsi_NtCs3f36owOmepS_6quiche6packetNtB5_13CryptoContext3new(ptr noalias nofree noundef nonnull sret([4080 x i8]) align 8 captures(none) dereferenceable(4080) %i.w)
          to label %bb.ai unwind label %bb.ah, !dbg !40716, !noalias !40467

bb.ah:                                            ; preds = %bb.ag
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet13CryptoContextECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(4080) %i.x) #24
          to label %bb.ae unwind label %bb.df, !dbg !40715, !noalias !40467

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4080) %i.z, ptr noundef nonnull align 8 dereferenceable(4080) %i.y, i64 4080, i1 false), !dbg !40712, !noalias !40362
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 4080, !dbg !40712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4080) %i.ei, ptr noundef nonnull align 8 dereferenceable(4080) %i.x, i64 4080, i1 false), !dbg !40712, !noalias !40362
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 8160, !dbg !40712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4080) %i.ej, ptr noundef nonnull align 8 dereferenceable(4080) %i.w, i64 4080, i1 false), !dbg !40712, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !40715, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !40715, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !40715, !noalias !40362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !40717, !noalias !40362
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 80, !dbg !40718
  store i64 -2, ptr %i.ek, align 16, !dbg !40718, !noalias !40362
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 152, !dbg !40718
  store i64 0, ptr %i.el, align 8, !dbg !40718, !noalias !40362
  store i128 0, ptr %i.v, align 16, !dbg !40718, !noalias !40362
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 160, !dbg !40718
  store i64 65527, ptr %i.em, align 16, !dbg !40718, !noalias !40362
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 168, !dbg !40718
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 216, !dbg !40718
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.en, i8 0, i64 48, i1 false), !dbg !40718, !noalias !40362
  store i64 3, ptr %i.eo, align 8, !dbg !40718, !noalias !40362
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 224, !dbg !40718
  store i64 25, ptr %i.ep, align 16, !dbg !40718, !noalias !40362
  %i.eq = getelementptr inbounds nuw i8, ptr %i.v, i64 240, !dbg !40718
  store i8 0, ptr %i.eq, align 16, !dbg !40718, !noalias !40362
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 232, !dbg !40718
  store i64 2, ptr %i.er, align 8, !dbg !40718, !noalias !40362
  %i.es = getelementptr inbounds nuw i8, ptr %i.v, i64 104, !dbg !40718
  store i64 -2, ptr %i.es, align 8, !dbg !40718, !noalias !40362
  %i.et = getelementptr inbounds nuw i8, ptr %i.v, i64 128, !dbg !40718
  store i64 -2, ptr %i.et, align 16, !dbg !40718, !noalias !40362
  %i.eu = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !40718
  store i64 0, ptr %i.eu, align 16, !dbg !40718, !noalias !40362
  %i.ev = getelementptr inbounds nuw i8, ptr %i.v, i64 48, !dbg !40718
  store i64 -1, ptr %i.ev, align 16, !dbg !40718, !noalias !40362
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 272, !dbg !40719
  %i.ex = load <2 x i64>, ptr %i.ew, align 16, !dbg !40719, !alias.scope !40355, !noalias !40468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !40720, !noalias !40362
  invoke fastcc void @_RNvXsf_NtCs3f36owOmepS_6quiche16transport_paramsNtB5_15TransportParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 16 captures(none) dereferenceable(256) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(624) %7)
          to label %bb.al unwind label %bb.ak, !dbg !40721, !noalias !40467

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls9HandshakeECslusEaBCZKLp_13quiche_client.exit.i, %bb.ak
  %.sroa.0110.8.i = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls9HandshakeECslusEaBCZKLp_13quiche_client.exit.i ], [ true, %bb.ak ], !dbg !40649
  %.pn393.pn.i = phi { ptr, i32 } [ %.pn393.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls9HandshakeECslusEaBCZKLp_13quiche_client.exit.i ], [ %i.ey, %bb.ak ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche16transport_params15TransportParamsECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 16 dereferenceable(256) %i.v) #24
          to label %bb.dv unwind label %bb.df, !dbg !40704, !noalias !40467

bb.ak:                                            ; preds = %bb.ai
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !40722, !noalias !40362
  %i.ez = load ptr, ptr %i.am, align 8, !dbg !40722, !noalias !40362, !noundef !2431 ; 2 uses
  %i.fa = load i8, ptr %i.ax, align 8, !dbg !40722, !range !7366, !noalias !40362, !noundef !2431 ; 2 uses
  store ptr %i.ez, ptr %i.t, align 8, !dbg !40722, !noalias !40362
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !40722
  store i8 %i.fa, ptr %i.fb, align 8, !dbg !40722, !noalias !40362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !40723, !noalias !40362
  store i64 -1, ptr %i.s, align 8, !dbg !40723, !noalias !40362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !40724, !noalias !40362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.r, ptr noundef nonnull align 8 dereferenceable(112) %i.ai, i64 112, i1 false), !dbg !40724, !noalias !40362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !40725, !noalias !40362
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 496, !dbg !40725
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %bb.ao unwind label %bb.an, !dbg !40726, !noalias !40467

bb.am:                                            ; preds = %bb.ap, %bb.an
  %.pn393.i = phi { ptr, i32 } [ %i.fg, %bb.ap ], [ %i.fd, %bb.an ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche4path7PathMapECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(112) %i.r) #24
          to label %bb.dt unwind label %bb.df, !dbg !40704, !noalias !40467

bb.an:                                            ; preds = %bb.al
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !40727, !noalias !40362
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 576, !dbg !40728
  %i.ff = load i64, ptr %i.fe, align 16, !dbg !40728, !alias.scope !40355, !noalias !40468, !noundef !2431
  invoke void @_RNvMNtCs3f36owOmepS_6quiche11flowcontrolNtB2_11FlowControl3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, i64 noundef %i.bb, i64 noundef %i.bb, i64 noundef %i.ff)
          to label %bb.aq unwind label %bb.ap, !dbg !40727, !noalias !40467

bb.ap:                                            ; preds = %bb.ao
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #24
          to label %bb.am unwind label %bb.df, !dbg !40704, !noalias !40467

bb.aq:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 536, !dbg !40729
  %i.fi = load double, ptr %i.fh, align 8, !dbg !40729, !alias.scope !40355, !noalias !40468, !noundef !2431
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.i), !dbg !40730
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 200, !dbg !40731
    #dbg_value(i64 poison, !40563, !DIExpression(), !39911)
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 208, !dbg !40732
    #dbg_value(i64 poison, !40567, !DIExpression(), !39911)
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 584, !dbg !40733
  %i.fm = load i64, ptr %i.fl, align 8, !dbg !40733, !alias.scope !40355, !noalias !40468, !noundef !2431
    #dbg_value(i64 %i.fm, !40568, !DIExpression(), !39911)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.i, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false), !dbg !40734, !noalias !40362
  %.sroa.016.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.016.i, i64 32, !dbg !40734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false), !dbg !40734, !noalias !40362
  %.sroa.016.64..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.016.i, i64 64, !dbg !40734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.64..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false), !dbg !40734, !noalias !40362
  %.sroa.016.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.016.i, i64 96, !dbg !40734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false), !dbg !40734, !noalias !40362
  %.sroa.016.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.016.i, i64 128, !dbg !40734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.128..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false), !dbg !40734, !noalias !40362
  %.sroa.016.160..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.016.i, i64 160, !dbg !40734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.160..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false), !dbg !40734, !noalias !40362
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 608, !dbg !40735
  %i.fo = load i8, ptr %i.fn, align 16, !dbg !40735, !range !7366, !alias.scope !40355, !noalias !40468, !noundef !2431
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 611, !dbg !40736
  %i.fq = load i8, ptr %i.fp, align 1, !dbg !40736, !range !7366, !alias.scope !40355, !noalias !40468, !noundef !2431
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 544, !dbg !40737
  %i.fs = load i64, ptr %i.fr, align 16, !dbg !40737, !alias.scope !40355, !noalias !40468, !noundef !2431
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 552, !dbg !40738
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !40738, !alias.scope !40355, !noalias !40468, !noundef !2431
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 615, !dbg !40739
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !40739, !range !7366, !alias.scope !40355, !noalias !40468, !noundef !2431
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 592, !dbg !40740
  %i.fy = load i64, ptr %i.fx, align 16, !dbg !40740, !alias.scope !40355, !noalias !40468, !noundef !2431
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ag, i64 15512, !dbg !40741 ; 2 uses
  store i32 %i.du, ptr %i.fz, align 8, !dbg !40741, !noalias !40362
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ag, i64 14424, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ga, ptr noundef nonnull align 8 dereferenceable(248) %i.ah, i64 248, i1 false), !dbg !40741, !noalias !40362
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ag, i64 14672, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !40741, !noalias !40362
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ag, i64 512, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.gc, ptr noundef nonnull align 16 dereferenceable(528) %i.ad, i64 528, i1 false), !dbg !40741, !noalias !40362
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ag, i64 1040, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12240) %i.gd, ptr noundef nonnull align 8 dereferenceable(12240) %i.z, i64 12240, i1 false), !dbg !40741, !noalias !40362
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ag, i64 15248, !dbg !40741
  store i64 0, ptr %i.ge, align 16, !dbg !40741, !noalias !40362
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ag, i64 13280, !dbg !40741
  store i64 0, ptr %i.gf, align 16, !dbg !40741, !noalias !40362
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13296, !dbg !40741
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !40741, !noalias !40362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ag, ptr noundef nonnull align 16 dereferenceable(256) %i.v, i64 256, i1 false), !dbg !40741, !noalias !40362
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ag, i64 13312, !dbg !40741
  store <2 x i64> %i.ex, ptr %i.gg, align 16, !dbg !40741, !noalias !40362
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ag, i64 256, !dbg !40741 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.gh, ptr noundef nonnull align 16 dereferenceable(256) %i.u, i64 256, i1 false), !dbg !40741, !noalias !40362
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ag, i64 14128, !dbg !40741 ; 4 uses
  store ptr %i.ez, ptr %i.gi, align 16, !dbg !40741, !noalias !40362
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ag, i64 14136, !dbg !40741
  store i8 %i.fa, ptr %i.gj, align 8, !dbg !40741, !noalias !40362
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ag, i64 14744, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !40741, !noalias !40362
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ag, i64 14160, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.gl, ptr noundef nonnull align 16 dereferenceable(264) %i.ak, i64 264, i1 false), !dbg !40741, !noalias !40362
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ag, i64 13408, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.gm, ptr noundef nonnull align 8 dereferenceable(112) %i.r, i64 112, i1 false), !dbg !40741, !noalias !40362
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ag, i64 15256, !dbg !40741
  store i64 %i.cq, ptr %i.gn, align 8, !dbg !40741, !noalias !40362
  %i.go = getelementptr inbounds nuw i8, ptr %i.ag, i64 15264, !dbg !40741
  store i64 0, ptr %i.go, align 16, !dbg !40741, !noalias !40362
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ag, i64 14696, !dbg !40741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !40741, !noalias !40362
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ag, i64 15272, !dbg !40741
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ag, i64 14080, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gq, i8 0, i64 64, i1 false), !dbg !40741, !noalias !40362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.gr, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !dbg !40741, !noalias !40362
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ag, i64 15516, !dbg !40741
  store i8 0, ptr %i.gs, align 4, !dbg !40741, !noalias !40362
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ag, i64 15517, !dbg !40741
  store i8 0, ptr %i.gt, align 1, !dbg !40741, !noalias !40362
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ag, i64 15518, !dbg !40741
  store i8 0, ptr %i.gu, align 2, !dbg !40741, !noalias !40362
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ag, i64 15336, !dbg !40741
  store i64 0, ptr %i.gv, align 8, !dbg !40741, !noalias !40362
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ag, i64 15344, !dbg !40741
  store double %i.fi, ptr %i.gw, align 16, !dbg !40741, !noalias !40362
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ag, i64 15352, !dbg !40741
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ag, i64 14920, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gx, i8 0, i64 64, i1 false), !dbg !40741, !noalias !40362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.gy, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.016.i, i64 192, i1 false), !dbg !40741, !noalias !40362
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 15112, !dbg !40741
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 15144, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, i8 0, i64 32, i1 false), !dbg !40741, !noalias !40362
  %i.gz = load i64, ptr %i.fk, align 16, !dbg !40732, !alias.scope !40355, !noalias !40468, !noundef !2431 ; 2 uses
    #dbg_value(i64 %i.gz, !40567, !DIExpression(), !39911)
  %i.ha = load <2 x i64>, ptr %i.fj, align 8, !dbg !40731, !alias.scope !40355, !noalias !40468
  %i.hb = shufflevector <2 x i64> %i.ha, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>, !dbg !40731
  store <4 x i64> %i.hb, ptr %.sroa.13.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 15176, !dbg !40741
  store i64 %i.gz, ptr %.sroa.17.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 15184, !dbg !40741
  store i64 %i.gz, ptr %.sroa.18.0..sroa_idx.i, align 16, !dbg !40741, !noalias !40362
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 15192, !dbg !40741
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 15232, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.0..sroa_idx.i, i8 0, i64 40, i1 false), !dbg !40741, !noalias !40362
  store i64 %i.fm, ptr %.sroa.24.0..sroa_idx.i, align 16, !dbg !40741, !noalias !40362
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 15240, !dbg !40741
  store i64 0, ptr %.sroa.25.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ag, i64 14872, !dbg !40741
  store i64 -2, ptr %i.hc, align 8, !dbg !40741, !noalias !40362
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ag, i64 14896, !dbg !40741
  store i64 -2, ptr %i.hd, align 16, !dbg !40741, !noalias !40362
  %i.he = getelementptr inbounds nuw i8, ptr %i.ag, i64 14768, !dbg !40741
  store i64 -1, ptr %i.he, align 16, !dbg !40741, !noalias !40362
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ag, i64 14792, !dbg !40741
  store i64 -1, ptr %i.hf, align 8, !dbg !40741, !noalias !40362
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ag, i64 14832, !dbg !40741
  store i64 -1, ptr %i.hg, align 16, !dbg !40741, !noalias !40362
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ag, i64 13328, !dbg !40741
  store i64 0, ptr %i.hh, align 16, !dbg !40741, !noalias !40362
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ag, i64 14056, !dbg !40741
  store i32 -1, ptr %i.hi, align 8, !dbg !40741, !noalias !40362
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ag, i64 14072, !dbg !40741
  store i32 -1, ptr %i.hj, align 8, !dbg !40741, !noalias !40362
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ag, i64 13520, !dbg !40741
  store i64 0, ptr %i.hk, align 16, !dbg !40741, !noalias !40362
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13528, !dbg !40741
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.424.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13536, !dbg !40741
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ag, i64 14720, !dbg !40741
  store i64 0, ptr %i.hl, align 16, !dbg !40741, !noalias !40362
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 14728, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.525.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40741, !noalias !40362
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.428.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 14736, !dbg !40741
  store i64 0, ptr %.sroa.529.0..sroa_idx.i, align 16, !dbg !40741, !noalias !40362
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ag, i64 15519, !dbg !40741 ; 3 uses
  store i8 %i.cv, ptr %i.hm, align 1, !dbg !40741, !noalias !40362
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ag, i64 15520, !dbg !40741 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ag, i64 15522, !dbg !40741
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ag, i64 15524, !dbg !40741
  store i32 0, ptr %i.hn, align 16, !dbg !40741, !noalias !40362
  store i8 %i.cv, ptr %i.hp, align 4, !dbg !40741, !noalias !40362
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ag, i64 15525, !dbg !40741
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 15534, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.hq, i8 0, i64 9, i1 false), !dbg !40741, !noalias !40362
  store i8 %i.fo, ptr %i.hr, align 2, !dbg !40741, !noalias !40362
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ag, i64 15535, !dbg !40741
  store i8 %i.fq, ptr %i.hs, align 1, !dbg !40741, !noalias !40362
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ag, i64 14144, !dbg !40741
  store ptr null, ptr %i.ht, align 16, !dbg !40741, !noalias !40362
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ag, i64 13648, !dbg !40741
  store i64 -1, ptr %i.hu, align 16, !dbg !40741, !noalias !40362
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 14040, !dbg !40741
  store i8 0, ptr %.sroa.431.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 14041, !dbg !40741
  store i8 1, ptr %.sroa.532.0..sroa_idx.i, align 1, !dbg !40741, !noalias !40362
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ag, i64 13552, !dbg !40741
  store i64 0, ptr %i.hv, align 16, !dbg !40741, !noalias !40362
  %.sroa.034.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13560, !dbg !40741
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.034.sroa.4.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %.sroa.034.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13568, !dbg !40741
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13584, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.034.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40741, !noalias !40362
  store i64 %i.fs, ptr %.sroa.435.0..sroa_idx.i, align 16, !dbg !40741, !noalias !40362
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13592, !dbg !40741
  %.sroa.037.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13608, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40741, !noalias !40362
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.037.sroa.4.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %.sroa.037.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13616, !dbg !40741
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13632, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.037.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !40741, !noalias !40362
  store i64 %i.fu, ptr %.sroa.438.0..sroa_idx.i, align 16, !dbg !40741, !noalias !40362
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13640, !dbg !40741
  store i64 0, ptr %.sroa.539.0..sroa_idx.i, align 8, !dbg !40741, !noalias !40362
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ag, i64 15536, !dbg !40741
  store i8 1, ptr %i.hw, align 16, !dbg !40741, !noalias !40362
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ag, i64 15537, !dbg !40741
  store i8 %i.fw, ptr %i.hx, align 1, !dbg !40741, !noalias !40362
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ag, i64 15416, !dbg !40741
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ag, i64 13344, !dbg !40741
  store i64 0, ptr %i.hz, align 16, !dbg !40741, !noalias !40362
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13360, !dbg !40741
  store i64 0, ptr %.sroa.645.0..sroa_idx.i, align 16, !dbg !40741, !noalias !40362
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ag, i64 13376, !dbg !40741
  store i64 0, ptr %i.ia, align 16, !dbg !40741, !noalias !40362
  %.sroa.645.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 13392, !dbg !40741
  store i64 0, ptr %.sroa.645.0..sroa_idx46.i, align 16, !dbg !40741, !noalias !40362
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ag, i64 15504, !dbg !40741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hy, i8 0, i64 88, i1 false), !dbg !40741, !noalias !40362
  store i64 %i.fy, ptr %i.ib, align 16, !dbg !40741, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.i), !dbg !40704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !40704, !noalias !40362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !40704, !noalias !40362
  br i1 %i.ay, label %bb.ar, label %bb.as, !dbg !40742

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(ptr %2, !40283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39912)
    #dbg_value(ptr %2, !40363, !DIExpression(), !39914)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
    #dbg_value(ptr %3, !40283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39912)
    #dbg_value(ptr %3, !40363, !DIExpression(), !39916)
  %.sroa.053.0.in.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !40743
  %.sroa.053.0.i = load ptr, ptr %.sroa.053.0.in.i, align 8, !dbg !40743, !alias.scope !40354, !noalias !40570, !nonnull !2431, !noundef !2431
  %.sroa.455.0.in.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !40743
  %.sroa.455.0.i = load i64, ptr %.sroa.455.0.in.i, align 8, !dbg !40743, !alias.scope !40354, !noalias !40570, !noundef !2431 ; 6 uses
    #dbg_value(ptr %.sroa.053.0.i, !40237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39917)
    #dbg_value(ptr %.sroa.053.0.i, !40253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39918)
    #dbg_value(ptr %.sroa.053.0.i, !40257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39919)
    #dbg_value(i64 %.sroa.455.0.i, !40237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39917)
    #dbg_value(i64 %.sroa.455.0.i, !40253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39918)
    #dbg_value(i64 %.sroa.455.0.i, !40257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39919)
    #dbg_value(i64 %.sroa.455.0.i, !40239, !DIExpression(), !39920)
    #dbg_value(i64 %.sroa.455.0.i, !40409, !DIExpression(), !39921)
    #dbg_value(i64 %.sroa.455.0.i, !40412, !DIExpression(), !39922)
    #dbg_value(i64 %.sroa.455.0.i, !40571, !DIExpression(), !39925)
    #dbg_value(i64 %.sroa.455.0.i, !40575, !DIExpression(), !39928)
    #dbg_value(i64 %.sroa.455.0.i, !40234, !DIExpression(), !39929)
    #dbg_value(i64 %.sroa.455.0.i, !40415, !DIExpression(), !39930)
    #dbg_value(i64 %.sroa.455.0.i, !40433, !DIExpression(), !39741)
    #dbg_value(i64 1, !40416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39930)
    #dbg_value(i64 1, !40434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39741)
    #dbg_value(i64 1, !40416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39930)
    #dbg_value(i64 1, !40434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !40744, !noalias !40362
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.455.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.av unwind label %bb.au, !dbg !40744, !noalias !40467

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit426.i, %bb.aq
    #dbg_value(ptr %i.ag, !40442, !DIExpression(DW_OP_plus_uconst, 14424, DW_OP_stack_value), !39931)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ag, i64 14464, !dbg !40745
  %i.id = invoke noundef align 16 ptr @_RNvMs_NtCs3f36owOmepS_6quiche3cidNtB4_35BoundedNonEmptyConnectionIdVecDeque3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ic, i64 noundef 0)
          to label %bb.bo unwind label %bb.au, !dbg !40746, !noalias !40467 ; 3 uses

bb.at:                                            ; preds = %bb.co, %.body430.i, %.body423.i, %.body.i, %bb.au
  %.pn411.i = phi { ptr, i32 } [ %i.ie, %bb.au ], [ %.pn407.pn.pn.i, %bb.co ], [ %eh.lpad-body431.i, %.body430.i ], [ %eh.lpad-body424.i, %.body423.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3f36owOmepS_6quiche10ConnectionECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 16 dereferenceable(15552) %i.ag) #24
          to label %.thread.i unwind label %bb.df, !dbg !40747, !noalias !40467

bb.au:                                            ; preds = %bb.dj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6crypto4SealEECslusEaBCZKLp_13quiche_client.exit.i, %.invoke.i, %bb.ck, %bb.ci, %bb.ce, %bb.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit433.i, %bb.br, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit.i, %bb.as, %bb.ar
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.ar
  %i.if = load i64, ptr %i.f, align 8, !dbg !40744, !range !2896, !noalias !40362, !noundef !2431
  %i.ig = trunc nuw i64 %i.if to i1, !dbg !40748
  %i.ih = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !40749
  %i.ii = load i64, ptr %i.ih, align 8, !dbg !40749, !range !8171, !noalias !40362, !noundef !2431 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !40749 ; 2 uses
  br i1 %i.ig, label %bb.aw, label %bb.ax, !dbg !40748, !prof !7439

bb.aw:                                            ; preds = %bb.av
  %i.ik = load i64, ptr %i.ij, align 8, !dbg !40750, !noalias !40362
    #dbg_value(i64 %i.ii, !40418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39932)
    #dbg_value(i64 %i.ik, !40418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39932)
  br label %.invoke.i, !dbg !40751

bb.ax:                                            ; preds = %bb.av
  %i.il = load ptr, ptr %i.ij, align 8, !dbg !40752, !noalias !40362, !nonnull !2431, !noundef !2431 ; 3 uses
    #dbg_value(i64 %i.ii, !40417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39933)
    #dbg_value(ptr %i.il, !40417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39933)
    #dbg_value(ptr poison, !40432, !DIExpression(), !39934)
  %i.im = icmp ule i64 %.sroa.455.0.i, %i.ii, !dbg !40753
    #dbg_value(i1 true, !40579, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !39937)
  call void @llvm.assume(i1 %i.im), !dbg !40754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !40755, !noalias !40362
    #dbg_value(i64 %i.ii, !40240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39938)
    #dbg_value(i64 %i.ii, !40581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39941)
    #dbg_value(i64 %i.ii, !40583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39944)
    #dbg_value(i64 %i.ii, !40585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !39947)
    #dbg_value(ptr %i.il, !40240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39938)
    #dbg_value(ptr %i.il, !40581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39941)
    #dbg_value(ptr %i.il, !40583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39944)
    #dbg_value(ptr %i.il, !40585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !39947)
    #dbg_value(i64 0, !40240, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39938)
    #dbg_value(i64 0, !40581, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39941)
    #dbg_value(i64 0, !40583, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39944)
    #dbg_value(i64 0, !40585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39947)
  %.not399.i = icmp eq i64 %.sroa.455.0.i, 0, !dbg !40756
  br i1 %.not399.i, label %bb.ay, label %bb.bc, !dbg !40756

bb.ay:                                            ; preds = %bb.bc, %bb.ax
    #dbg_value(i64 %.sroa.455.0.i, !40585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39947)
    #dbg_value(i64 %.sroa.455.0.i, !40583, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39944)
    #dbg_value(i64 %.sroa.455.0.i, !40581, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !39941)
end_hunk_3
