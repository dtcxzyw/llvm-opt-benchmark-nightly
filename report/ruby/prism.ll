inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parse_expression_prefix:bb.a
  %i.azp = getelementptr i8, ptr %0, i64 504      ; 2 uses
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !253 ; 2 uses
  %i.azr = getelementptr i8, ptr %i.azq, i64 8
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.azq) #27
  store ptr %i.azs, ptr %i.azp, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #27
  %.val.i2631 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.azt = icmp eq i32 %.val.i2631, 82
  br i1 %i.azt, label %bb.qz, label %accept1.exit2632

bb.qz:                                            ; preds = %context_push.exit2630
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(24) %i.azk, i64 24, i1 false), !tbaa.struct !163
  br label %bb.ra

accept1.exit2632:                                 ; preds = %context_push.exit2630
  %i.azu = getelementptr i8, ptr %0, i64 304
  %.val2216 = load ptr, ptr %i.azu, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %77, align 8, !tbaa !7
  %.sroa.43114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %77, i64 4
  store i32 0, ptr %.sroa.43114.0..sroa_idx, align 4
  %.sroa.53115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %77, i64 8
  store ptr %.val2216, ptr %.sroa.53115.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %77, i64 16
  store ptr %.val2216, ptr %.sroa.63116.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @expect2(ptr noundef nonnull %0, i32 noundef 14, i32 noundef 17, i32 noundef 60)
  br label %bb.ra

bb.ra:                                            ; preds = %accept1.exit2632, %bb.qz
  %.val2095 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.azv = icmp eq i32 %.val2095, 8
  br i1 %i.azv, label %accept2.exit2635, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.azw = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.azx = load i32, ptr %i.azw, align 8, !tbaa !7
  %i.azy = shl i32 %i.azx, 1
  store i32 %i.azy, ptr %i.azw, align 8, !tbaa !7
  %i.azz = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 54, i16 noundef zeroext %i.azl) ; 2 uses
  %i.baa = load i32, ptr %i.azw, align 8, !tbaa !7
  %i.bab = lshr i32 %i.baa, 1
  store i32 %i.bab, ptr %i.azw, align 8, !tbaa !7
  %.val.i2633 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val.i2633, label %accept2.exit2635 [
    i32 17, label %bb.rc
    i32 14, label %bb.rc
  ]

bb.rc:                                            ; preds = %bb.rb, %bb.rb
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit2635

accept2.exit2635:                                 ; preds = %bb.rb, %bb.rc, %bb.ra
  %.01964 = phi ptr [ null, %bb.ra ], [ %i.azz, %bb.rb ], [ %i.azz, %bb.rc ]
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.azc, ptr noundef %76, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 291, ptr noundef %76)
  %i.bac = getelementptr inbounds nuw i8, ptr %76, i64 8
  %.val2319 = load ptr, ptr %i.bac, align 8
  %i.bad = getelementptr inbounds nuw i8, ptr %76, i64 16
  %.val2320 = load ptr, ptr %i.bad, align 8
  %i.bae = call fastcc ptr @pm_while_node_create(ptr noundef nonnull %0, ptr %.val2319, ptr %.val2320, ptr noundef %77, ptr noundef nonnull %i.azk, ptr noundef %i.azm, ptr noundef %.01964)
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #27
  br label %.loopexit3341

bb.rd:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #27
  %i.baf = getelementptr i8, ptr %0, i64 320      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %i.baf, i64 24, i1 false), !tbaa.struct !163
  %i.bag = call fastcc ptr @pm_array_node_create(ptr noundef nonnull %0, ptr noundef nonnull %78) ; 7 uses
  %i.bah = getelementptr i8, ptr %0, i64 304
  %i.bai = getelementptr inbounds nuw i8, ptr %79, i64 4
  %i.baj = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.bak = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.bal = getelementptr inbounds nuw i8, ptr %80, i64 4
  %i.bam = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.ban = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.bao = getelementptr i8, ptr %0, i64 693
  %i.bap = getelementptr i8, ptr %i.bag, i64 24   ; 2 uses
  %i.baq = getelementptr i8, ptr %i.bag, i64 48
  %i.bar = getelementptr i8, ptr %i.bag, i64 8
  %i.bas = getelementptr i8, ptr %i.bag, i64 16
  %i.bat = getelementptr i8, ptr %i.bag, i64 2    ; 4 uses
  %i.bau = getelementptr i8, ptr %0, i64 336      ; 2 uses
  %i.bav = getelementptr i8, ptr %0, i64 472      ; 2 uses
  %i.baw = getelementptr i8, ptr %0, i64 328
  br label %pm_array_node_elements_append.exit2670

pm_array_node_elements_append.exit2670:           ; preds = %pm_array_node_elements_append.exit2670.backedge, %bb.rd
  %.val2141 = load i32, ptr %i.b, align 8, !tbaa !170 ; 3 uses
  switch i32 %.val2141, label %accept1.exit2638 [
    i32 149, label %bb.ry
    i32 1, label %bb.ry
    i32 161, label %bb.re
  ]

bb.re:                                            ; preds = %pm_array_node_elements_append.exit2670
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2094.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2638

accept1.exit2638:                                 ; preds = %pm_array_node_elements_append.exit2670, %bb.re
  %.val2094 = phi i32 [ %.val2141, %pm_array_node_elements_append.exit2670 ], [ %.val2094.pre, %bb.re ]
  switch i32 %.val2094, label %expect1.exit2674 [
    i32 149, label %.thread3307
    i32 148, label %.lr.ph3388
  ]

.thread3307:                                      ; preds = %accept1.exit2638
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  br label %bb.sa

.lr.ph3388:                                       ; preds = %accept1.exit2638, %bb.rq
  %.119663387 = phi ptr [ %.21967, %bb.rq ], [ null, %accept1.exit2638 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #27
  %.val2215 = load ptr, ptr %i.bah, align 8, !tbaa !74 ; 5 uses
  store i32 164, ptr %79, align 8, !tbaa !126, !alias.scope !361
  store i32 0, ptr %i.bai, align 4, !alias.scope !361
  store ptr %.val2215, ptr %i.baj, align 8, !tbaa !127, !alias.scope !361
  store ptr %.val2215, ptr %i.bak, align 8, !tbaa !128, !alias.scope !361
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #27
  store i32 164, ptr %80, align 8, !tbaa !126, !alias.scope !364
  store i32 0, ptr %i.bal, align 4, !alias.scope !364
  store ptr %.val2215, ptr %i.bam, align 8, !tbaa !127, !alias.scope !364
  store ptr %.val2215, ptr %i.ban, align 8, !tbaa !128, !alias.scope !364
  %i.bax = icmp eq ptr %.119663387, null
  br i1 %i.bax, label %bb.rf, label %bb.rg

bb.rf:                                            ; preds = %.lr.ph3388
  %i.bay = call fastcc ptr @pm_symbol_node_create_current_string(ptr noundef nonnull %0, ptr noundef %79, ptr noundef nonnull %i.b, ptr noundef %80)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.rq

bb.rg:                                            ; preds = %.lr.ph3388
  %i.baz = load i16, ptr %.119663387, align 8, !tbaa !115
  switch i16 %i.baz, label %bb.rp [
    i16 86, label %bb.rh
    i16 143, label %bb.rk
  ]

bb.rh:                                            ; preds = %bb.rg
  %i.bba = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %79, ptr noundef nonnull %i.b, ptr noundef %80) ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bbb = getelementptr i8, ptr %.119663387, i64 40 ; 2 uses
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !367
  %i.bbd = icmp eq i64 %i.bbc, 0
  br i1 %i.bbd, label %bb.ri, label %pm_interpolated_symbol_node_append.exit

bb.ri:                                            ; preds = %bb.rh
  %i.bbe = getelementptr i8, ptr %.119663387, i64 24
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !369
  %i.bbg = icmp eq ptr %i.bbf, null
  br i1 %i.bbg, label %bb.rj, label %pm_interpolated_symbol_node_append.exit

bb.rj:                                            ; preds = %bb.ri
  %i.bbh = getelementptr i8, ptr %i.bba, i64 8
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !133
  %i.bbj = getelementptr i8, ptr %.119663387, i64 8
  store ptr %i.bbi, ptr %i.bbj, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit

pm_interpolated_symbol_node_append.exit:          ; preds = %bb.rh, %bb.ri, %bb.rj
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %.119663387, ptr noundef nonnull %i.bbb, ptr noundef nonnull %i.bba)
  %i.bbk = getelementptr i8, ptr %.119663387, i64 16 ; 2 uses
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !371 ; 2 uses
  %i.bbm = getelementptr i8, ptr %i.bba, i64 16
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !134 ; 2 uses
  %i.bbo = icmp ugt ptr %i.bbl, %i.bbn
  %..i2639 = select i1 %i.bbo, ptr %i.bbl, ptr %i.bbn
  store ptr %..i2639, ptr %i.bbk, align 8, !tbaa !371
  br label %bb.rq

bb.rk:                                            ; preds = %bb.rg
  %i.bbp = getelementptr i8, ptr %.119663387, i64 40
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !372 ; 2 uses
  %i.bbr = getelementptr i8, ptr %.119663387, i64 48
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !374 ; 2 uses
  %i.bbt = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.bbu = icmp eq ptr %i.bbt, null
  br i1 %i.bbu, label %bb.rl, label %pm_string_node_create_unescaped.exit

bb.rl:                                            ; preds = %bb.rk
  %i.bbv = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bbw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bbv, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_string_node_create_unescaped.exit:             ; preds = %bb.rk
  %i.bbx = getelementptr i8, ptr %.119663387, i64 72
  %i.bby = load i8, ptr %i.bao, align 1, !tbaa !49 ; 2 uses
  %i.bbz = load i32, ptr %0, align 8, !tbaa !109
  %i.bca = add i32 %i.bbz, 1                      ; 2 uses
  store i32 %i.bca, ptr %0, align 8, !tbaa !109
  %switch.selectcmp24.i = icmp eq i8 %i.bby, -1
  %switch.selectcmp.i = icmp eq i8 %i.bby, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 18, i16 0
  %switch.select25.i = select i1 %switch.selectcmp24.i, i16 32, i16 %switch.select.i
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bbt, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bbx, i64 24, i1 false)
  store i16 141, ptr %i.bbt, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2642 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 2
  store i16 %switch.select25.i, ptr %.sroa.2.0..sroa_idx.i2642, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2643 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 4
  store i32 %i.bca, ptr %.sroa.3.0..sroa_idx.i2643, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2644 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 8 ; 2 uses
  store ptr %i.bbq, ptr %.sroa.4.0..sroa_idx.i2644, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2645 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16 ; 2 uses
  store ptr %i.bbs, ptr %.sroa.5.0..sroa_idx.i2645, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2646 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 24
  %.sroa.10.0..sroa_idx.i2648 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2646, i8 0, i64 16, i1 false)
  store ptr %i.bbq, ptr %.sroa.10.0..sroa_idx.i2648, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i2649 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 48
  store ptr %i.bbs, ptr %.sroa.11.0..sroa_idx.i2649, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i2650 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i2650, i8 0, i64 16, i1 false)
  %i.bcb = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %79, ptr noundef nonnull %i.baf, ptr noundef %80) ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bcc = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.bcd = icmp eq ptr %i.bcc, null
  br i1 %i.bcd, label %bb.rm, label %pm_interpolated_symbol_node_append.exit2664

bb.rm:                                            ; preds = %pm_string_node_create_unescaped.exit
  %i.bce = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bcf = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bce, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_symbol_node_append.exit2664:      ; preds = %pm_string_node_create_unescaped.exit
  %i.bcg = load i32, ptr %0, align 8, !tbaa !109
  %i.bch = add i32 %i.bcg, 1                      ; 2 uses
  store i32 %i.bch, ptr %0, align 8, !tbaa !109
  store i16 86, ptr %i.bcc, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2654 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i2654, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2655 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 4
  store i32 %i.bch, ptr %.sroa.3.0..sroa_idx.i2655, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2656 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i2657 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 16 ; 5 uses
  store ptr %.val2215, ptr %.sroa.5.0..sroa_idx.i2657, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2658 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 24 ; 2 uses
  %.sroa.11.0..sroa_idx.i2661 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 64
  %i.bci = getelementptr i8, ptr %i.bcc, i64 40   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2658, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2661, i8 0, i64 16, i1 false)
  %i.bcj = load ptr, ptr %.sroa.4.0..sroa_idx.i2644, align 8, !tbaa !133
  store ptr %i.bcj, ptr %.sroa.4.0..sroa_idx.i2656, align 8, !tbaa !370
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.bcc, ptr noundef nonnull %i.bci, ptr noundef nonnull %i.bbt)
  %i.bck = load ptr, ptr %.sroa.5.0..sroa_idx.i2657, align 8, !tbaa !371 ; 2 uses
  %i.bcl = load ptr, ptr %.sroa.5.0..sroa_idx.i2645, align 8, !tbaa !134 ; 2 uses
  %i.bcm = icmp ugt ptr %i.bck, %i.bcl
  %..i2663 = select i1 %i.bcm, ptr %i.bck, ptr %i.bcl
  store ptr %..i2663, ptr %.sroa.5.0..sroa_idx.i2657, align 8, !tbaa !371
  %i.bcn = load i64, ptr %i.bci, align 8, !tbaa !367
  %i.bco = icmp eq i64 %i.bcn, 0
  br i1 %i.bco, label %bb.rn, label %pm_interpolated_symbol_node_append.exit2666

bb.rn:                                            ; preds = %pm_interpolated_symbol_node_append.exit2664
  %i.bcp = load ptr, ptr %.sroa.6.0..sroa_idx.i2658, align 8, !tbaa !369
  %i.bcq = icmp eq ptr %i.bcp, null
  br i1 %i.bcq, label %bb.ro, label %pm_interpolated_symbol_node_append.exit2666

bb.ro:                                            ; preds = %bb.rn
  %i.bcr = getelementptr i8, ptr %i.bcb, i64 8
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !133
  store ptr %i.bcs, ptr %.sroa.4.0..sroa_idx.i2656, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit2666

pm_interpolated_symbol_node_append.exit2666:      ; preds = %pm_interpolated_symbol_node_append.exit2664, %bb.rn, %bb.ro
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.bcc, ptr noundef nonnull %i.bci, ptr noundef nonnull %i.bcb)
  %i.bct = load ptr, ptr %.sroa.5.0..sroa_idx.i2657, align 8, !tbaa !371 ; 2 uses
  %i.bcu = getelementptr i8, ptr %i.bcb, i64 16
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !134 ; 2 uses
  %i.bcw = icmp ugt ptr %i.bct, %i.bcv
  %..i2665 = select i1 %i.bcw, ptr %i.bct, ptr %i.bcv
  store ptr %..i2665, ptr %.sroa.5.0..sroa_idx.i2657, align 8, !tbaa !371
  tail call void @free(ptr noundef nonnull %.119663387) #27
  br label %bb.rq

bb.rp:                                            ; preds = %bb.rg
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 19452, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.rq:                                            ; preds = %pm_interpolated_symbol_node_append.exit, %pm_interpolated_symbol_node_append.exit2666, %bb.rf
  %.21967 = phi ptr [ %i.bay, %bb.rf ], [ %.119663387, %pm_interpolated_symbol_node_append.exit ], [ %i.bcc, %pm_interpolated_symbol_node_append.exit2666 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  %.val2093.pr = load i32, ptr %i.b, align 8, !tbaa !170
  %i.bcx = icmp eq i32 %.val2093.pr, 148
  br i1 %i.bcx, label %.lr.ph3388, label %._crit_edge3389, !llvm.loop !375

._crit_edge3389:                                  ; preds = %bb.rq
  %i.bcy = load i64, ptr %i.bap, align 8, !tbaa !294
  %.not.i2667 = icmp eq i64 %i.bcy, 0
  br i1 %.not.i2667, label %bb.rr, label %bb.rt

bb.rr:                                            ; preds = %._crit_edge3389
  %i.bcz = load ptr, ptr %i.baq, align 8, !tbaa !298
  %.not15.i2669 = icmp eq ptr %i.bcz, null
  br i1 %.not15.i2669, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  %i.bda = getelementptr i8, ptr %.21967, i64 8
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !133
  store ptr %i.bdb, ptr %i.bar, align 8, !tbaa !299
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr, %._crit_edge3389
  tail call void @pm_node_list_append(ptr noundef nonnull %i.bap, ptr noundef nonnull %.21967) #27
  %i.bdc = getelementptr i8, ptr %.21967, i64 16
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !134
  store ptr %i.bdd, ptr %i.bas, align 8, !tbaa !300
  %i.bde = load i16, ptr %.21967, align 8, !tbaa !115 ; 2 uses
  switch i16 %i.bde, label %bb.ru [
    i16 6, label %bb.rv
    i16 65, label %bb.rv
    i16 122, label %bb.rv
  ]

bb.ru:                                            ; preds = %bb.rt
  %i.bdf = getelementptr i8, ptr %.21967, i64 2
  %i.bdg = load i16, ptr %i.bdf, align 2, !tbaa !116
  %i.bdh = and i16 %i.bdg, 2
  %.not16.i2668 = icmp eq i16 %i.bdh, 0
  br i1 %.not16.i2668, label %bb.rv, label %bb.rw

bb.rv:                                            ; preds = %bb.ru, %bb.rt, %bb.rt, %bb.rt
  %i.bdi = load i16, ptr %i.bat, align 2, !tbaa !116
  %i.bdj = and i16 %i.bdi, -3
  store i16 %i.bdj, ptr %i.bat, align 2, !tbaa !116
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  %i.bdk = icmp eq i16 %i.bde, 139
  br i1 %i.bdk, label %bb.rx, label %pm_array_node_elements_append.exit2670.backedge

bb.rx:                                            ; preds = %bb.rw
  %i.bdl = load i16, ptr %i.bat, align 2, !tbaa !116
  %i.bdm = or i16 %i.bdl, 4
  store i16 %i.bdm, ptr %i.bat, align 2, !tbaa !116
  br label %pm_array_node_elements_append.exit2670.backedge

pm_array_node_elements_append.exit2670.backedge:  ; preds = %bb.rx, %bb.rw, %expect1.exit2674
  br label %pm_array_node_elements_append.exit2670, !llvm.loop !376

expect1.exit2674:                                 ; preds = %accept1.exit2638
  %i.bdn = load ptr, ptr %i.bau, align 8, !tbaa !255 ; 3 uses
  %i.bdo = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bav, ptr noundef %i.bdn, ptr noundef %i.bdn, i32 noundef 178) #27 ; 0 uses
  store ptr %i.bdn, ptr %i.baw, align 8, !tbaa !256
  store i32 163, ptr %i.baf, align 8, !tbaa !200
  br label %pm_array_node_elements_append.exit2670.backedge

bb.ry:                                            ; preds = %pm_array_node_elements_append.exit2670, %pm_array_node_elements_append.exit2670
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  %i.bdp = icmp eq i32 %.val2141, 1
  br i1 %i.bdp, label %bb.rz, label %bb.sa

bb.rz:                                            ; preds = %bb.ry
  %i.bdq = getelementptr inbounds nuw i8, ptr %78, i64 8
  %.val2052 = load ptr, ptr %i.bdq, align 8, !tbaa !127
  %i.bdr = getelementptr inbounds nuw i8, ptr %78, i64 16
  %.val2053 = load ptr, ptr %i.bdr, align 8, !tbaa !128
  %i.bds = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bav, ptr noundef %.val2052, ptr noundef %.val2053, i32 noundef 179) #27 ; 0 uses
  %i.bdt = load ptr, ptr %i.bau, align 8, !tbaa !255 ; 2 uses
  store i32 163, ptr %81, align 8, !tbaa !7
  %.sroa.2192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 4
  store i32 0, ptr %.sroa.2192.0..sroa_idx, align 4
  %.sroa.3193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 8
  store ptr %i.bdt, ptr %.sroa.3193.0..sroa_idx, align 8, !tbaa !14
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr %i.bdt, ptr %.sroa.4194.0..sroa_idx, align 8, !tbaa !14
  br label %bb.sb

bb.sa:                                            ; preds = %.thread3307, %bb.ry
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 149, i32 noundef 179)
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.rz
  call fastcc void @pm_array_node_close_set(ptr noundef %i.bag, ptr noundef nonnull %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #27
  br label %.loopexit3341

bb.sc:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #27
  %i.bdu = getelementptr i8, ptr %0, i64 320      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %82, ptr noundef nonnull align 8 dereferenceable(24) %i.bdu, i64 24, i1 false), !tbaa.struct !163
  %i.bdv = call fastcc ptr @pm_array_node_create(ptr noundef nonnull %0, ptr noundef nonnull %82) ; 8 uses
  %i.bdw = getelementptr i8, ptr %0, i64 304      ; 5 uses
  %i.bdx = getelementptr i8, ptr %0, i64 693      ; 3 uses
  %i.bdy = add i16 %5, 1                          ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %83, i64 4
  %i.bea = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.beb = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.bec = getelementptr inbounds nuw i8, ptr %84, i64 4
  %i.bed = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.bee = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.bef = getelementptr i8, ptr %i.bdv, i64 24   ; 2 uses
  %i.beg = getelementptr i8, ptr %i.bdv, i64 48
  %i.beh = getelementptr i8, ptr %i.bdv, i64 8
  %i.bei = getelementptr i8, ptr %i.bdv, i64 16
  %i.bej = getelementptr i8, ptr %i.bdv, i64 2    ; 4 uses
  %i.bek = getelementptr i8, ptr %0, i64 336      ; 2 uses
  %i.bel = getelementptr i8, ptr %0, i64 472      ; 2 uses
  %i.bem = getelementptr i8, ptr %0, i64 328
  br label %.outer3747

.outer3747:                                       ; preds = %.outer3747.backedge, %bb.sc
  %.01969.ph = phi ptr [ null, %bb.sc ], [ %.01969.ph.be, %.outer3747.backedge ] ; 38 uses
  br label %bb.sd

bb.sd:                                            ; preds = %.outer3747, %accept1.exit.i2820
  %.val2140 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val2140, label %accept1.exit.i2820 [
    i32 149, label %bb.ub
    i32 1, label %bb.ub
    i32 161, label %bb.se
    i32 148, label %bb.sn
    i32 49, label %bb.ta
    i32 48, label %bb.tn
  ]

bb.se:                                            ; preds = %bb.sd
  %i.ben = icmp eq ptr %.01969.ph, null
  br i1 %i.ben, label %pm_array_node_elements_append.exit2679, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.beo = load i64, ptr %i.bef, align 8, !tbaa !294
  %.not.i2676 = icmp eq i64 %i.beo, 0
  br i1 %.not.i2676, label %bb.sg, label %bb.si

bb.sg:                                            ; preds = %bb.sf
  %i.bep = load ptr, ptr %i.beg, align 8, !tbaa !298
  %.not15.i2678 = icmp eq ptr %i.bep, null
  br i1 %.not15.i2678, label %bb.sh, label %bb.si

bb.sh:                                            ; preds = %bb.sg
  %i.beq = getelementptr i8, ptr %.01969.ph, i64 8
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !133
  store ptr %i.ber, ptr %i.beh, align 8, !tbaa !299
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.sg, %bb.sf
  tail call void @pm_node_list_append(ptr noundef nonnull %i.bef, ptr noundef nonnull %.01969.ph) #27
  %i.bes = getelementptr i8, ptr %.01969.ph, i64 16
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !134
  store ptr %i.bet, ptr %i.bei, align 8, !tbaa !300
  %i.beu = load i16, ptr %.01969.ph, align 8, !tbaa !115 ; 2 uses
  switch i16 %i.beu, label %bb.sj [
    i16 6, label %bb.sk
    i16 65, label %bb.sk
    i16 122, label %bb.sk
  ]

bb.sj:                                            ; preds = %bb.si
  %i.bev = getelementptr i8, ptr %.01969.ph, i64 2
  %i.bew = load i16, ptr %i.bev, align 2, !tbaa !116
  %i.bex = and i16 %i.bew, 2
  %.not16.i2677 = icmp eq i16 %i.bex, 0
  br i1 %.not16.i2677, label %bb.sk, label %bb.sl

bb.sk:                                            ; preds = %bb.sj, %bb.si, %bb.si, %bb.si
  %i.bey = load i16, ptr %i.bej, align 2, !tbaa !116
  %i.bez = and i16 %i.bey, -3
  store i16 %i.bez, ptr %i.bej, align 2, !tbaa !116
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %bb.sj
  %i.bfa = icmp eq i16 %i.beu, 139
  br i1 %i.bfa, label %bb.sm, label %pm_array_node_elements_append.exit2679

bb.sm:                                            ; preds = %bb.sl
  %i.bfb = load i16, ptr %i.bej, align 2, !tbaa !116
  %i.bfc = or i16 %i.bfb, 4
  store i16 %i.bfc, ptr %i.bej, align 2, !tbaa !116
  br label %pm_array_node_elements_append.exit2679

pm_array_node_elements_append.exit2679:           ; preds = %bb.sm, %bb.sl, %bb.se
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %.outer3747.backedge

.outer3747.backedge:                              ; preds = %pm_array_node_elements_append.exit2679, %bb.sz, %pm_interpolated_symbol_node_append.exit2770, %bb.tm, %bb.ua, %pm_interpolated_symbol_node_append.exit2818
  %.01969.ph.be = phi ptr [ %.41973, %pm_interpolated_symbol_node_append.exit2818 ], [ %.41973, %bb.ua ], [ %.31972, %bb.tm ], [ %.31972, %pm_interpolated_symbol_node_append.exit2770 ], [ %.21971, %bb.sz ], [ null, %pm_array_node_elements_append.exit2679 ]
  br label %.outer3747, !llvm.loop !377

bb.sn:                                            ; preds = %bb.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #27
  %.val2212 = load ptr, ptr %i.bdw, align 8, !tbaa !74 ; 5 uses
  store i32 164, ptr %83, align 8, !tbaa !126, !alias.scope !378
  store i32 0, ptr %i.bdz, align 4, !alias.scope !378
  store ptr %.val2212, ptr %i.bea, align 8, !tbaa !127, !alias.scope !378
  store ptr %.val2212, ptr %i.beb, align 8, !tbaa !128, !alias.scope !378
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #27
  store i32 164, ptr %84, align 8, !tbaa !126, !alias.scope !381
  store i32 0, ptr %i.bec, align 4, !alias.scope !381
  store ptr %.val2212, ptr %i.bed, align 8, !tbaa !127, !alias.scope !381
  store ptr %.val2212, ptr %i.bee, align 8, !tbaa !128, !alias.scope !381
  %i.bfd = icmp eq ptr %.01969.ph, null
  br i1 %i.bfd, label %bb.so, label %bb.sp

bb.so:                                            ; preds = %bb.sn
  %i.bfe = call fastcc ptr @pm_symbol_node_create_current_string(ptr noundef nonnull %0, ptr noundef %83, ptr noundef nonnull %i.b, ptr noundef %84)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.sz

bb.sp:                                            ; preds = %bb.sn
  %i.bff = load i16, ptr %.01969.ph, align 8, !tbaa !115
  switch i16 %i.bff, label %bb.sy [
    i16 86, label %bb.sq
    i16 143, label %bb.st
  ]

bb.sq:                                            ; preds = %bb.sp
  %i.bfg = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %83, ptr noundef nonnull %i.b, ptr noundef %84) ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bfh = getelementptr i8, ptr %.01969.ph, i64 40 ; 2 uses
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !367
  %i.bfj = icmp eq i64 %i.bfi, 0
  br i1 %i.bfj, label %bb.sr, label %pm_interpolated_symbol_node_append.exit2681

bb.sr:                                            ; preds = %bb.sq
  %i.bfk = getelementptr i8, ptr %.01969.ph, i64 24
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !369
  %i.bfm = icmp eq ptr %i.bfl, null
  br i1 %i.bfm, label %bb.ss, label %pm_interpolated_symbol_node_append.exit2681

bb.ss:                                            ; preds = %bb.sr
  %i.bfn = getelementptr i8, ptr %i.bfg, i64 8
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !133
  %i.bfp = getelementptr i8, ptr %.01969.ph, i64 8
  store ptr %i.bfo, ptr %i.bfp, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit2681

pm_interpolated_symbol_node_append.exit2681:      ; preds = %bb.sq, %bb.sr, %bb.ss
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %.01969.ph, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.bfg)
  %i.bfq = getelementptr i8, ptr %.01969.ph, i64 16 ; 2 uses
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !371 ; 2 uses
  %i.bfs = getelementptr i8, ptr %i.bfg, i64 16
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !134 ; 2 uses
  %i.bfu = icmp ugt ptr %i.bfr, %i.bft
  %..i2680 = select i1 %i.bfu, ptr %i.bfr, ptr %i.bft
  store ptr %..i2680, ptr %i.bfq, align 8, !tbaa !371
  br label %bb.sz

bb.st:                                            ; preds = %bb.sp
  %i.bfv = getelementptr i8, ptr %.01969.ph, i64 40
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !372 ; 2 uses
  %i.bfx = getelementptr i8, ptr %.01969.ph, i64 48
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !374 ; 2 uses
  %i.bfz = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.bga = icmp eq ptr %i.bfz, null
  br i1 %i.bga, label %bb.su, label %pm_string_node_create_unescaped.exit2706

bb.su:                                            ; preds = %bb.st
  %i.bgb = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bgc = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bgb, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_string_node_create_unescaped.exit2706:         ; preds = %bb.st
  %i.bgd = getelementptr i8, ptr %.01969.ph, i64 72
  %i.bge = load i8, ptr %i.bdx, align 1, !tbaa !49 ; 2 uses
  %i.bgf = load i32, ptr %0, align 8, !tbaa !109
  %i.bgg = add i32 %i.bgf, 1                      ; 2 uses
  store i32 %i.bgg, ptr %0, align 8, !tbaa !109
  %switch.selectcmp24.i2691 = icmp eq i8 %i.bge, -1
  %switch.selectcmp.i2692 = icmp eq i8 %i.bge, 1
  %switch.select.i2693 = select i1 %switch.selectcmp.i2692, i16 18, i16 0
  %switch.select25.i2694 = select i1 %switch.selectcmp24.i2691, i16 32, i16 %switch.select.i2693
  %.sroa.16.0..sroa_idx.i2695 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i2695, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bgd, i64 24, i1 false)
  store i16 141, ptr %i.bfz, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2696 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 2
  store i16 %switch.select25.i2694, ptr %.sroa.2.0..sroa_idx.i2696, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2697 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 4
  store i32 %i.bgg, ptr %.sroa.3.0..sroa_idx.i2697, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2698 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8 ; 2 uses
  store ptr %i.bfw, ptr %.sroa.4.0..sroa_idx.i2698, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2699 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 16 ; 2 uses
  store ptr %i.bfy, ptr %.sroa.5.0..sroa_idx.i2699, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2700 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 24
  %.sroa.10.0..sroa_idx.i2702 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2700, i8 0, i64 16, i1 false)
  store ptr %i.bfw, ptr %.sroa.10.0..sroa_idx.i2702, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i2703 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 48
  store ptr %i.bfy, ptr %.sroa.11.0..sroa_idx.i2703, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i2704 = getelementptr inbounds nuw i8, ptr %i.bfz, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i2704, i8 0, i64 16, i1 false)
  %i.bgh = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %83, ptr noundef nonnull %i.bdu, ptr noundef %84) ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bgi = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.bgj = icmp eq ptr %i.bgi, null
  br i1 %i.bgj, label %bb.sv, label %pm_interpolated_symbol_node_append.exit2723

bb.sv:                                            ; preds = %pm_string_node_create_unescaped.exit2706
  %i.bgk = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bgl = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bgk, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_symbol_node_append.exit2723:      ; preds = %pm_string_node_create_unescaped.exit2706
  %i.bgm = load i32, ptr %0, align 8, !tbaa !109
  %i.bgn = add i32 %i.bgm, 1                      ; 2 uses
  store i32 %i.bgn, ptr %0, align 8, !tbaa !109
  store i16 86, ptr %i.bgi, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2712 = getelementptr inbounds nuw i8, ptr %i.bgi, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i2712, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2713 = getelementptr inbounds nuw i8, ptr %i.bgi, i64 4
  store i32 %i.bgn, ptr %.sroa.3.0..sroa_idx.i2713, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2714 = getelementptr inbounds nuw i8, ptr %i.bgi, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i2715 = getelementptr inbounds nuw i8, ptr %i.bgi, i64 16 ; 5 uses
  store ptr %.val2212, ptr %.sroa.5.0..sroa_idx.i2715, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2716 = getelementptr inbounds nuw i8, ptr %i.bgi, i64 24 ; 2 uses
  %.sroa.11.0..sroa_idx.i2719 = getelementptr inbounds nuw i8, ptr %i.bgi, i64 64
  %i.bgo = getelementptr i8, ptr %i.bgi, i64 40   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2716, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2719, i8 0, i64 16, i1 false)
  %i.bgp = load ptr, ptr %.sroa.4.0..sroa_idx.i2698, align 8, !tbaa !133
  store ptr %i.bgp, ptr %.sroa.4.0..sroa_idx.i2714, align 8, !tbaa !370
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.bgi, ptr noundef nonnull %i.bgo, ptr noundef nonnull %i.bfz)
  %i.bgq = load ptr, ptr %.sroa.5.0..sroa_idx.i2715, align 8, !tbaa !371 ; 2 uses
  %i.bgr = load ptr, ptr %.sroa.5.0..sroa_idx.i2699, align 8, !tbaa !134 ; 2 uses
  %i.bgs = icmp ugt ptr %i.bgq, %i.bgr
  %..i2722 = select i1 %i.bgs, ptr %i.bgq, ptr %i.bgr
  store ptr %..i2722, ptr %.sroa.5.0..sroa_idx.i2715, align 8, !tbaa !371
  %i.bgt = load i64, ptr %i.bgo, align 8, !tbaa !367
  %i.bgu = icmp eq i64 %i.bgt, 0
  br i1 %i.bgu, label %bb.sw, label %pm_interpolated_symbol_node_append.exit2725

bb.sw:                                            ; preds = %pm_interpolated_symbol_node_append.exit2723
  %i.bgv = load ptr, ptr %.sroa.6.0..sroa_idx.i2716, align 8, !tbaa !369
  %i.bgw = icmp eq ptr %i.bgv, null
  br i1 %i.bgw, label %bb.sx, label %pm_interpolated_symbol_node_append.exit2725

bb.sx:                                            ; preds = %bb.sw
  %i.bgx = getelementptr i8, ptr %i.bgh, i64 8
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !133
  store ptr %i.bgy, ptr %.sroa.4.0..sroa_idx.i2714, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit2725

pm_interpolated_symbol_node_append.exit2725:      ; preds = %pm_interpolated_symbol_node_append.exit2723, %bb.sw, %bb.sx
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.bgi, ptr noundef nonnull %i.bgo, ptr noundef nonnull %i.bgh)
  %i.bgz = load ptr, ptr %.sroa.5.0..sroa_idx.i2715, align 8, !tbaa !371 ; 2 uses
  %i.bha = getelementptr i8, ptr %i.bgh, i64 16
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !134 ; 2 uses
  %i.bhc = icmp ugt ptr %i.bgz, %i.bhb
  %..i2724 = select i1 %i.bhc, ptr %i.bgz, ptr %i.bhb
  store ptr %..i2724, ptr %.sroa.5.0..sroa_idx.i2715, align 8, !tbaa !371
  tail call void @free(ptr noundef nonnull %.01969.ph) #27
  br label %bb.sz

bb.sy:                                            ; preds = %bb.sp
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 19537, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.sz:                                            ; preds = %pm_interpolated_symbol_node_append.exit2681, %pm_interpolated_symbol_node_append.exit2725, %bb.so
  %.21971 = phi ptr [ %i.bfe, %bb.so ], [ %.01969.ph, %pm_interpolated_symbol_node_append.exit2681 ], [ %i.bgi, %pm_interpolated_symbol_node_append.exit2725 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #27
  br label %.outer3747.backedge

bb.ta:                                            ; preds = %bb.sd
  %i.bhd = icmp eq ptr %.01969.ph, null
  br i1 %i.bhd, label %bb.tb, label %bb.td

bb.tb:                                            ; preds = %bb.ta
  %.val2209 = load ptr, ptr %i.bdw, align 8, !tbaa !74 ; 2 uses
  %i.bhe = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 9 uses
  %i.bhf = icmp eq ptr %i.bhe, null
  br i1 %i.bhf, label %bb.tc, label %pm_interpolated_symbol_node_create.exit2740

bb.tc:                                            ; preds = %bb.tb
  %i.bhg = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bhh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bhg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_symbol_node_create.exit2740:      ; preds = %bb.tb
  %i.bhi = load i32, ptr %0, align 8, !tbaa !109
  %i.bhj = add i32 %i.bhi, 1                      ; 2 uses
  store i32 %i.bhj, ptr %0, align 8, !tbaa !109
  store i16 86, ptr %i.bhe, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2731 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i2731, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2732 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 4
  store i32 %i.bhj, ptr %.sroa.3.0..sroa_idx.i2732, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2733 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 8
  store ptr %.val2209, ptr %.sroa.4.0..sroa_idx.i2733, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2734 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 16
  store ptr %.val2209, ptr %.sroa.5.0..sroa_idx.i2734, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2735 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 24
  %.sroa.11.0..sroa_idx.i2738 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2735, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2738, i8 0, i64 16, i1 false)
  br label %bb.tj

bb.td:                                            ; preds = %bb.ta
  %i.bhk = load i16, ptr %.01969.ph, align 8, !tbaa !115
  %i.bhl = icmp eq i16 %i.bhk, 143
  br i1 %i.bhl, label %bb.te, label %bb.tj

bb.te:                                            ; preds = %bb.td
  %.val2207 = load ptr, ptr %i.bdw, align 8, !tbaa !74 ; 2 uses
  %i.bhm = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 11 uses
  %i.bhn = icmp eq ptr %i.bhm, null
  br i1 %i.bhn, label %bb.tf, label %pm_interpolated_symbol_node_create.exit2755

bb.tf:                                            ; preds = %bb.te
  %i.bho = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bhp = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bho, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_symbol_node_create.exit2755:      ; preds = %bb.te
  %i.bhq = load i32, ptr %0, align 8, !tbaa !109
  %i.bhr = add i32 %i.bhq, 1                      ; 2 uses
  store i32 %i.bhr, ptr %0, align 8, !tbaa !109
  store i16 86, ptr %i.bhm, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2746 = getelementptr inbounds nuw i8, ptr %i.bhm, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i2746, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2747 = getelementptr inbounds nuw i8, ptr %i.bhm, i64 4
  store i32 %i.bhr, ptr %.sroa.3.0..sroa_idx.i2747, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2748 = getelementptr inbounds nuw i8, ptr %i.bhm, i64 8 ; 3 uses
  store ptr %.val2207, ptr %.sroa.4.0..sroa_idx.i2748, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2749 = getelementptr inbounds nuw i8, ptr %i.bhm, i64 16 ; 3 uses
  store ptr %.val2207, ptr %.sroa.5.0..sroa_idx.i2749, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2750 = getelementptr inbounds nuw i8, ptr %i.bhm, i64 24 ; 2 uses
  %.sroa.11.0..sroa_idx.i2753 = getelementptr inbounds nuw i8, ptr %i.bhm, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2750, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2753, i8 0, i64 16, i1 false)
  %i.bhs = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.bht = icmp eq ptr %i.bhs, null
  br i1 %i.bht, label %bb.tg, label %pm_symbol_node_to_string_node.exit

bb.tg:                                            ; preds = %pm_interpolated_symbol_node_create.exit2755
  %i.bhu = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bhv = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bhu, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_symbol_node_to_string_node.exit:               ; preds = %pm_interpolated_symbol_node_create.exit2755
  %i.bhw = load i8, ptr %i.bdx, align 1, !tbaa !49 ; 2 uses
  %switch.selectcmp.i2757 = icmp eq i8 %i.bhw, 1
  %switch.select.i2758 = select i1 %switch.selectcmp.i2757, i16 18, i16 0
  %switch.selectcmp12.i = icmp eq i8 %i.bhw, -1
  %switch.select13.i = select i1 %switch.selectcmp12.i, i16 32, i16 %switch.select.i2758
  %i.bhx = load i32, ptr %0, align 8, !tbaa !109
  %i.bhy = add i32 %i.bhx, 1                      ; 2 uses
  store i32 %i.bhy, ptr %0, align 8, !tbaa !109
  %i.bhz = getelementptr i8, ptr %.01969.ph, i64 8
  %i.bia = getelementptr i8, ptr %.01969.ph, i64 24
  %.sroa.6.0..sroa_idx.i2759 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 24
  %i.bib = getelementptr i8, ptr %.01969.ph, i64 40
  %.sroa.7.0..sroa_idx.i2760 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 40
  %i.bic = getelementptr i8, ptr %.01969.ph, i64 56
  %.sroa.8.0..sroa_idx.i2761 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 56
  %i.bid = getelementptr i8, ptr %.01969.ph, i64 72
  %.sroa.9.0..sroa_idx.i2762 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 72
  %.sroa.2.0..sroa_idx.i2763 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 2
  %.sroa.3.0..sroa_idx.i2764 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 4
  %.sroa.4.0..sroa_idx.i2765 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i2766 = getelementptr inbounds nuw i8, ptr %i.bhs, i64 16
  %i.bie = load <2 x ptr>, ptr %i.bhz, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2759, ptr noundef nonnull align 8 dereferenceable(16) %i.bia, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i2760, ptr noundef nonnull align 8 dereferenceable(16) %i.bib, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i2761, ptr noundef nonnull align 8 dereferenceable(16) %i.bic, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i2762, ptr noundef nonnull align 8 dereferenceable(24) %i.bid, i64 24, i1 false)
  store i16 141, ptr %i.bhs, align 8, !tbaa !110
  store i16 %switch.select13.i, ptr %.sroa.2.0..sroa_idx.i2763, align 2, !tbaa !110
  store i32 %i.bhy, ptr %.sroa.3.0..sroa_idx.i2764, align 4, !tbaa !7
  store <2 x ptr> %i.bie, ptr %.sroa.4.0..sroa_idx.i2765, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %.01969.ph) #27
  %i.bif = getelementptr i8, ptr %i.bhm, i64 40   ; 2 uses
  %i.big = load i64, ptr %i.bif, align 8, !tbaa !367
  %i.bih = icmp eq i64 %i.big, 0
  br i1 %i.bih, label %bb.th, label %pm_interpolated_symbol_node_append.exit2768

bb.th:                                            ; preds = %pm_symbol_node_to_string_node.exit
  %i.bii = load ptr, ptr %.sroa.6.0..sroa_idx.i2750, align 8, !tbaa !369
  %i.bij = icmp eq ptr %i.bii, null
  br i1 %i.bij, label %bb.ti, label %pm_interpolated_symbol_node_append.exit2768

bb.ti:                                            ; preds = %bb.th
  %i.bik = load ptr, ptr %.sroa.4.0..sroa_idx.i2765, align 8, !tbaa !133
  store ptr %i.bik, ptr %.sroa.4.0..sroa_idx.i2748, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit2768

pm_interpolated_symbol_node_append.exit2768:      ; preds = %pm_symbol_node_to_string_node.exit, %bb.th, %bb.ti
end_hunk_0
begin_hunk_1_@parse_expression_infix:bb.a
bb.ap:                                            ; preds = %bb.ao
  %i.ey = load i8, ptr %i.er, align 1, !tbaa !67
  %i.ez = icmp eq i8 %i.ey, 95
  br i1 %i.ez, label %bb.aq, label %pm_token_is_numbered_parameter.exit1047.thread

bb.aq:                                            ; preds = %bb.ap
  %i.fa = getelementptr i8, ptr %i.er, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !67  ; 2 uses
  %.not.i1046 = icmp eq i8 %i.fb, 48
  br i1 %.not.i1046, label %pm_token_is_numbered_parameter.exit1047.thread, label %pm_token_is_numbered_parameter.exit1047

pm_token_is_numbered_parameter.exit1047:          ; preds = %bb.aq
  %i.fc = tail call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.fb) #27
  br i1 %i.fc, label %bb.ar, label %pm_token_is_numbered_parameter.exit1047.thread

bb.ar:                                            ; preds = %pm_token_is_numbered_parameter.exit1047
  %i.fd = getelementptr i8, ptr %0, i64 472
  %i.fe = load ptr, ptr %i.eq, align 8, !tbaa !133 ; 2 uses
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !134
  %i.fg = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.fd, ptr noundef %i.fe, ptr noundef %i.ff, i32 noundef 213, ptr noundef %i.fe) #27 ; 0 uses
  tail call void @pm_visit_node(ptr noundef nonnull %1, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  br label %pm_token_is_numbered_parameter.exit1047.thread

pm_token_is_numbered_parameter.exit1047.thread:   ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %pm_token_is_numbered_parameter.exit1047
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow952 = add nuw nsw i16 %5, 1
  %i.fh = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 97, i16 noundef zeroext %narrow952)
  %i.fi = getelementptr i8, ptr %1, i64 24
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !320
  %i.fk = getelementptr i8, ptr %1, i64 28
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !317
  %i.fm = call fastcc ptr @pm_local_variable_or_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.fh, i32 noundef %i.fj, i32 noundef %i.fl)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.as:                                            ; preds = %bb.ag
  %i.fn = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !116
  %i.fp = and i16 %i.fo, 8
  %.not947 = icmp eq i16 %i.fp, 0
  br i1 %.not947, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !283
  %i.fs = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !284
  tail call fastcc void @pm_refute_numbered_parameter(ptr noundef nonnull %0, ptr noundef %i.fr, ptr noundef %i.ft)
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !283
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !284
  %i.fw = tail call fastcc i32 @pm_parser_local_add_location(ptr noundef nonnull %0, ptr noundef %i.fu, ptr noundef %i.fv, i32 noundef 1)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow951 = add nuw nsw i16 %5, 1
  %i.fx = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 97, i16 noundef zeroext %narrow951)
  %i.fy = call fastcc ptr @pm_local_variable_or_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.fx, i32 noundef %i.fw, i32 noundef 0)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.au:                                            ; preds = %bb.as
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.fz = load i16, ptr %i.fn, align 2, !tbaa !116
  %i.ga = and i16 %i.fz, 256
  %.not948 = icmp eq i16 %i.ga, 0
  br i1 %.not948, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %narrow950 = add nuw nsw i16 %5, 1
  %i.gb = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 97, i16 noundef zeroext %narrow950)
  %i.gc = call fastcc ptr @pm_index_or_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.gb)
  br label %.critedge.thread

bb.aw:                                            ; preds = %bb.au
  %i.gd = tail call fastcc zeroext i1 @pm_call_node_writable_p(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.gd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ge = getelementptr i8, ptr %1, i64 48
  tail call fastcc void @parse_write_name(ptr noundef nonnull %0, ptr noundef %i.ge)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.gf = getelementptr i8, ptr %1, i64 8
  %.val1005 = load ptr, ptr %i.gf, align 8, !tbaa !133
  %i.gg = getelementptr i8, ptr %1, i64 16
  %.val1006 = load ptr, ptr %i.gg, align 8, !tbaa !134
  %i.gh = getelementptr i8, ptr %0, i64 472
  %i.gi = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gh, ptr noundef %.val1005, ptr noundef %.val1006, i32 noundef 294) #27 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call fastcc void @parse_call_operator_write(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6)
  %narrow949 = add nuw nsw i16 %5, 1
  %i.gj = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 97, i16 noundef zeroext %narrow949)
  %i.gk = call fastcc ptr @pm_call_or_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.gj)
  br label %.critedge.thread

bb.ba:                                            ; preds = %bb.ag
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val988 = load ptr, ptr %i.gl, align 8, !tbaa !127
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val989 = load ptr, ptr %i.gm, align 8, !tbaa !128
  %i.gn = getelementptr i8, ptr %0, i64 472
  %i.go = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gn, ptr noundef %.val988, ptr noundef %.val989, i32 noundef 246) #27 ; 0 uses
  br label %.critedge.thread

bb.bb:                                            ; preds = %bb.ag
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val986 = load ptr, ptr %i.gp, align 8, !tbaa !127
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val987 = load ptr, ptr %i.gq, align 8, !tbaa !128
  %i.gr = getelementptr i8, ptr %0, i64 472
  %i.gs = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gr, ptr noundef %.val986, ptr noundef %.val987, i32 noundef 97) #27 ; 0 uses
  br label %.critedge.thread

bb.bc:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.gt = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.gt, label %bb.cc [
    i16 10, label %bb.bd
    i16 111, label %bb.bd
    i16 62, label %bb.be
    i16 30, label %bb.bk
    i16 37, label %bb.bl
    i16 42, label %bb.bm
    i16 79, label %bb.bn
    i16 88, label %bb.bo
    i16 96, label %bb.bp
    i16 19, label %bb.bt
    i16 106, label %bb.cb
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  %i.gu = getelementptr i8, ptr %0, i64 472
  %i.gv = getelementptr i8, ptr %1, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !133 ; 3 uses
  %i.gx = getelementptr i8, ptr %1, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !134 ; 2 uses
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.gu, ptr noundef %i.gw, ptr noundef %i.gy, i32 noundef 293, i32 noundef %i.hc, ptr noundef %i.gw) #27 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow946 = add nuw nsw i16 %5, 1
  %i.he = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow946) ; 2 uses
  %i.hf = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.bf, label %pm_node_alloc.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.hi = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hh, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.be
  %i.hj = load i32, ptr %0, align 8, !tbaa !109
  %i.hk = add i32 %i.hj, 1                        ; 2 uses
  store i32 %i.hk, ptr %0, align 8, !tbaa !109
  %i.hl = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !133 ; 3 uses
  %i.hn = getelementptr i8, ptr %i.he, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !134
  %i.hp = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.hp, label %bb.bj [
    i16 62, label %bb.bg
    i16 10, label %bb.bh
    i16 111, label %bb.bi
  ]

bb.bg:                                            ; preds = %pm_node_alloc.exit.i
  %i.hq = getelementptr i8, ptr %1, i64 24
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !423
  br label %pm_global_variable_operator_write_node_create.exit

bb.bh:                                            ; preds = %pm_node_alloc.exit.i
  %i.hs = getelementptr i8, ptr %1, i64 24
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !425
  br label %pm_global_variable_operator_write_node_create.exit

bb.bi:                                            ; preds = %pm_node_alloc.exit.i
  %i.hu = getelementptr i8, ptr %1, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !134
  %i.hw = getelementptr i8, ptr %0, i64 576
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hm to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.hw, ptr noundef %i.hm, i64 noundef %i.hz) #27
  br label %pm_global_variable_operator_write_node_create.exit

bb.bj:                                            ; preds = %pm_node_alloc.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 4157, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_write_name) #26
  unreachable

pm_global_variable_operator_write_node_create.exit: ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i.i = phi i32 [ %i.hr, %bb.bg ], [ %i.ht, %bb.bh ], [ %i.ia, %bb.bi ]
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hl, i64 16, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !127 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !128 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 -1
  %i.ig = getelementptr i8, ptr %0, i64 576
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ic to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.ig, ptr noundef %i.ic, i64 noundef %i.ij) #27
  store i16 60, ptr %i.hf, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 %i.hk, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.hm, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr %i.ho, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store i32 %.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  store ptr %i.ic, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  store ptr %i.ie, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  store ptr %i.he, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  store i32 %i.ik, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !7
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bk:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow945 = add nuw nsw i16 %5, 1
  %i.il = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow945)
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1018 = load ptr, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1019 = load ptr, ptr %i.in, align 8
  %i.io = tail call fastcc ptr @pm_class_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1018, ptr %.val1019, ptr noundef %i.il)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bl:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow944 = add nuw nsw i16 %5, 1
  %i.ip = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow944)
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1020 = load ptr, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1021 = load ptr, ptr %i.ir, align 8
  %i.is = tail call fastcc ptr @pm_constant_path_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1020, ptr %.val1021, ptr noundef %i.ip)
  %i.it = tail call fastcc ptr @parse_shareable_constant_write(ptr noundef nonnull %0, ptr noundef %i.is)
  br label %.critedge.thread

bb.bm:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow943 = add nuw nsw i16 %5, 1
  %i.iu = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow943)
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1022 = load ptr, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1023 = load ptr, ptr %i.iw, align 8
  %i.ix = tail call fastcc ptr @pm_constant_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1022, ptr %.val1023, ptr noundef %i.iu)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %i.iy = tail call fastcc ptr @parse_shareable_constant_write(ptr noundef nonnull %0, ptr noundef %i.ix)
  br label %.critedge.thread

bb.bn:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow942 = add nuw nsw i16 %5, 1
  %i.iz = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow942)
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1024 = load ptr, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1025 = load ptr, ptr %i.jb, align 8
  %i.jc = tail call fastcc ptr @pm_instance_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1024, ptr %.val1025, ptr noundef %i.iz)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bo:                                            ; preds = %bb.bc
  %i.jd = tail call fastcc i32 @pm_parser_local_add_constant(ptr noundef nonnull %0, ptr noundef nonnull @.str.183)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow941 = add nuw nsw i16 %5, 1
  %i.je = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow941)
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1030 = load ptr, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1031 = load ptr, ptr %i.jg, align 8
  %i.jh = tail call fastcc ptr @pm_local_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1030, ptr %.val1031, ptr noundef %i.je, i32 noundef %i.jd, i32 noundef 0)
  tail call void @pm_visit_node(ptr noundef nonnull %1, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bp:                                            ; preds = %bb.bc
  %i.ji = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !133 ; 3 uses
  %i.jk = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !134
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp eq i64 %i.jo, 2
  br i1 %i.jp, label %bb.bq, label %pm_token_is_numbered_parameter.exit1049.thread

bb.bq:                                            ; preds = %bb.bp
  %i.jq = load i8, ptr %i.jj, align 1, !tbaa !67
  %i.jr = icmp eq i8 %i.jq, 95
  br i1 %i.jr, label %bb.br, label %pm_token_is_numbered_parameter.exit1049.thread

bb.br:                                            ; preds = %bb.bq
  %i.js = getelementptr i8, ptr %i.jj, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !67  ; 2 uses
  %.not.i1048 = icmp eq i8 %i.jt, 48
  br i1 %.not.i1048, label %pm_token_is_numbered_parameter.exit1049.thread, label %pm_token_is_numbered_parameter.exit1049

pm_token_is_numbered_parameter.exit1049:          ; preds = %bb.br
  %i.ju = tail call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.jt) #27
  br i1 %i.ju, label %bb.bs, label %pm_token_is_numbered_parameter.exit1049.thread

bb.bs:                                            ; preds = %pm_token_is_numbered_parameter.exit1049
  %i.jv = getelementptr i8, ptr %0, i64 472
  %i.jw = load ptr, ptr %i.ji, align 8, !tbaa !133 ; 2 uses
  %i.jx = load ptr, ptr %i.jk, align 8, !tbaa !134
  %i.jy = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.jv, ptr noundef %i.jw, ptr noundef %i.jx, i32 noundef 213, ptr noundef %i.jw) #27 ; 0 uses
  tail call void @pm_visit_node(ptr noundef nonnull %1, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  br label %pm_token_is_numbered_parameter.exit1049.thread

pm_token_is_numbered_parameter.exit1049.thread:   ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs, %pm_token_is_numbered_parameter.exit1049
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow940 = add nuw nsw i16 %5, 1
  %i.jz = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow940)
  %i.ka = getelementptr i8, ptr %1, i64 24
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !320
  %i.kc = getelementptr i8, ptr %1, i64 28
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !317
  %i.ke = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1028 = load ptr, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1029 = load ptr, ptr %i.kf, align 8
  %i.kg = tail call fastcc ptr @pm_local_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1028, ptr %.val1029, ptr noundef %i.jz, i32 noundef %i.kb, i32 noundef %i.kd)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bt:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.kh = getelementptr i8, ptr %1, i64 2
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !116
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %i.kk = and i32 %i.kj, 8
  %.not935 = icmp eq i32 %i.kk, 0
  br i1 %.not935, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kl = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !283
  %i.kn = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !284
  tail call fastcc void @pm_refute_numbered_parameter(ptr noundef nonnull %0, ptr noundef %i.km, ptr noundef %i.ko)
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !283
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !284
  %i.kr = tail call fastcc i32 @pm_parser_local_add_location(ptr noundef nonnull %0, ptr noundef %i.kp, ptr noundef %i.kq, i32 noundef 1)
  %narrow939 = add nuw nsw i16 %5, 1
  %i.ks = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow939)
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1026 = load ptr, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1027 = load ptr, ptr %i.ku, align 8
  %i.kv = tail call fastcc ptr @pm_local_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1026, ptr %.val1027, ptr noundef %i.ks, i32 noundef %i.kr, i32 noundef 0)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bv:                                            ; preds = %bb.bt
  %i.kw = and i32 %i.kj, 256
  %.not936 = icmp eq i32 %i.kw, 0
  br i1 %.not936, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %narrow938 = add nuw nsw i16 %5, 1
  %i.kx = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow938)
  %i.ky = call fastcc ptr @pm_index_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.kx)
  br label %.critedge.thread

bb.bx:                                            ; preds = %bb.bv
  %i.kz = tail call fastcc zeroext i1 @pm_call_node_writable_p(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.kz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.la = getelementptr i8, ptr %1, i64 48
  tail call fastcc void @parse_write_name(ptr noundef nonnull %0, ptr noundef %i.la)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.lb = getelementptr i8, ptr %1, i64 8
  %.val1003 = load ptr, ptr %i.lb, align 8, !tbaa !133
  %i.lc = getelementptr i8, ptr %1, i64 16
  %.val1004 = load ptr, ptr %i.lc, align 8, !tbaa !134
  %i.ld = getelementptr i8, ptr %0, i64 472
  %i.le = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ld, ptr noundef %.val1003, ptr noundef %.val1004, i32 noundef 294) #27 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call fastcc void @parse_call_operator_write(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6)
  %narrow937 = add nuw nsw i16 %5, 1
  %i.lf = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow937)
  %i.lg = call fastcc ptr @pm_call_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.lf)
  br label %.critedge.thread

bb.cb:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val = load ptr, ptr %i.lh, align 8, !tbaa !127
  %i.li = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val985 = load ptr, ptr %i.li, align 8, !tbaa !128
  %i.lj = getelementptr i8, ptr %0, i64 472
  %i.lk = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.lj, ptr noundef %.val, ptr noundef %.val985, i32 noundef 202) #27 ; 0 uses
  br label %.critedge.thread

bb.cc:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
end_hunk_1
begin_hunk_2_@parse_targets:bb.a
  %i.n = getelementptr i8, ptr %0, i64 328        ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 336        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 472
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %.055 = phi i1 [ %i.k, %.lr.ph ], [ %.1.ph, %bb.s ] ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i50 = load i32, ptr %i.i, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i50, label %bb.l [
    i32 159, label %bb.d
    i32 124, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br i1 %.055, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !256
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !255
  %i.s = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r, i32 noundef 191) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.3.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !170
  %i.u = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.t)
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 101, i16 noundef zeroext %i.l)
  %i.w = tail call fastcc ptr @parse_target(ptr noundef nonnull %0, ptr noundef %i.v, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.048 = phi ptr [ %i.w, %bb.g ], [ null, %bb.f ] ; 3 uses
  %i.x = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %pm_splat_node_create.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.z, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_splat_node_create.exit:                        ; preds = %bb.h
  %i.ab = icmp eq ptr %.048, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.ab, label %pm_splat_node_create.exit.cont, label %pm_splat_node_create.exit.else

pm_splat_node_create.exit.else:                   ; preds = %pm_splat_node_create.exit
  %.048.sroa.gep = getelementptr i8, ptr %.048, i64 16
  %.sroa.9.0.i.else.val = load ptr, ptr %.048.sroa.gep, align 8, !tbaa !14
  br label %pm_splat_node_create.exit.cont

pm_splat_node_create.exit.cont:                   ; preds = %pm_splat_node_create.exit, %pm_splat_node_create.exit.else
  %.sroa.9.0.i = phi ptr [ %.sroa.4.0.copyload, %pm_splat_node_create.exit ], [ %.sroa.9.0.i.else.val, %pm_splat_node_create.exit.else ]
  store i16 139, ptr %i.x, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %.sroa.3.0.copyload, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %.sroa.4.0.copyload, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %.048, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !105
  tail call fastcc void @pm_multi_target_node_targets_append(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef nonnull %i.x)
  br label %bb.s

bb.j:                                             ; preds = %bb.c
  %i.ac = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %context_push.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 41, ptr %i.ac, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !253
  store ptr %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.j, %bb.k
  %i.ae = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 92, i16 noundef zeroext %i.l)
  %i.af = tail call fastcc ptr @parse_target(ptr noundef nonnull %0, ptr noundef %i.ae, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call fastcc void @pm_multi_target_node_targets_append(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.af)
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !253 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.ag) #27
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !253
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.aj = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %.val.i50)
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 92, i16 noundef zeroext %i.l)
  %i.al = tail call fastcc ptr @parse_target(ptr noundef nonnull %0, ptr noundef %i.ak, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call fastcc void @pm_multi_target_node_targets_append(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.al)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %.val = load i32, ptr %i.i, align 8, !tbaa !170
  %i.am = icmp eq i32 %.val, 1
  br i1 %i.am, label %accept1.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %0, i64 320
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !126
  %i.ap = icmp eq i32 %i.ao, 3
  br i1 %i.ap, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.2, i32 noundef 4458, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_implicit_rest_node_create) #26
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.r, label %pm_implicit_rest_node_create.exit

bb.r:                                             ; preds = %bb.q
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.at = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.as, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_implicit_rest_node_create.exit:                ; preds = %bb.q
  %i.au = load i32, ptr %0, align 8, !tbaa !109
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %0, align 8, !tbaa !109
  store i16 70, ptr %i.aq, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.av, ptr %.sroa.3.0..sroa_idx.i52, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load <2 x ptr>, ptr %i.n, align 8, !tbaa !14
  store <2 x ptr> %i.aw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  tail call fastcc void @pm_multi_target_node_targets_append(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef nonnull %i.aq)
  br label %accept1.exit

bb.s:                                             ; preds = %context_push.exit, %bb.m, %pm_splat_node_create.exit.cont
  %.1.ph = phi i1 [ %.055, %bb.m ], [ %.055, %context_push.exit ], [ true, %pm_splat_node_create.exit.cont ]
  %.val.i.pr = load i32, ptr %i.i, align 8, !tbaa !170
  %i.ax = icmp eq i32 %.val.i.pr, 3
  br i1 %i.ax, label %bb.c, label %accept1.exit, !llvm.loop !439

accept1.exit:                                     ; preds = %bb.s, %bb.n, %pm_multi_target_node_create.exit, %pm_implicit_rest_node_create.exit
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_multi_write_node_create(ptr nofree noundef captures(none) %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i16, ptr %3, align 8, !tbaa !115
  %i.f = icmp eq i16 %i.e, 6
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.g = getelementptr i8, ptr %3, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %pm_implicit_array_write_flags.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %pm_node_alloc.exit
  br label %pm_implicit_array_write_flags.exit

pm_implicit_array_write_flags.exit:               ; preds = %bb.c, %bb.d
  %.0.i = phi i16 [ 0, %bb.d ], [ 4, %bb.c ]
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.n = getelementptr i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.p = getelementptr i8, ptr %1, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = getelementptr i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !438
  %i.s = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.t = getelementptr i8, ptr %1, i64 80
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr i8, ptr %1, i64 96
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr i8, ptr %2, i64 8
  store i16 106, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %.0.i, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.r, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !14
  store <2 x ptr> %i.w, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %3, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !105
  tail call void @free(ptr noundef %1) #27
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_hash_node_create(ptr nofree noundef captures(none) %0, ptr %.8.val, ptr %.16.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  store i16 65, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.16.val, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.8.val, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.16.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.h, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.h, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @expect1_opening(ptr noundef %0, i32 noundef range(i32 2, 34) %1, i32 noundef range(i32 32, 292) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !170
  %i.b = icmp eq i32 %.val.i, %1
  br i1 %i.b, label %accept1.exit.thread, label %accept1.exit

accept1.exit.thread:                              ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.b

accept1.exit:                                     ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.e = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.g = getelementptr i8, ptr %0, i64 472
  %i.h = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.g, ptr noundef %i.d, ptr noundef %i.f, i32 noundef %2) #27 ; 0 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.j = getelementptr i8, ptr %0, i64 320
  %i.k = getelementptr i8, ptr %0, i64 328
  store ptr %i.i, ptr %i.k, align 8, !tbaa !256
  store i32 163, ptr %i.j, align 8, !tbaa !200
  br label %bb.b

bb.b:                                             ; preds = %accept1.exit.thread, %accept1.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_string_node_create_current_string(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 693
  %i.f = load i8, ptr %i.e, align 1, !tbaa !49    ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !126
  %i.h = icmp eq i32 %i.g, 164                    ; 2 uses
  %.pn.i = select i1 %i.h, ptr %2, ptr %1
  %.in.i = getelementptr i8, ptr %.pn.i, i64 8
  %i.i = load ptr, ptr %.in.i, align 8, !tbaa !127
  %i.j = load i32, ptr %3, align 8, !tbaa !126
  %i.k = icmp eq i32 %i.j, 164                    ; 2 uses
  %.pn23.i = select i1 %i.k, ptr %2, ptr %3
  %.in22.i = getelementptr i8, ptr %.pn23.i, i64 16
  %i.l = load ptr, ptr %.in22.i, align 8, !tbaa !128
  %i.m = load i32, ptr %0, align 8, !tbaa !109
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !109
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit.i
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %pm_node_alloc.exit.i
  %i.q = phi <2 x ptr> [ %i.p, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit.i ]
  %i.r = getelementptr i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !14
  br i1 %i.k, label %pm_string_node_create_unescaped.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %3, i64 8
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !14
  br label %pm_string_node_create_unescaped.exit

pm_string_node_create_unescaped.exit:             ; preds = %bb.d, %bb.e
  %i.v = phi <2 x ptr> [ %i.u, %bb.e ], [ splat (ptr null), %bb.d ]
  %i.w = getelementptr i8, ptr %0, i64 640        ; 2 uses
  %switch.selectcmp24.i = icmp eq i8 %i.f, -1
  %switch.selectcmp.i = icmp eq i8 %i.f, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 18, i16 0
  %switch.select25.i = select i1 %switch.selectcmp24.i, i16 32, i16 %switch.select.i
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i16 141, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %switch.select25.i, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.n, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x ptr> %i.q, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x ptr> %i.s, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store <2 x ptr> %i.v, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_strings(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.pm_token_t, align 8         ; 21 uses
  %5 = alloca %struct.pm_string_t, align 8        ; 10 uses
  %6 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %7 = alloca %struct.pm_node_list, align 8       ; 7 uses
  %8 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %9 = alloca %struct.pm_token_t, align 8         ; 6 uses
  %10 = alloca %struct.pm_string_t, align 8       ; 7 uses
  %11 = alloca %struct.pm_node_list, align 8      ; 8 uses
  %12 = alloca %struct.pm_node_list, align 8      ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  %i.c = icmp eq i32 %i.b, 147
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %0, i64 328        ; 12 uses
  %i.f = getelementptr i8, ptr %0, i64 320        ; 18 uses
  %.sroa.gep487 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %.sroa.gep489 = getelementptr i8, ptr %0, i64 336 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.h = getelementptr i8, ptr %0, i64 472        ; 15 uses
  %i.i = getelementptr i8, ptr %0, i64 693        ; 8 uses
  %i.j = getelementptr i8, ptr %0, i64 640        ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 304        ; 4 uses
  %.sroa.4467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.5468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %.sroa.6469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.gep477 = getelementptr i8, ptr %0, i64 360 ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.p = add i16 %3, 1                            ; 2 uses
  %.sroa.gep458 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.sroa.gep460 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 672        ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 520        ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.2, i32 noundef 15969, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_strings) #26
  unreachable

thread-pre-split:                                 ; preds = %bb.bv, %bb.bn
  %.2165 = phi i1 [ true, %bb.bv ], [ %.0163534, %bb.bn ]
  %.2161 = phi ptr [ %.1160, %bb.bv ], [ %.4, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.val191.pr = load i32, ptr %i.a, align 8, !tbaa !170
  %i.s = icmp eq i32 %.val191.pr, 147
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader, %thread-pre-split
  %.0159535 = phi ptr [ %1, %.preheader ], [ %.2161, %thread-pre-split ] ; 6 uses
  %.0163534 = phi i1 [ false, %.preheader ], [ %.2165, %thread-pre-split ] ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !99
  %i.v = icmp eq i32 %i.u, 6
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @__assert_fail(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.2, i32 noundef 15978, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_strings) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !67, !range !45, !noundef !46
  %i.y = getelementptr i8, ptr %i.t, i64 17
  %i.z = load i8, ptr %i.y, align 1, !tbaa !67, !range !45, !noundef !46
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = and i1 %2, %i.aa                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !163
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val193 = load i32, ptr %i.a, align 8, !tbaa !170 ; 5 uses
  switch i32 %.val193, label %accept1.exit [
    i32 149, label %accept1.exit.thread.i
    i32 1, label %accept1.exit.i
    i32 112, label %bb.h
  ]

accept1.exit.thread.i:                            ; preds = %bb.e
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !256
  br label %expect1.exit

accept1.exit.i:                                   ; preds = %bb.e
  %i.ac = load ptr, ptr %.sroa.gep489, align 8, !tbaa !255 ; 4 uses
  %i.ad = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.ac, ptr noundef %i.ac, i32 noundef 268) #27 ; 0 uses
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !256
  store i32 163, ptr %i.f, align 8, !tbaa !200
  br label %expect1.exit

expect1.exit:                                     ; preds = %accept1.exit.thread.i, %accept1.exit.i
  %i.ae = phi ptr [ %.pre, %accept1.exit.thread.i ], [ %i.ac, %accept1.exit.i ] ; 7 uses
  %i.af = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 14 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %pm_node_alloc.exit.i.i

bb.f:                                             ; preds = %expect1.exit
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ai = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ah, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i.i:                           ; preds = %expect1.exit
  %i.aj = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %i.ak = load i32, ptr %4, align 8, !tbaa !126
  %i.al = icmp eq i32 %i.ak, 164                  ; 5 uses
  %.sroa.speculate.load.false508 = load ptr, ptr %.sroa.gep487, align 8, !tbaa !127 ; 3 uses
  %.sroa.speculated509 = select i1 %i.al, ptr %i.ae, ptr %.sroa.speculate.load.false508
  %i.am = load i32, ptr %i.f, align 8, !tbaa !126
  %i.an = icmp eq i32 %i.am, 164
  br i1 %i.an, label %pm_node_alloc.exit.i.i.cont.thread, label %bb.g

pm_node_alloc.exit.i.i.cont.thread:               ; preds = %pm_node_alloc.exit.i.i
  %i.ao = load i32, ptr %0, align 8, !tbaa !109
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %0, align 8, !tbaa !109
  %i.aq = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i.i554 = select i1 %i.al, ptr null, ptr %.sroa.speculate.load.false508
  %.sroa.8.0.i.i555 = select i1 %i.al, ptr null, ptr %i.aq
  br label %pm_string_node_create.exit

bb.g:                                             ; preds = %pm_node_alloc.exit.i.i
  %.else.val507 = load ptr, ptr %.sroa.gep489, align 8, !tbaa !128
  %i.ar = load i32, ptr %0, align 8, !tbaa !109
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr %0, align 8, !tbaa !109
  %i.at = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i.i = select i1 %i.al, ptr null, ptr %.sroa.speculate.load.false508
  %.sroa.8.0.i.i = select i1 %i.al, ptr null, ptr %i.at
  %i.au = load ptr, ptr %.sroa.gep489, align 8, !tbaa !128
  br label %pm_string_node_create.exit

pm_string_node_create.exit:                       ; preds = %pm_node_alloc.exit.i.i.cont.thread, %bb.g
  %.sroa.8.0.i.i557 = phi ptr [ %.sroa.8.0.i.i, %bb.g ], [ %.sroa.8.0.i.i555, %pm_node_alloc.exit.i.i.cont.thread ]
  %.sroa.6.0.i.i556 = phi ptr [ %.sroa.6.0.i.i, %bb.g ], [ %.sroa.6.0.i.i554, %pm_node_alloc.exit.i.i.cont.thread ]
  %i.av = phi i32 [ %i.as, %bb.g ], [ %i.ap, %pm_node_alloc.exit.i.i.cont.thread ]
  %i.aw = phi ptr [ %.else.val507, %bb.g ], [ %i.ae, %pm_node_alloc.exit.i.i.cont.thread ]
  %.sroa.12.0.i.i = phi ptr [ %i.ae, %bb.g ], [ null, %pm_node_alloc.exit.i.i.cont.thread ]
  %.sroa.14.0.i.i = phi ptr [ %i.au, %bb.g ], [ null, %pm_node_alloc.exit.i.i.cont.thread ]
  %switch.selectcmp24.i.i = icmp eq i8 %i.aj, -1
  %switch.selectcmp.i.i = icmp eq i8 %i.aj, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i16 18, i16 0
  %switch.select25.i.i = select i1 %switch.selectcmp24.i.i, i16 32, i16 %switch.select.i.i
  store i16 141, ptr %i.af, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %switch.select25.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.av, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.speculated509, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %.sroa.6.0.i.i556, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %.sroa.8.0.i.i557, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.ae, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %i.ae, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr %.sroa.12.0.i.i, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr %.sroa.14.0.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.ax = getelementptr i8, ptr %i.af, i64 72
  call void @pm_string_shared_init(ptr noundef %i.ax, ptr noundef %i.ae, ptr noundef %i.ae) #27
  br label %bb.bm

bb.h:                                             ; preds = %bb.e
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !256 ; 7 uses
  %i.az = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 15 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %pm_node_alloc.exit.i.i213

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i.i213:                        ; preds = %bb.h
  %i.bd = load i32, ptr %4, align 8, !tbaa !126
  %i.be = icmp eq i32 %i.bd, 164                  ; 5 uses
  %.sroa.speculate.load.false = load ptr, ptr %.sroa.gep487, align 8, !tbaa !127 ; 3 uses
  %.sroa.speculated = select i1 %i.be, ptr %i.ay, ptr %.sroa.speculate.load.false
  %i.bf = load i32, ptr %i.f, align 8, !tbaa !126
  %i.bg = icmp eq i32 %i.bf, 164
  br i1 %i.bg, label %pm_node_alloc.exit.i.i213.cont.thread, label %bb.j

pm_node_alloc.exit.i.i213.cont.thread:            ; preds = %pm_node_alloc.exit.i.i213
  %i.bh = load i32, ptr %0, align 8, !tbaa !109
  %i.bi = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bi, ptr %0, align 8, !tbaa !109
  %i.bj = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i.i215558 = select i1 %i.be, ptr null, ptr %.sroa.speculate.load.false
  %.sroa.8.0.i.i216559 = select i1 %i.be, ptr null, ptr %i.bj
  br label %pm_symbol_node_create.exit

bb.j:                                             ; preds = %pm_node_alloc.exit.i.i213
  %.else.val = load ptr, ptr %.sroa.gep489, align 8, !tbaa !128
  %i.bk = load i32, ptr %0, align 8, !tbaa !109
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bl, ptr %0, align 8, !tbaa !109
  %i.bm = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i.i215 = select i1 %i.be, ptr null, ptr %.sroa.speculate.load.false
  %.sroa.8.0.i.i216 = select i1 %i.be, ptr null, ptr %i.bm
  %i.bn = load ptr, ptr %.sroa.gep489, align 8, !tbaa !128
  br label %pm_symbol_node_create.exit

pm_symbol_node_create.exit:                       ; preds = %pm_node_alloc.exit.i.i213.cont.thread, %bb.j
  %.sroa.8.0.i.i216561 = phi ptr [ %.sroa.8.0.i.i216, %bb.j ], [ %.sroa.8.0.i.i216559, %pm_node_alloc.exit.i.i213.cont.thread ]
  %.sroa.6.0.i.i215560 = phi ptr [ %.sroa.6.0.i.i215, %bb.j ], [ %.sroa.6.0.i.i215558, %pm_node_alloc.exit.i.i213.cont.thread ]
  %i.bo = phi i32 [ %i.bl, %bb.j ], [ %i.bi, %pm_node_alloc.exit.i.i213.cont.thread ]
  %i.bp = phi ptr [ %.else.val, %bb.j ], [ %i.ay, %pm_node_alloc.exit.i.i213.cont.thread ]
  %.sroa.12.0.i.i217 = phi ptr [ %i.ay, %bb.j ], [ null, %pm_node_alloc.exit.i.i213.cont.thread ]
  %.sroa.14.0.i.i218 = phi ptr [ %i.bn, %bb.j ], [ null, %pm_node_alloc.exit.i.i213.cont.thread ]
  store i16 143, ptr %i.az, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i.i219 = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i.i219, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i220 = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.bo, ptr %.sroa.3.0..sroa_idx.i.i220, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i221 = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %.sroa.speculated, ptr %.sroa.4.0..sroa_idx.i.i221, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i222 = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx.i.i222, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i.i223 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %.sroa.6.0.i.i215560, ptr %.sroa.6.0..sroa_idx.i.i223, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr %.sroa.8.0.i.i216561, ptr %.sroa.8.0..sroa_idx.i.i224, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i.i225 = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store ptr %i.ay, ptr %.sroa.10.0..sroa_idx.i.i225, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i226 = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store ptr %i.ay, ptr %.sroa.11.0..sroa_idx.i.i226, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i.i227 = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store ptr %.sroa.12.0.i.i217, ptr %.sroa.12.0..sroa_idx.i.i227, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx.i.i228 = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  store ptr %.sroa.14.0.i.i218, ptr %.sroa.14.0..sroa_idx.i.i228, align 8, !tbaa !14
  %i.bq = getelementptr i8, ptr %i.az, i64 72
  call void @pm_string_shared_init(ptr noundef %i.bq, ptr noundef %i.ay, ptr noundef %i.ay) #27
  br i1 %i.ab, label %bb.bm, label %bb.k

bb.k:                                             ; preds = %pm_symbol_node_create.exit
  %.val206 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i221, align 8, !tbaa !133
  %.val207 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i222, align 8, !tbaa !134
  %i.br = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.val206, ptr noundef %.val207, i32 noundef 282) #27 ; 0 uses
  br label %bb.bm

accept1.exit:                                     ; preds = %bb.e
  %i.bs = trunc nuw i8 %i.x to i1
  br i1 %i.bs, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %accept1.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bt = icmp eq i32 %.val193, 1
  br i1 %i.bt, label %accept1.exit238.thread, label %bb.m

accept1.exit238.thread:                           ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.val212 = load ptr, ptr %i.k, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %6, align 8, !tbaa !7
  store i32 0, ptr %.sroa.4467.0..sroa_idx, align 4
  store ptr %.val212, ptr %.sroa.5468.0..sroa_idx, align 8, !tbaa !14
  store ptr %.val212, ptr %.sroa.6469.0..sroa_idx, align 8, !tbaa !14
  br label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !19
  %i.bu = icmp eq i32 %.val193, 148
  br i1 %i.bu, label %accept1.exit.thread.i231, label %accept1.exit.i230

accept1.exit.thread.i231:                         ; preds = %bb.m
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.n

accept1.exit.i230:                                ; preds = %bb.m
  %i.bv = load ptr, ptr %.sroa.gep489, align 8, !tbaa !255 ; 3 uses
  %i.bw = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.bv, ptr noundef %i.bv, i32 noundef 114) #27 ; 0 uses
  store ptr %i.bv, ptr %i.e, align 8, !tbaa !256
  store i32 163, ptr %i.f, align 8, !tbaa !200
  br label %bb.n

bb.n:                                             ; preds = %accept1.exit.i230, %accept1.exit.thread.i231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !163
  %.val189.pre = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val189.pre, label %accept1.exit282 [
    i32 148, label %bb.o
    i32 112, label %bb.r
    i32 1, label %bb.v
    i32 149, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val211 = load ptr, ptr %i.k, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %8, align 8, !tbaa !126, !alias.scope !440
  store i32 0, ptr %i.l, align 4, !alias.scope !440
  store ptr %.val211, ptr %i.m, align 8, !tbaa !127, !alias.scope !440
  store ptr %.val211, ptr %i.n, align 8, !tbaa !128, !alias.scope !440
  %i.bx = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.p, label %pm_string_node_create_unescaped.exit

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ca = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_string_node_create_unescaped.exit:             ; preds = %bb.o
  %i.cb = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %i.cc = load ptr, ptr %.sroa.5468.0..sroa_idx, align 8, !tbaa !127 ; 2 uses
  %i.cd = load ptr, ptr %.sroa.6469.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  %i.ce = load i32, ptr %0, align 8, !tbaa !109
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %0, align 8, !tbaa !109
  %switch.selectcmp24.i = icmp eq i8 %i.cb, -1
  %switch.selectcmp.i = icmp eq i8 %i.cb, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 18, i16 0
  %switch.select25.i = select i1 %switch.selectcmp24.i, i16 32, i16 %switch.select.i
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 141, ptr %i.bx, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i16 %switch.select25.i, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.cf, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr %i.cc, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store ptr %i.cd, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i, i8 0, i64 16, i1 false)
  call void @pm_node_list_append(ptr noundef nonnull %7, ptr noundef nonnull %i.bx) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %pm_string_node_create_unescaped.exit
  %i.cg = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef %8)
  call void @pm_node_list_append(ptr noundef nonnull %7, ptr noundef nonnull %i.cg) #27
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val188 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val188, label %accept1.exit.i234 [
    i32 148, label %bb.q
    i32 149, label %accept1.exit.thread.i235
  ]

accept1.exit.thread.i235:                         ; preds = %bb.q
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit236

accept1.exit.i234:                                ; preds = %bb.q
  %i.ch = load ptr, ptr %.sroa.gep489, align 8, !tbaa !255 ; 3 uses
  %i.ci = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.ch, ptr noundef %i.ch, i32 noundef 268) #27 ; 0 uses
  store ptr %i.ch, ptr %i.e, align 8, !tbaa !256
  store i32 163, ptr %i.f, align 8, !tbaa !200
  br label %expect1.exit236

expect1.exit236:                                  ; preds = %accept1.exit.thread.i235, %accept1.exit.i234
  %i.cj = call fastcc ptr @pm_interpolated_string_node_create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %i.f)
  call void @pm_node_list_free(ptr noundef nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ac

bb.r:                                             ; preds = %bb.n
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ck = call fastcc zeroext i16 @parse_symbol_encoding(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %5, i1 noundef zeroext true)
  %i.cl = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.s, label %pm_node_alloc.exit.i239

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.co = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cn, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i239:                          ; preds = %bb.r
  %i.cp = load i32, ptr %4, align 8, !tbaa !126
  %i.cq = icmp eq i32 %i.cp, 164                  ; 3 uses
  %.sroa.gep471.val = load ptr, ptr %.sroa.gep487, align 8 ; 2 uses
  %i.cr = load i32, ptr %i.f, align 8, !tbaa !126
  %i.cs = icmp eq i32 %i.cr, 164                  ; 2 uses
  %.pn22.i.sroa.sel = select i1 %i.cs, ptr %.sroa.6469.0..sroa_idx, ptr %.sroa.gep489
  %i.ct = load ptr, ptr %.pn22.i.sroa.sel, align 8, !tbaa !128 ; 2 uses
  %i.cu = load i32, ptr %0, align 8, !tbaa !109
  %i.cv = add i32 %i.cu, 1                        ; 2 uses
  store i32 %i.cv, ptr %0, align 8, !tbaa !109
  %i.cw = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i241 = select i1 %i.cq, ptr null, ptr %.sroa.gep471.val
  %.sroa.8.0.i242 = select i1 %i.cq, ptr null, ptr %i.cw
  %i.cx = load <2 x ptr>, ptr %.sroa.5468.0..sroa_idx, align 8
  %.sroa.gep470.val = load ptr, ptr %.sroa.5468.0..sroa_idx, align 8
  %i.cy = select i1 %i.cq, ptr %.sroa.gep470.val, ptr %.sroa.gep471.val ; 2 uses
  br i1 %i.cs, label %pm_symbol_node_create_unescaped.exit, label %bb.t

bb.t:                                             ; preds = %pm_node_alloc.exit.i239
  %i.cz = load <2 x ptr>, ptr %i.e, align 8, !tbaa !14
  br label %pm_symbol_node_create_unescaped.exit

pm_symbol_node_create_unescaped.exit:             ; preds = %pm_node_alloc.exit.i239, %bb.t
  %i.da = phi <2 x ptr> [ %i.cz, %bb.t ], [ splat (ptr null), %pm_node_alloc.exit.i239 ]
  %i.db = or i16 %i.ck, 2
  %.sroa.16.0..sroa_idx.i245 = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i245, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 143, ptr %i.cl, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i16 %i.db, ptr %.sroa.2.0..sroa_idx.i246, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %i.cv, ptr %.sroa.3.0..sroa_idx.i247, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx.i248, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.ct, ptr %.sroa.5.0..sroa_idx.i249, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i250 = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %.sroa.6.0.i241, ptr %.sroa.6.0..sroa_idx.i250, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i251 = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %.sroa.8.0.i242, ptr %.sroa.8.0..sroa_idx.i251, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store <2 x ptr> %i.cx, ptr %.sroa.10.0..sroa_idx.i252, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i254 = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  store <2 x ptr> %i.da, ptr %.sroa.12.0..sroa_idx.i254, align 8, !tbaa !14
  br i1 %i.ab, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %pm_symbol_node_create_unescaped.exit
  %i.dc = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.cy, ptr noundef %i.ct, i32 noundef 282) #27 ; 0 uses
  br label %bb.ac

bb.v:                                             ; preds = %bb.n, %accept1.exit238.thread
  %.val182 = load ptr, ptr %.sroa.gep487, align 8, !tbaa !127 ; 3 uses
  %.val183 = load ptr, ptr %i.g, align 8, !tbaa !128 ; 2 uses
  %i.dd = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.val182, ptr noundef %.val183, i32 noundef 268) #27 ; 0 uses
  %i.de = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.w, label %pm_node_alloc.exit.i256

bb.w:                                             ; preds = %bb.v
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.dh = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i256:                          ; preds = %bb.v
  %i.di = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %i.dj = load i32, ptr %4, align 8, !tbaa !126
  %i.dk = icmp eq i32 %i.dj, 164                  ; 3 uses
  %i.dl = load i32, ptr %i.a, align 8, !tbaa !126
  %i.dm = icmp eq i32 %i.dl, 164                  ; 2 uses
  %.pn23.i259.sroa.sel = select i1 %i.dm, ptr %.sroa.6469.0..sroa_idx, ptr %.sroa.gep477
  %i.dn = load ptr, ptr %.pn23.i259.sroa.sel, align 8, !tbaa !128
  %i.do = load i32, ptr %0, align 8, !tbaa !109
  %i.dp = add i32 %i.do, 1                        ; 2 uses
  store i32 %i.dp, ptr %0, align 8, !tbaa !109
  %spec.select517 = select i1 %i.dk, ptr null, ptr %.val182
  %spec.select518 = select i1 %i.dk, ptr null, ptr %.val183
  %i.dq = load <2 x ptr>, ptr %.sroa.5468.0..sroa_idx, align 8
  %.sroa.gep474.val = load ptr, ptr %.sroa.5468.0..sroa_idx, align 8
  %i.dr = select i1 %i.dk, ptr %.sroa.gep474.val, ptr %.val182
  br i1 %i.dm, label %pm_string_node_create_unescaped.exit280, label %bb.x

bb.x:                                             ; preds = %pm_node_alloc.exit.i256
  %i.ds = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  br label %pm_string_node_create_unescaped.exit280

pm_string_node_create_unescaped.exit280:          ; preds = %pm_node_alloc.exit.i256, %bb.x
  %i.dt = phi <2 x ptr> [ %i.ds, %bb.x ], [ splat (ptr null), %pm_node_alloc.exit.i256 ]
  %switch.selectcmp24.i265 = icmp eq i8 %i.di, -1
  %switch.selectcmp.i266 = icmp eq i8 %i.di, 1
  %switch.select.i267 = select i1 %switch.selectcmp.i266, i16 18, i16 0
  %switch.select25.i268 = select i1 %switch.selectcmp24.i265, i16 32, i16 %switch.select.i267
  %.sroa.16.0..sroa_idx.i269 = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i269, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 141, ptr %i.de, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i270 = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i16 %switch.select25.i268, ptr %.sroa.2.0..sroa_idx.i270, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dp, ptr %.sroa.3.0..sroa_idx.i271, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i272 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dr, ptr %.sroa.4.0..sroa_idx.i272, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.dn, ptr %.sroa.5.0..sroa_idx.i273, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %spec.select517, ptr %.sroa.6.0..sroa_idx.i274, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i275 = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr %spec.select518, ptr %.sroa.8.0..sroa_idx.i275, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store <2 x ptr> %i.dq, ptr %.sroa.10.0..sroa_idx.i276, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i278 = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store <2 x ptr> %i.dt, ptr %.sroa.12.0..sroa_idx.i278, align 8, !tbaa !14
  br label %bb.ac

bb.y:                                             ; preds = %bb.n
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.du = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.z, label %pm_node_alloc.exit.i283

bb.z:                                             ; preds = %bb.y
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.dx = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dw, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i283:                          ; preds = %bb.y
  %i.dy = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %i.dz = load i32, ptr %4, align 8, !tbaa !126
  %i.ea = icmp eq i32 %i.dz, 164                  ; 3 uses
  %.sroa.gep479.val = load ptr, ptr %.sroa.gep487, align 8 ; 2 uses
  %i.eb = load i32, ptr %i.f, align 8, !tbaa !126
  %i.ec = icmp eq i32 %i.eb, 164                  ; 2 uses
  %.pn23.i286.sroa.sel = select i1 %i.ec, ptr %.sroa.6469.0..sroa_idx, ptr %.sroa.gep489
  %i.ed = load ptr, ptr %.pn23.i286.sroa.sel, align 8, !tbaa !128
  %i.ee = load i32, ptr %0, align 8, !tbaa !109
  %i.ef = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.ef, ptr %0, align 8, !tbaa !109
  %i.eg = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i288 = select i1 %i.ea, ptr null, ptr %.sroa.gep479.val
  %.sroa.8.0.i289 = select i1 %i.ea, ptr null, ptr %i.eg
  %i.eh = load <2 x ptr>, ptr %.sroa.5468.0..sroa_idx, align 8
  %.sroa.gep478.val = load ptr, ptr %.sroa.5468.0..sroa_idx, align 8
  %i.ei = select i1 %i.ea, ptr %.sroa.gep478.val, ptr %.sroa.gep479.val
  br i1 %i.ec, label %pm_string_node_create_unescaped.exit307, label %bb.aa

bb.aa:                                            ; preds = %pm_node_alloc.exit.i283
  %i.ej = load <2 x ptr>, ptr %i.e, align 8, !tbaa !14
  br label %pm_string_node_create_unescaped.exit307

pm_string_node_create_unescaped.exit307:          ; preds = %pm_node_alloc.exit.i283, %bb.aa
  %i.ek = phi <2 x ptr> [ %i.ej, %bb.aa ], [ splat (ptr null), %pm_node_alloc.exit.i283 ]
  %switch.selectcmp24.i292 = icmp eq i8 %i.dy, -1
  %switch.selectcmp.i293 = icmp eq i8 %i.dy, 1
  %switch.select.i294 = select i1 %switch.selectcmp.i293, i16 18, i16 0
  %switch.select25.i295 = select i1 %switch.selectcmp24.i292, i16 32, i16 %switch.select.i294
  %.sroa.16.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i296, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 141, ptr %i.du, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i16 %switch.select25.i295, ptr %.sroa.2.0..sroa_idx.i297, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i298 = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 %i.ef, ptr %.sroa.3.0..sroa_idx.i298, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i299 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.ei, ptr %.sroa.4.0..sroa_idx.i299, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.ed, ptr %.sroa.5.0..sroa_idx.i300, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i301 = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %.sroa.6.0.i288, ptr %.sroa.6.0..sroa_idx.i301, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i302 = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store ptr %.sroa.8.0.i289, ptr %.sroa.8.0..sroa_idx.i302, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i303 = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store <2 x ptr> %i.eh, ptr %.sroa.10.0..sroa_idx.i303, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i305 = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  store <2 x ptr> %i.ek, ptr %.sroa.12.0..sroa_idx.i305, align 8, !tbaa !14
  br label %bb.ac

accept1.exit282:                                  ; preds = %bb.n
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !256
  %i.em = load ptr, ptr %.sroa.gep489, align 8, !tbaa !255
  %i.en = load i32, ptr %i.f, align 8, !tbaa !200
  %i.eo = call ptr @pm_token_type_human(i32 noundef %i.en) #27
  %i.ep = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.h, ptr noundef %i.el, ptr noundef %i.em, i32 noundef 269, ptr noundef %i.eo) #27 ; 0 uses
  %i.eq = load ptr, ptr %.sroa.gep489, align 8, !tbaa !255 ; 2 uses
  store ptr %i.eq, ptr %i.e, align 8, !tbaa !256
  store i32 163, ptr %i.f, align 8, !tbaa !200
  %i.er = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.ab, label %pm_node_alloc.exit.i308

bb.ab:                                            ; preds = %accept1.exit282
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.eu = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.et, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i308:                          ; preds = %accept1.exit282
  %i.ev = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %i.ew = load i32, ptr %4, align 8, !tbaa !126
  %i.ex = icmp eq i32 %i.ew, 164                  ; 3 uses
  %.sroa.gep483.val = load ptr, ptr %.sroa.gep487, align 8 ; 2 uses
  %i.ey = load i32, ptr %i.f, align 8, !tbaa !126
  %i.ez = icmp eq i32 %i.ey, 164                  ; 2 uses
  %.pn23.i311.sroa.sel = select i1 %i.ez, ptr %.sroa.6469.0..sroa_idx, ptr %.sroa.gep489
  %i.fa = load ptr, ptr %.pn23.i311.sroa.sel, align 8, !tbaa !128
  %i.fb = load i32, ptr %0, align 8, !tbaa !109
  %i.fc = add i32 %i.fb, 1                        ; 2 uses
  store i32 %i.fc, ptr %0, align 8, !tbaa !109
  %i.fd = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i313 = select i1 %i.ex, ptr null, ptr %.sroa.gep483.val
  %.sroa.8.0.i314 = select i1 %i.ex, ptr null, ptr %i.fd
  %spec.select569 = select i1 %i.ez, ptr null, ptr %i.eq ; 2 uses
  %switch.selectcmp24.i317 = icmp eq i8 %i.ev, -1
  %switch.selectcmp.i318 = icmp eq i8 %i.ev, 1
  %switch.select.i319 = select i1 %switch.selectcmp.i318, i16 18, i16 0
  %switch.select25.i320 = select i1 %switch.selectcmp24.i317, i16 32, i16 %switch.select.i319
  %.sroa.16.0..sroa_idx.i321 = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i321, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 141, ptr %i.er, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store i16 %switch.select25.i320, ptr %.sroa.2.0..sroa_idx.i322, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 %i.fc, ptr %.sroa.3.0..sroa_idx.i323, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i324 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.5.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr %i.fa, ptr %.sroa.5.0..sroa_idx.i325, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr %.sroa.6.0.i313, ptr %.sroa.6.0..sroa_idx.i326, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store ptr %.sroa.8.0.i314, ptr %.sroa.8.0..sroa_idx.i327, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fe = load <2 x ptr>, ptr %.sroa.5468.0..sroa_idx, align 8
  %.sroa.gep482.val = load ptr, ptr %.sroa.5468.0..sroa_idx, align 8
  %i.ff = select i1 %i.ex, ptr %.sroa.gep482.val, ptr %.sroa.gep483.val
  store ptr %i.ff, ptr %.sroa.4.0..sroa_idx.i324, align 8, !tbaa !14
  store <2 x ptr> %i.fe, ptr %.sroa.10.0..sroa_idx.i328, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store ptr %spec.select569, ptr %.sroa.12.0..sroa_idx.i330, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store ptr %spec.select569, ptr %.sroa.14.0..sroa_idx.i331, align 8, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.u, %pm_symbol_node_create_unescaped.exit, %pm_string_node_create_unescaped.exit307, %pm_node_alloc.exit.i308, %pm_string_node_create_unescaped.exit280, %expect1.exit236
  %.0167 = phi ptr [ %i.cj, %expect1.exit236 ], [ %i.cl, %pm_symbol_node_create_unescaped.exit ], [ %i.cl, %bb.u ], [ %i.de, %pm_string_node_create_unescaped.exit280 ], [ %i.du, %pm_string_node_create_unescaped.exit307 ], [ %i.er, %pm_node_alloc.exit.i308 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bm

bb.ad:                                            ; preds = %accept1.exit
  %i.fg = icmp eq i32 %.val193, 148
  br i1 %i.fg, label %bb.ae, label %bb.bd

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !19
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val192 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val192, label %accept1.exit362 [
    i32 149, label %bb.af
    i32 1, label %bb.af
    i32 112, label %bb.an
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.fh = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ag, label %pm_node_alloc.exit.i334

bb.ag:                                            ; preds = %bb.af
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.fk = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.fj, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i334:                          ; preds = %bb.af
  %i.fl = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %i.fm = load i32, ptr %4, align 8, !tbaa !126
  %i.fn = icmp eq i32 %i.fm, 164                  ; 3 uses
  %.sroa.gep455.val = load ptr, ptr %.sroa.gep487, align 8 ; 2 uses
  %i.fo = load i32, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 164                  ; 2 uses
  %.pn23.i337.sroa.sel = select i1 %i.fp, ptr %.sroa.gep460, ptr %.sroa.gep477
  %i.fq = load ptr, ptr %.pn23.i337.sroa.sel, align 8, !tbaa !128
  %i.fr = load i32, ptr %0, align 8, !tbaa !109
  %i.fs = add i32 %i.fr, 1                        ; 2 uses
  store i32 %i.fs, ptr %0, align 8, !tbaa !109
  %i.ft = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i339 = select i1 %i.fn, ptr null, ptr %.sroa.gep455.val
  %.sroa.8.0.i340 = select i1 %i.fn, ptr null, ptr %i.ft
  %i.fu = load <2 x ptr>, ptr %.sroa.gep458, align 8
  %.sroa.gep454.val = load ptr, ptr %.sroa.gep458, align 8
  %i.fv = select i1 %i.fn, ptr %.sroa.gep454.val, ptr %.sroa.gep455.val
  br i1 %i.fp, label %pm_string_node_create_unescaped.exit358, label %bb.ah

bb.ah:                                            ; preds = %pm_node_alloc.exit.i334
  %i.fw = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  br label %pm_string_node_create_unescaped.exit358

pm_string_node_create_unescaped.exit358:          ; preds = %pm_node_alloc.exit.i334, %bb.ah
  %i.fx = phi <2 x ptr> [ %i.fw, %bb.ah ], [ splat (ptr null), %pm_node_alloc.exit.i334 ]
  %switch.selectcmp24.i343 = icmp eq i8 %i.fl, -1
  %switch.selectcmp.i344 = icmp eq i8 %i.fl, 1
  %switch.select.i345 = select i1 %switch.selectcmp.i344, i16 18, i16 0
  %switch.select25.i346 = select i1 %switch.selectcmp24.i343, i16 32, i16 %switch.select.i345
  %.sroa.16.0..sroa_idx.i347 = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i347, ptr noundef nonnull readonly align 8 dereferenceable(24) %10, i64 24, i1 false)
  store i16 141, ptr %i.fh, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %.sroa.3.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 %i.fs, ptr %.sroa.3.0..sroa_idx.i349, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fv, ptr %.sroa.4.0..sroa_idx.i350, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store ptr %i.fq, ptr %.sroa.5.0..sroa_idx.i351, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store ptr %.sroa.6.0.i339, ptr %.sroa.6.0..sroa_idx.i352, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store ptr %.sroa.8.0.i340, ptr %.sroa.8.0..sroa_idx.i353, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i354 = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store <2 x ptr> %i.fu, ptr %.sroa.10.0..sroa_idx.i354, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i356 = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store <2 x ptr> %i.fx, ptr %.sroa.12.0..sroa_idx.i356, align 8, !tbaa !14
  %i.fy = load ptr, ptr %i.q, align 8, !tbaa !207 ; 2 uses
  %.not.i = icmp eq ptr %i.fy, null
  br i1 %.not.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %pm_string_node_create_unescaped.exit358
  %i.fz = icmp eq ptr %i.fy, @pm_encodings
  br i1 %i.fz, label %parse_unescaped_encoding.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ga = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.gb = icmp eq ptr %i.ga, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.gb, label %parse_unescaped_encoding.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %pm_string_node_create_unescaped.exit358
  br label %parse_unescaped_encoding.exit

parse_unescaped_encoding.exit:                    ; preds = %bb.ai, %bb.aj, %bb.ak
  %.0.i = phi i16 [ 0, %bb.ak ], [ 4, %bb.ai ], [ 8, %bb.aj ]
  %i.gc = or disjoint i16 %.0.i, %switch.select25.i346
  store i16 %i.gc, ptr %.sroa.2.0..sroa_idx.i348, align 2, !tbaa !116
  %i.gd = icmp eq i32 %i.fo, 149
  br i1 %i.gd, label %accept1.exit360.thread, label %accept1.exit360

accept1.exit360.thread:                           ; preds = %parse_unescaped_encoding.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.bc

accept1.exit360:                                  ; preds = %parse_unescaped_encoding.exit
  %i.ge = load ptr, ptr %.sroa.gep489, align 8, !tbaa !255 ; 4 uses
  %i.gf = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.gg = icmp ugt ptr %i.ge, %i.gf
  br i1 %i.gg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %accept1.exit360
  %i.gh = getelementptr i8, ptr %i.ge, i64 -1     ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !67
  %i.gj = icmp eq i8 %i.gi, 10
  %spec.select = select i1 %i.gj, ptr %i.gh, ptr %i.ge
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %accept1.exit360
  %.0162 = phi ptr [ %i.ge, %accept1.exit360 ], [ %spec.select, %bb.al ] ; 2 uses
  %i.gk = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.0162, ptr noundef %.0162, i32 noundef 268) #27 ; 0 uses
  %i.gl = load ptr, ptr %.sroa.gep489, align 8, !tbaa !255
  store ptr %i.gl, ptr %i.e, align 8, !tbaa !256
  store i32 163, ptr %i.f, align 8, !tbaa !200
  br label %bb.bc

bb.an:                                            ; preds = %bb.ae
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.gm = call fastcc zeroext i16 @parse_symbol_encoding(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext true)
  %i.gn = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.ao, label %pm_node_alloc.exit.i363

bb.ao:                                            ; preds = %bb.an
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.gq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.gp, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i363:                          ; preds = %bb.an
  %i.gr = load i32, ptr %4, align 8, !tbaa !126
  %i.gs = icmp eq i32 %i.gr, 164                  ; 3 uses
  %.sroa.gep459.val = load ptr, ptr %.sroa.gep487, align 8 ; 2 uses
  %i.gt = load i32, ptr %i.f, align 8, !tbaa !126
  %i.gu = icmp eq i32 %i.gt, 164                  ; 2 uses
  %.pn22.i366.sroa.sel = select i1 %i.gu, ptr %.sroa.gep460, ptr %.sroa.gep489
  %i.gv = load ptr, ptr %.pn22.i366.sroa.sel, align 8, !tbaa !128 ; 2 uses
  %i.gw = load i32, ptr %0, align 8, !tbaa !109
  %i.gx = add i32 %i.gw, 1                        ; 2 uses
  store i32 %i.gx, ptr %0, align 8, !tbaa !109
  %i.gy = load ptr, ptr %i.g, align 8
  %.sroa.6.0.i368 = select i1 %i.gs, ptr null, ptr %.sroa.gep459.val
  %.sroa.8.0.i369 = select i1 %i.gs, ptr null, ptr %i.gy
  %i.gz = load <2 x ptr>, ptr %.sroa.gep458, align 8
  %.sroa.gep458.val = load ptr, ptr %.sroa.gep458, align 8
  %i.ha = select i1 %i.gs, ptr %.sroa.gep458.val, ptr %.sroa.gep459.val ; 2 uses
  br i1 %i.gu, label %pm_symbol_node_create_unescaped.exit383, label %bb.ap

bb.ap:                                            ; preds = %pm_node_alloc.exit.i363
  %i.hb = load <2 x ptr>, ptr %i.e, align 8, !tbaa !14
  br label %pm_symbol_node_create_unescaped.exit383

pm_symbol_node_create_unescaped.exit383:          ; preds = %pm_node_alloc.exit.i363, %bb.ap
  %i.hc = phi <2 x ptr> [ %i.hb, %bb.ap ], [ splat (ptr null), %pm_node_alloc.exit.i363 ]
  %i.hd = or i16 %i.gm, 2
  %.sroa.16.0..sroa_idx.i372 = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i372, ptr noundef nonnull readonly align 8 dereferenceable(24) %10, i64 24, i1 false)
  store i16 143, ptr %i.gn, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i373 = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  store i16 %i.hd, ptr %.sroa.2.0..sroa_idx.i373, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i374 = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 %i.gx, ptr %.sroa.3.0..sroa_idx.i374, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i375 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.ha, ptr %.sroa.4.0..sroa_idx.i375, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i376 = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store ptr %i.gv, ptr %.sroa.5.0..sroa_idx.i376, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i377 = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store ptr %.sroa.6.0.i368, ptr %.sroa.6.0..sroa_idx.i377, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store ptr %.sroa.8.0.i369, ptr %.sroa.8.0..sroa_idx.i378, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i379 = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store <2 x ptr> %i.gz, ptr %.sroa.10.0..sroa_idx.i379, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store <2 x ptr> %i.hc, ptr %.sroa.12.0..sroa_idx.i381, align 8, !tbaa !14
  br i1 %i.ab, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %pm_symbol_node_create_unescaped.exit383
  %i.he = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.ha, ptr noundef %i.gv, i32 noundef 282) #27 ; 0 uses
  br label %bb.bc

accept1.exit362:                                  ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.hf = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.ar, label %pm_string_node_create_unescaped.exit408

bb.ar:                                            ; preds = %accept1.exit362
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.hi = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hh, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_string_node_create_unescaped.exit408:          ; preds = %accept1.exit362
  %i.hj = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %.then.val453 = load ptr, ptr %i.e, align 8, !tbaa !127 ; 2 uses
  %.then.val = load ptr, ptr %.sroa.gep489, align 8, !tbaa !128 ; 2 uses
  %i.hk = load i32, ptr %0, align 8, !tbaa !109
  %i.hl = add i32 %i.hk, 1                        ; 2 uses
  store i32 %i.hl, ptr %0, align 8, !tbaa !109
  %switch.selectcmp24.i393 = icmp eq i8 %i.hj, -1
  %switch.selectcmp.i394 = icmp eq i8 %i.hj, 1
  %switch.select.i395 = select i1 %switch.selectcmp.i394, i16 18, i16 0
  %switch.select25.i396 = select i1 %switch.selectcmp24.i393, i16 32, i16 %switch.select.i395
  %.sroa.16.0..sroa_idx.i397 = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i397, ptr noundef nonnull readonly align 8 dereferenceable(24) %10, i64 24, i1 false)
  store i16 141, ptr %i.hf, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i398 = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %.sroa.3.0..sroa_idx.i399 = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 %i.hl, ptr %.sroa.3.0..sroa_idx.i399, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i400 = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %.then.val453, ptr %.sroa.4.0..sroa_idx.i400, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr %.then.val, ptr %.sroa.5.0..sroa_idx.i401, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %.sroa.10.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i402, i8 0, i64 16, i1 false)
  store ptr %.then.val453, ptr %.sroa.10.0..sroa_idx.i404, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  store ptr %.then.val, ptr %.sroa.11.0..sroa_idx.i405, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i406 = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i406, i8 0, i64 16, i1 false)
  %i.hm = load ptr, ptr %i.q, align 8, !tbaa !207 ; 2 uses
  %.not.i409 = icmp eq ptr %i.hm, null
  br i1 %.not.i409, label %bb.au, label %bb.as

bb.as:                                            ; preds = %pm_string_node_create_unescaped.exit408
  %i.hn = icmp eq ptr %i.hm, @pm_encodings
  br i1 %i.hn, label %parse_unescaped_encoding.exit411, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.hp = icmp eq ptr %i.ho, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.hp, label %parse_unescaped_encoding.exit411, label %bb.au

bb.au:                                            ; preds = %bb.at, %pm_string_node_create_unescaped.exit408
  br label %parse_unescaped_encoding.exit411

parse_unescaped_encoding.exit411:                 ; preds = %bb.as, %bb.at, %bb.au
  %.0.i410 = phi i16 [ 0, %bb.au ], [ 4, %bb.as ], [ 8, %bb.at ]
  %i.hq = or disjoint i16 %.0.i410, %switch.select25.i396
  store i16 %i.hq, ptr %.sroa.2.0..sroa_idx.i398, align 2, !tbaa !116
  br label %.sink.split

.sink.split:                                      ; preds = %parse_unescaped_encoding.exit411, %bb.ax
  %.sink = phi ptr [ %i.hr, %bb.ax ], [ %i.hf, %parse_unescaped_encoding.exit411 ]
  call void @pm_node_list_append(ptr noundef nonnull %11, ptr noundef nonnull %.sink) #27
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.aw
  %.val195 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val195, label %bb.aw [
    i32 112, label %bb.ay
    i32 1, label %bb.ba
    i32 149, label %accept1.exit.thread.i417
  ]

bb.aw:                                            ; preds = %bb.av
  %i.hr = call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.p) ; 2 uses
  %.not178 = icmp eq ptr %i.hr, null
  br i1 %.not178, label %bb.av, label %bb.ax, !llvm.loop !443

bb.ax:                                            ; preds = %bb.aw
  br label %.sink.split, !llvm.loop !443

bb.ay:                                            ; preds = %bb.av
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.hs = call fastcc ptr @pm_interpolated_symbol_node_create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %11, ptr noundef %i.f) ; 4 uses
  br i1 %i.ab, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  %.val200 = load ptr, ptr %i.ht, align 8, !tbaa !133
  %i.hu = getelementptr i8, ptr %i.hs, i64 16
  %.val201 = load ptr, ptr %i.hu, align 8, !tbaa !134
  %i.hv = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.val200, ptr noundef %.val201, i32 noundef 282) #27 ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av
  %.val180 = load ptr, ptr %.sroa.gep487, align 8, !tbaa !127
  %.val181 = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.hw = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.val180, ptr noundef %.val181, i32 noundef 267) #27 ; 0 uses
  %i.hx = call fastcc ptr @pm_interpolated_string_node_create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %i.a)
  br label %bb.bb

accept1.exit.thread.i417:                         ; preds = %bb.av
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.hy = call fastcc ptr @pm_interpolated_string_node_create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %11, ptr noundef %i.f)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %accept1.exit.thread.i417, %bb.ay, %bb.az
  %.1168 = phi ptr [ %i.hs, %bb.ay ], [ %i.hs, %bb.az ], [ %i.hx, %bb.ba ], [ %i.hy, %accept1.exit.thread.i417 ]
  call void @pm_node_list_free(ptr noundef nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.bc

bb.bc:                                            ; preds = %accept1.exit360.thread, %bb.bb, %bb.aq, %pm_symbol_node_create_unescaped.exit383, %bb.am
  %.2169 = phi ptr [ %i.fh, %accept1.exit360.thread ], [ %i.fh, %bb.am ], [ %i.gn, %pm_symbol_node_create_unescaped.exit383 ], [ %i.gn, %bb.aq ], [ %.1168, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.bm

bb.bd:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bd
  %.val184 = phi i32 [ %.val194.pr, %bb.bh ], [ %.val193, %bb.bd ]
  switch i32 %.val184, label %bb.bf [
    i32 112, label %bb.bi
    i32 1, label %bb.bk
    i32 149, label %accept1.exit.thread.i425
  ]

bb.bf:                                            ; preds = %bb.be
  %i.hz = call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.p) ; 2 uses
  %.not = icmp eq ptr %i.hz, null
  br i1 %.not, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @pm_node_list_append(ptr noundef nonnull %12, ptr noundef nonnull %i.hz) #27
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.val194.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %bb.be, !llvm.loop !444

bb.bi:                                            ; preds = %bb.be
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ia = call fastcc ptr @pm_interpolated_symbol_node_create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %12, ptr noundef %i.f) ; 4 uses
  br i1 %i.ab, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %.val198 = load ptr, ptr %i.ib, align 8, !tbaa !133
  %i.ic = getelementptr i8, ptr %i.ia, i64 16
  %.val199 = load ptr, ptr %i.ic, align 8, !tbaa !134
  %i.id = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.val198, ptr noundef %.val199, i32 noundef 282) #27 ; 0 uses
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %.val = load ptr, ptr %.sroa.gep487, align 8, !tbaa !127
  %.val179 = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.ie = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.val, ptr noundef %.val179, i32 noundef 267) #27 ; 0 uses
  %i.if = call fastcc ptr @pm_interpolated_string_node_create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %12, ptr noundef nonnull %i.a)
  br label %bb.bl

accept1.exit.thread.i425:                         ; preds = %bb.be
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ig = call fastcc ptr @pm_interpolated_string_node_create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %12, ptr noundef %i.f)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %accept1.exit.thread.i425, %bb.bi, %bb.bj
  %.3170 = phi ptr [ %i.ia, %bb.bi ], [ %i.ia, %bb.bj ], [ %i.if, %bb.bk ], [ %i.ig, %accept1.exit.thread.i425 ]
  call void @pm_node_list_free(ptr noundef nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.bm

bb.bm:                                            ; preds = %pm_symbol_node_create.exit, %bb.k, %bb.bc, %bb.bl, %bb.ac, %pm_string_node_create.exit
  %.4 = phi ptr [ %i.af, %pm_string_node_create.exit ], [ %.0167, %bb.ac ], [ %.2169, %bb.bc ], [ %.3170, %bb.bl ], [ %i.az, %bb.k ], [ %i.az, %pm_symbol_node_create.exit ] ; 6 uses
  %i.ih = icmp eq ptr %.0159535, null
  %i.ii = load i16, ptr %.4, align 8, !tbaa !115  ; 2 uses
  br i1 %i.ih, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  switch i16 %i.ii, label %thread-pre-split [
    i16 143, label %bb.bw
    i16 86, label %bb.bw
  ]

bb.bo:                                            ; preds = %bb.bm
  switch i16 %i.ii, label %bb.bp [
    i16 141, label %bb.bq
    i16 85, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ij = getelementptr i8, ptr %.4, i64 8
  %.4.val = load ptr, ptr %i.ij, align 8, !tbaa !133
  %i.ik = getelementptr i8, ptr %.4, i64 16
  %.4.val197 = load ptr, ptr %i.ik, align 8, !tbaa !134
  %i.il = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.4.val, ptr noundef %.4.val197, i32 noundef 266) #27 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bo, %bb.bp
  br i1 %.0163534, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.im = load i16, ptr %.0159535, align 8, !tbaa !115
  switch i16 %i.im, label %bb.bs [
    i16 141, label %bb.bt
    i16 85, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.in = getelementptr i8, ptr %.0159535, i64 8
  %.0159.val = load ptr, ptr %i.in, align 8, !tbaa !133
  %i.io = getelementptr i8, ptr %.0159535, i64 16
  %.0159.val196 = load ptr, ptr %i.io, align 8, !tbaa !134
  %i.ip = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %.0159.val, ptr noundef %.0159.val196, i32 noundef 266) #27 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.br, %bb.bs
  %.val208 = load ptr, ptr %i.k, align 8, !tbaa !74 ; 2 uses
  %i.iq = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 10 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.bu, label %pm_interpolated_string_node_create.exit

bb.bu:                                            ; preds = %bb.bt
  %i.is = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.it = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.is, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_interpolated_string_node_create.exit:          ; preds = %bb.bt
  %i.iu = load i8, ptr %i.i, align 1, !tbaa !49   ; 2 uses
  %switch.selectcmp.i428 = icmp eq i8 %i.iu, 1
  %switch.select.i429 = select i1 %switch.selectcmp.i428, i16 6, i16 2
  %switch.selectcmp27.i = icmp eq i8 %i.iu, -1
  %switch.select28.i = select i1 %switch.selectcmp27.i, i16 10, i16 %switch.select.i429
  %i.iv = load i32, ptr %0, align 8, !tbaa !109
end_hunk_2
begin_hunk_3_@pm_locals_unread:bb.a

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pm_locals_find.exit.thread, label %bb.b, !llvm.loop !233

bb.d:                                             ; preds = %bb.a
  %i.i = add i32 %i.b, -1                         ; 2 uses
  %i.j = lshr i32 %1, 16
  %i.k = xor i32 %i.j, %1
  %i.l = mul i32 %i.k, 73244475                   ; 2 uses
  %i.m = lshr i32 %i.l, 16
  %i.n = xor i32 %i.m, %i.l
  %i.o = mul i32 %i.n, 73244475                   ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = xor i32 %i.p, %i.o                       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.031.i = phi i32 [ %i.q, %bb.d ], [ %i.z, %bb.g ] ; 2 uses
  %i.t = and i32 %.031.i, %i.i                    ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [40 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 8, !tbaa !156  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %pm_locals_find.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq i32 %i.w, %1
  br i1 %i.y, label %pm_locals_find.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add i32 %.031.i, 1                       ; 2 uses
  %i.aa = xor i32 %i.z, %i.q
  %i.ab = and i32 %i.aa, %i.i
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %pm_locals_find.exit.thread, label %bb.e, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i:             ; preds = %bb.b
  %i.ac = trunc nuw i64 %indvars.iv.i to i32
  br label %pm_locals_find.exit

pm_locals_find.exit:                              ; preds = %bb.f, %.thread.loopexit.split.loop.exit66.i
  %i.ad = phi ptr [ %i.f, %.thread.loopexit.split.loop.exit66.i ], [ %i.s, %bb.f ]
  %.5.i = phi i32 [ %i.ac, %.thread.loopexit.split.loop.exit66.i ], [ %i.t, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.5.i, -1
  br i1 %.not, label %pm_locals_find.exit.thread, label %bb.h

pm_locals_find.exit.thread:                       ; preds = %bb.g, %bb.e, %bb.c, %.preheader.i, %pm_locals_find.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 936, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_unread) #26
  unreachable

bb.h:                                             ; preds = %pm_locals_find.exit
  %i.ae = zext i32 %.5.i to i64
  %i.af = getelementptr [40 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 28     ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !265 ; 2 uses
  %.not7 = icmp eq i32 %i.ah, 0
  br i1 %.not7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 939, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_unread) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !265
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @expect1_heredoc_term(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344
  %.val = load i32, ptr %i.a, align 8, !tbaa !170
  %i.b = icmp eq i32 %.val, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 472
  %i.d = getelementptr i8, ptr %1, i64 %2
  %i.e = trunc i64 %2 to i32
  %i.f = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.c, ptr noundef %1, ptr noundef %i.d, i32 noundef 138, i32 noundef %i.e, ptr noundef %1) #27 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 320
  %i.h = getelementptr i8, ptr %0, i64 336
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !255
  %i.j = getelementptr i8, ptr %0, i64 328
  store ptr %i.i, ptr %i.j, align 8, !tbaa !256
  store i32 163, ptr %i.g, align 8, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_xstring_node_create_unescaped(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = getelementptr i8, ptr %3, i64 16
  %i.i = getelementptr i8, ptr %2, i64 8
  %i.j = getelementptr i8, ptr %3, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !127
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.o = load <2 x ptr>, ptr %i.j, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i16 150, ptr %i.a, align 8, !tbaa !110
  store i16 16, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.m, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.o, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_string_node_create_unescaped(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 693
  %i.f = load i8, ptr %i.e, align 1, !tbaa !49    ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !126
  %i.h = icmp eq i32 %i.g, 164                    ; 2 uses
  %.pn = select i1 %i.h, ptr %2, ptr %1
  %.in = getelementptr i8, ptr %.pn, i64 8
  %i.i = load ptr, ptr %.in, align 8, !tbaa !127
  %i.j = load i32, ptr %3, align 8, !tbaa !126
  %i.k = icmp eq i32 %i.j, 164                    ; 2 uses
  %.pn23 = select i1 %i.k, ptr %2, ptr %3
  %.in22 = getelementptr i8, ptr %.pn23, i64 16
  %i.l = load ptr, ptr %.in22, align 8, !tbaa !128
  %i.m = load i32, ptr %0, align 8, !tbaa !109
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !109
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %i.q = phi <2 x ptr> [ %i.p, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit ]
  %i.r = getelementptr i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !14
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %3, i64 8
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi <2 x ptr> [ %i.u, %bb.e ], [ splat (ptr null), %bb.d ]
  %switch.selectcmp24 = icmp eq i8 %i.f, -1
  %switch.selectcmp = icmp eq i8 %i.f, 1
  %switch.select = select i1 %switch.selectcmp, i16 18, i16 0
  %switch.select25 = select i1 %switch.selectcmp24, i16 32, i16 %switch.select
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i16 141, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %switch.select25, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.n, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x ptr> %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x ptr> %i.s, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store <2 x ptr> %i.v, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parse_string_part(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %3 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %i.b, label %bb.v [
    i32 148, label %bb.b
    i32 48, label %bb.f
    i32 49, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.c = getelementptr i8, ptr %0, i64 304
  %.val63 = load ptr, ptr %i.c, align 8, !tbaa !74 ; 4 uses
  store i32 164, ptr %2, align 8, !tbaa !126, !alias.scope !467
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.d, align 4, !alias.scope !467
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val63, ptr %i.e, align 8, !tbaa !127, !alias.scope !467
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.val63, ptr %i.f, align 8, !tbaa !128, !alias.scope !467
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 164, ptr %3, align 8, !tbaa !126, !alias.scope !470
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.g, align 4, !alias.scope !470
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.val63, ptr %i.h, align 8, !tbaa !127, !alias.scope !470
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.val63, ptr %i.i, align 8, !tbaa !128, !alias.scope !470
  %i.j = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3) ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 672
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !207  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %i.l, @pm_encodings
  br i1 %i.m, label %parse_unescaped_encoding.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = icmp eq ptr %i.o, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.p, label %parse_unescaped_encoding.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  br label %parse_unescaped_encoding.exit

parse_unescaped_encoding.exit:                    ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i16 [ 0, %bb.e ], [ 4, %bb.c ], [ 8, %bb.d ]
  %i.q = getelementptr i8, ptr %i.j, i64 2        ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !116
  %i.s = or i16 %i.r, %.0.i
  store i16 %i.s, ptr %i.q, align 2, !tbaa !116
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.t, align 8, !tbaa !207
  %i.u = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !195  ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !203  ; 2 uses
  store i32 0, ptr %i.w, align 8, !tbaa !203
  store i32 1, ptr %i.u, align 4, !tbaa !195
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.y = getelementptr i8, ptr %0, i64 320
  %.sroa.391.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 4 uses
  %.sroa.492.0..sroa_idx = getelementptr i8, ptr %0, i64 336 ; 2 uses
  %i.z = load <2 x ptr>, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !14
  %.sroa.391.0.copyload = load ptr, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !14
  %.val = load i32, ptr %i.a, align 8, !tbaa !170
  %i.aa = icmp eq i32 %.val, 4
  br i1 %i.aa, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store i32 %i.x, ptr %i.w, align 8, !tbaa !203
  store i32 %i.v, ptr %i.u, align 4, !tbaa !195
  br label %accept1.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !7
  %i.ad = shl i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !7
  %i.ae = add i16 %1, 1
  %i.af = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 26, i16 noundef zeroext %i.ae) ; 2 uses
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !7
  %i.ah = lshr i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ab, align 8, !tbaa !7
  %.val.i.i.pr = load i32, ptr %i.a, align 8, !tbaa !170
  store i32 %i.x, ptr %i.w, align 8, !tbaa !203
  store i32 %i.v, ptr %i.u, align 4, !tbaa !195
  %i.ai = icmp eq i32 %.val.i.i.pr, 4
  br i1 %i.ai, label %accept1.exit.thread.i, label %accept1.exit.i

accept1.exit.thread.i:                            ; preds = %.thread, %bb.g
  %.06096 = phi ptr [ null, %.thread ], [ %i.af, %bb.g ]
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.388.0.copyload.pre = load ptr, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !14
  br label %expect1.exit

accept1.exit.i:                                   ; preds = %bb.g
  %i.aj = load ptr, ptr %.sroa.492.0..sroa_idx, align 8, !tbaa !255 ; 4 uses
  %i.ak = getelementptr i8, ptr %0, i64 472
  %i.al = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ak, ptr noundef %i.aj, ptr noundef %i.aj, i32 noundef 73) #27 ; 0 uses
  store ptr %i.aj, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !256
  store i32 163, ptr %i.y, align 8, !tbaa !200
  br label %expect1.exit

expect1.exit:                                     ; preds = %accept1.exit.thread.i, %accept1.exit.i
  %.sroa.388.0.copyload = phi ptr [ %.sroa.388.0.copyload.pre, %accept1.exit.thread.i ], [ %i.aj, %accept1.exit.i ]
  %.06095 = phi ptr [ %.06096, %accept1.exit.thread.i ], [ %i.af, %accept1.exit.i ] ; 4 uses
  %.sroa.489.0.copyload = load ptr, ptr %.sroa.492.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %.06095, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %expect1.exit
  %i.am = getelementptr i8, ptr %.06095, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !101
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %.06095, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105
  %i.as = getelementptr i8, ptr %i.ar, i64 2      ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !116
  %i.au = and i16 %i.at, -2
  store i16 %i.au, ptr %i.as, align 2, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %expect1.exit
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 10 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %pm_embedded_statements_node_create.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ay = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ax, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_embedded_statements_node_create.exit:          ; preds = %bb.j
  %i.az = load i32, ptr %0, align 8, !tbaa !109
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %0, align 8, !tbaa !109
  store i16 48, ptr %i.av, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.ba, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.391.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %.sroa.489.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store <2 x ptr> %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %.06095, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %.sroa.388.0.copyload, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %.sroa.489.0.copyload, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.bb = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.bb, align 8, !tbaa !207
  %i.bc = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.bc, align 4, !tbaa !195
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bd = getelementptr i8, ptr %0, i64 320       ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 3 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %0, i64 336 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %i.be, label %accept1.exit.i75 [
    i32 24, label %bb.m
    i32 123, label %bb.n
    i32 59, label %bb.o
    i32 68, label %bb.q
    i32 37, label %bb.r
    i32 66, label %accept1.exit.thread.i76
  ]

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bf = tail call fastcc ptr @pm_back_reference_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.bd)
  br label %bb.t

end_hunk_3
begin_hunk_4_@parse_pattern:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i104 = phi i64 [ 72, %bb.o ], [ 64, %bb.n ]
  %i.al = getelementptr i8, ptr %.086, i64 %.sink.i104
  %.0.i105 = load ptr, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %.not.i106 = icmp eq ptr %.0.i105, null
  br i1 %.not.i106, label %pm_symbol_node_label_p.exit108.thread, label %pm_symbol_node_label_p.exit108

pm_symbol_node_label_p.exit108:                   ; preds = %bb.p
  %i.am = getelementptr i8, ptr %.0.i105, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !67
  %i.ao = icmp eq i8 %i.an, 58
  br i1 %i.ao, label %bb.q, label %pm_symbol_node_label_p.exit108.thread

bb.q:                                             ; preds = %pm_symbol_node_label_p.exit108
  %i.ap = add i16 %4, 1
  %i.aq = tail call fastcc ptr @parse_pattern_hash(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.086, i16 noundef zeroext %i.ap)
  br label %bb.ax

pm_symbol_node_label_p.exit108.thread:            ; preds = %bb.p, %bb.n, %pm_symbol_node_label_p.exit108
  %.not92 = icmp samesign ult i8 %2, 2
  br i1 %.not92, label %bb.au, label %bb.r

bb.r:                                             ; preds = %pm_symbol_node_label_p.exit108.thread
  %.val = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ar = icmp eq i32 %.val, 3
  br i1 %i.ar, label %bb.s, label %bb.au

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @pm_node_list_append(ptr noundef nonnull %5, ptr noundef nonnull %.086) #27
  %.val.i121 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.as = icmp eq i32 %.val.i121, 3
  br i1 %i.as, label %.lr.ph, label %accept1.exit

.lr.ph:                                           ; preds = %bb.s
  %i.at = getelementptr i8, ptr %0, i64 328       ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 336
  %i.av = getelementptr i8, ptr %0, i64 472
  %i.aw = add i16 %4, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.aa
  %.084122 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val103 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val103, label %accept1.exit110 [
    i32 92, label %bb.u
    i32 74, label %bb.u
    i32 33, label %bb.u
    i32 17, label %bb.u
    i32 15, label %bb.u
    i32 12, label %bb.u
    i32 2, label %bb.u
    i32 159, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.ax = getelementptr i8, ptr %0, i64 320
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !126
  %i.az = icmp eq i32 %i.ay, 3
  br i1 %i.az, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @__assert_fail(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.2, i32 noundef 4458, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_implicit_rest_node_create) #26
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ba = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.x, label %pm_implicit_rest_node_create.exit

bb.x:                                             ; preds = %bb.w
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_implicit_rest_node_create.exit:                ; preds = %bb.w
  %i.be = load i32, ptr %0, align 8, !tbaa !109
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %0, align 8, !tbaa !109
  store i16 70, ptr %i.ba, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bf, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load <2 x ptr>, ptr %i.at, align 8, !tbaa !14
  store <2 x ptr> %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  call void @pm_node_list_append(ptr noundef nonnull %5, ptr noundef nonnull %i.ba) #27
  br label %accept1.exit

bb.y:                                             ; preds = %bb.t
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bh = call fastcc ptr @parse_pattern_rest(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.bi = trunc nuw i8 %.084122 to i1
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !256
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !255
  %i.bl = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.av, ptr noundef %i.bj, ptr noundef %i.bk, i32 noundef 242) #27 ; 0 uses
  br label %bb.aa

accept1.exit110:                                  ; preds = %bb.t
  %i.bm = call fastcc ptr @parse_pattern_primitives(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef 224, i16 noundef zeroext %i.aw)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %accept1.exit110
  %.187 = phi ptr [ %i.bm, %accept1.exit110 ], [ %i.bh, %bb.z ], [ %i.bh, %bb.y ]
  %.1 = phi i8 [ %.084122, %accept1.exit110 ], [ 1, %bb.z ], [ 1, %bb.y ] ; 2 uses
  call void @pm_node_list_append(ptr noundef nonnull %5, ptr noundef nonnull %.187) #27
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !170
  %i.bn = icmp eq i32 %.val.i, 3
  br i1 %i.bn, label %bb.t, label %accept1.exit.loopexit, !llvm.loop !486

accept1.exit.loopexit:                            ; preds = %bb.aa
  %i.bo = trunc nuw i8 %.1 to i1
  br label %accept1.exit

accept1.exit:                                     ; preds = %accept1.exit.loopexit, %bb.s, %pm_implicit_rest_node_create.exit
  %.2 = phi i1 [ true, %pm_implicit_rest_node_create.exit ], [ false, %bb.s ], [ %i.bo, %accept1.exit.loopexit ]
  br i1 %.085, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %accept1.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !139 ; 2 uses
  %i.br = load i64, ptr %5, align 8, !tbaa !138   ; 4 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !105 ; 3 uses
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !115
  %i.bw = icmp eq i16 %i.bv, 139
  br i1 %i.bw, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.bx = call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #30 ; 10 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ad, label %pm_node_alloc.exit.i128

bb.ad:                                            ; preds = %bb.ac
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ca = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 104) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i128:                          ; preds = %bb.ac
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !105 ; 4 uses
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !115
  %i.cd = icmp eq i16 %i.cc, 139
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %pm_node_alloc.exit.i128
  call void @__assert_fail(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.2, i32 noundef 3778, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_find_pattern_node_create) #26
  unreachable

bb.af:                                            ; preds = %pm_node_alloc.exit.i128
  %i.ce = icmp eq i64 %i.br, 1
  br i1 %i.ce, label %bb.ag, label %._crit_edge27.i

bb.ag:                                            ; preds = %bb.af
  %i.cf = getelementptr i8, ptr %i.cb, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !134 ; 3 uses
  %i.ch = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 6 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ah, label %pm_missing_node_create.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ck = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cj, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_missing_node_create.exit.i:                    ; preds = %bb.ag
  %i.cl = load i32, ptr %0, align 8, !tbaa !109
  %i.cm = add i32 %i.cl, 1                        ; 2 uses
  store i16 103, ptr %i.ch, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.cm, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !14
  br label %bb.ai

._crit_edge27.i:                                  ; preds = %bb.af
  %.pre.i = load i32, ptr %0, align 8, !tbaa !109
  %.phi.trans.insert.i = getelementptr i8, ptr %i.bu, i64 16
  %.pre28.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !134
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge27.i, %pm_missing_node_create.exit.i
  %i.cn = phi ptr [ %i.cg, %pm_missing_node_create.exit.i ], [ %.pre28.i, %._crit_edge27.i ]
  %i.co = phi i32 [ %i.cm, %pm_missing_node_create.exit.i ], [ %.pre.i, %._crit_edge27.i ]
  %.024.i = phi ptr [ %i.ch, %pm_missing_node_create.exit.i ], [ %i.bu, %._crit_edge27.i ]
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %0, align 8, !tbaa !109
  %i.cq = getelementptr i8, ptr %i.cb, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !133
  %.sroa.8.0..sroa_idx.i129 = getelementptr i8, ptr %i.bx, i64 40
  store i16 52, ptr %i.bx, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.cp, ptr %.sroa.3.0..sroa_idx.i130, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx.i131, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  store ptr %i.cn, ptr %.sroa.5.0..sroa_idx.i132, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.cb, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !487
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr %.024.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !105
  %i.cs = add i64 %i.br, -3
  %i.ct = icmp ult i64 %i.cs, -2
  br i1 %i.ct, label %.lr.ph.i133, label %pm_find_pattern_node_create.exit

.lr.ph.i133:                                      ; preds = %bb.ai, %.lr.ph.i133
  %.026.i = phi i64 [ %i.cx, %.lr.ph.i133 ], [ 1, %bb.ai ] ; 2 uses
  %i.cu = load ptr, ptr %i.bp, align 8, !tbaa !139
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %.026.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !105
  call void @pm_node_list_append(ptr noundef nonnull %.sroa.8.0..sroa_idx.i129, ptr noundef %i.cw) #27
  %i.cx = add nuw i64 %.026.i, 1                  ; 2 uses
  %i.cy = load i64, ptr %5, align 8, !tbaa !138   ; 2 uses
  %i.cz = add i64 %i.cy, -1
  %i.da = icmp ult i64 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph.i133, label %pm_find_pattern_node_create.exit, !llvm.loop !489

pm_find_pattern_node_create.exit:                 ; preds = %.lr.ph.i133, %bb.ai
  %i.db = phi i64 [ %i.br, %bb.ai ], [ %i.cy, %.lr.ph.i133 ]
  %i.dc = icmp eq i64 %i.db, 2
  br i1 %i.dc, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %pm_find_pattern_node_create.exit
  %.val95 = load ptr, ptr %.sroa.4.0..sroa_idx.i131, align 8, !tbaa !133
  %.val96 = load ptr, ptr %.sroa.5.0..sroa_idx.i132, align 8, !tbaa !134
  %i.dd = getelementptr i8, ptr %0, i64 472
  %i.de = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dd, ptr noundef %.val95, ptr noundef %.val96, i32 noundef 233) #27 ; 0 uses
  br label %bb.at

bb.ak:                                            ; preds = %bb.ab, %accept1.exit
  %i.df = call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #30 ; 10 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.al, label %pm_node_alloc.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.di = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dh, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 120) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.ak
  %i.dj = load i32, ptr %0, align 8, !tbaa !109
  %i.dk = add i32 %i.dj, 1                        ; 2 uses
  store i32 %i.dk, ptr %0, align 8, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !139 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !105
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !133
  %i.dq = load i64, ptr %5, align 8, !tbaa !138   ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !105
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !134
  store i16 7, ptr %i.df, align 8, !tbaa !110
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %i.dk, ptr %.sroa.39.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  store ptr %i.dp, ptr %.sroa.4.0..sroa_idx.i111, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  store ptr %i.dv, ptr %.sroa.5.0..sroa_idx.i112, align 8, !tbaa !14
  %.not30.i = icmp eq i64 %i.dq, 0
  br i1 %.not30.i, label %pm_array_pattern_node_node_list_create.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pm_node_alloc.exit.i
  %i.dw = getelementptr i8, ptr %i.df, i64 56
  %i.dx = getelementptr i8, ptr %i.df, i64 32
  %i.dy = getelementptr i8, ptr %i.df, i64 64
  br label %bb.am

bb.am:                                            ; preds = %bb.ar, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ed, %bb.ar ] ; 2 uses
  %.02227.i = phi i1 [ false, %.lr.ph.i ], [ %.1.i, %bb.ar ]
  %i.dz = load ptr, ptr %i.dl, align 8, !tbaa !139
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.028.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !105 ; 5 uses
  %.not.i113 = icmp eq ptr %i.eb, null
  br i1 %.not.i113, label %pm_array_pattern_node_node_list_create.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.02227.i, label %.critedge26.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !115
  switch i16 %i.ec, label %bb.aq [
    i16 139, label %bb.ap
    i16 70, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !490
  br label %bb.ar

.critedge26.i:                                    ; preds = %bb.an
  call void @pm_node_list_append(ptr noundef %i.dy, ptr noundef nonnull %i.eb) #27
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @pm_node_list_append(ptr noundef %i.dx, ptr noundef nonnull %i.eb) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge26.i, %bb.ap
  %.1.i = phi i1 [ true, %.critedge26.i ], [ false, %bb.aq ], [ true, %bb.ap ]
  %i.ed = add nuw i64 %.028.i, 1                  ; 2 uses
  %i.ee = load i64, ptr %5, align 8, !tbaa !138
  %i.ef = icmp ult i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.am, label %pm_array_pattern_node_node_list_create.exit, !llvm.loop !492

pm_array_pattern_node_node_list_create.exit:      ; preds = %bb.am, %bb.ar, %pm_node_alloc.exit.i
  %or.cond = select i1 %.085, i1 %.2, i1 false
  br i1 %or.cond, label %bb.as, label %bb.at

bb.as:                                            ; preds = %pm_array_pattern_node_node_list_create.exit
  %.val93 = load ptr, ptr %.sroa.4.0..sroa_idx.i111, align 8, !tbaa !133
  %.val94 = load ptr, ptr %.sroa.5.0..sroa_idx.i112, align 8, !tbaa !134
  %i.eg = getelementptr i8, ptr %0, i64 472
  %i.eh = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.eg, ptr noundef %.val93, ptr noundef %.val94, i32 noundef 220) #27 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %pm_array_pattern_node_node_list_create.exit, %bb.as, %pm_find_pattern_node_create.exit, %bb.aj
  %.288 = phi ptr [ %i.bx, %bb.aj ], [ %i.bx, %pm_find_pattern_node_create.exit ], [ %i.df, %bb.as ], [ %i.df, %pm_array_pattern_node_node_list_create.exit ]
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !139
  call void @free(ptr noundef %i.ej) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ax

bb.au:                                            ; preds = %bb.r, %pm_symbol_node_label_p.exit108.thread
  br i1 %.085, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ek = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #30 ; 6 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.aw, label %pm_array_pattern_node_rest_create.exit

bb.aw:                                            ; preds = %bb.av
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.en = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.em, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 120) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_array_pattern_node_rest_create.exit:           ; preds = %bb.av
  %i.eo = load i32, ptr %0, align 8, !tbaa !109
  %i.ep = add i32 %i.eo, 1                        ; 2 uses
  store i32 %i.ep, ptr %0, align 8, !tbaa !109
  %i.eq = getelementptr i8, ptr %.086, i64 8
  store i16 7, ptr %i.ek, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.ep, ptr %.sroa.3.0..sroa_idx.i115, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.er = load <2 x ptr>, ptr %i.eq, align 8, !tbaa !14
  store <2 x ptr> %i.er, ptr %.sroa.4.0..sroa_idx.i116, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  store ptr %.086, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !105
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %pm_array_pattern_node_rest_create.exit, %bb.au, %bb.i, %bb.j, %bb.d, %bb.e, %bb.b, %bb.c, %bb.q
  %.0 = phi ptr [ %i.aq, %bb.q ], [ %i.aa, %bb.i ], [ %i.n, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %i.n, %bb.e ], [ %i.aa, %bb.j ], [ %.288, %bb.at ], [ %i.ek, %pm_array_pattern_node_rest_create.exit ], [ %.086, %bb.au ]
  ret ptr %.0
}

declare void @pm_constant_id_list_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_if_node_modifier_create(ptr noundef %0, ptr noundef %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %pm_node_alloc.exit
  %i.i = load i32, ptr %0, align 8, !tbaa !109
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !109
  %i.k = getelementptr i8, ptr %0, i64 304
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 2 uses
  store i16 140, ptr %i.e, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.j, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.phi.trans.insert.i.i = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !133
  store ptr %.pre.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 2 uses
  %i.o = icmp ugt ptr %i.n, %i.l
  br i1 %i.o, label %bb.e, label %pm_statements_node_body_append.exit

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !122
end_hunk_4
begin_hunk_5_@parse_return:bb.a
    i32 18, label %.loopexit
    i32 19, label %.loopexit
    i32 9, label %.loopexit
    i32 10, label %.loopexit
    i32 6, label %.loopexit
    i32 7, label %.loopexit
    i32 8, label %.loopexit
    i32 5, label %.loopexit
    i32 37, label %.loopexit.sink.split
    i32 40, label %.loopexit.sink.split
    i32 38, label %.loopexit.sink.split
    i32 39, label %.loopexit.sink.split
    i32 13, label %.loopexit.sink.split
    i32 16, label %.loopexit.sink.split
    i32 14, label %.loopexit.sink.split
    i32 15, label %.loopexit.sink.split
    i32 47, label %.thread
    i32 49, label %.thread
    i32 48, label %.thread
    i32 50, label %.thread
  ]

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 14992, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_return) #26
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.c = getelementptr i8, ptr %.01021, i64 8
  %.010 = load ptr, ptr %i.c, align 8, !tbaa !213 ; 2 uses
  %.not = icmp eq ptr %.010, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !513

.thread:                                          ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.d = getelementptr i8, ptr %.01021, i64 8
  %.01024 = load ptr, ptr %i.d, align 8, !tbaa !213 ; 2 uses
  %.not25 = icmp eq ptr %.01024, null
  br i1 %.not25, label %.critedge.thread, label %.lr.ph.outer, !llvm.loop !513

.critedge:                                        ; preds = %bb.c
  br i1 %.01120.ph, label %.critedge.thread, label %.loopexit

.critedge.thread:                                 ; preds = %.thread, %.critedge
  %i.e = getelementptr i8, ptr %0, i64 688
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.critedge.thread
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val14 = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.j = getelementptr i8, ptr %0, i64 472
  %i.k = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %.val13, ptr noundef %.val14, i32 noundef 259) #27 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.loopexit.sink.split, %bb.a, %.critedge, %.critedge.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_forwarding_super_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr %.40.val) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %.40.val, null               ; 2 uses
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %.40.val, align 8, !tbaa !115
  %i.c = icmp eq i16 %i.b, 14
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.2, i32 noundef 4064, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_forwarding_super_node_create) #26
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.d = load i32, ptr %1, align 8, !tbaa !126
  %i.e = icmp eq i32 %i.d, 98
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.2, i32 noundef 4065, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_forwarding_super_node_create) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %pm_node_alloc.exit

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.f
  %..40.val = select i1 %i.a, ptr %1, ptr %.40.val
  %storemerge.in = load i32, ptr %0, align 8, !tbaa !109
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in = getelementptr i8, ptr %1, i64 8
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8, !tbaa !127
  %.sroa.9.0.in = getelementptr i8, ptr %..40.val, i64 16
  %.sroa.9.0 = load ptr, ptr %.sroa.9.0.in, align 8, !tbaa !14
  store i16 58, ptr %i.f, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.40.val, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !514
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_super_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 98
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.2, i32 noundef 6344, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_super_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = getelementptr i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !314  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134  ; 3 uses
  %i.k = getelementptr i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.l, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !316  ; 2 uses
  %i.o = icmp ugt ptr %i.n, %i.j
  %spec.select.i = select i1 %i.o, ptr %i.n, ptr %i.j
  br label %pm_arguments_end.exit

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.p = getelementptr i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.q, null
  br i1 %.not18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !312  ; 2 uses
  %.not19.i = icmp eq ptr %i.u, null
  br i1 %.not19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %.013.i = phi ptr [ %i.y, %bb.k ], [ %i.s, %bb.h ], [ %i.w, %bb.j ], [ %i.j, %bb.e ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.z = icmp eq ptr %.013.i, null
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %pm_arguments_end.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 6349, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_super_node_create) #26
  unreachable

bb.m:                                             ; preds = %pm_arguments_end.exit
  %i.aa = load i32, ptr %0, align 8, !tbaa !109
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %0, align 8, !tbaa !109
  %i.ac = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.sroa.8.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %3 = getelementptr i8, ptr %2, i64 16
  %i.ad = getelementptr i8, ptr %2, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !14
  %4 = load ptr, ptr %i.ac, align 8, !tbaa !127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.af = load ptr, ptr %3, align 8, !tbaa !312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  store i16 142, ptr %i.c, align 8, !tbaa !110
  store i32 %i.ab, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store ptr %.013.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.af, ptr %.sroa.9.0..sroa_idx.a, align 8, !tbaa !511
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.h, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_yield_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !283
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.f = getelementptr i8, ptr %4, i64 8
  br label %bb.i

bb.d:                                             ; preds = %pm_node_alloc.exit
  %.not19 = icmp eq ptr %3, null
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %3, i64 16
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %2, align 8, !tbaa !283
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %2, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  %.0.in = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %bb.h ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !14
  %i.k = load i32, ptr %0, align 8, !tbaa !109
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !109
  %i.m = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store i16 151, ptr %i.a, align 8, !tbaa !110
  store i32 %i.l, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store ptr %.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %3, ptr %.sroa.9.0..sroa_idx.a, align 8, !tbaa !511
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_yield(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 504
  %.07 = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %.not8 = icmp eq ptr %.07, null
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.09 = phi ptr [ %.0, %bb.d ], [ %.07, %bb.a ]  ; 2 uses
  %i.b = load i32, ptr %.09, align 8, !tbaa !215
  switch i32 %i.b, label %bb.d [
    i32 17, label %.loopexit
    i32 21, label %.loopexit
    i32 22, label %.loopexit
    i32 18, label %.loopexit
    i32 20, label %.loopexit
    i32 19, label %.loopexit
    i32 13, label %bb.b
    i32 14, label %bb.b
    i32 16, label %bb.b
    i32 15, label %bb.b
    i32 36, label %bb.b
    i32 37, label %bb.b
    i32 38, label %bb.b
    i32 40, label %bb.b
    i32 39, label %bb.b
    i32 47, label %bb.b
    i32 50, label %bb.b
    i32 48, label %bb.b
    i32 49, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.e = getelementptr i8, ptr %0, i64 472
  %i.f = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %.val, ptr noundef %.val6, i32 noundef 172) #27 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 17337, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_yield) #26
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.09, i64 8
  %.0 = load ptr, ptr %i.g, align 8, !tbaa !213   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !516

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_rescues_implicit_begin(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 2, 8) %5, i16 noundef zeroext %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.b = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %pm_node_alloc.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.a
  %i.f = icmp eq ptr %4, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.f, label %pm_begin_node_create.exit, label %pm_node_alloc.exit.i.else

pm_node_alloc.exit.i.else:                        ; preds = %pm_node_alloc.exit.i
  %.sroa.gep11 = getelementptr i8, ptr %4, i64 16
  %.sroa.9.0.i.else.val = load ptr, ptr %.sroa.gep11, align 8, !tbaa !14
  br label %pm_begin_node_create.exit

pm_begin_node_create.exit:                        ; preds = %pm_node_alloc.exit.i.else, %pm_node_alloc.exit.i
  %.sroa.9.0.i = phi ptr [ %.val, %pm_node_alloc.exit.i ], [ %.sroa.9.0.i.else.val, %pm_node_alloc.exit.i.else ]
  store i16 11, ptr %i.b, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.val, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %4, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !136
  %i.g = add i16 %6, 1
  tail call fastcc void @parse_rescues(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, ptr noundef %i.b, i32 noundef %5, i16 noundef zeroext %i.g)
  store ptr %3, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !501
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_singleton_class_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr %.8.val1, ptr %.16.val3, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #30 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 112) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127
  store i16 135, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.8.val1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.16.val3, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %3, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !105
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.j, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.h, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @expect2(ptr noundef %0, i32 noundef range(i32 14, 67) %1, i32 noundef range(i32 17, 120) %2, i32 noundef range(i32 51, 271) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.b = icmp eq i32 %.val.i, %1
  %i.c = icmp eq i32 %.val.i, %2
  %spec.select.i.i = or i1 %i.b, %i.c
  br i1 %spec.select.i.i, label %accept2.exit.thread, label %accept2.exit

accept2.exit.thread:                              ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.b

accept2.exit:                                     ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 320
  %i.e = getelementptr i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !255  ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 472
  %i.h = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.g, ptr noundef %i.f, ptr noundef %i.f, i32 noundef %3) #27 ; 0 uses
  %i.i = getelementptr i8, ptr %0, i64 328
  store ptr %i.f, ptr %i.i, align 8, !tbaa !256
  store i32 163, ptr %i.d, align 8, !tbaa !200
  br label %bb.b

bb.b:                                             ; preds = %accept2.exit.thread, %accept2.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_class_node_create(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr noundef %2, ptr %.8.val1, ptr %.16.val3, ptr nofree noundef nonnull readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca %struct.pm_constant_id_list_t, align 8 ; 2 uses
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #30 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 128) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
end_hunk_5
begin_hunk_6_@parse_target:bb.a
  %i.cd = getelementptr i8, ptr %1, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !288
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.cg = getelementptr i8, ptr %1, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !117
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr i8, ptr %1, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !289
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.cm = getelementptr i8, ptr %1, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !125
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !311
  %i.cp = load ptr, ptr %4, align 8, !tbaa !283
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !284
  %i.cs = tail call fastcc i32 @pm_parser_local_add_location(ptr noundef %0, ptr noundef %i.cp, ptr noundef %i.cr, i32 noundef 0)
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef nonnull %1) #27
  %i.ct = call fastcc ptr @pm_local_variable_target_node_create(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %i.cs, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.ret172

bb.ak:                                            ; preds = %bb.ai
  %i.cu = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.cu, align 8, !tbaa !78
  %i.cv = icmp ult ptr %i.by, %.val
  br i1 %i.cv, label %peek_at.exit, label %peek_at.exit.thread

peek_at.exit:                                     ; preds = %bb.ak
  %i.cw = load i8, ptr %i.by, align 1, !tbaa !67
  %i.cx = icmp eq i8 %i.cw, 95
  br i1 %i.cx, label %bb.al, label %peek_at.exit.thread

peek_at.exit.thread:                              ; preds = %bb.ak, %peek_at.exit
  %i.cy = getelementptr i8, ptr %0, i64 520
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !40
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !153
  %i.dc = ptrtoint ptr %i.ca to i64
  %i.dd = ptrtoint ptr %i.by to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = tail call i64 %i.db(ptr noundef nonnull %i.by, i64 noundef %i.de) #27
  %.not104 = icmp eq i64 %i.df, 0
  br i1 %.not104, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %peek_at.exit.thread, %peek_at.exit
  br i1 %2, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dg = getelementptr i8, ptr %1, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !116
  %i.di = and i16 %i.dh, 4
  %.not106 = icmp eq i16 %i.di, 0
  br i1 %.not106, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = getelementptr i8, ptr %1, i64 8
  %.val110 = load ptr, ptr %i.dj, align 8, !tbaa !133
  %i.dk = getelementptr i8, ptr %1, i64 16
  %.val111 = load ptr, ptr %i.dk, align 8, !tbaa !134
  %i.dl = getelementptr i8, ptr %0, i64 472
  %i.dm = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dl, ptr noundef %.val110, ptr noundef %.val111, i32 noundef 286) #27 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.dn = getelementptr i8, ptr %1, i64 48
  tail call fastcc void @parse_write_name(ptr noundef nonnull %0, ptr noundef %i.dn)
  %i.do = tail call fastcc ptr @pm_call_target_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %common.ret172

bb.ap:                                            ; preds = %bb.ae, %bb.ae, %peek_at.exit.thread, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.dp = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !116
  %i.dr = and i16 %i.dq, 256
  %.not105 = icmp eq i16 %i.dr, 0
  br i1 %.not105, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 11 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ar, label %pm_node_alloc.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.dv = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.du, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.aq
  %i.dw = getelementptr i8, ptr %1, i64 88        ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !117 ; 4 uses
  %i.dy = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !289 ; 4 uses
  %i.ea = getelementptr i8, ptr %0, i64 688
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !53
  %i.ec = icmp ugt i32 %i.eb, 1
  br i1 %i.ec, label %bb.as, label %pm_index_arguments_check.exit.i

bb.as:                                            ; preds = %pm_node_alloc.exit.i
  %.not.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = getelementptr i8, ptr %i.dx, i64 2
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !116
  %i.ef = and i16 %i.ee, 8
  %.not16.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not16.i.i, label %.critedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.at
  %i.eg = getelementptr i8, ptr %i.dx, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !111 ; 2 uses
  %.not24.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not24.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ei = getelementptr i8, ptr %i.dx, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !446
  br label %bb.av

bb.au:                                            ; preds = %bb.aw
  %i.ek = add nuw i64 %.022.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ek, %i.eh
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.av, !llvm.loop !535

bb.av:                                            ; preds = %bb.au, %.lr.ph.i.i
  %.022.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ek, %bb.au ] ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ej, i64 %.022.i.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !105 ; 4 uses
  %.not17.i.i = icmp eq ptr %i.em, null
  br i1 %.not17.i.i, label %.critedge.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.en = load i16, ptr %i.em, align 8, !tbaa !115
  %i.eo = icmp eq i16 %i.en, 90
  br i1 %i.eo, label %bb.ax, label %bb.au

bb.ax:                                            ; preds = %bb.aw
  %i.ep = getelementptr i8, ptr %i.em, i64 8
  %.val20.i.i = load ptr, ptr %i.ep, align 8, !tbaa !133
  %i.eq = getelementptr i8, ptr %i.em, i64 16
  %.val21.i.i = load ptr, ptr %i.eq, align 8, !tbaa !134
  %i.er = getelementptr i8, ptr %0, i64 472
  %i.es = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.er, ptr noundef %.val20.i.i, ptr noundef %.val21.i.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.av, %bb.au, %bb.ax, %.preheader.i.i, %bb.at, %bb.as
  %.not18.i.i = icmp eq ptr %i.dz, null
  br i1 %.not18.i.i, label %pm_index_arguments_check.exitthread-pre-split.i, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i.i
  %i.et = getelementptr i8, ptr %i.dz, i64 8
  %.val.i.i = load ptr, ptr %i.et, align 8, !tbaa !133
  %i.eu = getelementptr i8, ptr %i.dz, i64 16
  %.val19.i.i = load ptr, ptr %i.eu, align 8, !tbaa !134
  %i.ev = getelementptr i8, ptr %0, i64 472
  %i.ew = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ev, ptr noundef %.val.i.i, ptr noundef %.val19.i.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exitthread-pre-split.i

pm_index_arguments_check.exitthread-pre-split.i:  ; preds = %bb.ay, %.critedge.i.i
  %.pr.i = load ptr, ptr %i.dy, align 8, !tbaa !289
  br label %pm_index_arguments_check.exit.i

pm_index_arguments_check.exit.i:                  ; preds = %pm_index_arguments_check.exitthread-pre-split.i, %pm_node_alloc.exit.i
  %i.ex = phi ptr [ %.pr.i, %pm_index_arguments_check.exitthread-pre-split.i ], [ %i.dz, %pm_node_alloc.exit.i ] ; 3 uses
  %.not.i134 = icmp eq ptr %i.ex, null
  br i1 %.not.i134, label %pm_index_target_node_create.exit, label %bb.az

bb.az:                                            ; preds = %pm_index_arguments_check.exit.i
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !115
  %i.ez = icmp eq i16 %i.ey, 12
  br i1 %i.ez, label %pm_index_target_node_create.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @__assert_fail(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.2, i32 noundef 3111, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_target_node_create) #26
  unreachable

pm_index_target_node_create.exit:                 ; preds = %pm_index_arguments_check.exit.i, %bb.az
  %i.fa = load i16, ptr %i.dp, align 2, !tbaa !116
  %i.fb = or i16 %i.fa, 16
  %i.fc = load i32, ptr %0, align 8, !tbaa !109
  %i.fd = add i32 %i.fc, 1                        ; 2 uses
  store i32 %i.fd, ptr %0, align 8, !tbaa !109
  %i.fe = getelementptr i8, ptr %1, i64 8
  %i.ff = getelementptr i8, ptr %1, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !125
  %i.fh = getelementptr i8, ptr %1, i64 72
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 16, i1 false)
  %i.fi = load ptr, ptr %i.dw, align 8, !tbaa !117
  %i.fj = getelementptr i8, ptr %1, i64 96
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false)
  store i16 75, ptr %i.ds, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 %i.fb, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.fd, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.fk = load <2 x ptr>, ptr %i.fe, align 8, !tbaa !14
  store <2 x ptr> %i.fk, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.fg, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store ptr %i.fi, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !511
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  store ptr %i.ex, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !536
  tail call void @free(ptr noundef nonnull %1) #27
  br label %common.ret172

bb.bb:                                            ; preds = %bb.a, %bb.ap
  %i.fl = getelementptr i8, ptr %1, i64 8
  %.val108 = load ptr, ptr %i.fl, align 8, !tbaa !133
  %i.fm = getelementptr i8, ptr %1, i64 16
  %.val109 = load ptr, ptr %i.fm, align 8, !tbaa !134
  %i.fn = getelementptr i8, ptr %0, i64 472
  %i.fo = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.fn, ptr noundef %.val108, ptr noundef %.val109, i32 noundef 294) #27 ; 0 uses
  br label %common.ret172
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_for_node_create(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %.8.val, ptr %.16.val, ptr %.8.val1, ptr %.16.val3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #30 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 112) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %5, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !126
  %i.j = icmp eq i32 %i.i, 164
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.k = getelementptr i8, ptr %4, i64 8
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %i.m = phi <2 x ptr> [ %i.l, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit ]
  %i.n = getelementptr i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127
  store i16 55, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.8.val1, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.16.val3, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x ptr> %i.m, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.o, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !14
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.h, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_conditional(ptr noundef %0, i32 noundef range(i32 29, 53) %1, i64 noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.pm_node_list, align 8       ; 5 uses
  %6 = alloca %struct.pm_token_t, align 8         ; 12 uses
  %7 = alloca %struct.pm_token_t, align 8         ; 11 uses
  %8 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %9 = alloca %struct.pm_token_t, align 8         ; 4 uses
  %10 = alloca %struct.pm_token_t, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 680        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  store ptr %5, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.c = getelementptr i8, ptr %0, i64 320        ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = getelementptr i8, ptr %0, i64 304        ; 2 uses
  %.val97 = load ptr, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %7, align 8, !tbaa !126, !alias.scope !538
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.e, align 4, !alias.scope !538
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.val97, ptr %i.f, align 8, !tbaa !127, !alias.scope !538
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.val97, ptr %i.g, align 8, !tbaa !128, !alias.scope !538
  %i.h = add i16 %4, 1                            ; 3 uses
  %i.i = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %context_push.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 44, ptr %i.i, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i134, align 4
  %.sroa.3.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.j = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx.i135, align 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.a, %bb.b
  %i.l = icmp eq i32 %1, 29
  %i.m = select i1 %i.l, i32 54, i32 58
  %i.n = add i16 %4, 2                            ; 2 uses
  %i.o = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 6, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef range(i32 26, 256) %i.m, i16 noundef zeroext %i.n), !inline_history !541 ; 5 uses
  %i.p = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef readonly %i.o), !inline_history !541 ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %parse_value_expression.exit, label %bb.c

bb.c:                                             ; preds = %context_push.exit
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val.i.i133 = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %.val5.i.i = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.s = getelementptr i8, ptr %0, i64 472
  %i.t = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.s, ptr noundef %.val.i.i133, ptr noundef %.val5.i.i, i32 noundef 290) #27, !inline_history !541 ; 0 uses
  br label %parse_value_expression.exit

parse_value_expression.exit:                      ; preds = %context_push.exit, %bb.c
  %i.u = getelementptr i8, ptr %0, i64 344        ; 14 uses
  %.val.i130 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i130, label %accept1.exit.thread149 [
    i32 17, label %accept2.exit132
    i32 14, label %accept2.exit132
    i32 12, label %.critedge.i
  ]

accept2.exit132:                                  ; preds = %parse_value_expression.exit, %parse_value_expression.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i129.pr = load i32, ptr %i.u, align 8, !tbaa !170
  %i.v = icmp eq i32 %.val.i129.pr, 12
  br i1 %i.v, label %.critedge.i, label %parse_predicate.exit

.critedge.i:                                      ; preds = %parse_value_expression.exit, %accept2.exit132
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  br label %parse_predicate.exit

accept1.exit.thread149:                           ; preds = %parse_value_expression.exit
  %i.w = getelementptr i8, ptr %0, i64 352
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166
  %i.y = getelementptr i8, ptr %0, i64 360
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = getelementptr i8, ptr %0, i64 472
  %i.ab = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.aa, ptr noundef %i.x, ptr noundef %i.z, i32 noundef 55) #27 ; 0 uses
  br label %parse_predicate.exit

parse_predicate.exit:                             ; preds = %accept2.exit132, %.critedge.i, %accept1.exit.thread149
  %i.ac = getelementptr i8, ptr %0, i64 504       ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !257
  call void @free(ptr noundef %i.ad) #27
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !253
  %.val95 = load i32, ptr %i.u, align 8, !tbaa !170
  %i.ag = add i32 %.val95, -6
  %i.ah = icmp ult i32 %i.ag, 3
  br i1 %i.ah, label %accept2.exit, label %bb.d

bb.d:                                             ; preds = %parse_predicate.exit
  %i.ai = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !7
  %i.ak = shl i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !7
  %i.al = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef %1, i16 noundef zeroext %i.h) ; 2 uses
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !7
  %i.an = lshr i32 %i.am, 1
  store i32 %i.an, ptr %i.ai, align 8, !tbaa !7
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i, label %accept2.exit [
    i32 17, label %bb.e
    i32 14, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit

accept2.exit:                                     ; preds = %bb.d, %parse_predicate.exit, %bb.e
  %.090 = phi ptr [ null, %parse_predicate.exit ], [ %i.al, %bb.d ], [ %i.al, %bb.e ] ; 4 uses
end_hunk_6
begin_hunk_7_@pm_until_node_create:bb.a
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !126
  %i.j = icmp eq i32 %i.i, 164
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %i.m = phi <2 x ptr> [ %i.l, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit ]
  %i.n = load i32, ptr %2, align 8, !tbaa !126
  %i.o = icmp eq i32 %i.n, 164
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.12.0 = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  %.sroa.14.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ]
  store i16 147, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.8.val, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.16.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x ptr> %i.m, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %3, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !105
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %4, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !136
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_while_node_create(ptr noundef %0, ptr %.8.val, ptr %.16.val, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef %3, i32 noundef 0)
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !126
  %i.j = icmp eq i32 %i.i, 164
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %i.m = phi <2 x ptr> [ %i.l, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit ]
  %i.n = load i32, ptr %2, align 8, !tbaa !126
  %i.o = icmp eq i32 %i.n, 164
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.12.0 = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  %.sroa.14.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ]
  store i16 149, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.8.val, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.16.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x ptr> %i.m, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %3, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !105
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %4, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !136
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_symbol_node_create_current_string(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 640        ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 672
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %i.c, @pm_encodings
  br i1 %i.d, label %parse_symbol_encoding.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %.not = icmp eq ptr %i.f, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  %i.g = select i1 %.not, i16 10, i16 2
  br label %parse_symbol_encoding.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call i64 @pm_string_length(ptr noundef %i.a) #27 ; 2 uses
  %i.i = tail call ptr @pm_string_source(ptr noundef %i.a) #27
  %.not1011.i.i = icmp eq i64 %i.h, 0
  br i1 %.not1011.i.i, label %parse_symbol_encoding.exit, label %.lr.ph.i24.i

bb.e:                                             ; preds = %.lr.ph.i24.i
  %i.j = add nuw i64 %.0812.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.h
  br i1 %exitcond.not.i.i, label %parse_symbol_encoding.exit, label %.lr.ph.i24.i, !llvm.loop !482

.lr.ph.i24.i:                                     ; preds = %bb.d, %bb.e
  %.0812.i.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 %.0812.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !67
  %.not.i25.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i25.i, label %bb.e, label %parse_symbol_encoding.exit

parse_symbol_encoding.exit:                       ; preds = %.lr.ph.i24.i, %bb.e, %bb.b, %bb.d, %bb.c
  %.0.i = phi i16 [ %i.g, %bb.c ], [ 18, %bb.d ], [ 6, %bb.b ], [ 2, %.lr.ph.i24.i ], [ 18, %bb.e ]
  %i.m = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %pm_node_alloc.exit.i

bb.f:                                             ; preds = %parse_symbol_encoding.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.p = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.o, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %parse_symbol_encoding.exit
  %i.q = load i32, ptr %1, align 8, !tbaa !126
  %i.r = icmp eq i32 %i.q, 164                    ; 2 uses
  %..i = select i1 %i.r, ptr %2, ptr %1
  %.in.i = getelementptr i8, ptr %..i, i64 8
  %i.s = load ptr, ptr %.in.i, align 8, !tbaa !127
  %i.t = load i32, ptr %3, align 8, !tbaa !126
  %i.u = icmp eq i32 %i.t, 164                    ; 2 uses
  %.pn22.i = select i1 %i.u, ptr %2, ptr %3
  %.in21.i = getelementptr i8, ptr %.pn22.i, i64 16
  %i.v = load ptr, ptr %.in21.i, align 8, !tbaa !128
  %i.w = load i32, ptr %0, align 8, !tbaa !109
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %0, align 8, !tbaa !109
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pm_node_alloc.exit.i
  %i.y = getelementptr i8, ptr %1, i64 8
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %pm_node_alloc.exit.i
  %i.aa = phi <2 x ptr> [ %i.z, %bb.g ], [ splat (ptr null), %pm_node_alloc.exit.i ]
  %i.ab = getelementptr i8, ptr %2, i64 8
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !14
  br i1 %i.u, label %pm_symbol_node_create_unescaped.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %3, i64 8
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !14
  br label %pm_symbol_node_create_unescaped.exit

pm_symbol_node_create_unescaped.exit:             ; preds = %bb.h, %bb.i
  %i.af = phi <2 x ptr> [ %i.ae, %bb.i ], [ splat (ptr null), %bb.h ]
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i16 143, ptr %i.m, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %.0.i, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.x, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store <2 x ptr> %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store <2 x ptr> %i.ac, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store <2 x ptr> %i.af, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_interpolated_symbol_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !126
  %i.l = icmp eq i32 %i.k, 164
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %.sroa.6.0 = phi ptr [ %i.h, %bb.c ], [ null, %pm_node_alloc.exit ]
  %.sroa.8.0 = phi ptr [ %i.n, %bb.c ], [ null, %pm_node_alloc.exit ]
  %i.o = load i32, ptr %3, align 8, !tbaa !126
  %i.p = icmp eq i32 %i.o, 164
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.11.0 = phi ptr [ %i.r, %bb.e ], [ null, %bb.d ]
  %.sroa.13.0 = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  store i16 86, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.s = getelementptr i8, ptr %2, i64 16
  %i.t = load i64, ptr %2, align 8, !tbaa !138
  %.not24 = icmp eq i64 %i.t, 0
  br i1 %.not24, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %pm_interpolated_symbol_node_append.exit
  %.022 = phi i64 [ %i.ah, %pm_interpolated_symbol_node_append.exit ], [ 0, %.preheader ] ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.022
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 4 uses
  %.not21 = icmp eq ptr %i.w, null
  br i1 %.not21, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.x = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !367
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %pm_interpolated_symbol_node_append.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !369
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %pm_interpolated_symbol_node_append.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.w, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit

pm_interpolated_symbol_node_append.exit:          ; preds = %bb.g, %bb.h, %bb.i
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.10.0..sroa_idx, ptr noundef nonnull %i.w)
  %i.ad = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !371 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134 ; 2 uses
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %..i = select i1 %i.ag, ptr %i.ad, ptr %i.af
  store ptr %..i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !371
  %i.ah = add nuw i64 %.022, 1                    ; 2 uses
  %i.ai = load i64, ptr %2, align 8, !tbaa !138
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.critedge, !llvm.loop !557

.critedge:                                        ; preds = %pm_interpolated_symbol_node_append.exit, %.lr.ph, %.preheader, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_interpolated_string_node_append(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !558
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !560
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !561
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !562  ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134  ; 2 uses
  %i.n = icmp ugt ptr %i.k, %i.m
  %. = select i1 %i.n, ptr %i.k, ptr %i.m
  store ptr %., ptr %i.j, align 8, !tbaa !562
  %i.o = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.o, label %bb.v [
    i16 141, label %bb.e
    i16 85, label %bb.h
    i16 48, label %bb.j
    i16 49, label %bb.t
    i16 150, label %bb.u
    i16 87, label %bb.u
    i16 143, label %bb.u
    i16 86, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %1, i64 2          ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !116  ; 2 uses
  %i.r = and i16 %i.q, 16
  %.not51 = icmp eq i16 %i.r, 0
  br i1 %.not51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !116
  %i.u = and i16 %i.t, -3
  store i16 %i.u, ptr %i.s, align 2, !tbaa !116
  %.pre = load i16, ptr %i.p, align 2, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i16 [ %.pre, %bb.f ], [ %i.q, %bb.e ]
  %i.w = and i16 %i.v, -51
  %i.x = or disjoint i16 %i.w, 18
  store i16 %i.x, ptr %i.p, align 2, !tbaa !116
  br label %bb.w

bb.h:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %1, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !116
  %i.aa = and i16 %i.z, 2
  %.not50 = icmp eq i16 %i.aa, 0
  br i1 %.not50, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !116
  %i.ad = and i16 %i.ac, -15
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !563
  br label %bb.w

bb.j:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !564 ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !101
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.af, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !105 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.j, %bb.k, %bb.l
  %i.an = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !116
  %i.ap = and i16 %i.ao, -15
  store i16 %i.ap, ptr %i.an, align 2, !tbaa !563
  br label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.aq = load i16, ptr %i.al, align 8, !tbaa !115
  switch i16 %i.aq, label %bb.s [
    i16 141, label %bb.n
    i16 85, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %i.al, i64 2      ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !116
  %i.at = and i16 %i.as, -51
  %i.au = or disjoint i16 %i.at, 18
  store i16 %i.au, ptr %i.ar, align 2, !tbaa !116
  %i.av = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !116 ; 2 uses
  %i.ax = and i16 %i.aw, 2
  %.not49 = icmp eq i16 %i.ax, 0
  br i1 %.not49, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = and i16 %i.aw, -13
  %i.az = or disjoint i16 %i.ay, 8
  store i16 %i.az, ptr %i.av, align 2, !tbaa !563
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %i.al, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !116
  %i.bc = and i16 %i.bb, 2
  %.not47 = icmp eq i16 %i.bc, 0
  br i1 %.not47, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !116 ; 2 uses
  %i.bf = and i16 %i.be, 2
  %.not48 = icmp eq i16 %i.bf, 0
  br i1 %.not48, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = and i16 %i.be, -13
  %i.bh = or disjoint i16 %i.bg, 8
  store i16 %i.bh, ptr %i.bd, align 2, !tbaa !563
  br label %bb.w

bb.s:                                             ; preds = %bb.m, %bb.p
  %i.bi = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !116
  %i.bk = and i16 %i.bj, -15
  store i16 %i.bk, ptr %i.bi, align 2, !tbaa !563
  br label %bb.w

bb.t:                                             ; preds = %bb.d
  %i.bl = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !116
  %i.bn = and i16 %i.bm, -15
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !563
  br label %bb.w

bb.u:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.bo = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !116
  %i.bq = and i16 %i.bp, -15
  store i16 %i.bq, ptr %i.bo, align 2, !tbaa !563
  br label %bb.w

bb.v:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.2, i32 noundef 4869, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_interpolated_string_node_append) #26
  unreachable

bb.w:                                             ; preds = %.thread, %bb.s, %bb.r, %bb.q, %bb.n, %bb.o, %bb.i, %bb.h, %bb.u, %bb.t, %bb.g
  tail call void @pm_node_list_append(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #27
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_regular_expression_node_create(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr nofree noundef readonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_regular_expression_node_create_unescaped.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_regular_expression_node_create_unescaped.exit: ; preds = %bb.a
  %i.e = tail call fastcc zeroext i16 @pm_regular_expression_flags_create(ptr noundef %0, ptr noundef readonly %2)
  %i.f = or i16 %i.e, 2
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = getelementptr i8, ptr %2, i64 8
  store i16 125, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.f, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !127
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  store <2 x ptr> %i.l, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.8.val, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.16.val, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  store <2 x ptr> %i.o, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_regular_expression_node_create_unescaped(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = tail call fastcc zeroext i16 @pm_regular_expression_flags_create(ptr noundef %0, ptr noundef %3)
  %i.f = or i16 %i.e, 2
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = getelementptr i8, ptr %3, i64 16
  %i.k = getelementptr i8, ptr %2, i64 8
  %i.l = getelementptr i8, ptr %3, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !14
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !127
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %5 = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %6 = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i16 125, ptr %i.a, align 8, !tbaa !110
  store i16 %i.f, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store ptr %6, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.m, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %5, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.o, ptr %.sroa.10.0..sroa_idx.a, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_regular_expression_errors(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.parse_regular_expression_error_data_t, align 8 ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 72         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %0, ptr %2, align 8, !tbaa !566
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !14
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr i8, ptr %1, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !569
  %i.h = icmp eq i32 %i.g, 1
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %i.e, align 8, !tbaa !570
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.j, i8 0, i64 7, i1 false)
  %i.k = tail call ptr @pm_string_source(ptr noundef %i.a) #27
  %i.l = tail call i64 @pm_string_length(ptr noundef %i.a) #27
  %i.m = getelementptr i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !116
  %i.o = and i16 %i.n, 8
  %i.p = icmp ne i16 %i.o, 0
  call void @pm_regexp_parse(ptr noundef %0, ptr noundef %i.k, i64 noundef %i.l, i1 noundef zeroext %i.p, ptr noundef null, ptr noundef null, ptr noundef nonnull @parse_regular_expression_error, ptr noundef nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i16 @parse_and_validate_regular_expression_encoding(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 672        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.c = getelementptr i8, ptr %0, i64 520        ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = icmp ne ptr %i.d, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  %i.f = icmp ne ptr %i.b, null
  %or.cond3 = or i1 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %or.cond3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 472
  %i.h = getelementptr i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.j = getelementptr i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 80), align 16, !tbaa !276
  %i.m = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, i32 noundef 153, ptr noundef %i.l) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = zext i16 %3 to i32                       ; 4 uses
  %i.o = and i32 %i.n, 128
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call fastcc zeroext i16 @parse_and_validate_regular_expression_encoding_modifier(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef signext 110, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 96))
  br label %parse_and_validate_regular_expression_encoding_modifier.exit

bb.e:                                             ; preds = %bb.c
  %i.q = and i32 %i.n, 512
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.s = icmp ne ptr %i.r, null
  %brmerge = or i1 %2, %i.s
  br i1 %brmerge, label %parse_and_validate_regular_expression_encoding_modifier.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.u = icmp eq ptr %i.t, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %0, i64 472
  %i.w = getelementptr i8, ptr %0, i64 352
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166
  %i.y = getelementptr i8, ptr %0, i64 360
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 80), align 16, !tbaa !276
  %i.ab = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, i32 noundef 153, ptr noundef %i.aa) #27 ; 0 uses
  br label %parse_and_validate_regular_expression_encoding_modifier.exit

bb.i:                                             ; preds = %bb.g
  %.not70.i = icmp eq ptr %i.t, @pm_encodings
  br i1 %.not70.i, label %parse_and_validate_regular_expression_encoding_modifier.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %0, i64 472
  %i.ad = getelementptr i8, ptr %0, i64 352
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !166
  %i.af = getelementptr i8, ptr %0, i64 360
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.ah = getelementptr i8, ptr %i.t, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !276
  %i.aj = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.ag, i32 noundef 247, i32 noundef 117, ptr noundef %i.ai) #27 ; 0 uses
  br label %parse_and_validate_regular_expression_encoding_modifier.exit

bb.k:                                             ; preds = %bb.e
  %i.ak = and i32 %i.n, 64
  %.not45 = icmp eq i32 %i.ak, 0
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = tail call fastcc zeroext i16 @parse_and_validate_regular_expression_encoding_modifier(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef signext 101, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 144))
  br label %parse_and_validate_regular_expression_encoding_modifier.exit

bb.m:                                             ; preds = %bb.k
  %i.am = and i32 %i.n, 256
  %.not46 = icmp eq i32 %i.am, 0
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call fastcc zeroext i16 @parse_and_validate_regular_expression_encoding_modifier(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef signext 115, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 192))
  br label %parse_and_validate_regular_expression_encoding_modifier.exit

bb.o:                                             ; preds = %bb.m
  br i1 %2, label %parse_and_validate_regular_expression_encoding_modifier.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !207 ; 2 uses
  %.not47 = icmp eq ptr %i.ao, null
  br i1 %.not47, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = icmp eq ptr %i.ao, @pm_encodings
  br i1 %i.ap, label %parse_and_validate_regular_expression_encoding_modifier.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ar = icmp eq ptr %i.aq, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.ar, label %parse_and_validate_regular_expression_encoding_modifier.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  br label %parse_and_validate_regular_expression_encoding_modifier.exit

parse_and_validate_regular_expression_encoding_modifier.exit: ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %bb.r, %bb.q, %bb.o, %bb.s, %bb.n, %bb.l, %bb.d
  %.0 = phi i16 [ %i.p, %bb.d ], [ 2048, %bb.r ], [ %i.al, %bb.l ], [ %i.an, %bb.n ], [ 0, %bb.s ], [ 4096, %bb.o ], [ 1024, %bb.q ], [ %3, %bb.f ], [ %3, %bb.j ], [ %3, %bb.h ], [ %3, %bb.i ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_interpolated_regular_expression_node_create(ptr nofree noundef captures(none) %0, ptr %.8.val, ptr %.16.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  store i16 84, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.16.val, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.8.val, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.16.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_interpolated_regular_expression_node_append(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.e = icmp ugt ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !405
  br label %bb.c
end_hunk_7
begin_hunk_8_@parse_symbol:bb.a
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %pm_node_alloc.exit.i.i.cont
  %i.x = icmp eq ptr %i.w, @pm_encodings
  br i1 %i.x, label %parse_symbol_encoding.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 520
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %.not70 = icmp eq ptr %i.z, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  %.mux.i = select i1 %.not70, i16 8, i16 0
  br label %parse_symbol_encoding.exit

bb.l:                                             ; preds = %pm_node_alloc.exit.i.i.cont
  %i.aa = tail call i64 @pm_string_length(ptr noundef %i.u) #27 ; 2 uses
  %i.ab = tail call ptr @pm_string_source(ptr noundef %i.u) #27
  %.not1011.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not1011.i.i, label %parse_symbol_encoding.exit, label %.lr.ph.i24.i

bb.m:                                             ; preds = %.lr.ph.i24.i
  %i.ac = add nuw i64 %.0812.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i, label %parse_symbol_encoding.exit, label %.lr.ph.i24.i, !llvm.loop !482

.lr.ph.i24.i:                                     ; preds = %bb.l, %bb.m
  %.0812.i.i = phi i64 [ %i.ac, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 %.0812.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !67
  %.not.i25.i = icmp sgt i8 %i.ae, -1
  br i1 %.not.i25.i, label %bb.m, label %parse_symbol_encoding.exit

parse_symbol_encoding.exit:                       ; preds = %.lr.ph.i24.i, %bb.m, %bb.j, %bb.l, %bb.k
  %.0.i = phi i16 [ %.mux.i, %bb.k ], [ 16, %bb.l ], [ 4, %bb.j ], [ 16, %bb.m ], [ 0, %.lr.ph.i24.i ]
  %i.af = load i16, ptr %.sroa.2.0..sroa_idx.i.i, align 2, !tbaa !116
  %i.ag = or i16 %i.af, %.0.i
  store i16 %i.ag, ptr %.sroa.2.0..sroa_idx.i.i, align 2, !tbaa !116
  br label %bb.bo

bb.n:                                             ; preds = %bb.a
  %i.ah = trunc nuw i8 %.16.val to i1
  br i1 %i.ah, label %bb.o, label %bb.aq

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %0, i64 344       ; 3 uses
  %.val116 = load i32, ptr %i.ai, align 8, !tbaa !170
  %i.aj = icmp eq i32 %.val116, 149
  br i1 %i.aj, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not107 = icmp eq i32 %1, 0
  br i1 %.not107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.ak, align 4, !tbaa !195
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.al = getelementptr i8, ptr %0, i64 304
  %.val120 = load ptr, ptr %i.al, align 8, !tbaa !74 ; 4 uses
  %.sroa.036.0.copyload = load i32, ptr %i.a, align 8, !tbaa !7
  %.sroa.438.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.438.0.copyload = load ptr, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !14
  %.sroa.539.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.539.0.copyload = load ptr, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.am = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.s, label %pm_node_alloc.exit.i.i122

bb.s:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ap = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ao, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i.i122:                        ; preds = %bb.r
  %i.aq = load i32, ptr %4, align 8, !tbaa !126
  %i.ar = icmp eq i32 %i.aq, 164                  ; 3 uses
  %.sroa.gep43 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.speculate.load.false48 = load ptr, ptr %.sroa.gep43, align 8, !tbaa !127 ; 2 uses
  %.sroa.speculated49 = select i1 %i.ar, ptr %.val120, ptr %.sroa.speculate.load.false48
  %i.as = icmp eq i32 %.sroa.036.0.copyload, 164  ; 3 uses
  %.sroa.speculated41 = select i1 %i.as, ptr %.val120, ptr %.sroa.539.0.copyload
  %i.at = load i32, ptr %0, align 8, !tbaa !109
  %i.au = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.au, ptr %0, align 8, !tbaa !109
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %.sroa.6.0.i.i127 = select i1 %i.ar, ptr null, ptr %.sroa.speculate.load.false48
  %.sroa.8.0.i.i128 = select i1 %i.ar, ptr null, ptr %i.aw
  %.sroa.12.0.i.i129 = select i1 %i.as, ptr null, ptr %.sroa.438.0.copyload
  %.sroa.14.0.i.i130 = select i1 %i.as, ptr null, ptr %.sroa.539.0.copyload
  store i16 143, ptr %i.am, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i.i131, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i132 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.au, ptr %.sroa.3.0..sroa_idx.i.i132, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.speculated49, ptr %.sroa.4.0..sroa_idx.i.i133, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i134 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.speculated41, ptr %.sroa.5.0..sroa_idx.i.i134, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i.i135 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %.sroa.6.0.i.i127, ptr %.sroa.6.0..sroa_idx.i.i135, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i.i136 = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %.sroa.8.0.i.i128, ptr %.sroa.8.0..sroa_idx.i.i136, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i.i137 = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %.val120, ptr %.sroa.10.0..sroa_idx.i.i137, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %.val120, ptr %.sroa.11.0..sroa_idx.i.i138, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i.i139 = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %.sroa.12.0.i.i129, ptr %.sroa.12.0..sroa_idx.i.i139, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx.i.i140 = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %.sroa.14.0.i.i130, ptr %.sroa.14.0..sroa_idx.i.i140, align 8, !tbaa !14
  br label %bb.bo

bb.t:                                             ; preds = %bb.o
  %i.ax = add i16 %2, 1                           ; 2 uses
  %i.ay = tail call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.ax) ; 8 uses
  %.not103 = icmp eq ptr %i.ay, null              ; 2 uses
  br i1 %.not103, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !115
  %i.ba = icmp eq i16 %i.az, 141
  br i1 %i.ba, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %.val118 = load i32, ptr %i.ai, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val118, label %bb.ab [
    i32 149, label %bb.w
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.not106 = icmp eq i32 %1, 0
  br i1 %.not106, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.bb, align 4, !tbaa !195
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bc = icmp eq i32 %.val118, 149
  br i1 %i.bc, label %accept1.exit.thread.i100, label %accept1.exit.i

accept1.exit.thread.i100:                         ; preds = %bb.y
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit101

accept1.exit.i:                                   ; preds = %bb.y
  %i.bd = getelementptr i8, ptr %0, i64 336
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !255 ; 3 uses
  %i.bf = getelementptr i8, ptr %0, i64 472
  %i.bg = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bf, ptr noundef %i.be, ptr noundef %i.be, i32 noundef 272) #27 ; 0 uses
  %i.bh = getelementptr i8, ptr %0, i64 328
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %expect1.exit101

expect1.exit101:                                  ; preds = %accept1.exit.thread.i100, %accept1.exit.i
  %i.bi = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.z, label %pm_node_alloc.exit.i102

bb.z:                                             ; preds = %expect1.exit101
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bl = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bk, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i102:                          ; preds = %expect1.exit101
  %i.bm = load i32, ptr %0, align 8, !tbaa !109
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  store i32 %i.bn, ptr %0, align 8, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !127 ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 336
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !128 ; 2 uses
  %i.bs = load i32, ptr %4, align 8, !tbaa !126
  %i.bt = icmp eq i32 %i.bs, 164                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %.sroa.6.0.i = select i1 %i.bt, ptr null, ptr %i.bp
  %.sroa.8.0.i = select i1 %i.bt, ptr null, ptr %i.bv
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !126
  %i.bx = icmp eq i32 %i.bw, 164
  br i1 %i.bx, label %pm_string_node_to_symbol_node.exit, label %bb.aa

bb.aa:                                            ; preds = %pm_node_alloc.exit.i102
  %i.by = getelementptr i8, ptr %0, i64 328
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !127
  br label %pm_string_node_to_symbol_node.exit

pm_string_node_to_symbol_node.exit:               ; preds = %pm_node_alloc.exit.i102, %bb.aa
  %.sroa.11.0.i = phi ptr [ %i.bz, %bb.aa ], [ null, %pm_node_alloc.exit.i102 ]
  %.sroa.13.0.i = phi ptr [ %i.br, %bb.aa ], [ null, %pm_node_alloc.exit.i102 ]
  %i.ca = getelementptr i8, ptr %i.ay, i64 40     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ay, i64 72     ; 2 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  store i16 143, ptr %i.bi, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %.sroa.3.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 %i.bn, ptr %.sroa.3.0..sroa_idx.i104, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx.i105, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.br, ptr %.sroa.5.0..sroa_idx.i106, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i107, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i108, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  %.sroa.11.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store ptr %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx.i109, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store ptr %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx.i110, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 66, ptr %3, align 8, !tbaa !126
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !14
  store <2 x ptr> %i.ce, ptr %i.cd, align 8, !tbaa !14
  %i.cf = call fastcc zeroext i16 @parse_symbol_encoding(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %i.cb, i1 noundef zeroext true)
  %i.cg = or i16 %i.cf, 2
  store i16 %i.cg, ptr %.sroa.2.0..sroa_idx.i103, align 2, !tbaa !116
  tail call void @free(ptr noundef nonnull %i.ay) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.bo

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t
  %i.ch = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 15 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ac, label %pm_node_alloc.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ck = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cj, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.ab
  %i.cl = load i32, ptr %0, align 8, !tbaa !109
  %i.cm = add i32 %i.cl, 1                        ; 2 uses
  store i32 %i.cm, ptr %0, align 8, !tbaa !109
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !127 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !128 ; 3 uses
  %i.cr = load i32, ptr %4, align 8, !tbaa !126
  %i.cs = icmp eq i32 %i.cr, 164                  ; 2 uses
  %.sroa.8.0.i62 = select i1 %i.cs, ptr null, ptr %i.cq ; 2 uses
  %.sroa.6.0.i61 = select i1 %i.cs, ptr null, ptr %i.co ; 3 uses
  store i16 86, ptr %i.ch, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.cm, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 6 uses
  store ptr %i.cq, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  store ptr %.sroa.6.0.i61, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %.sroa.8.0.i62, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 64 ; 2 uses
  store ptr %.sroa.6.0.i61, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 72 ; 2 uses
  store ptr %.sroa.8.0.i62, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !14
  br i1 %.not103, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %pm_node_alloc.exit.i
  %i.ct = getelementptr i8, ptr %i.ch, i64 40
  %i.cu = icmp eq ptr %.sroa.6.0.i61, null
  br i1 %i.cu, label %bb.ae, label %pm_interpolated_symbol_node_append.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr i8, ptr %i.ay, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !133
  store ptr %i.cw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit

pm_interpolated_symbol_node_append.exit:          ; preds = %bb.ad, %bb.ae
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ay)
  %i.cx = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !371 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ay, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !134 ; 2 uses
  %i.da = icmp ugt ptr %i.cx, %i.cz
  %..i = select i1 %i.da, ptr %i.cx, ptr %i.cz
  store ptr %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !371
  br label %bb.af

bb.af:                                            ; preds = %pm_interpolated_symbol_node_append.exit, %pm_node_alloc.exit.i
  %i.db = getelementptr i8, ptr %i.ch, i64 40     ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge, %bb.af
  %.val117 = load i32, ptr %i.ai, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val117, label %bb.ah [
    i32 149, label %bb.al
    i32 1, label %bb.al
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dc = tail call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.ax) ; 4 uses
  %.not105 = icmp eq ptr %i.dc, null
  br i1 %.not105, label %.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !367
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.aj, label %pm_interpolated_symbol_node_append.exit144

bb.aj:                                            ; preds = %bb.ai
  %i.df = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !369
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ak, label %pm_interpolated_symbol_node_append.exit144

bb.ak:                                            ; preds = %bb.aj
  %i.dh = getelementptr i8, ptr %i.dc, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !133
  store ptr %i.di, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit144

pm_interpolated_symbol_node_append.exit144:       ; preds = %bb.ai, %bb.aj, %bb.ak
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc)
  %i.dj = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !371 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dc, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !134 ; 2 uses
  %i.dm = icmp ugt ptr %i.dj, %i.dl
  %..i143 = select i1 %i.dm, ptr %i.dj, ptr %i.dl
  store ptr %..i143, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !371
  br label %.backedge

.backedge:                                        ; preds = %pm_interpolated_symbol_node_append.exit144, %bb.ah
  br label %bb.ag, !llvm.loop !605

bb.al:                                            ; preds = %bb.ag, %bb.ag
  %.not104 = icmp eq i32 %1, 0
  br i1 %.not104, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.dn, align 4, !tbaa !195
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  switch i32 %.val117, label %expect1.exit.thread [
    i32 1, label %bb.ao
    i32 149, label %accept1.exit.thread.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.do = getelementptr i8, ptr %0, i64 472
  %i.dp = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.do, ptr noundef %i.co, ptr noundef %i.cq, i32 noundef 272) #27 ; 0 uses
  br label %expect1.exit

accept1.exit.thread.i:                            ; preds = %bb.an
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit

expect1.exit.thread:                              ; preds = %bb.an
  %i.dq = getelementptr i8, ptr %0, i64 336
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !255 ; 4 uses
  %i.ds = getelementptr i8, ptr %0, i64 472
  %i.dt = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ds, ptr noundef %i.dr, ptr noundef %i.dr, i32 noundef 272) #27 ; 0 uses
  %i.du = getelementptr i8, ptr %0, i64 328
  store ptr %i.dr, ptr %i.du, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %bb.ap

expect1.exit:                                     ; preds = %accept1.exit.thread.i, %bb.ao
  %.pr = load i32, ptr %i.a, align 8, !tbaa !126
  %i.dv = icmp eq i32 %.pr, 164
  br i1 %i.dv, label %expect1.exit.pm_interpolated_symbol_node_closing_loc_set.exit_crit_edge, label %expect1.exit._crit_edge

expect1.exit.pm_interpolated_symbol_node_closing_loc_set.exit_crit_edge: ; preds = %expect1.exit
  %.phi.trans.insert76 = getelementptr i8, ptr %0, i64 336
  %.pre77 = load ptr, ptr %.phi.trans.insert76, align 8, !tbaa !128
  br label %pm_interpolated_symbol_node_closing_loc_set.exit

expect1.exit._crit_edge:                          ; preds = %expect1.exit
  %.phi.trans.insert74 = getelementptr i8, ptr %0, i64 328
  %.pre75 = load ptr, ptr %.phi.trans.insert74, align 8, !tbaa !127
  br label %bb.ap

bb.ap:                                            ; preds = %expect1.exit._crit_edge, %expect1.exit.thread
  %i.dw = phi ptr [ %.pre75, %expect1.exit._crit_edge ], [ %i.dr, %expect1.exit.thread ]
  %i.dx = getelementptr i8, ptr %0, i64 336
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !128 ; 2 uses
  br label %pm_interpolated_symbol_node_closing_loc_set.exit

pm_interpolated_symbol_node_closing_loc_set.exit: ; preds = %expect1.exit.pm_interpolated_symbol_node_closing_loc_set.exit_crit_edge, %bb.ap
  %i.dz = phi ptr [ %i.dy, %bb.ap ], [ %.pre77, %expect1.exit.pm_interpolated_symbol_node_closing_loc_set.exit_crit_edge ]
  %.sink8.i = phi ptr [ %i.dw, %bb.ap ], [ null, %expect1.exit.pm_interpolated_symbol_node_closing_loc_set.exit_crit_edge ]
  %.sink.i = phi ptr [ %i.dy, %bb.ap ], [ null, %expect1.exit.pm_interpolated_symbol_node_closing_loc_set.exit_crit_edge ]
  store ptr %.sink8.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  store ptr %.sink.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !14
  store ptr %i.dz, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !371
  br label %bb.bo

bb.aq:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ea = getelementptr i8, ptr %0, i64 344       ; 4 uses
  %.val114 = load i32, ptr %i.ea, align 8, !tbaa !170
  %i.eb = icmp eq i32 %.val114, 148
  br i1 %i.eb, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %0, i64 352 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %0, i64 360 ; 2 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.ec = getelementptr i8, ptr %0, i64 640       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false), !tbaa.struct !19
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val113 = load i32, ptr %i.ea, align 8, !tbaa !170
  %i.ed = icmp eq i32 %.val113, 148
  br i1 %i.ed, label %bb.as, label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.ee = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 14 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.at, label %pm_node_alloc.exit.i145

bb.at:                                            ; preds = %bb.as
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.eh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.eg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i145:                          ; preds = %bb.as
  %i.ei = load i32, ptr %0, align 8, !tbaa !109
  %i.ej = add i32 %i.ei, 1                        ; 2 uses
  store i32 %i.ej, ptr %0, align 8, !tbaa !109
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !127 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !128 ; 2 uses
  %i.eo = load i32, ptr %4, align 8, !tbaa !126
  %i.ep = icmp eq i32 %i.eo, 164                  ; 2 uses
  %.sroa.8.0.i14767 = select i1 %i.ep, ptr null, ptr %i.en ; 2 uses
  %.sroa.6.0.i14666 = select i1 %i.ep, ptr null, ptr %i.el ; 3 uses
  store i16 86, ptr %i.ee, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i150, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 %i.ej, ptr %.sroa.3.0..sroa_idx.i151, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 3 uses
  store ptr %i.el, ptr %.sroa.4.0..sroa_idx.i152, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 6 uses
  store ptr %i.en, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 2 uses
  store ptr %.sroa.6.0.i14666, ptr %.sroa.6.0..sroa_idx.i154, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store ptr %.sroa.8.0.i14767, ptr %.sroa.8.0..sroa_idx.i155, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.ee, i64 64 ; 2 uses
  store ptr %.sroa.6.0.i14666, ptr %.sroa.11.0..sroa_idx.i157, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.ee, i64 72 ; 2 uses
  store ptr %.sroa.8.0.i14767, ptr %.sroa.13.0..sroa_idx.i158, align 8, !tbaa !14
  %i.eq = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 10 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.au, label %pm_string_node_create_unescaped.exit

bb.au:                                            ; preds = %pm_node_alloc.exit.i145
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.et = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.es, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_string_node_create_unescaped.exit:             ; preds = %pm_node_alloc.exit.i145
  %i.eu = getelementptr i8, ptr %0, i64 693       ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !49  ; 2 uses
  %i.ew = load i32, ptr %0, align 8, !tbaa !109
  %i.ex = add i32 %i.ew, 1                        ; 2 uses
  store i32 %i.ex, ptr %0, align 8, !tbaa !109
  %switch.selectcmp24.i = icmp eq i8 %i.ev, -1
  %switch.selectcmp.i = icmp eq i8 %i.ev, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 18, i16 0
  %switch.select25.i = select i1 %switch.selectcmp24.i, i16 32, i16 %switch.select.i
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 141, ptr %i.eq, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i16 %switch.select25.i, ptr %.sroa.2.0..sroa_idx.i163, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %i.ex, ptr %.sroa.3.0..sroa_idx.i164, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i165, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  store ptr %.sroa.10.0.copyload, ptr %.sroa.5.0..sroa_idx.i166, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store ptr %.sroa.5.0.copyload, ptr %.sroa.10.0..sroa_idx.i169, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  store ptr %.sroa.10.0.copyload, ptr %.sroa.11.0..sroa_idx.i170, align 8, !tbaa !14
  %i.ey = getelementptr i8, ptr %i.ee, i64 40     ; 3 uses
  %i.ez = icmp eq ptr %.sroa.6.0.i14666, null
  br i1 %i.ez, label %bb.av, label %pm_interpolated_symbol_node_append.exit172

bb.av:                                            ; preds = %pm_string_node_create_unescaped.exit
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i152, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit172

pm_interpolated_symbol_node_append.exit172:       ; preds = %pm_string_node_create_unescaped.exit, %bb.av
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.eq)
  %i.fa = load ptr, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !371 ; 2 uses
  %i.fb = load ptr, ptr %.sroa.5.0..sroa_idx.i166, align 8, !tbaa !134 ; 2 uses
  %i.fc = icmp ugt ptr %i.fa, %i.fb
  %..i171 = select i1 %i.fc, ptr %i.fa, ptr %i.fb
  store ptr %..i171, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !371
  %i.fd = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 10 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.aw, label %pm_string_node_create_unescaped.exit197

bb.aw:                                            ; preds = %pm_interpolated_symbol_node_append.exit172
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.fg = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ff, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_string_node_create_unescaped.exit197:          ; preds = %pm_interpolated_symbol_node_append.exit172
  %i.fh = load i8, ptr %i.eu, align 1, !tbaa !49  ; 2 uses
  %.then.val19 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !127 ; 3 uses
  %.then.val = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  %i.fi = load i32, ptr %0, align 8, !tbaa !109
  %i.fj = add i32 %i.fi, 1                        ; 2 uses
  store i32 %i.fj, ptr %0, align 8, !tbaa !109
  %switch.selectcmp24.i182 = icmp eq i8 %i.fh, -1
  %switch.selectcmp.i183 = icmp eq i8 %i.fh, 1
  %switch.select.i184 = select i1 %switch.selectcmp.i183, i16 18, i16 0
  %switch.select25.i185 = select i1 %switch.selectcmp24.i182, i16 32, i16 %switch.select.i184
  %.sroa.16.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i186, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  store i16 141, ptr %i.fd, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 %switch.select25.i185, ptr %.sroa.2.0..sroa_idx.i187, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %i.fj, ptr %.sroa.3.0..sroa_idx.i188, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %.then.val19, ptr %.sroa.4.0..sroa_idx.i189, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  store ptr %.then.val, ptr %.sroa.5.0..sroa_idx.i190, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store ptr %.then.val19, ptr %.sroa.10.0..sroa_idx.i193, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i194 = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  store ptr %.then.val, ptr %.sroa.11.0..sroa_idx.i194, align 8, !tbaa !14
  %i.fk = load i64, ptr %i.ey, align 8, !tbaa !367
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.ax, label %pm_interpolated_symbol_node_append.exit199

bb.ax:                                            ; preds = %pm_string_node_create_unescaped.exit197
  %i.fm = load ptr, ptr %.sroa.6.0..sroa_idx.i154, align 8, !tbaa !369
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.ay, label %pm_interpolated_symbol_node_append.exit199

bb.ay:                                            ; preds = %bb.ax
  store ptr %.then.val19, ptr %.sroa.4.0..sroa_idx.i152, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit199

pm_interpolated_symbol_node_append.exit199:       ; preds = %pm_string_node_create_unescaped.exit197, %bb.ax, %bb.ay
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.fd)
  %i.fo = load ptr, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !371 ; 2 uses
  %i.fp = load ptr, ptr %.sroa.5.0..sroa_idx.i190, align 8, !tbaa !134 ; 2 uses
  %i.fq = icmp ugt ptr %i.fo, %i.fp
  %..i198 = select i1 %i.fq, ptr %i.fo, ptr %i.fp
  store ptr %..i198, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !371
  %.not102 = icmp eq i32 %1, 0
  br i1 %.not102, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %pm_interpolated_symbol_node_append.exit199
  %i.fr = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.fr, align 4, !tbaa !195
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %pm_interpolated_symbol_node_append.exit199
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i.i200 = load i32, ptr %i.ea, align 8, !tbaa !170
  %i.fs = icmp eq i32 %.val.i.i200, 149
  br i1 %i.fs, label %expect1.exit203, label %expect1.exit203.thread

expect1.exit203.thread:                           ; preds = %bb.ba
  %i.ft = getelementptr i8, ptr %0, i64 336
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !255 ; 4 uses
  %i.fv = getelementptr i8, ptr %0, i64 472
  %i.fw = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.fv, ptr noundef %i.fu, ptr noundef %i.fu, i32 noundef 271) #27 ; 0 uses
  %i.fx = getelementptr i8, ptr %0, i64 328
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %bb.bb

expect1.exit203:                                  ; preds = %bb.ba
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.pr68 = load i32, ptr %i.a, align 8, !tbaa !126
  %i.fy = icmp eq i32 %.pr68, 164
  br i1 %i.fy, label %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge, label %expect1.exit203._crit_edge

expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge: ; preds = %expect1.exit203
  %.phi.trans.insert72 = getelementptr i8, ptr %0, i64 336
  %.pre73 = load ptr, ptr %.phi.trans.insert72, align 8, !tbaa !128
  br label %pm_interpolated_symbol_node_closing_loc_set.exit206

expect1.exit203._crit_edge:                       ; preds = %expect1.exit203
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 328
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  br label %bb.bb

bb.bb:                                            ; preds = %expect1.exit203._crit_edge, %expect1.exit203.thread
  %i.fz = phi ptr [ %.pre, %expect1.exit203._crit_edge ], [ %i.fu, %expect1.exit203.thread ]
  %i.ga = getelementptr i8, ptr %0, i64 336
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !128 ; 2 uses
  br label %pm_interpolated_symbol_node_closing_loc_set.exit206

pm_interpolated_symbol_node_closing_loc_set.exit206: ; preds = %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge, %bb.bb
  %i.gc = phi ptr [ %i.gb, %bb.bb ], [ %.pre73, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  %.sink8.i204 = phi ptr [ %i.fz, %bb.bb ], [ null, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  %.sink.i205 = phi ptr [ %i.gb, %bb.bb ], [ null, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  store ptr %.sink8.i204, ptr %.sroa.11.0..sroa_idx.i157, align 8, !tbaa !14
  store ptr %.sink.i205, ptr %.sroa.13.0..sroa_idx.i158, align 8, !tbaa !14
  store ptr %i.gc, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !371
  br label %bb.bn

bb.bc:                                            ; preds = %bb.aq
  %i.gd = getelementptr i8, ptr %0, i64 336
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !255 ; 4 uses
  call void @pm_string_shared_init(ptr noundef nonnull %5, ptr noundef %i.ge, ptr noundef %i.ge) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ar, %bb.bc
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.ar ], [ %i.ge, %bb.bc ] ; 2 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %bb.ar ], [ %i.ge, %bb.bc ] ; 2 uses
  %.not101 = icmp eq i32 %1, 0
  br i1 %.not101, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.gf, align 4, !tbaa !195
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.val112 = load i32, ptr %i.ea, align 8, !tbaa !170
  switch i32 %.val112, label %accept1.exit.i208 [
    i32 1, label %bb.bg
    i32 149, label %accept1.exit.thread.i209
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.gg, align 8, !tbaa !127
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val109 = load ptr, ptr %i.gh, align 8, !tbaa !128
  %i.gi = getelementptr i8, ptr %0, i64 472
  %i.gj = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gi, ptr noundef %.val, ptr noundef %.val109, i32 noundef 271) #27 ; 0 uses
  br label %expect1.exit210

accept1.exit.thread.i209:                         ; preds = %bb.bf
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit210

accept1.exit.i208:                                ; preds = %bb.bf
  %i.gk = getelementptr i8, ptr %0, i64 336
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !255 ; 3 uses
  %i.gm = getelementptr i8, ptr %0, i64 472
  %i.gn = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gm, ptr noundef %i.gl, ptr noundef %i.gl, i32 noundef 271) #27 ; 0 uses
  %i.go = getelementptr i8, ptr %0, i64 328
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %expect1.exit210

expect1.exit210:                                  ; preds = %accept1.exit.i208, %accept1.exit.thread.i209, %bb.bg
  %i.gp = getelementptr i8, ptr %0, i64 672
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !207 ; 2 uses
  %.not.i211 = icmp eq ptr %i.gq, null
  br i1 %.not.i211, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %expect1.exit210
  %i.gr = icmp eq ptr %i.gq, @pm_encodings
  br i1 %i.gr, label %parse_symbol_encoding.exit219, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = getelementptr i8, ptr %0, i64 520
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !40
  %.not71 = icmp eq ptr %i.gt, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  %i.gu = select i1 %.not71, i16 10, i16 2
  br label %parse_symbol_encoding.exit219

bb.bj:                                            ; preds = %expect1.exit210
  %i.gv = call i64 @pm_string_length(ptr noundef nonnull %5) #27 ; 2 uses
  %i.gw = call ptr @pm_string_source(ptr noundef nonnull %5) #27
  %.not1011.i.i214 = icmp eq i64 %i.gv, 0
  br i1 %.not1011.i.i214, label %parse_symbol_encoding.exit219, label %.lr.ph.i24.i215

bb.bk:                                            ; preds = %.lr.ph.i24.i215
  %i.gx = add nuw i64 %.0812.i.i216, 1            ; 2 uses
  %exitcond.not.i.i218 = icmp eq i64 %i.gx, %i.gv
  br i1 %exitcond.not.i.i218, label %parse_symbol_encoding.exit219, label %.lr.ph.i24.i215, !llvm.loop !482

.lr.ph.i24.i215:                                  ; preds = %bb.bj, %bb.bk
  %.0812.i.i216 = phi i64 [ %i.gx, %bb.bk ], [ 0, %bb.bj ] ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.0812.i.i216
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !67
  %.not.i25.i217 = icmp sgt i8 %i.gz, -1
  br i1 %.not.i25.i217, label %bb.bk, label %parse_symbol_encoding.exit219

parse_symbol_encoding.exit219:                    ; preds = %.lr.ph.i24.i215, %bb.bk, %bb.bh, %bb.bj, %bb.bi
  %.0.i213 = phi i16 [ %i.gu, %bb.bi ], [ 18, %bb.bj ], [ 6, %bb.bh ], [ 18, %bb.bk ], [ 2, %.lr.ph.i24.i215 ]
  %i.ha = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.bl, label %pm_node_alloc.exit.i220

bb.bl:                                            ; preds = %parse_symbol_encoding.exit219
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.hd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i220:                          ; preds = %parse_symbol_encoding.exit219
  %i.he = load i32, ptr %4, align 8, !tbaa !126
  %i.hf = icmp eq i32 %i.he, 164                  ; 5 uses
  %.sroa.gep25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.speculate.load.false = load ptr, ptr %.sroa.gep25, align 8, !tbaa !127 ; 3 uses
  %.sroa.speculated34 = select i1 %i.hf, ptr %.sroa.5.0, ptr %.sroa.speculate.load.false
  %i.hg = load i32, ptr %i.a, align 8, !tbaa !126
  %i.hh = icmp eq i32 %i.hg, 164
  br i1 %i.hh, label %pm_node_alloc.exit.i220.cont.thread, label %bb.bm

pm_node_alloc.exit.i220.cont.thread:              ; preds = %pm_node_alloc.exit.i220
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  %.sroa.6.0.i22396 = select i1 %i.hf, ptr null, ptr %.sroa.speculate.load.false
  %.sroa.8.0.i22497 = select i1 %i.hf, ptr null, ptr %i.hj
  br label %pm_symbol_node_create_unescaped.exit

bb.bm:                                            ; preds = %pm_node_alloc.exit.i220
  %.sroa.gep27 = getelementptr i8, ptr %0, i64 336
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  %.sroa.6.0.i223 = select i1 %i.hf, ptr null, ptr %.sroa.speculate.load.false
  %.sroa.8.0.i224 = select i1 %i.hf, ptr null, ptr %i.hl
  %i.hm = getelementptr i8, ptr %0, i64 328
  %.else.val = load ptr, ptr %.sroa.gep27, align 8, !tbaa !128
  %i.hn = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !14
  br label %pm_symbol_node_create_unescaped.exit

pm_symbol_node_create_unescaped.exit:             ; preds = %pm_node_alloc.exit.i220.cont.thread, %bb.bm
  %.sroa.8.0.i22499 = phi ptr [ %.sroa.8.0.i22497, %pm_node_alloc.exit.i220.cont.thread ], [ %.sroa.8.0.i224, %bb.bm ]
  %.sroa.6.0.i22398 = phi ptr [ %.sroa.6.0.i22396, %pm_node_alloc.exit.i220.cont.thread ], [ %.sroa.6.0.i223, %bb.bm ]
  %i.ho = phi ptr [ %.sroa.10.0, %pm_node_alloc.exit.i220.cont.thread ], [ %.else.val, %bb.bm ]
  %i.hp = phi <2 x ptr> [ splat (ptr null), %pm_node_alloc.exit.i220.cont.thread ], [ %i.hn, %bb.bm ]
  %.sink.in = load i32, ptr %0, align 8, !tbaa !109
  %.sink = add i32 %.sink.in, 1                   ; 2 uses
  store i32 %.sink, ptr %0, align 8, !tbaa !109
  %.sroa.16.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i227, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 143, ptr %i.ha, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  store i16 %.0.i213, ptr %.sroa.2.0..sroa_idx.i228, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sink, ptr %.sroa.3.0..sroa_idx.i229, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %.sroa.speculated34, ptr %.sroa.4.0..sroa_idx.i230, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.ho, ptr %.sroa.5.0..sroa_idx.i231, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %.sroa.6.0.i22398, ptr %.sroa.6.0..sroa_idx.i232, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr %.sroa.8.0.i22499, ptr %.sroa.8.0..sroa_idx.i233, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store ptr %.sroa.5.0, ptr %.sroa.10.0..sroa_idx.i234, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i235 = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store ptr %.sroa.10.0, ptr %.sroa.11.0..sroa_idx.i235, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  store <2 x ptr> %i.hp, ptr %.sroa.12.0..sroa_idx.i236, align 8, !tbaa !14
  br label %bb.bn

bb.bn:                                            ; preds = %pm_symbol_node_create_unescaped.exit, %pm_interpolated_symbol_node_closing_loc_set.exit206
  %.1 = phi ptr [ %i.ee, %pm_interpolated_symbol_node_closing_loc_set.exit206 ], [ %i.ha, %pm_symbol_node_create_unescaped.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bo

bb.bo:                                            ; preds = %pm_string_node_to_symbol_node.exit, %pm_interpolated_symbol_node_closing_loc_set.exit, %bb.bn, %pm_node_alloc.exit.i.i122, %parse_symbol_encoding.exit, %bb.e
  %.2 = phi ptr [ %i.g, %parse_symbol_encoding.exit ], [ %i.f, %bb.e ], [ %i.am, %pm_node_alloc.exit.i.i122 ], [ %.1, %bb.bn ], [ %i.bi, %pm_string_node_to_symbol_node.exit ], [ %i.ch, %pm_interpolated_symbol_node_closing_loc_set.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef nonnull ptr @context_human(i32 noundef range(i32 1, 0) %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 55
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 7914, ptr noundef nonnull @__PRETTY_FUNCTION__.context_human) #26
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add i32 %0, -1
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.context_human, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_assert_value_expression(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val, ptr noundef %.val5, i32 noundef 290) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1) unnamed_addr #1 {
bb.a:
  %.not184 = icmp eq ptr %1, null
  br i1 %.not184, label %.thread, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.a, %.thread156
  %.091186 = phi ptr [ %.899, %.thread156 ], [ %1, %bb.a ] ; 20 uses
  %.0100185 = phi ptr [ %.15, %.thread156 ], [ null, %bb.a ] ; 16 uses
  %i.a = load i16, ptr %.091186, align 8, !tbaa !115
  switch i16 %i.a, label %.thread [
    i16 132, label %bb.b
    i16 17, label %bb.b
    i16 107, label %bb.b
    i16 124, label %bb.b
    i16 131, label %bb.b
    i16 101, label %bb.b
    i16 98, label %bb.ab
    i16 11, label %bb.c
    i16 50, label %bb.n
    i16 116, label %bb.o
    i16 140, label %bb.p
    i16 67, label %bb.q
    i16 146, label %bb.u
    i16 47, label %bb.y
    i16 4, label %bb.z
    i16 114, label %bb.aa
  ]

bb.b:                                             ; preds = %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189
  %.not145 = icmp eq ptr %.0100185, null
  %i.b = select i1 %.not145, ptr %.091186, ptr %.0100185
  br label %.thread

bb.c:                                             ; preds = %.lr.ph189
  %i.c = getelementptr i8, ptr %.091186, i64 64   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !508
  %.not136 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %.091186, i64 48   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !502  ; 2 uses
  %.not137 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %.not136, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.f) ; 2 uses
  %.not142 = icmp eq ptr %i.g, null
  br i1 %.not142, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr i8, ptr %.091186, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !527  ; 2 uses
  %.not143 = icmp eq ptr %i.i, null
  br i1 %.not143, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.i) ; 2 uses
  %.not144 = icmp eq ptr %i.j, null
  br i1 %.not144, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !508
  br label %.thread156

bb.i:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.091186, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !527  ; 3 uses
  br i1 %.not137, label %.thread156, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.m) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq ptr %.0100185, null
  %spec.select = select i1 %i.q, ptr %i.o, ptr %.0100185 ; 2 uses
  %.0123179 = load ptr, ptr %i.e, align 8, !tbaa !505 ; 2 uses
  %.not138180 = icmp eq ptr %.0123179, null
  br i1 %.not138180, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.0123181, i64 112
  %.0123 = load ptr, ptr %i.r, align 8, !tbaa !505 ; 2 uses
  %.not138 = icmp eq ptr %.0123, null
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !606

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.0123181 = phi ptr [ %.0123, %bb.m ], [ %.0123179, %bb.l ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0123181, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !498
  %i.u = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %i.t)
  %.not139 = icmp eq ptr %i.u, null
  br i1 %.not139, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.5105 = phi ptr [ %spec.select, %bb.l ], [ null, %.lr.ph ], [ %spec.select, %bb.m ] ; 2 uses
  %i.v = getelementptr i8, ptr %.091186, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !507  ; 2 uses
  %.not140.not = icmp eq ptr %i.w, null
  br i1 %.not140.not, label %.thread, label %.thread156

bb.n:                                             ; preds = %.lr.ph189
  %i.x = getelementptr i8, ptr %.091186, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !607
  br label %.thread156

bb.o:                                             ; preds = %.lr.ph189
  %i.z = getelementptr i8, ptr %.091186, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !528
  br label %.thread156

bb.p:                                             ; preds = %.lr.ph189
  %i.ab = getelementptr i8, ptr %.091186, i64 24
  %i.ac = getelementptr i8, ptr %.091186, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !101
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  br label %.thread156

bb.q:                                             ; preds = %.lr.ph189
  %i.ai = getelementptr i8, ptr %.091186, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !609 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr i8, ptr %.091186, i64 72  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !545
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.aj) ; 2 uses
  %.not174 = icmp eq ptr %i.ao, null
  br i1 %.not174, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = icmp eq ptr %.0100185, null
  %spec.select147 = select i1 %i.ap, ptr %i.ao, ptr %.0100185
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !545
end_hunk_8
begin_hunk_9_@parse_pattern_hash:bb.a
  %i.bp = getelementptr i8, ptr %.0.i109, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !67
  %i.br = icmp eq i8 %i.bq, 58
  br i1 %i.br, label %bb.r, label %pm_symbol_node_label_p.exit112.thread

pm_symbol_node_label_p.exit112.thread:            ; preds = %bb.o, %bb.q, %pm_symbol_node_label_p.exit112
  %i.bs = getelementptr i8, ptr %i.bj, i64 8
  %.val86 = load ptr, ptr %i.bs, align 8, !tbaa !133
  %i.bt = getelementptr i8, ptr %i.bj, i64 16
  %.val87 = load ptr, ptr %i.bt, align 8, !tbaa !134
  %i.bu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ar, ptr noundef %.val86, ptr noundef %.val87, i32 noundef 241) #27 ; 0 uses
  br label %bb.r

accept1.exit.thread.i:                            ; preds = %bb.j
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit

accept1.exit.i:                                   ; preds = %bb.j
  %i.bv = load ptr, ptr %i.at, align 8, !tbaa !255 ; 3 uses
  %i.bw = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ar, ptr noundef %i.bv, ptr noundef %i.bv, i32 noundef 241) #27 ; 0 uses
  store ptr %i.bv, ptr %i.au, align 8, !tbaa !256
  store i32 163, ptr %i.as, align 8, !tbaa !200
  br label %expect1.exit

expect1.exit:                                     ; preds = %accept1.exit.thread.i, %accept1.exit.i
  %i.bx = call fastcc ptr @pm_symbol_node_label_create(ptr noundef nonnull %0, ptr noundef %i.as)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %pm_symbol_node_label_p.exit112.thread, %pm_symbol_node_label_p.exit112, %expect1.exit
  %.079 = phi ptr [ %i.bj, %bb.p ], [ %i.bj, %pm_symbol_node_label_p.exit112 ], [ %i.bj, %pm_symbol_node_label_p.exit112.thread ], [ %i.bx, %expect1.exit ] ; 7 uses
  %i.by = load i32, ptr %i.aw, align 8, !tbaa !26
  %i.bz = call ptr @pm_static_literals_add(ptr noundef %i.av, i32 noundef %i.by, ptr noundef nonnull %5, ptr noundef nonnull %.079, i1 noundef zeroext true) #27
  %.not.i113 = icmp eq ptr %i.bz, null
  br i1 %.not.i113, label %parse_pattern_hash_key.exit116, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr i8, ptr %.079, i64 8
  %.val.i114 = load ptr, ptr %i.ca, align 8, !tbaa !133
  %i.cb = getelementptr i8, ptr %.079, i64 16
  %.val6.i115 = load ptr, ptr %i.cb, align 8, !tbaa !134
  %i.cc = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ar, ptr noundef %.val.i114, ptr noundef %.val6.i115, i32 noundef 236) #27 ; 0 uses
  br label %parse_pattern_hash_key.exit116

parse_pattern_hash_key.exit116:                   ; preds = %bb.r, %bb.s
  %.val98 = load i32, ptr %i.ao, align 8, !tbaa !170
  switch i32 %.val98, label %bb.x [
    i32 33, label %bb.t
    i32 17, label %bb.t
    i32 15, label %bb.t
    i32 14, label %bb.t
    i32 12, label %bb.t
    i32 3, label %bb.t
    i32 2, label %bb.t
  ]

bb.t:                                             ; preds = %parse_pattern_hash_key.exit116, %parse_pattern_hash_key.exit116, %parse_pattern_hash_key.exit116, %parse_pattern_hash_key.exit116, %parse_pattern_hash_key.exit116, %parse_pattern_hash_key.exit116, %parse_pattern_hash_key.exit116
  %i.cd = load i16, ptr %.079, align 8, !tbaa !115
  %i.ce = icmp eq i16 %i.cd, 143
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = call fastcc ptr @parse_pattern_hash_implicit_value(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.079)
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr i8, ptr %.079, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !134 ; 2 uses
  %i.ci = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 6 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.w, label %pm_missing_node_create.exit126

bb.w:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.cl = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ck, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_missing_node_create.exit126:                   ; preds = %bb.v
  %i.cm = load i32, ptr %0, align 8, !tbaa !109
  %i.cn = add i32 %i.cm, 1                        ; 2 uses
  store i32 %i.cn, ptr %0, align 8, !tbaa !109
  store i16 103, ptr %i.ci, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.cn, ptr %.sroa.3.0..sroa_idx.i123, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx.i124, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.ch, ptr %.sroa.5.0..sroa_idx.i125, align 8, !tbaa !14
  br label %bb.y

bb.x:                                             ; preds = %parse_pattern_hash_key.exit116
  %i.co = call fastcc ptr @parse_pattern(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 0, i32 noundef 227, i16 noundef zeroext %i.aq)
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %pm_missing_node_create.exit126, %bb.x
  %.078 = phi ptr [ %i.cf, %bb.u ], [ %i.ci, %pm_missing_node_create.exit126 ], [ %i.co, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val95 = load ptr, ptr %i.ax, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %8, align 8, !tbaa !126, !alias.scope !633
  store i32 0, ptr %i.ay, align 4, !alias.scope !633
  store ptr %.val95, ptr %i.az, align 8, !tbaa !127, !alias.scope !633
  store ptr %.val95, ptr %i.ba, align 8, !tbaa !128, !alias.scope !633
  %i.cp = call fastcc ptr @pm_assoc_node_create(ptr noundef nonnull %0, ptr noundef nonnull %.079, ptr noundef %8, ptr noundef nonnull %.078) ; 3 uses
  %.not = icmp eq ptr %.1138, null
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %.val84 = load ptr, ptr %i.cq, align 8, !tbaa !133
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val85 = load ptr, ptr %i.cr, align 8, !tbaa !134
  %i.cs = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ar, ptr noundef %.val84, ptr noundef %.val85, i32 noundef 232) #27 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @pm_node_list_append(ptr noundef nonnull %4, ptr noundef nonnull %i.cp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %bb.m, %bb.aa
  %.3 = phi ptr [ %.1138, %bb.aa ], [ %.1138, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  %.val.i101 = load i32, ptr %i.ao, align 8, !tbaa !170
  %i.ct = icmp eq i32 %.val.i101, 3
  br i1 %i.ct, label %bb.j, label %accept1.exit, !llvm.loop !636

accept1.exit:                                     ; preds = %bb.ab, %bb.i, %bb.k, %bb.l
  %.1136 = phi ptr [ %.1138, %bb.l ], [ null, %bb.k ], [ %.0, %bb.i ], [ %.3, %bb.ab ] ; 6 uses
  %i.cu = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 8 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ac, label %pm_node_alloc.exit.i

bb.ac:                                            ; preds = %accept1.exit
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.cx = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cw, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %accept1.exit
  %i.cy = load i64, ptr %4, align 8, !tbaa !138   ; 3 uses
  %.not.i127 = icmp eq i64 %i.cy, 0
  %.not34.i = icmp eq ptr %.1136, null            ; 2 uses
  br i1 %.not.i127, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %pm_node_alloc.exit.i
  br i1 %.not34.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr i8, ptr %.1136, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !133 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !139 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !105
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !133 ; 2 uses
  %i.dg = icmp ult ptr %i.da, %i.df
  %..i = select i1 %i.dg, ptr %i.da, ptr %i.df
  %i.dh = getelementptr i8, ptr %.1136, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !134 ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.dc, i64 %i.cy
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !105
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !134 ; 2 uses
  %i.do = icmp ugt ptr %i.di, %i.dn
  %i.dp = select i1 %i.do, ptr %i.di, ptr %i.dn
  br label %pm_hash_pattern_node_node_list_create.exit

bb.af:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !139 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !133
  %i.dv = getelementptr [8 x i8], ptr %i.dr, i64 %i.cy
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !105
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !134
  br label %pm_hash_pattern_node_node_list_create.exit

bb.ag:                                            ; preds = %pm_node_alloc.exit.i
  br i1 %.not34.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @__assert_fail(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.2, i32 noundef 4124, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_hash_pattern_node_node_list_create) #26
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ea = getelementptr i8, ptr %.1136, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !133
  %i.ec = getelementptr i8, ptr %.1136, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !134
  br label %pm_hash_pattern_node_node_list_create.exit

pm_hash_pattern_node_node_list_create.exit:       ; preds = %bb.ae, %bb.af, %bb.ai
  %.027.i = phi ptr [ %i.dp, %bb.ae ], [ %i.dz, %bb.af ], [ %i.ed, %bb.ai ]
  %.0.i128 = phi ptr [ %..i, %bb.ae ], [ %i.du, %bb.af ], [ %i.eb, %bb.ai ]
  %i.ee = load i32, ptr %0, align 8, !tbaa !109
  %i.ef = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.ef, ptr %0, align 8, !tbaa !109
  %.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %i.cu, i64 32
  store i16 66, ptr %i.cu, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.ef, ptr %.sroa.3.0..sroa_idx.i129, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %.0.i128, ptr %.sroa.4.0..sroa_idx.i130, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %.027.i, ptr %.sroa.5.0..sroa_idx.i131, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store ptr %.1136, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !105
  call void @pm_node_list_concat(ptr noundef nonnull %.sroa.7.0..sroa_idx.i, ptr noundef nonnull %4) #27
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !139
  call void @free(ptr noundef %i.eh) #27
  call void @pm_static_literals_free(ptr noundef nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %i.cu
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_pattern_keyword_rest(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %3 = alloca %struct.pm_location_t, align 16     ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  %i.c = icmp eq i32 %i.b, 160
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.2, i32 noundef 16372, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_pattern_keyword_rest) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = getelementptr i8, ptr %0, i64 320        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !163
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val.i, label %accept1.exit32 [
    i32 90, label %bb.d
    i32 66, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.e = call fastcc ptr @pm_no_keywords_parameter_node_create(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.d)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.f = getelementptr i8, ptr %0, i64 328        ; 4 uses
  %.val29 = load ptr, ptr %i.f, align 8, !tbaa !127 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 336        ; 3 uses
  %.val30 = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.h = getelementptr i8, ptr %0, i64 576
  %i.i = ptrtoint ptr %.val30 to i64
  %i.j = ptrtoint ptr %.val29 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.h, ptr noundef %.val29, i64 noundef %i.k) #27 ; 8 uses
  %i.m = getelementptr i8, ptr %0, i64 496
  %.0816.i = load ptr, ptr %i.m, align 8, !tbaa !66 ; 3 uses
  %.not17.i = icmp eq ptr %.0816.i, null
  br i1 %.not17.i, label %pm_parser_local_depth_constant_id.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.n = lshr i32 %i.l, 16
  %i.o = xor i32 %i.n, %i.l
  %i.p = mul i32 %i.o, 73244475                   ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = xor i32 %i.q, %i.p
  %i.s = mul i32 %i.r, 73244475                   ; 2 uses
  %i.t = lshr i32 %i.s, 16
  %i.u = xor i32 %i.t, %i.s                       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %.0820.i = phi ptr [ %.0816.i, %.lr.ph.i ], [ %.08.i, %bb.m ] ; 6 uses
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %bb.m ] ; 3 uses
  %i.v = getelementptr i8, ptr %.0820.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !93   ; 2 uses
  %i.x = icmp ult i32 %i.w, 9
  br i1 %i.x, label %.preheader.i.i, label %bb.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.y = getelementptr i8, ptr %.0820.i, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !155  ; 2 uses
  %.not58.i.i = icmp eq i32 %i.z, 0
  br i1 %.not58.i.i, label %pm_locals_find.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.aa = getelementptr i8, ptr %.0820.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  %wide.trip.count.i.i = zext i32 %i.z to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.ac = getelementptr [40 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !156
  %.not39.i.i = icmp eq i32 %i.ad, %i.l
  br i1 %.not39.i.i, label %.thread.loopexit.split.loop.exit66.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pm_locals_find.exit.thread.i, label %bb.g, !llvm.loop !233

bb.i:                                             ; preds = %bb.f
  %i.ae = add i32 %i.w, -1                        ; 2 uses
  %i.af = getelementptr i8, ptr %.0820.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.031.i.i = phi i32 [ %i.u, %bb.i ], [ %i.an, %bb.l ] ; 2 uses
  %i.ah = and i32 %.031.i.i, %i.ae                ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [40 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !156 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %pm_locals_find.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = icmp eq i32 %i.ak, %i.l
  br i1 %i.am, label %pm_locals_find.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add i32 %.031.i.i, 1                    ; 2 uses
  %i.ao = xor i32 %i.an, %i.u
  %i.ap = and i32 %i.ao, %i.ae
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %pm_locals_find.exit.thread.i, label %bb.j, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i:           ; preds = %bb.g
  %i.aq = trunc nuw i64 %indvars.iv.i.i to i32
  br label %pm_locals_find.exit.i

pm_locals_find.exit.i:                            ; preds = %bb.k, %.thread.loopexit.split.loop.exit66.i.i
  %.5.i.i = phi i32 [ %i.aq, %.thread.loopexit.split.loop.exit66.i.i ], [ %i.ah, %bb.k ]
  %.not10.i = icmp eq i32 %.5.i.i, -1
  br i1 %.not10.i, label %pm_locals_find.exit.thread.i, label %pm_parser_local_depth_constant_id.exit

pm_locals_find.exit.thread.i:                     ; preds = %bb.l, %bb.j, %bb.h, %pm_locals_find.exit.i, %.preheader.i.i
  %i.ar = getelementptr i8, ptr %.0820.i, i64 50
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !188, !range !45, !noundef !46
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %pm_parser_local_depth_constant_id.exit.thread, label %bb.m

bb.m:                                             ; preds = %pm_locals_find.exit.thread.i
  %i.au = add i32 %.018.i, 1
  %.08.i = load ptr, ptr %.0820.i, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq ptr %.08.i, null
  br i1 %.not.i, label %pm_parser_local_depth_constant_id.exit.thread, label %bb.f, !llvm.loop !235

pm_parser_local_depth_constant_id.exit:           ; preds = %pm_locals_find.exit.i
  %i.av = icmp eq i32 %.018.i, -1
  br i1 %i.av, label %pm_parser_local_depth_constant_id.exit.thread, label %bb.n

pm_parser_local_depth_constant_id.exit.thread:    ; preds = %bb.m, %pm_locals_find.exit.thread.i, %bb.e, %pm_parser_local_depth_constant_id.exit
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !256
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !255
  tail call fastcc void @pm_parser_local_add(ptr %.0816.i, i32 noundef %i.l, ptr noundef %i.aw, ptr noundef %i.ax, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %pm_parser_local_depth_constant_id.exit.thread, %pm_parser_local_depth_constant_id.exit
  %i.ay = phi i32 [ 0, %pm_parser_local_depth_constant_id.exit.thread ], [ %.018.i, %pm_parser_local_depth_constant_id.exit ]
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !256 ; 3 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !255
  %i.bb = getelementptr i8, ptr %0, i64 312
  %.val.i33 = load ptr, ptr %i.bb, align 8, !tbaa !78
  %i.bc = icmp ult ptr %i.az, %.val.i33
  br i1 %i.bc, label %peek_at.exit.i, label %peek_at.exit.thread.i

peek_at.exit.i:                                   ; preds = %bb.n
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !67
  %i.be = icmp eq i8 %i.bd, 95
  br i1 %i.be, label %parse_pattern_capture.exit, label %peek_at.exit.thread.i

peek_at.exit.thread.i:                            ; preds = %peek_at.exit.i, %bb.n
  %i.bf = tail call zeroext i1 @pm_constant_id_list_includes(ptr noundef nonnull %1, i32 noundef %i.l) #27
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %peek_at.exit.thread.i
  %i.bg = getelementptr i8, ptr %0, i64 472
  %i.bh = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bg, ptr noundef %i.az, ptr noundef %i.ba, i32 noundef 221) #27 ; 0 uses
  br label %parse_pattern_capture.exit

bb.p:                                             ; preds = %peek_at.exit.thread.i
  %i.bi = tail call zeroext i1 @pm_constant_id_list_append(ptr noundef nonnull %1, i32 noundef %i.l) #27 ; 0 uses
  br label %parse_pattern_capture.exit

parse_pattern_capture.exit:                       ; preds = %peek_at.exit.i, %bb.o, %bb.p
  %i.bj = load <2 x ptr>, ptr %i.f, align 8, !tbaa !14
  store <2 x ptr> %i.bj, ptr %3, align 16, !tbaa !14
  %i.bk = call fastcc ptr @pm_local_variable_target_node_create(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %i.l, i32 noundef %i.ay)
  br label %accept1.exit32

accept1.exit32:                                   ; preds = %bb.c, %parse_pattern_capture.exit
  %.028 = phi ptr [ %i.bk, %parse_pattern_capture.exit ], [ null, %bb.c ] ; 3 uses
  %i.bl = load i32, ptr %2, align 8, !tbaa !126
  %i.bm = icmp eq i32 %i.bl, 160
  br i1 %i.bm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %accept1.exit32
  tail call void @__assert_fail(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.2, i32 noundef 2295, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_assoc_splat_node_create) #26
  unreachable
end_hunk_9
begin_hunk_10_@parse_unwriteable_write:bb.a
  br i1 %i.x, label %pm_implicit_array_write_flags.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %pm_node_alloc.exit.i
  br label %pm_implicit_array_write_flags.exit.i

pm_implicit_array_write_flags.exit.i:             ; preds = %bb.l, %bb.k
  %.0.i.i = phi i16 [ 0, %bb.l ], [ 4, %bb.k ]
  %i.y = load i32, ptr %0, align 8, !tbaa !109
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %0, align 8, !tbaa !109
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !283
  %i.ab = getelementptr i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134
  %i.ad = load i32, ptr %2, align 8, !tbaa !126
  %i.ae = icmp eq i32 %i.ad, 164
  br i1 %i.ae, label %pm_local_variable_write_node_create.exit, label %bb.m

bb.m:                                             ; preds = %pm_implicit_array_write_flags.exit.i
  %i.af = getelementptr i8, ptr %2, i64 8
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !14
  br label %pm_local_variable_write_node_create.exit

pm_local_variable_write_node_create.exit:         ; preds = %pm_implicit_array_write_flags.exit.i, %bb.m
  %i.ah = phi <2 x ptr> [ %i.ag, %bb.m ], [ splat (ptr null), %pm_implicit_array_write_flags.exit.i ]
  store i16 98, ptr %i.p, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 %.0.i.i, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.z, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %3, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store <2 x ptr> %i.ah, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  ret ptr %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @parse_assignment_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef range(i32 91, 98) %4, i16 noundef zeroext range(i16 2, 10002) %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 18
  %i.b = icmp ult i32 %1, 12
  %.in = select i1 %i.a, i1 %3, i1 %i.b
  %narrow = add nuw nsw i16 %5, 1                 ; 2 uses
  %i.c = tail call fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %2, i1 noundef zeroext %.in, i1 noundef zeroext false, i32 noundef range(i32 26, 256) %4, i16 noundef zeroext %narrow), !inline_history !297 ; 4 uses
  %i.d = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %i.c) ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val5.i = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.g = getelementptr i8, ptr %0, i64 472
  %i.h = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.g, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 344
  %.val = load i32, ptr %i.i, align 8, !tbaa !170
  %i.j = icmp eq i32 %.val, 94
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %context_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 46, ptr %i.k, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.l = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !253
  store ptr %i.m, ptr %.sroa.3.0..sroa_idx.i, align 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.c, %bb.d
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %0, i64 352
  %i.n = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.o = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 13, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 256, i16 noundef zeroext %narrow) ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !253  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.q) #27
  store ptr %i.s, ptr %i.p, align 8, !tbaa !253
  %i.t = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %pm_rescue_modifier_node_create.exit

bb.e:                                             ; preds = %context_push.exit
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.v, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_rescue_modifier_node_create.exit:              ; preds = %context_push.exit
  %i.x = load i32, ptr %0, align 8, !tbaa !109
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %0, align 8, !tbaa !109
  %i.z = getelementptr i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ab = getelementptr i8, ptr %i.o, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134
  store i16 128, ptr %i.t, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.y, ptr %.sroa.3.0..sroa_idx.i21, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <2 x ptr> %i.n, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.o, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %pm_assert_value_expression.exit, %pm_rescue_modifier_node_create.exit
  %.0 = phi ptr [ %i.t, %pm_rescue_modifier_node_create.exit ], [ %i.c, %pm_assert_value_expression.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_global_variable_and_write_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 4167, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133  ; 3 uses
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.m, label %bb.h [
    i16 62, label %bb.e
    i16 10, label %bb.f
    i16 111, label %bb.g
  ]

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !423
  br label %pm_global_variable_write_name.exit

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !425
  br label %pm_global_variable_write_name.exit

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr i8, ptr %0, i64 576
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.t, ptr noundef %i.j, i64 noundef %i.w) #27
  br label %pm_global_variable_write_name.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 4157, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_write_name) #26
  unreachable

pm_global_variable_write_name.exit:               ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.y = getelementptr i8, ptr %2, i64 8
  store i16 59, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !14
  store <2 x ptr> %i.z, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_class_variable_and_write_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 3270, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_class_variable_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !674
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.o = getelementptr i8, ptr %2, i64 8
  store i16 27, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_constant_path_and_write_node_create(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 3376, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_constant_path_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %2, i64 8
  store i16 36, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !676
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  store <2 x ptr> %i.n, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_shareable_constant_write(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 496
  %.val = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr i8, ptr %.val, i64 49
  %.val.val = load i8, ptr %i.b, align 1, !tbaa !60 ; 2 uses
  %.not = icmp eq i8 %.val.val, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %pm_shareable_constant_node_create.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_shareable_constant_node_create.exit:           ; preds = %bb.b
  %i.g = zext i8 %.val.val to i16
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8
  store i16 134, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.g, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !14
  store <2 x ptr> %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %pm_shareable_constant_node_create.exit
  %.0 = phi ptr [ %i.c, %pm_shareable_constant_node_create.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_constant_and_write_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 3482, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_constant_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !678
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.o = getelementptr i8, ptr %2, i64 8
  store i16 33, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
end_hunk_10
begin_hunk_11_@pm_instance_variable_and_write_node_create:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_local_variable_and_write_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.a, label %bb.b [
    i16 96, label %bb.c
    i16 88, label %bb.c
    i16 19, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.2, i32 noundef 5139, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_local_variable_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = load i32, ptr %2, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 20
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 5140, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_local_variable_and_write_node_create) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %pm_node_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.e
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.l = getelementptr i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.n = getelementptr i8, ptr %2, i64 8
  store i16 93, ptr %i.d, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !14
  store <2 x ptr> %i.o, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %4, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %5, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !7
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_index_and_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 2919, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #30 ; 15 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 120) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 88         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 128        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !289  ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 688
  %i.l = load i32, ptr %i.k, align 8, !tbaa !53
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %pm_index_arguments_check.exit

bb.e:                                             ; preds = %pm_node_alloc.exit
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.h, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !116
  %i.p = and i16 %i.o, 8
  %.not16.i = icmp eq i16 %i.p, 0
  br i1 %.not16.i, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.h, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !111  ; 2 uses
  %.not24.i = icmp eq i64 %i.r, 0
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr i8, ptr %i.h, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !446
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.u = add nuw i64 %.022.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.r
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.h, !llvm.loop !535

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %bb.g ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.022.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 4 uses
  %.not17.i = icmp eq ptr %i.w, null
  br i1 %.not17.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i16, ptr %i.w, align 8, !tbaa !115
  %i.y = icmp eq i16 %i.x, 90
  br i1 %i.y, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val20.i = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val21.i = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr i8, ptr %0, i64 472
  %i.ac = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ab, ptr noundef %.val20.i, ptr noundef %.val21.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.g, %bb.j, %.preheader.i, %bb.f, %bb.e
  %.not18.i = icmp eq ptr %i.j, null
  br i1 %.not18.i, label %pm_index_arguments_check.exitthread-pre-split, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.ad = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !133
  %i.ae = getelementptr i8, ptr %i.j, i64 16
  %.val19.i = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.af = getelementptr i8, ptr %0, i64 472
  %i.ag = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.af, ptr noundef %.val.i, ptr noundef %.val19.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exitthread-pre-split

pm_index_arguments_check.exitthread-pre-split:    ; preds = %bb.k, %.critedge.i
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !289
  br label %pm_index_arguments_check.exit

pm_index_arguments_check.exit:                    ; preds = %pm_index_arguments_check.exitthread-pre-split, %pm_node_alloc.exit
  %i.ah = phi ptr [ %.pr, %pm_index_arguments_check.exitthread-pre-split ], [ %i.j, %pm_node_alloc.exit ] ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %pm_index_arguments_check.exit
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !115
  %i.aj = icmp eq i16 %i.ai, 12
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.2, i32 noundef 2924, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_and_write_node_create) #26
  unreachable

bb.n:                                             ; preds = %pm_index_arguments_check.exit, %bb.l
  %i.ak = getelementptr i8, ptr %1, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !116
  %i.am = load i32, ptr %0, align 8, !tbaa !109
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %0, align 8, !tbaa !109
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.aq = getelementptr i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.as = getelementptr i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.au = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = getelementptr i8, ptr %1, i64 72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.ax = getelementptr i8, ptr %1, i64 96
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr i8, ptr %2, i64 8
  store i16 72, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.al, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.an, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ar, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.aw, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !511
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.ah, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !536
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %4 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !14
  store <2 x ptr> %4, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %3, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !105
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.c
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc zeroext i1 @pm_call_node_writable_p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260  ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %char_is_identifier_start.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !292
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !67
  switch i8 %i.f, label %bb.c [
    i8 33, label %char_is_identifier_start.exit.thread
    i8 63, label %char_is_identifier_start.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %char_is_identifier_start.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 699
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43, !range !45, !noundef !46
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.t = tail call i64 %i.s(ptr noundef nonnull %i.b, i64 noundef %i.k) #27, !inline_history !225
  %.not20.i = icmp eq i64 %i.t, 0
  br i1 %.not20.i, label %bb.f, label %char_is_identifier_start.exit.thread17

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.b, align 1, !tbaa !67    ; 2 uses
  %i.v = icmp eq i8 %i.u, 95
  br i1 %i.v, label %char_is_identifier_start.exit.thread17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp slt i8 %i.u, 0
  br i1 %i.w, label %bb.h, label %char_is_identifier_start.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151
  %i.z = tail call i64 %i.y(ptr noundef nonnull %i.b, i64 noundef %i.k) #27, !inline_history !225
  br label %char_is_identifier_start.exit

bb.i:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.b, align 1, !tbaa !67   ; 3 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = zext nneg i8 %i.aa to i64
  %i.ad = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !67
  %.not.i = trunc i8 %i.ae to i1
  %i.af = icmp eq i8 %i.aa, 95
  %narrow.i = or i1 %i.af, %.not.i
  %i.ag = zext i1 %narrow.i to i64
  br label %char_is_identifier_start.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.b, i64 noundef %i.k) #27
  br label %char_is_identifier_start.exit

char_is_identifier_start.exit:                    ; preds = %bb.h, %bb.j, %bb.k
  %.1.i = phi i64 [ %i.ah, %bb.k ], [ %i.z, %bb.h ], [ %i.ag, %bb.j ]
  %.not13 = icmp eq i64 %.1.i, 0
  br i1 %.not13, label %char_is_identifier_start.exit.thread, label %char_is_identifier_start.exit.thread17

char_is_identifier_start.exit.thread17:           ; preds = %bb.e, %bb.f, %char_is_identifier_start.exit
  %i.ai = getelementptr i8, ptr %1, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !288
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %char_is_identifier_start.exit.thread

bb.l:                                             ; preds = %char_is_identifier_start.exit.thread17
  %i.al = getelementptr i8, ptr %1, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %char_is_identifier_start.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %1, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !289
  %i.aq = icmp eq ptr %i.ap, null
  br label %char_is_identifier_start.exit.thread

char_is_identifier_start.exit.thread:             ; preds = %bb.g, %bb.c, %bb.b, %bb.b, %bb.m, %bb.l, %char_is_identifier_start.exit.thread17, %char_is_identifier_start.exit, %bb.a
  %i.ar = phi i1 [ false, %bb.l ], [ false, %char_is_identifier_start.exit.thread17 ], [ false, %char_is_identifier_start.exit ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.a ], [ %i.aq, %bb.m ], [ false, %bb.c ], [ false, %bb.g ]
  ret i1 %i.ar
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_call_operator_write(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 88         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.d = getelementptr i8, ptr %2, i64 16
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.e = getelementptr i8, ptr %0, i64 472
  %i.f = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %.val18, ptr noundef %.val19, i32 noundef 203) #27 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !117
  tail call void @pm_visit_node(ptr noundef %i.g, ptr noundef nonnull @pm_node_unreference_each, ptr noundef %0) #27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !117
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef %i.h) #27
  store ptr null, ptr %i.a, align 8, !tbaa !117
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 128        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !289
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.l = getelementptr i8, ptr %2, i64 16
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.m = getelementptr i8, ptr %0, i64 472
  %i.n = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.m, ptr noundef %.val, ptr noundef %.val17, i32 noundef 204) #27 ; 0 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !289
  tail call void @pm_visit_node(ptr noundef %i.o, ptr noundef nonnull @pm_node_unreference_each, ptr noundef %0) #27
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !289
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef %i.p) #27
  store ptr null, ptr %i.i, align 8, !tbaa !289
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_and_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 2866, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !126
  %i.e = icmp eq i32 %i.d, 20
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 2867, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_and_write_node_create) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 14 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %pm_node_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !116
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr i8, ptr %1, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !120  ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 8
  store i16 18, ptr %i.f, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %i.k, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.m, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.w, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !14
  store <2 x ptr> %i.y, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %3, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !105
  %i.z = getelementptr i8, ptr %0, i64 576        ; 3 uses
  %i.aa = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.z, i32 noundef %i.w) #27 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #28 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull align 1 %i.af, i64 noundef %i.ad, i1 noundef false) #27
  %i.ag = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.z, ptr noundef nonnull %i.ae, i64 noundef %i.ad) #27
  br label %pm_call_write_read_name_init.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  %i.ah = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.z, ptr noundef nonnull @.str.103, i64 noundef 0) #27
  br label %pm_call_write_read_name_init.exit

pm_call_write_read_name_init.exit:                ; preds = %bb.g, %bb.h
  %storemerge.i = phi i32 [ %i.ah, %bb.h ], [ %i.ag, %bb.g ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !7
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_global_variable_or_write_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 4205, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133  ; 3 uses
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.m, label %bb.h [
    i16 62, label %bb.e
    i16 10, label %bb.f
    i16 111, label %bb.g
  ]

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !423
  br label %pm_global_variable_write_name.exit

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !425
  br label %pm_global_variable_write_name.exit

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr i8, ptr %0, i64 576
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.t, ptr noundef %i.j, i64 noundef %i.w) #27
  br label %pm_global_variable_write_name.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 4157, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_write_name) #26
  unreachable

pm_global_variable_write_name.exit:               ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.y = getelementptr i8, ptr %2, i64 8
  store i16 61, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !14
  store <2 x ptr> %i.z, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_class_variable_or_write_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3308, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_class_variable_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !674
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.o = getelementptr i8, ptr %2, i64 8
  store i16 29, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_constant_path_or_write_node_create(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3412, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_constant_path_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %2, i64 8
  store i16 39, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !676
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  store <2 x ptr> %i.n, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_constant_or_write_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3520, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_constant_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !678
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.o = getelementptr i8, ptr %2, i64 8
  store i16 35, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_instance_variable_or_write_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 4636, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_instance_variable_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !680
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.o = getelementptr i8, ptr %2, i64 8
  store i16 78, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_local_variable_or_write_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.a, label %bb.b [
    i16 96, label %bb.c
    i16 88, label %bb.c
    i16 19, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.2, i32 noundef 5180, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_local_variable_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = load i32, ptr %2, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 135
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 5181, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_local_variable_or_write_node_create) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %pm_node_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.e
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.l = getelementptr i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.n = getelementptr i8, ptr %2, i64 8
  store i16 95, ptr %i.d, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !14
  store <2 x ptr> %i.o, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %4, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %5, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !7
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_index_or_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3041, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #30 ; 15 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 120) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 88         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 128        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !289  ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 688
  %i.l = load i32, ptr %i.k, align 8, !tbaa !53
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %pm_index_arguments_check.exit

bb.e:                                             ; preds = %pm_node_alloc.exit
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.h, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !116
  %i.p = and i16 %i.o, 8
  %.not16.i = icmp eq i16 %i.p, 0
  br i1 %.not16.i, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.h, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !111  ; 2 uses
  %.not24.i = icmp eq i64 %i.r, 0
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr i8, ptr %i.h, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !446
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.u = add nuw i64 %.022.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.r
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.h, !llvm.loop !535

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %bb.g ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.022.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 4 uses
  %.not17.i = icmp eq ptr %i.w, null
  br i1 %.not17.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i16, ptr %i.w, align 8, !tbaa !115
  %i.y = icmp eq i16 %i.x, 90
  br i1 %i.y, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val20.i = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val21.i = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr i8, ptr %0, i64 472
  %i.ac = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ab, ptr noundef %.val20.i, ptr noundef %.val21.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.g, %bb.j, %.preheader.i, %bb.f, %bb.e
  %.not18.i = icmp eq ptr %i.j, null
  br i1 %.not18.i, label %pm_index_arguments_check.exitthread-pre-split, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.ad = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !133
  %i.ae = getelementptr i8, ptr %i.j, i64 16
  %.val19.i = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.af = getelementptr i8, ptr %0, i64 472
  %i.ag = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.af, ptr noundef %.val.i, ptr noundef %.val19.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exitthread-pre-split

pm_index_arguments_check.exitthread-pre-split:    ; preds = %bb.k, %.critedge.i
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !289
  br label %pm_index_arguments_check.exit

pm_index_arguments_check.exit:                    ; preds = %pm_index_arguments_check.exitthread-pre-split, %pm_node_alloc.exit
  %i.ah = phi ptr [ %.pr, %pm_index_arguments_check.exitthread-pre-split ], [ %i.j, %pm_node_alloc.exit ] ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %pm_index_arguments_check.exit
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !115
  %i.aj = icmp eq i16 %i.ai, 12
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.2, i32 noundef 3046, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_or_write_node_create) #26
  unreachable

bb.n:                                             ; preds = %pm_index_arguments_check.exit, %bb.l
  %i.ak = getelementptr i8, ptr %1, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !116
  %i.am = load i32, ptr %0, align 8, !tbaa !109
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %0, align 8, !tbaa !109
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.aq = getelementptr i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.as = getelementptr i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.au = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = getelementptr i8, ptr %1, i64 72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.ax = getelementptr i8, ptr %1, i64 96
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr i8, ptr %2, i64 8
  store i16 74, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.al, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.an, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ar, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.aw, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !511
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.ah, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !536
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %4 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !14
  store <2 x ptr> %4, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %3, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !105
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_or_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 3011, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !126
  %i.e = icmp eq i32 %i.d, 135
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3012, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_or_write_node_create) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 14 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %pm_node_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !116
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr i8, ptr %1, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !120  ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 8
  store i16 21, ptr %i.f, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %i.k, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.m, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.w, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !14
  store <2 x ptr> %i.y, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %3, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !105
  %i.z = getelementptr i8, ptr %0, i64 576        ; 3 uses
  %i.aa = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.z, i32 noundef %i.w) #27 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #28 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull align 1 %i.af, i64 noundef %i.ad, i1 noundef false) #27
  %i.ag = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.z, ptr noundef nonnull %i.ae, i64 noundef %i.ad) #27
  br label %pm_call_write_read_name_init.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  %i.ah = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.z, ptr noundef nonnull @.str.103, i64 noundef 0) #27
  br label %pm_call_write_read_name_init.exit

pm_call_write_read_name_init.exit:                ; preds = %bb.g, %bb.h
  %storemerge.i = phi i32 [ %i.ah, %bb.h ], [ %i.ag, %bb.g ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !7
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_class_variable_operator_write_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !674
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.m = getelementptr i8, ptr %.16.val, i64 -1
  %i.n = getelementptr i8, ptr %0, i64 576
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %.8.val to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.n, ptr noundef %.8.val, i64 noundef %i.q) #27
  store i16 28, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.r, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_constant_path_operator_write_node_create(ptr noundef %0, ptr noundef %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr i8, ptr %.16.val, i64 -1
  %i.l = getelementptr i8, ptr %0, i64 576
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %.8.val to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.l, ptr noundef %.8.val, i64 noundef %i.o) #27
  store i16 38, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !676
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.8.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.16.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.p, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !7
end_hunk_11
begin_hunk_12_@pm_instance_variable_operator_write_node_create:bb.a
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !680
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.m = getelementptr i8, ptr %.16.val, i64 -1
  %i.n = getelementptr i8, ptr %0, i64 576
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %.8.val to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.n, ptr noundef %.8.val, i64 noundef %i.q) #27
  store i16 77, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.r, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_local_variable_operator_write_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.k = getelementptr i8, ptr %.16.val, i64 -1
  %i.l = getelementptr i8, ptr %0, i64 576
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %.8.val to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.l, ptr noundef %.8.val, i64 noundef %i.o) #27
  store i16 94, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.8.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.16.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %3, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 %i.p, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %4, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_index_operator_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #30 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 128) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 88         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 128        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289  ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 688
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53
  %i.k = icmp ugt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %pm_index_arguments_check.exit

bb.c:                                             ; preds = %pm_node_alloc.exit
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !116
  %i.n = and i16 %i.m, 8
  %.not16.i = icmp eq i16 %i.n, 0
  br i1 %.not16.i, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.f, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !111  ; 2 uses
  %.not24.i = icmp eq i64 %i.p, 0
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.q = getelementptr i8, ptr %i.f, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !446
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.s = add nuw i64 %.022.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.p
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.f, !llvm.loop !535

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %.022.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105  ; 4 uses
  %.not17.i = icmp eq ptr %i.u, null
  br i1 %.not17.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i16, ptr %i.u, align 8, !tbaa !115
  %i.w = icmp eq i16 %i.v, 90
  br i1 %i.w, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val20.i = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.y = getelementptr i8, ptr %i.u, i64 16
  %.val21.i = load ptr, ptr %i.y, align 8, !tbaa !134
  %i.z = getelementptr i8, ptr %0, i64 472
  %i.aa = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.z, ptr noundef %.val20.i, ptr noundef %.val21.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.e, %bb.h, %.preheader.i, %bb.d, %bb.c
  %.not18.i = icmp eq ptr %i.h, null
  br i1 %.not18.i, label %pm_index_arguments_check.exitthread-pre-split, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.ab = getelementptr i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ac = getelementptr i8, ptr %i.h, i64 16
  %.val19.i = load ptr, ptr %i.ac, align 8, !tbaa !134
  %i.ad = getelementptr i8, ptr %0, i64 472
  %i.ae = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ad, ptr noundef %.val.i, ptr noundef %.val19.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exitthread-pre-split

pm_index_arguments_check.exitthread-pre-split:    ; preds = %bb.i, %.critedge.i
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !289
  br label %pm_index_arguments_check.exit

pm_index_arguments_check.exit:                    ; preds = %pm_index_arguments_check.exitthread-pre-split, %pm_node_alloc.exit
  %i.af = phi ptr [ %.pr, %pm_index_arguments_check.exitthread-pre-split ], [ %i.h, %pm_node_alloc.exit ] ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %pm_index_arguments_check.exit
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !115
  %i.ah = icmp eq i16 %i.ag, 12
  br i1 %i.ah, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.2, i32 noundef 2984, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_operator_write_node_create) #26
  unreachable

bb.l:                                             ; preds = %pm_index_arguments_check.exit, %bb.j
  %i.ai = getelementptr i8, ptr %1, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !116
  %i.ak = load i32, ptr %0, align 8, !tbaa !109
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %0, align 8, !tbaa !109
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !133
  %i.ao = getelementptr i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134
  %i.aq = getelementptr i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !125
  %i.as = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr i8, ptr %1, i64 72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.av = getelementptr i8, ptr %1, i64 96
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.aw = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127 ; 2 uses
  %i.ay = getelementptr i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  %i.bb = getelementptr i8, ptr %0, i64 576
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.bb, ptr noundef %i.ax, i64 noundef %i.be) #27
  store i16 73, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.aj, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.al, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ar, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.au, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !511
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.af, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !536
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.bf, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bg = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !14
  store <2 x ptr> %i.bg, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %3, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !105
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_operator_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 2950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_operator_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #30 ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 104) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !116
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.n = getelementptr i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !120  ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127  ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = getelementptr i8, ptr %0, i64 576       ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.aa, ptr noundef %i.w, i64 noundef %i.ad) #27
  store i16 20, ptr %i.d, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.i, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.u, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.ae, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !7
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.af = load <2 x ptr>, ptr %i.v, align 8, !tbaa !14
  store <2 x ptr> %i.af, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %3, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !105
  %i.ag = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.aa, i32 noundef %i.u) #27 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.aj = add i64 %i.ai, -1                       ; 3 uses
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #28 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.al, i64 noundef %i.aj, i1 noundef false) #27
  %i.am = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.aa, ptr noundef nonnull %i.ak, i64 noundef %i.aj) #27
  br label %pm_call_write_read_name_init.exit

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.an = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.aa, ptr noundef nonnull @.str.103, i64 noundef 0) #27
  br label %pm_call_write_read_name_init.exit

pm_call_write_read_name_init.exit:                ; preds = %bb.e, %bb.f
  %storemerge.i = phi i32 [ %i.an, %bb.f ], [ %i.am, %bb.e ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !7
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_regular_expression_named_captures(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.parse_regular_expression_named_capture_data_t, align 8 ; 9 uses
  %5 = alloca %struct.parse_regular_expression_error_data_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !682
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !686
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !569
  %i.g = icmp eq i32 %i.f, 1
  %i.h = zext i1 %i.g to i8                       ; 2 uses
  store i8 %i.h, ptr %i.d, align 8, !tbaa !687
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !566
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  store <2 x ptr> %i.n, ptr %i.j, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.h, ptr %i.o, align 8, !tbaa !570
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, i8 0, i64 7, i1 false)
  %i.q = tail call ptr @pm_string_source(ptr noundef %1) #27
  %i.r = tail call i64 @pm_string_length(ptr noundef %1) #27
  call void @pm_regexp_parse(ptr noundef %0, ptr noundef %i.q, i64 noundef %i.r, i1 noundef zeroext %3, ptr noundef nonnull @parse_regular_expression_named_capture, ptr noundef nonnull %4, ptr noundef nonnull @parse_regular_expression_error, ptr noundef nonnull %5) #27
  call void @pm_constant_id_list_free(ptr noundef nonnull %i.c) #27
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !688  ; 2 uses
  %.not = icmp eq ptr %i.s, null
  %. = select i1 %.not, ptr %2, ptr %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_shorthand_create(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133
  %i.g = select i1 %i.f, i16 32, i16 0            ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %pm_call_node_create.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.h, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  store i16 %i.g, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
end_hunk_12
