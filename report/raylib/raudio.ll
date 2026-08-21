inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@drmp3dec_decode_frame:bb.a
vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index656 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next658, %vec.epilog.vector.body ] ; 3 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bos, i64 %index656
  %wide.load657 = load <4 x i8>, ptr %i.bpg, align 2
  %i.bph = icmp eq <4 x i8> %wide.load657, zeroinitializer
  %i.bpi = select <4 x i1> %i.bph, <4 x i8> splat (i8 6), <4 x i8> splat (i8 2)
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bov, i64 %index656
  store <4 x i8> %i.bpi, ptr %i.bpj, align 2
  %index.next658 = add nuw i64 %index656, 4       ; 2 uses
  %i.bpk = icmp eq i64 %index.next658, %n.vec655
  br i1 %i.bpk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1078

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n659 = icmp eq i64 %n.vec655, %i.box
  br i1 %cmp.n659, label %.lr.ph.i81.i.preheader, label %.lr.ph101.i.split.us.preheader

.lr.ph101.i.split.us.preheader:                   ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv118.i.us.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec655, %vec.epilog.middle.block ]
  br label %.lr.ph101.i.split.us

.lr.ph101.i.split.us:                             ; preds = %.lr.ph101.i.split.us.preheader, %.lr.ph101.i.split.us
  %indvars.iv118.i.us = phi i64 [ %indvars.iv.next119.i.us, %.lr.ph101.i.split.us ], [ %indvars.iv118.i.us.ph, %.lr.ph101.i.split.us.preheader ] ; 3 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bos, i64 %indvars.iv118.i.us
  %i.bpm = load i8, ptr %i.bpl, align 1
  %.not.i171.us = icmp eq i8 %i.bpm, 0
  %spec.select332 = select i1 %.not.i171.us, i8 6, i8 2
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bov, i64 %indvars.iv118.i.us
  store i8 %spec.select332, ptr %i.bpn, align 1
  %indvars.iv.next119.i.us = add nuw nsw i64 %indvars.iv118.i.us, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next119.i.us, %i.box
  br i1 %exitcond413.not, label %.lr.ph.i81.i.preheader, label %.lr.ph101.i.split.us, !llvm.loop !1079

bb.ex:                                            ; preds = %bb.fd, %.lr.ph.i163
  %i.bpo = phi i32 [ %.promoted, %.lr.ph.i163 ], [ %.promoted310, %bb.fd ] ; 3 uses
  %indvars.iv.i165 = phi i64 [ 0, %.lr.ph.i163 ], [ %indvars.iv.next.i170, %bb.fd ] ; 4 uses
  %.04699.i = phi ptr [ @drmp3_L12_read_scale_info.g_bitalloc_code_tab, %.lr.ph.i163 ], [ %.1.i, %bb.fd ]
  %.04798.i = phi i32 [ 0, %.lr.ph.i163 ], [ %.148.i, %bb.fd ]
  %.04997.i = phi i32 [ 0, %.lr.ph.i163 ], [ %.150.i, %bb.fd ] ; 3 uses
  %.05395.i = phi ptr [ %.123.i.i, %.lr.ph.i163 ], [ %.154.i, %bb.fd ] ; 5 uses
  %i.bpp = zext i32 %.04997.i to i64
  %i.bpq = icmp eq i64 %indvars.iv.i165, %i.bpp
  br i1 %i.bpq, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05395.i, i64 2
  %i.bps = load i8, ptr %i.bpr, align 1
  %i.bpt = zext i8 %i.bps to i32
  %i.bpu = add nuw nsw i32 %.04997.i, %i.bpt
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05395.i, i64 1
  %i.bpw = load i8, ptr %i.bpv, align 1
  %i.bpx = zext i8 %i.bpw to i32
  %i.bpy = load i8, ptr %.05395.i, align 1
  %i.bpz = zext i8 %i.bpy to i64
  %i.bqa = getelementptr inbounds nuw i8, ptr @drmp3_L12_read_scale_info.g_bitalloc_code_tab, i64 %i.bpz
  %i.bqb = getelementptr inbounds nuw i8, ptr %.05395.i, i64 3
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.154.i = phi ptr [ %i.bqb, %bb.ey ], [ %.05395.i, %bb.ex ]
  %.150.i = phi i32 [ %i.bpu, %bb.ey ], [ %.04997.i, %bb.ex ]
  %.148.i = phi i32 [ %i.bpx, %bb.ey ], [ %.04798.i, %bb.ex ] ; 5 uses
  %.1.i = phi ptr [ %i.bqa, %bb.ey ], [ %.04699.i, %bb.ex ] ; 3 uses
  %i.bqc = add nsw i32 %i.bpo, %.148.i            ; 6 uses
  store i32 %i.bqc, ptr %i.mc, align 8
  %i.bqd = icmp sgt i32 %i.bqc, %i.me
  br i1 %i.bqd, label %drmp3_bs_get_bits.exit.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.bqe = ashr i32 %i.bpo, 3
  %i.bqf = sext i32 %i.bqe to i64
  %i.bqg = getelementptr inbounds i8, ptr %i.mb, i64 %i.bqf ; 2 uses
  %i.bqh = and i32 %i.bpo, 7                      ; 2 uses
  %i.bqi = add nuw nsw i32 %i.bqh, %.148.i        ; 3 uses
  %i.bqj = load i8, ptr %i.bqg, align 1
  %i.bqk = zext i8 %i.bqj to i32
  %i.bql = lshr i32 255, %i.bqh
  %i.bqm = and i32 %i.bql, %i.bqk                 ; 2 uses
  %i.bqn = icmp samesign ugt i32 %i.bqi, 8
  br i1 %i.bqn, label %.lr.ph.i.i182, label %._crit_edge.i.i166

.lr.ph.i.i182:                                    ; preds = %bb.fa, %.lr.ph.i.i182
  %.pn26.i.i = phi ptr [ %.0.i.i183, %.lr.ph.i.i182 ], [ %i.bqg, %bb.fa ]
  %.01825.i.i = phi i32 [ %i.bqo, %.lr.ph.i.i182 ], [ %i.bqi, %bb.fa ] ; 2 uses
  %.01924.i.i = phi i32 [ %i.bqq, %.lr.ph.i.i182 ], [ 0, %bb.fa ]
  %.02023.i.i = phi i32 [ %i.bqs, %.lr.ph.i.i182 ], [ %i.bqm, %bb.fa ]
  %.0.i.i183 = getelementptr inbounds nuw i8, ptr %.pn26.i.i, i64 1 ; 2 uses
  %i.bqo = add nsw i32 %.01825.i.i, -8            ; 3 uses
  %i.bqp = shl i32 %.02023.i.i, %i.bqo
  %i.bqq = or i32 %i.bqp, %.01924.i.i             ; 2 uses
  %i.bqr = load i8, ptr %.0.i.i183, align 1
  %i.bqs = zext i8 %i.bqr to i32                  ; 2 uses
  %i.bqt = icmp samesign ugt i32 %.01825.i.i, 16
  br i1 %i.bqt, label %.lr.ph.i.i182, label %._crit_edge.i.i166

._crit_edge.i.i166:                               ; preds = %.lr.ph.i.i182, %bb.fa
  %.020.lcssa.i.i = phi i32 [ %i.bqm, %bb.fa ], [ %i.bqs, %.lr.ph.i.i182 ]
  %.019.lcssa.i.i = phi i32 [ 0, %bb.fa ], [ %i.bqq, %.lr.ph.i.i182 ]
  %.018.lcssa.i.i = phi i32 [ %i.bqi, %bb.fa ], [ %i.bqo, %.lr.ph.i.i182 ]
  %i.bqu = sub nuw nsw i32 8, %.018.lcssa.i.i
  %i.bqv = lshr i32 %.020.lcssa.i.i, %i.bqu
  %i.bqw = or i32 %i.bqv, %.019.lcssa.i.i
  %i.bqx = zext i32 %i.bqw to i64
  br label %drmp3_bs_get_bits.exit.i

drmp3_bs_get_bits.exit.i:                         ; preds = %._crit_edge.i.i166, %bb.ez
  %.021.i.i167 = phi i64 [ %i.bqx, %._crit_edge.i.i166 ], [ 0, %bb.ez ]
  %i.bqy = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.021.i.i167
  %i.bqz = load i8, ptr %i.bqy, align 1           ; 2 uses
  %i.bra = shl nuw nsw i64 %indvars.iv.i165, 1
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bos, i64 %i.bra ; 2 uses
  store i8 %i.bqz, ptr %i.brb, align 2
  %i.brc = icmp samesign ult i64 %indvars.iv.i165, %i.bot
  br i1 %i.brc, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %drmp3_bs_get_bits.exit.i
  %i.brd = add nsw i32 %i.bqc, %.148.i            ; 3 uses
  store i32 %i.brd, ptr %i.mc, align 8
  %i.bre = icmp sgt i32 %i.brd, %i.me
  br i1 %i.bre, label %drmp3_bs_get_bits.exit68.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.brf = ashr i32 %i.bqc, 3
  %i.brg = sext i32 %i.brf to i64
  %i.brh = getelementptr inbounds i8, ptr %i.mb, i64 %i.brg ; 2 uses
  %i.bri = and i32 %i.bqc, 7                      ; 2 uses
  %i.brj = add nuw nsw i32 %i.bri, %.148.i        ; 3 uses
  %i.brk = load i8, ptr %i.brh, align 1
  %i.brl = zext i8 %i.brk to i32
  %i.brm = lshr i32 255, %i.bri
  %i.brn = and i32 %i.brm, %i.brl                 ; 2 uses
  %i.bro = icmp samesign ugt i32 %i.brj, 8
  br i1 %i.bro, label %.lr.ph.i62.i, label %._crit_edge.i57.i

.lr.ph.i62.i:                                     ; preds = %bb.fc, %.lr.ph.i62.i
  %.pn26.i63.i = phi ptr [ %.0.i67.i, %.lr.ph.i62.i ], [ %i.brh, %bb.fc ]
  %.01825.i64.i = phi i32 [ %i.brp, %.lr.ph.i62.i ], [ %i.brj, %bb.fc ] ; 2 uses
  %.01924.i65.i = phi i32 [ %i.brr, %.lr.ph.i62.i ], [ 0, %bb.fc ]
  %.02023.i66.i = phi i32 [ %i.brt, %.lr.ph.i62.i ], [ %i.brn, %bb.fc ]
  %.0.i67.i = getelementptr inbounds nuw i8, ptr %.pn26.i63.i, i64 1 ; 2 uses
  %i.brp = add nsw i32 %.01825.i64.i, -8          ; 3 uses
  %i.brq = shl i32 %.02023.i66.i, %i.brp
  %i.brr = or i32 %i.brq, %.01924.i65.i           ; 2 uses
  %i.brs = load i8, ptr %.0.i67.i, align 1
  %i.brt = zext i8 %i.brs to i32                  ; 2 uses
  %i.bru = icmp samesign ugt i32 %.01825.i64.i, 16
  br i1 %i.bru, label %.lr.ph.i62.i, label %._crit_edge.i57.i

._crit_edge.i57.i:                                ; preds = %.lr.ph.i62.i, %bb.fc
  %.020.lcssa.i58.i = phi i32 [ %i.brn, %bb.fc ], [ %i.brt, %.lr.ph.i62.i ]
  %.019.lcssa.i59.i = phi i32 [ 0, %bb.fc ], [ %i.brr, %.lr.ph.i62.i ]
  %.018.lcssa.i60.i = phi i32 [ %i.brj, %bb.fc ], [ %i.brp, %.lr.ph.i62.i ]
  %i.brv = sub nuw nsw i32 8, %.018.lcssa.i60.i
  %i.brw = lshr i32 %.020.lcssa.i58.i, %i.brv
  %i.brx = or i32 %i.brw, %.019.lcssa.i59.i
  %i.bry = zext i32 %i.brx to i64
  br label %drmp3_bs_get_bits.exit68.i

drmp3_bs_get_bits.exit68.i:                       ; preds = %._crit_edge.i57.i, %bb.fb
  %.021.i61.i = phi i64 [ %i.bry, %._crit_edge.i57.i ], [ 0, %bb.fb ]
  %i.brz = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.021.i61.i
  %i.bsa = load i8, ptr %i.brz, align 1
  br label %bb.fd

bb.fd:                                            ; preds = %drmp3_bs_get_bits.exit68.i, %drmp3_bs_get_bits.exit.i
  %.promoted310 = phi i32 [ %i.brd, %drmp3_bs_get_bits.exit68.i ], [ %i.bqc, %drmp3_bs_get_bits.exit.i ] ; 5 uses
  %.0.i168 = phi i8 [ %i.bsa, %drmp3_bs_get_bits.exit68.i ], [ %i.bqz, %drmp3_bs_get_bits.exit.i ]
  %narrow.i169 = select i1 %.not56.i, i8 0, i8 %.0.i168
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.brb, i64 1
  store i8 %narrow.i169, ptr %i.bsb, align 1
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i170, %i.bou
  br i1 %exitcond.not, label %.lr.ph101.i, label %bb.ex

.lr.ph101.i.split:                                ; preds = %.lr.ph101.i, %drmp3_bs_get_bits.exit80.i
  %i.bsc = phi i32 [ %i.bsx, %drmp3_bs_get_bits.exit80.i ], [ %.promoted310, %.lr.ph101.i ] ; 4 uses
  %indvars.iv118.i.a = phi i64 [ %indvars.iv.next119.i.a, %drmp3_bs_get_bits.exit80.i ], [ 0, %.lr.ph101.i ] ; 3 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bos, i64 %indvars.iv118.i.a
  %i.bse = load i8, ptr %i.bsd, align 1
  %.not.i171 = icmp eq i8 %i.bse, 0
  br i1 %.not.i171, label %drmp3_bs_get_bits.exit80.i, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph101.i.split
  %i.bsf = add nsw i32 %i.bsc, 2                  ; 3 uses
  %i.bsg = icmp sgt i32 %i.bsf, %i.me
  br i1 %i.bsg, label %drmp3_bs_get_bits.exit80.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bsh = ashr i32 %i.bsc, 3
  %i.bsi = sext i32 %i.bsh to i64
  %i.bsj = getelementptr inbounds i8, ptr %i.mb, i64 %i.bsi ; 2 uses
  %i.bsk = and i32 %i.bsc, 7                      ; 3 uses
  %i.bsl = add nuw nsw i32 %i.bsk, 2
  %i.bsm = load i8, ptr %i.bsj, align 1
  %i.bsn = zext i8 %i.bsm to i32
  %i.bso = lshr i32 255, %i.bsk
  %i.bsp = and i32 %i.bso, %i.bsn                 ; 2 uses
  %i.bsq = icmp eq i32 %i.bsk, 7
  br i1 %i.bsq, label %.lr.ph.i74.preheader.i, label %._crit_edge.i69.i

.lr.ph.i74.preheader.i:                           ; preds = %bb.ff
  %7 = shl nuw nsw i32 %i.bsp, 1
  %.0.i79.i = getelementptr inbounds nuw i8, ptr %i.bsj, i64 1
  %i.bsr = load i8, ptr %.0.i79.i, align 1
  %i.bss = zext i8 %i.bsr to i32
  br label %._crit_edge.i69.i

._crit_edge.i69.i:                                ; preds = %.lr.ph.i74.preheader.i, %bb.ff
  %.020.lcssa.i70.i = phi i32 [ %i.bsp, %bb.ff ], [ %i.bss, %.lr.ph.i74.preheader.i ]
  %.019.lcssa.i71.i = phi i32 [ 0, %bb.ff ], [ %7, %.lr.ph.i74.preheader.i ]
  %.018.lcssa.i72.i = phi i32 [ %i.bsl, %bb.ff ], [ 1, %.lr.ph.i74.preheader.i ]
  %i.bst = sub nuw nsw i32 8, %.018.lcssa.i72.i
  %i.bsu = lshr i32 %.020.lcssa.i70.i, %i.bst
  %i.bsv = or i32 %i.bsu, %.019.lcssa.i71.i
  %i.bsw = trunc i32 %i.bsv to i8
  br label %drmp3_bs_get_bits.exit80.i

drmp3_bs_get_bits.exit80.i:                       ; preds = %._crit_edge.i69.i, %bb.fe, %.lr.ph101.i.split
  %i.bsx = phi i32 [ %i.bsf, %bb.fe ], [ %i.bsc, %.lr.ph101.i.split ], [ %i.bsf, %._crit_edge.i69.i ] ; 2 uses
  %i.bsy = phi i8 [ 0, %bb.fe ], [ 6, %.lr.ph101.i.split ], [ %i.bsw, %._crit_edge.i69.i ]
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bov, i64 %indvars.iv118.i.a
  store i8 %i.bsy, ptr %i.bsz, align 1
  %indvars.iv.next119.i.a = add nuw nsw i64 %indvars.iv118.i.a, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next119.i.a, %i.box
  br i1 %exitcond412.not, label %.lr.ph.i81.i.preheader, label %.lr.ph101.i.split

.lr.ph.i81.i.preheader:                           ; preds = %drmp3_bs_get_bits.exit80.i, %.lr.ph101.i.split.us, %middle.block, %vec.epilog.middle.block
  %.ph = phi i32 [ %.promoted310, %.lr.ph101.i.split.us ], [ %.promoted310, %vec.epilog.middle.block ], [ %.promoted310, %middle.block ], [ %i.bsx, %drmp3_bs_get_bits.exit80.i ]
  br label %.lr.ph.i81.i

.lr.ph.i81.i:                                     ; preds = %.lr.ph.i81.i.preheader, %bb.fn
  %i.bta = phi i32 [ %.promoted323, %bb.fn ], [ %.ph, %.lr.ph.i81.i.preheader ] ; 5 uses
  %indvars.iv.i.i174 = phi i64 [ %indvars.iv.next.i.i175, %bb.fn ], [ 0, %.lr.ph.i81.i.preheader ] ; 2 uses
  %.030.i.i = phi ptr [ %i.btb, %bb.fn ], [ %i.bos, %.lr.ph.i81.i.preheader ] ; 2 uses
  %.01928.i.i = phi ptr [ %i.bwy, %bb.fn ], [ %6, %.lr.ph.i81.i.preheader ] ; 5 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 1
  %i.btc = load i8, ptr %.030.i.i, align 1        ; 2 uses
  %.not.i82.i = icmp eq i8 %i.btc, 0
  br i1 %.not.i82.i, label %.thread43.i.i, label %bb.fg

.thread43.i.i:                                    ; preds = %.lr.ph.i81.i
  store <2 x float> zeroinitializer, ptr %.01928.i.i, align 4
  br label %bb.fn

bb.fg:                                            ; preds = %.lr.ph.i81.i
  %i.btd = zext i8 %i.btc to i32
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bov, i64 %indvars.iv.i.i174
  %i.btf = load i8, ptr %i.bte, align 1
  %i.btg = zext nneg i8 %i.btf to i32
  %i.bth = lshr i32 19, %i.btg                    ; 2 uses
  %i.bti = mul nuw nsw i32 %i.btd, 3
  %i.btj = add nsw i32 %i.bti, -6                 ; 3 uses
  %i.btk = add nsw i32 %i.bta, 6                  ; 4 uses
  %i.btl = icmp sgt i32 %i.btk, %i.me
  br i1 %i.btl, label %drmp3_bs_get_bits.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.btm = ashr i32 %i.bta, 3
  %i.btn = sext i32 %i.btm to i64
  %i.bto = getelementptr inbounds i8, ptr %i.mb, i64 %i.btn ; 2 uses
  %i.btp = and i32 %i.bta, 7                      ; 4 uses
  %i.btq = add nuw nsw i32 %i.btp, 6
  %i.btr = load i8, ptr %i.bto, align 1
  %i.bts = zext i8 %i.btr to i32
  %i.btt = lshr i32 255, %i.btp
  %i.btu = and i32 %i.btt, %i.bts                 ; 2 uses
  %i.btv = icmp samesign ugt i32 %i.btp, 2
  br i1 %i.btv, label %.lr.ph.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.fh
  %i.btw = add nsw i32 %i.btp, -2                 ; 2 uses
  %i.btx = shl nuw nsw i32 %i.btu, %i.btw
  %.0.i.i.i180 = getelementptr inbounds nuw i8, ptr %i.bto, i64 1
  %i.bty = load i8, ptr %.0.i.i.i180, align 1
  %i.btz = zext i8 %i.bty to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.preheader.i.i, %bb.fh
  %.020.lcssa.i.i.i = phi i32 [ %i.btu, %bb.fh ], [ %i.btz, %.lr.ph.i.preheader.i.i ]
  %.019.lcssa.i.i.i = phi i32 [ 0, %bb.fh ], [ %i.btx, %.lr.ph.i.preheader.i.i ]
  %.018.lcssa.i.i.i = phi i32 [ %i.btq, %bb.fh ], [ %i.btw, %.lr.ph.i.preheader.i.i ]
  %i.bua = sub nuw nsw i32 8, %.018.lcssa.i.i.i
  %i.bub = lshr i32 %.020.lcssa.i.i.i, %i.bua
  %i.buc = or i32 %i.bub, %.019.lcssa.i.i.i
  %i.bud = trunc nuw nsw i32 %i.buc to i16
  br label %drmp3_bs_get_bits.exit.i.i

drmp3_bs_get_bits.exit.i.i:                       ; preds = %._crit_edge.i.i.i, %bb.fg
  %.021.i.i.i = phi i16 [ %i.bud, %._crit_edge.i.i.i ], [ 0, %bb.fg ] ; 2 uses
  %i.bue = urem i16 %.021.i.i.i, 3
  %.zext53.i.i = zext nneg i16 %i.bue to i32
  %i.buf = add nsw i32 %i.btj, %.zext53.i.i
  %i.bug = sext i32 %i.buf to i64
  %i.buh = getelementptr inbounds [4 x i8], ptr @drmp3_L12_read_scalefactors.g_deq_L12, i64 %i.bug
  %i.bui = load float, ptr %i.buh, align 4
  %i.buj = udiv i16 %.021.i.i.i, 3
  %.zext55.i.i = zext nneg i16 %i.buj to i32
  %i.buk = lshr i32 2097152, %.zext55.i.i
  %i.bul = uitofp nneg i32 %i.buk to float
  %i.bum = fmul float %i.bui, %i.bul              ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 4
  store float %i.bum, ptr %.01928.i.i, align 4
  %i.buo = and i32 %i.bth, 2
  %.not22.1.i.i = icmp eq i32 %i.buo, 0
  br i1 %.not22.1.i.i, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %drmp3_bs_get_bits.exit.i.i
  %i.bup = add nsw i32 %i.bta, 12                 ; 2 uses
  %i.buq = icmp sgt i32 %i.bup, %i.me
  br i1 %i.buq, label %drmp3_bs_get_bits.exit.1.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bur = ashr i32 %i.btk, 3
  %i.bus = sext i32 %i.bur to i64
  %i.but = getelementptr inbounds i8, ptr %i.mb, i64 %i.bus ; 2 uses
  %i.buu = and i32 %i.btk, 7                      ; 4 uses
  %i.buv = add nuw nsw i32 %i.buu, 6
  %i.buw = load i8, ptr %i.but, align 1
  %i.bux = zext i8 %i.buw to i32
  %i.buy = lshr i32 255, %i.buu
  %i.buz = and i32 %i.buy, %i.bux                 ; 2 uses
  %i.bva = icmp samesign ugt i32 %i.buu, 2
  br i1 %i.bva, label %.lr.ph.i.preheader.1.i.i, label %._crit_edge.i.1.i.i

.lr.ph.i.preheader.1.i.i:                         ; preds = %bb.fj
  %i.bvb = add nsw i32 %i.buu, -2                 ; 2 uses
  %i.bvc = shl nuw nsw i32 %i.buz, %i.bvb
  %.0.i.1.i.i179 = getelementptr inbounds nuw i8, ptr %i.but, i64 1
  %i.bvd = load i8, ptr %.0.i.1.i.i179, align 1
  %i.bve = zext i8 %i.bvd to i32
  br label %._crit_edge.i.1.i.i

._crit_edge.i.1.i.i:                              ; preds = %.lr.ph.i.preheader.1.i.i, %bb.fj
  %.020.lcssa.i.1.i.i = phi i32 [ %i.buz, %bb.fj ], [ %i.bve, %.lr.ph.i.preheader.1.i.i ]
  %.019.lcssa.i.1.i.i = phi i32 [ 0, %bb.fj ], [ %i.bvc, %.lr.ph.i.preheader.1.i.i ]
  %.018.lcssa.i.1.i.i = phi i32 [ %i.buv, %bb.fj ], [ %i.bvb, %.lr.ph.i.preheader.1.i.i ]
  %i.bvf = sub nuw nsw i32 8, %.018.lcssa.i.1.i.i
  %i.bvg = lshr i32 %.020.lcssa.i.1.i.i, %i.bvf
  %i.bvh = or i32 %i.bvg, %.019.lcssa.i.1.i.i
  %i.bvi = trunc nuw nsw i32 %i.bvh to i16
  br label %drmp3_bs_get_bits.exit.1.i.i

drmp3_bs_get_bits.exit.1.i.i:                     ; preds = %._crit_edge.i.1.i.i, %bb.fi
  %.021.i.1.i.i = phi i16 [ %i.bvi, %._crit_edge.i.1.i.i ], [ 0, %bb.fi ] ; 2 uses
  %i.bvj = urem i16 %.021.i.1.i.i, 3
  %.zext49.i.i = zext nneg i16 %i.bvj to i32
  %i.bvk = add nsw i32 %i.btj, %.zext49.i.i
  %i.bvl = sext i32 %i.bvk to i64
  %i.bvm = getelementptr inbounds [4 x i8], ptr @drmp3_L12_read_scalefactors.g_deq_L12, i64 %i.bvl
  %i.bvn = load float, ptr %i.bvm, align 4
  %i.bvo = udiv i16 %.021.i.1.i.i, 3
  %.zext51.i.i = zext nneg i16 %i.bvo to i32
  %i.bvp = lshr i32 2097152, %.zext51.i.i
  %i.bvq = uitofp nneg i32 %i.bvp to float
  %i.bvr = fmul float %i.bvn, %i.bvq
  br label %bb.fk

bb.fk:                                            ; preds = %drmp3_bs_get_bits.exit.1.i.i, %drmp3_bs_get_bits.exit.i.i
  %i.bvs = phi i32 [ %i.bup, %drmp3_bs_get_bits.exit.1.i.i ], [ %i.btk, %drmp3_bs_get_bits.exit.i.i ] ; 4 uses
  %.1.1.i.i = phi float [ %i.bvr, %drmp3_bs_get_bits.exit.1.i.i ], [ %i.bum, %drmp3_bs_get_bits.exit.i.i ] ; 2 uses
  store float %.1.1.i.i, ptr %i.bun, align 4
  %i.bvt = and i32 %i.bth, 1
  %.not22.2.i.i = icmp eq i32 %i.bvt, 0
  br i1 %.not22.2.i.i, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bvu = add nsw i32 %i.bvs, 6                  ; 2 uses
  %i.bvv = icmp sgt i32 %i.bvu, %i.me
  br i1 %i.bvv, label %drmp3_bs_get_bits.exit.2.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.bvw = ashr i32 %i.bvs, 3
  %i.bvx = sext i32 %i.bvw to i64
  %i.bvy = getelementptr inbounds i8, ptr %i.mb, i64 %i.bvx ; 2 uses
  %i.bvz = and i32 %i.bvs, 7                      ; 4 uses
  %i.bwa = add nuw nsw i32 %i.bvz, 6
  %i.bwb = load i8, ptr %i.bvy, align 1
  %i.bwc = zext i8 %i.bwb to i32
  %i.bwd = lshr i32 255, %i.bvz
  %i.bwe = and i32 %i.bwd, %i.bwc                 ; 2 uses
  %i.bwf = icmp samesign ugt i32 %i.bvz, 2
  br i1 %i.bwf, label %.lr.ph.i.preheader.2.i.i, label %._crit_edge.i.2.i.i

.lr.ph.i.preheader.2.i.i:                         ; preds = %bb.fm
  %i.bwg = add nsw i32 %i.bvz, -2                 ; 2 uses
  %i.bwh = shl nuw nsw i32 %i.bwe, %i.bwg
  %.0.i.2.i.i = getelementptr inbounds nuw i8, ptr %i.bvy, i64 1
  %i.bwi = load i8, ptr %.0.i.2.i.i, align 1
  %i.bwj = zext i8 %i.bwi to i32
  br label %._crit_edge.i.2.i.i

._crit_edge.i.2.i.i:                              ; preds = %.lr.ph.i.preheader.2.i.i, %bb.fm
  %.020.lcssa.i.2.i.i = phi i32 [ %i.bwe, %bb.fm ], [ %i.bwj, %.lr.ph.i.preheader.2.i.i ]
  %.019.lcssa.i.2.i.i = phi i32 [ 0, %bb.fm ], [ %i.bwh, %.lr.ph.i.preheader.2.i.i ]
  %.018.lcssa.i.2.i.i = phi i32 [ %i.bwa, %bb.fm ], [ %i.bwg, %.lr.ph.i.preheader.2.i.i ]
  %i.bwk = sub nuw nsw i32 8, %.018.lcssa.i.2.i.i
  %i.bwl = lshr i32 %.020.lcssa.i.2.i.i, %i.bwk
  %i.bwm = or i32 %i.bwl, %.019.lcssa.i.2.i.i
  %i.bwn = trunc nuw nsw i32 %i.bwm to i16
  br label %drmp3_bs_get_bits.exit.2.i.i

drmp3_bs_get_bits.exit.2.i.i:                     ; preds = %._crit_edge.i.2.i.i, %bb.fl
  %.021.i.2.i.i = phi i16 [ %i.bwn, %._crit_edge.i.2.i.i ], [ 0, %bb.fl ] ; 2 uses
end_hunk_0
begin_hunk_1_@drmp3_L3_read_side_info:bb.a
  %i.dw = add nsw i32 %i.di, -4
  %i.dx = shl i32 %i.du, %i.dw
  %i.dy = or i32 %i.dx, %i.ds
  %i.dz = load i8, ptr %.0.i142.1, align 1
  %i.ea = zext i8 %i.dz to i32
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %.lr.ph.i137.1, %.lr.ph.i137
  %.01825.i139.lcssa = phi i32 [ %i.dq, %.lr.ph.i137 ], [ %i.dr, %.lr.ph.i137.1 ]
  %.lcssa484.a = phi i32 [ %i.ds, %.lr.ph.i137 ], [ %i.dy, %.lr.ph.i137.1 ]
  %.lcssa = phi i32 [ %i.du, %.lr.ph.i137 ], [ %i.ea, %.lr.ph.i137.1 ]
  %i.eb = sub nuw nsw i32 16, %.01825.i139.lcssa
  %i.ec = lshr i32 %.lcssa, %i.eb
  %i.ed = or i32 %i.ec, %.lcssa484.a
  br label %drmp3_bs_get_bits.exit143

drmp3_bs_get_bits.exit143:                        ; preds = %bb.e, %._crit_edge.i132
  %.021.i136 = phi i32 [ %i.ed, %._crit_edge.i132 ], [ 0, %bb.e ] ; 2 uses
  %i.ee = trunc i32 %.021.i136 to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %.099, i64 8
  store i16 %i.ee, ptr %i.ef, align 8
  %i.eg = and i32 %.021.i136, 65535
  %i.eh = add nuw nsw i32 %i.eg, %.093            ; 2 uses
  %i.ei = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.ej = load ptr, ptr %0, align 8
  %i.ek = add nsw i32 %i.ei, 9                    ; 2 uses
  store i32 %i.ek, ptr %i.cu, align 8
  %i.el = load i32, ptr %i.cv, align 4
  %i.em = icmp sgt i32 %i.ek, %i.el
  br i1 %i.em, label %drmp3_bs_get_bits.exit155.thread, label %.lr.ph.i149

drmp3_bs_get_bits.exit155.thread:                 ; preds = %drmp3_bs_get_bits.exit143
  %i.en = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 0, ptr %i.en, align 2
  br label %bb.f

.lr.ph.i149:                                      ; preds = %drmp3_bs_get_bits.exit143
  %i.eo = ashr i32 %i.ei, 3
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ej, i64 %i.ep ; 2 uses
  %i.er = and i32 %i.ei, 7                        ; 3 uses
  %i.es = load i8, ptr %i.eq, align 1
  %i.et = zext i8 %i.es to i32
  %i.eu = lshr i32 255, %i.er
  %i.ev = and i32 %i.eu, %i.et
  %i.ew = add nuw nsw i32 %i.er, 1
  %i.ex = shl nuw nsw i32 %i.ev, %i.ew
  %.0.i154 = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ey = load i8, ptr %.0.i154, align 1
  %i.ez = zext i8 %i.ey to i32
  %i.fa = xor i32 %i.er, 7
  %i.fb = lshr i32 %i.ez, %i.fa
  %i.fc = or i32 %i.fb, %i.ex                     ; 2 uses
  %i.fd = trunc nuw i32 %i.fc to i16
  %i.fe = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 %i.fd, ptr %i.fe, align 2
  %i.ff = icmp samesign ugt i32 %i.fc, 288
  br i1 %i.ff, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %drmp3_bs_get_bits.exit155.thread, %.lr.ph.i149
  %i.fg = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.fh = load ptr, ptr %0, align 8
  %i.fi = add nsw i32 %i.fg, 8                    ; 2 uses
  store i32 %i.fi, ptr %i.cu, align 8
  %i.fj = load i32, ptr %i.cv, align 4
  %i.fk = icmp sgt i32 %i.fi, %i.fj
  br i1 %i.fk, label %drmp3_bs_get_bits.exit167, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fl = ashr i32 %i.fg, 3
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fh, i64 %i.fm ; 2 uses
  %i.fo = and i32 %i.fg, 7                        ; 4 uses
  %i.fp = load i8, ptr %i.fn, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = lshr i32 255, %i.fo
  %i.fs = and i32 %i.fr, %i.fq                    ; 2 uses
  %.not341 = icmp eq i32 %i.fo, 0
  br i1 %.not341, label %._crit_edge.i156, label %._crit_edge.i156.loopexit

._crit_edge.i156.loopexit:                        ; preds = %bb.g
  %i.ft = shl nuw nsw i32 %i.fs, %i.fo
  %.0.i166.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %.pre = load i8, ptr %.0.i166.phi.trans.insert, align 1
  %i.fu = zext i8 %.pre to i32
  %i.fv = sub nuw nsw i32 8, %i.fo
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %._crit_edge.i156.loopexit, %bb.g
  %.020.lcssa.i157 = phi i32 [ %i.fs, %bb.g ], [ %i.fu, %._crit_edge.i156.loopexit ]
  %.019.lcssa.i158 = phi i32 [ 0, %bb.g ], [ %i.ft, %._crit_edge.i156.loopexit ]
  %.018.lcssa.i159 = phi i32 [ 0, %bb.g ], [ %i.fv, %._crit_edge.i156.loopexit ]
  %i.fw = lshr i32 %.020.lcssa.i157, %.018.lcssa.i159
  %i.fx = or i32 %i.fw, %.019.lcssa.i158
  %i.fy = trunc i32 %i.fx to i8
  br label %drmp3_bs_get_bits.exit167

drmp3_bs_get_bits.exit167:                        ; preds = %bb.f, %._crit_edge.i156
  %.021.i160 = phi i8 [ %i.fy, %._crit_edge.i156 ], [ 0, %bb.f ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.099, i64 14
  store i8 %.021.i160, ptr %i.fz, align 2
  %i.ga = load i8, ptr %i.j, align 1
  %i.gb = and i8 %i.ga, 8
  %.not101 = icmp eq i8 %i.gb, 0
  %i.gc = select i1 %.not101, i32 9, i32 4        ; 2 uses
  %i.gd = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.ge = load ptr, ptr %0, align 8
  %i.gf = add nsw i32 %i.gc, %i.gd                ; 2 uses
  store i32 %i.gf, ptr %i.cu, align 8
  %i.gg = load i32, ptr %i.cv, align 4
  %i.gh = icmp sgt i32 %i.gf, %i.gg
  br i1 %i.gh, label %drmp3_bs_get_bits.exit179, label %bb.h

bb.h:                                             ; preds = %drmp3_bs_get_bits.exit167
  %i.gi = ashr i32 %i.gd, 3
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.ge, i64 %i.gj ; 2 uses
  %i.gl = and i32 %i.gd, 7                        ; 2 uses
  %i.gm = add nuw nsw i32 %i.gc, %i.gl            ; 3 uses
  %i.gn = load i8, ptr %i.gk, align 1
  %i.go = zext i8 %i.gn to i32
  %i.gp = lshr i32 255, %i.gl
  %i.gq = and i32 %i.gp, %i.go                    ; 2 uses
  %i.gr = icmp samesign ugt i32 %i.gm, 8
  br i1 %i.gr, label %._crit_edge.i168.loopexit, label %._crit_edge.i168

._crit_edge.i168.loopexit:                        ; preds = %bb.h
  %.0.i178 = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gs = load i8, ptr %.0.i178, align 1
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nsw i32 %i.gm, -8                   ; 2 uses
  %i.gv = shl nuw nsw i32 %i.gq, %i.gu
  br label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %._crit_edge.i168.loopexit, %bb.h
  %.020.lcssa.i169 = phi i32 [ %i.gq, %bb.h ], [ %i.gt, %._crit_edge.i168.loopexit ]
  %.019.lcssa.i170 = phi i32 [ 0, %bb.h ], [ %i.gv, %._crit_edge.i168.loopexit ]
  %.018.lcssa.i171 = phi i32 [ %i.gm, %bb.h ], [ %i.gu, %._crit_edge.i168.loopexit ]
  %i.gw = sub nuw nsw i32 8, %.018.lcssa.i171
  %i.gx = lshr i32 %.020.lcssa.i169, %i.gw
  %i.gy = or i32 %i.gx, %.019.lcssa.i170
  %i.gz = trunc nuw i32 %i.gy to i16
  br label %drmp3_bs_get_bits.exit179

drmp3_bs_get_bits.exit179:                        ; preds = %drmp3_bs_get_bits.exit167, %._crit_edge.i168
  %.021.i172 = phi i16 [ %i.gz, %._crit_edge.i168 ], [ 0, %drmp3_bs_get_bits.exit167 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.099, i64 12 ; 2 uses
  store i16 %.021.i172, ptr %i.ha, align 4
  store ptr %i.cx, ptr %.099, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %.099, i64 17 ; 2 uses
  store i8 22, ptr %i.hb, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.099, i64 18 ; 2 uses
  store i8 0, ptr %i.hc, align 2
  %i.hd = load i32, ptr %i.cu, align 8            ; 5 uses
  %i.he = load ptr, ptr %0, align 8               ; 2 uses
  %i.hf = add nsw i32 %i.hd, 1                    ; 3 uses
  store i32 %i.hf, ptr %i.cu, align 8
  %i.hg = load i32, ptr %i.cv, align 4            ; 2 uses
  %.not342 = icmp slt i32 %i.hd, %i.hg
  br i1 %.not342, label %drmp3_bs_get_bits.exit191, label %drmp3_bs_get_bits.exit191.thread

drmp3_bs_get_bits.exit191:                        ; preds = %drmp3_bs_get_bits.exit179
  %i.hh = ashr i32 %i.hd, 3
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds i8, ptr %i.he, i64 %i.hi
  %i.hk = and i32 %i.hd, 7                        ; 2 uses
  %i.hl = load i8, ptr %i.hj, align 1
  %i.hm = zext i8 %i.hl to i32
  %i.hn = lshr i32 255, %i.hk
  %i.ho = and i32 %i.hn, %i.hm
  %i.hp = xor i32 %i.hk, 7
  %i.hq = lshr i32 %i.ho, %i.hp
  %.not102 = icmp eq i32 %i.hq, 0
  br i1 %.not102, label %drmp3_bs_get_bits.exit191.thread, label %bb.i

bb.i:                                             ; preds = %drmp3_bs_get_bits.exit191
  %i.hr = add nsw i32 %i.hd, 3                    ; 2 uses
  store i32 %i.hr, ptr %i.cu, align 8
  %i.hs = icmp sgt i32 %i.hr, %i.hg
  br i1 %i.hs, label %drmp3_bs_get_bits.exit203.thread, label %bb.j

drmp3_bs_get_bits.exit203.thread:                 ; preds = %bb.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.099, i64 15
  store i8 0, ptr %i.ht, align 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.hu = ashr i32 %i.hf, 3
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %i.he, i64 %i.hv ; 2 uses
  %i.hx = and i32 %i.hf, 7                        ; 3 uses
  %i.hy = add nuw nsw i32 %i.hx, 2
  %i.hz = load i8, ptr %i.hw, align 1
  %i.ia = zext i8 %i.hz to i32
  %i.ib = lshr i32 255, %i.hx
  %i.ic = and i32 %i.ib, %i.ia                    ; 2 uses
  %i.id = icmp eq i32 %i.hx, 7
  br i1 %i.id, label %.lr.ph.i197.preheader, label %drmp3_bs_get_bits.exit203

.lr.ph.i197.preheader:                            ; preds = %bb.j
  %3 = shl nuw nsw i32 %i.ic, 1
  %.0.i202 = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.ie = load i8, ptr %.0.i202, align 1
  %i.if = zext i8 %i.ie to i32
  br label %drmp3_bs_get_bits.exit203

drmp3_bs_get_bits.exit203:                        ; preds = %.lr.ph.i197.preheader, %bb.j
  %.020.lcssa.i193 = phi i32 [ %i.ic, %bb.j ], [ %i.if, %.lr.ph.i197.preheader ]
  %.019.lcssa.i194 = phi i32 [ 0, %bb.j ], [ %3, %.lr.ph.i197.preheader ]
  %.018.lcssa.i195 = phi i32 [ %i.hy, %bb.j ], [ 1, %.lr.ph.i197.preheader ]
  %i.ig = sub nuw nsw i32 8, %.018.lcssa.i195
  %i.ih = lshr i32 %.020.lcssa.i193, %i.ig
  %i.ii = or i32 %i.ih, %.019.lcssa.i194
  %i.ij = trunc i32 %i.ii to i8                   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.099, i64 15 ; 2 uses
  store i8 %i.ij, ptr %i.ik, align 1
  %.not103 = icmp eq i8 %i.ij, 0
  br i1 %.not103, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %drmp3_bs_get_bits.exit203
  %i.il = load i32, ptr %i.cu, align 8            ; 4 uses
  %i.im = load ptr, ptr %0, align 8
  %i.in = add nsw i32 %i.il, 1
  store i32 %i.in, ptr %i.cu, align 8
  %i.io = load i32, ptr %i.cv, align 4
  %.not343 = icmp slt i32 %i.il, %i.io
  br i1 %.not343, label %._crit_edge.i204, label %drmp3_bs_get_bits.exit215

._crit_edge.i204:                                 ; preds = %bb.k
  %i.ip = ashr i32 %i.il, 3
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %i.im, i64 %i.iq
  %i.is = and i32 %i.il, 7                        ; 2 uses
  %i.it = load i8, ptr %i.ir, align 1
  %i.iu = zext i8 %i.it to i32
  %i.iv = lshr i32 255, %i.is
  %i.iw = and i32 %i.iv, %i.iu
  %i.ix = xor i32 %i.is, 7
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = trunc nuw i32 %i.iy to i8
  br label %drmp3_bs_get_bits.exit215

drmp3_bs_get_bits.exit215:                        ; preds = %bb.k, %._crit_edge.i204
  %.021.i208 = phi i8 [ %i.iz, %._crit_edge.i204 ], [ 0, %bb.k ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.099, i64 16
  store i8 %.021.i208, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %.099, i64 22 ; 2 uses
  store i8 7, ptr %i.jb, align 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.099, i64 23
  store i8 -1, ptr %i.jc, align 1
  %i.jd = load i8, ptr %i.ik, align 1
  %i.je = icmp eq i8 %i.jd, 2
  br i1 %i.je, label %bb.l, label %bb.o

bb.l:                                             ; preds = %drmp3_bs_get_bits.exit215
  %i.jf = and i32 %spec.select, 3855
  %.not104 = icmp eq i8 %.021.i208, 0
  br i1 %.not104, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 8, ptr %i.jb, align 2
  store ptr %i.cz, ptr %.099, align 8
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  store ptr %i.cy, ptr %.099, align 8
  %i.jg = load i8, ptr %i.j, align 1
  %i.jh = and i8 %i.jg, 8
  %.not105 = icmp eq i8 %i.jh, 0
  %i.ji = select i1 %.not105, i8 6, i8 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.m
  %.sink469 = phi i8 [ 0, %bb.m ], [ %i.ji, %bb.n ]
  %.sink = phi i8 [ 39, %bb.m ], [ 30, %bb.n ]
  store i8 %.sink469, ptr %i.hb, align 1
  store i8 %.sink, ptr %i.hc, align 2
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %drmp3_bs_get_bits.exit215
  %.3 = phi i32 [ %spec.select, %drmp3_bs_get_bits.exit215 ], [ %i.jf, %.sink.split ]
  %i.jj = load i32, ptr %i.cu, align 8            ; 4 uses
  %i.jk = load ptr, ptr %0, align 8               ; 2 uses
  %i.jl = add nsw i32 %i.jj, 10                   ; 4 uses
  store i32 %i.jl, ptr %i.cu, align 8
  %i.jm = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.jn = icmp sgt i32 %i.jl, %i.jm
  br i1 %i.jn, label %drmp3_bs_get_bits.exit227, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.o
  %i.jo = and i32 %i.jj, 7                        ; 5 uses
  %i.jp = lshr i32 255, %i.jo
  %i.jq = ashr i32 %i.jj, 3
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.jk, i64 %i.jr ; 3 uses
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i32
  %i.jv = and i32 %i.jp, %i.ju
  %i.jw = add nuw nsw i32 %i.jo, 10
  %.0.i226 = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jx = add nuw nsw i32 %i.jo, 2                ; 2 uses
  %i.jy = shl nuw nsw i32 %i.jv, %i.jx            ; 2 uses
  %i.jz = load i8, ptr %.0.i226, align 1
  %i.ka = zext i8 %i.jz to i32                    ; 2 uses
  %i.kb = icmp eq i32 %i.jo, 7
  br i1 %i.kb, label %.lr.ph.i221.1, label %._crit_edge.i216

.lr.ph.i221.1:                                    ; preds = %.lr.ph.i221
  %.0.i226.1 = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.kc = add nsw i32 %i.jo, -6
  %i.kd = shl nuw nsw i32 %i.ka, %i.kc
  %i.ke = or disjoint i32 %i.kd, %i.jy
  %i.kf = load i8, ptr %.0.i226.1, align 1
  %i.kg = zext i8 %i.kf to i32
  br label %._crit_edge.i216

._crit_edge.i216:                                 ; preds = %.lr.ph.i221.1, %.lr.ph.i221
  %.01825.i223.lcssa = phi i32 [ %i.jw, %.lr.ph.i221 ], [ %i.jx, %.lr.ph.i221.1 ]
  %.lcssa486 = phi i32 [ %i.jy, %.lr.ph.i221 ], [ %i.ke, %.lr.ph.i221.1 ]
  %.lcssa485.a = phi i32 [ %i.ka, %.lr.ph.i221 ], [ %i.kg, %.lr.ph.i221.1 ]
  %i.kh = sub nuw nsw i32 16, %.01825.i223.lcssa
  %i.ki = lshr i32 %.lcssa485.a, %i.kh
  %i.kj = or i32 %i.ki, %.lcssa486
  %i.kk = shl i32 %i.kj, 5
  br label %drmp3_bs_get_bits.exit227

drmp3_bs_get_bits.exit227:                        ; preds = %bb.o, %._crit_edge.i216
  %.021.i220 = phi i32 [ %i.kk, %._crit_edge.i216 ], [ 0, %bb.o ]
  %i.kl = add nsw i32 %i.jj, 13                   ; 2 uses
  store i32 %i.kl, ptr %i.cu, align 8
  %i.km = icmp sgt i32 %i.kl, %i.jm
  br i1 %i.km, label %drmp3_bs_get_bits.exit239, label %bb.p

bb.p:                                             ; preds = %drmp3_bs_get_bits.exit227
  %i.kn = ashr i32 %i.jl, 3
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds i8, ptr %i.jk, i64 %i.ko ; 2 uses
  %i.kq = and i32 %i.jl, 7                        ; 5 uses
  %i.kr = add nuw nsw i32 %i.kq, 3
  %i.ks = load i8, ptr %i.kp, align 1
  %i.kt = zext i8 %i.ks to i32
  %i.ku = lshr i32 255, %i.kq
  %i.kv = and i32 %i.ku, %i.kt                    ; 2 uses
  %i.kw = icmp samesign ugt i32 %i.kq, 5
  br i1 %i.kw, label %.lr.ph.i233.preheader, label %._crit_edge.i228

.lr.ph.i233.preheader:                            ; preds = %bb.p
  %i.kx = add nsw i32 %i.kq, -5
  %i.ky = shl nuw nsw i32 %i.kv, %i.kx
  %.0.i238 = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  %i.kz = load i8, ptr %.0.i238, align 1
  %i.la = zext i8 %i.kz to i32
  %i.lb = add nsw i32 %i.kq, -5
  br label %._crit_edge.i228

._crit_edge.i228:                                 ; preds = %.lr.ph.i233.preheader, %bb.p
  %.020.lcssa.i229 = phi i32 [ %i.kv, %bb.p ], [ %i.la, %.lr.ph.i233.preheader ]
  %.019.lcssa.i230 = phi i32 [ 0, %bb.p ], [ %i.ky, %.lr.ph.i233.preheader ]
  %.018.lcssa.i231 = phi i32 [ %i.kr, %bb.p ], [ %i.lb, %.lr.ph.i233.preheader ]
  %i.lc = sub nuw nsw i32 8, %.018.lcssa.i231
  %i.ld = lshr i32 %.020.lcssa.i229, %i.lc
  %i.le = or i32 %i.ld, %.019.lcssa.i230
  %i.lf = trunc i32 %i.le to i8
  br label %drmp3_bs_get_bits.exit239

drmp3_bs_get_bits.exit239:                        ; preds = %drmp3_bs_get_bits.exit227, %._crit_edge.i228
  %.021.i232 = phi i8 [ %i.lf, %._crit_edge.i228 ], [ 0, %drmp3_bs_get_bits.exit227 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.099, i64 25
  store i8 %.021.i232, ptr %i.lg, align 1
  %i.lh = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.li = load ptr, ptr %0, align 8
  %i.lj = add nsw i32 %i.lh, 3                    ; 2 uses
  store i32 %i.lj, ptr %i.cu, align 8
  %i.lk = load i32, ptr %i.cv, align 4
  %i.ll = icmp sgt i32 %i.lj, %i.lk
  br i1 %i.ll, label %drmp3_bs_get_bits.exit251, label %bb.q

bb.q:                                             ; preds = %drmp3_bs_get_bits.exit239
  %i.lm = ashr i32 %i.lh, 3
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr %i.li, i64 %i.ln ; 2 uses
  %i.lp = and i32 %i.lh, 7                        ; 5 uses
  %i.lq = add nuw nsw i32 %i.lp, 3
  %i.lr = load i8, ptr %i.lo, align 1
  %i.ls = zext i8 %i.lr to i32
  %i.lt = lshr i32 255, %i.lp
  %i.lu = and i32 %i.lt, %i.ls                    ; 2 uses
  %i.lv = icmp samesign ugt i32 %i.lp, 5
  br i1 %i.lv, label %.lr.ph.i245.preheader, label %._crit_edge.i240

.lr.ph.i245.preheader:                            ; preds = %bb.q
  %i.lw = add nsw i32 %i.lp, -5
  %i.lx = shl nuw nsw i32 %i.lu, %i.lw
  %.0.i250 = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.ly = load i8, ptr %.0.i250, align 1
  %i.lz = zext i8 %i.ly to i32
  %i.ma = add nsw i32 %i.lp, -5
  br label %._crit_edge.i240

._crit_edge.i240:                                 ; preds = %.lr.ph.i245.preheader, %bb.q
  %.020.lcssa.i241 = phi i32 [ %i.lu, %bb.q ], [ %i.lz, %.lr.ph.i245.preheader ]
  %.019.lcssa.i242 = phi i32 [ 0, %bb.q ], [ %i.lx, %.lr.ph.i245.preheader ]
end_hunk_1
