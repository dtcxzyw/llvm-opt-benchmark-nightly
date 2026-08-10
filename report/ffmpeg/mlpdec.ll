inline.NumInlined: 95
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@read_access_unit:bb.a
  %i.asn = getelementptr inbounds nuw [24 x i8], ptr @huff_vlc, i64 %i.asm
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !131
  %i.asq = load i32, ptr %i.x, align 8, !tbaa !50 ; 3 uses
  %i.asr = lshr i32 %i.asq, 3
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.ass
  %i.asu = load i32, ptr %i.ast, align 1, !tbaa !39
  %i.asv = call i32 @llvm.bswap.i32(i32 %i.asu)
  %i.asw = and i32 %i.asq, 7
  %i.asx = shl i32 %i.asv, %i.asw
  %i.asy = lshr i32 %i.asx, 23
  %i.asz = zext nneg i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.asp, i64 %i.asz ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 2
  %i.atc = load i16, ptr %i.atb, align 2, !tbaa !39
  %i.atd = sext i16 %i.atc to i32
  %i.ate = load i16, ptr %i.ata, align 2, !tbaa !39 ; 2 uses
  %i.atf = zext nneg i16 %i.ate to i32
  %i.atg = load i32, ptr %i.w, align 8, !tbaa !49
  %i.ath = add i32 %i.asq, %i.atd
  %i.ati = call i32 @llvm.umin.i32(i32 %i.atg, i32 %i.ath)
  store i32 %i.ati, ptr %i.x, align 8, !tbaa !50
  %i.atj = icmp sgt i16 %i.ate, -1
  br i1 %i.atj, label %.thread.i.i273, label %.thread319

.thread.i.i273:                                   ; preds = %bb.gu, %bb.gt
  %.04252.i.i = phi i32 [ %i.atf, %bb.gu ], [ 0, %bb.gt ] ; 2 uses
  %i.atk = icmp sgt i32 %i.asj, 0
  br i1 %i.atk, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %.thread.i.i273
  %i.atl = shl i32 %.04252.i.i, %i.asj
  %i.atm = icmp samesign ult i32 %i.asj, 26
  %i.atn = load i32, ptr %i.x, align 8, !tbaa !50 ; 4 uses
  %i.ato = load i32, ptr %i.w, align 8, !tbaa !49 ; 3 uses
  %i.atp = lshr i32 %i.atn, 3
  %i.atq = zext nneg i32 %i.atp to i64
  %i.atr = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 1, !tbaa !39
  %i.att = call i32 @llvm.bswap.i32(i32 %i.ats)
  %i.atu = and i32 %i.atn, 7
  %i.atv = shl i32 %i.att, %i.atu                 ; 2 uses
  br i1 %i.atm, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.atw = sub nuw nsw i32 32, %i.asj
  %i.atx = lshr i32 %i.atv, %i.atw
  %i.aty = add i32 %i.atn, %i.asj
  %i.atz = call i32 @llvm.umin.i32(i32 %i.ato, i32 %i.aty)
  br label %get_bits_long.exit.i.i

bb.gx:                                            ; preds = %bb.gv
  %i.aua = lshr i32 %i.atv, 16
  %i.aub = add i32 %i.atn, 16
  %i.auc = call i32 @llvm.umin.i32(i32 %i.ato, i32 %i.aub) ; 4 uses
  store i32 %i.auc, ptr %i.x, align 8, !tbaa !50
  %i.aud = add nsw i32 %i.asj, -16                ; 2 uses
  %i.aue = shl i32 %i.aua, %i.aud
  %i.auf = lshr i32 %i.auc, 3
  %i.aug = zext nneg i32 %i.auf to i64
  %i.auh = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.aug
  %i.aui = load i32, ptr %i.auh, align 1, !tbaa !39
  %i.auj = call i32 @llvm.bswap.i32(i32 %i.aui)
  %i.auk = and i32 %i.auc, 7
  %i.aul = shl i32 %i.auj, %i.auk
  %i.aum = sub nsw i32 48, %i.asj
  %i.aun = lshr i32 %i.aul, %i.aum
  %i.auo = add i32 %i.auc, %i.aud
  %i.aup = call i32 @llvm.umin.i32(i32 %i.ato, i32 %i.auo)
  %i.auq = or i32 %i.aun, %i.aue
  br label %get_bits_long.exit.i.i

get_bits_long.exit.i.i:                           ; preds = %bb.gx, %bb.gw
  %.sink.i.i282 = phi i32 [ %i.atz, %bb.gw ], [ %i.aup, %bb.gx ]
  %.0.i.i.i = phi i32 [ %i.atx, %bb.gw ], [ %i.auq, %bb.gx ]
  store i32 %.sink.i.i282, ptr %i.x, align 8, !tbaa !50
  %i.aur = add i32 %.0.i.i.i, %i.atl
  br label %bb.gy

bb.gy:                                            ; preds = %get_bits_long.exit.i.i, %.thread.i.i273
  %.1.i.i274 = phi i32 [ %i.aur, %get_bits_long.exit.i.i ], [ %.04252.i.i, %.thread.i.i273 ]
  %i.aus = getelementptr inbounds nuw i8, ptr %i.asa, i64 156
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !116
  %i.auu = add nsw i32 %i.aut, %.1.i.i274
  %i.auv = shl i32 %i.auu, %i.asf
  %i.auw = load i16, ptr %i.le, align 2, !tbaa !99
  %i.aux = zext i16 %i.auw to i32
  %i.auy = add nuw nsw i32 %.03845.i, %i.aux
  %i.auz = zext nneg i32 %i.auy to i64
  %i.ava = getelementptr inbounds nuw [32 x i8], ptr %i.ku, i64 %i.auz
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %indvars.iv62.i.i
  store i32 %i.auv, ptr %i.avb, align 4, !tbaa !41
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1
  %exitcond.not.i.i275 = icmp eq i64 %indvars.iv62.i.i, %i.arx
  br i1 %exitcond.not.i.i275, label %.loopexit.i276, label %bb.gt, !llvm.loop !134

.loopexit.i276:                                   ; preds = %bb.gy, %._crit_edge.i.i269
  %i.avc = add nuw nsw i32 %.03845.i, 1           ; 2 uses
  %i.avd = load i16, ptr %i.lt, align 16, !tbaa !110 ; 2 uses
  %i.ave = zext i16 %i.avd to i32
  %i.avf = icmp samesign ult i32 %i.avc, %i.ave
  br i1 %i.avf, label %bb.gq, label %._crit_edge.i277, !llvm.loop !135

._crit_edge.i277:                                 ; preds = %.loopexit.i276, %.._crit_edge_crit_edge.i
  %i.avg = phi i16 [ 0, %.._crit_edge_crit_edge.i ], [ %i.avd, %.loopexit.i276 ] ; 2 uses
  %i.avh = phi i8 [ %.pre55.i, %.._crit_edge_crit_edge.i ], [ %i.arw, %.loopexit.i276 ]
  %i.avi = phi i8 [ %.pre53.i, %.._crit_edge_crit_edge.i ], [ %i.arv, %.loopexit.i276 ] ; 2 uses
  %.not4046.i = icmp ugt i8 %i.avi, %i.avh
  br i1 %.not4046.i, label %._crit_edge50.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %._crit_edge.i277
  %i.avj = zext i8 %i.avi to i64
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %.lr.ph49.i
  %i.avk = phi i16 [ %i.avg, %.lr.ph49.i ], [ %i.awg, %bb.gz ]
  %indvars.iv.i278 = phi i64 [ %i.avj, %.lr.ph49.i ], [ %indvars.iv.next.i280, %bb.gz ] ; 5 uses
  %i.avl = getelementptr inbounds nuw [164 x i8], ptr %i.lw, i64 %indvars.iv.i278 ; 6 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avl, i64 44
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avl, i64 1
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !113
  %i.avq = zext i8 %i.avp to i32
  %i.avr = getelementptr inbounds nuw i8, ptr %i.lv, i64 %indvars.iv.i278
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !39
  %i.avt = zext nneg i8 %i.avs to i32
  %.neg.i.i279 = shl nsw i32 -1, %i.avt
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avl, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.kv, ptr noundef nonnull align 4 dereferenceable(32) %i.avu, i64 32, i1 false)
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avl, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kw, ptr noundef nonnull align 4 dereferenceable(16) %i.avv, i64 16, i1 false)
  %i.avw = load ptr, ptr %i.kx, align 16, !tbaa !136
  %i.avx = load i8, ptr %i.avl, align 4, !tbaa !111
  %i.avy = zext i8 %i.avx to i32
  %i.avz = load i8, ptr %i.avn, align 4, !tbaa !111
  %i.awa = zext i8 %i.avz to i32
  %i.awb = zext i16 %i.avk to i32
  %i.awc = load i16, ptr %i.le, align 2, !tbaa !99
  %i.awd = zext i16 %i.awc to i64
  %i.awe = getelementptr inbounds nuw [32 x i8], ptr %i.ku, i64 %i.awd
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %indvars.iv.i278
  call void %i.avw(ptr noundef nonnull %i.kv, ptr noundef nonnull %i.avm, i32 noundef %i.avy, i32 noundef %i.awa, i32 noundef %i.avq, i32 noundef %.neg.i.i279, i32 noundef %i.awb, ptr noundef nonnull %i.awf) #8, !inline_history !137
  %i.awg = load i16, ptr %i.lt, align 16, !tbaa !110 ; 3 uses
  %i.awh = zext i16 %i.awg to i64
  %i.awi = sub nsw i64 0, %i.awh                  ; 2 uses
  %i.awj = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.awi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.avu, ptr noundef nonnull align 4 dereferenceable(32) %i.awj, i64 32, i1 false)
  %i.awk = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.awi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.avv, ptr noundef nonnull align 4 dereferenceable(16) %i.awk, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next.i280 = add nuw nsw i64 %indvars.iv.i278, 1
  %i.awl = load i8, ptr %i.lg, align 1, !tbaa !101
  %i.awm = zext i8 %i.awl to i64
  %.not40.not.i = icmp samesign ult i64 %indvars.iv.i278, %i.awm
  br i1 %.not40.not.i, label %bb.gz, label %._crit_edge50.i, !llvm.loop !138

._crit_edge50.i:                                  ; preds = %bb.gz, %._crit_edge.i277
  %i.awn = phi i16 [ %i.avg, %._crit_edge.i277 ], [ %i.awg, %bb.gz ]
  %i.awo = load i16, ptr %i.le, align 2, !tbaa !99
  %i.awp = add i16 %i.awo, %i.awn
  store i16 %i.awp, ptr %i.le, align 2, !tbaa !99
  %i.awq = load i8, ptr %i.lo, align 8, !tbaa !106
  %.not41.i = icmp eq i8 %i.awq, 0
  %.val226.pre = load i32, ptr %i.x, align 8, !tbaa !50 ; 2 uses
  br i1 %.not41.i, label %read_block_data.exit, label %bb.ha

bb.ha:                                            ; preds = %._crit_edge50.i
  %.not42.i = icmp eq i32 %.val226.pre, %.036.i
  br i1 %.not42.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.awr = load ptr, ptr %i.kl, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.awr, i32 noundef 16, ptr noundef nonnull @.str.63) #8
  %.pre56.i = load i32, ptr %i.x, align 8, !tbaa !50
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.aws = phi i32 [ %.pre56.i, %bb.hb ], [ %.036.i, %bb.ha ]
  %i.awt = load i32, ptr %i.w, align 8, !tbaa !49
  %i.awu = add i32 %i.aws, 8
  %i.awv = call i32 @llvm.umin.i32(i32 %i.awt, i32 %i.awu) ; 2 uses
  store i32 %i.awv, ptr %i.x, align 8, !tbaa !50
  br label %read_block_data.exit

read_block_data.exit:                             ; preds = %bb.hc, %._crit_edge50.i
  %.val226 = phi i32 [ %i.awv, %bb.hc ], [ %.val226.pre, %._crit_edge50.i ] ; 5 uses
  %.not209 = icmp slt i32 %.val226, %i.lc
  br i1 %.not209, label %bb.hd, label %.loopexit

bb.hd:                                            ; preds = %read_block_data.exit
  %i.aww = load ptr, ptr %6, align 8, !tbaa !46   ; 4 uses
  %i.awx = lshr i32 %.val226, 3
  %i.awy = zext nneg i32 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 %i.awy
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !39
  %i.axb = load i32, ptr %i.w, align 8, !tbaa !49 ; 5 uses
  %i.axc = icmp slt i32 %.val226, %i.axb
  %i.axd = zext i1 %i.axc to i32
  %spec.select.i284 = add nsw i32 %.val226, %i.axd ; 3 uses
  %i.axe = zext i8 %i.axa to i32
  %i.axf = and i32 %.val226, 7
  store i32 %spec.select.i284, ptr %i.x, align 8, !tbaa !50
  %i.axg = lshr exact i32 128, %i.axf
  %i.axh = and i32 %i.axg, %i.axe
  %.not210 = icmp eq i32 %i.axh, 0
  br i1 %.not210, label %bb.bx, label %bb.he, !llvm.loop !139

bb.he:                                            ; preds = %bb.hd
  %7 = add nsw i32 %spec.select.i284, 15
  %i.axi = and i32 %7, -16
  %i.axj = call i32 @llvm.umin.i32(i32 %i.axb, i32 %i.axi) ; 6 uses
  store i32 %i.axj, ptr %i.x, align 8, !tbaa !50
  %i.axk = sub nsw i32 %i.lc, %i.axj
  %i.axl = icmp sgt i32 %i.axk, 31
  br i1 %i.axl, label %bb.hf, label %bb.hk

bb.hf:                                            ; preds = %bb.he
  %i.axm = lshr i32 %i.axj, 3
  %i.axn = zext nneg i32 %i.axm to i64
  %i.axo = getelementptr inbounds nuw i8, ptr %i.aww, i64 %i.axn
  %i.axp = load i32, ptr %i.axo, align 1, !tbaa !39
  %i.axq = call i32 @llvm.bswap.i32(i32 %i.axp)
  %i.axr = and i32 %i.axj, 7
  %i.axs = shl i32 %i.axq, %i.axr
  %i.axt = add i32 %i.axj, 16
  %i.axu = call i32 @llvm.umin.i32(i32 %i.axb, i32 %i.axt) ; 4 uses
  store i32 %i.axu, ptr %i.x, align 8, !tbaa !50
  %.mask = and i32 %i.axs, -65536
  %.not211 = icmp eq i32 %.mask, -768344064
  br i1 %.not211, label %bb.hg, label %.thread319

bb.hg:                                            ; preds = %bb.hf
  %i.axv = lshr i32 %i.axu, 3
  %i.axw = zext nneg i32 %i.axv to i64
  %i.axx = getelementptr inbounds nuw i8, ptr %i.aww, i64 %i.axw
  %i.axy = load i32, ptr %i.axx, align 1, !tbaa !39
  %i.axz = call i32 @llvm.bswap.i32(i32 %i.axy)
  %i.aya = and i32 %i.axu, 7
  %i.ayb = shl i32 %i.axz, %i.aya                 ; 2 uses
  %i.ayc = lshr i32 %i.ayb, 16                    ; 2 uses
  %i.ayd = add i32 %i.axu, 16
  %i.aye = call i32 @llvm.umin.i32(i32 %i.axb, i32 %i.ayd)
  store i32 %i.aye, ptr %i.x, align 8, !tbaa !50
  %i.ayf = load ptr, ptr %i.kl, align 8, !tbaa !29 ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 24
  %i.ayh = load i32, ptr %i.ayg, align 8, !tbaa !59 ; 2 uses
  %i.ayi = icmp ne i32 %i.ayh, 86060
  %i.ayj = and i32 %i.ayb, 536870912
  %.not212 = icmp eq i32 %i.ayj, 0
  %or.cond222 = select i1 %i.ayi, i1 true, i1 %.not212
  br i1 %or.cond222, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ayk = and i32 %i.ayc, 8191
  %i.ayl = load i16, ptr %i.le, align 2, !tbaa !99 ; 2 uses
  %i.aym = zext i16 %i.ayl to i32
  %i.ayn = call i32 @llvm.umin.i32(i32 %i.ayk, i32 %i.aym)
  %i.ayo = trunc nuw nsw i32 %i.ayn to i16
  %i.ayp = sub i16 %i.ayl, %i.ayo
  store i16 %i.ayp, ptr %i.le, align 2, !tbaa !99
  br label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  %i.ayq = icmp eq i32 %i.ayh, 86045
  %i.ayr = icmp ne i32 %i.ayc, 53812
  %or.cond5 = select i1 %i.ayq, i1 %i.ayr, i1 false
  br i1 %or.cond5, label %.thread319, label %bb.hj

bb.hj:                                            ; preds = %bb.hh, %bb.hi
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ayf, i32 noundef 48, ptr noundef nonnull @.str.19) #8
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  store i8 1, ptr %i.ays, align 1, !tbaa !140
  %.val.pre522.pre = load i32, ptr %i.x, align 8, !tbaa !50
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.he
  %.val.pre522 = phi i32 [ %.val.pre522.pre, %bb.hj ], [ %i.axj, %bb.he ] ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv506
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !39
  %.not213 = icmp eq i8 %i.ayu, 0
  br i1 %.not213, label %.thread303, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ayv = sub nsw i32 %i.lc, %.val.pre522
  %.not214 = icmp eq i32 %i.ayv, 16
  br i1 %.not214, label %bb.hm, label %.loopexit

bb.hm:                                            ; preds = %bb.hl
  %i.ayw = add nsw i32 %i.lb, -2
  %i.ayx = call zeroext i8 @ff_mlp_calculate_parity(ptr noundef %.0170427, i32 noundef %i.ayw) #8
  %i.ayy = load i16, ptr %i.kz, align 2, !tbaa !96
  %i.ayz = zext i16 %i.ayy to i32
  %i.aza = add nsw i32 %i.ayz, -2
  %i.azb = call zeroext i8 @ff_mlp_checksum8(ptr noundef %.0170427, i32 noundef %i.aza) #8
  %i.azc = load i32, ptr %i.x, align 8, !tbaa !50 ; 3 uses
  %i.azd = load i32, ptr %i.w, align 8, !tbaa !49 ; 2 uses
  %i.aze = load ptr, ptr %6, align 8, !tbaa !46   ; 2 uses
  %i.azf = lshr i32 %i.azc, 3
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aze, i64 %i.azg
  %i.azi = load i32, ptr %i.azh, align 1, !tbaa !39
  %i.azj = call i32 @llvm.bswap.i32(i32 %i.azi)
  %i.azk = and i32 %i.azc, 7
  %i.azl = shl i32 %i.azj, %i.azk
  %i.azm = lshr i32 %i.azl, 24
  %i.azn = add i32 %i.azc, 8
  %i.azo = call i32 @llvm.umin.i32(i32 %i.azd, i32 %i.azn) ; 2 uses
  store i32 %i.azo, ptr %i.x, align 8, !tbaa !50
  %i.azp = zext i8 %i.ayx to i32
  %i.azq = xor i32 %i.azm, %i.azp
  %.not215 = icmp eq i32 %i.azq, 169
  br i1 %.not215, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.azr = load ptr, ptr %i.kl, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.azr, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %indvars508) #8
  %.pre519 = load i32, ptr %i.x, align 8, !tbaa !50
  %.pre520 = load i32, ptr %i.w, align 8, !tbaa !49
  %.pre521 = load ptr, ptr %6, align 8, !tbaa !46
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.azs = phi ptr [ %.pre521, %bb.hn ], [ %i.aze, %bb.hm ]
  %i.azt = phi i32 [ %.pre520, %bb.hn ], [ %i.azd, %bb.hm ]
  %i.azu = phi i32 [ %.pre519, %bb.hn ], [ %i.azo, %bb.hm ] ; 3 uses
  %i.azv = lshr i32 %i.azu, 3
  %i.azw = zext nneg i32 %i.azv to i64
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azs, i64 %i.azw
  %i.azy = load i32, ptr %i.azx, align 1, !tbaa !39
  %i.azz = call i32 @llvm.bswap.i32(i32 %i.azy)
  %i.baa = and i32 %i.azu, 7
  %i.bab = shl i32 %i.azz, %i.baa
  %i.bac = lshr i32 %i.bab, 24
  %i.bad = add i32 %i.azu, 8
  %i.bae = call i32 @llvm.umin.i32(i32 %i.azt, i32 %i.bad) ; 2 uses
  store i32 %i.bae, ptr %i.x, align 8, !tbaa !50
  %i.baf = zext i8 %i.azb to i32
  %.not216 = icmp eq i32 %i.bac, %i.baf
  br i1 %.not216, label %.thread303, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bag = load ptr, ptr %i.kl, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bag, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %indvars508) #8
  %.val.pre = load i32, ptr %i.x, align 8, !tbaa !50
  br label %.thread303

.thread303:                                       ; preds = %bb.hp, %bb.ho, %bb.hk
  %.val = phi i32 [ %.val.pre, %bb.hp ], [ %i.bae, %bb.ho ], [ %.val.pre522, %bb.hk ]
  %i.bah = load i16, ptr %i.kz, align 2, !tbaa !96
  %i.bai = zext i16 %i.bah to i32
  %i.baj = shl nuw nsw i32 %i.bai, 3
  %.not217 = icmp eq i32 %i.baj, %.val
  br i1 %.not217, label %read_restart_header.exit.thread, label %.loopexit

read_restart_header.exit.thread:                  ; preds = %bb.ch, %read_decoding_params.exit, %bb.ee, %bb.es, %bb.ea, %.critedge.i, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %.thread303, %bb.gk, %bb.gi
  %.pr306 = load i8, ptr %i.ky, align 16, !tbaa !80
  %.not218 = icmp eq i8 %.pr306, 0
  br i1 %.not218, label %.thread308, label %bb.hq

.thread308:                                       ; preds = %bb.dt, %bb.gb, %read_restart_header.exit.thread
  %i.bak = load ptr, ptr %i.kl, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bak, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %indvars508) #8
  br label %bb.hq

bb.hq:                                            ; preds = %.thread308, %read_restart_header.exit.thread
  %i.bal = load i16, ptr %i.kz, align 2, !tbaa !96
  %i.bam = zext i16 %i.bal to i64
  %i.ban = getelementptr inbounds nuw i8, ptr %.0170427, i64 %i.bam
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1
  %i.bao = load i8, ptr %i.ki, align 4, !tbaa !70 ; 2 uses
  %i.bap = zext i8 %i.bao to i64
  %.not196.not = icmp samesign ult i64 %indvars.iv506, %i.bap
  br i1 %.not196.not, label %bb.bw, label %bb.hr, !llvm.loop !141

bb.hr:                                            ; preds = %bb.hq
  %i.baq = zext i8 %i.bao to i32
  %i.bar = call fastcc i32 @output_data(ptr noundef nonnull %i.i, i32 noundef %i.baq, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.bas = icmp slt i32 %i.bar, 0
  br i1 %i.bas, label %.thread319, label %.preheader

.preheader:                                       ; preds = %bb.hr
  %i.bat = load i8, ptr %i.ki, align 4, !tbaa !70 ; 2 uses
  %i.bau = zext i8 %i.bat to i64                  ; 2 uses
  %i.bav = add nuw nsw i64 %i.bau, 1              ; 2 uses
  %i.baw = icmp eq i8 %i.bat, 0
  br i1 %i.baw, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.bav, 510
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hw, %.preheader.new
  %indvars.iv509 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next510.1, %bb.hw ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.hw ]
  %i.bax = getelementptr inbounds nuw [1680 x i8], ptr %i.kj, i64 %indvars.iv509 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 1 ; 2 uses
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !140
  %.not198 = icmp eq i8 %i.baz, 0
  br i1 %.not198, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 1676
  store i32 -1, ptr %i.bba, align 4, !tbaa !33
  store i8 0, ptr %i.bay, align 1, !tbaa !140
  store i8 0, ptr %i.gn, align 16, !tbaa !79
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.bbb = getelementptr inbounds nuw [1680 x i8], ptr %i.kj, i64 %indvars.iv509 ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 1681 ; 2 uses
  %i.bbd = load i8, ptr %i.bbc, align 1, !tbaa !140
end_hunk_0
