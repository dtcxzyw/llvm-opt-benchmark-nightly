Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.13?download=true
inline.NumInlined: 290
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE12poll_expiredB1f_:bb.a
    #dbg_value(ptr %i.d, !12345, !DIExpression(), !12373)
    #dbg_value(ptr %2, !12370, !DIExpression(), !12373)
    #dbg_value(ptr %i.d, !12371, !DIExpression(), !12375)
    #dbg_value(ptr %i.d, !12376, !DIExpression(), !12382)
    #dbg_value(ptr %i.d, !12384, !DIExpression(), !12397)
    #dbg_value(ptr poison, !12381, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12382)
    #dbg_value(ptr %2, !12301, !DIExpression(), !12399)
    #dbg_value(ptr %.pre, !12390, !DIExpression(), !12397)
  %i.g = load ptr, ptr %i.f, align 8, !dbg !12401, !noundef !13
    #dbg_value(ptr %i.g, !12391, !DIExpression(), !12402)
    #dbg_value(ptr %i.e, !12393, !DIExpression(), !12402)
    #dbg_value(ptr %i.e, !12403, !DIExpression(), !12412)
    #dbg_value(ptr %.pre77, !12394, !DIExpression(), !12414)
    #dbg_value(ptr poison, !12396, !DIExpression(), !12414)
    #dbg_value(ptr poison, !12409, !DIExpression(), !12412)
  %i.h = icmp eq ptr %i.g, %.pre77, !dbg !12415
  %.pre76 = load ptr, ptr %.pre, align 8, !dbg !12337 ; 2 uses
    #dbg_value(ptr %.pre76, !12396, !DIExpression(), !12414)
    #dbg_value(ptr %.pre76, !12409, !DIExpression(), !12412)
  %i.i = icmp eq ptr %i.e, %.pre76
  %or.cond = select i1 %i.h, i1 %i.i, i1 false, !dbg !12415
  br i1 %or.cond, label %bb.f, label %bb.c, !dbg !12415

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.j = phi ptr [ %.pre75, %._crit_edge ], [ %.pre76, %bb.b ], !dbg !12337
    #dbg_value(ptr %.pre, !12343, !DIExpression(), !12416)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !12337, !nonnull !13, !noundef !13
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef %.pre77), !dbg !12337 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0, !dbg !12337 ; 3 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1, !dbg !12337 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ], !dbg !12417
  %.val = load ptr, ptr %i.d, align 8, !dbg !12418, !align !3695, !noundef !13 ; 2 uses
    #dbg_value(ptr poison, !4211, !DIExpression(), !12419)
  %i.o = icmp eq ptr %.val, null, !dbg !12421
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa2e0UnRrdBM_12tokio_quiche.exit, label %bb.d, !dbg !12421

bb.d:                                             ; preds = %bb.c
  %.val40 = load ptr, ptr %i.f, align 8, !dbg !12418
    #dbg_value(ptr poison, !4220, !DIExpression(), !12422)
    #dbg_value(ptr poison, !4228, !DIExpression(), !12424)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12426
  %i.q = load ptr, ptr %i.p, align 8, !dbg !12426, !nonnull !13, !noundef !13
  invoke void %i.q(ptr noundef %.val40)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa2e0UnRrdBM_12tokio_quiche.exit unwind label %bb.e, !dbg !12426, !inline_history !12427

common.resume:                                    ; preds = %bb.r, %.body.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %eh.lpad-body.i.i.i.i, %.body.i ], [ %i.bu, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !12300

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.d, align 8, !dbg !12418
  store ptr %i.n, ptr %i.f, align 8, !dbg !12418
  br label %common.resume, !dbg !12428

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %i.d, align 8, !dbg !12418
  store ptr %i.n, ptr %i.f, align 8, !dbg !12418
  br label %bb.f, !dbg !12429

bb.f:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa2e0UnRrdBM_12tokio_quiche.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12430), !dbg !12433
    #dbg_declare(ptr poison, !12434, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !12461)
    #dbg_value(ptr %1, !12483, !DIExpression(), !12497)
    #dbg_value(ptr %2, !12484, !DIExpression(), !12497)
    #dbg_declare(ptr %i.c, !12498, !DIExpression(), !12504)
    #dbg_value(i8 1, !12512, !DIExpression(), !12521)
    #dbg_value(i64 1000, !12523, !DIExpression(), !12532)
    #dbg_value(i64 1000, !12534, !DIExpression(), !12543)
    #dbg_value(i64 1000, !12545, !DIExpression(), !12555)
    #dbg_declare(ptr poison, !12458, !DIExpression(), !12557)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12558 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12559), !dbg !12562
    #dbg_value(ptr %1, !12563, !DIExpression(), !12575)
    #dbg_value(ptr %i.s, !12570, !DIExpression(), !12575)
  %i.t = load i64, ptr %1, align 8, !dbg !12577, !range !12578, !alias.scope !12579, !noalias !12580, !noundef !13
  %i.u = trunc nuw i64 %i.t to i1, !dbg !12583
  br i1 %i.u, label %bb.g, label %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.preheader.i, !dbg !12583

_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.preheader.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre.i = load ptr, ptr %i.v, align 8, !dbg !12584, !alias.scope !12430, !noalias !12585
  br label %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.i, !dbg !12586

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12577 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !12587, !alias.scope !12579, !noalias !12580, !noundef !13 ; 3 uses
    #dbg_value(i64 %i.ac, !12571, !DIExpression(), !12588)
  %i.ad = tail call fastcc noundef nonnull align 8 ptr @_RNvXs0_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexNtB5_3KeyE5indexB1g_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.s, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !dbg !12589, !noalias !12590 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !12591, !range !12578, !noalias !12590, !noundef !13 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !12591
  %i.ag = load i64, ptr %i.af, align 8, !dbg !12591, !noalias !12590 ; 2 uses
  store i64 %i.ae, ptr %1, align 8, !dbg !12592, !alias.scope !12579, !noalias !12580
  store i64 %i.ag, ptr %i.ab, align 8, !dbg !12592, !alias.scope !12579, !noalias !12580
  %i.ah = trunc nuw i64 %i.ae to i1, !dbg !12593
  br i1 %i.ah, label %bb.h, label %bb.i, !dbg !12593

bb.h:                                             ; preds = %bb.g
    #dbg_value(i64 %i.ag, !12573, !DIExpression(), !12594)
  %i.ai = tail call fastcc noundef nonnull align 8 ptr @_RNvXs1_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtB5_3KeyE9index_mutB1g_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.s, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !dbg !12595, !noalias !12590
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !12596
  store i64 0, ptr %i.aj, align 8, !dbg !12596, !noalias !12590
  br label %bb.i, !dbg !12597

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = tail call fastcc noundef nonnull align 8 ptr @_RNvXs1_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtB5_3KeyE9index_mutB1g_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.s, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !dbg !12598, !noalias !12590
  store i64 0, ptr %i.ak, align 8, !dbg !12599, !noalias !12590
    #dbg_value(i64 1, !12485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12600)
    #dbg_value(i64 %i.ac, !12485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12600)
  br label %bb.aa, !dbg !12601

_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.i: ; preds = %bb.z, %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.preheader.i
  %i.al = phi ptr [ %.pre.i, %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.preheader.i ], [ %.sroa.05.0.i, %bb.z ], !dbg !12584 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null, !dbg !12584
  br i1 %.not.i, label %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit._crit_edge.i, label %bb.j, !dbg !12586

_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit._crit_edge.i: ; preds = %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.i
  %.pre68.i = load i64, ptr %i.y, align 8, !dbg !12604, !alias.scope !12430, !noalias !12585
  br label %bb.k, !dbg !12586

bb.j:                                             ; preds = %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.i
    #dbg_value(ptr %i.v, !12486, !DIExpression(), !12605)
    #dbg_value(ptr %i.v, !12606, !DIExpression(), !12615)
    #dbg_value(ptr %i.v, !12617, !DIExpression(), !12628)
    #dbg_value(ptr %i.v, !12606, !DIExpression(), !12630)
    #dbg_value(ptr %i.v, !12617, !DIExpression(), !12632)
    #dbg_value(ptr %i.v, !12635, !DIExpression(), !12642)
  %i.am = call noundef zeroext i1 @_RNvMNtNtCs2sJxpAufolh_5tokio4time5sleepNtB2_5Sleep10is_elapsed(ptr noundef nonnull align 8 %i.al), !dbg !12644
  br i1 %i.am, label %bb.m, label %bb.l, !dbg !12645

bb.k:                                             ; preds = %bb.o, %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit._crit_edge.i
  %i.an = phi i64 [ %.pre68.i, %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit._crit_edge.i ], [ %i.bq, %bb.o ], !dbg !12604
  %i.ao = call { i64, i64 } @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4pollB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.s), !dbg !12646 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0, !dbg !12646
    #dbg_value(i64 %i.ap, !12493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12647)
    #dbg_value(i64 poison, !12493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12647)
  call void @llvm.experimental.noalias.scope.decl(metadata !12648), !dbg !12651
    #dbg_value(ptr %1, !12652, !DIExpression(), !12659)
    #dbg_value(ptr poison, !12661, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12671)
    #dbg_declare(ptr %i.b, !12687, !DIExpression(), !12720)
    #dbg_declare(ptr poison, !12717, !DIExpression(), !12731)
    #dbg_value(ptr %i.z, !12729, !DIExpression(), !12732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12733, !noalias !12734
  call void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !dbg !12735
  %i.aq = load i64, ptr %i.b, align 8, !dbg !12736, !range !12578, !noalias !12734, !noundef !13
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !12737
  br i1 %i.ar, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.i, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.thread.i, !dbg !12737

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.thread.i: ; preds = %bb.k
    #dbg_value(i64 poison, !12683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12738)
    #dbg_value(i64 poison, !12683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12738)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12739, !noalias !12734
    #dbg_value(ptr %1, !12684, !DIExpression(), !12738)
    #dbg_value(i64 poison, !12434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12740)
    #dbg_value(i32 -1, !12434, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12740)
  br label %bb.t, !dbg !12741

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.aa, align 8, !dbg !12742, !noalias !12734, !noundef !13 ; 2 uses
    #dbg_value(i64 %i.as, !12683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12738)
    #dbg_value(i64 1, !12683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12738)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12739, !noalias !12734
    #dbg_value(ptr %1, !12684, !DIExpression(), !12738)
    #dbg_value(i64 %i.as, !12685, !DIExpression(), !12743)
    #dbg_value(i64 %i.as, !12670, !DIExpression(), !12671)
    #dbg_value(i64 %i.as, !12744, !DIExpression(), !12751)
  %i.at = load i64, ptr %i.w, align 8, !dbg !12753, !alias.scope !12754, !noalias !12585, !noundef !13
  %i.au = load i32, ptr %i.x, align 8, !dbg !12753, !range !12755, !alias.scope !12754, !noalias !12585, !noundef !13
  %i.av = udiv i64 %i.as, 1000, !dbg !12756
  %i.aw = urem i64 %i.as, 1000, !dbg !12757
  %i.ax = trunc nuw nsw i64 %i.aw to i32, !dbg !12757
  %i.ay = mul nuw nsw i32 %i.ax, 1000000, !dbg !12758
  %i.az = call { i64, i32 } @_RNvXs1_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef %i.at, i32 noundef %i.au, i64 noundef %i.av, i32 noundef %i.ay), !dbg !12753 ; 2 uses
  %i.ba = extractvalue { i64, i32 } %i.az, 1, !dbg !12753 ; 2 uses
    #dbg_value(i64 poison, !12434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12740)
    #dbg_value(i32 %i.ba, !12434, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12740)
  %.not36.i = icmp eq i32 %i.ba, -1, !dbg !12759
  br i1 %.not36.i, label %bb.t, label %bb.p, !dbg !12741

bb.l:                                             ; preds = %bb.j
  %i.bb = call noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEENtB4_6Future4pollCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !dbg !12760
  br i1 %i.bb, label %.loopexit94, label %bb.m, !dbg !12761

bb.m:                                             ; preds = %bb.l, %bb.j
    #dbg_value(ptr %i.v, !12635, !DIExpression(), !12762)
  %i.bc = load ptr, ptr %i.v, align 8, !dbg !12765, !alias.scope !12430, !noalias !12585, !nonnull !13, !noundef !13 ; 2 uses
    #dbg_value(ptr %i.bc, !12766, !DIExpression(), !12773)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80, !dbg !12775
  %i.be = load i64, ptr %i.bd, align 8, !dbg !12775, !noundef !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 88, !dbg !12775
  %i.bg = load i32, ptr %i.bf, align 8, !dbg !12775, !range !12755, !noundef !13
  %i.bh = load i64, ptr %i.w, align 8, !dbg !12776, !alias.scope !12430, !noalias !12585, !noundef !13
  %i.bi = load i32, ptr %i.x, align 8, !dbg !12776, !range !12755, !alias.scope !12430, !noalias !12585, !noundef !13
  %i.bj = call { i64, i32 } @_RNvXs3_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.be, i32 noundef %i.bg, i64 noundef %i.bh, i32 noundef %i.bi), !dbg !12777 ; 2 uses
  %i.bk = extractvalue { i64, i32 } %i.bj, 0, !dbg !12777
  %i.bl = extractvalue { i64, i32 } %i.bj, 1, !dbg !12777 ; 2 uses
    #dbg_value(i64 %i.bk, !12518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12521)
    #dbg_value(i32 %i.bl, !12518, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12521)
    #dbg_value(ptr poison, !12778, !DIExpression(), !12785)
  %i.bm = icmp ult i32 %i.bl, 1000000000, !dbg !12787
  call void @llvm.assume(i1 %i.bm), !dbg !12787
  %i.bn = udiv i32 %i.bl, 1000000, !dbg !12794
    #dbg_value(i32 %i.bn, !12519, !DIExpression(), !12795)
    #dbg_value(i32 %i.bn, !12796, !DIExpression(), !12804)
    #dbg_value(i64 %i.bk, !12529, !DIExpression(), !12532)
    #dbg_value(i64 %i.bk, !12539, !DIExpression(), !12543)
    #dbg_value(i64 %i.bk, !12554, !DIExpression(), !12555)
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bk, i64 1000), !dbg !12806 ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 0, !dbg !12806
  %5 = extractvalue { i64, i1 } %3, 1, !dbg !12806
    #dbg_value(i64 %4, !12540, !DIExpression(), !12807)
    #dbg_value(i64 %4, !12808, !DIExpression(), !12812)
    #dbg_value(i1 %5, !12542, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12807)
    #dbg_value(i1 %5, !12814, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12820)
  br i1 %5, label %bb.n, label %bb.o, !dbg !12822, !prof !10251

.loopexit.split.loop.exit53.i:                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i
  %i.bo = extractvalue { i64, i64 } %i.ao, 1
  br label %bb.aa, !dbg !12823

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 -1, !12540, !DIExpression(), !12807)
    #dbg_value(i64 -1, !12808, !DIExpression(), !12812)
  br label %bb.o, !dbg !12824

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.0.i = phi i64 [ -1, %bb.n ], [ %4, %bb.m ], !dbg !12532
    #dbg_value(i64 %.sroa.011.0.i, !12808, !DIExpression(), !12812)
    #dbg_value(i64 %.sroa.011.0.i, !12540, !DIExpression(), !12807)
  %i.bp = zext nneg i32 %i.bn to i64, !dbg !12825
    #dbg_value(i64 %i.bp, !12811, !DIExpression(), !12812)
  %i.bq = call i64 @llvm.uadd.sat.i64(i64 %.sroa.011.0.i, i64 %i.bp), !dbg !12826 ; 2 uses
    #dbg_value(i64 %i.bq, !12491, !DIExpression(), !12827)
  store i64 %i.bq, ptr %i.y, align 8, !dbg !12828, !alias.scope !12430, !noalias !12585
  br label %bb.k, !dbg !12829

bb.p:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.i
  %i.br = extractvalue { i64, i32 } %i.az, 0, !dbg !12753
    #dbg_value(i64 %i.br, !12434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12740)
    #dbg_value(i64 %i.br, !12459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12830)
    #dbg_value(i64 %i.br, !12510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12831)
    #dbg_value(i32 %i.ba, !12459, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12830)
    #dbg_value(i32 %i.ba, !12510, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12831)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12832, !noalias !12833
  call void @_RNvNtNtCs2sJxpAufolh_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, i64 noundef %i.br, i32 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15), !dbg !12832
    #dbg_declare(ptr %i.c, !12834, !DIExpression(), !12842)
    #dbg_value(i64 8, !12844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12859)
    #dbg_value(i64 8, !12861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12884)
    #dbg_value(i64 8, !12886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12894)
    #dbg_value(i64 96, !12844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12859)
    #dbg_value(i64 96, !12861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12884)
    #dbg_value(i64 96, !12886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12894)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12883, !DIExpression(), !12884)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12892, !DIExpression(), !12894)
    #dbg_value(i8 0, !12893, !DIExpression(), !12894)
    #dbg_value(i64 8, !12896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12928)
    #dbg_value(i64 8, !12930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12933)
    #dbg_value(i64 96, !12896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12928)
    #dbg_value(i64 96, !12930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12933)
    #dbg_value(i1 false, !12902, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12928)
    #dbg_value(i64 96, !12903, !DIExpression(), !12935)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !dbg !12936, !noalias !12937
  %i.bs = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 96, 113) 96, i64 noundef 8) #14, !dbg !12940, !noalias !12937 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null, !dbg !12941
  br i1 %i.bt, label %bb.q, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit.i, !dbg !12942, !prof !10251

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #26
          to label %.noexc.i unwind label %bb.r, !dbg !12943

.noexc.i:                                         ; preds = %bb.q
  unreachable, !dbg !12943

bb.r:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #24
          to label %common.resume unwind label %bb.s, !dbg !12944

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !12945
  unreachable, !dbg !12945

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit.i: ; preds = %bb.p
    #dbg_value(ptr %i.bs, !12839, !DIExpression(), !12946)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bs, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !12947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12948, !noalias !12833
  br label %bb.t, !dbg !12949

bb.t:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit.i, %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.i, %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.thread.i
  %.sroa.05.0.i = phi ptr [ %i.bs, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit.i ], [ null, %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.i ], [ null, %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit.thread.i ], !dbg !12740 ; 4 uses
  %.val.i = load ptr, ptr %i.v, align 8, !dbg !12950, !alias.scope !12430, !noalias !12585, !align !3695, !noundef !13 ; 6 uses
    #dbg_value(ptr poison, !3356, !DIExpression(), !12951)
  %i.bw = icmp eq ptr %.val.i, null, !dbg !12953
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i, label %bb.u, !dbg !12953

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr poison, !3361, !DIExpression(), !12954)
    #dbg_value(ptr poison, !3369, !DIExpression(), !12956)
    #dbg_value(ptr %.val.i, !3379, !DIExpression(), !12958)
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 72, !dbg !12960 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12961), !dbg !12960
    #dbg_value(ptr %i.bx, !3393, !DIExpression(), !12964)
  call void @llvm.experimental.noalias.scope.decl(metadata !12966), !dbg !12969
    #dbg_value(ptr %i.bx, !3407, !DIExpression(), !12970)
  call void @llvm.experimental.noalias.scope.decl(metadata !12972), !dbg !12975
    #dbg_value(ptr %i.bx, !3419, !DIExpression(), !12976)
    #dbg_value(ptr %i.bx, !3424, !DIExpression(), !12978)
    #dbg_value(i64 1, !3434, !DIExpression(), !12980)
    #dbg_value(i8 1, !3438, !DIExpression(), !12980)
    #dbg_value(i64 1, !3441, !DIExpression(), !12982)
    #dbg_value(i8 1, !3445, !DIExpression(), !12982)
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !12984, !alias.scope !12986, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.by, !3437, !DIExpression(), !12987)
    #dbg_value(ptr %i.by, !3444, !DIExpression(), !12982)
  %i.bz = atomicrmw sub ptr %i.by, i64 1 release, align 8, !dbg !12988, !noalias !12986
  %i.ca = icmp eq i64 %i.bz, 1, !dbg !12989
  br i1 %i.ca, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i, !dbg !12989

bb.v:                                             ; preds = %bb.u
    #dbg_value(i8 2, !1808, !DIExpression(), !12990)
  fence acquire, !dbg !12992
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i unwind label %bb.w, !dbg !12993

bb.w:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val.i) #24
          to label %.body.i unwind label %bb.x, !dbg !12960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i unwind label %bb.y, !dbg !12960

bb.x:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !12960
  unreachable, !dbg !12960

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !12994

.body.i:                                          ; preds = %bb.y, %bb.w
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.cb, %bb.w ]
    #dbg_value(ptr poison, !3464, !DIExpression(), !12995)
    #dbg_value(ptr %.val.i, !3470, !DIExpression(), !12997)
    #dbg_value(i64 8, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12998)
    #dbg_value(i64 96, !3481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12998)
    #dbg_value(ptr poison, !3497, !DIExpression(), !12999)
    #dbg_value(ptr poison, !3509, !DIExpression(), !13001)
    #dbg_value(ptr %.val.i, !3505, !DIExpression(), !12999)
    #dbg_value(ptr %.val.i, !3514, !DIExpression(), !13001)
    #dbg_value(ptr %.val.i, !3518, !DIExpression(), !13003)
    #dbg_value(ptr %.val.i, !3527, !DIExpression(), !13005)
    #dbg_value(i64 8, !3506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12999)
    #dbg_value(i64 8, !3515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13001)
    #dbg_value(i64 8, !3524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13003)
    #dbg_value(i64 8, !3530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13005)
    #dbg_value(i64 96, !3506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12999)
    #dbg_value(i64 96, !3515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13001)
    #dbg_value(i64 96, !3524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13003)
    #dbg_value(i64 96, !3530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13005)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 96, i64 noundef 8) #14, !dbg !13007
  store ptr %.sroa.05.0.i, ptr %i.v, align 8, !dbg !12950, !alias.scope !12430, !noalias !12585
  br label %common.resume, !dbg !13008

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i
    #dbg_value(ptr poison, !3464, !DIExpression(), !13009)
    #dbg_value(ptr %.val.i, !3470, !DIExpression(), !13011)
    #dbg_value(i64 8, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13012)
    #dbg_value(i64 96, !3481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13012)
    #dbg_value(ptr poison, !3497, !DIExpression(), !13013)
    #dbg_value(ptr poison, !3509, !DIExpression(), !13015)
    #dbg_value(ptr %.val.i, !3505, !DIExpression(), !13013)
    #dbg_value(ptr %.val.i, !3514, !DIExpression(), !13015)
    #dbg_value(ptr %.val.i, !3518, !DIExpression(), !13017)
    #dbg_value(ptr %.val.i, !3527, !DIExpression(), !13019)
    #dbg_value(i64 8, !3506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(i64 8, !3515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13015)
    #dbg_value(i64 8, !3524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13017)
    #dbg_value(i64 8, !3530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13019)
    #dbg_value(i64 96, !3506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
    #dbg_value(i64 96, !3515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13015)
    #dbg_value(i64 96, !3524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13017)
    #dbg_value(i64 96, !3530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13019)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 96, i64 noundef 8) #14, !dbg !13021
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i, !dbg !12953

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i, %bb.t
  store ptr %.sroa.05.0.i, ptr %i.v, align 8, !dbg !12950, !alias.scope !12430, !noalias !12585
  %i.ce = trunc nuw i64 %i.ap to i1, !dbg !13022
  br i1 %i.ce, label %.loopexit.split.loop.exit53.i, label %bb.z, !dbg !13022

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i
    #dbg_value(ptr %1, !13023, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13030)
    #dbg_value(ptr %1, !13032, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !13036)
  %.not37.i = icmp eq ptr %.sroa.05.0.i, null, !dbg !13038
  br i1 %.not37.i, label %.loopexit, label %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack3popB19_.exit.i, !dbg !13039

bb.aa:                                            ; preds = %.loopexit.split.loop.exit53.i, %bb.i
  %.sroa.5.0.i.ph.ph = phi i64 [ %i.ac, %bb.i ], [ %i.bo, %.loopexit.split.loop.exit53.i ] ; 3 uses
    #dbg_value(i64 1, !12294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13040)
    #dbg_value(i64 1, !13041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13058)
    #dbg_value(i64 %.sroa.5.0.i.ph.ph, !12294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13040)
    #dbg_value(i64 %.sroa.5.0.i.ph.ph, !13041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13058)
    #dbg_value(ptr %1, !13055, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13058)
    #dbg_value(ptr %1, !13055, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13058)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !13060
    #dbg_value(ptr %i.cf, !13055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13058)
    #dbg_value(ptr %i.s, !13055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13058)
    #dbg_value(i64 %.sroa.5.0.i.ph.ph, !13056, !DIExpression(), !13061)
  %.val41 = load i64, ptr %i.cf, align 8, !dbg !13062
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !13062
  %.val42 = load i32, ptr %i.cg, align 8, !dbg !13062
  call void @llvm.experimental.noalias.scope.decl(metadata !13063), !dbg !13062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.5.0.i.ph.ph, ptr %i.a, align 8, !noalias !13066
    #dbg_value(ptr poison, !13068, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13077)
    #dbg_value(ptr poison, !13068, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 64), !13077)
    #dbg_value(ptr poison, !13074, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13077)
    #dbg_declare(ptr %i.a, !13073, !DIExpression(), !13079)
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13with_capacityB1f_:bb.a
  store i64 %i.j, ptr %i.b, align 8, !dbg !13568, !alias.scope !13468, !noalias !13456
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13568
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13568, !alias.scope !13468, !noalias !13456
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !dbg !13568, !alias.scope !13468, !noalias !13456
  %i.o = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4)
          to label %bb.g unwind label %bb.c, !dbg !13569, !noalias !13456 ; 2 uses

bb.c:                                             ; preds = %_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE13with_capacityB1z_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9Srk37lQfcB_4slab4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEEB22_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #24
          to label %.body unwind label %bb.d, !dbg !13589, !noalias !13456

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !13590, !noalias !13456
  unreachable, !dbg !13590

.body:                                            ; preds = %bb.f, %bb.c, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.t, %bb.f ], [ %i.p, %bb.c ]
    #dbg_value(ptr poison, !13591, !DIExpression(), !13599)
    #dbg_value(ptr poison, !13601, !DIExpression(), !13609)
    #dbg_value(ptr poison, !13611, !DIExpression(), !13634)
    #dbg_value(ptr poison, !13614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13636)
    #dbg_value(i64 %i.f, !13614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13636)
    #dbg_value(ptr poison, !13637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13646)
    #dbg_value(ptr poison, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13653)
    #dbg_value(i64 %i.f, !13637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13646)
    #dbg_value(i64 %i.f, !13648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13653)
    #dbg_value(i64 8, !13631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13655)
    #dbg_value(i64 %i.f, !13631, !DIExpression(DW_OP_constu, 1040, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13655)
  %i.r = icmp eq i64 %i.f, 0, !dbg !13656
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5WheelINtNtBG_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEEB1W_.exit, label %bb.e, !dbg !13656

bb.e:                                             ; preds = %.body
  %i.s = mul nuw nsw i64 %i.f, 1040, !dbg !13657
    #dbg_value(i64 %i.s, !13631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13655)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
    #dbg_value(ptr %i.e, !13637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13646)
    #dbg_value(ptr %i.e, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13653)
    #dbg_value(ptr %i.e, !13614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13636)
    #dbg_value(ptr poison, !3497, !DIExpression(), !13658)
    #dbg_value(ptr poison, !3509, !DIExpression(), !13660)
    #dbg_value(ptr %i.e, !3505, !DIExpression(), !13658)
    #dbg_value(ptr %i.e, !3514, !DIExpression(), !13660)
    #dbg_value(ptr %i.e, !3518, !DIExpression(), !13662)
    #dbg_value(ptr %i.e, !3527, !DIExpression(), !13664)
    #dbg_value(i64 8, !3506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13658)
    #dbg_value(i64 8, !3515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 8, !3524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13662)
    #dbg_value(i64 8, !3530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13664)
    #dbg_value(i64 %i.s, !3506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13658)
    #dbg_value(i64 %i.s, !3515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %i.s, !3524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13662)
    #dbg_value(i64 %i.s, !3530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13664)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef 8) #14, !dbg !13666
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5WheelINtNtBG_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEEB1W_.exit, !dbg !13667

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE13with_capacityB1z_.exit.i
  %i.u = extractvalue { i64, i64 } %i.o, 0, !dbg !13668
  %i.v = extractvalue { i64, i64 } %i.o, 1, !dbg !13668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !13669
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !13669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @6, i64 32, i1 false), !dbg !13669
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !13669
  store i64 %i.u, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !13669, !alias.scope !13456
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !13669
  store i64 %i.v, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !13669, !alias.scope !13456
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !13669
  store i64 0, ptr %i.x, align 8, !dbg !13669, !alias.scope !13456
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 96, !dbg !13669
  store i8 0, ptr %i.y, align 8, !dbg !13669, !alias.scope !13456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13589, !noalias !13456
  %i.z = invoke { i64, i32 } @_RNvMNtNtCs2sJxpAufolh_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.i unwind label %bb.h, !dbg !13670 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche(ptr null) #24
          to label %bb.k unwind label %bb.j, !dbg !13671

bb.i:                                             ; preds = %bb.g
  %i.ab = extractvalue { i64, i32 } %i.z, 0, !dbg !13670
  %i.ac = extractvalue { i64, i32 } %i.z, 1, !dbg !13670
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false), !dbg !13672
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !13672
  store ptr %i.e, ptr %i.ae, align 8, !dbg !13672
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !13672
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13672
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !13672
  store i64 0, ptr %0, align 8, !dbg !13672
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !13672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !13672
  store i64 %i.ab, ptr %i.af, align 8, !dbg !13672
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !13672
  store i32 %i.ac, ptr %i.ag, align 8, !dbg !13672
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !13672
  store ptr null, ptr %i.ah, align 8, !dbg !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13671
  ret void, !dbg !13673

bb.j:                                             ; preds = %bb.h, %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !13674
  unreachable, !dbg !13674

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEB1J_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.c) #24
          to label %.body unwind label %bb.j, !dbg !13671

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5WheelINtNtBG_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEEB1W_.exit: ; preds = %bb.e, %.body
  resume { ptr, i32 } %.pn, !dbg !13674
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6insertB1f_(ptr noalias nofree noundef align 8 dereferenceable(192) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13675 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !13680, !DIExpression(), !13683)
    #dbg_declare(ptr poison, !13681, !DIExpression(), !13684)
    #dbg_value(i64 %1, !13682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13683)
    #dbg_value(i32 %2, !13682, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13683)
  %i.g = tail call { i64, i32 } @_RNvMNtNtCs2sJxpAufolh_5tokio4time7instantNtB2_7Instant3now(), !dbg !13685 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0, !dbg !13685
  %i.i = extractvalue { i64, i32 } %i.g, 1, !dbg !13685
  %i.j = tail call { i64, i32 } @_RNvXs1_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef %i.h, i32 noundef %i.i, i64 noundef %1, i32 noundef %2), !dbg !13685 ; 2 uses
  %i.k = extractvalue { i64, i32 } %i.j, 0, !dbg !13685 ; 3 uses
  %i.l = extractvalue { i64, i32 } %i.j, 1, !dbg !13685 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13686), !dbg !13689
    #dbg_value(ptr %0, !13690, !DIExpression(), !13714)
    #dbg_declare(ptr poison, !13696, !DIExpression(), !13716)
    #dbg_value(i64 %i.k, !13697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13714)
    #dbg_value(i32 %i.l, !13697, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13714)
    #dbg_declare(ptr %i.f, !13717, !DIExpression(), !13720)
    #dbg_value(ptr %0, !13722, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13729)
    #dbg_value(ptr %0, !13731, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13738)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13740 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !13740, !alias.scope !13686, !noalias !13741, !noundef !13 ; 2 uses
  %i.o = icmp ult i64 %i.n, 1073741823, !dbg !13743
  br i1 %i.o, label %bb.c, label %bb.b, !dbg !13743, !prof !13130

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 41 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #25, !dbg !13744
  unreachable, !dbg !13744

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13740 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13745), !dbg !13748
    #dbg_value(ptr %0, !13749, !DIExpression(), !13758)
    #dbg_value(i64 %i.k, !13755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13758)
    #dbg_value(i32 %i.l, !13755, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13758)
    #dbg_declare(ptr poison, !13760, !DIExpression(), !13787)
    #dbg_value(i8 0, !13800, !DIExpression(), !13806)
    #dbg_value(i64 1000, !13808, !DIExpression(), !13814)
    #dbg_value(i64 1000, !13816, !DIExpression(), !13823)
    #dbg_value(i64 1000, !13825, !DIExpression(), !13829)
    #dbg_value(ptr poison, !13794, !DIExpression(), !13831)
    #dbg_value(ptr poison, !13832, !DIExpression(), !13840)
    #dbg_value(ptr poison, !13842, !DIExpression(), !13849)
    #dbg_value(ptr %0, !13795, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13851)
    #dbg_value(ptr %0, !13839, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13840)
    #dbg_value(ptr %0, !13848, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13849)
    #dbg_value(ptr poison, !13852, !DIExpression(), !13861)
    #dbg_value(ptr %0, !13860, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13861)
    #dbg_value(ptr poison, !13863, !DIExpression(), !13872)
    #dbg_value(ptr %0, !13871, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13872)
    #dbg_value(ptr poison, !13874, !DIExpression(), !13885)
    #dbg_value(ptr %0, !13882, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13885)
    #dbg_value(ptr poison, !13887, !DIExpression(), !13896)
    #dbg_value(ptr %0, !13895, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13898)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !13899 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !13899, !alias.scope !13900, !noalias !13741, !noundef !13 ; 3 uses
  %i.s = icmp eq i64 %i.k, %i.r, !dbg !13885
  %i.t = icmp slt i64 %i.k, %i.r, !dbg !13901
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !13885 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !dbg !13885, !range !12755, !alias.scope !13900, !noalias !13741 ; 2 uses
  %i.w = icmp samesign ult i32 %i.l, %i.v, !dbg !13885
  %.sroa.02.0.i.i = select i1 %i.s, i1 %i.w, i1 %i.t, !dbg !13885
    #dbg_value(i8 poison, !13784, !DIExpression(), !13920)
    #dbg_value(i8 poison, !13785, !DIExpression(), !13921)
    #dbg_value(i8 poison, !13905, !DIExpression(), !13922)
  br i1 %.sroa.02.0.i.i, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit.i, label %bb.d, !dbg !13923

bb.d:                                             ; preds = %bb.c
  %i.x = tail call { i64, i32 } @_RNvXs3_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.k, i32 noundef range(i32 0, 1000000000) %i.l, i64 noundef %i.r, i32 noundef %i.v), !dbg !13924, !noalias !13925 ; 2 uses
  %i.y = extractvalue { i64, i32 } %i.x, 0, !dbg !13924
  %i.z = extractvalue { i64, i32 } %i.x, 1, !dbg !13924 ; 2 uses
    #dbg_value(i64 %i.y, !13803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13806)
    #dbg_value(i32 %i.z, !13803, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13806)
    #dbg_value(ptr poison, !13926, !DIExpression(), !13930)
  %i.aa = icmp ult i32 %i.z, 1000000000, !dbg !13932
  tail call void @llvm.assume(i1 %i.aa), !dbg !13932
  %i.ab = add nuw nsw i32 %i.z, 999999, !dbg !13935
  %i.ac = udiv i32 %i.ab, 1000000, !dbg !13935
    #dbg_value(i32 %i.ac, !13804, !DIExpression(), !13936)
    #dbg_value(i32 %i.ac, !13937, !DIExpression(), !13940)
    #dbg_value(i64 %i.y, !13811, !DIExpression(), !13814)
    #dbg_value(i64 %i.y, !13819, !DIExpression(), !13823)
    #dbg_value(i64 %i.y, !13828, !DIExpression(), !13829)
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.y, i64 1000), !dbg !13942 ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 0, !dbg !13942
  %6 = extractvalue { i64, i1 } %4, 1, !dbg !13942
    #dbg_value(i64 %5, !13820, !DIExpression(), !13943)
    #dbg_value(i64 %5, !13944, !DIExpression(), !13948)
    #dbg_value(i1 %6, !13822, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13943)
    #dbg_value(i1 %6, !13950, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13953)
  br i1 %6, label %bb.e, label %bb.f, !dbg !13955, !prof !10251

bb.e:                                             ; preds = %bb.d
    #dbg_value(i64 -1, !13820, !DIExpression(), !13943)
    #dbg_value(i64 -1, !13944, !DIExpression(), !13948)
  br label %bb.f, !dbg !13956

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i = phi i64 [ -1, %bb.e ], [ %5, %bb.d ], !dbg !13814
    #dbg_value(i64 %.sroa.04.0.i.i, !13944, !DIExpression(), !13948)
    #dbg_value(i64 %.sroa.04.0.i.i, !13820, !DIExpression(), !13943)
  %i.ad = zext nneg i32 %i.ac to i64, !dbg !13957
    #dbg_value(i64 %i.ad, !13947, !DIExpression(), !13948)
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.04.0.i.i, i64 %i.ad), !dbg !13958
    #dbg_value(i64 %i.ae, !13756, !DIExpression(), !13959)
    #dbg_value(i64 %i.ae, !13960, !DIExpression(), !13964)
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !13966, !alias.scope !14002, !noalias !14007
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit.i, !dbg !14010

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit.i: ; preds = %bb.f, %bb.c
  %i.af = phi i64 [ %.pre.i, %bb.f ], [ %i.n, %bb.c ], !dbg !13966
  %.sroa.0.0.i.i = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.c ], !dbg !13758
    #dbg_value(i64 %.sroa.0.0.i.i, !13960, !DIExpression(), !13964)
    #dbg_value(i64 %.sroa.0.0.i.i, !13756, !DIExpression(), !13959)
    #dbg_value(ptr %0, !14011, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !14017)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !14019 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !14019, !alias.scope !13900, !noalias !13741, !noundef !13
    #dbg_value(i64 %i.ah, !13963, !DIExpression(), !13964)
    #dbg_value(ptr undef, !14020, !DIExpression(DW_OP_deref), !14027)
    #dbg_value(ptr undef, !14024, !DIExpression(DW_OP_deref), !14027)
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ah, i64 %.sroa.0.0.i.i), !dbg !14029 ; 6 uses
    #dbg_value(i64 %..i.i.i, !13698, !DIExpression(), !14030)
    #dbg_value(i64 %..i.i.i, !14031, !DIExpression(), !14034)
    #dbg_value(i64 %..i.i.i, !13994, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14036)
    #dbg_value(i64 %..i.i.i, !13985, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14037)
    #dbg_value(i64 %..i.i.i, !13974, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14038)
    #dbg_value(i64 %..i.i.i, !14039, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14046)
    #dbg_value(i64 %..i.i.i, !14048, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14059)
    #dbg_value(i64 %..i.i.i, !14061, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14067)
    #dbg_value(i8 0, !13994, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !14036)
    #dbg_value(i8 0, !13985, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !14037)
    #dbg_value(i8 0, !13974, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !14038)
    #dbg_value(i8 0, !14039, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !14046)
    #dbg_value(i8 0, !14048, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !14059)
    #dbg_value(i8 0, !14061, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !14067)
    #dbg_value(i64 0, !13994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14036)
    #dbg_value(i64 0, !13985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14037)
    #dbg_value(i64 0, !13974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14038)
    #dbg_value(i64 0, !14039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14046)
    #dbg_value(i64 0, !14048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14059)
    #dbg_value(i64 0, !14061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14067)
    #dbg_value(i64 0, !13994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14036)
    #dbg_value(i64 0, !13985, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14037)
    #dbg_value(i64 0, !13974, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14038)
    #dbg_value(i64 0, !14039, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14046)
    #dbg_value(i64 0, !14048, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14059)
    #dbg_value(i64 0, !14061, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14069), !dbg !14070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14071, !noalias !14072
    #dbg_value(ptr %i.p, !13993, !DIExpression(), !14036)
    #dbg_value(ptr %i.p, !14073, !DIExpression(), !14079)
    #dbg_declare(ptr %i.d, !14081, !DIExpression(), !14089)
    #dbg_value(i64 1, !14091, !DIExpression(), !14095)
    #dbg_value(ptr %i.p, !13984, !DIExpression(), !14037)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14071 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !14071, !alias.scope !14097, !noalias !14098, !noundef !13 ; 10 uses
    #dbg_value(i64 %i.aj, !13986, !DIExpression(), !14099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14100), !dbg !14101
    #dbg_value(ptr %i.p, !13972, !DIExpression(), !14038)
    #dbg_value(i64 %i.aj, !13973, !DIExpression(), !14038)
    #dbg_value(i64 %i.aj, !14102, !DIExpression(), !14130)
    #dbg_value(i64 %i.aj, !14132, !DIExpression(), !14138)
  %i.ak = add i64 %i.af, 1, !dbg !13966
  store i64 %i.ak, ptr %i.m, align 8, !dbg !13966, !alias.scope !14002, !noalias !14007
    #dbg_value(ptr %i.p, !14140, !DIExpression(), !14147)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14149 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !dbg !14149, !alias.scope !14002, !noalias !14007, !noundef !13 ; 3 uses
  %i.an = icmp ult i64 %i.am, 192153584101141163, !dbg !14150
  tail call void @llvm.assume(i1 %i.an), !dbg !14151
  %i.ao = icmp eq i64 %i.aj, %i.am, !dbg !14152
  br i1 %i.ao, label %bb.h, label %bb.g, !dbg !14152

bb.g:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit.i
    #dbg_value(ptr %i.p, !14153, !DIExpression(), !14159)
    #dbg_value(ptr %i.p, !14161, !DIExpression(), !14165)
    #dbg_value(ptr %i.p, !14167, !DIExpression(), !14173)
    #dbg_value(ptr poison, !14125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14130)
    #dbg_value(ptr poison, !14137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14138)
    #dbg_value(i64 %i.am, !14125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14130)
    #dbg_value(i64 %i.am, !14137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14138)
  %i.ap = icmp ult i64 %i.aj, %i.am, !dbg !14175
  br i1 %i.ap, label %bb.j, label %bb.k, !dbg !14175, !prof !13130

bb.h:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit.i
    #dbg_value(ptr %i.p, !14045, !DIExpression(), !14046)
    #dbg_value(ptr %i.p, !14054, !DIExpression(), !14059)
    #dbg_value(ptr %i.p, !14176, !DIExpression(), !14179)
    #dbg_value(i64 48, !14181, !DIExpression(), !14188)
    #dbg_value(i64 %i.am, !14055, !DIExpression(), !14197)
    #dbg_value(i64 %i.am, !14198, !DIExpression(), !14204)
    #dbg_value(ptr %i.p, !14195, !DIExpression(), !14206)
  %i.aq = load i64, ptr %i.p, align 8, !dbg !14207, !range !3799, !alias.scope !14208, !noalias !14211, !noundef !13
  %i.ar = icmp eq i64 %i.aj, %i.aq, !dbg !14213
  br i1 %i.ar, label %bb.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEE8push_mutB27_.exit.i.i.i, !dbg !14213

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEE8grow_oneB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.p) #23, !dbg !14214, !noalias !14211
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEE8push_mutB27_.exit.i.i.i, !dbg !14215

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEE8push_mutB27_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14216
  %i.at = load ptr, ptr %i.as, align 8, !dbg !14216, !alias.scope !14208, !noalias !14211, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.at, !14203, !DIExpression(), !14204)
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.aj, !dbg !14223 ; 4 uses
    #dbg_value(ptr %i.au, !14057, !DIExpression(), !14224)
    #dbg_value(ptr %i.au, !14066, !DIExpression(), !14067)
  store i64 0, ptr %i.au, align 8, !dbg !14225, !noalias !13741
  %.sroa.533.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !14225
  store i64 0, ptr %.sroa.533.0..sroa_idx34.i, align 8, !dbg !14225, !noalias !13741
  %.sroa.638.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32, !dbg !14225
  store i64 %..i.i.i, ptr %.sroa.638.0..sroa_idx39.i, align 8, !dbg !14225, !noalias !13741
  %.sroa.7.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40, !dbg !14225
  store i8 0, ptr %.sroa.7.0..sroa_idx41.i, align 8, !dbg !14225, !noalias !13741
  %i.av = add nuw nsw i64 %i.aj, 1, !dbg !14226   ; 2 uses
  store i64 %i.av, ptr %i.al, align 8, !dbg !14226, !alias.scope !14208, !noalias !14211
  store i64 %i.av, ptr %i.ai, align 8, !dbg !14227, !alias.scope !14002, !noalias !14007
  br label %_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9insert_atB1z_.exit.i.i, !dbg !14228

bb.j:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14229
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !14229, !alias.scope !14002, !noalias !14007, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.ax, !14125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14130)
    #dbg_value(ptr %i.ax, !14137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14138)
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %i.aj, !dbg !14236 ; 6 uses
  %i.az = load i64, ptr %i.ay, align 8, !dbg !14237, !range !13298, !noalias !14238, !noundef !13
  %.not.i.i.i = icmp eq i64 %i.az, 2, !dbg !14237
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !dbg !14239, !prof !13130

bb.k:                                             ; preds = %bb.j, %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #25, !dbg !14240, !noalias !14238
  unreachable, !dbg !14240

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !14241
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !14241, !noalias !14238, !noundef !13
  store i64 %i.bb, ptr %i.ai, align 8, !dbg !14242, !alias.scope !14002, !noalias !14007
  store i64 0, ptr %i.ay, align 8, !dbg !14243, !noalias !14244
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !14243
  store i64 0, ptr %.sroa.533.0..sroa_idx.i, align 8, !dbg !14243, !noalias !14244
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !14243
  store i64 %..i.i.i, ptr %.sroa.638.0..sroa_idx.i, align 8, !dbg !14243, !noalias !14244
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40, !dbg !14243
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !14243, !noalias !14244
  br label %_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9insert_atB1z_.exit.i.i, !dbg !14228

_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9insert_atB1z_.exit.i.i: ; preds = %bb.l, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEE8push_mutB27_.exit.i.i.i
    #dbg_value(i64 %i.aj, !13995, !DIExpression(), !14245)
    #dbg_value(i64 %i.aj, !14088, !DIExpression(), !14246)
    #dbg_value(ptr %i.p, !14247, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14257, !noalias !14258
    #dbg_value(i64 %i.aj, !14259, !DIExpression(), !14266)
    #dbg_value(i64 %i.aj, !14268, !DIExpression(), !14274)
    #dbg_value(i64 %i.aj, !14276, !DIExpression(), !14282)
  store i64 %i.aj, ptr %i.e, align 8, !dbg !14284, !noalias !14258
    #dbg_value(ptr %i.e, !14254, !DIExpression(), !14285)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14286 ; 5 uses
  %i.bd = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBQ_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !dbg !14287, !noalias !14098
    #dbg_value(i1 %i.bd, !13997, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14288)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14289, !noalias !14258
  br i1 %i.bd, label %.preheader.i.i, label %bb.m, !dbg !14290

.preheader.i.i:                                   ; preds = %_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9insert_atB1z_.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
    #dbg_value(ptr %i.p, !14247, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14293, !noalias !14258
  %i.bf = load i64, ptr %i.be, align 8, !dbg !14294, !alias.scope !14097, !noalias !14098, !noundef !13
  store i64 %i.bf, ptr %i.c, align 8, !dbg !14295, !noalias !14258
  %i.bg = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBQ_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !dbg !14297, !noalias !14098
  br i1 %i.bg, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !14298

bb.m:                                             ; preds = %_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE9insert_atB1z_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !14299
  %i.bi = load i8, ptr %i.bh, align 8, !dbg !14299, !range !5648, !alias.scope !14097, !noalias !14098, !noundef !13
  %i.bj = trunc nuw i8 %i.bi to i1, !dbg !14299
  br i1 %i.bj, label %.sink.split.i.i, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6insertB1d_.exit.i, !dbg !14299

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.m
  %.sink.i.i = phi i64 [ %i.bl, %._crit_edge.i.i ], [ %i.aj, %bb.m ] ; 2 uses
  %i.bk = call { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBP_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bc, i64 noundef %.sink.i.i, i64 noundef %i.aj), !dbg !14300, !noalias !14098 ; 0 uses
  br label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6insertB1d_.exit.i, !dbg !14302

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14303, !noalias !14258
  %i.bl = load i64, ptr %i.be, align 8, !dbg !14304, !alias.scope !14097, !noalias !14098, !noundef !13 ; 2 uses
    #dbg_value(i64 %i.bl, !14259, !DIExpression(), !14305)
    #dbg_value(i64 %i.bl, !14268, !DIExpression(), !14307)
    #dbg_value(i64 %i.bl, !14276, !DIExpression(), !14310)
    #dbg_value(i64 %i.bl, !14259, !DIExpression(), !14313)
    #dbg_value(i64 %i.bl, !14268, !DIExpression(), !14315)
    #dbg_value(i64 %i.bl, !14276, !DIExpression(), !14318)
    #dbg_value(i64 %i.bl, !13999, !DIExpression(), !14321)
    #dbg_value(ptr %i.p, !14247, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14322)
  store i64 %i.bl, ptr %i.d, align 8, !dbg !14324, !noalias !14258
    #dbg_value(ptr %i.d, !14254, !DIExpression(), !14325)
  %i.bm = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBQ_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !dbg !14326, !noalias !14098
  br i1 %i.bm, label %bb.n, label %.sink.split.i.i, !dbg !14327, !prof !10251

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14303, !noalias !14258
  %i.bn = load i64, ptr %i.be, align 8, !dbg !14328, !alias.scope !14097, !noalias !14098, !noundef !13
    #dbg_value(i64 %i.bn, !14094, !DIExpression(), !14095)
  %i.bo = add i64 %i.bn, 1, !dbg !14329           ; 2 uses
  store i64 %i.bo, ptr %i.be, align 8, !dbg !14330, !alias.scope !14097, !noalias !14098
    #dbg_value(ptr %i.p, !14247, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14293, !noalias !14258
    #dbg_value(i64 %i.bo, !14276, !DIExpression(), !14331)
  store i64 %i.bo, ptr %i.c, align 8, !dbg !14295, !noalias !14258
    #dbg_value(ptr %i.c, !14254, !DIExpression(), !14332)
  %i.bp = call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBQ_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !dbg !14297, !noalias !14098
  br i1 %i.bp, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !14298

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25, !dbg !14333, !noalias !14098
  unreachable, !dbg !14333

_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6insertB1d_.exit.i: ; preds = %.sink.split.i.i, %bb.m
  %.sroa.0.0.i24.i = phi i64 [ %i.aj, %bb.m ], [ %.sink.i.i, %.sink.split.i.i ], !dbg !14036 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i24.i, !14088, !DIExpression(), !14246)
    #dbg_value(i64 %.sroa.0.0.i24.i, !13995, !DIExpression(), !14245)
    #dbg_value(i64 %.sroa.0.0.i24.i, !14259, !DIExpression(), !14334)
    #dbg_value(i64 %.sroa.0.0.i24.i, !14268, !DIExpression(), !14336)
    #dbg_value(i64 %.sroa.0.0.i24.i, !14276, !DIExpression(), !14339)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14302, !noalias !14072
    #dbg_value(i64 %.sroa.0.0.i24.i, !13700, !DIExpression(), !14342)
  call void @llvm.experimental.noalias.scope.decl(metadata !14343), !dbg !14346
    #dbg_value(ptr %0, !14347, !DIExpression(), !14367)
    #dbg_value(i64 %..i.i.i, !14353, !DIExpression(), !14367)
    #dbg_value(i64 %.sroa.0.0.i24.i, !14354, !DIExpression(), !14367)
    #dbg_declare(ptr %i.b, !14355, !DIExpression(), !14369)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !14370
  %i.br = call { i64, i8 } @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6insertB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %..i.i.i, i64 noundef %.sroa.0.0.i24.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.p), !dbg !14371, !noalias !14372
  %i.bs = extractvalue { i64, i8 } %i.br, 1, !dbg !14371
  switch i8 %i.bs, label %bb.o [
    i8 2, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10insert_idxB1f_.exit.i
    i8 0, label %bb.p
  ], !dbg !14374, !prof !14375

bb.o:                                             ; preds = %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6insertB1d_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14376, !noalias !14377
  store i8 1, ptr %i.b, align 1, !dbg !14376, !noalias !14377
    #dbg_value(ptr %i.b, !14357, !DIExpression(), !14378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14379, !noalias !14377
  store ptr %i.b, ptr %i.a, align 8, !dbg !14379, !noalias !14377
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14379
  store ptr @_RNvXs_NtNtCs3O5oxBhiT4j_10tokio_util4time5wheelNtB4_11InsertErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !dbg !14379, !noalias !14377
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #25, !dbg !14380
  unreachable, !dbg !14380

bb.p:                                             ; preds = %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6insertB1d_.exit.i
  %i.bt = call fastcc noundef nonnull align 8 ptr @_RNvXs1_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtB5_3KeyE9index_mutB1g_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p, i64 noundef %.sroa.0.0.i24.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3), !dbg !14381
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40, !dbg !14382
  store i8 1, ptr %i.bu, align 8, !dbg !14382
  call void @llvm.experimental.noalias.scope.decl(metadata !14383), !dbg !14386
    #dbg_value(ptr %0, !14387, !DIExpression(), !14398)
    #dbg_value(i64 %.sroa.0.0.i24.i, !14392, !DIExpression(), !14398)
    #dbg_value(ptr %i.p, !14393, !DIExpression(), !14398)
    #dbg_value(ptr %0, !14400, !DIExpression(), !14407)
    #dbg_value(ptr %0, !14409, !DIExpression(), !14414)
  %i.bv = load i64, ptr %0, align 8, !dbg !14416, !range !12578, !alias.scope !14417, !noalias !14418, !noundef !13 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14416 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !14416, !alias.scope !14417, !noalias !14418 ; 2 uses
    #dbg_value(i64 %i.bv, !14394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14420)
    #dbg_value(i64 %i.bx, !14394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14420)
  store i64 0, ptr %0, align 8, !dbg !14421, !alias.scope !14417, !noalias !14418
  %i.by = trunc nuw i64 %i.bv to i1, !dbg !14422
  br i1 %i.by, label %bb.q, label %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4pushB19_.exit.i.i, !dbg !14422

bb.q:                                             ; preds = %bb.p
    #dbg_value(i64 %i.bx, !14396, !DIExpression(), !14423)
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RNvXs1_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtB5_3KeyE9index_mutB1g_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26), !dbg !14424, !noalias !14383 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !14425
  store i64 1, ptr %i.ca, align 8, !dbg !14425, !noalias !14383
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24, !dbg !14425
  store i64 %.sroa.0.0.i24.i, ptr %i.cb, align 8, !dbg !14425, !noalias !14383
  br label %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4pushB19_.exit.i.i, !dbg !14426

_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4pushB19_.exit.i.i: ; preds = %bb.q, %bb.p
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RNvXs1_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtB5_3KeyE9index_mutB1g_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p, i64 noundef %.sroa.0.0.i24.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27), !dbg !14427, !noalias !14383 ; 2 uses
  store i64 %i.bv, ptr %i.cc, align 8, !dbg !14428, !noalias !14383
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8, !dbg !14428
  store i64 %i.bx, ptr %i.cd, align 8, !dbg !14428, !noalias !14383
  store i64 1, ptr %0, align 8, !dbg !14429, !alias.scope !14417, !noalias !14418
  store i64 %.sroa.0.0.i24.i, ptr %i.bw, align 8, !dbg !14429, !alias.scope !14417, !noalias !14418
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10insert_idxB1f_.exit.i, !dbg !14430

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10insert_idxB1f_.exit.i: ; preds = %_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack4pushB19_.exit.i.i, %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6insertB1d_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !14431 ; 5 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !14431, !alias.scope !13686, !noalias !13741, !align !3695, !noundef !13 ; 3 uses
  %.not.i = icmp eq ptr %i.cf, null, !dbg !14431
  br i1 %.not.i, label %bb.v, label %bb.r, !dbg !14432

bb.r:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10insert_idxB1f_.exit.i
    #dbg_value(ptr %0, !13704, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14433)
    #dbg_value(ptr %i.cf, !14434, !DIExpression(), !14437)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80, !dbg !14439
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !14439, !noundef !13 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 88, !dbg !14439
  %i.cj = load i32, ptr %i.ci, align 8, !dbg !14439, !range !12755, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14440), !dbg !14443
    #dbg_value(ptr %0, !13749, !DIExpression(), !14444)
    #dbg_value(i64 %i.ch, !13755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14444)
    #dbg_value(i32 %i.cj, !13755, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14444)
    #dbg_declare(ptr poison, !13760, !DIExpression(), !14446)
    #dbg_value(i8 0, !13800, !DIExpression(), !14449)
    #dbg_value(i64 1000, !13808, !DIExpression(), !14451)
    #dbg_value(i64 1000, !13816, !DIExpression(), !14453)
    #dbg_value(i64 1000, !13825, !DIExpression(), !14455)
    #dbg_value(ptr poison, !13794, !DIExpression(), !14457)
    #dbg_value(ptr poison, !13832, !DIExpression(), !14458)
    #dbg_value(ptr poison, !13842, !DIExpression(), !14460)
    #dbg_value(ptr %0, !13795, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14462)
    #dbg_value(ptr %0, !13839, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14458)
    #dbg_value(ptr %0, !13848, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14460)
    #dbg_value(ptr poison, !13852, !DIExpression(), !14463)
    #dbg_value(ptr %0, !13860, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14463)
    #dbg_value(ptr poison, !13863, !DIExpression(), !14465)
    #dbg_value(ptr %0, !13871, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14465)
    #dbg_value(ptr poison, !13874, !DIExpression(), !14467)
    #dbg_value(ptr %0, !13882, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14467)
    #dbg_value(ptr poison, !13887, !DIExpression(), !14469)
    #dbg_value(ptr %0, !13895, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14471)
  %i.ck = load i64, ptr %i.q, align 8, !dbg !14472, !alias.scope !14473, !noalias !13741, !noundef !13 ; 3 uses
  %i.cl = icmp eq i64 %i.ch, %i.ck, !dbg !14467
  %i.cm = icmp slt i64 %i.ch, %i.ck, !dbg !14474
  %i.cn = load i32, ptr %i.u, align 8, !dbg !14467, !range !12755, !alias.scope !14473, !noalias !13741 ; 2 uses
  %i.co = icmp samesign ult i32 %i.cj, %i.cn, !dbg !14467
  %.sroa.02.0.i25.i = select i1 %i.cl, i1 %i.co, i1 %i.cm, !dbg !14467
    #dbg_value(i8 poison, !13784, !DIExpression(), !14477)
    #dbg_value(i8 poison, !13785, !DIExpression(), !14478)
    #dbg_value(i8 poison, !13905, !DIExpression(), !14479)
  br i1 %.sroa.02.0.i25.i, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit29.i, label %bb.s, !dbg !14480

bb.s:                                             ; preds = %bb.r
  %i.cp = call { i64, i32 } @_RNvXs3_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.ch, i32 noundef range(i32 0, 1000000000) %i.cj, i64 noundef %i.ck, i32 noundef %i.cn), !dbg !14481, !noalias !14440 ; 2 uses
  %i.cq = extractvalue { i64, i32 } %i.cp, 0, !dbg !14481
  %i.cr = extractvalue { i64, i32 } %i.cp, 1, !dbg !14481 ; 2 uses
    #dbg_value(i64 %i.cq, !13803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14449)
    #dbg_value(i32 %i.cr, !13803, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14449)
    #dbg_value(ptr poison, !13926, !DIExpression(), !14482)
  %i.cs = icmp ult i32 %i.cr, 1000000000, !dbg !14484
  call void @llvm.assume(i1 %i.cs), !dbg !14484
  %i.ct = add nuw nsw i32 %i.cr, 999999, !dbg !14486
  %i.cu = udiv i32 %i.ct, 1000000, !dbg !14486
    #dbg_value(i32 %i.cu, !13804, !DIExpression(), !14487)
    #dbg_value(i32 %i.cu, !13937, !DIExpression(), !14488)
    #dbg_value(i64 %i.cq, !13811, !DIExpression(), !14451)
    #dbg_value(i64 %i.cq, !13819, !DIExpression(), !14453)
    #dbg_value(i64 %i.cq, !13828, !DIExpression(), !14455)
  %7 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cq, i64 1000), !dbg !14490 ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !14490
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !14490
    #dbg_value(i64 %8, !13820, !DIExpression(), !14491)
    #dbg_value(i64 %8, !13944, !DIExpression(), !14492)
    #dbg_value(i1 %9, !13822, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14491)
    #dbg_value(i1 %9, !13950, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14494)
  br i1 %9, label %bb.t, label %bb.u, !dbg !14496, !prof !10251

bb.t:                                             ; preds = %bb.s
    #dbg_value(i64 -1, !13820, !DIExpression(), !14491)
    #dbg_value(i64 -1, !13944, !DIExpression(), !14492)
  br label %bb.u, !dbg !14497

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.04.0.i26.i = phi i64 [ -1, %bb.t ], [ %8, %bb.s ], !dbg !14451
    #dbg_value(i64 %.sroa.04.0.i26.i, !13944, !DIExpression(), !14492)
    #dbg_value(i64 %.sroa.04.0.i26.i, !13820, !DIExpression(), !14491)
  %i.cv = zext nneg i32 %i.cu to i64, !dbg !14498
    #dbg_value(i64 %i.cv, !13947, !DIExpression(), !14492)
  %i.cw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.04.0.i26.i, i64 %i.cv), !dbg !14499
    #dbg_value(i64 %i.cw, !13756, !DIExpression(), !14500)
    #dbg_value(i64 %i.cw, !13960, !DIExpression(), !14501)
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit29.i, !dbg !14503

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit29.i: ; preds = %bb.u, %bb.r
  %.sroa.0.0.i27.i = phi i64 [ %i.cw, %bb.u ], [ 0, %bb.r ], !dbg !14444
    #dbg_value(i64 %.sroa.0.0.i27.i, !13960, !DIExpression(), !14501)
    #dbg_value(i64 %.sroa.0.0.i27.i, !13756, !DIExpression(), !14500)
    #dbg_value(ptr %0, !14011, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !14504)
  %i.cx = load i64, ptr %i.ag, align 8, !dbg !14506, !alias.scope !14473, !noalias !13741, !noundef !13
    #dbg_value(i64 %i.cx, !13963, !DIExpression(), !14501)
    #dbg_value(ptr undef, !14020, !DIExpression(DW_OP_deref), !14507)
    #dbg_value(ptr undef, !14024, !DIExpression(DW_OP_deref), !14507)
  %..i.i28.i = call noundef i64 @llvm.umax.i64(i64 %i.cx, i64 %.sroa.0.0.i27.i), !dbg !14509
    #dbg_value(i64 %..i.i28.i, !13706, !DIExpression(), !14510)
  %i.cy = icmp ugt i64 %..i.i28.i, %..i.i.i, !dbg !14511
    #dbg_value(i1 %i.cy, !13702, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14512)
  br i1 %i.cy, label %bb.v, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE9insert_atB1f_.exit, !dbg !14513

bb.v:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE18normalize_deadlineB1f_.exit29.i, %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10insert_idxB1f_.exit.i
    #dbg_value(ptr %0, !14514, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !14520)
    #dbg_value(ptr %0, !14522, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !14527)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !14529 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !14529, !alias.scope !13686, !noalias !13741, !align !3695, !noundef !13 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !14529
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !14529, !alias.scope !13686, !noalias !13741
  store ptr null, ptr %i.cz, align 8, !dbg !14530, !alias.scope !13686, !noalias !13741
  %.not22.i = icmp eq ptr %i.da, null, !dbg !14531
  br i1 %.not22.i, label %bb.x, label %bb.w, !dbg !14532

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr %i.da, !13708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14533)
    #dbg_value(ptr %i.da, !14534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14542)
    #dbg_value(ptr %i.dc, !13708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14533)
    #dbg_value(ptr %i.dc, !14534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14542)
    #dbg_value(ptr %i.da, !14540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14544)
    #dbg_value(ptr %i.dc, !14540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14544)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !14545
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !14545, !nonnull !13, !noundef !13
  call void %i.de(ptr noundef %i.dc), !dbg !14545, !inline_history !14546
  br label %bb.x, !dbg !14547

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.df = load i64, ptr %i.q, align 8, !dbg !14548, !alias.scope !13686, !noalias !13741, !noundef !13
  %i.dg = load i32, ptr %i.u, align 8, !dbg !14548, !range !12755, !alias.scope !13686, !noalias !13741, !noundef !13
  %i.dh = udiv i64 %..i.i.i, 1000, !dbg !14549
  %i.di = urem i64 %..i.i.i, 1000, !dbg !14550
  %i.dj = trunc nuw nsw i64 %i.di to i32, !dbg !14550
  %i.dk = mul nuw nsw i32 %i.dj, 1000000, !dbg !14551
  %i.dl = call { i64, i32 } @_RNvXs1_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dg, i64 noundef %i.dh, i32 noundef %i.dk), !dbg !14548 ; 2 uses
  %i.dm = extractvalue { i64, i32 } %i.dl, 0, !dbg !14548 ; 2 uses
  %i.dn = extractvalue { i64, i32 } %i.dl, 1, !dbg !14548 ; 2 uses
    #dbg_value(i64 %i.dm, !13710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14552)
    #dbg_value(i32 %i.dn, !13710, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14552)
  %i.do = load ptr, ptr %i.ce, align 8, !dbg !14553, !alias.scope !13686, !noalias !13741, !align !3695, !noundef !13 ; 2 uses
  %.not23.i = icmp eq ptr %i.do, null, !dbg !14553
  br i1 %.not23.i, label %bb.z, label %bb.y, !dbg !14554

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr %0, !13712, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14555)
  call void @_RNvMNtNtCs2sJxpAufolh_5tokio4time5sleepNtB2_5Sleep5reset(ptr noundef nonnull align 8 %i.do, i64 noundef %i.dm, i32 noundef %i.dn), !dbg !14556
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE9insert_atB1f_.exit, !dbg !14557

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14558, !noalias !14072
  call void @_RNvNtNtCs2sJxpAufolh_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.f, i64 noundef %i.dm, i32 noundef %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3), !dbg !14558
    #dbg_declare(ptr %i.f, !12834, !DIExpression(), !14559)
    #dbg_value(i64 8, !12844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14561)
    #dbg_value(i64 8, !12861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14563)
    #dbg_value(i64 8, !12886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14565)
    #dbg_value(i64 96, !12844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14561)
    #dbg_value(i64 96, !12861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14563)
    #dbg_value(i64 96, !12886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14565)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12883, !DIExpression(), !14563)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12892, !DIExpression(), !14565)
    #dbg_value(i8 0, !12893, !DIExpression(), !14565)
    #dbg_value(i64 8, !12896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14567)
    #dbg_value(i64 8, !12930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14569)
    #dbg_value(i64 96, !12896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14567)
    #dbg_value(i64 96, !12930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14569)
    #dbg_value(i1 false, !12902, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14567)
    #dbg_value(i64 96, !12903, !DIExpression(), !14571)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !dbg !14572, !noalias !14573
  %i.dp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 96, 113) 96, i64 noundef 8) #14, !dbg !14576, !noalias !14573 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null, !dbg !14577
  br i1 %i.dq, label %bb.aa, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit.i, !dbg !14578, !prof !10251

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #26
          to label %.noexc.i unwind label %bb.ab, !dbg !14579

.noexc.i:                                         ; preds = %bb.aa
  unreachable, !dbg !14579

bb.ab:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 dereferenceable(96) %i.f) #24
          to label %common.resume.i unwind label %bb.ac, !dbg !14580

bb.ac:                                            ; preds = %bb.ab
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !14581
  unreachable, !dbg !14581

common.resume.i:                                  ; preds = %.body.i, %bb.ab
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i ], [ %i.dr, %bb.ab ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !13714

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit.i: ; preds = %bb.z
    #dbg_value(ptr %i.dp, !12839, !DIExpression(), !14582)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !dbg !14583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14584, !noalias !14072
  %.val.i = load ptr, ptr %i.ce, align 8, !dbg !14585, !alias.scope !13686, !noalias !13741, !align !3695, !noundef !13 ; 6 uses
    #dbg_value(ptr poison, !3356, !DIExpression(), !14586)
  %i.dt = icmp eq ptr %.val.i, null, !dbg !14588
  br i1 %i.dt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i, label %bb.ad, !dbg !14588

bb.ad:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit.i
    #dbg_value(ptr poison, !3361, !DIExpression(), !14589)
    #dbg_value(ptr poison, !3369, !DIExpression(), !14591)
    #dbg_value(ptr %.val.i, !3379, !DIExpression(), !14593)
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i, i64 72, !dbg !14595 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14596), !dbg !14595
    #dbg_value(ptr %i.du, !3393, !DIExpression(), !14599)
  call void @llvm.experimental.noalias.scope.decl(metadata !14601), !dbg !14604
    #dbg_value(ptr %i.du, !3407, !DIExpression(), !14605)
  call void @llvm.experimental.noalias.scope.decl(metadata !14607), !dbg !14610
    #dbg_value(ptr %i.du, !3419, !DIExpression(), !14611)
    #dbg_value(ptr %i.du, !3424, !DIExpression(), !14613)
    #dbg_value(i64 1, !3434, !DIExpression(), !14615)
    #dbg_value(i8 1, !3438, !DIExpression(), !14615)
    #dbg_value(i64 1, !3441, !DIExpression(), !14617)
    #dbg_value(i8 1, !3445, !DIExpression(), !14617)
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !14619, !alias.scope !14621, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.dv, !3437, !DIExpression(), !14622)
    #dbg_value(ptr %i.dv, !3444, !DIExpression(), !14617)
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !dbg !14623, !noalias !14621
  %i.dx = icmp eq i64 %i.dw, 1, !dbg !14624
  br i1 %i.dx, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i, !dbg !14624

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i8 2, !1808, !DIExpression(), !14625)
  fence acquire, !dbg !14627
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.du) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i unwind label %bb.af, !dbg !14628

bb.af:                                            ; preds = %bb.ae
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val.i) #24
          to label %.body.i unwind label %bb.ag, !dbg !14595

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i unwind label %bb.ah, !dbg !14595

bb.ag:                                            ; preds = %bb.af
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !14595
  unreachable, !dbg !14595

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !14629

.body.i:                                          ; preds = %bb.ah, %bb.af
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ea, %bb.ah ], [ %i.dy, %bb.af ]
    #dbg_value(ptr poison, !3464, !DIExpression(), !14630)
    #dbg_value(ptr %.val.i, !3470, !DIExpression(), !14632)
    #dbg_value(i64 8, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14633)
    #dbg_value(i64 96, !3481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14633)
    #dbg_value(ptr poison, !3497, !DIExpression(), !14634)
    #dbg_value(ptr poison, !3509, !DIExpression(), !14636)
    #dbg_value(ptr %.val.i, !3505, !DIExpression(), !14634)
    #dbg_value(ptr %.val.i, !3514, !DIExpression(), !14636)
    #dbg_value(ptr %.val.i, !3518, !DIExpression(), !14638)
    #dbg_value(ptr %.val.i, !3527, !DIExpression(), !14640)
    #dbg_value(i64 8, !3506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14634)
    #dbg_value(i64 8, !3515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14636)
    #dbg_value(i64 8, !3524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14638)
    #dbg_value(i64 8, !3530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14640)
    #dbg_value(i64 96, !3506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14634)
    #dbg_value(i64 96, !3515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14636)
    #dbg_value(i64 96, !3524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14638)
    #dbg_value(i64 96, !3530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14640)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 96, i64 noundef 8) #14, !dbg !14642
  store ptr %i.dp, ptr %i.ce, align 8, !dbg !14585, !alias.scope !13686, !noalias !13741
  br label %common.resume.i, !dbg !14643

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i.i
    #dbg_value(ptr poison, !3464, !DIExpression(), !14644)
end_hunk_1
begin_hunk_2_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyECsa2e0UnRrdBM_12tokio_quiche

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2e_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBR_11KeyInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4taskINtB5_4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1r_(ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtB5_11OwnedPermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtB5_11OwnedPermitNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs5OU5zKChQMG_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NvNtNtNtCs2sJxpAufolh_5tokio7runtime4time5entry1__NtB7_10TimerEntryNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameE3newB10_(i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameE3newB10_(i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs1_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBQ_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBP_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBQ_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connection8IncomingE4growB10_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connection8IncomingE8try_pushB10_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(8), i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic6router20ConnectionMapCommandE8try_pushB10_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(8), i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameE4growB10_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameE8try_pushB10_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(8), i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameE5writeB10_(ptr noundef nonnull align 8, i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameE4growB10_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameE8try_pushB10_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(8), i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE4growB12_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client13ClientH3EventE5writeB12_(ptr noundef nonnull align 8, i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client15ClientH3CommandE4growB12_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client15ClientH3CommandE8try_pushB12_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(8), i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6server13ServerH3EventE4growB12_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6server13ServerH3EventE5writeB12_(ptr noundef nonnull align 8, i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connection8IncomingE22observed_tail_positionB10_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connection8IncomingE4readB10_(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic6router20ConnectionMapCommandE22observed_tail_positionB10_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic6router20ConnectionMapCommandE4readB10_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameE22observed_tail_positionB10_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameE4readB10_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameE22observed_tail_positionB10_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameE4readB10_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client15ClientH3CommandE22observed_tail_positionB12_(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6client15ClientH3CommandE4readB12_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6insertB1q_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6removeB1q_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCs3O5oxBhiT4j_10tokio_util4time5wheel5level5LevelINtNtBX_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3s_8adapters3map3MapINtNtNtB3u_3ops5range5RangejENvMBT_BQ_3newEEB2j_(i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtNtCs2sJxpAufolh_5tokio4time7instantNtB2_7Instant3now() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2sJxpAufolh_5tokio4time5sleep11sleep_until(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2sJxpAufolh_5tokio4time5sleepNtB2_5Sleep5reset(ptr noundef nonnull align 8, i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs2sJxpAufolh_5tokio4time5sleepNtB2_5Sleep10is_elapsed(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEENtB4_6Future4pollCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE4pollB1q_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa2e0UnRrdBM_12tokio_quiche(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE9downgradeB2q_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams9StreamCtxE3getyEB1h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streamsNtB2_9StreamCtx3new(ptr dead_on_unwind noalias nofree noundef writable sret([192 x i8]) align 8 captures(none) dereferenceable(192), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver8datagram25extract_quarter_stream_id(i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 192153584101141163)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsa2e0UnRrdBM_12tokio_quiche5http36driverINtB5_8H3DriverNtNtB5_6server11ServerHooksE18get_or_insert_flowB9_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1096), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsd_NtCs3f36owOmepS_6quiche2h3NtB5_10Connection25take_last_priority_update(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(520), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs1_Cs3f36owOmepS_6quicheINtB5_10ConnectionNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE15stream_priorityBM_(ptr noalias nofree noundef align 16 dereferenceable(15552), i64 noundef, i8 noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsa2e0UnRrdBM_12tokio_quiche5http36driverINtB5_8H3DriverNtNtB5_6server11ServerHooksE13insert_streamB9_(ptr noalias nofree noundef align 8 dereferenceable(1096), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCs3f36owOmepS_6quiche3tls9boringsslNtB6_9Handshake16is_in_early_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver6server13ServerH3EventE4sendB1k_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9Srk37lQfcB_4slab5EntryINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEEE8grow_oneB2e_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics6labels29QuicInvalidInitialPacketErrorE4fromB2q_(i8 noundef range(i8 0, 11)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic10connection5error14HandshakeErrorE4fromB2s_(i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs4_NtNtCsa2e0UnRrdBM_12tokio_quiche5http36driverINtB5_8H3DriverNtNtB5_6server11ServerHooksE19handle_core_commandB9_(ptr noalias nofree noundef align 8 dereferenceable(1096), ptr noalias nofree noundef align 16 dereferenceable(15552), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtNtCsa2e0UnRrdBM_12tokio_quiche5http38settingsNtB5_21Http3SettingsEnforcer11add_timeout(ptr noalias nofree noundef align 8 dereferenceable(224), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs1_Cs3f36owOmepS_6quicheINtB5_10ConnectionNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE5closeBM_(ptr noalias nofree noundef align 16 dereferenceable(15552), i1 noundef zeroext, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsa2e0UnRrdBM_12tokio_quiche5http38settingsNtB5_21Http3SettingsEnforcer14cancel_timeout(ptr noalias nofree noundef align 8 dereferenceable(224), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsa2e0UnRrdBM_12tokio_quiche5http38settingsNtB4_21Http3SettingsEnforcerINtNtCskKLDkoKarTP_4core7convert4FromRNtB4_13Http3SettingsE4from(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chan4ChanNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtBL_7bounded9SemaphoreEE9drop_slowB1z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chan4ChanNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtBL_7bounded9SemaphoreEE9drop_slowB1z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http35stats12H3AuditStatsE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noinline }
attributes #24 = { cold }
attributes #25 = { noinline noreturn }
attributes #26 = { noreturn }

!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}
!llvm.dbg.cu = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<&usize as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&usize as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !12, templateParams: !13, identifier: "4f475f32bb376a57871f596dc1c8efef")
!4 = !{!5, !8, !10, !11}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !3, file: !2, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!7 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!13 = !{}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 2, !"RtLibUseGOT", i32 1}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!20 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !21, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, globals: !324, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "tokio-quiche/src/lib.rs/@/tokio_quiche.74e4f61a4e01e0f4-cgu.13", directory: "/opt-bench/work/quiche-rs/quiche")
!22 = !{!23, !31, !39, !46, !95, !100, !110, !117, !123, !130, !139, !208, !215, !222, !226, !236, !248, !254, !261, !268, !276, !282, !291, !297, !302, !308, !313, !319}
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CertificateKind", scope: !24, file: !2, baseType: !27, size: 8, align: 8, flags: DIFlagEnumClass, elements: !28)
!24 = !DINamespace(name: "tls", scope: !25)
!25 = !DINamespace(name: "settings", scope: !26)
!26 = !DINamespace(name: "tokio_quiche", scope: null)
!27 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "X509", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "RawPublicKey", value: 1, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Kind", scope: !32, file: !2, baseType: !27, size: 8, align: 8, flags: DIFlagEnumClass, elements: !35)
!32 = !DINamespace(name: "error", scope: !33)
!33 = !DINamespace(name: "time", scope: !34)
!34 = !DINamespace(name: "tokio", scope: null)
!35 = !{!36, !37, !38}
!36 = !DIEnumerator(name: "Shutdown", value: 1, isUnsigned: true)
!37 = !DIEnumerator(name: "AtCapacity", value: 2, isUnsigned: true)
!38 = !DIEnumerator(name: "Invalid", value: 3, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Mandatory", scope: !40, file: !2, baseType: !27, size: 8, align: 8, flags: DIFlagEnumClass, elements: !43)
!40 = !DINamespace(name: "pool", scope: !41)
!41 = !DINamespace(name: "blocking", scope: !42)
!42 = !DINamespace(name: "runtime", scope: !34)
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "Mandatory", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "NonMandatory", value: 1, isUnsigned: true)
end_hunk_2
