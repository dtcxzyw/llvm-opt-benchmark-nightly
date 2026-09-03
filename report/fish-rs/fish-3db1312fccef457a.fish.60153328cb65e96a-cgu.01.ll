Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !2071
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1363: ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1361
  %i.apd = getelementptr inbounds nuw i8, ptr %.val584, i64 2256
  %i.ape = load i8, ptr %i.apd, align 8, !range !44, !noundef !14
  %i.apf = icmp ne i8 %i.ape, %1
  tail call fastcc void @_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17delete_inner_word(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val584, i1 noundef zeroext %.sroa.0.0.i1359, i8 noundef %.sroa.074.0, i1 noundef zeroext %i.apf)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.pf:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1113
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #40
  unreachable

bb.pg:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1113
  %i.apg = getelementptr i8, ptr %.sroa.04.0.i1110, i64 40
  %.val741 = load ptr, ptr %i.apg, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %.val741, i64 %.val878
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %.val741, i64 %.val742
  store ptr %i.aph, ptr %i.bp, align 8
  %i.apj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.api, ptr %i.apj, align 8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i8 0, ptr %i.apk, align 8
  %i.apl = call fastcc noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2d_6Reader23handle_readline_command0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3s_5count0EB2h_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bp) #43 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.apm = add i64 %i.apl, %.val878               ; 4 uses
  %i.apn = icmp ult i64 %i.apm, %.val878
  br i1 %i.apn, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.apo = icmp eq i64 %i.apl, 0
  br i1 %i.apo, label %bb.pj, label %bb.pk

bb.pi:                                            ; preds = %bb.pg
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #40
  unreachable

bb.pj:                                            ; preds = %bb.ph
  %.val758 = load i64, ptr %i.lg, align 8, !noundef !14 ; 2 uses
  %i.app = icmp ult i64 %.val758, 2305843009213693952
  tail call void @llvm.assume(i1 %i.app)
  %i.apq = icmp ult i64 %i.apm, %.val758
  %i.apr = zext i1 %i.apq to i64
  %spec.select427 = add nuw nsw i64 %i.apm, %i.apr
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.ph
  %.sroa.09.0 = phi i64 [ %i.apm, %bb.ph ], [ %spec.select427, %bb.pj ] ; 2 uses
  %.not366 = icmp ult i64 %.val878, %.sroa.09.0
  br i1 %.not366, label %bb.pl, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.pl:                                            ; preds = %bb.pk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  %i.aps = getelementptr inbounds nuw i8, ptr %.val663, i64 2258
  %i.apt = load i8, ptr %i.aps, align 2, !range !13, !alias.scope !2072, !noundef !14
  %.not.i1364 = icmp eq i8 %i.apt, 2
  br i1 %.not.i1364, label %bb.pm, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1365, !prof !22

bb.pm:                                            ; preds = %bb.pl
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !2072
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1365: ; preds = %bb.pl
  %i.apu = getelementptr inbounds nuw i8, ptr %.val663, i64 2256
  %i.apv = load i8, ptr %i.apu, align 8, !range !44, !noundef !14
  %i.apw = icmp ne i8 %i.apv, 80
  tail call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val663, i1 noundef zeroext %.sroa.0.0.i1111, i64 noundef %.val878, i64 noundef %.sroa.09.0, i1 noundef zeroext false, i1 noundef zeroext %i.apw)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.pn:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1115
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i1368 = getelementptr inbounds nuw i8, ptr %.val662, i64 1296
  %.sroa.5.sroa.6.0.copyload.i1369 = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i1368, align 8, !alias.scope !2003, !noalias !2004
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i1370 = getelementptr inbounds nuw i8, ptr %.val662, i64 1288
  %.sroa.5.sroa.5.0.copyload.i1371 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i1370, align 8, !alias.scope !2003, !noalias !2004
  %i.apx = getelementptr inbounds nuw i8, ptr %.val662, i64 48
  %i.apy = load i64, ptr %i.apx, align 8, !alias.scope !2003, !noalias !2004, !noundef !14 ; 3 uses
  %i.apz = icmp ult i64 %i.apy, 2305843009213693952
  tail call void @llvm.assume(i1 %i.apz)
  %..i.i1372 = tail call noundef i64 @llvm.umin.i64(i64 %i.apy, i64 %.sroa.5.sroa.5.0.copyload.i1371) ; 2 uses
  %..i6.i1373 = tail call noundef i64 @llvm.umin.i64(i64 %i.apy, i64 %.sroa.5.sroa.6.0.copyload.i1369) ; 2 uses
  %i.aqa = icmp eq i64 %..i.i1372, %..i6.i1373
  br i1 %i.aqa, label %bb.po, label %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData13get_selection.exit1374

_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData13get_selection.exit1374: ; preds = %bb.pn
  tail call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val662, i1 noundef zeroext false, i64 noundef %..i.i1372, i64 noundef %..i6.i1373, i1 noundef zeroext false, i1 noundef zeroext %i.lm)
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1115, %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData13get_selection.exit1374
  %i.aqb = tail call fastcc noundef zeroext i1 @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9is_at_end(ptr nonnull %.val662)
  br i1 %i.aqb, label %bb.pp, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.pp:                                            ; preds = %bb.po
  %i.aqc = getelementptr inbounds nuw i8, ptr %.val662, i64 416
  %i.aqd = load i64, ptr %i.aqc, align 8, !range !28, !alias.scope !2073, !noundef !14
  %.not.i1375 = icmp eq i64 %i.aqd, 0
  br i1 %.not.i1375, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  %i.aqe = getelementptr inbounds nuw i8, ptr %.val662, i64 1248
  %i.aqf = load i64, ptr %i.aqe, align 8, !range !28, !alias.scope !2073, !noundef !14
  %i.aqg = icmp ne i64 %i.aqf, 0
  %i.aqh = getelementptr inbounds nuw i8, ptr %.val662, i64 689
  %i.aqi = load i8, ptr %i.aqh, align 1, !range !20, !alias.scope !2073
  %i.aqj = trunc nuw i8 %i.aqi to i1
  %or.cond.i1380 = select i1 %i.aqg, i1 %i.aqj, i1 false
  br i1 %or.cond.i1380, label %bb.ps, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1381

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
  %i.arn = sub i64 %.val879, %i.arm               ; 3 uses
  %i.aro = icmp ult i64 %.val879, %i.arm
  br i1 %i.aro, label %bb.pz, label %.preheader1918.split

.preheader1918.split:                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2u_6Reader23handle_readline_commands_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3L_5count0EB2y_.exit
  %i.arp = icmp eq i64 %.val879, %.val744
  br i1 %i.arp, label %._crit_edge, label %.lr.ph1943

bb.py:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1105
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #40
  unreachable

bb.pz:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2u_6Reader23handle_readline_commands_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3L_5count0EB2y_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #40
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
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #40
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

.lr.ph.split.us.i1417:                            ; preds = %bb.qr, %switch.lookup2110
  %.sroa.014.063.us.i1418 = phi i64 [ %i.ath, %bb.qr ], [ %i.asy, %switch.lookup2110 ] ; 5 uses
  %i.atd = icmp eq i64 %.sroa.014.063.us.i1418, %i.asv
  br i1 %i.atd, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %.lr.ph.split.us.i1417
  %i.ate = load ptr, ptr %i.atc, align 8, !alias.scope !2080, !nonnull !14, !noundef !14
  %i.atf = call noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish6reader11word_motionNtB2_20MoveWordStateMachine12consume_char(ptr noalias nofree noundef nonnull dereferenceable(3) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ate, i64 noundef %i.asv, i64 noundef %.sroa.014.063.us.i1418), !noalias !2080
  br i1 %i.atf, label %bb.qq, label %._crit_edge.i1419

bb.qp:                                            ; preds = %.lr.ph.split.us.i1417
  br i1 %.sroa.0.0.i1406, label %bb.qs, label %.sink.split

bb.qq:                                            ; preds = %bb.qo
  %i.atg = icmp eq i64 %.sroa.014.063.us.i1418, -1
  br i1 %i.atg, label %.split73.us.i1423, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.ath = add nuw i64 %.sroa.014.063.us.i1418, 1 ; 2 uses
  %.not49.us.i1422 = icmp eq i64 %i.ath, %i.asv
  br i1 %.not49.us.i1422, label %._crit_edge.i1419, label %.lr.ph.split.us.i1417

._crit_edge.i1419:                                ; preds = %bb.qr, %bb.qo
  %.sroa.014.1.i1420 = phi i64 [ %.sroa.014.063.us.i1418, %bb.qo ], [ %i.asv, %bb.qr ] ; 2 uses
  %i.ati = icmp eq i64 %.sroa.014.1.i1420, -1
  %..sroa.014.1.i1421 = select i1 %i.ati, i64 0, i64 %.sroa.014.1.i1420 ; 2 uses
  br i1 %.sroa.0.0.i1406, label %bb.qs, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.i1419, %bb.qp
  %.sroa.014.9.i.ph = phi i64 [ %i.asv, %bb.qp ], [ %..sroa.014.1.i1421, %._crit_edge.i1419 ]
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asg, i64 2284
  store i8 1, ptr %i.atj, align 4, !alias.scope !2080
  br label %bb.qs

bb.qs:                                            ; preds = %.sink.split, %._crit_edge.i1419, %bb.qp
  %.sroa.014.9.i = phi i64 [ %i.asv, %bb.qp ], [ %..sroa.014.1.i1421, %._crit_edge.i1419 ], [ %.sroa.014.9.i.ph, %.sink.split ]
  call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %i.asg, i1 noundef zeroext %.sroa.0.0.i1406, i64 noundef %i.asy, i64 noundef %.sroa.014.9.i, i1 noundef zeroext false, i1 noundef zeroext %i.ast)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2080
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

.split73.us.i1423:                                ; preds = %bb.qq
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #40, !noalias !2080
  unreachable

bb.qt:                                            ; preds = %bb.a
  %.val573 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 2 uses
  %i.atk = getelementptr i8, ptr %.val573, i64 48
  %.val991 = load i64, ptr %i.atk, align 8, !noundef !14 ; 2 uses
  %i.atl = icmp ult i64 %.val991, 2305843009213693952
  tail call void @llvm.assume(i1 %i.atl)
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command:bb.a
  %.val751 = load i64, ptr %i.bep, align 8, !noundef !14 ; 2 uses
  %i.beq = icmp ult i64 %.val751, 2305843009213693952
  tail call void @llvm.assume(i1 %i.beq)
  tail call fastcc void @_RNvMsc_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader5flash(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef %.val751)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.vp:                                            ; preds = %.split1839, %bb.vn
  %i.ber = getelementptr inbounds nuw i8, ptr %.val660, i64 2284
  store i8 0, ptr %i.ber, align 4
  br i1 %.sroa.0.0.i1121, label %bb.vr, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  tail call fastcc void @_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11clear_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val660)
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vp, %bb.vq
  %i.bes = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val660, i1 noundef zeroext %.sroa.0.0.i1121, i64 noundef 0, i64 undef) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.vs:                                            ; preds = %bb.av
  %i.bet = getelementptr i8, ptr %.val672, i64 608
  %.val994 = load i64, ptr %i.bet, align 8, !noundef !14 ; 2 uses
  %i.beu = icmp ult i64 %.val994, 64051194700380388
  tail call void @llvm.assume(i1 %i.beu)
  %i.bev = icmp eq i64 %.val994, 0
  br i1 %i.bev, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1523, label %bb.vu

bb.vt:                                            ; preds = %bb.av
  %i.bew = icmp eq i8 %1, 32
  br i1 %i.bew, label %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread1845, label %bb.ws

bb.vu:                                            ; preds = %bb.vs
  %i.bex = icmp eq i8 %1, 32
  %i.bey = getelementptr inbounds nuw i8, ptr %.val672, i64 696 ; 2 uses
  br i1 %i.bex, label %.split263, label %.split265

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1523: ; preds = %bb.vs
  %i.bez = getelementptr i8, ptr %.val672, i64 40 ; 6 uses
  %.val701 = load ptr, ptr %i.bez, align 8, !nonnull !14, !noundef !14
  %i.bfa = getelementptr i8, ptr %.val672, i64 48 ; 6 uses
  %.val702 = load i64, ptr %i.bfa, align 8, !noundef !14
  %i.bfb = getelementptr i8, ptr %.val672, i64 120 ; 2 uses
  %.val841 = load i64, ptr %i.bfb, align 8, !noundef !14
  %i.bfc = tail call noundef i64 @_RNvNtCs8frGy5WneL6_4fish10parse_util20get_line_from_offset(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val701, i64 noundef %.val702, i64 noundef %.val841) ; 3 uses
  %i.bfd = icmp slt i64 %i.bfc, -2147483648
  %i.bfe = icmp sgt i64 %i.bfc, 2147483647
  %i.bff = shl nsw i64 %i.bfc, 32
  %spec.select429 = select i1 %i.bfe, i64 513, i64 %i.bff
  %.sroa.4249.0.insert.insert = select i1 %i.bfd, i64 769, i64 %spec.select429 ; 3 uses
  %i.bfg = trunc i64 %.sroa.4249.0.insert.insert to i1
  br i1 %i.bfg, label %bb.vv, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit440, !prof !22

bb.vv:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1523
  %.sroa.4.0.extract.shift.i438 = lshr i64 %.sroa.4249.0.insert.insert, 8
  %.sroa.4.0.extract.trunc.i439 = trunc i64 %.sroa.4.0.extract.shift.i438 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2108
  store i8 %.sroa.4.0.extract.trunc.i439, ptr %i.j, align 1, !noalias !2108
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #40
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit440: ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1523
  %.sroa.6.0.extract.shift.i436 = lshr i64 %.sroa.4249.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i437 = trunc nuw i64 %.sroa.6.0.extract.shift.i436 to i32 ; 3 uses
  %i.bfh = icmp eq i8 %1, 106
  br i1 %i.bfh, label %bb.vz, label %bb.vy

.split265:                                        ; preds = %bb.vu
  %i.bfi = tail call noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.hp, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.bey)
  br i1 %i.bfi, label %bb.vw, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.vw:                                            ; preds = %.split265
  tail call fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val672)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

.split263:                                        ; preds = %bb.vu
  %i.bfj = tail call noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.hp, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.bey)
  br i1 %i.bfj, label %bb.vx, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.vx:                                            ; preds = %.split263
  tail call fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val672)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.vy:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit440
  %i.bfk = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.6.0.extract.trunc.i437, i32 1) ; 2 uses
  %i.bfl = extractvalue { i32, i1 } %i.bfk, 1
  br i1 %i.bfl, label %bb.wa, label %bb.wb

bb.vz:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit440
  %i.bfm = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.6.0.extract.trunc.i437, i32 -1) ; 2 uses
  %i.bfn = extractvalue { i32, i1 } %i.bfm, 1
  br i1 %i.bfn, label %bb.wc, label %bb.wb

bb.wa:                                            ; preds = %bb.vy
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #40
  unreachable

bb.wb:                                            ; preds = %bb.vz, %bb.vy
  %.pn392 = phi { i32, i1 } [ %i.bfk, %bb.vy ], [ %i.bfm, %bb.vz ]
  %storemerge = extractvalue { i32, i1 } %.pn392, 0 ; 4 uses
  %.val699 = load ptr, ptr %i.bez, align 8, !nonnull !14, !noundef !14
  %.val700 = load i64, ptr %i.bfa, align 8, !noundef !14 ; 3 uses
  %i.bfo = icmp ult i64 %.val700, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bfo)
  %i.bfp = tail call noundef i64 @_RNvNtCs8frGy5WneL6_4fish10parse_util6lineno(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val699, i64 noundef %.val700, i64 noundef %.val700) ; 2 uses
  %i.bfq = icmp eq i64 %i.bfp, 0
  br i1 %i.bfq, label %bb.wf, label %bb.wd

bb.wc:                                            ; preds = %bb.vz
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #40
  unreachable

bb.wd:                                            ; preds = %bb.wb
  %i.bfr = add i64 %i.bfp, -1                     ; 2 uses
  %i.bfs = icmp ugt i64 %i.bfr, 2147483647
  %i.bft = shl nuw nsw i64 %i.bfr, 32
  %.sroa.0252.0.insert.insert = select i1 %i.bfs, i64 513, i64 %i.bft ; 2 uses
  %i.bfu = trunc i64 %.sroa.0252.0.insert.insert to i1
  br i1 %i.bfu, label %bb.we, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, !prof !22

bb.we:                                            ; preds = %bb.wd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2109
  store i8 2, ptr %i.k, align 1, !noalias !2109
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #40
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.wd
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0252.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %.not.i1526 = icmp sgt i32 %storemerge, -1
  %i.bfv = icmp sle i32 %storemerge, %.sroa.6.0.extract.trunc.i
  %or.cond1889 = select i1 %.not.i1526, i1 %i.bfv, i1 false
  br i1 %or.cond1889, label %bb.wh, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.wf:                                            ; preds = %bb.wb
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #40
  unreachable

bb.wg:                                            ; preds = %.invoke2064, %.invoke, %bb.wr, %bb.wo, %bb.wq, %bb.wj, %bb.wh
  %i.bfw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeclEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #36
          to label %.thread1826 unwind label %bb.gb

bb.wh:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %.val697 = load ptr, ptr %i.bez, align 8, !nonnull !14, !noundef !14
  %.val698 = load i64, ptr %i.bfa, align 8, !noundef !14
  call void @_RNvNtCs8frGy5WneL6_4fish10parse_util15compute_indents(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val697, i64 noundef %.val698)
  %.val695 = load ptr, ptr %i.bez, align 8, !nonnull !14, !noundef !14
  %.val696 = load i64, ptr %i.bfa, align 8, !noundef !14
  %i.bfx = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val695, i64 noundef %.val696, i32 noundef %storemerge)
          to label %bb.wi unwind label %bb.wg     ; 2 uses

bb.wi:                                            ; preds = %bb.wh
  %i.bfy = extractvalue { i64, i64 } %i.bfx, 0
  %i.bfz = extractvalue { i64, i64 } %i.bfx, 1
  %i.bga = trunc nuw i64 %i.bfy to i1
  br i1 %i.bga, label %bb.wj, label %.invoke2064, !prof !21

bb.wj:                                            ; preds = %bb.wi
  %.val693 = load ptr, ptr %i.bez, align 8, !nonnull !14, !noundef !14
  %.val694 = load i64, ptr %i.bfa, align 8, !noundef !14
  %i.bgb = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val693, i64 noundef %.val694, i32 noundef %.sroa.6.0.extract.trunc.i437)
          to label %bb.wk unwind label %bb.wg     ; 2 uses

bb.wk:                                            ; preds = %bb.wj
  %i.bgc = extractvalue { i64, i64 } %i.bgb, 0
  %i.bgd = extractvalue { i64, i64 } %i.bgb, 1    ; 3 uses
  %i.bge = trunc nuw i64 %i.bgc to i1
  br i1 %i.bge, label %bb.wl, label %.invoke2064, !prof !21

bb.wl:                                            ; preds = %bb.wk
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bgg = load i64, ptr %i.bgf, align 8, !noundef !14 ; 3 uses
  %i.bgh = icmp ult i64 %i.bgg, 2305843009213693952
  call void @llvm.assume(i1 %i.bgh)
  %i.bgi = icmp eq i64 %i.bgg, 0
  br i1 %i.bgi, label %.invoke, label %bb.wm

.invoke2064:                                      ; preds = %bb.wk, %bb.wi
  %i.bgj = phi ptr [ @206, %bb.wi ], [ @207, %bb.wk ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bgj) #41
          to label %.cont2065 unwind label %bb.wg

.cont2065:                                        ; preds = %.invoke2064
  unreachable

bb.wm:                                            ; preds = %bb.wl
  %i.bgk = add nsw i64 %i.bgg, -1                 ; 2 uses
  %..i1528 = call noundef i64 @llvm.umin.i64(i64 %i.bgd, i64 %i.bgk)
  %..i1529 = call noundef i64 @llvm.umin.i64(i64 %i.bfz, i64 %i.bgk)
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bgm = load ptr, ptr %i.bgl, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %..i1528
  %i.bgo = load i32, ptr %i.bgn, align 4, !noundef !14
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %..i1529
  %i.bgq = load i32, ptr %i.bgp, align 4, !noundef !14
  %i.bgr = sext i32 %i.bgo to i64
  %i.bgs = sext i32 %i.bgq to i64
  %.val840 = load i64, ptr %i.bfb, align 8, !noundef !14 ; 2 uses
  %i.bgt = sub i64 %.val840, %i.bgd               ; 2 uses
  %i.bgu = icmp ult i64 %.val840, %i.bgd
  br i1 %i.bgu, label %.invoke, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.bgv = icmp slt i64 %i.bgt, 0
  br i1 %i.bgv, label %bb.wo, label %bb.wp

bb.wo:                                            ; preds = %bb.wn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2110
  store i8 2, ptr %i.l, align 1, !noalias !2110
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #40
          to label %.noexc430 unwind label %bb.wg

.noexc430:                                        ; preds = %bb.wo
  unreachable

bb.wp:                                            ; preds = %bb.wn
  %i.bgw = sub nsw i64 %i.bgs, %i.bgr
  %i.bgx = shl nsw i64 %i.bgw, 2
  %i.bgy = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bgt, i64 %i.bgx) ; 2 uses
  %i.bgz = extractvalue { i64, i1 } %i.bgy, 1
  br i1 %i.bgz, label %.invoke, label %bb.wq

bb.wq:                                            ; preds = %bb.wp
  %.val692 = load i64, ptr %i.bfa, align 8, !noundef !14
  %.val691 = load ptr, ptr %i.bez, align 8, !nonnull !14, !noundef !14
  %i.bha = extractvalue { i64, i1 } %i.bgy, 0
  %i.bhb = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util10get_offset(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val691, i64 noundef %.val692, i32 noundef %storemerge, i64 noundef %i.bha)
          to label %bb.wr unwind label %bb.wg     ; 2 uses

.invoke:                                          ; preds = %bb.wp, %bb.wm, %bb.wl
  %i.bhc = phi ptr [ @209, %bb.wm ], [ @208, %bb.wl ], [ @211, %bb.wp ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhc) #41
          to label %.cont unwind label %bb.wg

.cont:                                            ; preds = %.invoke
  unreachable

bb.wr:                                            ; preds = %bb.wq
  %i.bhd = extractvalue { i64, i64 } %i.bhb, 0
  %i.bhe = extractvalue { i64, i64 } %i.bhb, 1
  %i.bhf = invoke fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val672, i1 noundef zeroext false, i64 noundef range(i64 0, 2) %i.bhd, i64 %i.bhe)
          to label %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1531 unwind label %bb.wg ; 0 uses

_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1531: ; preds = %bb.wr
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeclEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.ws:                                            ; preds = %bb.vt
  %i.bhg = getelementptr inbounds nuw i8, ptr %.val672, i64 944
  %i.bhh = load i64, ptr %i.bhg, align 8, !alias.scope !2111, !noundef !14 ; 3 uses
  %i.bhi = icmp ne i64 %i.bhh, 0
  %i.bhj = getelementptr inbounds nuw i8, ptr %.val672, i64 728
  %i.bhk = load i64, ptr %i.bhj, align 8, !range !28, !alias.scope !2111
  %i.bhl = trunc nuw i64 %i.bhk to i1
  %or.cond.i1532 = select i1 %i.bhi, i1 %i.bhl, i1 false
  br i1 %or.cond.i1532, label %bb.wt, label %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread

bb.wt:                                            ; preds = %bb.ws
  %i.bhm = getelementptr inbounds nuw i8, ptr %.val672, i64 736
  %i.bhn = load i64, ptr %i.bhm, align 8, !alias.scope !2111
  %.fr = freeze i64 %i.bhn                        ; 2 uses
  %i.bho = urem i64 %.fr, %i.bhh
  %.not.i1534 = icmp eq i64 %i.bho, 0
  %i.bhp = icmp ugt i64 %i.bhh, %.fr
  %or.cond1912 = and i1 %.not.i1534, %i.bhp
  br i1 %or.cond1912, label %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread, label %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread1845

_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread: ; preds = %bb.wt, %bb.ws
  br label %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread1845

_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread1845: ; preds = %bb.wt, %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread, %bb.vt
  %.sroa.0102.0 = phi i8 [ 2, %bb.vt ], [ 8, %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread ], [ 0, %bb.wt ]
  %i.bhq = getelementptr inbounds nuw i8, ptr %.val672, i64 696
  %i.bhr = tail call noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.hp, i8 noundef range(i8 0, 9) %.sroa.0102.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.bhq)
  br i1 %i.bhr, label %bb.wu, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.wu:                                            ; preds = %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread1845
  tail call fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val672)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData13get_selection.exit: ; preds = %bb.ba
  %i.bhs = getelementptr i8, ptr %.sroa.04.0.i1075, i64 48
  %.val690 = load i64, ptr %i.bhs, align 8, !noundef !14 ; 2 uses
  %i.bht = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i, %..i.i
  %.not391 = icmp ugt i64 %..i6.i, %.val690
  %or.cond422 = or i1 %i.bht, %.not391
  br i1 %or.cond422, label %bb.ww, label %bb.wv, !prof !33

bb.wv:                                            ; preds = %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData13get_selection.exit
  %i.bhu = getelementptr i8, ptr %.sroa.04.0.i1075, i64 40
  %.val689 = load ptr, ptr %i.bhu, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %.val689, i64 %..i.i ; 2 uses
  %i.bhw = icmp eq i8 %1, 107
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %.val689, i64 %..i6.i ; 2 uses
  br i1 %i.bhw, label %bb.wy, label %bb.wx

bb.ww:                                            ; preds = %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData13get_selection.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %..i.i, i64 noundef %..i6.i, i64 noundef %.val690, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #40
  unreachable

bb.wx:                                            ; preds = %bb.wv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8
  %.sroa.0237.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 0, ptr %.sroa.0237.sroa.5.0..sroa_idx, align 8
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store ptr %i.bhv, ptr %.sroa.5238.0..sroa_idx, align 8
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %i.bhx, ptr %.sroa.6239.0..sroa_idx, align 8
  call fastcc void @_RINvXs2f_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB18_8adapters7flatten7FlatMapINtNtNtB1a_5slice4iter4ItercENtNtB1a_4char11ToLowercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB3O_6Reader23handle_readline_commands2_0EEB3S_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.ai) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1537

bb.wy:                                            ; preds = %bb.wv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  %.sroa.0231.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 0, ptr %.sroa.0231.sroa.5.0..sroa_idx, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store ptr %i.bhv, ptr %.sroa.5232.0..sroa_idx, align 8
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store ptr %i.bhx, ptr %.sroa.6233.0..sroa_idx, align 8
  call fastcc void @_RINvXs2f_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB18_8adapters7flatten7FlatMapINtNtNtB1a_5slice4iter4ItercENtNtB1a_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB3O_6Reader23handle_readline_commands1_0EEB3S_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.aj) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1537

_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1537: ; preds = %bb.wy, %bb.wx
  %i.bhy = getelementptr i8, ptr %.sroa.04.0.i1075, i64 120
  %.val839 = load i64, ptr %i.bhy, align 8, !noundef !14
  call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17replace_substring(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val671, i1 noundef zeroext %.sroa.0.0.i1076, i64 noundef %..i.i, i64 noundef %..i6.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ah)
  %i.bhz = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val671, i1 noundef zeroext %.sroa.0.0.i1076, i64 noundef 1, i64 %.val839) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.wz:                                            ; preds = %bb.xx, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1060
  %.sroa.0122.0 = phi i64 [ %.val8821752, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1060 ], [ %i.bjs, %bb.xx ] ; 6 uses
  %.sroa.0120.0 = phi i1 [ false, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1060 ], [ %.sroa.0128.2, %bb.xx ] ; 2 uses
  %.val923 = load i8, ptr %i.go, align 1, !range !20, !noundef !14
  %.not1895 = icmp eq i8 %.val923, 0
  br i1 %.not1895, label %bb.xg, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.bia = load i64, ptr %i.fg, align 8, !range !28, !noundef !14
  %.not.i1538 = icmp eq i64 %i.bia, 0
  br i1 %.not.i1538, label %bb.xb, label %bb.xc

bb.xb:                                            ; preds = %bb.xa
  %i.bib = load i64, ptr %i.gp, align 8, !range !28, !noundef !14
  %.not6.i1543 = icmp eq i64 %i.bib, 0
  br i1 %.not6.i1543, label %bb.xd, label %bb.xc

bb.xc:                                            ; preds = %bb.xb, %bb.xa
  %i.bic = load i8, ptr %i.gq, align 1, !range !20, !noundef !14
  %i.bid = trunc nuw i8 %i.bic to i1
  %spec.select.idx.i1539 = select i1 %i.bid, i64 432, i64 0
  %spec.select.i1540 = getelementptr inbounds nuw i8, ptr %.val676, i64 %spec.select.idx.i1539
  br label %bb.xd

bb.xd:                                            ; preds = %bb.xc, %bb.xb
  %.sroa.02.0.i1541 = phi ptr [ %.val676, %bb.xb ], [ %spec.select.i1540, %bb.xc ] ; 3 uses
  %i.bie = load i8, ptr %i.gr, align 2, !range !20, !noundef !14
  %i.bif = trunc nuw i8 %i.bie to i1
  %i.big = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i1541, i64 120
  %i.bih = load i64, ptr %i.big, align 8, !noundef !14 ; 3 uses
  br i1 %i.bif, label %bb.xe, label %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9is_at_end.exit1545

bb.xe:                                            ; preds = %bb.xd
  %i.bii = icmp eq i64 %i.bih, -1
  br i1 %i.bii, label %bb.xf, label %.split1856

.split1856:                                       ; preds = %bb.xe
  %i.bij = add nuw i64 %i.bih, 1
  %i.bik = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i1541, i64 48
  %i.bil = load i64, ptr %i.bik, align 8, !noundef !14 ; 2 uses
  %i.bim = icmp ult i64 %i.bil, 2305843009213693952
  call void @llvm.assume(i1 %i.bim)
  %.not1896 = icmp ult i64 %i.bij, %i.bil
  br i1 %.not1896, label %bb.xg, label %bb.xh

bb.xf:                                            ; preds = %bb.xe
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #40
          to label %.noexc1544 unwind label %.loopexit.split-lp

.noexc1544:                                       ; preds = %bb.xf
  unreachable

bb.xg:                                            ; preds = %.split1856, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9is_at_end.exit1545, %bb.wz
  %.val838 = load i64, ptr %i.gt, align 8, !noundef !14
  br label %bb.xi

_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9is_at_end.exit1545: ; preds = %bb.xd
  %i.bin = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i1541, i64 48
  %i.bio = load i64, ptr %i.bin, align 8, !noundef !14 ; 2 uses
  %i.bip = icmp ult i64 %i.bio, 2305843009213693952
  call void @llvm.assume(i1 %i.bip)
  %i.biq = icmp eq i64 %i.bih, %i.bio
  br i1 %i.biq, label %bb.xh, label %bb.xg

bb.xh:                                            ; preds = %.split1856, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9is_at_end.exit1545
end_hunk_1
begin_hunk_2_@_RNvMsa_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14handle_execute:bb.a
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1n_6reader6readerNtB2k_6Reader21should_add_to_history0E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTuNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB18_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1W_6reader6readerNtB2T_6Reader21should_add_to_history0E0EEEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #36
          to label %.body.i.i unwind label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  %i.gd = load i8, ptr %i.gc, align 1, !range !13, !alias.scope !2198, !noalias !2195, !noundef !14
  %i.ge = icmp eq i8 %i.gd, 2
  br i1 %i.ge, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1Q_6reader6readerNtB2N_6Reader21should_add_to_history0E0EEB1Q_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.gf = load ptr, ptr %i.e, align 8, !alias.scope !2203, !noalias !2195, !nonnull !14, !noundef !14 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !2204, !noundef !14
  %i.gh = add i64 %i.gg, -1                       ; 2 uses
  store i64 %i.gh, ptr %i.gf, align 8, !noalias !2204
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1Q_6reader6readerNtB2N_6Reader21should_add_to_history0E0EEB1Q_.exit.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1Q_6reader6readerNtB2N_6Reader21should_add_to_history0E0EEB1Q_.exit.i.i unwind label %bb.ar

bb.bf:                                            ; preds = %bb.bb
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1Q_6reader6readerNtB2N_6Reader21should_add_to_history0E0EEB1Q_.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2195
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit11.i.i unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1Q_6reader6readerNtB2N_6Reader21should_add_to_history0E0EEB1Q_.exit.i.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit11.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMsn_NtNtB1Q_6reader6readerNtB2N_6Reader21should_add_to_history0E0EEB1Q_.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i

.noexc21.i:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit11.i.i
  %i.gm = extractvalue { i32, i32 } %i.fz, 0
  %i.gn = icmp eq i32 %i.gm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2195
  br i1 %i.gn, label %bb.bm, label %bb.bo

bb.bi:                                            ; preds = %bb.az, %bb.au, %.body.i.i
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.bj:                                            ; preds = %bb.am
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.sink.split.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.cf, %bb.cm, %.body.i, %bb.bk, %bb.bq
  %common.resume.op = phi { ptr, i32 } [ %i.iy, %bb.cm ], [ %eh.lpad-body.i, %.body.i ], [ %i.gx, %bb.bq ], [ %i.gp, %bb.bk ], [ %i.ib, %bb.cf ]
  resume { ptr, i32 } %common.resume.op

_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader21should_add_to_history.exit.i: ; preds = %.noexc18.i
  %i.gr = load i32, ptr %i.fa, align 4, !range !31, !alias.scope !2195, !noundef !14
  %.not3.i = icmp eq i32 %i.gr, 32
  br i1 %.not3.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader21should_add_to_history.exit.i, %.noexc21.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  %i.gt = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7history7history15in_private_mode(ptr noundef nonnull %i.gs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @49)
          to label %bb.bn unwind label %.loopexit.split-lp.i

bb.bn:                                            ; preds = %bb.bm
  %..i = zext i1 %i.gt to i8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader21should_add_to_history.exit.i, %.noexc21.i
  %.sroa.02.0.i = phi i8 [ 2, %_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader21should_add_to_history.exit.i ], [ %..i, %bb.bn ], [ 2, %.noexc21.i ]
  %i.gu = load ptr, ptr %.sroa.4.0..sroa_idx14.i, align 8, !nonnull !14, !noundef !14
  %i.gv = load i64, ptr %.sroa.6.0..sroa_idx15.i, align 8, !noundef !14
  %i.gw = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History31add_pending_with_file_detection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eu, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.gu, i64 noundef %i.gv, ptr noundef nonnull align 8 %i.gw, i8 noundef %.sroa.02.0.i)
          to label %bb.bp unwind label %.loopexit.split-lp.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.sink.split.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

.sink.split.i:                                    ; preds = %bb.bp, %bb.bj
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14add_to_history.exit

bb.bs:                                            ; preds = %.body.i
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14add_to_history.exit: ; preds = %bb.ad, %.sink.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.val, i64 2258 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 2, !range !13, !alias.scope !2205, !noundef !14
  %.not.i110 = icmp eq i8 %i.hb, 2
  br i1 %.not.i110, label %bb.bt, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData7rls_mut.exit, !prof !22

bb.bt:                                            ; preds = %_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14add_to_history.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #40, !noalias !2205
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData7rls_mut.exit: ; preds = %_RNvMsn_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14add_to_history.exit
  store i8 1, ptr %i.ha, align 2
  %.val64 = load i64, ptr %i.u, align 8, !noundef !14
  store i64 1, ptr %.0.val, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store i64 %.val64, ptr %i.hc, align 8
  %i.hd = load i64, ptr %i.v, align 8, !noundef !14 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 2305843009213693952
  call void @llvm.assume(i1 %i.he)
  %i.hf = call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val, i1 noundef zeroext false, i64 noundef 1, i64 %i.hd) ; 0 uses
  br label %bb.by

bb.bu:                                            ; preds = %bb.ac
  %i.hg = trunc nuw i8 %.sroa.5.1.i to i1
  br i1 %i.hg, label %bb.bw, label %bb.bv, !prof !21

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #40
  unreachable

bb.bw:                                            ; preds = %bb.bu
  call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11insert_char(ptr noalias nofree noundef align 8 dereferenceable(2304) %.0.val, i1 noundef zeroext false, i32 noundef 10)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ac, %bb.bw
  %.sroa.0.0 = xor i1 %i.dj, true
  br label %bb.by

bb.by:                                            ; preds = %bb.w, %bb.bx, %bb.co, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData7rls_mut.exit
  %.sroa.0.1 = phi i1 [ true, %bb.co ], [ true, %bb.w ], [ %.sroa.0.0, %bb.bx ], [ true, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData7rls_mut.exit ]
  ret i1 %.sroa.0.1

bb.bz:                                            ; preds = %bb.c
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.val, i64 696
  %i.hi = tail call noundef align 8 ptr @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager19selected_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.hh)
  %.not17 = icmp eq ptr %i.hi, null
  br i1 %.not17, label %bb.cb, label %bb.co

bb.ca:                                            ; preds = %bb.c
  %i.hj = getelementptr i8, ptr %.0.val, i64 48
  %.val58 = load i64, ptr %i.hj, align 8, !noundef !14 ; 3 uses
  %i.hk = icmp ult i64 %.val58, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr i8, ptr %.0.val, i64 480
  %.val57 = load i64, ptr %i.hl, align 8, !noundef !14 ; 4 uses
  %i.hm = icmp ult i64 %.val57, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr i8, ptr %.0.val, i64 552
  %.val63 = load i64, ptr %i.hn, align 8, !noundef !14 ; 2 uses
  %i.ho = sub nsw i64 %.val57, %.val63            ; 2 uses
  %i.hp = icmp ult i64 %.val57, %.val63
  br i1 %i.hp, label %bb.cq, label %bb.cr

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.hq = getelementptr i8, ptr %.0.val, i64 472
  %.val43 = load ptr, ptr %i.hq, align 8, !nonnull !14, !noundef !14
  %i.hr = getelementptr i8, ptr %.0.val, i64 480
  %.val44 = load i64, ptr %i.hr, align 8, !noundef !14 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %.val44, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.hs = load i64, ptr %i.o, align 8, !range !28, !noundef !14
  %i.ht = trunc nuw i64 %i.hs to i1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !range !29, !noundef !14 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.ht, label %bb.cc, label %bb.cd, !prof !22

bb.cc:                                            ; preds = %bb.cb
  %i.hx = load i64, ptr %i.hw, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.hv, i64 %i.hx) #41
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.hy = load ptr, ptr %i.hw, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.hz = icmp ule i64 %.val44, %i.hv
  tail call void @llvm.assume(i1 %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not18 = icmp eq i64 %.val44, 0                ; 2 uses
  br i1 %.not18, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ia = shl nuw nsw i64 %.val44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hy, ptr nonnull align 4 %.val43, i64 %i.ia, i1 false)
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cj, %bb.ch, %bb.cg
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #36
          to label %common.resume unwind label %bb.cp

bb.cg:                                            ; preds = %bb.cd, %bb.ce
  store i64 %i.hv, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.hy, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.val44, ptr %.sroa.68.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.val, i64 1920
  %i.id = load i8, ptr %i.ic, align 8, !range !41, !alias.scope !2206, !noalias !2207, !noundef !14
  %i.ie = icmp eq i8 %i.id, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2208
  %i.if = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !2206, !noalias !2207, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2208
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val44, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %bb.cf

.noexc:                                           ; preds = %bb.cg
  %i.ih = load i64, ptr %i.b, align 8, !range !28, !noalias !2208, !noundef !14
  %i.ii = trunc nuw i64 %i.ih to i1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !range !29, !noalias !2208, !noundef !14 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ii, label %bb.ch, label %bb.ci, !prof !22

bb.ch:                                            ; preds = %.noexc
  %i.im = load i64, ptr %i.il, align 8, !noalias !2208
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ik, i64 %i.im) #41
          to label %.noexc112 unwind label %bb.cf

.noexc112:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %.noexc
  %i.in = load ptr, ptr %i.il, align 8, !noalias !2208, !nonnull !14, !noundef !14 ; 2 uses
  %i.io = icmp ule i64 %.val44, %i.ik
  tail call void @llvm.assume(i1 %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2208
  br i1 %.not18, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 0, ptr %i.ip, align 8, !noalias !2208
  store i64 0, ptr %i.c, align 8, !noalias !2208
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 %i.ig, ptr %i.iq, align 8, !noalias !2208
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.ig, ptr %i.ir, align 8, !noalias !2208
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.is, align 8, !noalias !2208
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !2208
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !2208
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.ik, ptr %i.it, align 8, !noalias !2208
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.in, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !2208
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %.val44, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2208
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.iu, align 8, !noalias !2208
  invoke fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData18push_edit_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val, i1 noundef zeroext false, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.c, i1 noundef zeroext %i.ie)
          to label %bb.cl unwind label %bb.cf

bb.ck:                                            ; preds = %bb.ci
  %i.iv = shl nuw nsw i64 %.val44, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.in, ptr nonnull readonly align 4 %i.hy, i64 %i.iv, i1 false), !noalias !2206
  br label %bb.cj

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2208
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.val, i64 2296
  store i8 2, ptr %i.iw, align 8, !alias.scope !2206, !noalias !2207
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.val, i64 2284
  store i8 0, ptr %i.ix, align 4, !alias.scope !2206, !noalias !2207
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.cl
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.co

bb.co:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.bz, %bb.cs
  call fastcc void @_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11clear_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %.0.val)
  br label %bb.by

bb.cp:                                            ; preds = %bb.cf
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.cq:                                            ; preds = %bb.ca
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #40
  unreachable

bb.cr:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.jb = getelementptr i8, ptr %.0.val, i64 120
  %.val62 = load i64, ptr %i.jb, align 8, !noundef !14
  store i64 %.val62, ptr %i.q, align 8
  %i.jc = getelementptr i8, ptr %.0.val, i64 40
  %.val41 = load ptr, ptr %i.jc, align 8, !nonnull !14, !noundef !14
  %i.jd = getelementptr i8, ptr %.0.val, i64 472
  %.val39 = load ptr, ptr %i.jd, align 8, !nonnull !14, !noundef !14
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2209
  call fastcc void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader22replace_line_at_cursor(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.je, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val41, i64 noundef %.val58, ptr noalias nofree noundef align 8 dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val39, i64 noundef %.val57)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.a, align 8, !noalias !2209
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false)
  store i64 %.val58, ptr %i.jg, align 8, !noalias !2209
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.jh, align 8, !noalias !2209
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2209
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2209
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ji, align 8, !noalias !2209
  call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData18push_edit_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a, i1 noundef zeroext false), !inline_history !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2209
  %i.jj = load i64, ptr %i.q, align 8, !noundef !14 ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ho
  br i1 %i.jk, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jl = sub nuw i64 %i.jj, %i.ho
  call void @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine12set_position(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.0.val, i64 noundef %i.jl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.co

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11clear_pager(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
end_hunk_2
begin_hunk_3_@_RNvMso_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17completion_insert:bb.a
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32completion_apply_to_command_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i16 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext false, i1 noundef zeroext %4)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #36
          to label %common.resume unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !14, !noundef !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !14
  %i.ag = load i64, ptr %i.c, align 8, !noundef !14
  invoke fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData28set_buffer_maintaining_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef %i.af, i64 noundef %i.ag)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.l, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.ab, %bb.l ], [ %i.aa, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.q:                                             ; preds = %bb.l, %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMso_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader29compute_and_apply_completions(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 111) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [24 x i8], align 8                ; 25 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [48 x i8], align 8          ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  %i.u = alloca [64 x i8], align 8                ; 14 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 13 uses
  %i.y = alloca [64 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [104 x i8], align 8              ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 14 uses
  %i.ae = alloca [24 x i8], align 8               ; 18 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 3 uses
  %i.ai = alloca [1 x i8], align 1                ; 2 uses
  store i8 %1, ptr %i.ai, align 1
  %i.aj = and i8 %1, 126
  %switch = icmp eq i8 %i.aj, 28
  br i1 %switch, label %bb.c, label %bb.b, !prof !2507

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.ai, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish5input7binding11ReadlineCmdNtB6_5Debug3fmtBC_, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @282, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish11tty_handoff24get_tty_protocols_active()
  br i1 %i.ak, label %bb.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %.val105 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 29 uses
  %i.al = getelementptr i8, ptr %.val105, i64 40  ; 8 uses
  %.val120 = load ptr, ptr %i.al, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.am = getelementptr i8, ptr %.val105, i64 48  ; 10 uses
  %.val121 = load i64, ptr %i.am, align 8, !noundef !14 ; 3 uses
  %i.an = getelementptr i8, ptr %.val105, i64 120 ; 4 uses
  %.val126 = load i64, ptr %i.an, align 8, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %i.ao = add i64 %.val126, -1
  %or.cond.not.i = icmp ult i64 %i.ao, %.val121
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ap = trunc i64 %.val126 to i32               ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.sroa.0.015.i = phi i64 [ %.val126, %.lr.ph.preheader.i ], [ %i.au, %bb.g ] ; 2 uses
  %.sroa.05.014.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ba, %bb.g ] ; 3 uses
  %i.aq = add i64 %.sroa.0.015.i, -1              ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val120, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !range !31, !alias.scope !2508, !noundef !14
  %i.at = icmp eq i32 %i.as, 92
  br i1 %i.at, label %bb.e, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit

bb.e:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e
  %i.au = add i64 %.sroa.0.015.i, -2              ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val120, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !range !31, !alias.scope !2508, !noundef !14
  %i.ax = icmp eq i32 %i.aw, 92
  br i1 %i.ax, label %bb.f, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.split.loop.exit431

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ay = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.05.014.i, i32 2) ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = extractvalue { i32, i1 } %i.ay, 0
  %.not.i.1 = icmp eq i64 %i.au, 0
  br i1 %.not.i.1, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #40, !noalias !2508
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.split.loop.exit431: ; preds = %.lr.ph.i.1
  %i.bb = add nuw nsw i32 %.sroa.05.014.i, 1
  br label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit

_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit: ; preds = %bb.e, %.lr.ph.i, %bb.g, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.split.loop.exit431
  %.sroa.05.0.lcssa.ph.i = phi i32 [ %i.ap, %bb.g ], [ %i.bb, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.split.loop.exit431 ], [ %.sroa.05.014.i, %.lr.ph.i ], [ %i.ap, %bb.e ]
  %i.bc = and i32 %.sroa.05.0.lcssa.ph.i, -2147483647
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.j, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.thread

bb.i:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @280, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #40
  unreachable

bb.j:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit
  tail call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11delete_char(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val105, i1 noundef zeroext true)
  %.val118.pre = load ptr, ptr %i.al, align 8
  %.val119.pre = load i64, ptr %i.am, align 8
  %.val125.pre = load i64, ptr %i.an, align 8
  br label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.thread

_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.thread: ; preds = %bb.d, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit, %bb.j
  %.val125 = phi i64 [ %.val126, %bb.d ], [ %.val126, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit ], [ %.val125.pre, %bb.j ]
  %.val119 = phi i64 [ %.val121, %bb.d ], [ %.val121, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit ], [ %.val119.pre, %bb.j ]
  %.val118 = phi ptr [ %.val120, %bb.d ], [ %.val120, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit ], [ %.val118.pre, %bb.j ]
  %i.be = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util19get_cmdsubst_extent(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val118, i64 noundef %.val119, i64 noundef %.val125) ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0      ; 10 uses
  %i.bg = extractvalue { i64, i64 } %i.be, 1      ; 4 uses
  %.val124 = load i64, ptr %i.an, align 8, !noundef !14 ; 2 uses
  %i.bh = sub i64 %.val124, %i.bf                 ; 3 uses
  %i.bi = icmp ult i64 %.val124, %i.bf
  br i1 %i.bi, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.val117 = load i64, ptr %i.am, align 8, !noundef !14
  %i.bj = icmp ult i64 %i.bg, %i.bf
  %.not71 = icmp ugt i64 %i.bg, %.val117
  %or.cond = or i1 %i.bj, %.not71
  br i1 %or.cond, label %bb.n, label %bb.m, !prof !33

bb.l:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader14is_backslashed.exit.thread
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #40
  unreachable

bb.m:                                             ; preds = %bb.k
  %.val116 = load ptr, ptr %i.al, align 8, !nonnull !14, !noundef !14
  %i.bk = sub nuw i64 %i.bg, %i.bf                ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %i.bf
  call void @_RNvNtCs8frGy5WneL6_4fish10parse_util16get_token_extent(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bl, i64 noundef %i.bk, i64 noundef %i.bh)
  %i.bm = load i64, ptr %i.af, align 8, !noundef !14 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.bp = sub i64 %i.bh, %i.bm                    ; 5 uses
  %i.bq = icmp ult i64 %i.bh, %i.bm
  br i1 %i.bq, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #40
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.br = icmp ult i64 %i.bf, %i.bg
  br i1 %i.br, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #40
  unreachable

bb.q:                                             ; preds = %bb.o
  %.not72 = icmp eq i64 %i.bo, 0
  br i1 %.not72, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.bs = icmp ugt i64 %i.bo, %i.bk
  br i1 %i.bs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.t
  %i.bt = phi i64 [ 0, %bb.q ], [ %i.bo, %bb.r ], [ %.sroa.434.0, %bb.t ] ; 5 uses
  %i.bu = add i64 %i.bm, %i.bf                    ; 7 uses
  %i.bv = icmp ult i64 %i.bu, %i.bm
  br i1 %i.bv, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  %.sroa.434.0 = phi i64 [ 0, %bb.q ], [ %i.bk, %bb.r ]
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.bw = add i64 %i.bt, %i.bf                    ; 8 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  br i1 %i.bx, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #40
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #40
  unreachable

.thread185:                                       ; preds = %.invoke, %bb.ab, %bb.bu, %bb.z, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.ce, %bb.cb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEEB1c_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit60.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread181

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !14, !align !19, !noundef !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.val114 = load ptr, ptr %i.al, align 8, !nonnull !14, !noundef !14
  %i.ca = icmp ult i64 %i.bw, %i.bu
  br i1 %i.ca, label %.invoke, label %bb.y, !prof !22

bb.y:                                             ; preds = %bb.x
  %.val115 = load i64, ptr %i.am, align 8, !noundef !14
  %i.cb = sub i64 %i.bt, %i.bm                    ; 5 uses
  %.not74 = icmp ugt i64 %i.bw, %.val115
  br i1 %.not74, label %.invoke, label %bb.z, !prof !22

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val114, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.aa unwind label %.thread185

.invoke:                                          ; preds = %bb.ca, %bb.x, %bb.y
  %i.cd = phi ptr [ @278, %bb.x ], [ @278, %bb.y ], [ @277, %bb.ca ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd) #41
          to label %.cont unwind label %.thread185

.cont:                                            ; preds = %.invoke
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ce = load i64, ptr %i.w, align 8, !range !28, !noundef !14
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !29, !noundef !14 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br i1 %i.cf, label %bb.ab, label %bb.ac, !prof !22

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i64, ptr %i.ci, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.cj) #41
          to label %bb.gz unwind label %.thread185

bb.ac:                                            ; preds = %bb.aa
  %i.ck = load ptr, ptr %i.ci, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.cl = icmp ule i64 %i.cb, %i.ch
  tail call void @llvm.assume(i1 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not75 = icmp eq i64 %i.bt, %i.bm
  br i1 %.not75, label %bb.ad, label %bb.bs

bb.ad:                                            ; preds = %bb.bs, %bb.ac
  store i64 %i.ch, ptr %i.ad, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  store ptr %i.ck, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 6 uses
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  %.not101.i = icmp eq i64 %i.bp, 0
  br i1 %.not101.i, label %.noexc46._crit_edge.i, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %bb.ad, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit.backedge.i
  %.sroa.06.0102.i = phi i64 [ %i.cm, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit.backedge.i ], [ %i.bp, %bb.ad ] ; 2 uses
  %i.cm = add i64 %.sroa.06.0102.i, -1            ; 4 uses
  %i.cn = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, i64 noundef range(i64 0, -1) %i.cm)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2510

.noexc.i:                                         ; preds = %.lr.ph.i130
  %i.co = icmp eq i32 %i.cn, 47
  br i1 %i.co, label %bb.ae, label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit.backedge.i

bb.ae:                                            ; preds = %.noexc.i
  %i.cp = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !alias.scope !2509, !noalias !2510, !nonnull !14, !noundef !14
  %i.cq = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2509, !noalias !2510, !noundef !14
  %i.cr = invoke noundef i64 @_RNvCskeBJdk8gjxq_17fish_wcstringutil27count_preceding_backslashes(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cp, i64 noundef %i.cq, i64 noundef range(i64 0, -1) %i.cm)
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2510

.noexc46.i:                                       ; preds = %bb.ae
  %i.cs = trunc i64 %i.cr to i1
  br i1 %i.cs, label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit.backedge.i, label %.noexc46._crit_edge.i.loopexit

_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit.backedge.i: ; preds = %.noexc46.i, %.noexc.i
  %.not.i131 = icmp eq i64 %i.cm, 0
  br i1 %.not.i131, label %.noexc46._crit_edge.i.loopexit, label %.lr.ph.i130

.noexc46._crit_edge.i.loopexit:                   ; preds = %.noexc46.i, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit.backedge.i
  %.sroa.06.0.lcssa.i.ph = phi i64 [ %.sroa.06.0102.i, %.noexc46.i ], [ 0, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit.backedge.i ]
  %.pre = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2509, !noalias !2510
  br label %.noexc46._crit_edge.i

.noexc46._crit_edge.i:                            ; preds = %.noexc46._crit_edge.i.loopexit, %bb.ad
  %i.ct = phi i64 [ %i.cb, %bb.ad ], [ %.pre, %.noexc46._crit_edge.i.loopexit ] ; 3 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.ad ], [ %.sroa.06.0.lcssa.i.ph, %.noexc46._crit_edge.i.loopexit ] ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp ult i64 %i.bp, %i.ct
  br i1 %i.cv, label %.lr.ph105.i, label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.i

.lr.ph105.i:                                      ; preds = %.noexc46._crit_edge.i, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i
  %.sroa.0.0104.i = phi i64 [ %i.dd, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i ], [ %i.bp, %.noexc46._crit_edge.i ] ; 4 uses
  %i.cw = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, i64 noundef range(i64 0, -1) %.sroa.0.0104.i)
          to label %.noexc48.i unwind label %.loopexit.i, !noalias !2510

.noexc48.i:                                       ; preds = %.lr.ph105.i
  %i.cx = icmp eq i32 %i.cw, 47
  br i1 %i.cx, label %bb.af, label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i

bb.af:                                            ; preds = %.noexc48.i
  %i.cy = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !alias.scope !2509, !noalias !2510, !nonnull !14, !noundef !14
  %i.cz = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2509, !noalias !2510, !noundef !14
  %i.da = invoke noundef i64 @_RNvCskeBJdk8gjxq_17fish_wcstringutil27count_preceding_backslashes(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cy, i64 noundef %i.cz, i64 noundef range(i64 0, -1) %.sroa.0.0104.i)
          to label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.i unwind label %.loopexit.i, !noalias !2510

_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.i: ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.loopexit_crit_edge.i, %.noexc46._crit_edge.i
  %.val39.i = phi i64 [ %i.ct, %.noexc46._crit_edge.i ], [ %.val39.pre.pre.i, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.loopexit_crit_edge.i ], [ %i.de, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i ]
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bp, %.noexc46._crit_edge.i ], [ %.sroa.0.0104.i, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.loopexit_crit_edge.i ], [ %i.dd, %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i ] ; 3 uses
  %i.db = icmp ult i64 %.sroa.0.0.lcssa.i, %.sroa.06.0.lcssa.i
  %.not.i.i.i = icmp ugt i64 %.sroa.0.0.lcssa.i, %.val39.i
  %or.cond.i.i.i = or i1 %i.db, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.ag, label %bb.ah, !prof !22

bb.ag:                                            ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #40
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2510

.noexc51.i:                                       ; preds = %bb.ag
  unreachable

_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.i: ; preds = %bb.af
  %i.dc = trunc i64 %i.da to i1
  br i1 %i.dc, label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i, label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.loopexit_crit_edge.i

_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.loopexit_crit_edge.i: ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.i
  %.val39.pre.pre.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2509, !noalias !2510
  br label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.i

_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.thread.i: ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50.i, %.noexc48.i
  %i.dd = add nuw nsw i64 %.sroa.0.0104.i, 1      ; 3 uses
  %i.de = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2509, !noalias !2510, !noundef !14 ; 3 uses
  %i.df = icmp ult i64 %i.de, 2305843009213693952
  call void @llvm.assume(i1 %i.df)
  %i.dg = icmp samesign ult i64 %i.dd, %i.de
  br i1 %i.dg, label %.lr.ph105.i, label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader19try_expand_wildcard0B7_.exit50._crit_edge.i

end_hunk_3
