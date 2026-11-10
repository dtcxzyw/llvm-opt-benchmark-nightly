Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvenc?download=true
inline.NumInlined: 50
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@dv_encode_video_segment:bb.a
  br i1 %.not.i580, label %.preheader.i581, label %.backedge2409

.preheader.i581:                                  ; preds = %bb.rx, %bb.sd
  %.1120181.i = phi i32 [ %i.hgt, %bb.sd ], [ 2, %bb.rx ] ; 3 uses
  %i.hfo = sub nsw i32 0, %.1120181.i
  br label %bb.ry

bb.ry:                                            ; preds = %._crit_edge173.i, %.preheader.i581
  %.3179.i = phi ptr [ %2, %.preheader.i581 ], [ %i.hgs, %._crit_edge173.i ] ; 4 uses
  %.1124178.i = phi i32 [ 0, %.preheader.i581 ], [ %i.hgr, %._crit_edge173.i ]
  %.lcssa164176177.i = phi i32 [ 120, %.preheader.i581 ], [ %.lcssa164.i, %._crit_edge173.i ] ; 2 uses
  %i.hfp = getelementptr inbounds nuw i8, ptr %.3179.i, i64 32
  %i.hfq = load i32, ptr %i.hfp, align 4, !tbaa !51 ; 2 uses
  %i.hfr = getelementptr inbounds nuw i8, ptr %.3179.i, i64 192 ; 4 uses
  %i.hfs = sext i32 %i.hfq to i64
  %.1122.in.in165.i = getelementptr inbounds i8, ptr %i.hfr, i64 %i.hfs
  %.1122.in166.i = load i8, ptr %.1122.in.in165.i, align 1, !tbaa !48 ; 2 uses
  %i.hft = icmp ult i8 %.1122.in166.i, 64
  br i1 %i.hft, label %.lr.ph172.i, label %._crit_edge173.i

.lr.ph172.i:                                      ; preds = %bb.ry
  %i.hfu = getelementptr inbounds nuw i8, ptr %.3179.i, i64 64
  br label %bb.rz

bb.rz:                                            ; preds = %bb.sc, %.lr.ph172.i
  %.1122.in169.i = phi i8 [ %.1122.in166.i, %.lr.ph172.i ], [ %.1122.in.i, %bb.sc ] ; 2 uses
  %.2117168.i = phi i32 [ %i.hfq, %.lr.ph172.i ], [ %.3118.i, %bb.sc ] ; 3 uses
  %i.hfv = phi i32 [ %.lcssa164176177.i, %.lr.ph172.i ], [ %i.hgp, %bb.sc ] ; 2 uses
  %i.hfw = zext nneg i8 %.1122.in169.i to i64     ; 3 uses
  %i.hfx = getelementptr inbounds nuw [2 x i8], ptr %i.hfu, i64 %i.hfw
  %i.hfy = load i16, ptr %i.hfx, align 2, !tbaa !115 ; 2 uses
  %i.hfz = sext i16 %i.hfy to i32                 ; 2 uses
  %i.hga = icmp sgt i32 %.1120181.i, %i.hfz
  %i.hgb = icmp sgt i32 %i.hfz, %i.hfo
  %or.cond138.i = select i1 %i.hga, i1 %i.hgb, i1 false
  br i1 %or.cond138.i, label %bb.sa, label %bb.sb

bb.sa:                                            ; preds = %bb.rz
  %i.hgc = getelementptr inbounds nuw i8, ptr %i.hfr, i64 %i.hfw
  %i.hgd = load i8, ptr %i.hgc, align 1, !tbaa !48 ; 2 uses
  %i.hge = sext i32 %.2117168.i to i64
  %i.hgf = getelementptr inbounds i8, ptr %i.hfr, i64 %i.hge
  store i8 %i.hgd, ptr %i.hgf, align 1, !tbaa !48
  br label %bb.sc

bb.sb:                                            ; preds = %bb.rz
  %.1122170.i = zext nneg i8 %.1122.in169.i to i32 ; 2 uses
  %i.hgg = xor i32 %.2117168.i, -1
  %i.hgh = add i32 %.1122170.i, %i.hgg
  %i.hgi = sext i32 %i.hgh to i64
  %i.hgj = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.hgi
  %i.hgk = sext i16 %i.hfy to i64
  %i.hgl = getelementptr inbounds [8 x i8], ptr %i.hgj, i64 %i.hgk
  %i.hgm = getelementptr inbounds nuw i8, ptr %i.hgl, i64 4
  %i.hgn = load i32, ptr %i.hgm, align 4, !tbaa !53
  %i.hgo = add nsw i32 %i.hgn, %i.hfv
  %.1122.in.in.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hfr, i64 %i.hfw
  %.1122.in.pre.i = load i8, ptr %.1122.in.in.phi.trans.insert.i, align 1, !tbaa !48
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa
  %.1122.in.i = phi i8 [ %i.hgd, %bb.sa ], [ %.1122.in.pre.i, %bb.sb ] ; 2 uses
  %i.hgp = phi i32 [ %i.hfv, %bb.sa ], [ %i.hgo, %bb.sb ] ; 2 uses
  %.3118.i = phi i32 [ %.2117168.i, %bb.sa ], [ %.1122170.i, %bb.sb ]
  %i.hgq = icmp ult i8 %.1122.in.i, 64
  br i1 %i.hgq, label %bb.rz, label %._crit_edge173.i, !llvm.loop !101

._crit_edge173.i:                                 ; preds = %bb.sc, %bb.ry
  %.lcssa164.i = phi i32 [ %.lcssa164176177.i, %bb.ry ], [ %i.hgp, %bb.sc ] ; 2 uses
  %i.hgr = add nuw nsw i32 %.1124178.i, 1         ; 2 uses
  %i.hgs = getelementptr inbounds nuw i8, ptr %.3179.i, i64 460
  %exitcond204.not.i = icmp eq i32 %i.hgr, 30
  br i1 %exitcond204.not.i, label %bb.sd, label %bb.ry, !llvm.loop !102

bb.sd:                                            ; preds = %._crit_edge173.i
  %i.hgt = shl nsw i32 %.1120181.i, 1
  %i.hgu = icmp sgt i32 %.lcssa164.i, 2680
  br i1 %i.hgu, label %.preheader.i581, label %dv_guess_qnos.exit, !llvm.loop !103

dv_guess_qnos.exit:                               ; preds = %bb.rv, %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.se

bb.se:                                            ; preds = %bb.ri, %dv_guess_qnos.exit, %dv_guess_qnos_hd.exit
  %i.hgv = load ptr, ptr %i.w, align 8, !tbaa !38 ; 2 uses
  %i.hgw = getelementptr inbounds nuw i8, ptr %i.hgv, i64 60
  %i.hgx = load i32, ptr %i.hgw, align 4, !tbaa !125
  %i.hgy = icmp sgt i32 %i.hgx, 0
  br i1 %i.hgy, label %.lr.ph1008, label %._crit_edge1018

.loopexit:                                        ; preds = %dv_encode_ac.exit315, %.lr.ph1008, %._crit_edge
  %.1202.lcssa2026 = phi ptr [ %i.hhx, %._crit_edge ], [ %i.hhi, %.lr.ph1008 ], [ %i.hhx, %dv_encode_ac.exit315 ]
  %.2207.lcssa2025 = phi i32 [ %i.hlz, %._crit_edge ], [ %.12061004, %.lr.ph1008 ], [ %i.hlz, %dv_encode_ac.exit315 ] ; 2 uses
  %i.hgz = phi i32 [ %i.hlw, %._crit_edge ], [ %i.hhl, %.lr.ph1008 ], [ %i.hph, %dv_encode_ac.exit315 ] ; 2 uses
  %i.hha = phi ptr [ %i.hlu, %._crit_edge ], [ %i.hhj, %.lr.ph1008 ], [ %i.hpf, %dv_encode_ac.exit315 ]
  %i.hhb = mul nsw i32 %i.hgz, 5                  ; 2 uses
  %i.hhc = icmp slt i32 %.2207.lcssa2025, %i.hhb
  br i1 %i.hhc, label %.lr.ph1008, label %.preheader678, !llvm.loop !104

.preheader678:                                    ; preds = %.loopexit
  %i.hhd = icmp sgt i32 %i.hgz, 0
  br i1 %i.hhd, label %.lr.ph1011, label %._crit_edge1018

.lr.ph1008:                                       ; preds = %bb.se, %.loopexit
  %.01911006 = phi ptr [ %i.hhe, %.loopexit ], [ %i.q, %bb.se ] ; 2 uses
  %.02011005 = phi ptr [ %.1202.lcssa2026, %.loopexit ], [ %i.gdr, %bb.se ] ; 2 uses
  %.12061004 = phi i32 [ %.2207.lcssa2025, %.loopexit ], [ 0, %bb.se ] ; 3 uses
  %i.hhe = getelementptr inbounds nuw i8, ptr %.01911006, i64 4
  %i.hhf = load i32, ptr %.01911006, align 4, !tbaa !51
  %i.hhg = trunc i32 %i.hhf to i8
  %i.hhh = getelementptr inbounds nuw i8, ptr %.02011005, i64 3
  store i8 %i.hhg, ptr %i.hhh, align 1, !tbaa !48
  %i.hhi = getelementptr inbounds nuw i8, ptr %.02011005, i64 4 ; 2 uses
  %i.hhj = load ptr, ptr %i.w, align 8, !tbaa !38 ; 3 uses
  %i.hhk = getelementptr inbounds nuw i8, ptr %i.hhj, i64 60
  %i.hhl = load i32, ptr %i.hhk, align 4, !tbaa !125 ; 2 uses
  %i.hhm = icmp sgt i32 %i.hhl, 0
  br i1 %i.hhm, label %put_sbits.exit.preheader, label %.loopexit

put_sbits.exit.preheader:                         ; preds = %.lr.ph1008
  %i.hhn = sext i32 %.12061004 to i64             ; 3 uses
  br label %put_sbits.exit

put_sbits.exit:                                   ; preds = %put_sbits.exit.preheader, %dv_encode_ac.exit324
  %indvars.iv1610 = phi i64 [ 0, %put_sbits.exit.preheader ], [ %indvars.iv.next1611, %dv_encode_ac.exit324 ] ; 3 uses
  %indvars.iv1608 = phi i64 [ %i.hhn, %put_sbits.exit.preheader ], [ %indvars.iv.next1609, %dv_encode_ac.exit324 ] ; 3 uses
  %i.hho = phi ptr [ %i.hhj, %put_sbits.exit.preheader ], [ %i.hlu, %dv_encode_ac.exit324 ] ; 2 uses
  %.1202997 = phi ptr [ %i.hhi, %put_sbits.exit.preheader ], [ %i.hhx, %dv_encode_ac.exit324 ] ; 3 uses
  %i.hhp = getelementptr inbounds nuw i8, ptr %i.hho, i64 64
  %i.hhq = load ptr, ptr %i.hhp, align 8, !tbaa !126
  %i.hhr = getelementptr inbounds nuw i8, ptr %i.hhq, i64 %indvars.iv1610
  %i.hhs = load i8, ptr %i.hhr, align 1, !tbaa !48
  %i.hht = lshr i8 %i.hhs, 3
  %i.hhu = getelementptr inbounds [32 x i8], ptr %3, i64 %indvars.iv1608 ; 6 uses
  %i.hhv = getelementptr inbounds nuw i8, ptr %i.hhu, i64 8
  store ptr %.1202997, ptr %i.hhv, align 8, !tbaa !128
  %i.hhw = zext nneg i8 %i.hht to i64
  %i.hhx = getelementptr inbounds nuw i8, ptr %.1202997, i64 %i.hhw ; 4 uses
  %i.hhy = getelementptr inbounds nuw i8, ptr %i.hhu, i64 24
  store ptr %i.hhx, ptr %i.hhy, align 8, !tbaa !129
  %i.hhz = getelementptr inbounds nuw i8, ptr %i.hhu, i64 16
  store ptr %.1202997, ptr %i.hhz, align 16, !tbaa !130
  %i.hia = getelementptr inbounds nuw i8, ptr %i.hhu, i64 4
  %i.hib = getelementptr inbounds [460 x i8], ptr %2, i64 %indvars.iv1608 ; 8 uses
  %i.hic = getelementptr inbounds nuw i8, ptr %i.hib, i64 64 ; 2 uses
  %i.hid = load i16, ptr %i.hic, align 4, !tbaa !115
  %i.hie = lshr i16 %i.hid, 3
  %narrow = add nuw nsw i16 %i.hie, 1026
  %i.hif = getelementptr inbounds nuw i8, ptr %i.hho, i64 4
  %i.hig = load i32, ptr %i.hif, align 4, !tbaa !49
  %i.hih = and i32 %i.hig, 16
  %i.hii = icmp ne i32 %i.hih, 0
  %i.hij = icmp ne i64 %indvars.iv1610, 0
  %or.cond9 = and i1 %i.hij, %i.hii
  br i1 %or.cond9, label %put_bits.exit, label %bb.sf

bb.sf:                                            ; preds = %put_sbits.exit
  %i.hik = getelementptr inbounds nuw i8, ptr %i.hib, i64 60
  %i.hil = load i32, ptr %i.hik, align 4, !tbaa !118
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.sf, %put_sbits.exit
  %i.him = phi i32 [ %i.hil, %bb.sf ], [ 1, %put_sbits.exit ]
  %i.hin = lshr i16 %narrow, 1
  %i.hio = and i16 %i.hin, 1022
  %i.hip = zext nneg i16 %i.hio to i32
  %i.hiq = or i32 %i.him, %i.hip
  %i.hir = getelementptr inbounds nuw i8, ptr %i.hib, i64 56
  %i.his = load i32, ptr %i.hir, align 4, !tbaa !123
  %i.hit = shl i32 %i.hiq, 2
  %i.hiu = or i32 %i.his, %i.hit
  store i32 %i.hiu, ptr %i.hhu, align 16, !tbaa !131
  store i32 20, ptr %i.hia, align 4, !tbaa !132
  %indvars.iv.next1609 = add nsw i64 %indvars.iv1608, 1 ; 3 uses
  %i.hiv = getelementptr inbounds [32 x i8], ptr %3, i64 %indvars.iv.next1609
  %i.hiw = getelementptr inbounds nuw i8, ptr %i.hib, i64 320 ; 3 uses
  %i.hix = load i8, ptr %i.hiw, align 4, !tbaa !119
  %i.hiy = zext i8 %i.hix to i32
  %i.hiz = getelementptr inbounds nuw i8, ptr %i.hib, i64 324 ; 3 uses
  %i.hja = load i32, ptr %i.hiz, align 4, !tbaa !120
  store i32 0, ptr %i.hiz, align 4, !tbaa !120
  store i8 0, ptr %i.hiw, align 4, !tbaa !119
  %i.hjb = getelementptr inbounds nuw i8, ptr %i.hib, i64 52 ; 2 uses
  %i.hjc = getelementptr inbounds nuw i8, ptr %i.hib, i64 192
  %i.hjd = getelementptr inbounds nuw i8, ptr %i.hib, i64 256
  br label %.outer2368

.outer2368:                                       ; preds = %put_bits.exit, %bb.so
  %.1652.ph = phi i32 [ %i.hja, %put_bits.exit ], [ %.3654, %bb.so ]
  %.137.i318.ph = phi ptr [ %i.hhu, %put_bits.exit ], [ %i.hkh, %bb.so ] ; 8 uses
  %.1.i319.ph = phi i32 [ %i.hiy, %put_bits.exit ], [ %.2.i322, %bb.so ]
  %i.hje = getelementptr inbounds nuw i8, ptr %.137.i318.ph, i64 24
  %i.hjf = getelementptr inbounds nuw i8, ptr %.137.i318.ph, i64 16 ; 5 uses
  %i.hjg = getelementptr inbounds nuw i8, ptr %.137.i318.ph, i64 4 ; 3 uses
  br label %bb.sg

bb.sg:                                            ; preds = %.backedge2369, %.outer2368
  %.1652 = phi i32 [ %.1652.ph, %.outer2368 ], [ %.1652.be, %.backedge2369 ] ; 6 uses
  %.1.i319 = phi i32 [ %.1.i319.ph, %.outer2368 ], [ %.1.i319.be, %.backedge2369 ] ; 8 uses
  %i.hjh = load ptr, ptr %i.hje, align 8, !tbaa !129
  %i.hji = load ptr, ptr %i.hjf, align 8, !tbaa !130 ; 3 uses
  %i.hjj = ptrtoint ptr %i.hjh to i64
  %i.hjk = ptrtoint ptr %i.hji to i64
  %i.hjl = sub i64 %i.hjj, %i.hjk                 ; 3 uses
  %i.hjm = load i32, ptr %i.hjg, align 4, !tbaa !132 ; 11 uses
  %.tr.i = trunc i64 %i.hjl to i32
  %i.hjn = shl i32 %.tr.i, 3
  %i.hjo = add i32 %i.hjm, -32
  %i.hjp = add i32 %i.hjo, %i.hjn                 ; 7 uses
  %i.hjq = icmp sgt i32 %.1.i319, %i.hjp
  br i1 %i.hjq, label %bb.sh, label %bb.sq

bb.sh:                                            ; preds = %bb.sg
  %.not.i321 = icmp eq i32 %i.hjp, 0
  br i1 %.not.i321, label %bb.so, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.hjr = sub nsw i32 %.1.i319, %i.hjp           ; 3 uses
  %i.hjs = lshr i32 %.1652, %i.hjr                ; 3 uses
  %i.hjt = load i32, ptr %.137.i318.ph, align 8, !tbaa !131 ; 2 uses
  %i.hju = icmp slt i32 %i.hjp, %i.hjm
  br i1 %i.hju, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  %i.hjv = shl i32 %i.hjt, %i.hjp
  %i.hjw = or i32 %i.hjv, %i.hjs
  br label %put_bits.exit591

bb.sk:                                            ; preds = %bb.si
  %i.hjx = icmp ugt i64 %i.hjl, 3
  br i1 %i.hjx, label %bb.sl, label %bb.sm

bb.sl:                                            ; preds = %bb.sk
  %i.hjy = shl i32 %i.hjt, %i.hjm
  %i.hjz = sub nsw i32 %i.hjp, %i.hjm
  %i.hka = lshr i32 %i.hjs, %i.hjz
  %i.hkb = or i32 %i.hjy, %i.hka
  %i.hkc = call i32 @llvm.bswap.i32(i32 %i.hkb)
  store i32 %i.hkc, ptr %i.hji, align 1, !tbaa !48
  %i.hkd = load ptr, ptr %i.hjf, align 8, !tbaa !130
  %i.hke = getelementptr inbounds nuw i8, ptr %i.hkd, i64 4
  store ptr %i.hke, ptr %i.hjf, align 8, !tbaa !130
  br label %bb.sn

bb.sm:                                            ; preds = %bb.sk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #9
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %reass.sub.i588 = add i32 %i.hjm, 32
  br label %put_bits.exit591

put_bits.exit591:                                 ; preds = %bb.sj, %bb.sn
  %.026.i.i589 = phi i32 [ %i.hjw, %bb.sj ], [ %i.hjs, %bb.sn ]
  %.pn1022 = phi i32 [ %i.hjm, %bb.sj ], [ %reass.sub.i588, %bb.sn ]
  %.0.i.i590 = sub i32 %.pn1022, %i.hjp
  store i32 %.026.i.i589, ptr %.137.i318.ph, align 8, !tbaa !131
  store i32 %.0.i.i590, ptr %i.hjg, align 4, !tbaa !132
  %notmask.i = shl nsw i32 -1, %i.hjr
  %i.hkf = xor i32 %notmask.i, -1
  %i.hkg = and i32 %.1652, %i.hkf
  br label %bb.so

bb.so:                                            ; preds = %put_bits.exit591, %bb.sh
  %.3654 = phi i32 [ %.1652, %bb.sh ], [ %i.hkg, %put_bits.exit591 ] ; 2 uses
  %.2.i322 = phi i32 [ %.1.i319, %bb.sh ], [ %i.hjr, %put_bits.exit591 ] ; 2 uses
  %i.hkh = getelementptr inbounds nuw i8, ptr %.137.i318.ph, i64 32 ; 2 uses
  %.not43.i323 = icmp ult ptr %i.hkh, %i.hiv
  br i1 %.not43.i323, label %.outer2368, label %bb.sp, !llvm.loop !105

bb.sp:                                            ; preds = %bb.so
  %i.hki = trunc i32 %.2.i322 to i8
  store i8 %i.hki, ptr %i.hiw, align 4, !tbaa !119
  store i32 %.3654, ptr %i.hiz, align 4, !tbaa !120
  br label %dv_encode_ac.exit324

bb.sq:                                            ; preds = %bb.sg
  %i.hkj = load i32, ptr %.137.i318.ph, align 8, !tbaa !131 ; 2 uses
  %i.hkk = icmp slt i32 %.1.i319, %i.hjm
  br i1 %i.hkk, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %bb.sq
  %i.hkl = shl i32 %i.hkj, %.1.i319
  %i.hkm = or i32 %i.hkl, %.1652
  %i.hkn = sub nsw i32 %i.hjm, %.1.i319
  br label %put_bits.exit595

bb.ss:                                            ; preds = %bb.sq
  %i.hko = icmp ugt i64 %i.hjl, 3
  br i1 %i.hko, label %bb.st, label %bb.su

bb.st:                                            ; preds = %bb.ss
  %i.hkp = shl i32 %i.hkj, %i.hjm
  %i.hkq = sub nsw i32 %.1.i319, %i.hjm
  %i.hkr = lshr i32 %.1652, %i.hkq
  %i.hks = or i32 %i.hkp, %i.hkr
  %i.hkt = call i32 @llvm.bswap.i32(i32 %i.hks)
  store i32 %i.hkt, ptr %i.hji, align 1, !tbaa !48
  %i.hku = load ptr, ptr %i.hjf, align 8, !tbaa !130
  %i.hkv = getelementptr inbounds nuw i8, ptr %i.hku, i64 4
  store ptr %i.hkv, ptr %i.hjf, align 8, !tbaa !130
  br label %bb.sv

bb.su:                                            ; preds = %bb.ss
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #9
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.st
  %reass.sub = sub i32 %i.hjm, %.1.i319
  %i.hkw = add i32 %reass.sub, 32
  br label %put_bits.exit595

put_bits.exit595:                                 ; preds = %bb.sr, %bb.sv
  %.026.i.i593 = phi i32 [ %i.hkm, %bb.sr ], [ %.1652, %bb.sv ]
  %.0.i.i594 = phi i32 [ %i.hkn, %bb.sr ], [ %i.hkw, %bb.sv ]
  store i32 %.026.i.i593, ptr %.137.i318.ph, align 8, !tbaa !131
  store i32 %.0.i.i594, ptr %i.hjg, align 4, !tbaa !132
  %i.hkx = load i32, ptr %i.hjb, align 4, !tbaa !121 ; 3 uses
  %i.hky = icmp sgt i32 %i.hkx, 63
  br i1 %i.hky, label %dv_encode_ac.exit324, label %bb.sw

bb.sw:                                            ; preds = %put_bits.exit595
  %i.hkz = sext i32 %i.hkx to i64
  %i.hla = getelementptr inbounds i8, ptr %i.hjc, i64 %i.hkz
  %i.hlb = load i8, ptr %i.hla, align 1, !tbaa !48 ; 3 uses
  %i.hlc = zext i8 %i.hlb to i32                  ; 2 uses
  store i32 %i.hlc, ptr %i.hjb, align 4, !tbaa !121
  %i.hld = icmp ult i8 %i.hlb, 64
  br i1 %i.hld, label %bb.sx, label %.backedge2369

.backedge2369:                                    ; preds = %bb.sw, %bb.sx
  %.1652.be = phi i32 [ %i.hlr, %bb.sx ], [ 6, %bb.sw ]
  %.1.i319.be = phi i32 [ %i.hlt, %bb.sx ], [ 4, %bb.sw ]
  br label %bb.sg

bb.sx:                                            ; preds = %bb.sw
  %i.hle = xor i32 %i.hkx, -1
  %i.hlf = add i32 %i.hlc, %i.hle
  %i.hlg = zext nneg i8 %i.hlb to i64             ; 2 uses
  %i.hlh = getelementptr inbounds nuw [2 x i8], ptr %i.hic, i64 %i.hlg
  %i.hli = load i16, ptr %i.hlh, align 2, !tbaa !115
  %i.hlj = getelementptr inbounds nuw i8, ptr %i.hjd, i64 %i.hlg
  %i.hlk = load i8, ptr %i.hlj, align 1, !tbaa !48
  %i.hll = zext i8 %i.hlk to i32
  %i.hlm = sext i32 %i.hlf to i64
  %i.hln = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.hlm
  %i.hlo = sext i16 %i.hli to i64
  %i.hlp = getelementptr inbounds [8 x i8], ptr %i.hln, i64 %i.hlo ; 2 uses
  %i.hlq = load i32, ptr %i.hlp, align 8, !tbaa !54
  %i.hlr = or i32 %i.hlq, %i.hll
  %i.hls = getelementptr inbounds nuw i8, ptr %i.hlp, i64 4
  %i.hlt = load i32, ptr %i.hls, align 4, !tbaa !53
  br label %.backedge2369

dv_encode_ac.exit324:                             ; preds = %put_bits.exit595, %bb.sp
  %indvars.iv.next1611 = add nuw nsw i64 %indvars.iv1610, 1 ; 2 uses
  %i.hlu = load ptr, ptr %i.w, align 8, !tbaa !38 ; 3 uses
  %i.hlv = getelementptr inbounds nuw i8, ptr %i.hlu, i64 60
  %i.hlw = load i32, ptr %i.hlv, align 4, !tbaa !125 ; 4 uses
  %i.hlx = sext i32 %i.hlw to i64
  %i.hly = icmp slt i64 %indvars.iv.next1611, %i.hlx
  br i1 %i.hly, label %put_sbits.exit, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %dv_encode_ac.exit324
  %i.hlz = trunc nsw i64 %indvars.iv.next1609 to i32 ; 2 uses
  %i.hma = icmp sgt i32 %i.hlw, 0
  br i1 %i.hma, label %.lr.ph1003.preheader, label %.loopexit

.lr.ph1003.preheader:                             ; preds = %._crit_edge
  %i.hmb = getelementptr inbounds [32 x i8], ptr %3, i64 %i.hhn
  %invariant.gep = getelementptr [460 x i8], ptr %2, i64 %i.hhn
  br label %.lr.ph1003

.lr.ph1003:                                       ; preds = %.lr.ph1003.preheader, %dv_encode_ac.exit315
  %indvars.iv1615 = phi i64 [ 0, %.lr.ph1003.preheader ], [ %indvars.iv.next1616, %dv_encode_ac.exit315 ] ; 2 uses
  %i.hmc = phi i32 [ %i.hlw, %.lr.ph1003.preheader ], [ %i.hph, %dv_encode_ac.exit315 ]
  %.01971001 = phi ptr [ %i.hmb, %.lr.ph1003.preheader ], [ %.1198, %dv_encode_ac.exit315 ] ; 2 uses
  %gep = getelementptr [460 x i8], ptr %invariant.gep, i64 %indvars.iv1615 ; 6 uses
  %i.hmd = getelementptr inbounds nuw i8, ptr %gep, i64 320 ; 3 uses
  %i.hme = load i8, ptr %i.hmd, align 4, !tbaa !119 ; 2 uses
  %.not220 = icmp eq i8 %i.hme, 0
  br i1 %.not220, label %dv_encode_ac.exit315, label %bb.sy

bb.sy:                                            ; preds = %.lr.ph1003
  %i.hmf = add nsw i32 %i.hmc, %.12061004
  %i.hmg = sext i32 %i.hmf to i64
  %i.hmh = getelementptr inbounds [32 x i8], ptr %3, i64 %i.hmg
  %i.hmi = zext i8 %i.hme to i32
  %i.hmj = getelementptr inbounds nuw i8, ptr %gep, i64 324 ; 3 uses
  %i.hmk = load i32, ptr %i.hmj, align 4, !tbaa !120
  store i32 0, ptr %i.hmj, align 4, !tbaa !120
  store i8 0, ptr %i.hmd, align 4, !tbaa !119
  %i.hml = getelementptr inbounds nuw i8, ptr %gep, i64 52 ; 2 uses
  %i.hmm = getelementptr inbounds nuw i8, ptr %gep, i64 192
  %i.hmn = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.hmo = getelementptr inbounds nuw i8, ptr %gep, i64 256
  br label %.outer2366

.outer2366:                                       ; preds = %bb.sy, %bb.th
  %.1648.ph = phi i32 [ %i.hmk, %bb.sy ], [ %.3650, %bb.th ]
  %.137.i309.ph = phi ptr [ %.01971001, %bb.sy ], [ %i.hns, %bb.th ] ; 10 uses
  %.1.i310.ph = phi i32 [ %i.hmi, %bb.sy ], [ %.2.i313, %bb.th ]
  %i.hmp = getelementptr inbounds nuw i8, ptr %.137.i309.ph, i64 24
  %i.hmq = getelementptr inbounds nuw i8, ptr %.137.i309.ph, i64 16 ; 5 uses
  %i.hmr = getelementptr inbounds nuw i8, ptr %.137.i309.ph, i64 4 ; 3 uses
  br label %bb.sz

bb.sz:                                            ; preds = %.backedge2367, %.outer2366
  %.1648 = phi i32 [ %.1648.ph, %.outer2366 ], [ %.1648.be, %.backedge2367 ] ; 6 uses
  %.1.i310 = phi i32 [ %.1.i310.ph, %.outer2366 ], [ %.1.i310.be, %.backedge2367 ] ; 8 uses
  %i.hms = load ptr, ptr %i.hmp, align 8, !tbaa !129
  %i.hmt = load ptr, ptr %i.hmq, align 8, !tbaa !130 ; 3 uses
  %i.hmu = ptrtoint ptr %i.hms to i64
  %i.hmv = ptrtoint ptr %i.hmt to i64
  %i.hmw = sub i64 %i.hmu, %i.hmv                 ; 3 uses
  %i.hmx = load i32, ptr %i.hmr, align 4, !tbaa !132 ; 11 uses
  %.tr.i596 = trunc i64 %i.hmw to i32
  %i.hmy = shl i32 %.tr.i596, 3
  %i.hmz = add i32 %i.hmx, -32
  %i.hna = add i32 %i.hmz, %i.hmy                 ; 7 uses
  %i.hnb = icmp sgt i32 %.1.i310, %i.hna
  br i1 %i.hnb, label %bb.ta, label %bb.tj

bb.ta:                                            ; preds = %bb.sz
  %.not.i312 = icmp eq i32 %i.hna, 0
  br i1 %.not.i312, label %bb.th, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.hnc = sub nsw i32 %.1.i310, %i.hna           ; 3 uses
  %i.hnd = lshr i32 %.1648, %i.hnc                ; 3 uses
  %i.hne = load i32, ptr %.137.i309.ph, align 8, !tbaa !131 ; 2 uses
  %i.hnf = icmp slt i32 %i.hna, %i.hmx
  br i1 %i.hnf, label %bb.tc, label %bb.td

bb.tc:                                            ; preds = %bb.tb
  %i.hng = shl i32 %i.hne, %i.hna
  %i.hnh = or i32 %i.hng, %i.hnd
  br label %put_bits.exit600

bb.td:                                            ; preds = %bb.tb
  %i.hni = icmp ugt i64 %i.hmw, 3
  br i1 %i.hni, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %bb.td
  %i.hnj = shl i32 %i.hne, %i.hmx
  %i.hnk = sub nsw i32 %i.hna, %i.hmx
  %i.hnl = lshr i32 %i.hnd, %i.hnk
  %i.hnm = or i32 %i.hnj, %i.hnl
  %i.hnn = call i32 @llvm.bswap.i32(i32 %i.hnm)
  store i32 %i.hnn, ptr %i.hmt, align 1, !tbaa !48
  %i.hno = load ptr, ptr %i.hmq, align 8, !tbaa !130
  %i.hnp = getelementptr inbounds nuw i8, ptr %i.hno, i64 4
  store ptr %i.hnp, ptr %i.hmq, align 8, !tbaa !130
  br label %bb.tg

bb.tf:                                            ; preds = %bb.td
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #9
  br label %bb.tg

bb.tg:                                            ; preds = %bb.tf, %bb.te
  %reass.sub.i597 = add i32 %i.hmx, 32
  br label %put_bits.exit600

put_bits.exit600:                                 ; preds = %bb.tc, %bb.tg
  %.026.i.i598 = phi i32 [ %i.hnh, %bb.tc ], [ %i.hnd, %bb.tg ]
  %.pn1024 = phi i32 [ %i.hmx, %bb.tc ], [ %reass.sub.i597, %bb.tg ]
  %.0.i.i599 = sub i32 %.pn1024, %i.hna
  store i32 %.026.i.i598, ptr %.137.i309.ph, align 8, !tbaa !131
  store i32 %.0.i.i599, ptr %i.hmr, align 4, !tbaa !132
  %notmask.i509 = shl nsw i32 -1, %i.hnc
  %i.hnq = xor i32 %notmask.i509, -1
  %i.hnr = and i32 %.1648, %i.hnq
  br label %bb.th

bb.th:                                            ; preds = %put_bits.exit600, %bb.ta
  %.3650 = phi i32 [ %.1648, %bb.ta ], [ %i.hnr, %put_bits.exit600 ] ; 2 uses
  %.2.i313 = phi i32 [ %.1.i310, %bb.ta ], [ %i.hnc, %put_bits.exit600 ] ; 2 uses
  %i.hns = getelementptr inbounds nuw i8, ptr %.137.i309.ph, i64 32 ; 2 uses
  %.not43.i314 = icmp ult ptr %i.hns, %i.hmh
  br i1 %.not43.i314, label %.outer2366, label %bb.ti, !llvm.loop !105

bb.ti:                                            ; preds = %bb.th
  %i.hnt = trunc i32 %.2.i313 to i8
  store i8 %i.hnt, ptr %i.hmd, align 4, !tbaa !119
  store i32 %.3650, ptr %i.hmj, align 4, !tbaa !120
  br label %dv_encode_ac.exit315

bb.tj:                                            ; preds = %bb.sz
  %i.hnu = load i32, ptr %.137.i309.ph, align 8, !tbaa !131 ; 2 uses
  %i.hnv = icmp slt i32 %.1.i310, %i.hmx
  br i1 %i.hnv, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  %i.hnw = shl i32 %i.hnu, %.1.i310
  %i.hnx = or i32 %i.hnw, %.1648
  %i.hny = sub nsw i32 %i.hmx, %.1.i310
  br label %put_bits.exit604

bb.tl:                                            ; preds = %bb.tj
  %i.hnz = icmp ugt i64 %i.hmw, 3
  br i1 %i.hnz, label %bb.tm, label %bb.tn

bb.tm:                                            ; preds = %bb.tl
  %i.hoa = shl i32 %i.hnu, %i.hmx
  %i.hob = sub nsw i32 %.1.i310, %i.hmx
  %i.hoc = lshr i32 %.1648, %i.hob
  %i.hod = or i32 %i.hoa, %i.hoc
  %i.hoe = call i32 @llvm.bswap.i32(i32 %i.hod)
  store i32 %i.hoe, ptr %i.hmt, align 1, !tbaa !48
  %i.hof = load ptr, ptr %i.hmq, align 8, !tbaa !130
  %i.hog = getelementptr inbounds nuw i8, ptr %i.hof, i64 4
  store ptr %i.hog, ptr %i.hmq, align 8, !tbaa !130
  br label %bb.to

bb.tn:                                            ; preds = %bb.tl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #9
end_hunk_0
