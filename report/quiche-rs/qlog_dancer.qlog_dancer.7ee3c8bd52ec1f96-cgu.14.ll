Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.14?download=true
inline.NumInlined: 1276
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtCsaTqK2fWTXJW_11qlog_dancer9datastoreNtB5_9Datastore20consume_netlog_event:bb.a

bb.fq:                                            ; preds = %bb.fc
    #dbg_value(ptr %3, !42293, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !41139)
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 1928, !dbg !45375
  %i.asa = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !45376
  %i.asb = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub15HttpRequestStubE7get_mutyEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.arz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.asa), !dbg !45377, !noalias !43939 ; 6 uses
  %.not306.i = icmp eq ptr %i.asb, null, !dbg !45375
  br i1 %.not306.i, label %_RNvMs4_NtCsaTqK2fWTXJW_11qlog_dancer9datastoreNtB5_9Datastore19consume_netlog_quic.exit, label %bb.ht, !dbg !45378

bb.fr:                                            ; preds = %bb.fc
    #dbg_value(ptr %3, !42290, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !41140)
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 1928, !dbg !45379
  %i.asd = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !45380
  %i.ase = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub15HttpRequestStubE7get_mutyEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.asc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.asd), !dbg !45381, !noalias !43939 ; 8 uses
  %.not304.i = icmp eq ptr %i.ase, null, !dbg !45379
  br i1 %.not304.i, label %_RNvMs4_NtCsaTqK2fWTXJW_11qlog_dancer9datastoreNtB5_9Datastore19consume_netlog_quic.exit, label %bb.ic, !dbg !45382

bb.fs:                                            ; preds = %bb.fc
    #dbg_value(ptr %3, !42287, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !41141)
  %i.asf = getelementptr inbounds nuw i8, ptr %0, i64 1928, !dbg !45383
  %i.asg = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !45384
  %i.ash = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub15HttpRequestStubE7get_mutyEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.asf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.asg), !dbg !45385, !noalias !43939 ; 8 uses
  %.not302.i = icmp eq ptr %i.ash, null, !dbg !45383
  br i1 %.not302.i, label %_RNvMs4_NtCsaTqK2fWTXJW_11qlog_dancer9datastoreNtB5_9Datastore19consume_netlog_quic.exit, label %bb.il, !dbg !45386

bb.ft:                                            ; preds = %bb.fc
    #dbg_value(ptr %3, !42296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !41142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !45387, !noalias !44057
  %i.asi = getelementptr inbounds nuw i8, ptr %0, i64 2080, !dbg !45387
  %i.asj = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !45388
  %i.ask = load i64, ptr %i.asj, align 8, !dbg !45388, !alias.scope !43938, !noundef !3838
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapxINtNtBb_3vec3VecdEE5entryCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.asi, i64 noundef %i.ask), !dbg !45389, !noalias !44058
  %i.asl = call noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryxINtNtBd_3vec3VecdEE10or_defaultCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.n), !dbg !45390, !noalias !44058 ; 4 uses
    #dbg_value(ptr %i.asl, !42297, !DIExpression(), !41143)
    #dbg_value(ptr %i.asl, !44054, !DIExpression(), !40921)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !45391, !noalias !44057
    #dbg_value(ptr %i.asl, !14394, !DIExpression(), !41145)
    #dbg_value(ptr %i.asl, !14404, !DIExpression(), !41147)
    #dbg_value(double %i.ans, !14399, !DIExpression(), !41145)
    #dbg_value(i64 8, !14409, !DIExpression(), !41150)
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 16, !dbg !45392 ; 2 uses
  %i.asn = load i64, ptr %i.asm, align 8, !dbg !45392, !alias.scope !44210, !noalias !44058, !noundef !3838 ; 3 uses
    #dbg_value(i64 %i.asn, !14400, !DIExpression(), !41153)
    #dbg_value(i64 %i.asn, !14418, !DIExpression(), !41155)
    #dbg_value(ptr %i.asl, !14416, !DIExpression(), !41156)
  %i.aso = load i64, ptr %i.asl, align 8, !dbg !45393, !range !10292, !alias.scope !44210, !noalias !44058, !noundef !3838
  %i.asp = icmp eq i64 %i.asn, %i.aso, !dbg !45394
  br i1 %i.asp, label %bb.fu, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecdE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !45394

bb.fu:                                            ; preds = %bb.ft
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCsecAUcwFyiC_11color_quant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.asl) #30, !dbg !45395, !noalias !44058
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecdE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !45396

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecdE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.fu, %bb.ft
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asl, i64 8, !dbg !45397
  %i.asr = load ptr, ptr %i.asq, align 8, !dbg !45397, !alias.scope !44210, !noalias !44058, !nonnull !3838, !noundef !3838
    #dbg_value(ptr %i.asr, !14421, !DIExpression(), !41155)
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %i.asn, !dbg !45398
    #dbg_value(ptr %i.ass, !14402, !DIExpression(), !41160)
    #dbg_value(ptr %i.ass, !14436, !DIExpression(), !41162)
    #dbg_value(double %i.ans, !14439, !DIExpression(), !41162)
  store double %i.ans, ptr %i.ass, align 8, !dbg !45399, !noalias !44058
  %i.ast = add i64 %i.asn, 1, !dbg !45400
  store i64 %i.ast, ptr %i.asm, align 8, !dbg !45400, !alias.scope !44210, !noalias !44058
  br label %_RNvMs4_NtCsaTqK2fWTXJW_11qlog_dancer9datastoreNtB5_9Datastore19consume_netlog_quic.exit, !dbg !45401

bb.fv:                                            ; preds = %bb.fc
    #dbg_value(ptr %3, !42299, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !41163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !45402, !noalias !44057
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 2104, !dbg !45402
  %i.asv = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !45403
  %i.asw = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !45403
  %i.asx = load i64, ptr %i.asw, align 8, !dbg !45403, !alias.scope !43938, !noundef !3838
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapxINtNtBb_3vec3VecTdyEEE5entryCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.asu, i64 noundef %i.asx), !dbg !45404, !noalias !44058
  %i.asy = call noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryxINtNtBd_3vec3VecTdyEEE10or_defaultCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m), !dbg !45405, !noalias !44058 ; 4 uses
    #dbg_value(ptr %i.asy, !42300, !DIExpression(), !41164)
    #dbg_value(ptr %i.asy, !44211, !DIExpression(), !41167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !45406, !noalias !44057
  %i.asz = load i64, ptr %i.asv, align 8, !dbg !45407, !alias.scope !43938, !noundef !3838
    #dbg_value(double %i.ans, !44212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41167)
    #dbg_value(i64 %i.asz, !44212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41167)
    #dbg_value(ptr %i.asy, !14316, !DIExpression(), !41169)
    #dbg_value(ptr %i.asy, !14325, !DIExpression(), !41171)
    #dbg_value(double %i.ans, !14321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41169)
    #dbg_value(i64 %i.asz, !14321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41169)
    #dbg_value(i64 16, !14330, !DIExpression(), !41174)
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asy, i64 16, !dbg !45408 ; 2 uses
  %i.atb = load i64, ptr %i.ata, align 8, !dbg !45408, !alias.scope !44214, !noalias !44058, !noundef !3838 ; 3 uses
    #dbg_value(i64 %i.atb, !14322, !DIExpression(), !41177)
    #dbg_value(i64 %i.atb, !14339, !DIExpression(), !41179)
    #dbg_value(ptr %i.asy, !14337, !DIExpression(), !41180)
  %i.atc = load i64, ptr %i.asy, align 8, !dbg !45409, !range !10292, !alias.scope !44214, !noalias !44058, !noundef !3838
  %i.atd = icmp eq i64 %i.atb, %i.atc, !dbg !45410
  br i1 %i.atd, label %bb.fw, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit.i34, !dbg !45410

bb.fw:                                            ; preds = %bb.fv
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdyEE8grow_oneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.asy) #30, !dbg !45411, !noalias !44058
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit.i34, !dbg !45412

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit.i34: ; preds = %bb.fw, %bb.fv
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asy, i64 8, !dbg !45413
  %i.atf = load ptr, ptr %i.ate, align 8, !dbg !45413, !alias.scope !44214, !noalias !44058, !nonnull !3838, !noundef !3838
    #dbg_value(ptr %i.atf, !14340, !DIExpression(), !41179)
  %i.atg = getelementptr inbounds nuw [16 x i8], ptr %i.atf, i64 %i.atb, !dbg !45414 ; 2 uses
    #dbg_value(ptr %i.atg, !14323, !DIExpression(), !41184)
    #dbg_value(ptr %i.atg, !14352, !DIExpression(), !41186)
    #dbg_value(double %i.ans, !14355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41186)
    #dbg_value(i64 %i.asz, !14355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41186)
  store double %i.ans, ptr %i.atg, align 8, !dbg !45415, !noalias !44058
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 8, !dbg !45415
  store i64 %i.asz, ptr %i.ath, align 8, !dbg !45415, !noalias !44058
  %i.ati = add i64 %i.atb, 1, !dbg !45416
  store i64 %i.ati, ptr %i.ata, align 8, !dbg !45416, !alias.scope !44214, !noalias !44058
  br label %_RNvMs4_NtCsaTqK2fWTXJW_11qlog_dancer9datastoreNtB5_9Datastore19consume_netlog_quic.exit, !dbg !45417

bb.fx:                                            ; preds = %bb.fc
    #dbg_value(ptr %3, !42285, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !41187)
  %i.atj = load i64, ptr %0, align 8, !dbg !45418, !range !11409, !alias.scope !43937, !noundef !3838
    #dbg_value(i64 %i.atj, !43967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40843)
    #dbg_value(i64 poison, !43967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40843)
  %i.atk = trunc nuw i64 %i.atj to i1, !dbg !45419
  %i.atl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !45419
  %i.atm = load i64, ptr %i.atl, align 8, !dbg !45419, !alias.scope !43937
  %.sroa.031.0.i = select i1 %i.atk, i64 %i.atm, i64 -1, !dbg !45419 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !45420, !noalias !44057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !45420, !noalias !44057
    #dbg_value(ptr %0, !44215, !DIExpression(DW_OP_plus_uconst, 1040, DW_OP_stack_value), !41191)
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !45421 ; 2 uses
  %i.ato = load i64, ptr %i.atn, align 8, !dbg !45421, !range !10090, !alias.scope !43937, !noundef !3838
  %.not.i26 = icmp eq i64 %i.ato, -1, !dbg !45421
  br i1 %.not.i26, label %bb.iv, label %bb.iu, !dbg !45422

bb.fy:                                            ; preds = %bb.fe
  %i.atp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.anz, ptr noundef nonnull align 8 dereferenceable(192) %i.l, i64 192, i1 false), !dbg !45303, !noalias !44058
  br label %common.resume, !dbg !45302

bb.fz:                                            ; preds = %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.anz, ptr noundef nonnull align 8 dereferenceable(192) %i.l, i64 192, i1 false), !dbg !45303, !noalias !44058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !45302, !noalias !44057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !45423, !noalias !44057
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 2104, !dbg !45423
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapxINtNtBb_3vec3VecTdyEEE5entryCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.atq, i64 noundef -1), !dbg !45424, !noalias !43939
  %i.atr = call noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryxINtNtBd_3vec3VecTdyEEE10or_defaultCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j), !dbg !45425, !noalias !43939 ; 4 uses
    #dbg_value(ptr %i.atr, !42303, !DIExpression(), !41192)
    #dbg_value(ptr %i.atr, !44211, !DIExpression(), !41194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !45426, !noalias !44057
  %i.ats = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !45427
  %i.att = load i64, ptr %i.ats, align 8, !dbg !45427, !range !11409, !alias.scope !43937, !noundef !3838
    #dbg_value(i64 %i.att, !44218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41198)
    #dbg_value(i64 poison, !44218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41198)
  %i.atu = trunc nuw i64 %i.att to i1, !dbg !45428
  %i.atv = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !45428
  %i.atw = load i64, ptr %i.atv, align 8, !dbg !45428, !alias.scope !43937
  %.sroa.099.0.i = select i1 %i.atu, i64 %i.atw, i64 0, !dbg !45428
    #dbg_value(double %i.ans, !44212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41194)
    #dbg_value(i64 %.sroa.099.0.i, !44212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41194)
    #dbg_value(ptr %i.atr, !14316, !DIExpression(), !41200)
    #dbg_value(ptr %i.atr, !14325, !DIExpression(), !41202)
    #dbg_value(double %i.ans, !14321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41200)
    #dbg_value(i64 %.sroa.099.0.i, !14321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41200)
    #dbg_value(i64 16, !14330, !DIExpression(), !41205)
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atr, i64 16, !dbg !45429 ; 2 uses
  %i.aty = load i64, ptr %i.atx, align 8, !dbg !45429, !alias.scope !44221, !noalias !43939, !noundef !3838 ; 3 uses
    #dbg_value(i64 %i.aty, !14322, !DIExpression(), !41208)
    #dbg_value(i64 %i.aty, !14339, !DIExpression(), !41210)
    #dbg_value(ptr %i.atr, !14337, !DIExpression(), !41211)
  %i.atz = load i64, ptr %i.atr, align 8, !dbg !45430, !range !10292, !alias.scope !44221, !noalias !43939, !noundef !3838
  %i.aua = icmp eq i64 %i.aty, %i.atz, !dbg !45431
  br i1 %i.aua, label %bb.ga, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit325.i, !dbg !45431

bb.ga:                                            ; preds = %bb.fz
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdyEE8grow_oneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.atr) #30, !dbg !45432, !noalias !43939
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit325.i, !dbg !45433

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEE8push_mutCsaTqK2fWTXJW_11qlog_dancer.exit325.i: ; preds = %bb.ga, %bb.fz
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atr, i64 8, !dbg !45434
  %i.auc = load ptr, ptr %i.aub, align 8, !dbg !45434, !alias.scope !44221, !noalias !43939, !nonnull !3838, !noundef !3838
    #dbg_value(ptr %i.auc, !14340, !DIExpression(), !41210)
  %i.aud = getelementptr inbounds nuw [16 x i8], ptr %i.auc, i64 %i.aty, !dbg !45435 ; 2 uses
    #dbg_value(ptr %i.aud, !14323, !DIExpression(), !41215)
    #dbg_value(ptr %i.aud, !14352, !DIExpression(), !41217)
    #dbg_value(double %i.ans, !14355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41217)
    #dbg_value(i64 %.sroa.099.0.i, !14355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41217)
  store double %i.ans, ptr %i.aud, align 8, !dbg !45436, !noalias !43939
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 8, !dbg !45436
  store i64 %.sroa.099.0.i, ptr %i.aue, align 8, !dbg !45436, !noalias !43939
  %i.auf = add i64 %i.aty, 1, !dbg !45437
  store i64 %i.auf, ptr %i.atx, align 8, !dbg !45437, !alias.scope !44221, !noalias !43939
  br label %_RNvMs4_NtCsaTqK2fWTXJW_11qlog_dancer9datastoreNtB5_9Datastore19consume_netlog_quic.exit, !dbg !45438

bb.gb:                                            ; preds = %bb.ff
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 1000, !dbg !45304
  %i.auh = load ptr, ptr %i.aug, align 8, !dbg !45304, !alias.scope !43937, !nonnull !3838, !noundef !3838
    #dbg_value(ptr %i.auh, !44138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40986)
  %i.aui = getelementptr [88 x i8], ptr %i.auh, i64 %i.aoc, !dbg !45439
    #dbg_value(ptr %i.aui, !44144, !DIExpression(DW_OP_constu, 88, DW_OP_minus, DW_OP_stack_value), !41218)
    #dbg_value(ptr %i.aui, !42256, !DIExpression(DW_OP_constu, 88, DW_OP_minus, DW_OP_plus_uconst, 8, DW_OP_stack_value), !41219)
  %i.auj = getelementptr inbounds nuw i8, ptr %3, i64 80, !dbg !45440
  %i.auk = load i64, ptr %i.auj, align 8, !dbg !45440, !alias.scope !43938, !noundef !3838
  %i.aul = getelementptr i8, ptr %i.aui, i64 -16, !dbg !45441
  %i.aum = load i64, ptr %i.aul, align 8, !dbg !45441, !noalias !44058, !noundef !3838
    #dbg_value(i64 poison, !42257, !DIExpression(), !41220)
  %7 = add i64 %i.auk, -2, !dbg !45440
  %i.aun = sub i64 %7, %i.aum, !dbg !45442
  %8 = icmp ult i64 %i.aun, -3, !dbg !45442
  br i1 %8, label %bb.gi, label %bb.gc, !dbg !45442

bb.gc:                                            ; preds = %bb.gi, %bb.gb, %bb.ff
    #dbg_value(ptr %3, !44147, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !41222)
    #dbg_value(ptr %3, !44149, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !41224)
  %i.auo = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !45443
  %i.aup = load ptr, ptr %i.auo, align 8, !dbg !45443, !alias.scope !43938, !nonnull !3838, !noundef !3838 ; 4 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !45444
  %i.aur = load i64, ptr %i.auq, align 8, !dbg !45444, !alias.scope !43938, !noundef !3838
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44230), !dbg !45445
    #dbg_value(ptr %i.aup, !44231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41235)
    #dbg_value(ptr %i.aup, !44238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41238)
    #dbg_value(ptr %i.aup, !44238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41240)
    #dbg_value(i64 %i.aur, !44231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41235)
    #dbg_value(i64 %i.aur, !44238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41238)
    #dbg_value(i64 %i.aur, !44238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41240)
    #dbg_value(ptr %3, !44235, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !41235)
    #dbg_value(ptr poison, !44239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41238)
    #dbg_value(i64 28, !44239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41238)
    #dbg_value(ptr poison, !44239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41240)
    #dbg_value(i64 29, !44239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41240)
    #dbg_value(ptr poison, !44239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41242)
    #dbg_value(i64 7, !44239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41242)
    #dbg_value(ptr poison, !44239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41244)
    #dbg_value(i64 9, !44239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41244)
    #dbg_value(ptr %i.aup, !44241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41253)
    #dbg_value(ptr %i.aup, !44241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41256)
    #dbg_value(i64 %i.aur, !44241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41253)
    #dbg_value(i64 %i.aur, !44241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41256)
    #dbg_value(ptr poison, !44248, !DIExpression(), !41257)
    #dbg_value(ptr poison, !44242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41253)
    #dbg_value(i64 28, !44242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41253)
    #dbg_value(ptr poison, !44249, !DIExpression(), !41258)
    #dbg_value(i64 %i.aur, !44243, !DIExpression(), !41259)
    #dbg_value(i64 %i.aur, !44253, !DIExpression(), !41266)
    #dbg_value(i64 %i.aur, !44256, !DIExpression(), !41267)
    #dbg_value(i64 %i.aur, !44244, !DIExpression(), !41268)
    #dbg_value(i64 %i.aur, !44253, !DIExpression(), !41270)
    #dbg_value(i64 %i.aur, !44257, !DIExpression(), !41271)
  switch i64 %i.aur, label %bb.gj [
    i64 28, label %bb.gd
    i64 29, label %bb.ge
  ], !dbg !45446

bb.gd:                                            ; preds = %bb.gc
  %i.aus = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !45447
    #dbg_value(ptr %i.aus, !44235, !DIExpression(), !41235)
    #dbg_value(ptr %i.aup, !44254, !DIExpression(), !41266)
    #dbg_value(ptr poison, !44255, !DIExpression(), !41266)
  %i.aut = load i128, ptr %i.aup, align 1, !dbg !45448
  %i.auu = xor i128 %i.aut, 96199130153494930859211855051533600073, !dbg !45448
  %i.auv = getelementptr i8, ptr %i.aup, i64 12, !dbg !45448
  %i.auw = load i128, ptr %i.auv, align 1, !dbg !45448
  %i.aux = xor i128 %i.auw, 112014946638392688607677484635978155854, !dbg !45448
  %i.auy = or i128 %i.auu, %i.aux, !dbg !45448
  %i.auz = icmp ne i128 %i.auy, 0, !dbg !45448    ; 2 uses
  %i.ava = zext i1 %i.auz to i32, !dbg !45448     ; 0 uses
  %i.avb = load i64, ptr %i.aus, align 8, !range !10090, !alias.scope !44262
  %.not.i.i = icmp eq i64 %i.avb, -1
  %or.cond.i.i = select i1 %i.auz, i1 true, i1 %.not.i.i, !dbg !45449
  br i1 %or.cond.i.i, label %bb.gj, label %bb.gf, !dbg !45449

bb.ge:                                            ; preds = %bb.gc
    #dbg_value(ptr %i.aup, !44254, !DIExpression(), !41270)
    #dbg_value(ptr poison, !44255, !DIExpression(), !41270)
  %i.avc = load i128, ptr %i.aup, align 1, !dbg !45450
  %i.avd = xor i128 %i.avc, 126714481974679982926712469914817676617, !dbg !45450
  %i.ave = getelementptr i8, ptr %i.aup, i64 13, !dbg !45450
  %i.avf = load i128, ptr %i.ave, align 1, !dbg !45450
  %i.avg = xor i128 %i.avf, 112014946638392688607677484635978159186, !dbg !45450
  %i.avh = or i128 %i.avd, %i.avg, !dbg !45450
  %i.avi = icmp ne i128 %i.avh, 0, !dbg !45450
  %i.avj = zext i1 %i.avi to i32, !dbg !45450
  %i.avk = icmp eq i32 %i.avj, 0, !dbg !45450
  %spec.select.i326.i = select i1 %i.avk, i8 3, i8 6, !dbg !45451
  br label %bb.gj, !dbg !45451

bb.gf:                                            ; preds = %bb.gd
    #dbg_value(ptr %3, !44236, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !41272)
    #dbg_value(ptr %3, !44263, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !41275)
  %i.avl = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !45452
  %i.avm = load ptr, ptr %i.avl, align 8, !dbg !45452, !alias.scope !44262, !nonnull !3838, !noundef !3838 ; 4 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %3, i64 72, !dbg !45453
  %i.avo = load i64, ptr %i.avn, align 8, !dbg !45453, !alias.scope !44262, !noundef !3838
    #dbg_value(ptr %i.avm, !44238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41242)
    #dbg_value(ptr %i.avm, !44238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41244)
    #dbg_value(i64 %i.avo, !44238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41242)
    #dbg_value(i64 %i.avo, !44238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41244)
    #dbg_value(ptr %i.avm, !44241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41288)
    #dbg_value(ptr %i.avm, !44241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41291)
    #dbg_value(i64 %i.avo, !44241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41288)
    #dbg_value(i64 %i.avo, !44241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41291)
    #dbg_value(ptr poison, !44248, !DIExpression(), !41292)
    #dbg_value(ptr poison, !44242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41288)
    #dbg_value(i64 7, !44242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41288)
    #dbg_value(ptr poison, !44249, !DIExpression(), !41293)
    #dbg_value(i64 %i.avo, !44245, !DIExpression(), !41294)
    #dbg_value(i64 %i.avo, !44253, !DIExpression(), !41296)
    #dbg_value(i64 %i.avo, !44258, !DIExpression(), !41297)
    #dbg_value(i64 %i.avo, !44246, !DIExpression(), !41298)
    #dbg_value(i64 %i.avo, !44253, !DIExpression(), !41300)
    #dbg_value(i64 %i.avo, !44259, !DIExpression(), !41301)
  switch i64 %i.avo, label %bb.gj [
    i64 7, label %bb.gg
    i64 9, label %bb.gh
  ], !dbg !45454

bb.gg:                                            ; preds = %bb.gf
    #dbg_value(ptr %i.avm, !44254, !DIExpression(), !41296)
    #dbg_value(ptr poison, !44255, !DIExpression(), !41296)
  %i.avp = load i32, ptr %i.avm, align 1, !dbg !45455
  %i.avq = xor i32 %i.avp, 1414090313, !dbg !45455
  %i.avr = getelementptr i8, ptr %i.avm, i64 3, !dbg !45455
  %i.avs = load i32, ptr %i.avr, align 1, !dbg !45455
  %i.avt = xor i32 %i.avs, 1279347028, !dbg !45455
  %i.avu = or i32 %i.avq, %i.avt, !dbg !45455
  %i.avv = icmp ne i32 %i.avu, 0, !dbg !45455
  %i.avw = zext i1 %i.avv to i32, !dbg !45455
  %i.avx = icmp eq i32 %i.avw, 0, !dbg !45455
  %spec.select49.i.i = select i1 %i.avx, i8 0, i8 6, !dbg !45456
  br label %bb.gj, !dbg !45456

bb.gh:                                            ; preds = %bb.gf
    #dbg_value(ptr %i.avm, !44254, !DIExpression(), !41300)
    #dbg_value(ptr poison, !44255, !DIExpression(), !41300)
  %i.avy = load i64, ptr %i.avm, align 1, !dbg !45457
  %i.avz = xor i64 %i.avy, 5422694948796252488, !dbg !45457
  %i.awa = getelementptr i8, ptr %i.avm, i64 8, !dbg !45457
  %i.awb = load i8, ptr %i.awa, align 1, !dbg !45457
  %i.awc = zext i8 %i.awb to i64, !dbg !45457
  %i.awd = xor i64 %i.awc, 69, !dbg !45457
  %i.awe = or i64 %i.avz, %i.awd, !dbg !45457
  %i.awf = icmp ne i64 %i.awe, 0, !dbg !45457
  %i.awg = zext i1 %i.awf to i32, !dbg !45457
  %i.awh = icmp eq i32 %i.awg, 0, !dbg !45457
  %spec.select48.i.i = select i1 %i.awh, i8 1, i8 6, !dbg !45458
  br label %bb.gj, !dbg !45458

bb.gi:                                            ; preds = %bb.gb
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 2128, !dbg !45459 ; 2 uses
  %i.awj = load i64, ptr %i.awi, align 8, !dbg !45459, !alias.scope !43937, !noundef !3838
  %i.awk = add i64 %i.awj, 1, !dbg !45459
  store i64 %i.awk, ptr %i.awi, align 8, !dbg !45459, !alias.scope !43937
  br label %bb.gc, !dbg !45460

bb.gj:                                            ; preds = %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc
  %.sroa.0.0.i327.i = phi i8 [ 6, %bb.gd ], [ 6, %bb.gf ], [ %spec.select49.i.i, %bb.gg ], [ %spec.select.i326.i, %bb.ge ], [ %spec.select48.i.i, %bb.gh ], [ 6, %bb.gc ], !dbg !45461 ; 3 uses
    #dbg_value(i8 %.sroa.0.0.i327.i, !42258, !DIExpression(), !41302)
    #dbg_value(i8 %.sroa.0.0.i327.i, !43963, !DIExpression(), !41303)
  %i.awl = getelementptr inbounds nuw i8, ptr %3, i64 80, !dbg !45462
  %i.awm = load i64, ptr %i.awl, align 8, !dbg !45462, !alias.scope !43938, !noundef !3838 ; 3 uses
    #dbg_value(i8 2, !42259, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !41304)
    #dbg_value(i64 2, !42259, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !41304)
    #dbg_value(double %i.ans, !42259, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !41304)
    #dbg_value(i64 0, !42259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41304)
    #dbg_value(i8 %.sroa.0.0.i327.i, !42259, !DIExpression(DW_OP_LLVM_fragment, 584, 8), !41304)
    #dbg_value(i64 %i.awm, !42259, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !41304)
    #dbg_value(ptr %i.aoa, !44271, !DIExpression(), !41307)
    #dbg_value(double %i.ans, !44275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41307)
    #dbg_value(double %i.ans, !44277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41312)
    #dbg_value(double %i.ans, !44286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41315)
    #dbg_value(i64 0, !44286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41315)
    #dbg_value(i64 0, !44277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41312)
    #dbg_value(i64 0, !44275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41307)
    #dbg_value(double undef, !44286, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !41315)
    #dbg_value(double undef, !44277, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !41312)
    #dbg_value(double undef, !44275, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !41307)
    #dbg_value(i64 2, !44275, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !41307)
    #dbg_value(i64 2, !44277, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !41312)
    #dbg_value(i64 2, !44286, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !41315)
    #dbg_value(i64 undef, !44286, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !41315)
    #dbg_value(i64 undef, !44277, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !41312)
    #dbg_value(i64 undef, !44275, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !41307)
    #dbg_value(i64 undef, !44286, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !41315)
    #dbg_value(i64 undef, !44277, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !41312)
    #dbg_value(i64 undef, !44275, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !41307)
    #dbg_value(i64 undef, !44286, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !41315)
    #dbg_value(i64 undef, !44277, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !41312)
    #dbg_value(i64 undef, !44275, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !41307)
    #dbg_value(ptr undef, !44275, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !41307)
    #dbg_value(ptr undef, !44277, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !41312)
    #dbg_value(ptr undef, !44286, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !41315)
    #dbg_value(double %i.ans, !44286, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !41315)
    #dbg_value(double %i.ans, !44277, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !41312)
    #dbg_value(double %i.ans, !44275, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !41307)
    #dbg_value(i64 %i.awm, !44286, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !41315)
    #dbg_value(i64 %i.awm, !44277, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !41312)
    #dbg_value(i64 %i.awm, !44275, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !41307)
    #dbg_value(i8 2, !44286, !DIExpression(DW_OP_LLVM_fragment, 640, 8), !41315)
    #dbg_value(i8 2, !44277, !DIExpression(DW_OP_LLVM_fragment, 640, 8), !41312)
    #dbg_value(i8 2, !44275, !DIExpression(DW_OP_LLVM_fragment, 640, 8), !41307)
    #dbg_value(i8 %.sroa.0.0.i327.i, !44286, !DIExpression(DW_OP_LLVM_fragment, 648, 8), !41315)
    #dbg_value(i8 %.sroa.0.0.i327.i, !44277, !DIExpression(DW_OP_LLVM_fragment, 648, 8), !41312)
    #dbg_value(i8 %.sroa.0.0.i327.i, !44275, !DIExpression(DW_OP_LLVM_fragment, 648, 8), !41307)
    #dbg_value(ptr %i.aoa, !44282, !DIExpression(), !41316)
    #dbg_value(ptr %i.aoa, !44294, !DIExpression(), !41319)
    #dbg_value(i64 88, !44299, !DIExpression(), !41324)
    #dbg_value(i64 %i.aoc, !44283, !DIExpression(), !41325)
    #dbg_value(i64 %i.aoc, !44307, !DIExpression(), !41328)
    #dbg_value(ptr %i.aoa, !44305, !DIExpression(), !41329)
  %i.awn = load i64, ptr %i.aoa, align 8, !dbg !45463, !range !10292, !alias.scope !44312, !noundef !3838
end_hunk_0
