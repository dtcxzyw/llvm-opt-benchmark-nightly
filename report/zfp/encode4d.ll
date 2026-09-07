Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4d?download=true
inline.NumInlined: 61
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 48
begin_hunk_0_@zfp_encode_block_double_4:bb.a
  %i.axc = sub nsw i64 %i.awy, %i.axb
  store i64 %i.axa, ptr %i.awl, align 8, !tbaa !13
  store i64 %i.awv, ptr %i.awj, align 8, !tbaa !13
  store i64 %i.axc, ptr %i.awh, align 8, !tbaa !13
  store i64 %i.awu, ptr %gep85.1.i.i.i17, align 8, !tbaa !13
  %gep85.2.i.i.i18 = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 16 ; 2 uses
  %i.axd = load i64, ptr %gep85.2.i.i.i18, align 16, !tbaa !13
  %i.axe = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 528 ; 2 uses
  %i.axf = load i64, ptr %i.axe, align 16, !tbaa !13 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 1040 ; 2 uses
  %i.axh = load i64, ptr %i.axg, align 16, !tbaa !13
  %i.axi = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 1552 ; 2 uses
  %i.axj = load i64, ptr %i.axi, align 16, !tbaa !13 ; 2 uses
  %i.axk = add nsw i64 %i.axj, %i.axd
  %i.axl = ashr i64 %i.axk, 1                     ; 2 uses
  %i.axm = sub i64 %i.axj, %i.axl
  %i.axn = add nsw i64 %i.axh, %i.axf
  %i.axo = ashr i64 %i.axn, 1                     ; 3 uses
  %i.axp = sub nsw i64 %i.axf, %i.axo             ; 2 uses
  %i.axq = add nsw i64 %i.axl, %i.axo
  %i.axr = ashr i64 %i.axq, 1                     ; 2 uses
  %i.axs = sub nsw i64 %i.axo, %i.axr
  %i.axt = add nsw i64 %i.axm, %i.axp
  %i.axu = ashr i64 %i.axt, 1                     ; 2 uses
  %i.axv = sub nsw i64 %i.axp, %i.axu             ; 2 uses
  %i.axw = ashr i64 %i.axv, 1
  %i.axx = add nsw i64 %i.axw, %i.axu             ; 2 uses
  %i.axy = ashr i64 %i.axx, 1
  %i.axz = sub nsw i64 %i.axv, %i.axy
  store i64 %i.axx, ptr %i.axi, align 16, !tbaa !13
  store i64 %i.axs, ptr %i.axg, align 16, !tbaa !13
  store i64 %i.axz, ptr %i.axe, align 16, !tbaa !13
  store i64 %i.axr, ptr %gep85.2.i.i.i18, align 16, !tbaa !13
  %gep85.3.i.i.i19 = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 24 ; 2 uses
  %i.aya = load i64, ptr %gep85.3.i.i.i19, align 8, !tbaa !13
  %i.ayb = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 536 ; 2 uses
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !13 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 1048 ; 2 uses
  %i.aye = load i64, ptr %i.ayd, align 8, !tbaa !13
  %i.ayf = getelementptr inbounds nuw i8, ptr %gep88.i.i.i, i64 1560 ; 2 uses
  %i.ayg = load i64, ptr %i.ayf, align 8, !tbaa !13 ; 2 uses
  %i.ayh = add nsw i64 %i.ayg, %i.aya
  %i.ayi = ashr i64 %i.ayh, 1                     ; 2 uses
  %i.ayj = sub i64 %i.ayg, %i.ayi
  %i.ayk = add nsw i64 %i.aye, %i.ayc
  %i.ayl = ashr i64 %i.ayk, 1                     ; 3 uses
  %i.aym = sub nsw i64 %i.ayc, %i.ayl             ; 2 uses
  %i.ayn = add nsw i64 %i.ayi, %i.ayl
  %i.ayo = ashr i64 %i.ayn, 1                     ; 2 uses
  %i.ayp = sub nsw i64 %i.ayl, %i.ayo
  %i.ayq = add nsw i64 %i.ayj, %i.aym
  %i.ayr = ashr i64 %i.ayq, 1                     ; 2 uses
  %i.ays = sub nsw i64 %i.aym, %i.ayr             ; 2 uses
  %i.ayt = ashr i64 %i.ays, 1
  %i.ayu = add nsw i64 %i.ayt, %i.ayr             ; 2 uses
  %i.ayv = ashr i64 %i.ayu, 1
  %i.ayw = sub nsw i64 %i.ays, %i.ayv
  store i64 %i.ayu, ptr %i.ayf, align 8, !tbaa !13
  store i64 %i.ayp, ptr %i.ayd, align 8, !tbaa !13
  store i64 %i.ayw, ptr %i.ayb, align 8, !tbaa !13
  store i64 %i.ayo, ptr %gep85.3.i.i.i19, align 8, !tbaa !13
  %indvars.iv.next126.i.i.i = add nuw nsw i64 %indvars.iv125.i.i.i, 1 ; 2 uses
  %exitcond128.not.i.i.i = icmp eq i64 %indvars.iv.next126.i.i.i, 4
  br i1 %exitcond128.not.i.i.i, label %bb.ab, label %.preheader.i.i.i

bb.ab:                                            ; preds = %.preheader.i.i.i
  %indvars.iv.next130.i.i.i = add nuw nsw i64 %indvars.iv129.i.i.i, 1 ; 2 uses
  %exitcond132.not.i.i.i = icmp eq i64 %indvars.iv.next130.i.i.i, 4
  br i1 %exitcond132.not.i.i.i, label %fwd_xform_int64_4.exit.i.i, label %.preheader51.i.i.i

fwd_xform_int64_4.exit.i.i:                       ; preds = %bb.ab, %fwd_xform_int64_4.exit.i.i
  %.04.i.i.i20 = phi ptr [ %i.bac, %fwd_xform_int64_4.exit.i.i ], [ %i.a, %bb.ab ] ; 5 uses
  %.03.i.i.i21 = phi ptr [ %i.azv, %fwd_xform_int64_4.exit.i.i ], [ @perm_4, %bb.ab ] ; 5 uses
  %.0.i.i.i22 = phi i32 [ %i.bad, %fwd_xform_int64_4.exit.i.i ], [ 256, %bb.ab ]
  %i.ayx = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 1
  %i.ayy = load i8, ptr %.03.i.i.i21, align 1, !tbaa !37
  %i.ayz = zext i8 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ayz
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !13
  %i.azc = add i64 %i.azb, -6148914691236517206
  %i.azd = xor i64 %i.azc, -6148914691236517206
  %i.aze = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8
  store i64 %i.azd, ptr %.04.i.i.i20, align 8, !tbaa !13
  %i.azf = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 2
  %i.azg = load i8, ptr %i.ayx, align 1, !tbaa !37
  %i.azh = zext i8 %i.azg to i64
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.azh
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !13
  %i.azk = add i64 %i.azj, -6148914691236517206
  %i.azl = xor i64 %i.azk, -6148914691236517206
  %i.azm = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 16
  store i64 %i.azl, ptr %i.aze, align 8, !tbaa !13
  %i.azn = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 3
  %i.azo = load i8, ptr %i.azf, align 1, !tbaa !37
  %i.azp = zext i8 %i.azo to i64
  %i.azq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.azp
  %i.azr = load i64, ptr %i.azq, align 8, !tbaa !13
  %i.azs = add i64 %i.azr, -6148914691236517206
  %i.azt = xor i64 %i.azs, -6148914691236517206
  %i.azu = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 24
  store i64 %i.azt, ptr %i.azm, align 8, !tbaa !13
  %i.azv = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 4
  %i.azw = load i8, ptr %i.azn, align 1, !tbaa !37
  %i.azx = zext i8 %i.azw to i64
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.azx
  %i.azz = load i64, ptr %i.azy, align 8, !tbaa !13
  %i.baa = add i64 %i.azz, -6148914691236517206
  %i.bab = xor i64 %i.baa, -6148914691236517206
  %i.bac = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 32
  store i64 %i.bab, ptr %i.azu, align 8, !tbaa !13
  %i.bad = add nsw i32 %.0.i.i.i22, -4            ; 2 uses
  %.not.i.i.i23.3 = icmp eq i32 %i.bad, 0
  br i1 %.not.i.i.i23.3, label %fwd_order_int64.exit.i.i24, label %fwd_xform_int64_4.exit.i.i

fwd_order_int64.exit.i.i24:                       ; preds = %fwd_xform_int64_4.exit.i.i
  %i.bae = tail call i32 @llvm.usub.sat.i32(i32 %i.alb, i32 12) ; 3 uses
  %i.baf = add i32 %i.ald, -12
  %i.bag = call fastcc i32 @encode_ints_uint64(ptr noundef nonnull %i.ajh, i32 noundef %i.baf, i32 noundef range(i32 0, -2147483648) %i.aje, ptr noundef %i.a) ; 3 uses
  %i.bah = icmp ult i32 %i.bag, %i.bae
  br i1 %i.bah, label %bb.ac, label %encode_block_int64_4.exit.i

bb.ac:                                            ; preds = %fwd_order_int64.exit.i.i24
  %i.bai = sub nuw i32 %i.bae, %i.bag
  %i.baj = zext i32 %i.bai to i64
  %i.bak = load i64, ptr %i.ajh, align 8, !tbaa !31
  %i.bal = add i64 %i.bak, %i.baj                 ; 5 uses
  %i.bam = icmp ugt i64 %i.bal, 63
  br i1 %i.bam, label %.lr.ph.i.i.i27, label %stream_pad.exit.i.i25

.lr.ph.i.i.i27:                                   ; preds = %bb.ac
  %i.ban = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16 ; 2 uses
  %.promoted.i.i.i28 = load ptr, ptr %i.ban, align 8, !tbaa !33 ; 3 uses
  %.pre.i.i.i29 = load i64, ptr %i.ajn, align 8, !tbaa !32
  %i.bao = getelementptr i8, ptr %.promoted.i.i.i28, i64 8 ; 2 uses
  store i64 %.pre.i.i.i29, ptr %.promoted.i.i.i28, align 8, !tbaa !13
  store i64 0, ptr %i.ajn, align 8, !tbaa !32
  %i.bap = add i64 %i.bal, -64                    ; 2 uses
  %i.baq = icmp ugt i64 %i.bap, 63
  br i1 %i.baq, label %.peel.next.i.preheader.i32, label %._crit_edge.i.i.i30

.peel.next.i.preheader.i32:                       ; preds = %.lr.ph.i.i.i27
  %i.bar = add i64 %i.bal, -128                   ; 2 uses
  %i.bas = lshr i64 %i.bar, 3
  %i.bat = and i64 %i.bas, 2305843009213693944
  %i.bau = add nuw nsw i64 %i.bat, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bao, i8 0, i64 %i.bau, i1 false), !tbaa !13
  store i64 0, ptr %i.ajn, align 8, !tbaa !32
  %i.bav = lshr i64 %i.bar, 3
  %i.baw = and i64 %i.bav, 2305843009213693944
  %i.bax = getelementptr i8, ptr %.promoted.i.i.i28, i64 %i.baw
  %scevgep = getelementptr i8, ptr %i.bax, i64 16
  %i.bay = and i64 %i.bal, 63
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %.peel.next.i.preheader.i32, %.lr.ph.i.i.i27
  %.lcssa29.i.i = phi ptr [ %i.bao, %.lr.ph.i.i.i27 ], [ %scevgep, %.peel.next.i.preheader.i32 ]
  %.lcssa.i.i31 = phi i64 [ %i.bap, %.lr.ph.i.i.i27 ], [ %i.bay, %.peel.next.i.preheader.i32 ]
  store ptr %.lcssa29.i.i, ptr %i.ban, align 8, !tbaa !33
  br label %stream_pad.exit.i.i25

stream_pad.exit.i.i25:                            ; preds = %._crit_edge.i.i.i30, %bb.ac
  %.0.lcssa.i.i.i26 = phi i64 [ %.lcssa.i.i31, %._crit_edge.i.i.i30 ], [ %i.bal, %bb.ac ]
  store i64 %.0.lcssa.i.i.i26, ptr %i.ajh, align 8, !tbaa !31
  br label %encode_block_int64_4.exit.i

encode_block_int64_4.exit.i:                      ; preds = %stream_pad.exit.i.i25, %fwd_order_int64.exit.i.i24
  %.0.i39.i = phi i32 [ %i.bae, %stream_pad.exit.i.i25 ], [ %i.bag, %fwd_order_int64.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.baz = add i32 %.0.i39.i, 12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %encode_block_double_4.exit

bb.ad:                                            ; preds = %exponent_block_double.exit.i10
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !29 ; 5 uses
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !31
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  %i.bbe = load i64, ptr %i.bbd, align 8, !tbaa !32
  %i.bbf = add i64 %i.bbc, 1                      ; 2 uses
  store i64 %i.bbf, ptr %i.bbb, align 8, !tbaa !31
  %i.bbg = icmp eq i64 %i.bbf, 64
  br i1 %i.bbg, label %bb.ae, label %stream_write_bit.exit.i35

bb.ae:                                            ; preds = %bb.ad
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16 ; 2 uses
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !33 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  store ptr %i.bbj, ptr %i.bbh, align 8, !tbaa !33
  store i64 %i.bbe, ptr %i.bbi, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bbb, i8 0, i64 16, i1 false)
  br label %stream_write_bit.exit.i35

stream_write_bit.exit.i35:                        ; preds = %bb.ae, %bb.ad
  %i.bbk = load i32, ptr %0, align 8, !tbaa !34   ; 3 uses
  %i.bbl = icmp ugt i32 %i.bbk, 1
  br i1 %i.bbl, label %bb.af, label %encode_block_double_4.exit

bb.af:                                            ; preds = %stream_write_bit.exit.i35
  %i.bbm = load ptr, ptr %i.bba, align 8, !tbaa !29 ; 4 uses
  %i.bbn = add i32 %i.bbk, -1
  %i.bbo = zext i32 %i.bbn to i64
  %i.bbp = load i64, ptr %i.bbm, align 8, !tbaa !31
  %i.bbq = add i64 %i.bbp, %i.bbo                 ; 4 uses
  %i.bbr = icmp ugt i64 %i.bbq, 63
  br i1 %i.bbr, label %.lr.ph.i.i, label %stream_pad.exit.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8 ; 3 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbm, i64 16 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.bbt, align 8, !tbaa !33 ; 2 uses
  %.pre.i.i = load i64, ptr %i.bbs, align 8, !tbaa !32
  %i.bbu = getelementptr i8, ptr %.promoted.i.i, i64 8 ; 4 uses
  store i64 %.pre.i.i, ptr %.promoted.i.i, align 8, !tbaa !13
  store i64 0, ptr %i.bbs, align 8, !tbaa !32
  %i.bbv = add i64 %i.bbq, -64                    ; 4 uses
  %i.bbw = icmp ugt i64 %i.bbv, 63
  br i1 %i.bbw, label %.peel.next.i.preheader, label %._crit_edge.i.i

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i
  %i.bbx = add i64 %i.bbq, -128                   ; 3 uses
  %i.bby = lshr i64 %i.bbx, 3
  %i.bbz = and i64 %i.bby, 2305843009213693944
  %i.bca = add nuw nsw i64 %i.bbz, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bbu, i8 0, i64 %i.bca, i1 false), !tbaa !13
  store i64 0, ptr %i.bbs, align 8, !tbaa !32
  %i.bcb = lshr i64 %i.bbx, 6
  %i.bcc = add nuw nsw i64 %i.bcb, 1
  %xtraiter = and i64 %i.bcc, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol

.peel.next.i.prol:                                ; preds = %.peel.next.i.preheader, %.peel.next.i.prol
  %i.bcd = phi ptr [ %i.bce, %.peel.next.i.prol ], [ %i.bbu, %.peel.next.i.preheader ]
  %.09.i.i.prol = phi i64 [ %i.bcf, %.peel.next.i.prol ], [ %i.bbv, %.peel.next.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.peel.next.i.prol ], [ 0, %.peel.next.i.preheader ]
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8 ; 3 uses
  %i.bcf = add i64 %.09.i.i.prol, -64             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol, !llvm.loop !22

.peel.next.i.prol.loopexit:                       ; preds = %.peel.next.i.prol, %.peel.next.i.preheader
  %.unr = phi ptr [ %i.bbu, %.peel.next.i.preheader ], [ %i.bce, %.peel.next.i.prol ]
  %.09.i.i.unr = phi i64 [ %i.bbv, %.peel.next.i.preheader ], [ %i.bcf, %.peel.next.i.prol ]
  %.lcssa517.unr = phi ptr [ poison, %.peel.next.i.preheader ], [ %i.bce, %.peel.next.i.prol ]
  %.lcssa516.unr = phi i64 [ poison, %.peel.next.i.preheader ], [ %i.bcf, %.peel.next.i.prol ]
  %i.bcg = icmp ult i64 %i.bbx, 448
  br i1 %i.bcg, label %._crit_edge.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i
  %i.bch = phi ptr [ %i.bci, %.peel.next.i ], [ %.unr, %.peel.next.i.prol.loopexit ]
  %.09.i.i = phi i64 [ %i.bcj, %.peel.next.i ], [ %.09.i.i.unr, %.peel.next.i.prol.loopexit ]
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 64 ; 2 uses
  %i.bcj = add i64 %.09.i.i, -512                 ; 3 uses
  %i.bck = icmp ugt i64 %i.bcj, 63
  br i1 %i.bck, label %.peel.next.i, label %._crit_edge.i.i, !llvm.loop !23

._crit_edge.i.i:                                  ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i, %.lr.ph.i.i
  %.lcssa58.i = phi ptr [ %i.bbu, %.lr.ph.i.i ], [ %.lcssa517.unr, %.peel.next.i.prol.loopexit ], [ %i.bci, %.peel.next.i ]
  %.lcssa.i = phi i64 [ %i.bbv, %.lr.ph.i.i ], [ %.lcssa516.unr, %.peel.next.i.prol.loopexit ], [ %i.bcj, %.peel.next.i ]
  store ptr %.lcssa58.i, ptr %i.bbt, align 8, !tbaa !33
  br label %stream_pad.exit.i

stream_pad.exit.i:                                ; preds = %._crit_edge.i.i, %bb.af
  %.0.lcssa.i.i = phi i64 [ %.lcssa.i, %._crit_edge.i.i ], [ %i.bbq, %bb.af ]
  store i64 %.0.lcssa.i.i, ptr %i.bbm, align 8, !tbaa !31
  br label %encode_block_double_4.exit

encode_block_double_4.exit:                       ; preds = %stream_pad.exit.i, %stream_write_bit.exit.i35, %encode_block_int64_4.exit.i, %rev_encode_block_double_4.exit
  %i.bcl = phi i32 [ %.132.i, %rev_encode_block_double_4.exit ], [ %i.baz, %encode_block_int64_4.exit.i ], [ %i.bbk, %stream_pad.exit.i ], [ 1, %stream_write_bit.exit.i35 ]
  %i.bcm = zext i32 %i.bcl to i64
  ret i64 %i.bcm
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @encode_ints_uint64(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %2, 8
  %i.b = or disjoint i32 %i.a, 255
  %.not = icmp ugt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !13, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !13, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !49, !noalias !50 ; 3 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.25.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.25.0..sroa_idx.i, align 8, !noalias !50
  %.not124.i = icmp eq i32 %1, 0
  br i1 %.not124.i, label %encode_many_ints_uint64.exit, label %.lr.ph132.preheader.i

.lr.ph132.preheader.i:                            ; preds = %bb.b
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %2) ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp samesign ult i32 %i.c, 64
  br i1 %i.e, label %.lr.ph, label %encode_many_ints_uint64.exit

.lr.ph132.i:                                      ; preds = %stream_write_bit.exit59._crit_edge.i
  %indvars.iv.next152.i = add nsw i64 %indvars.iv.next152.i21, -1
  %i.f = icmp samesign ugt i64 %indvars.iv.next152.i21, %i.d
  br i1 %i.f, label %.lr.ph, label %encode_many_ints_uint64.exit

.lr.ph:                                           ; preds = %.lr.ph132.preheader.i, %.lr.ph132.i
  %indvars.iv.next152.i21 = phi i64 [ %indvars.iv.next152.i, %.lr.ph132.i ], [ 63, %.lr.ph132.preheader.i ] ; 8 uses
  %.sroa.0.0125.i20 = phi i64 [ %.sroa.0.5.i, %.lr.ph132.i ], [ %.sroa.0.0.copyload.i, %.lr.ph132.preheader.i ] ; 3 uses
  %.sroa.13.0126.i19 = phi i64 [ %.sroa.13.5.i, %.lr.ph132.i ], [ %.sroa.13.0.copyload.i, %.lr.ph132.preheader.i ] ; 3 uses
  %.sroa.19.0127.i18 = phi ptr [ %.sroa.19.5.i, %.lr.ph132.i ], [ %.sroa.19.0.copyload.i, %.lr.ph132.preheader.i ] ; 3 uses
  %.052128.i17 = phi i32 [ %.4.i, %.lr.ph132.i ], [ %1, %.lr.ph132.preheader.i ] ; 2 uses
  %.047130.i16 = phi i32 [ %.148.lcssa.i, %.lr.ph132.i ], [ 0, %.lr.ph132.preheader.i ] ; 5 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %.047130.i16, i32 %.052128.i17) ; 9 uses
  %i.h = sub nuw i32 %.052128.i17, %i.g           ; 3 uses
  %.not142.i = icmp eq i32 %.047130.i16, 0
  br i1 %.not142.i, label %.preheader79.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %wide.trip.count.i = zext i32 %i.g to i64       ; 2 uses
  %xtraiter77 = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.epil.preheader76, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter83 = and i64 %wide.trip.count.i, 4294967294
  br label %bb.d

.preheader79.i.loopexit.unr-lcssa:                ; preds = %stream_write_bit.exit.i.1
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader79.i, label %.epil.preheader76

.epil.preheader76:                                ; preds = %.preheader79.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %.sroa.19.182.i.epil.init = phi ptr [ %.sroa.19.0127.i18, %.lr.ph.i ], [ %.sroa.19.6.i.1, %.preheader79.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.13.181.i.epil.init = phi i64 [ %.sroa.13.0126.i19, %.lr.ph.i ], [ %.sroa.13.6.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %.sroa.0.180.i.epil.init = phi i64 [ %.sroa.0.0125.i20, %.lr.ph.i ], [ %.sroa.0.6.i.1, %.preheader79.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil.init
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.l = lshr i64 %i.k, %indvars.iv.next152.i21
  %i.m = and i64 %i.l, 1
  %i.n = shl nuw i64 %i.m, %.sroa.0.180.i.epil.init
  %i.o = add i64 %i.n, %.sroa.13.181.i.epil.init  ; 2 uses
  %i.p = add i64 %.sroa.0.180.i.epil.init, 1      ; 2 uses
  %i.q = icmp eq i64 %i.p, 64
  br i1 %i.q, label %bb.c, label %.preheader79.i

bb.c:                                             ; preds = %.epil.preheader76
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.19.182.i.epil.init, i64 8
  store i64 %i.o, ptr %.sroa.19.182.i.epil.init, align 8, !tbaa !13, !noalias !52
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.preheader79.i.loopexit.unr-lcssa, %bb.c, %.epil.preheader76, %.lr.ph
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0125.i20, %.lr.ph ], [ %.sroa.0.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ 0, %bb.c ], [ %i.p, %.epil.preheader76 ] ; 2 uses
  %.sroa.13.1.lcssa.i = phi i64 [ %.sroa.13.0126.i19, %.lr.ph ], [ %.sroa.13.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ 0, %bb.c ], [ %i.o, %.epil.preheader76 ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0127.i18, %.lr.ph ], [ %.sroa.19.6.i.1, %.preheader79.i.loopexit.unr-lcssa ], [ %i.r, %bb.c ], [ %.sroa.19.182.i.epil.init, %.epil.preheader76 ] ; 2 uses
  %i.s = icmp ult i32 %i.g, 256
  br i1 %i.s, label %.lr.ph88.i, label %.preheader.i

.lr.ph88.i:                                       ; preds = %.preheader79.i
  %umin.i = zext nneg i32 %i.g to i64             ; 4 uses
  %i.t = add nuw nsw i32 %i.g, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sub nsw i64 257, %i.u                    ; 3 uses
  %min.iters.check33 = icmp ult i64 %i.v, 10
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.scevcheck31

vector.scevcheck31:                               ; preds = %.lr.ph88.i
  %i.w = add nuw nsw i32 %i.g, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = sub nsw i64 256, %i.x                    ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = sub nuw nsw i32 -2, %i.g
  %i.ab = icmp ult i32 %i.aa, %i.z
  %i.ac = icmp ugt i64 %i.y, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %scalar.ph32.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.scevcheck31
  %n.vec35 = and i64 %i.v, -4                     ; 3 uses
  %i.ae = add nsw i64 %n.vec35, %umin.i
  %broadcast.splatinsert36 = insertelement <2 x i64> poison, i64 %indvars.iv.next152.i21, i64 0
  %broadcast.splat37 = shufflevector <2 x i64> %broadcast.splatinsert36, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %umin.i
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph34
  %index39 = phi i64 [ 0, %vector.ph34 ], [ %index.next44, %vector.body38 ] ; 2 uses
  %vec.phi40 = phi <2 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.am, %vector.body38 ]
  %vec.phi41 = phi <2 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.an, %vector.body38 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index39 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load42 = load <2 x i64>, ptr %gep, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %wide.load43 = load <2 x i64>, ptr %i.af, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.ag = lshr <2 x i64> %wide.load42, %broadcast.splat37
  %i.ah = lshr <2 x i64> %wide.load43, %broadcast.splat37
  %i.ai = trunc <2 x i64> %i.ag to <2 x i32>
  %i.aj = and <2 x i32> %i.ai, splat (i32 1)
  %i.ak = trunc <2 x i64> %i.ah to <2 x i32>
  %i.al = and <2 x i32> %i.ak, splat (i32 1)
  %i.am = add <2 x i32> %i.aj, %vec.phi40         ; 2 uses
  %i.an = add <2 x i32> %i.al, %vec.phi41         ; 2 uses
  %index.next44 = add nuw i64 %index39, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next44, %n.vec35
  br i1 %i.ao, label %middle.block45, label %vector.body38, !llvm.loop !42

middle.block45:                                   ; preds = %vector.body38
  %bin.rdx46 = add <2 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx46) ; 2 uses
  %cmp.n47 = icmp eq i64 %i.v, %n.vec35
  br i1 %cmp.n47, label %.preheader.i, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %vector.scevcheck31, %.lr.ph88.i, %middle.block45
  %indvars.iv145.i.ph = phi i64 [ %umin.i, %vector.scevcheck31 ], [ %umin.i, %.lr.ph88.i ], [ %i.ae, %middle.block45 ]
  %.087.i.ph = phi i32 [ 0, %vector.scevcheck31 ], [ 0, %.lr.ph88.i ], [ %i.ap, %middle.block45 ]
  br label %scalar.ph32

bb.d:                                             ; preds = %stream_write_bit.exit.i.1, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %stream_write_bit.exit.i.1 ] ; 3 uses
  %.sroa.19.182.i = phi ptr [ %.sroa.19.0127.i18, %.lr.ph.i.new ], [ %.sroa.19.6.i.1, %stream_write_bit.exit.i.1 ] ; 3 uses
  %.sroa.13.181.i = phi i64 [ %.sroa.13.0126.i19, %.lr.ph.i.new ], [ %.sroa.13.6.i.1, %stream_write_bit.exit.i.1 ]
  %.sroa.0.180.i = phi i64 [ %.sroa.0.0125.i20, %.lr.ph.i.new ], [ %.sroa.0.6.i.1, %stream_write_bit.exit.i.1 ] ; 2 uses
  %niter84 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter84.next.1, %stream_write_bit.exit.i.1 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !13, !alias.scope !50, !noalias !49
  %i.as = lshr i64 %i.ar, %indvars.iv.next152.i21
  %i.at = and i64 %i.as, 1
end_hunk_0
