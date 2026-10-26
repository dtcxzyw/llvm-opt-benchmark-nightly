Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.00?download=true
inline.NumInlined: 1326
inline.NumDeleted: 379
begin_hunk_0_@_RNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0B7_:bb.a
    #dbg_value(i64 %.promoted38524513, !26604, !DIExpression(), !29712)
    #dbg_value(i64 %.promoted38524513, !26607, !DIExpression(), !29713)
    #dbg_value(i64 %.promoted38504514, !26577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29708)
    #dbg_value(i64 %.promoted38504514, !26586, !DIExpression(), !29709)
    #dbg_value(i64 %.promoted38504514, !26598, !DIExpression(), !29710)
    #dbg_value(i64 %.promoted38504514, !26602, !DIExpression(), !29711)
    #dbg_value(i64 %.promoted38504514, !26605, !DIExpression(), !29712)
    #dbg_value(i64 %.promoted38504514, !26608, !DIExpression(), !29713)
    #dbg_value(i64 %.promoted38494515, !26577, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29708)
    #dbg_value(i64 %.promoted38494515, !26587, !DIExpression(), !29709)
    #dbg_value(i64 %.promoted38494515, !26599, !DIExpression(), !29710)
    #dbg_value(i64 %.promoted38494515, !26603, !DIExpression(), !29711)
    #dbg_value(i64 %.promoted38494515, !26606, !DIExpression(), !29712)
    #dbg_value(i64 %.promoted38494515, !26609, !DIExpression(), !29713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !31736
    #dbg_value(i8 0, !26578, !DIExpression(), !29714)
  store i8 0, ptr %i.by, align 1, !dbg !31737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !31738
    #dbg_value(i8 0, !26579, !DIExpression(), !29715)
  store i8 0, ptr %i.bx, align 1, !dbg !31739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !31740
    #dbg_value(ptr %i.de, !28597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29717)
    #dbg_value(ptr %i.de, !28601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29720)
    #dbg_value(i64 poison, !28597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29717)
    #dbg_value(i64 poison, !28601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29720)
    #dbg_value(i64 poison, !28625, !DIExpression(), !29723)
    #dbg_value(ptr %i.de, !28626, !DIExpression(), !29723)
    #dbg_value(ptr %i.de, !29724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29732)
    #dbg_value(ptr %i.dg, !29724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29732)
    #dbg_value(i64 1, !29724, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29732)
    #dbg_value(ptr %i.bx, !29727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29732)
    #dbg_value(ptr %i.by, !29727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29732)
  store ptr %i.de, ptr %i.bw, align 8, !dbg !31741
  %.sroa.4492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !31741
  store ptr %i.dg, ptr %.sroa.4492.0..sroa_idx, align 8, !dbg !31741
  %.sroa.5493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !31741
  store i64 1, ptr %.sroa.5493.0..sroa_idx, align 8, !dbg !31741
  %i.arn = getelementptr inbounds nuw i8, ptr %i.bw, i64 40, !dbg !31741
  store i8 0, ptr %i.arn, align 8, !dbg !31741
  %i.aro = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !31741
  store ptr %i.bx, ptr %i.aro, align 8, !dbg !31741
  %i.arp = getelementptr inbounds nuw i8, ptr %i.bw, i64 32, !dbg !31741
  store ptr %i.by, ptr %i.arp, align 8, !dbg !31741
  %i.arq = call fastcc noundef i64 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.bw) #31, !dbg !31742 ; 7 uses
    #dbg_value(i64 %i.arq, !26580, !DIExpression(), !29735)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !31743
  %i.arr = load i64, ptr %i.cj, align 8, !dbg !26951, !noundef !1314 ; 5 uses
    #dbg_value(ptr poison, !27196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29737)
    #dbg_value(ptr poison, !27209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29740)
    #dbg_value(i64 %i.arr, !27196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29737)
    #dbg_value(i64 %i.arr, !27209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29740)
  %i.ars = add i64 %i.arq, 1, !dbg !31744         ; 3 uses
    #dbg_value(i64 %i.ars, !27197, !DIExpression(), !29737)
    #dbg_value(i64 %i.ars, !27210, !DIExpression(), !29740)
  %i.art = icmp ult i64 %i.ars, %i.arr, !dbg !31745
  br i1 %i.art, label %bb.hh, label %.critedge2451, !dbg !31745

bb.gu:                                            ; preds = %thread-pre-split
    #dbg_value(i64 %.promoted38524513, !26610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29741)
    #dbg_value(i64 %.promoted38524513, !26618, !DIExpression(), !29742)
    #dbg_value(i64 %.promoted38524513, !26630, !DIExpression(), !29743)
    #dbg_value(i64 %.promoted38524513, !26634, !DIExpression(), !29744)
    #dbg_value(i64 %.promoted38524513, !26637, !DIExpression(), !29745)
    #dbg_value(i64 %.promoted38524513, !26640, !DIExpression(), !29746)
    #dbg_value(i64 %.promoted38504514, !26610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29741)
    #dbg_value(i64 %.promoted38504514, !26619, !DIExpression(), !29742)
    #dbg_value(i64 %.promoted38504514, !26631, !DIExpression(), !29743)
    #dbg_value(i64 %.promoted38504514, !26635, !DIExpression(), !29744)
    #dbg_value(i64 %.promoted38504514, !26638, !DIExpression(), !29745)
    #dbg_value(i64 %.promoted38504514, !26641, !DIExpression(), !29746)
    #dbg_value(i64 %.promoted38494515, !26610, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29741)
    #dbg_value(i64 %.promoted38494515, !26620, !DIExpression(), !29742)
    #dbg_value(i64 %.promoted38494515, !26632, !DIExpression(), !29743)
    #dbg_value(i64 %.promoted38494515, !26636, !DIExpression(), !29744)
    #dbg_value(i64 %.promoted38494515, !26639, !DIExpression(), !29745)
    #dbg_value(i64 %.promoted38494515, !26642, !DIExpression(), !29746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !31746
    #dbg_value(i8 0, !26611, !DIExpression(), !29747)
  store i8 0, ptr %i.bi, align 1, !dbg !31747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !31748
    #dbg_value(i8 0, !26612, !DIExpression(), !29748)
  store i8 0, ptr %i.bh, align 1, !dbg !31749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !31750
    #dbg_value(ptr %i.de, !28597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29750)
    #dbg_value(ptr %i.de, !28601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29753)
    #dbg_value(i64 poison, !28597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29750)
    #dbg_value(i64 poison, !28601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29753)
    #dbg_value(i64 poison, !28625, !DIExpression(), !29756)
    #dbg_value(ptr %i.de, !28626, !DIExpression(), !29756)
    #dbg_value(ptr %i.de, !29757, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29764)
    #dbg_value(ptr %i.dg, !29757, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29764)
    #dbg_value(i64 1, !29757, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29764)
    #dbg_value(ptr %i.bh, !29760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29764)
    #dbg_value(ptr %i.bi, !29760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29764)
  store ptr %i.de, ptr %i.bg, align 8, !dbg !31751
  %.sroa.4543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !31751
  store ptr %i.dg, ptr %.sroa.4543.0..sroa_idx, align 8, !dbg !31751
  %.sroa.5544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !31751
  store i64 1, ptr %.sroa.5544.0..sroa_idx, align 8, !dbg !31751
  %i.aru = getelementptr inbounds nuw i8, ptr %i.bg, i64 40, !dbg !31751
  store i8 0, ptr %i.aru, align 8, !dbg !31751
  %i.arv = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !31751
  store ptr %i.bh, ptr %i.arv, align 8, !dbg !31751
  %i.arw = getelementptr inbounds nuw i8, ptr %i.bg, i64 32, !dbg !31751
  store ptr %i.bi, ptr %i.arw, align 8, !dbg !31751
  %i.arx = call fastcc noundef i64 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.bg) #31, !dbg !31752 ; 7 uses
    #dbg_value(i64 %i.arx, !26613, !DIExpression(), !29768)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !31753
  %i.ary = load i64, ptr %i.cj, align 8, !dbg !31754, !noundef !1314 ; 5 uses
    #dbg_value(ptr poison, !27196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29770)
    #dbg_value(ptr poison, !27209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29773)
    #dbg_value(i64 %i.ary, !27196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29770)
    #dbg_value(i64 %i.ary, !27209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29773)
  %i.arz = add i64 %i.arx, 1, !dbg !31755         ; 3 uses
    #dbg_value(i64 %i.arz, !27197, !DIExpression(), !29770)
    #dbg_value(i64 %i.arz, !27210, !DIExpression(), !29773)
  %i.asa = icmp ult i64 %i.arz, %i.ary, !dbg !31756
  br i1 %i.asa, label %bb.iw, label %.critedge2454, !dbg !31756

bb.gv:                                            ; preds = %thread-pre-split
    #dbg_value(i64 %.promoted38524513, !26643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29774)
    #dbg_value(i64 %.promoted38524513, !26651, !DIExpression(), !29775)
    #dbg_value(i64 %.promoted38524513, !26663, !DIExpression(), !29776)
    #dbg_value(i64 %.promoted38524513, !26667, !DIExpression(), !29777)
    #dbg_value(i64 %.promoted38524513, !26670, !DIExpression(), !29778)
    #dbg_value(i64 %.promoted38524513, !26673, !DIExpression(), !29779)
    #dbg_value(i64 %.promoted38504514, !26643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29774)
    #dbg_value(i64 %.promoted38504514, !26652, !DIExpression(), !29775)
    #dbg_value(i64 %.promoted38504514, !26664, !DIExpression(), !29776)
    #dbg_value(i64 %.promoted38504514, !26668, !DIExpression(), !29777)
    #dbg_value(i64 %.promoted38504514, !26671, !DIExpression(), !29778)
    #dbg_value(i64 %.promoted38504514, !26674, !DIExpression(), !29779)
    #dbg_value(i64 %.promoted38494515, !26643, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29774)
    #dbg_value(i64 %.promoted38494515, !26653, !DIExpression(), !29775)
    #dbg_value(i64 %.promoted38494515, !26665, !DIExpression(), !29776)
    #dbg_value(i64 %.promoted38494515, !26669, !DIExpression(), !29777)
    #dbg_value(i64 %.promoted38494515, !26672, !DIExpression(), !29778)
    #dbg_value(i64 %.promoted38494515, !26675, !DIExpression(), !29779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !31757
    #dbg_value(i8 0, !26644, !DIExpression(), !29780)
  store i8 0, ptr %i.as, align 1, !dbg !31758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !31759
    #dbg_value(i8 0, !26645, !DIExpression(), !29781)
  store i8 0, ptr %i.ar, align 1, !dbg !31760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !31761
    #dbg_value(ptr %i.de, !28597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29783)
    #dbg_value(ptr %i.de, !28601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29786)
    #dbg_value(i64 poison, !28597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29783)
    #dbg_value(i64 poison, !28601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29786)
    #dbg_value(i64 poison, !28625, !DIExpression(), !29789)
    #dbg_value(ptr %i.de, !28626, !DIExpression(), !29789)
    #dbg_value(ptr %i.de, !29790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29797)
    #dbg_value(ptr %i.dg, !29790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29797)
    #dbg_value(i64 1, !29790, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29797)
    #dbg_value(ptr %i.ar, !29793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29797)
    #dbg_value(ptr %i.as, !29793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29797)
  store ptr %i.de, ptr %i.aq, align 8, !dbg !31762
  %.sroa.4594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !31762
  store ptr %i.dg, ptr %.sroa.4594.0..sroa_idx, align 8, !dbg !31762
  %.sroa.5595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !31762
  store i64 1, ptr %.sroa.5595.0..sroa_idx, align 8, !dbg !31762
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !31762
  store i8 0, ptr %i.asb, align 8, !dbg !31762
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !31762
  store ptr %i.ar, ptr %i.asc, align 8, !dbg !31762
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !31762
  store ptr %i.as, ptr %i.asd, align 8, !dbg !31762
  %i.ase = call fastcc noundef i64 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.aq) #31, !dbg !31763 ; 7 uses
    #dbg_value(i64 %i.ase, !26646, !DIExpression(), !29801)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !31764
  %i.asf = load i64, ptr %i.cj, align 8, !dbg !31765, !noundef !1314 ; 5 uses
    #dbg_value(ptr poison, !27196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29803)
    #dbg_value(ptr poison, !27209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29806)
    #dbg_value(i64 %i.asf, !27196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29803)
    #dbg_value(i64 %i.asf, !27209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29806)
  %i.asg = add i64 %i.ase, 1, !dbg !31766         ; 3 uses
    #dbg_value(i64 %i.asg, !27197, !DIExpression(), !29803)
    #dbg_value(i64 %i.asg, !27210, !DIExpression(), !29806)
  %i.ash = icmp ult i64 %i.asg, %i.asf, !dbg !31767
  br i1 %i.ash, label %bb.kl, label %.critedge2457, !dbg !31767

bb.gw:                                            ; preds = %thread-pre-split
    #dbg_value(i8 17, !26576, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !29647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !27181
  store i8 17, ptr %i.u, align 8, !dbg !27181
    #dbg_value(ptr %i.de, !27220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28484)
    #dbg_value(i64 %storemerge385738624516, !27220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28484)
    #dbg_value(ptr %i.de, !28779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25672)
    #dbg_value(ptr %i.de, !28793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25674)
    #dbg_value(i64 %storemerge385738624516, !28779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25672)
    #dbg_value(i64 %storemerge385738624516, !28793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25674)
    #dbg_value(i64 1, !28791, !DIExpression(), !25672)
    #dbg_value(i64 1, !28794, !DIExpression(), !25674)
  br i1 %i.aqv, label %bb.gx, label %.split6.i2746, !dbg !31735

.split6.i2746:                                    ; preds = %.split3433, %.split3432, %.split3431, %.split3430, %.split3429, %.split3428, %.split3427, %.split3426, %.split3425, %.split3424, %.split3423, %.split3422, %.split3421, %.split3420, %.split3419, %.split3418, %.split3417, %.split3416, %.split3415, %.split3414, %bb.gw
  %i.asi = icmp eq i64 %storemerge385738624516, 1, !dbg !31768
  br i1 %i.asi, label %.preheader4550, label %bb.gz, !dbg !31769

.preheader4550:                                   ; preds = %bb.gx, %.split6.i2746
  br label %bb.ha, !dbg !31770

.sink.split:                                      ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fo, %bb.fn
  %.sink4393 = phi i8 [ 22, %bb.gc ], [ 30, %bb.fo ], [ 14, %bb.fy ], [ 13, %bb.fz ], [ 29, %bb.ga ], [ 35, %bb.gb ], [ 30, %bb.fn ], [ 20, %bb.gd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !27181
  store i8 %.sink4393, ptr %i.u, align 8, !dbg !27181
  br label %bb.gx, !dbg !31771

bb.gx:                                            ; preds = %.sink.split, %.split3433, %.split3432, %.split3431, %.split3430, %.split3429, %.split3428, %.split3427, %.split3426, %.split3425, %.split3424, %.split3423, %.split3422, %.split3421, %.split3420, %.split3419, %.split3418, %.split3417, %.split3416, %.split3415, %.split3414, %bb.gw
  %i.asj = getelementptr inbounds nuw i8, ptr %i.de, i64 1, !dbg !31771
  %i.ask = load i8, ptr %i.asj, align 1, !dbg !31771, !alias.scope !29807, !noundef !1314
    #dbg_value(i8 %i.ask, !28796, !DIExpression(), !25684)
  %i.asl = icmp sgt i8 %i.ask, -65, !dbg !31772
  br i1 %i.asl, label %.preheader4550, label %bb.gz, !dbg !31769

bb.gy:                                            ; preds = %bb.gz
  %i.asm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #25
          to label %bb.au unwind label %bb.at, !dbg !31773

bb.gz:                                            ; preds = %bb.gx, %.split6.i2746
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %storemerge385738624516, i64 noundef 0, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27
          to label %bb.as unwind label %bb.gy, !dbg !31774

bb.ha:                                            ; preds = %.preheader4550, %bb.hg
  %i.asn = phi i64 [ %i.aue, %bb.hg ], [ %i.df, %.preheader4550 ] ; 2 uses
  %i.aso = phi i64 [ %i.aug, %bb.hg ], [ %.promoted38504514, %.preheader4550 ]
  %i.asp = phi i64 [ %i.auf, %bb.hg ], [ %.promoted38494515, %.preheader4550 ] ; 2 uses
  %.sroa.02940.0.idx3895 = phi i64 [ %.sroa.02940.1.ph34483455.idx, %bb.hg ], [ 0, %.preheader4550 ] ; 6 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.0.idx3895), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
  %.sroa.02940.0.ptr = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02940.0.idx3895, !dbg !31775
    #dbg_value(ptr %.sroa.02940.0.ptr, !26703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29808)
    #dbg_value(ptr %.sroa.02940.0.ptr, !2775, !DIExpression(), !25686)
    #dbg_value(ptr %.sroa.02940.0.ptr, !3118, !DIExpression(), !25688)
  %.sroa.02940.0.add = add nuw nsw i64 %.sroa.02940.0.idx3895, 1, !dbg !31776 ; 2 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.0.add), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
  %i.asq = load i8, ptr %.sroa.02940.0.ptr, align 1, !dbg !31777, !noalias !29809, !noundef !1314 ; 5 uses
    #dbg_value(i8 %i.asq, !2794, !DIExpression(), !25691)
    #dbg_value(i8 %i.asq, !3121, !DIExpression(), !25693)
  %i.asr = icmp sgt i8 %i.asq, -1, !dbg !31770
  br i1 %i.asr, label %.thread3445, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2755, !dbg !31770

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2755: ; preds = %bb.ha
  %.ptr3678 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02940.0.add, !dbg !31777
    #dbg_value(ptr %.ptr3678, !26703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29808)
  %i.ass = and i8 %i.asq, 31, !dbg !31778
  %i.ast = zext nneg i8 %i.ass to i32, !dbg !31778 ; 3 uses
    #dbg_value(i32 %i.ast, !2797, !DIExpression(), !25694)
    #dbg_value(i32 %i.ast, !3126, !DIExpression(), !25696)
    #dbg_value(ptr undef, !2758, !DIExpression(), !23975)
    #dbg_value(i64 1, !3119, !DIExpression(), !25698)
    #dbg_value(ptr %.ptr3678, !2775, !DIExpression(), !25699)
    #dbg_value(ptr %.ptr3678, !3118, !DIExpression(), !25698)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25700)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25702)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25703)
  %i.asu = icmp ne i64 %.sroa.02940.0.idx3895, 0, !dbg !31779
  tail call void @llvm.assume(i1 %i.asu), !dbg !31780
  %.sroa.02940.0.add3677 = add nuw nsw i64 %.sroa.02940.0.idx3895, 2, !dbg !31781 ; 2 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.0.add3677), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
  %i.asv = load i8, ptr %.ptr3678, align 1, !dbg !31782, !noalias !29809, !noundef !1314
    #dbg_value(i8 %i.asv, !2798, !DIExpression(), !25704)
    #dbg_value(i8 %i.asv, !3129, !DIExpression(), !25696)
  %i.asw = shl nuw nsw i32 %i.ast, 6, !dbg !31783
  %i.asx = and i8 %i.asv, 63, !dbg !31784
  %i.asy = zext nneg i8 %i.asx to i32, !dbg !31784 ; 2 uses
  %i.asz = or disjoint i32 %i.asw, %i.asy, !dbg !31783
    #dbg_value(i32 %i.asz, !2799, !DIExpression(), !25705)
  %i.ata = icmp samesign ugt i8 %i.asq, -33, !dbg !31785
  br i1 %i.ata, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2758, label %bb.hb, !dbg !31785

.thread3445:                                      ; preds = %bb.ha
  %i.atb = zext nneg i8 %i.asq to i32, !dbg !31786
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.0.add), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
    #dbg_value(i32 1, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29810)
    #dbg_value(i32 %i.atb, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29810)
    #dbg_value(i32 %i.atb, !28805, !DIExpression(), !29813)
    #dbg_value(i32 %i.atb, !28812, !DIExpression(), !29816)
    #dbg_value(i32 %i.atb, !28820, !DIExpression(), !29819)
    #dbg_value(i32 %i.atb, !26704, !DIExpression(), !29820)
    #dbg_value(i32 %i.atb, !28829, !DIExpression(), !29823)
    #dbg_value(i32 %i.atb, !28834, !DIExpression(), !29826)
  br label %bb.hd, !dbg !31787

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2758: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2755
  %.ptr3681 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02940.0.add3677, !dbg !31782
    #dbg_value(ptr %.ptr3681, !26703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29808)
    #dbg_value(ptr undef, !2758, !DIExpression(), !23973)
    #dbg_value(i64 1, !3119, !DIExpression(), !25707)
    #dbg_value(ptr %.ptr3681, !2775, !DIExpression(), !25708)
    #dbg_value(ptr %.ptr3681, !3118, !DIExpression(), !25707)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25709)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25711)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25712)
  %.sroa.02940.0.add3676 = add nuw nsw i64 %.sroa.02940.0.idx3895, 3, !dbg !31788 ; 2 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.0.add3676), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
  %i.atc = load i8, ptr %.ptr3681, align 1, !dbg !31789, !noalias !29809, !noundef !1314
    #dbg_value(i8 %i.atc, !2800, !DIExpression(), !25713)
    #dbg_value(i8 %i.atc, !3129, !DIExpression(), !25715)
    #dbg_value(i32 %i.asy, !3126, !DIExpression(), !25715)
  %i.atd = shl nuw nsw i32 %i.asy, 6, !dbg !31790
  %i.ate = and i8 %i.atc, 63, !dbg !31791
  %i.atf = zext nneg i8 %i.ate to i32, !dbg !31791
  %i.atg = or disjoint i32 %i.atd, %i.atf, !dbg !31790 ; 2 uses
    #dbg_value(i32 %i.atg, !2801, !DIExpression(), !25716)
    #dbg_value(i32 %i.atg, !3126, !DIExpression(), !25718)
  %i.ath = shl nuw nsw i32 %i.ast, 12, !dbg !31792
  %i.ati = or disjoint i32 %i.atg, %i.ath, !dbg !31793
    #dbg_value(i32 %i.ati, !2799, !DIExpression(), !25705)
  %i.atj = icmp samesign ugt i8 %i.asq, -17, !dbg !31794
  br i1 %i.atj, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2759, label %bb.hb, !dbg !31794

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2759: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2758
  %.ptr3680 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02940.0.add3676, !dbg !31789
    #dbg_value(ptr %.ptr3680, !26703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29808)
    #dbg_value(ptr undef, !2758, !DIExpression(), !23971)
    #dbg_value(i64 1, !3119, !DIExpression(), !25720)
    #dbg_value(ptr %.ptr3680, !2775, !DIExpression(), !25721)
    #dbg_value(ptr %.ptr3680, !3118, !DIExpression(), !25720)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25722)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25724)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25725)
  %.sroa.02940.0.add3675 = add nuw nsw i64 %.sroa.02940.0.idx3895, 4, !dbg !31795
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.0.add3675), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
  %i.atk = load i8, ptr %.ptr3680, align 1, !dbg !31796, !noalias !29809, !noundef !1314
    #dbg_value(i8 %i.atk, !2802, !DIExpression(), !25726)
    #dbg_value(i8 %i.atk, !3129, !DIExpression(), !25718)
  %i.atl = shl nuw nsw i32 %i.ast, 18, !dbg !31797
  %i.atm = and i32 %i.atl, 1835008, !dbg !31797
  %i.atn = shl nuw nsw i32 %i.atg, 6, !dbg !31798
  %i.ato = and i8 %i.atk, 63, !dbg !31799
  %i.atp = zext nneg i8 %i.ato to i32, !dbg !31799
  %i.atq = or disjoint i32 %i.atn, %i.atp, !dbg !31798
  %i.atr = or disjoint i32 %i.atq, %i.atm, !dbg !31800
    #dbg_value(i32 %i.atr, !2799, !DIExpression(), !25705)
  br label %bb.hb, !dbg !31801

bb.hb:                                            ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2755, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2759, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2758
  %.sroa.02940.1.ph.idx = phi i64 [ %.sroa.02940.0.add3677, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2755 ], [ %.sroa.02940.0.add3676, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2758 ], [ %.sroa.02940.0.add3675, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2759 ] ; 2 uses
  %.sroa.4.0.i2756.ph = phi i32 [ %i.asz, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2755 ], [ %i.ati, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2758 ], [ %i.atr, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2759 ] ; 5 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.1.ph.idx), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
    #dbg_value(i32 1, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29810)
    #dbg_value(i32 %.sroa.4.0.i2756.ph, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29810)
    #dbg_value(i32 %.sroa.4.0.i2756.ph, !28805, !DIExpression(), !29813)
    #dbg_value(i32 %.sroa.4.0.i2756.ph, !28812, !DIExpression(), !29816)
    #dbg_value(i32 %.sroa.4.0.i2756.ph, !28820, !DIExpression(), !29819)
    #dbg_value(i32 %.sroa.4.0.i2756.ph, !26704, !DIExpression(), !29820)
    #dbg_value(i32 %.sroa.4.0.i2756.ph, !28829, !DIExpression(), !29823)
  %i.ats = icmp samesign ult i32 %.sroa.4.0.i2756.ph, 1114112, !dbg !31802
  tail call void @llvm.assume(i1 %i.ats), !dbg !31802
    #dbg_value(i32 %.sroa.4.0.i2756.ph, !28834, !DIExpression(), !29826)
  %i.att = icmp samesign ult i32 %.sroa.4.0.i2756.ph, 128, !dbg !31787
  br i1 %i.att, label %bb.hd, label %.thread3451, !dbg !31787

bb.hc:                                            ; preds = %bb.hg
  %i.atu = getelementptr inbounds nuw i8, ptr %i.de, i64 1, !dbg !31803
  %i.atv = add i64 %storemerge385738624516, -1, !dbg !31804
    #dbg_value(!DIArgList(ptr poison, i64 poison), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
    #dbg_value(i32 0, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29810)
    #dbg_value(i32 undef, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29810)
  store ptr %i.atu, ptr %i.ci, align 8, !dbg !31805, !captures !4048
  store i64 %i.atv, ptr %i.cj, align 8, !dbg !31805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !dbg !31806
  %.sroa.4706.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31807
  store i64 %.promoted38494515, ptr %.sroa.4706.0..sroa_idx, align 8, !dbg !31807
  %.sroa.5707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !31807
  store i64 %i.auf, ptr %.sroa.5707.0..sroa_idx, align 8, !dbg !31807
  %.sroa.6708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !31807
  store i64 %.promoted38524513, ptr %.sroa.6708.0..sroa_idx, align 8, !dbg !31807
  %.sroa.7709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !31807
  store i64 %.promoted38504514, ptr %.sroa.7709.0..sroa_idx, align 8, !dbg !31807
  %.sroa.8710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !31807
  store i64 %i.aue, ptr %.sroa.8710.0..sroa_idx, align 8, !dbg !31807
  %.sroa.9711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !31807
  store i64 %i.aug, ptr %.sroa.9711.0..sroa_idx, align 8, !dbg !31807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !31773
  br label %bb.ny, !dbg !31808

.thread3451:                                      ; preds = %bb.hb
  %i.atw = icmp samesign ult i32 %.sroa.4.0.i2756.ph, 2048, !dbg !31809
  %i.atx = icmp samesign ult i32 %.sroa.4.0.i2756.ph, 65536, !dbg !31809
  %.2449 = select i1 %i.atx, i64 3, i64 4, !dbg !31809
  %.sroa.0691.0.ph = select i1 %i.atw, i64 2, i64 %.2449, !dbg !31809
  %i.aty = add i64 %i.asp, %.sroa.0691.0.ph, !dbg !31810 ; 2 uses
  store i64 %i.aty, ptr %i.cq, align 8, !dbg !31810
  br label %bb.hf, !dbg !31811

bb.hd:                                            ; preds = %.thread3445, %bb.hb
  %.sroa.4.0.i2756.ph3449 = phi i32 [ %.sroa.4.0.i2756.ph, %bb.hb ], [ %i.atb, %.thread3445 ]
  %.sroa.02940.1.ph3448.idx = phi i64 [ %.sroa.02940.1.ph.idx, %bb.hb ], [ %.sroa.02940.0.add, %.thread3445 ] ; 2 uses
  %i.atz = add i64 %i.asp, 1, !dbg !31810         ; 3 uses
  store i64 %i.atz, ptr %i.cq, align 8, !dbg !31810
  %i.aua = icmp eq i32 %.sroa.4.0.i2756.ph3449, 10, !dbg !31811
  br i1 %i.aua, label %bb.he, label %bb.hf, !dbg !31811

bb.he:                                            ; preds = %bb.hd
  %i.aub = add i64 %i.asn, 1, !dbg !31812         ; 2 uses
  store i64 %i.aub, ptr %i.co, align 8, !dbg !31812
  br label %bb.hg, !dbg !31813

bb.hf:                                            ; preds = %.thread3451, %bb.hd
  %i.auc = phi i64 [ %i.aty, %.thread3451 ], [ %i.atz, %bb.hd ]
  %.sroa.02940.1.ph34483456.idx = phi i64 [ %.sroa.02940.1.ph.idx, %.thread3451 ], [ %.sroa.02940.1.ph3448.idx, %bb.hd ]
  %i.aud = add i64 %i.aso, 1, !dbg !31814
  br label %bb.hg, !dbg !31814

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aue = phi i64 [ %i.asn, %bb.hf ], [ %i.aub, %bb.he ] ; 2 uses
  %i.auf = phi i64 [ %i.auc, %bb.hf ], [ %i.atz, %bb.he ] ; 2 uses
  %.sroa.02940.1.ph34483455.idx = phi i64 [ %.sroa.02940.1.ph34483456.idx, %bb.hf ], [ %.sroa.02940.1.ph3448.idx, %bb.he ] ; 2 uses
  %i.aug = phi i64 [ %i.aud, %bb.hf ], [ 0, %bb.he ], !dbg !29820 ; 3 uses
  store i64 %i.aug, ptr %i.cp, align 8, !dbg !29820
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.1.ph34483455.idx), !26703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29808)
    #dbg_value(ptr undef, !26744, !DIExpression(), !26826)
    #dbg_value(ptr undef, !2793, !DIExpression(), !23978)
    #dbg_value(i32 2, !3124, !DIExpression(), !25693)
    #dbg_value(ptr undef, !2758, !DIExpression(), !23977)
    #dbg_value(i64 1, !3119, !DIExpression(), !25688)
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.1.ph34483455.idx), !2775, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25686)
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02940.1.ph34483455.idx), !3118, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25688)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25729)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25730)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25731)
  %i.auh = icmp eq i64 %.sroa.02940.1.ph34483455.idx, 1, !dbg !31775
  br i1 %i.auh, label %bb.hc, label %bb.ha, !dbg !31815

bb.hh:                                            ; preds = %bb.gt
    #dbg_value(ptr poison, !27196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29737)
    #dbg_value(ptr poison, !27209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29740)
    #dbg_value(ptr undef, !26905, !DIExpression(), !26957)
    #dbg_value(ptr undef, !26912, !DIExpression(), !26956)
    #dbg_value(ptr poison, !26906, !DIExpression(), !29828)
    #dbg_value(ptr poison, !26913, !DIExpression(), !29829)
  %i.aui = load ptr, ptr %i.ci, align 8, !dbg !26951, !nonnull !1314, !noundef !1314 ; 7 uses
    #dbg_value(ptr %i.aui, !27209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29740)
    #dbg_value(ptr %i.aui, !27196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29737)
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 %i.ars, !dbg !31816 ; 2 uses
    #dbg_value(ptr undef, !26924, !DIExpression(), !26955)
    #dbg_value(ptr undef, !26890, !DIExpression(), !26954)
    #dbg_value(ptr undef, !26925, !DIExpression(DW_OP_deref), !29830)
    #dbg_value(ptr undef, !26893, !DIExpression(DW_OP_deref), !29831)
    #dbg_value(ptr %i.auj, !28770, !DIExpression(), !29834)
    #dbg_value(ptr poison, !28774, !DIExpression(), !29834)
  %i.auk = load i8, ptr %i.auj, align 1, !dbg !31817, !noundef !1314
  %.not3674 = icmp eq i8 %i.auk, 39, !dbg !31817
  br i1 %.not3674, label %bb.hi, label %.critedge2451, !dbg !26951

.critedge2451:                                    ; preds = %bb.gt, %bb.hh
  store i8 1, ptr %i.ck, align 8, !dbg !31818
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4496), !dbg !31819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !31820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !31821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !31822
    #dbg_value(ptr @42, !26582, !DIExpression(), !29835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !31823
  store ptr @42, ptr %i.bs, align 8, !dbg !31823
  %.sroa.4914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !31823
  store ptr @_RNvXsk_NtCsf3Ta7LF998c_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.4914.0..sroa_idx, align 8, !dbg !31823
    #dbg_value(ptr @25, !28881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29837)
    #dbg_value(ptr %i.bs, !28881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29837)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25733)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25733)
    #dbg_value(ptr poison, !3324, !DIExpression(), !25733)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !25734)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25736)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bt, ptr noundef nonnull @25, ptr noundef nonnull %i.bs), !dbg !31824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !31822
    #dbg_value(ptr %i.bt, !27509, !DIExpression(), !29838)
    #dbg_value(ptr %i.bt, !27511, !DIExpression(), !29839)
    #dbg_value(ptr %i.bt, !28888, !DIExpression(), !29842)
    #dbg_value(ptr %i.bt, !28892, !DIExpression(), !29845)
  %i.aul = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !31825
  %i.aum = load ptr, ptr %i.aul, align 8, !dbg !31825, !nonnull !1314, !noundef !1314
  %i.aun = getelementptr inbounds nuw i8, ptr %i.bt, i64 16, !dbg !31826
  %i.auo = load i64, ptr %i.aun, align 8, !dbg !31826, !noundef !1314 ; 5 uses
    #dbg_value(ptr %i.aum, !27513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29856)
    #dbg_value(ptr %i.aum, !27345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29857)
    #dbg_value(ptr %i.aum, !27350, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29858)
    #dbg_value(i64 %i.auo, !27513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29856)
    #dbg_value(i64 %i.auo, !27345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29857)
    #dbg_value(i64 %i.auo, !27350, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29858)
    #dbg_value(ptr %i.aum, !27361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29859)
    #dbg_value(ptr %i.aum, !27363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29860)
    #dbg_value(ptr %i.aum, !27355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29861)
    #dbg_value(ptr %i.aum, !27366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29862)
    #dbg_value(i64 %i.auo, !27361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29859)
    #dbg_value(i64 %i.auo, !27363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29860)
    #dbg_value(i64 %i.auo, !27355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29861)
    #dbg_value(i64 %i.auo, !27366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29862)
    #dbg_value(i64 %i.auo, !27371, !DIExpression(), !29863)
    #dbg_value(i64 %i.auo, !27399, !DIExpression(), !29864)
    #dbg_value(i64 %i.auo, !27404, !DIExpression(), !29865)
    #dbg_value(i64 %i.auo, !28916, !DIExpression(), !29867)
    #dbg_value(i64 %i.auo, !28922, !DIExpression(), !29870)
    #dbg_value(i64 %i.auo, !27424, !DIExpression(), !29871)
    #dbg_value(i64 %i.auo, !27465, !DIExpression(), !27820)
    #dbg_value(i64 1, !27425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29871)
    #dbg_value(i64 1, !27466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27820)
    #dbg_value(i64 1, !27425, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29871)
    #dbg_value(i64 1, !27466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !31827
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.auo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.iq unwind label %bb.ip, !dbg !31827

bb.hi:                                            ; preds = %bb.hh
    #dbg_value(ptr %i.aui, !27220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29874)
    #dbg_value(i64 %i.arr, !27220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29874)
  %i.aup = add i64 %i.arq, 2, !dbg !31828         ; 7 uses
    #dbg_value(i64 %i.aup, !27225, !DIExpression(), !29874)
    #dbg_value(ptr %i.aui, !28779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25738)
    #dbg_value(ptr %i.aui, !28793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25740)
    #dbg_value(i64 %i.arr, !28779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25738)
    #dbg_value(i64 %i.arr, !28793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25740)
    #dbg_value(i64 %i.aup, !28791, !DIExpression(), !25738)
    #dbg_value(i64 %i.aup, !28794, !DIExpression(), !25740)
  %.not.i2761 = icmp ult i64 %i.aup, %i.arr, !dbg !31829
  br i1 %.not.i2761, label %bb.hj, label %.split6.i2762, !dbg !31829

.split6.i2762:                                    ; preds = %bb.hi
  %i.auq = icmp eq i64 %i.aup, %i.arr, !dbg !31830
  br i1 %i.auq, label %.lr.ph3889, label %bb.hk, !dbg !31831

bb.hj:                                            ; preds = %bb.hi
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aui, i64 %i.aup, !dbg !31832
  %i.aus = load i8, ptr %i.aur, align 1, !dbg !31832, !alias.scope !29875, !noundef !1314
    #dbg_value(i8 %i.aus, !28796, !DIExpression(), !25744)
  %i.aut = icmp sgt i8 %i.aus, -65, !dbg !31833
  br i1 %i.aut, label %.lr.ph3889, label %bb.hk, !dbg !31831

.lr.ph3889:                                       ; preds = %bb.hj, %.split6.i2762
    #dbg_value(ptr %i.aui, !28846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25746)
    #dbg_value(i64 %i.arr, !28846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25746)
    #dbg_value(i64 %i.aup, !28847, !DIExpression(), !25746)
    #dbg_value(i64 %i.aup, !28840, !DIExpression(), !25748)
    #dbg_value(i64 %i.arr, !28848, !DIExpression(), !25749)
    #dbg_value(ptr %i.aui, !28849, !DIExpression(), !25750)
    #dbg_value(ptr %i.aui, !28839, !DIExpression(), !25748)
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aui, i64 %i.aup, !dbg !31834 ; 5 uses
  %i.auv = sub i64 %i.arr, %i.aup, !dbg !31835
    #dbg_value(ptr %i.aui, !26588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29876)
    #dbg_value(ptr %i.aui, !26589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29877)
    #dbg_value(ptr %i.aui, !28943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29880)
    #dbg_value(ptr %i.aui, !27831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27834)
    #dbg_value(ptr %i.aui, !27838, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27842)
    #dbg_value(ptr %i.aui, !27847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29881)
    #dbg_value(ptr %i.aui, !27586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29882)
    #dbg_value(ptr %i.aui, !27593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27867)
    #dbg_value(i64 %i.aup, !26588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29876)
    #dbg_value(i64 %i.aup, !26589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29877)
    #dbg_value(i64 %i.aup, !28943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29880)
    #dbg_value(i64 %i.aup, !27831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27834)
    #dbg_value(i64 %i.aup, !27838, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27842)
    #dbg_value(i64 %i.aup, !27847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29881)
    #dbg_value(i64 %i.aup, !27586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29882)
    #dbg_value(i64 %i.aup, !27593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27867)
    #dbg_value(ptr %i.auu, !26590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29877)
    #dbg_value(i64 %i.auv, !26590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29877)
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser12parse_kwargs:bb.a
  call void @llvm.assume(i1 %i.et), !dbg !37441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !37442
    #dbg_value(i64 %i.eq, !37235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37238)
    #dbg_value(i64 %i.eq, !37082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37239)
    #dbg_value(ptr %i.es, !37235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37238)
    #dbg_value(ptr %i.es, !37082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37239)
    #dbg_value(i64 0, !37235, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37238)
    #dbg_value(i64 0, !37082, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37239)
  %.not305 = icmp eq i64 %.sroa.861.sroa.8.0416, 0, !dbg !37443
  br i1 %.not305, label %bb.bu, label %bb.bv, !dbg !37443

bb.bu:                                            ; preds = %bb.bv, %bb.bt
    #dbg_value(i64 %.sroa.861.sroa.8.0416, !37082, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37239)
    #dbg_value(i64 %.sroa.861.sroa.8.0416, !37235, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37238)
  store i64 %i.eq, ptr %i.n, align 8, !dbg !37444
  store ptr %i.es, ptr %.sroa.4207.0..sroa_idx, align 8, !dbg !37444
  store i64 %.sroa.861.sroa.8.0416, ptr %.sroa.6208.0..sroa_idx, align 8, !dbg !37444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !37445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 64, i1 false), !dbg !37445
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE6insertB1y_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.m)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !37446

bb.bv:                                            ; preds = %bb.bt
    #dbg_value(ptr %.sroa.861.sroa.6.0417, !37216, !DIExpression(), !37220)
    #dbg_value(ptr %.sroa.861.sroa.6.0417, !37222, !DIExpression(), !37226)
    #dbg_value(ptr %i.es, !37217, !DIExpression(), !37220)
    #dbg_value(ptr %i.es, !37223, !DIExpression(), !37226)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.es, ptr nonnull align 1 %.sroa.861.sroa.6.0417, i64 %.sroa.861.sroa.8.0416, i1 false), !dbg !37447
    #dbg_value(i64 %.sroa.861.sroa.8.0416, !37235, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37238)
    #dbg_value(i64 %.sroa.861.sroa.8.0416, !37082, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !37239)
  br label %bb.bu, !dbg !37448

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !37449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !37449
    #dbg_value(ptr %i.o, !3786, !DIExpression(), !36791)
  %i.eu = load i64, ptr %i.o, align 8, !dbg !37450, !range !3792, !alias.scope !37240, !noundef !1314
  %i.ev = icmp eq i64 %i.eu, -1, !dbg !37450
  br i1 %i.ev, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB13_.exit, label %bb.bx, !dbg !37450

bb.bx:                                            ; preds = %bb.bw
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB13_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !37450, !inline_history !875

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB13_.exit: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !37451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !37404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !37404
  %i.ew = load i8, ptr %i.bb, align 8, !dbg !37274, !range !3052, !noundef !1314
  %cond = icmp eq i8 %i.ew, 39, !dbg !37275
  br i1 %cond, label %._crit_edge, label %bb.n, !dbg !37275

bb.by:                                            ; preds = %bb.bs
  unreachable

.loopexit.split-lp433.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bq, %bb.bs
  %lpad.loopexit.split-lp539 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bi) #25
          to label %.body unwind label %bb.l, !dbg !37452

bb.bz:                                            ; preds = %bb.at, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !37349
  br label %bb.z, !dbg !37256

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1C_.exit339: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !37321
    #dbg_value(ptr %i.am, !3794, !DIExpression(), !36795)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am), !dbg !37453
  br label %bb.aj, !dbg !37322

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn307407, !dbg !37273

.thread:                                          ; preds = %.body, %.thread408
  %.pn307407 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread408 ], [ %.pn, %.body ]
    #dbg_value(ptr %i.am, !3794, !DIExpression(), !36797)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit unwind label %bb.l, !dbg !37454
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(488) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !37458 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 11 uses
    #dbg_declare(ptr poison, !37495, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !37500)
    #dbg_declare(ptr poison, !37493, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !37501)
  %.sroa.6 = alloca [79 x i8], align 1            ; 3 uses
  %.sroa.8 = alloca [79 x i8], align 1            ; 6 uses
    #dbg_declare(ptr %.sroa.8, !37496, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !37502)
    #dbg_value(ptr %1, !37490, !DIExpression(), !37503)
    #dbg_declare(ptr poison, !37491, !DIExpression(), !37504)
    #dbg_declare(ptr poison, !37505, !DIExpression(), !37513)
    #dbg_declare(ptr poison, !37497, !DIExpression(), !37514)
    #dbg_declare(ptr poison, !37508, !DIExpression(), !37515)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !37499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37516), !dbg !37522
    #dbg_value(ptr %1, !2997, !DIExpression(), !37467)
    #dbg_declare(ptr %i.b, !3001, !DIExpression(), !37468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !37523, !noalias !37517
    #dbg_value(ptr %1, !3007, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !37471)
    #dbg_value(ptr %1, !3013, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !37473)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !37524 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !37524, !noalias !37518
  store i8 -2, ptr %i.c, align 8, !dbg !37525, !alias.scope !37516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !37526, !noalias !37517
    #dbg_value(ptr %1, !3020, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !37475)
    #dbg_value(ptr %1, !3027, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !37477)
    #dbg_value(ptr %1, !3032, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !37479)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !37527 ; 2 uses
  %.sroa.08.0.copyload.i = load i8, ptr %i.d, align 8, !dbg !37527, !alias.scope !37516 ; 2 uses
  store i8 -3, ptr %i.d, align 8, !dbg !37528, !alias.scope !37516
  %.not.i = icmp eq i8 %.sroa.08.0.copyload.i, -3, !dbg !37529
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !37530

bb.b:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 177, !dbg !37527
  store i8 %.sroa.08.0.copyload.i, ptr %i.a, align 8, !dbg !37531, !noalias !37517
  %.sroa.510.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !37531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.510.0..sroa_idx11.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.510.0..sroa_idx.i, i64 79, i1 false), !dbg !37531, !noalias !37518
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1q_5utils4SpanENtNtB1q_6errors5ErrorEEEB1q_.exit.i, !dbg !37532

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !3042, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !37481)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !37533
  %i.f = load ptr, ptr %i.e, align 8, !dbg !37533, !alias.scope !37516, !nonnull !1314, !noundef !1314
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264, !dbg !37533
  %i.h = load ptr, ptr %i.g, align 8, !dbg !37533, !alias.scope !37516, !nonnull !1314, !align !3051, !noundef !1314
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !37533
  %i.j = load ptr, ptr %i.i, align 8, !dbg !37533, !invariant.load !1314, !noalias !37517, !nonnull !1314
  invoke void %i.j(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1q_5utils4SpanENtNtB1q_6errors5ErrorEEEB1q_.exit.i unwind label %bb.d, !dbg !37534, !noalias !37517

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1q_5utils4SpanENtNtB1q_6errors5ErrorEEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #25
          to label %bb.i unwind label %bb.h, !dbg !37535, !noalias !37517

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1q_5utils4SpanENtNtB1q_6errors5ErrorEEEB1q_.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !37536, !noalias !37518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !37537, !noalias !37517
  %i.l = load i8, ptr %i.b, align 8, !dbg !37538, !range !3052, !noalias !37517, !noundef !1314 ; 3 uses
  %switch.i = icmp ugt i8 %i.l, -3, !dbg !37539
  br i1 %switch.i, label %bb.e, label %bb.f, !dbg !37539

bb.e:                                             ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1q_5utils4SpanENtNtB1q_6errors5ErrorEEEB1q_.exit.i
    #dbg_value(i8 %i.l, !3054, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37483)
  switch i8 %i.l, label %bb.g [
    i8 -2, label %bb.k
    i8 -1, label %bb.j
  ], !dbg !37540

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1q_5utils4SpanENtNtB1q_6errors5ErrorEEEB1q_.exit.i
    #dbg_value(ptr %i.b, !3002, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37484)
    #dbg_value(ptr %i.b, !3063, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !37486)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !37541
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !37541
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !37541
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !37542
  %i.q = load <2 x i64>, ptr %i.m, align 8, !dbg !37541, !noalias !37517
  store <2 x i64> %i.q, ptr %i.p, align 8, !dbg !37542, !alias.scope !37516
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !37542
  %i.r = load <2 x i64>, ptr %i.n, align 8, !dbg !37541, !noalias !37517
  store <2 x i64> %i.r, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !37542, !alias.scope !37516
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !37542
  %i.s = load <2 x i64>, ptr %i.o, align 8, !dbg !37541, !noalias !37517
  store <2 x i64> %i.s, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !37542, !alias.scope !37516
  br label %bb.e, !dbg !37543

bb.g:                                             ; preds = %bb.e
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !37544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.64.0..sroa_idx.i, i64 79, i1 false), !dbg !37545, !noalias !37516
    #dbg_value(i8 %i.l, !37496, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37519)
  br label %bb.k, !dbg !37546

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !37547, !noalias !37517
  unreachable, !dbg !37547

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k, !dbg !37547

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !37548
  %.sroa.8.8..sroa_idx10 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 7, !dbg !37548 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %.sroa.8.8..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !dbg !37548, !noalias !37516
    #dbg_value(i8 -2, !37496, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37519)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37535, !noalias !37517
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7, !dbg !37549 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.8.8..sroa_idx10, i64 72, i1 false), !dbg !37549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !37550
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !37551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.6.8..sroa_idx, i64 72, i1 false), !dbg !37550
  br label %bb.n, !dbg !37552

bb.k:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.0.ph = phi i8 [ -1, %bb.e ], [ %i.l, %bb.g ] ; 3 uses
    #dbg_value(i8 %.sroa.0.0.ph, !37496, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37519)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37535, !noalias !37517
    #dbg_value(i8 %.sroa.0.0.ph, !37495, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37520)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.8, i64 79, i1 false), !dbg !37553
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !37550
  %.not = icmp eq i8 %.sroa.0.0.ph, -1, !dbg !37499
  br i1 %.not, label %bb.m, label %bb.l, !dbg !37554

bb.l:                                             ; preds = %bb.k
    #dbg_value(i8 %.sroa.0.0.ph, !37493, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37521)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !37555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, i64 79, i1 false), !dbg !37556
  br label %bb.n, !dbg !37557

bb.m:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !37558
  call fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser3eoi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1), !dbg !37559
  br label %bb.n, !dbg !37560

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %storemerge = phi i8 [ -1, %bb.j ], [ %.sroa.0.0.ph, %bb.m ], [ %.sroa.0.0.ph, %bb.l ], !dbg !37503
  store i8 %storemerge, ptr %0, align 8, !dbg !37503
  ret void, !dbg !37552
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser14parse_for_loop(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !37623 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !37940, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !37963)
    #dbg_declare(ptr poison, !37940, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !37963)
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !37954, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !37966)
    #dbg_declare(ptr poison, !37954, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !37966)
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !37951, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !37969)
  %i.h = alloca [72 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !37950, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !37972)
    #dbg_declare(ptr poison, !37949, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !37975)
  %i.i = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !37948, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !37978)
  %i.j = alloca [80 x i8], align 8                ; 6 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !37945, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !37981)
    #dbg_declare(ptr poison, !37944, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !37984)
  %i.l = alloca [24 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !37938, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !37985)
  %i.m = alloca [80 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !37986)
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !37986)
    #dbg_declare(ptr poison, !37935, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !37987)
    #dbg_declare(ptr poison, !37935, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !37987)
    #dbg_declare(ptr poison, !37934, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !37988)
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.7225 = alloca [79 x i8], align 1         ; 5 uses
    #dbg_declare(ptr %.sroa.7225, !37989, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !38014)
  %.sroa.6220 = alloca [79 x i8], align 1         ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !37921, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !38015)
  %i.s = alloca [80 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !38016)
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !38016)
    #dbg_declare(ptr poison, !37917, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !38017)
    #dbg_declare(ptr poison, !37917, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !38017)
  %i.u = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !37915, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !38018)
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [72 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.7186 = alloca [79 x i8], align 1         ; 5 uses
    #dbg_declare(ptr %.sroa.7186, !37989, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !38020)
  %.sroa.6181 = alloca [79 x i8], align 1         ; 4 uses
  %i.z = alloca [80 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38021)
    #dbg_declare(ptr poison, !37901, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !38022)
  %i.aa = alloca [64 x i8], align 8               ; 6 uses
    #dbg_declare(ptr poison, !37899, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38023)
    #dbg_declare(ptr poison, !37899, !DIExpression(DW_OP_LLVM_fragment, 256, 384), !38023)
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !38024)
    #dbg_declare(ptr poison, !37898, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !38025)
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 2 uses
  %i.ad = alloca [72 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 10 uses
  %.sroa.4133 = alloca [7 x i8], align 1          ; 3 uses
  %.sroa.7128.sroa.10.sroa.8 = alloca [48 x i8], align 8 ; 4 uses
    #dbg_declare(ptr poison, !37887, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !38026)
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !38027)
  %i.af = alloca [80 x i8], align 8               ; 13 uses
  %.sroa.7123.sroa.11 = alloca [48 x i8], align 8 ; 6 uses
    #dbg_declare(ptr poison, !37989, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38029)
    #dbg_declare(ptr %.sroa.7123.sroa.11, !37989, !DIExpression(DW_OP_LLVM_fragment, 256, 384), !38029)
  %i.ag = alloca [80 x i8], align 8               ; 10 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [72 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38030)
    #dbg_declare(ptr poison, !37881, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38031)
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 2 uses
  %i.am = alloca [72 x i8], align 8               ; 10 uses
  %i.an = alloca [32 x i8], align 8               ; 10 uses
    #dbg_value(ptr poison, !3222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37665)
    #dbg_value(ptr %i.j, !3222, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 56), !37665)
  %.sroa.891.sroa.0 = alloca [7 x i8], align 1    ; 6 uses
    #dbg_declare(ptr %.sroa.891.sroa.0, !38033, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38040)
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !37870, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !38041)
  %i.ap = alloca [80 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 17 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38042)
    #dbg_declare(ptr poison, !37862, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38043)
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 2 uses
  %i.av = alloca [72 x i8], align 8               ; 10 uses
  %i.aw = alloca [32 x i8], align 8               ; 9 uses
    #dbg_declare(ptr poison, !37943, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !38044)
    #dbg_declare(ptr poison, !37853, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !38045)
  %i.ax = alloca [80 x i8], align 8               ; 11 uses
  %.sroa.636.sroa.10.sroa.8 = alloca [48 x i8], align 8 ; 6 uses
  %.sroa.6804 = alloca [7 x i8], align 1          ; 6 uses
    #dbg_value(ptr poison, !3222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !37672)
    #dbg_value(ptr %.sroa.6804, !3222, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !37672)
  %.sroa.831.sroa.0 = alloca [7 x i8], align 1    ; 6 uses
    #dbg_declare(ptr %.sroa.831.sroa.0, !38033, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !38047)
  %i.ay = alloca [16 x i8], align 8               ; 10 uses
    #dbg_value(ptr %1, !37851, !DIExpression(), !38048)
    #dbg_declare(ptr %i.ay, !37852, !DIExpression(), !38049)
    #dbg_declare(ptr %i.ax, !37989, !DIExpression(), !38051)
    #dbg_declare(ptr %i.aw, !37857, !DIExpression(), !38052)
    #dbg_declare(ptr %i.aq, !37868, !DIExpression(), !38053)
    #dbg_declare(ptr %i.k, !37989, !DIExpression(), !38055)
    #dbg_declare(ptr poison, !37869, !DIExpression(), !38056)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38059)
    #dbg_declare(ptr %i.ao, !37871, !DIExpression(), !38060)
    #dbg_declare(ptr %i.j, !37989, !DIExpression(), !38063)
    #dbg_declare(ptr poison, !37872, !DIExpression(), !38064)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38067)
    #dbg_declare(ptr %i.an, !37876, !DIExpression(), !38068)
    #dbg_declare(ptr %i.af, !37989, !DIExpression(), !38070)
    #dbg_declare(ptr %i.ae, !37893, !DIExpression(), !38071)
    #dbg_declare(ptr %i.aa, !37900, !DIExpression(), !38072)
    #dbg_declare(ptr %i.h, !38073, !DIExpression(), !38078)
    #dbg_declare(ptr %i.g, !37989, !DIExpression(), !38081)
    #dbg_declare(ptr poison, !37903, !DIExpression(), !38082)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38085)
    #dbg_declare(ptr %i.y, !37909, !DIExpression(), !38086)
    #dbg_declare(ptr poison, !37914, !DIExpression(), !38087)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38090)
    #dbg_declare(ptr %i.u, !37916, !DIExpression(), !38091)
    #dbg_declare(ptr %i.f, !38092, !DIExpression(), !38099)
    #dbg_declare(ptr %i.t, !37919, !DIExpression(), !38100)
    #dbg_declare(ptr %i.e, !37989, !DIExpression(), !38102)
    #dbg_declare(ptr poison, !37920, !DIExpression(), !38103)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38106)
    #dbg_declare(ptr %i.d, !37989, !DIExpression(), !38109)
    #dbg_declare(ptr poison, !37922, !DIExpression(), !38110)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38113)
    #dbg_declare(ptr %i.q, !37928, !DIExpression(), !38114)
    #dbg_declare(ptr poison, !37933, !DIExpression(), !38115)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38118)
    #dbg_declare(ptr %i.c, !38092, !DIExpression(), !38120)
    #dbg_declare(ptr %i.b, !37989, !DIExpression(), !38122)
    #dbg_declare(ptr poison, !37937, !DIExpression(), !38123)
    #dbg_declare(ptr poison, !37943, !DIExpression(), !38126)
    #dbg_declare(ptr poison, !37946, !DIExpression(), !38127)
    #dbg_declare(ptr poison, !37947, !DIExpression(), !38128)
    #dbg_declare(ptr poison, !37952, !DIExpression(), !38129)
    #dbg_declare(ptr poison, !38003, !DIExpression(), !38130)
    #dbg_declare(ptr poison, !37953, !DIExpression(), !38131)
    #dbg_declare(ptr poison, !37955, !DIExpression(), !38132)
    #dbg_declare(ptr poison, !37956, !DIExpression(), !38133)
    #dbg_declare(ptr poison, !38009, !DIExpression(), !38134)
    #dbg_declare(ptr poison, !37957, !DIExpression(), !38135)
    #dbg_declare(ptr poison, !37958, !DIExpression(), !38136)
    #dbg_declare(ptr poison, !38137, !DIExpression(), !38147)
    #dbg_declare(ptr poison, !38162, !DIExpression(), !38170)
    #dbg_declare(ptr poison, !38171, !DIExpression(), !38175)
    #dbg_declare(ptr poison, !38176, !DIExpression(), !38180)
    #dbg_value(i64 1, !38181, !DIExpression(), !38188)
    #dbg_declare(ptr poison, !38196, !DIExpression(), !38205)
    #dbg_value(i64 0, !38206, !DIExpression(), !38212)
    #dbg_value(i64 1, !38181, !DIExpression(), !38214)
    #dbg_value(ptr @86, !38215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38219)
    #dbg_value(i64 2, !38215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38219)
    #dbg_value(i64 72, !38181, !DIExpression(), !38226)
    #dbg_value(ptr poison, !38215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38234)
    #dbg_value(i64 4, !38215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38234)
    #dbg_declare(ptr poison, !38137, !DIExpression(), !38248)
    #dbg_declare(ptr poison, !38162, !DIExpression(), !38251)
    #dbg_declare(ptr poison, !38171, !DIExpression(), !38254)
    #dbg_declare(ptr poison, !38176, !DIExpression(), !38257)
    #dbg_value(i64 1, !38181, !DIExpression(), !38266)
    #dbg_declare(ptr poison, !38196, !DIExpression(), !38269)
    #dbg_value(i64 0, !38206, !DIExpression(), !38272)
    #dbg_value(i64 1, !38181, !DIExpression(), !38275)
    #dbg_value(ptr %1, !38276, !DIExpression(), !38280)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !38477 ; 8 uses
    #dbg_value(ptr %i.az, !4145, !DIExpression(), !37713)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !38478
  %i.bb = load <2 x i64>, ptr %i.ba, align 8, !dbg !38478, !alias.scope !38281
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !38479
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !dbg !38479, !alias.scope !38281
  %i.be = load <2 x i64>, ptr %i.az, align 8, !dbg !38480, !alias.scope !38281
    #dbg_value(i64 0, !38277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38280)
    #dbg_value(i64 0, !4751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38282)
    #dbg_value(i64 0, !4760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38283)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38283)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38282)
    #dbg_value(i64 poison, !38277, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38280)
end_hunk_1
