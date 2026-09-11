Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command:bb.a
bb.pr:                                            ; preds = %bb.pp
  %.old1.i1376 = getelementptr inbounds nuw i8, ptr %.val662, i64 689
  %.old2.i1377 = load i8, ptr %.old1.i1376, align 1, !range !20, !alias.scope !2073, !noundef !14
  %.old3.i1378 = trunc nuw i8 %.old2.i1377 to i1
  br i1 %.old3.i1378, label %bb.ps, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1381

bb.ps:                                            ; preds = %bb.pr, %bb.pq
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1381

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1381: ; preds = %bb.pq, %bb.pr, %bb.ps
  %.sroa.0.0.i1379 = phi i1 [ true, %bb.ps ], [ false, %bb.pr ], [ false, %bb.pq ]
  %i.aqk = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val662, i1 noundef zeroext %.sroa.0.0.i1379, i64 noundef 0, i64 undef) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.pt:                                            ; preds = %bb.cf
  %i.aql = getelementptr inbounds nuw i8, ptr %.val977, i64 416
  %i.aqm = load i64, ptr %i.aql, align 8, !range !28, !alias.scope !2074, !noundef !14
  %.not.i1382 = icmp eq i64 %i.aqm, 0
  br i1 %.not.i1382, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  %i.aqn = getelementptr inbounds nuw i8, ptr %.val977, i64 1248
  %i.aqo = load i64, ptr %i.aqn, align 8, !range !28, !alias.scope !2074, !noundef !14
  %i.aqp = icmp ne i64 %i.aqo, 0
  %i.aqq = getelementptr inbounds nuw i8, ptr %.val977, i64 689
  %i.aqr = load i8, ptr %i.aqq, align 1, !range !20, !alias.scope !2074 ; 2 uses
  %i.aqs = trunc nuw i8 %i.aqr to i1
  %or.cond.i1388 = select i1 %i.aqp, i1 %i.aqs, i1 false
  br i1 %or.cond.i1388, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread2046

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread2046: ; preds = %bb.pu
  %i.aqt = getelementptr inbounds nuw i8, ptr %.val977, i64 2284
  store i8 1, ptr %i.aqt, align 4
  %i.aqu = trunc nuw i8 %i.aqr to i1
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread

bb.pv:                                            ; preds = %bb.pt
  %.old1.i1383 = getelementptr inbounds nuw i8, ptr %.val977, i64 689
  %.old2.i1384 = load i8, ptr %.old1.i1383, align 1, !range !20, !alias.scope !2074, !noundef !14
  %.old3.i1385 = trunc nuw i8 %.old2.i1384 to i1
  br i1 %.old3.i1385, label %.thread2048, label %bb.pw

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread: ; preds = %bb.pu, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread2046
  %i.aqv = phi i1 [ %i.aqu, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread2046 ], [ true, %bb.pu ]
  %i.aqw = getelementptr inbounds nuw i8, ptr %.val977, i64 1248
  %i.aqx = load i64, ptr %i.aqw, align 8, !range !28, !alias.scope !2075, !noundef !14
  %i.aqy = icmp ne i64 %i.aqx, 0
  %or.cond.i1396 = select i1 %i.aqy, i1 %i.aqv, i1 false
  br i1 %or.cond.i1396, label %.thread2048, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1397

bb.pw:                                            ; preds = %bb.pv
  %i.aqz = getelementptr inbounds nuw i8, ptr %.val977, i64 2284
  store i8 1, ptr %i.aqz, align 4
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1397

.thread2048:                                      ; preds = %bb.pv, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread
  %i.ara = getelementptr inbounds nuw i8, ptr %.val977, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1397

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1397: ; preds = %bb.pw, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread, %.thread2048
  %.sroa.04.0.i1394 = phi ptr [ %i.ara, %.thread2048 ], [ %.val977, %bb.pw ], [ %.val977, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread ]
  %.sroa.0.0.i1395 = phi i1 [ true, %.thread2048 ], [ false, %bb.pw ], [ false, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1389.thread ]
  %i.arb = getelementptr i8, ptr %.sroa.04.0.i1394, i64 120
  %.val854 = load i64, ptr %i.arb, align 8, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.arc = getelementptr inbounds nuw i8, ptr %.val977, i64 2258
  %i.ard = load i8, ptr %i.arc, align 2, !range !13, !alias.scope !2076, !noundef !14
  %.not.i1398 = icmp eq i8 %i.ard, 2
  br i1 %.not.i1398, label %bb.px, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1399, !prof !22

bb.px:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1397
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !2076
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1399: ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1397
  %i.are = getelementptr inbounds nuw i8, ptr %.val977, i64 2256
  %i.arf = load i8, ptr %i.are, align 8, !range !44, !noundef !14
  %i.arg = icmp ne i8 %i.arf, 83
  tail call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val977, i1 noundef zeroext %.sroa.0.0.i1395, i64 noundef %.val854, i64 noundef %i.lr, i1 noundef zeroext false, i1 noundef zeroext %i.arg)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2u_6Reader23handle_readline_commands_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3L_5count0EB2y_.exit: ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1105
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %.val743, i64 %.val879
  store ptr %.val743, ptr %i.bo, align 8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.arh, ptr %i.ari, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store i8 0, ptr %i.arj, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.bo, i64 17
  %i.arl = call { i64, i64 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2K_9TakeWhileppEB1R_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB4x_6Reader23handle_readline_commands_0NCINvMB3J_B3G_10wrap_mut_2jcNCNvYIB32_BM_B4p_EB1R_5count0E0E0INtNtB3L_12control_flow11ControlFlowB3G_jEEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef 0, ptr noalias nofree noundef nonnull %i.ark, ptr noalias nofree noundef nonnull dereferenceable(1) %i.arj)
  %i.arm = extractvalue { i64, i64 } %i.arl, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.arn = sub nuw i64 %.val879, %i.arm           ; 3 uses
  %i.aro = icmp ult i64 %.val879, %i.arm
  br i1 %i.aro, label %bb.pz, label %.preheader1918.split

.preheader1918.split:                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2u_6Reader23handle_readline_commands_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3L_5count0EB2y_.exit
  %i.arp = icmp eq i64 %.val879, %.val744
  br i1 %i.arp, label %._crit_edge, label %.lr.ph1943

bb.py:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1105
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #40
  unreachable

bb.pz:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2u_6Reader23handle_readline_commands_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3L_5count0EB2y_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #40
  unreachable

.lr.ph1943:                                       ; preds = %.preheader1918.split, %bb.qc
  %.sroa.022.01942 = phi i64 [ %i.ary, %bb.qc ], [ %.val879, %.preheader1918.split ] ; 3 uses
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %.val743, i64 %.sroa.022.01942
  %i.arr = load i32, ptr %i.arq, align 4, !range !31, !noundef !14
  %i.ars = icmp eq i32 %i.arr, 10
  br i1 %i.ars, label %bb.qa, label %bb.qc

._crit_edge:                                      ; preds = %bb.qc, %.preheader1918.split
  %i.art = icmp eq i8 %1, 84
  %i.aru = icmp ne i64 %i.arn, 0
  %or.cond7 = and i1 %i.art, %i.aru
  %i.arv = sext i1 %or.cond7 to i64
  %spec.select428 = add i64 %i.arn, %i.arv
  br label %bb.qb

bb.qa:                                            ; preds = %.lr.ph1943
  %i.arw = icmp eq i8 %1, 84
  %i.arx = zext i1 %i.arw to i64
  %spec.select1888 = add nuw i64 %.sroa.022.01942, %i.arx
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %._crit_edge
  %.sroa.033.0 = phi i64 [ %i.arn, %bb.qa ], [ %spec.select428, %._crit_edge ] ; 3 uses
  %.sroa.022.1 = phi i64 [ %spec.select1888, %bb.qa ], [ %.val744, %._crit_edge ] ; 3 uses
  %.not369 = icmp ult i64 %.sroa.022.1, %.sroa.033.0
  br i1 %.not369, label %bb.qd, label %bb.qe, !prof !22

bb.qc:                                            ; preds = %.lr.ph1943
  %i.ary = add nuw i64 %.sroa.022.01942, 1        ; 2 uses
  %i.arz = icmp eq i64 %i.ary, %.val744
  br i1 %i.arz, label %._crit_edge, label %.lr.ph1943

bb.qd:                                            ; preds = %bb.qb
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #40
  unreachable

bb.qe:                                            ; preds = %bb.qb
  %i.asa = icmp ugt i64 %.sroa.022.1, %.sroa.033.0
  br i1 %i.asa, label %bb.qf, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.qf:                                            ; preds = %bb.qe
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %i.asb = getelementptr inbounds nuw i8, ptr %.val664, i64 2258
  %i.asc = load i8, ptr %i.asb, align 2, !range !13, !alias.scope !2077, !noundef !14
  %.not.i1400 = icmp eq i8 %i.asc, 2
  br i1 %.not.i1400, label %bb.qg, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1401, !prof !22

bb.qg:                                            ; preds = %bb.qf
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !2077
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1401: ; preds = %bb.qf
  %i.asd = getelementptr inbounds nuw i8, ptr %.val664, i64 2256
  %i.ase = load i8, ptr %i.asd, align 8, !range !44, !noundef !14
  %i.asf = icmp ne i8 %i.ase, %1
  call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val664, i1 noundef zeroext %.sroa.0.0.i1103, i64 noundef %.sroa.033.0, i64 noundef %.sroa.022.1, i1 noundef zeroext false, i1 noundef zeroext %i.asf)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.qh:                                            ; preds = %bb.a
  br label %bb.qj

bb.qi:                                            ; preds = %bb.a
  br label %bb.qj

bb.qj:                                            ; preds = %bb.a, %bb.qi, %bb.qh
  %.sroa.073.0 = phi i8 [ 0, %bb.qi ], [ 8, %bb.qh ], [ 16, %bb.a ] ; 2 uses
  %i.asg = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 9 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 416
  %i.asi = load i64, ptr %i.ash, align 8, !range !28, !alias.scope !2078, !noundef !14
  %.not.i1402 = icmp eq i64 %i.asi, 0
  br i1 %.not.i1402, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %bb.qj
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asg, i64 1248
  %i.ask = load i64, ptr %i.asj, align 8, !range !28, !alias.scope !2078, !noundef !14
  %i.asl = icmp ne i64 %i.ask, 0
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asg, i64 689
  %i.asn = load i8, ptr %i.asm, align 1, !range !20, !alias.scope !2078
  %i.aso = trunc nuw i8 %i.asn to i1
  %or.cond.i1407 = select i1 %i.asl, i1 %i.aso, i1 false
  br i1 %or.cond.i1407, label %bb.qm, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1408

bb.ql:                                            ; preds = %bb.qj
  %.old1.i1403 = getelementptr inbounds nuw i8, ptr %i.asg, i64 689
  %.old2.i1404 = load i8, ptr %.old1.i1403, align 1, !range !20, !alias.scope !2078, !noundef !14
  %.old3.i1405 = trunc nuw i8 %.old2.i1404 to i1
  br i1 %.old3.i1405, label %bb.qm, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1408

bb.qm:                                            ; preds = %bb.ql, %bb.qk
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1408

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1408: ; preds = %bb.qk, %bb.ql, %bb.qm
  %.sroa.0.0.i1406 = phi i1 [ true, %bb.qm ], [ false, %bb.ql ], [ false, %bb.qk ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asg, i64 2258
  %i.asq = load i8, ptr %i.asp, align 2, !range !13, !alias.scope !2079, !noundef !14
  %.not.i1409 = icmp eq i8 %i.asq, 2
  br i1 %.not.i1409, label %bb.qn, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1410, !prof !22

bb.qn:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1408
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !2079
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1410: ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1408
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asg, i64 2256
  %i.ass = load i8, ptr %i.asr, align 8, !range !44, !noundef !14
  %i.ast = icmp ne i8 %i.ass, %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  %.sroa.04.0.idx.i1411 = select i1 %.sroa.0.0.i1406, i64 432, i64 0
  %.sroa.04.0.i1412 = getelementptr inbounds nuw i8, ptr %i.asg, i64 %.sroa.04.0.idx.i1411 ; 3 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1412, i64 48
  %i.asv = load i64, ptr %i.asu, align 8, !alias.scope !2080, !noundef !14 ; 8 uses
  %i.asw = icmp ult i64 %i.asv, 2305843009213693952
  tail call void @llvm.assume(i1 %i.asw)
  %i.asx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1412, i64 120
  %i.asy = load i64, ptr %i.asx, align 8, !alias.scope !2080, !noundef !14 ; 3 uses
  %i.asz = icmp eq i64 %i.asy, %i.asv
  br i1 %i.asz, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %switch.lookup2110

switch.lookup2110:                                ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2080
  %switch.shiftamt2112 = zext nneg i8 %.sroa.073.0 to i24
  %switch.downshift2113 = lshr i24 787212, %switch.shiftamt2112
  %switch.masked2114 = trunc i24 %switch.downshift2113 to i8
  %switch.shiftamt2116 = zext nneg i8 %.sroa.073.0 to i24
  %switch.downshift2117 = lshr i24 197120, %switch.shiftamt2116
  %switch.masked2118 = trunc i24 %switch.downshift2117 to i8
  store i8 1, ptr %i.f, align 1, !noalias !2080
  %i.ata = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %switch.masked2118, ptr %i.ata, align 1, !noalias !2080
  %i.atb = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %switch.masked2114, ptr %i.atb, align 1, !noalias !2080
  %i.atc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1412, i64 40
  br label %.lr.ph.split.us.i1417

.lr.ph.split.us.i1417:                            ; preds = %bb.qq, %switch.lookup2110
  %.sroa.014.063.us.i1418 = phi i64 [ %i.atf, %bb.qq ], [ %i.asy, %switch.lookup2110 ] ; 5 uses
  %2 = icmp eq i64 %.sroa.014.063.us.i1418, %i.asv
  br i1 %2, label %4, label %bb.qo

bb.qo:                                            ; preds = %.lr.ph.split.us.i1417
  %3 = load ptr, ptr %i.atc, align 8, !alias.scope !2080, !nonnull !14, !noundef !14
  %i.atd = call noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish6reader11word_motionNtB2_20MoveWordStateMachine12consume_char(ptr noalias nofree noundef nonnull dereferenceable(3) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %i.asv, i64 noundef %.sroa.014.063.us.i1418), !noalias !2080
  br i1 %i.atd, label %bb.qp, label %._crit_edge.i1419

4:                                                ; preds = %.lr.ph.split.us.i1417
  br i1 %.sroa.0.0.i1406, label %bb.qr, label %.sink.split

bb.qp:                                            ; preds = %bb.qo
  %i.ate = icmp eq i64 %.sroa.014.063.us.i1418, -1
  br i1 %i.ate, label %.split73.us.i1423, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.atf = add nuw i64 %.sroa.014.063.us.i1418, 1 ; 2 uses
  %.not49.us.i1422 = icmp eq i64 %i.atf, %i.asv
  br i1 %.not49.us.i1422, label %._crit_edge.i1419, label %.lr.ph.split.us.i1417

._crit_edge.i1419:                                ; preds = %bb.qq, %bb.qo
  %.sroa.014.1.i1420 = phi i64 [ %.sroa.014.063.us.i1418, %bb.qo ], [ %i.asv, %bb.qq ] ; 2 uses
  %i.atg = icmp eq i64 %.sroa.014.1.i1420, -1
  %..sroa.014.1.i1421 = select i1 %i.atg, i64 0, i64 %.sroa.014.1.i1420 ; 2 uses
  br i1 %.sroa.0.0.i1406, label %bb.qr, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.i1419, %4
  %.sroa.014.9.i.ph = phi i64 [ %i.asv, %4 ], [ %..sroa.014.1.i1421, %._crit_edge.i1419 ]
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asg, i64 2284
  store i8 1, ptr %i.ath, align 4, !alias.scope !2080
  br label %bb.qr

bb.qr:                                            ; preds = %.sink.split, %._crit_edge.i1419, %4
  %.sroa.014.9.i = phi i64 [ %i.asv, %4 ], [ %..sroa.014.1.i1421, %._crit_edge.i1419 ], [ %.sroa.014.9.i.ph, %.sink.split ]
  call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %i.asg, i1 noundef zeroext %.sroa.0.0.i1406, i64 noundef %i.asy, i64 noundef %.sroa.014.9.i, i1 noundef zeroext false, i1 noundef zeroext %i.ast)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2080
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

.split73.us.i1423:                                ; preds = %bb.qp
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #40, !noalias !2080
  unreachable

bb.qs:                                            ; preds = %bb.a
  %.val573 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 2 uses
  %i.ati = getelementptr i8, ptr %.val573, i64 48
  %.val991 = load i64, ptr %i.ati, align 8, !noundef !14 ; 2 uses
  %i.atj = icmp ult i64 %.val991, 2305843009213693952
  tail call void @llvm.assume(i1 %i.atj)
  %i.atk = icmp eq i64 %.val991, 0
  br i1 %i.atk, label %bb.qx, label %bb.qt

bb.qt:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.qs
  %.val572 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 22 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.val572, i64 416 ; 2 uses
  %i.atm = load i64, ptr %i.atl, align 8, !range !28, !alias.scope !2081, !noundef !14 ; 2 uses
  %.not.i1426 = icmp eq i64 %i.atm, 0
  br i1 %.not.i1426, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %bb.qt
  %i.atn = getelementptr inbounds nuw i8, ptr %.val572, i64 1248
  %i.ato = load i64, ptr %i.atn, align 8, !range !28, !alias.scope !2081, !noundef !14
  %i.atp = icmp ne i64 %i.ato, 0
  %i.atq = getelementptr inbounds nuw i8, ptr %.val572, i64 689
  %i.atr = load i8, ptr %i.atq, align 1, !range !20, !alias.scope !2081
  %i.ats = trunc nuw i8 %i.atr to i1
  %or.cond.i1432 = select i1 %i.atp, i1 %i.ats, i1 false
  br i1 %or.cond.i1432, label %bb.qw, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1433

bb.qv:                                            ; preds = %bb.qt
  %.old1.i1427 = getelementptr inbounds nuw i8, ptr %.val572, i64 689
  %.old2.i1428 = load i8, ptr %.old1.i1427, align 1, !range !20, !alias.scope !2081, !noundef !14
  %.old3.i1429 = trunc nuw i8 %.old2.i1428 to i1
  br i1 %.old3.i1429, label %bb.qw, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1433

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %i.att = getelementptr inbounds nuw i8, ptr %.val572, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1433

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1433: ; preds = %bb.qu, %bb.qv, %bb.qw
  %.sroa.04.0.i1430 = phi ptr [ %i.att, %bb.qw ], [ %.val572, %bb.qv ], [ %.val572, %bb.qu ] ; 4 uses
  %.sroa.0.0.i1431 = phi i1 [ true, %bb.qw ], [ false, %bb.qv ], [ false, %bb.qu ] ; 4 uses
  %switch.selectcmp.case1410 = icmp eq i8 %1, 75
  %switch.selectcmp.case2411 = icmp eq i8 %1, 85
  %switch.selectcmp412 = or i1 %switch.selectcmp.case1410, %switch.selectcmp.case2411
  %switch.tableidx2119 = add nsw i8 %1, -44       ; 4 uses
  %i.atu = icmp ult i8 %switch.tableidx2119, 44
  br i1 %i.atu, label %switch.hole_check2121, label %bb.qy

bb.qx:                                            ; preds = %bb.qs
  %i.atv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val900 = load ptr, ptr %i.atv, align 8, !nonnull !14, !align !19, !noundef !14
  tail call fastcc void @_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader13eval_bind_cmd(ptr nonnull %.val900, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @185, i64 noundef 5)
  tail call void @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23schedule_prompt_repaint(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val573)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.qy:                                            ; preds = %switch.hole_check2121, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1433
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #40
  unreachable

switch.hole_check2121:                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1433
  %switch.maskindex2123 = zext nneg i8 %switch.tableidx2119 to i64
  %switch.shifted2124 = lshr i64 10997263762433, %switch.maskindex2123
  %switch.lobit2125 = trunc i64 %switch.shifted2124 to i1
  br i1 %switch.lobit2125, label %switch.lookup2122, label %bb.qy, !prof !2082

switch.lookup2122:                                ; preds = %switch.hole_check2121
  %i.atw = zext nneg i8 %switch.tableidx2119 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command, i64 %i.atw
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.atx = zext nneg i8 %switch.tableidx2119 to i64
  %switch.gep2126 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command.289, i64 %i.atx
  %switch.load2127 = load i8, ptr %switch.gep2126, align 1 ; 2 uses
  %i.aty = getelementptr i8, ptr %.sroa.04.0.i1430, i64 120 ; 2 uses
  %.val853 = load i64, ptr %i.aty, align 8, !noundef !14 ; 3 uses
  %i.atz = icmp eq i64 %.val853, -1
  br i1 %i.atz, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %switch.lookup2122
  %i.aua = add nuw i64 %.val853, 1                ; 2 uses
  %i.aub = getelementptr i8, ptr %.sroa.04.0.i1430, i64 48
  %.val757 = load i64, ptr %i.aub, align 8, !noundef !14 ; 2 uses
  %i.auc = icmp ult i64 %.val757, 2305843009213693952
  tail call void @llvm.assume(i1 %i.auc)
  %i.aud = icmp ult i64 %i.aua, %.val757
  br i1 %i.aud, label %bb.rj, label %bb.rb

bb.ra:                                            ; preds = %switch.lookup2122
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #40
  unreachable

bb.rb:                                            ; preds = %._crit_edge1975, %bb.qz
  %i.aue = phi i64 [ %.pre1976, %._crit_edge1975 ], [ %i.atm, %bb.qz ]
  %.not.i1434 = icmp eq i64 %i.aue, 0
  br i1 %.not.i1434, label %bb.rc, label %bb.re

bb.rc:                                            ; preds = %bb.rb
  %i.auf = getelementptr inbounds nuw i8, ptr %.val572, i64 1248
  %i.aug = load i64, ptr %i.auf, align 8, !range !28, !noundef !14
  %.not2.i1437 = icmp eq i64 %i.aug, 0
  br i1 %.not2.i1437, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %bb.re, %bb.rc
  %i.auh = getelementptr inbounds nuw i8, ptr %.val572, i64 384
  %i.aui = load i64, ptr %i.auh, align 8, !noundef !14 ; 2 uses
  %i.auj = icmp ult i64 %i.aui, 2305843009213693952
  tail call void @llvm.assume(i1 %i.auj)
  %i.auk = icmp eq i64 %i.aui, 0
  br i1 %i.auk, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread, label %bb.rf

bb.re:                                            ; preds = %bb.rc, %bb.rb
  %i.aul = getelementptr inbounds nuw i8, ptr %.val572, i64 689
  %i.aum = load i8, ptr %i.aul, align 1, !range !20, !noundef !14
  %i.aun = trunc nuw i8 %i.aum to i1
  br i1 %i.aun, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread, label %bb.rd

bb.rf:                                            ; preds = %bb.rd
  %i.auo = getelementptr inbounds nuw i8, ptr %.val572, i64 2290
  %i.aup = load i8, ptr %i.auo, align 2, !range !20, !noundef !14
  %i.auq = trunc nuw i8 %i.aup to i1
  %i.aur = getelementptr inbounds nuw i8, ptr %.val572, i64 120
  %i.aus = load i64, ptr %i.aur, align 8, !noundef !14 ; 3 uses
  br i1 %i.auq, label %bb.rg, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438

bb.rg:                                            ; preds = %bb.rf
  %i.aut = icmp eq i64 %i.aus, -1
  br i1 %i.aut, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.auu = add nuw i64 %i.aus, 1
  br label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438

bb.ri:                                            ; preds = %bb.rg
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #40
  unreachable

_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438: ; preds = %bb.rf, %bb.rh
  %.sroa.01.0.i1435 = phi i64 [ %i.auu, %bb.rh ], [ %i.aus, %bb.rf ]
  %i.auv = getelementptr inbounds nuw i8, ptr %.val572, i64 400
  %i.auw = load i64, ptr %i.auv, align 8, !noundef !14
  %i.aux = icmp eq i64 %.sroa.01.0.i1435, %i.auw
  br i1 %i.aux, label %bb.rl, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread

bb.rj:                                            ; preds = %bb.qz
  %i.auy = tail call noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.04.0.i1430, i64 noundef %.val853)
  %i.auz = tail call noundef i8 %switch.load(i32 noundef %i.auy), !callees !2083 ; 2 uses
  %i.ava = tail call noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.04.0.i1430, i64 noundef %i.aua)
  %i.avb = tail call noundef i8 %switch.load(i32 noundef %i.ava), !callees !2083
  %switch413 = icmp ult i8 %i.auz, 2
  br i1 %switch413, label %._crit_edge1975, label %bb.rk

._crit_edge1975:                                  ; preds = %bb.rj
  %.pre1976 = load i64, ptr %i.atl, align 8, !range !28
  br label %bb.rb

bb.rk:                                            ; preds = %bb.rj
  %i.avc = tail call fastcc noundef zeroext i1 @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion(ptr nonnull %.val572)
  br i1 %i.avc, label %bb.rl, label %bb.rn

bb.rl:                                            ; preds = %bb.rk, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.avd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %switch.load2127, ptr %i.avd, align 1
  %i.ave = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 1, ptr %i.ave, align 2
  store i8 2, ptr %i.ba, align 8
  call fastcc void @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader21accept_autosuggestion(ptr nonnull %.val572, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread: ; preds = %bb.rd, %bb.re, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438, %bb.rn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.avf = getelementptr inbounds nuw i8, ptr %.val572, i64 2258
  %i.avg = load i8, ptr %i.avf, align 2, !range !13, !alias.scope !2084, !noundef !14
  %.not.i1439 = icmp eq i8 %i.avg, 2
  br i1 %.not.i1439, label %bb.rm, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440, !prof !22

bb.rm:                                            ; preds = %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !2084
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440: ; preds = %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread
  %i.avh = getelementptr inbounds nuw i8, ptr %.val572, i64 2256
  %i.avi = load i8, ptr %i.avh, align 8, !range !44, !noundef !14
  %i.avj = icmp ne i8 %i.avi, %1
  tail call fastcc void @_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData9move_word(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val572, i1 noundef zeroext %.sroa.0.0.i1431, i1 noundef zeroext true, i1 noundef zeroext %switch.selectcmp412, i8 noundef %switch.load2127, i1 noundef zeroext %i.avj, i1 noundef zeroext true)
  switch i8 %1, label %bb.ro [
    i8 85, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
    i8 75, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
  ]

bb.rn:                                            ; preds = %bb.rk
  %.not386 = icmp eq i8 %i.avb, %i.auz
  br i1 %.not386, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader20is_at_autosuggestion.exit1438.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.rn
end_hunk_0
