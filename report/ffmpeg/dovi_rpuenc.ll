Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dovi_rpuenc?download=true
inline.NumInlined: 130
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_dovi_rpu_generate:bb.a
  %.0436844 = phi i32 [ %.pre-phi1006, %put_bits.exit ], [ 0, %put_bits.exit.i ]
  %i.axo = load i8, ptr %i.ars, align 1, !tbaa !147
  %i.axp = zext i8 %i.axo to i32                  ; 5 uses
  %i.axq = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv920 ; 2 uses
  %i.axr = load i16, ptr %i.axq, align 2, !tbaa !123
  %i.axs = zext i16 %i.axr to i32                 ; 2 uses
  %i.axt = sub nsw i32 %i.axs, %.0436844          ; 3 uses
  %i.axu = icmp sgt i32 %i.axm, %i.axp
  br i1 %i.axu, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %.lr.ph846
  %i.axv = shl i32 %i.axn, %i.axp
  %i.axw = or i32 %i.axv, %i.axt
  %i.axx = sub nuw nsw i32 %i.axm, %i.axp
  br label %put_bits.exit

bb.ga:                                            ; preds = %.lr.ph846
  %i.axy = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.axz = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.aya = ptrtoint ptr %i.axy to i64
  %i.ayb = ptrtoint ptr %i.axz to i64
  %i.ayc = sub i64 %i.aya, %i.ayb
  %i.ayd = icmp ugt i64 %i.ayc, 3
  br i1 %i.ayd, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aye = shl i32 %i.axn, %i.axm
  %i.ayf = sub nsw i32 %i.axp, %i.axm
  %i.ayg = lshr i32 %i.axt, %i.ayf
  %i.ayh = or i32 %i.ayg, %i.aye
  %i.ayi = tail call i32 @llvm.bswap.i32(i32 %i.ayh)
  store i32 %i.ayi, ptr %i.axz, align 1, !tbaa !28
  %i.ayj = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 4
  store ptr %i.ayk, ptr %i.aou, align 8, !tbaa !36
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %reass.sub881 = sub i32 %i.axm, %i.axp
  %i.ayl = add i32 %reass.sub881, 32
  %.pre977 = load i16, ptr %i.axq, align 2, !tbaa !123
  %.pre978 = load i8, ptr %i.y, align 8, !tbaa !122
  %.pre1005 = zext i16 %.pre977 to i32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.fz, %bb.gd
  %.pre-phi1006 = phi i32 [ %i.axs, %bb.fz ], [ %.pre1005, %bb.gd ]
  %i.aym = phi i8 [ %i.axl, %bb.fz ], [ %.pre978, %bb.gd ] ; 2 uses
  %.026.i.i = phi i32 [ %i.axw, %bb.fz ], [ %i.axt, %bb.gd ] ; 3 uses
  %.0.i.i = phi i32 [ %i.axx, %bb.fz ], [ %i.ayl, %bb.gd ] ; 3 uses
  store i32 %.026.i.i, ptr %5, align 8, !tbaa !38
  store i32 %.0.i.i, ptr %i.aov, align 4, !tbaa !37
  %indvars.iv.next921 = add nuw nsw i64 %indvars.iv920, 1 ; 2 uses
  %i.ayn = zext i8 %i.aym to i64
  %i.ayo = icmp samesign ult i64 %indvars.iv.next921, %i.ayn
  br i1 %i.ayo, label %.lr.ph846, label %._crit_edge847, !llvm.loop !98

bb.ge:                                            ; preds = %._crit_edge847.2
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 3, i32 noundef %i.axk)
  %i.ayp = load i8, ptr %i.ars, align 1, !tbaa !147
  %i.ayq = zext i8 %i.ayp to i32
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.h, i64 5136 ; 2 uses
  %i.ays = load i16, ptr %i.ayr, align 8, !tbaa !123
  %i.ayt = zext i16 %i.ays to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef %i.ayq, i32 noundef %i.ayt)
  %i.ayu = load i8, ptr %i.ars, align 1, !tbaa !147
  %i.ayv = zext i8 %i.ayu to i32
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.h, i64 5138
  %i.ayx = load i16, ptr %i.ayw, align 2, !tbaa !123
  %i.ayy = zext i16 %i.ayx to i32
  %i.ayz = load i16, ptr %i.ayr, align 8, !tbaa !123
  %i.aza = zext i16 %i.ayz to i32
  %i.azb = sub nsw i32 %i.ayy, %i.aza
  call fastcc void @put_bits(ptr noundef %5, i32 noundef %i.ayv, i32 noundef %i.azb)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %._crit_edge847.2
  %i.azc = load i32, ptr %i.s, align 4, !tbaa !119
  %i.azd = add i32 %i.azc, -1
  call fastcc void @set_ue_golomb(ptr noundef %5, i32 noundef %i.azd)
  %i.aze = load i32, ptr %i.v, align 8, !tbaa !120
  %i.azf = add i32 %i.aze, -1
  call fastcc void @set_ue_golomb(ptr noundef %5, i32 noundef %i.azf)
  br label %bb.gh

bb.gg:                                            ; preds = %._crit_edge855
  %i.azg = load i32, ptr %i.vr, align 8, !tbaa !125
  %.not508 = icmp eq i32 %i.azg, -1
  br i1 %.not508, label %.loopexit810, label %.preheader809

.preheader809:                                    ; preds = %bb.gg
  %i.azh = getelementptr inbounds nuw i8, ptr %i.h, i64 5040
  %i.azi = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  br label %bb.kr

bb.gh:                                            ; preds = %bb.gf, %._crit_edge855
  %indvars.iv940 = phi i64 [ 0, %bb.gf ], [ %indvars.iv.next941, %._crit_edge855 ] ; 2 uses
  %i.azj = getelementptr inbounds nuw [1672 x i8], ptr %i.y, i64 %indvars.iv940 ; 8 uses
  %i.azk = load i8, ptr %i.azj, align 8, !tbaa !122
  %i.azl = icmp ugt i8 %i.azk, 1
  br i1 %i.azl, label %.lr.ph854, label %._crit_edge855

.lr.ph854:                                        ; preds = %bb.gh
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azj, i64 20
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azj, i64 256
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azj, i64 264
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azj, i64 328
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azj, i64 52
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azj, i64 64
  br label %bb.gi

._crit_edge855:                                   ; preds = %.loopexit812, %bb.gh
  %indvars.iv.next941 = add nuw nsw i64 %indvars.iv940, 1 ; 2 uses
  %exitcond943.not = icmp eq i64 %indvars.iv.next941, 3
  br i1 %exitcond943.not, label %bb.gg, label %bb.gh, !llvm.loop !99

bb.gi:                                            ; preds = %.lr.ph854, %.loopexit812
  %indvars.iv937 = phi i64 [ 0, %.lr.ph854 ], [ %indvars.iv.next938, %.loopexit812 ] ; 7 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.azm, i64 %indvars.iv937 ; 2 uses
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !113 ; 5 uses
  %i.azu = icmp slt i32 %i.azt, 256
  br i1 %i.azu, label %bb.gj, label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  %i.azv = sext i32 %i.azt to i64
  %i.azw = getelementptr inbounds i8, ptr @ff_ue_golomb_len, i64 %i.azv
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !28
  %i.azy = zext i8 %i.azx to i32                  ; 5 uses
  %i.azz = add nsw i32 %i.azt, 1                  ; 3 uses
  %i.baa = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.bab = load i32, ptr %i.aov, align 4, !tbaa !37 ; 5 uses
  %i.bac = icmp sgt i32 %i.bab, %i.azy
  br i1 %i.bac, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bad = shl i32 %i.baa, %i.azy
  %i.bae = or i32 %i.bad, %i.azz
  %i.baf = sub nuw nsw i32 %i.bab, %i.azy
  br label %set_ue_golomb.exit545

bb.gl:                                            ; preds = %bb.gj
  %i.bag = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bah = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bai = ptrtoint ptr %i.bag to i64
  %i.baj = ptrtoint ptr %i.bah to i64
  %i.bak = sub i64 %i.bai, %i.baj
  %i.bal = icmp ugt i64 %i.bak, 3
  br i1 %i.bal, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.bam = shl i32 %i.baa, %i.bab
  %i.ban = sub nsw i32 %i.azy, %i.bab
  %i.bao = lshr i32 %i.azz, %i.ban
  %i.bap = or i32 %i.bao, %i.bam
  %i.baq = tail call i32 @llvm.bswap.i32(i32 %i.bap)
  store i32 %i.baq, ptr %i.bah, align 1, !tbaa !28
  %i.bar = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 4
  store ptr %i.bas, ptr %i.aou, align 8, !tbaa !36
  br label %bb.go

bb.gn:                                            ; preds = %bb.gl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %reass.sub882 = sub i32 %i.bab, %i.azy
  %i.bat = add i32 %reass.sub882, 32
  br label %set_ue_golomb.exit545

bb.gp:                                            ; preds = %bb.gi
  %i.bau = add nuw nsw i32 %i.azt, 1              ; 5 uses
  %i.bav = icmp samesign ugt i32 %i.azt, 65534    ; 2 uses
  %i.baw = lshr i32 %i.bau, 16
  %spec.select.i.i533 = select i1 %i.bav, i32 %i.baw, i32 %i.bau ; 3 uses
  %spec.select11.i.i534 = select i1 %i.bav, i32 16, i32 0 ; 2 uses
  %.not.i.i535 = icmp samesign ult i32 %spec.select.i.i533, 256 ; 2 uses
  %i.bax = lshr i32 %spec.select.i.i533, 8
  %i.bay = or disjoint i32 %spec.select11.i.i534, 8
  %.110.i.i536 = select i1 %.not.i.i535, i32 %spec.select.i.i533, i32 %i.bax
  %.1.i.i537 = select i1 %.not.i.i535, i32 %spec.select11.i.i534, i32 %i.bay
  %i.baz = zext nneg i32 %.110.i.i536 to i64
  %i.bba = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.baz
  %i.bbb = load i8, ptr %i.bba, align 1, !tbaa !28
  %i.bbc = zext i8 %i.bbb to i32
  %i.bbd = add nuw nsw i32 %.1.i.i537, %i.bbc
  %i.bbe = shl nuw nsw i32 %i.bbd, 1              ; 2 uses
  %i.bbf = or disjoint i32 %i.bbe, 1              ; 4 uses
  %i.bbg = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.bbh = load i32, ptr %i.aov, align 4, !tbaa !37 ; 5 uses
  %i.bbi = icmp slt i32 %i.bbf, %i.bbh
  br i1 %i.bbi, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bbj = shl i32 %i.bbg, %i.bbf
  %i.bbk = or i32 %i.bbj, %i.bau
  %i.bbl = sub nsw i32 %i.bbh, %i.bbf
  br label %set_ue_golomb.exit545

bb.gr:                                            ; preds = %bb.gp
  %i.bbm = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bbn = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bbo = ptrtoint ptr %i.bbm to i64
  %i.bbp = ptrtoint ptr %i.bbn to i64
  %i.bbq = sub i64 %i.bbo, %i.bbp
  %i.bbr = icmp ugt i64 %i.bbq, 3
  br i1 %i.bbr, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bbs = shl i32 %i.bbg, %i.bbh
  %i.bbt = sub nsw i32 %i.bbf, %i.bbh
  %i.bbu = lshr i32 %i.bau, %i.bbt
  %i.bbv = or i32 %i.bbu, %i.bbs
  %i.bbw = tail call i32 @llvm.bswap.i32(i32 %i.bbv)
  store i32 %i.bbw, ptr %i.bbn, align 1, !tbaa !28
  %i.bbx = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 4
  store ptr %i.bby, ptr %i.aou, align 8, !tbaa !36
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.bbz = add nsw i32 %i.bbh, 31
  %i.bca = sub i32 %i.bbz, %i.bbe
  br label %set_ue_golomb.exit545

set_ue_golomb.exit545:                            ; preds = %bb.gq, %bb.gu, %bb.gk, %bb.go
  %i.bcb = phi i32 [ %i.azz, %bb.go ], [ %i.bae, %bb.gk ], [ %i.bbk, %bb.gq ], [ %i.bau, %bb.gu ] ; 5 uses
  %i.bcc = phi i32 [ %i.bat, %bb.go ], [ %i.baf, %bb.gk ], [ %i.bbl, %bb.gq ], [ %i.bca, %bb.gu ] ; 10 uses
  store i32 %i.bcb, ptr %5, align 8, !tbaa !38
  store i32 %i.bcc, ptr %i.aov, align 4, !tbaa !37
  %i.bcd = load i32, ptr %i.azs, align 4, !tbaa !113
  switch i32 %i.bcd, label %.loopexit812 [
    i32 0, label %bb.gv
    i32 1, label %bb.hw
  ]

bb.gv:                                            ; preds = %set_ue_golomb.exit545
  %i.bce = getelementptr inbounds nuw i8, ptr %i.azq, i64 %indvars.iv937 ; 3 uses
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !28 ; 3 uses
  %i.bcg = zext i8 %i.bcf to i32                  ; 3 uses
  %i.bch = zext i8 %i.bcf to i64
  %i.bci = getelementptr i8, ptr @ff_ue_golomb_len, i64 %i.bch
  %i.bcj = getelementptr i8, ptr %i.bci, i64 -1
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !28
  %i.bcl = zext i8 %i.bck to i32                  ; 5 uses
  %i.bcm = icmp sgt i32 %i.bcc, %i.bcl
  br i1 %i.bcm, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.bcn = shl i32 %i.bcb, %i.bcl
  %i.bco = or i32 %i.bcn, %i.bcg
  %i.bcp = sub nuw nsw i32 %i.bcc, %i.bcl
  br label %put_bits.exit.i555

bb.gx:                                            ; preds = %bb.gv
  %i.bcq = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bcr = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bcs = ptrtoint ptr %i.bcq to i64
  %i.bct = ptrtoint ptr %i.bcr to i64
  %i.bcu = sub i64 %i.bcs, %i.bct
  %i.bcv = icmp ugt i64 %i.bcu, 3
  br i1 %i.bcv, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.bcw = shl i32 %i.bcb, %i.bcc
  %i.bcx = sub nsw i32 %i.bcl, %i.bcc
  %i.bcy = lshr i32 %i.bcg, %i.bcx
  %i.bcz = or i32 %i.bcy, %i.bcw
  %i.bda = tail call i32 @llvm.bswap.i32(i32 %i.bcz)
  store i32 %i.bda, ptr %i.bcr, align 1, !tbaa !28
  %i.bdb = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 4
  store ptr %i.bdc, ptr %i.aou, align 8, !tbaa !36
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %reass.sub889 = sub i32 %i.bcc, %i.bcl
  %i.bdd = add i32 %reass.sub889, 32
  %.pre987 = load i8, ptr %i.bce, align 1, !tbaa !28
  br label %put_bits.exit.i555

put_bits.exit.i555:                               ; preds = %bb.ha, %bb.gw
  %i.bde = phi i8 [ %i.bcf, %bb.gw ], [ %.pre987, %bb.ha ]
  %i.bdf = phi i32 [ %i.bco, %bb.gw ], [ %i.bcg, %bb.ha ] ; 3 uses
  %i.bdg = phi i32 [ %i.bcp, %bb.gw ], [ %i.bdd, %bb.ha ] ; 4 uses
  store i32 %i.bdf, ptr %5, align 8, !tbaa !38
  store i32 %i.bdg, ptr %i.aov, align 4, !tbaa !37
  %i.bdh = icmp eq i8 %i.bde, 1
  br i1 %i.bdh, label %bb.hb, label %bb.hg

bb.hb:                                            ; preds = %put_bits.exit.i555
  %i.bdi = icmp sgt i32 %i.bdg, 1
  br i1 %i.bdi, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.bdj = shl i32 %i.bdf, 1
  br label %put_bits.exit562

bb.hd:                                            ; preds = %bb.hb
  %i.bdk = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bdl = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bdm = ptrtoint ptr %i.bdk to i64
  %i.bdn = ptrtoint ptr %i.bdl to i64
  %i.bdo = sub i64 %i.bdm, %i.bdn
  %i.bdp = icmp ugt i64 %i.bdo, 3
  br i1 %i.bdp, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.bdq = shl i32 %i.bdf, %i.bdg
  %i.bdr = tail call i32 @llvm.bswap.i32(i32 %i.bdq)
  store i32 %i.bdr, ptr %i.bdl, align 1, !tbaa !28
  %i.bds = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 4
  store ptr %i.bdt, ptr %i.aou, align 8, !tbaa !36
  br label %put_bits.exit562

bb.hf:                                            ; preds = %bb.hd
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_bits.exit562

put_bits.exit562:                                 ; preds = %bb.he, %bb.hf, %bb.hc
  %.sink = phi i32 [ -1, %bb.hc ], [ 31, %bb.hf ], [ 31, %bb.he ]
  %.026.i.i560 = phi i32 [ %i.bdj, %bb.hc ], [ 0, %bb.hf ], [ 0, %bb.he ]
  %i.bdu = add nsw i32 %i.bdg, %.sink
  store i32 %.026.i.i560, ptr %5, align 8, !tbaa !38
  store i32 %i.bdu, ptr %i.aov, align 4, !tbaa !37
  br label %bb.hg

bb.hg:                                            ; preds = %put_bits.exit562, %put_bits.exit.i555
  %i.bdv = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv937
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %put_se_coef.exit
  %indvars.iv934 = phi i64 [ 0, %bb.hg ], [ %indvars.iv.next935, %put_se_coef.exit ] ; 3 uses
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %i.bdv, i64 %indvars.iv934
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !27 ; 3 uses
  %i.bdy = load i8, ptr %i.apk, align 1, !tbaa !143
  switch i8 %i.bdy, label %put_se_coef.exit [
    i8 0, label %bb.hi
    i8 1, label %bb.hv
  ]

bb.hi:                                            ; preds = %bb.hh
  %i.bdz = load i8, ptr %i.z, align 2, !tbaa !124
  %i.bea = zext nneg i8 %i.bdz to i64
  %i.beb = lshr i64 %i.bdx, %i.bea
  %i.bec = trunc i64 %i.beb to i32                ; 2 uses
  %i.bed = shl nsw i32 %i.bec, 1                  ; 2 uses
  %i.bee = add nsw i32 %i.bed, -1
  %i.bef = icmp slt i32 %i.bec, 1
  %i.beg = sub i32 0, %i.bed
  %spec.select.i.i563 = select i1 %i.bef, i32 %i.beg, i32 %i.bee ; 5 uses
  %i.beh = icmp slt i32 %spec.select.i.i563, 256
  br i1 %i.beh, label %bb.hj, label %bb.hp

bb.hj:                                            ; preds = %bb.hi
  %i.bei = sext i32 %spec.select.i.i563 to i64
  %i.bej = getelementptr inbounds i8, ptr @ff_ue_golomb_len, i64 %i.bei
  %i.bek = load i8, ptr %i.bej, align 1, !tbaa !28
  %i.bel = zext i8 %i.bek to i32                  ; 5 uses
  %i.bem = add nsw i32 %spec.select.i.i563, 1     ; 3 uses
  %i.ben = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.beo = load i32, ptr %i.aov, align 4, !tbaa !37 ; 5 uses
  %i.bep = icmp sgt i32 %i.beo, %i.bel
  br i1 %i.bep, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.beq = shl i32 %i.ben, %i.bel
  %i.ber = or i32 %i.beq, %i.bem
  %i.bes = sub nuw nsw i32 %i.beo, %i.bel
  br label %set_ue_golomb.exit652

bb.hl:                                            ; preds = %bb.hj
  %i.bet = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.beu = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bev = ptrtoint ptr %i.bet to i64
  %i.bew = ptrtoint ptr %i.beu to i64
  %i.bex = sub i64 %i.bev, %i.bew
  %i.bey = icmp ugt i64 %i.bex, 3
  br i1 %i.bey, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.bez = shl i32 %i.ben, %i.beo
  %i.bfa = sub nsw i32 %i.bel, %i.beo
  %i.bfb = lshr i32 %i.bem, %i.bfa
  %i.bfc = or i32 %i.bfb, %i.bez
  %i.bfd = tail call i32 @llvm.bswap.i32(i32 %i.bfc)
  store i32 %i.bfd, ptr %i.beu, align 1, !tbaa !28
  %i.bfe = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 4
  store ptr %i.bff, ptr %i.aou, align 8, !tbaa !36
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %reass.sub890 = sub i32 %i.beo, %i.bel
  %i.bfg = add i32 %reass.sub890, 32
  br label %set_ue_golomb.exit652

bb.hp:                                            ; preds = %bb.hi
  %i.bfh = add nuw nsw i32 %spec.select.i.i563, 1 ; 5 uses
  %i.bfi = icmp samesign ugt i32 %spec.select.i.i563, 65534 ; 2 uses
  %i.bfj = lshr i32 %i.bfh, 16
  %spec.select.i.i640 = select i1 %i.bfi, i32 %i.bfj, i32 %i.bfh ; 3 uses
  %spec.select11.i.i641 = select i1 %i.bfi, i32 16, i32 0 ; 2 uses
  %.not.i.i642 = icmp samesign ult i32 %spec.select.i.i640, 256 ; 2 uses
  %i.bfk = lshr i32 %spec.select.i.i640, 8
  %i.bfl = or disjoint i32 %spec.select11.i.i641, 8
  %.110.i.i643 = select i1 %.not.i.i642, i32 %spec.select.i.i640, i32 %i.bfk
  %.1.i.i644 = select i1 %.not.i.i642, i32 %spec.select11.i.i641, i32 %i.bfl
  %i.bfm = zext nneg i32 %.110.i.i643 to i64
  %i.bfn = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bfm
  %i.bfo = load i8, ptr %i.bfn, align 1, !tbaa !28
  %i.bfp = zext i8 %i.bfo to i32
  %i.bfq = add nuw nsw i32 %.1.i.i644, %i.bfp
  %i.bfr = shl nuw nsw i32 %i.bfq, 1              ; 2 uses
  %i.bfs = or disjoint i32 %i.bfr, 1              ; 4 uses
  %i.bft = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.bfu = load i32, ptr %i.aov, align 4, !tbaa !37 ; 5 uses
  %i.bfv = icmp slt i32 %i.bfs, %i.bfu
  br i1 %i.bfv, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bfw = shl i32 %i.bft, %i.bfs
  %i.bfx = or i32 %i.bfw, %i.bfh
  %i.bfy = sub nsw i32 %i.bfu, %i.bfs
  br label %set_ue_golomb.exit652

bb.hr:                                            ; preds = %bb.hp
  %i.bfz = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bga = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bgb = ptrtoint ptr %i.bfz to i64
  %i.bgc = ptrtoint ptr %i.bga to i64
  %i.bgd = sub i64 %i.bgb, %i.bgc
  %i.bge = icmp ugt i64 %i.bgd, 3
  br i1 %i.bge, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.bgf = shl i32 %i.bft, %i.bfu
  %i.bgg = sub nsw i32 %i.bfs, %i.bfu
  %i.bgh = lshr i32 %i.bfh, %i.bgg
  %i.bgi = or i32 %i.bgh, %i.bgf
  %i.bgj = tail call i32 @llvm.bswap.i32(i32 %i.bgi)
  store i32 %i.bgj, ptr %i.bga, align 1, !tbaa !28
  %i.bgk = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 4
  store ptr %i.bgl, ptr %i.aou, align 8, !tbaa !36
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.bgm = add nsw i32 %i.bfu, 31
  %i.bgn = sub i32 %i.bgm, %i.bfr
  br label %set_ue_golomb.exit652

set_ue_golomb.exit652:                            ; preds = %bb.hq, %bb.hu, %bb.hk, %bb.ho
  %storemerge768 = phi i32 [ %i.bem, %bb.ho ], [ %i.ber, %bb.hk ], [ %i.bfx, %bb.hq ], [ %i.bfh, %bb.hu ]
  %storemerge767 = phi i32 [ %i.bfg, %bb.ho ], [ %i.bes, %bb.hk ], [ %i.bfy, %bb.hq ], [ %i.bgn, %bb.hu ]
  store i32 %storemerge768, ptr %5, align 8, !tbaa !38
  store i32 %storemerge767, ptr %i.aov, align 4, !tbaa !37
  %i.bgo = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bgp = zext i8 %i.bgo to i32
  %i.bgq = zext nneg i8 %i.bgo to i64
  %notmask.i = shl nsw i64 -1, %i.bgq
  %i.bgr = xor i64 %notmask.i, -1
  %i.bgs = and i64 %i.bdx, %i.bgr
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bgp, i64 noundef %i.bgs)
  br label %put_se_coef.exit

bb.hv:                                            ; preds = %bb.hh
  %i.bgt = uitofp nsz i64 %i.bdx to float
  %i.bgu = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bgv = zext i8 %i.bgu to i32
  %i.bgw = zext nneg i8 %i.bgu to i64
  %i.bgx = shl nuw i64 1, %i.bgw
  %i.bgy = sitofp nsz i64 %i.bgx to float
  %i.bgz = fdiv nsz float %i.bgt, %i.bgy
  %i.bha = bitcast float %i.bgz to i32
  %i.bhb = zext i32 %i.bha to i64
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bgv, i64 noundef %i.bhb)
  br label %put_se_coef.exit

put_se_coef.exit:                                 ; preds = %bb.hh, %set_ue_golomb.exit652, %bb.hv
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1
  %i.bhc = load i8, ptr %i.bce, align 1, !tbaa !28
  %i.bhd = zext i8 %i.bhc to i64
  %.not509.not = icmp samesign ult i64 %indvars.iv934, %i.bhd
  br i1 %.not509.not, label %bb.hh, label %.loopexit812, !llvm.loop !100

bb.hw:                                            ; preds = %set_ue_golomb.exit545
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.azn, i64 %indvars.iv937 ; 3 uses
  %i.bhf = load i8, ptr %i.bhe, align 1, !tbaa !28
  %i.bhg = zext i8 %i.bhf to i32
  %i.bhh = add nsw i32 %i.bhg, -1                 ; 4 uses
  %i.bhi = icmp sgt i32 %i.bcc, 2
  br i1 %i.bhi, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.bhj = shl i32 %i.bcb, 2
  %i.bhk = or i32 %i.bhj, %i.bhh
  br label %put_bits.exit567

bb.hy:                                            ; preds = %bb.hw
  %i.bhl = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bhm = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bhn = ptrtoint ptr %i.bhl to i64
  %i.bho = ptrtoint ptr %i.bhm to i64
  %i.bhp = sub i64 %i.bhn, %i.bho
  %i.bhq = icmp ugt i64 %i.bhp, 3
  br i1 %i.bhq, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.bhr = shl i32 %i.bcb, %i.bcc
  %i.bhs = sub nsw i32 2, %i.bcc
  %i.bht = lshr i32 %i.bhh, %i.bhs
  %i.bhu = or i32 %i.bht, %i.bhr
  %i.bhv = tail call i32 @llvm.bswap.i32(i32 %i.bhu)
  store i32 %i.bhv, ptr %i.bhm, align 1, !tbaa !28
  %i.bhw = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 4
  store ptr %i.bhx, ptr %i.aou, align 8, !tbaa !36
  br label %put_bits.exit567

bb.ia:                                            ; preds = %bb.hy
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_bits.exit567

put_bits.exit567:                                 ; preds = %bb.hz, %bb.ia, %bb.hx
  %.sink1253 = phi i32 [ -2, %bb.hx ], [ 30, %bb.ia ], [ 30, %bb.hz ]
  %.026.i.i565 = phi i32 [ %i.bhk, %bb.hx ], [ %i.bhh, %bb.ia ], [ %i.bhh, %bb.hz ] ; 5 uses
  %i.bhy = add nsw i32 %i.bcc, %.sink1253         ; 11 uses
  store i32 %.026.i.i565, ptr %5, align 8, !tbaa !38
  store i32 %i.bhy, ptr %i.aov, align 4, !tbaa !37
  %i.bhz = getelementptr inbounds nuw [8 x i8], ptr %i.azo, i64 %indvars.iv937
  %i.bia = load i64, ptr %i.bhz, align 8, !tbaa !27 ; 3 uses
  %i.bib = load i8, ptr %i.apk, align 1, !tbaa !143
  switch i8 %i.bib, label %put_se_coef.exit570 [
    i8 0, label %bb.ib
    i8 1, label %bb.io
  ]

bb.ib:                                            ; preds = %put_bits.exit567
  %i.bic = load i8, ptr %i.z, align 2, !tbaa !124
  %i.bid = zext nneg i8 %i.bic to i64
  %i.bie = lshr i64 %i.bia, %i.bid
  %i.bif = trunc i64 %i.bie to i32                ; 2 uses
  %i.big = shl nsw i32 %i.bif, 1                  ; 2 uses
  %i.bih = add nsw i32 %i.big, -1
  %i.bii = icmp slt i32 %i.bif, 1
  %i.bij = sub i32 0, %i.big
  %spec.select.i.i568 = select i1 %i.bii, i32 %i.bij, i32 %i.bih ; 5 uses
  %i.bik = icmp slt i32 %spec.select.i.i568, 256
  br i1 %i.bik, label %bb.ic, label %bb.ii

bb.ic:                                            ; preds = %bb.ib
  %i.bil = sext i32 %spec.select.i.i568 to i64
  %i.bim = getelementptr inbounds i8, ptr @ff_ue_golomb_len, i64 %i.bil
  %i.bin = load i8, ptr %i.bim, align 1, !tbaa !28
  %i.bio = zext i8 %i.bin to i32                  ; 5 uses
  %i.bip = add nsw i32 %spec.select.i.i568, 1     ; 3 uses
  %i.biq = icmp sgt i32 %i.bhy, %i.bio
  br i1 %i.biq, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.bir = shl i32 %.026.i.i565, %i.bio
  %i.bis = or i32 %i.bir, %i.bip
  %i.bit = sub nuw nsw i32 %i.bhy, %i.bio
  br label %set_ue_golomb.exit665

bb.ie:                                            ; preds = %bb.ic
  %i.biu = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.biv = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.biw = ptrtoint ptr %i.biu to i64
  %i.bix = ptrtoint ptr %i.biv to i64
  %i.biy = sub i64 %i.biw, %i.bix
  %i.biz = icmp ugt i64 %i.biy, 3
  br i1 %i.biz, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.bja = shl i32 %.026.i.i565, %i.bhy
  %i.bjb = sub nsw i32 %i.bio, %i.bhy
  %i.bjc = lshr i32 %i.bip, %i.bjb
  %i.bjd = or i32 %i.bjc, %i.bja
  %i.bje = tail call i32 @llvm.bswap.i32(i32 %i.bjd)
  store i32 %i.bje, ptr %i.biv, align 1, !tbaa !28
  %i.bjf = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 4
  store ptr %i.bjg, ptr %i.aou, align 8, !tbaa !36
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %reass.sub.i661 = add nsw i32 %i.bhy, 32
  %i.bjh = sub i32 %reass.sub.i661, %i.bio
  br label %set_ue_golomb.exit665

bb.ii:                                            ; preds = %bb.ib
  %i.bji = add nuw nsw i32 %spec.select.i.i568, 1 ; 5 uses
  %i.bjj = icmp samesign ugt i32 %spec.select.i.i568, 65534 ; 2 uses
  %i.bjk = lshr i32 %i.bji, 16
  %spec.select.i.i653 = select i1 %i.bjj, i32 %i.bjk, i32 %i.bji ; 3 uses
  %spec.select11.i.i654 = select i1 %i.bjj, i32 16, i32 0 ; 2 uses
  %.not.i.i655 = icmp samesign ult i32 %spec.select.i.i653, 256 ; 2 uses
  %i.bjl = lshr i32 %spec.select.i.i653, 8
  %i.bjm = or disjoint i32 %spec.select11.i.i654, 8
  %.110.i.i656 = select i1 %.not.i.i655, i32 %spec.select.i.i653, i32 %i.bjl
  %.1.i.i657 = select i1 %.not.i.i655, i32 %spec.select11.i.i654, i32 %i.bjm
  %i.bjn = zext nneg i32 %.110.i.i656 to i64
  %i.bjo = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bjn
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !28
  %i.bjq = zext i8 %i.bjp to i32
  %i.bjr = add nuw nsw i32 %.1.i.i657, %i.bjq
  %i.bjs = shl nuw nsw i32 %i.bjr, 1              ; 2 uses
  %i.bjt = or disjoint i32 %i.bjs, 1              ; 4 uses
  %i.bju = icmp slt i32 %i.bjt, %i.bhy
  br i1 %i.bju, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.bjv = shl i32 %.026.i.i565, %i.bjt
  %i.bjw = or i32 %i.bjv, %i.bji
  %i.bjx = sub nsw i32 %i.bhy, %i.bjt
  br label %set_ue_golomb.exit665

bb.ik:                                            ; preds = %bb.ii
  %i.bjy = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bjz = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bka = ptrtoint ptr %i.bjy to i64
  %i.bkb = ptrtoint ptr %i.bjz to i64
  %i.bkc = sub i64 %i.bka, %i.bkb
  %i.bkd = icmp ugt i64 %i.bkc, 3
  br i1 %i.bkd, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.bke = shl i32 %.026.i.i565, %i.bhy
  %i.bkf = sub nsw i32 %i.bjt, %i.bhy
  %i.bkg = lshr i32 %i.bji, %i.bkf
  %i.bkh = or i32 %i.bkg, %i.bke
  %i.bki = tail call i32 @llvm.bswap.i32(i32 %i.bkh)
  store i32 %i.bki, ptr %i.bjz, align 1, !tbaa !28
  %i.bkj = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 4
  store ptr %i.bkk, ptr %i.aou, align 8, !tbaa !36
  br label %bb.in

bb.im:                                            ; preds = %bb.ik
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.bkl = add nsw i32 %i.bhy, 31
  %i.bkm = sub i32 %i.bkl, %i.bjs
  br label %set_ue_golomb.exit665

set_ue_golomb.exit665:                            ; preds = %bb.ij, %bb.in, %bb.id, %bb.ih
  %storemerge764 = phi i32 [ %i.bip, %bb.ih ], [ %i.bis, %bb.id ], [ %i.bjw, %bb.ij ], [ %i.bji, %bb.in ]
  %storemerge763 = phi i32 [ %i.bjh, %bb.ih ], [ %i.bit, %bb.id ], [ %i.bjx, %bb.ij ], [ %i.bkm, %bb.in ]
  store i32 %storemerge764, ptr %5, align 8, !tbaa !38
  store i32 %storemerge763, ptr %i.aov, align 4, !tbaa !37
  %i.bkn = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bko = zext i8 %i.bkn to i32
  %i.bkp = zext nneg i8 %i.bkn to i64
  %notmask.i569 = shl nsw i64 -1, %i.bkp
  %i.bkq = xor i64 %notmask.i569, -1
  %i.bkr = and i64 %i.bia, %i.bkq
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bko, i64 noundef %i.bkr)
  br label %put_se_coef.exit570

bb.io:                                            ; preds = %put_bits.exit567
  %i.bks = uitofp nsz i64 %i.bia to float
  %i.bkt = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bku = zext i8 %i.bkt to i32
  %i.bkv = zext nneg i8 %i.bkt to i64
  %i.bkw = shl nuw i64 1, %i.bkv
  %i.bkx = sitofp nsz i64 %i.bkw to float
  %i.bky = fdiv nsz float %i.bks, %i.bkx
  %i.bkz = bitcast float %i.bky to i32
  %i.bla = zext i32 %i.bkz to i64
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bku, i64 noundef %i.bla)
  br label %put_se_coef.exit570

put_se_coef.exit570:                              ; preds = %put_bits.exit567, %set_ue_golomb.exit665, %bb.io
  %i.blb = load i8, ptr %i.bhe, align 1, !tbaa !28
  %.not883 = icmp eq i8 %i.blb, 0
  br i1 %.not883, label %.loopexit812, label %.preheader811.lr.ph

.preheader811.lr.ph:                              ; preds = %put_se_coef.exit570
  %i.blc = getelementptr inbounds nuw [168 x i8], ptr %i.azp, i64 %indvars.iv937
  br label %.preheader811

.preheader811:                                    ; preds = %.preheader811.lr.ph, %bb.ip
  %indvars.iv931 = phi i64 [ 0, %.preheader811.lr.ph ], [ %indvars.iv.next932, %bb.ip ] ; 2 uses
  %i.bld = getelementptr inbounds nuw [56 x i8], ptr %i.blc, i64 %indvars.iv931
  br label %bb.iq

bb.ip:                                            ; preds = %put_se_coef.exit573
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 1 ; 2 uses
  %i.ble = load i8, ptr %i.bhe, align 1, !tbaa !28
  %i.blf = zext i8 %i.ble to i64
  %i.blg = icmp samesign ult i64 %indvars.iv.next932, %i.blf
  br i1 %i.blg, label %.preheader811, label %.loopexit812, !llvm.loop !101

bb.iq:                                            ; preds = %.preheader811, %put_se_coef.exit573
  %indvars.iv927 = phi i64 [ 0, %.preheader811 ], [ %indvars.iv.next928, %put_se_coef.exit573 ] ; 2 uses
  %i.blh = getelementptr inbounds nuw [8 x i8], ptr %i.bld, i64 %indvars.iv927
  %i.bli = load i64, ptr %i.blh, align 8, !tbaa !27 ; 4 uses
  %i.blj = load i8, ptr %i.apk, align 1, !tbaa !143
  switch i8 %i.blj, label %put_se_coef.exit573 [
    i8 0, label %bb.ir
    i8 1, label %bb.jx
  ]

bb.ir:                                            ; preds = %bb.iq
  %i.blk = load i8, ptr %i.z, align 2, !tbaa !124
  %i.bll = zext nneg i8 %i.blk to i64
  %i.blm = lshr i64 %i.bli, %i.bll
  %i.bln = trunc i64 %i.blm to i32                ; 2 uses
  %i.blo = shl nsw i32 %i.bln, 1                  ; 2 uses
  %i.blp = add nsw i32 %i.blo, -1
  %i.blq = icmp slt i32 %i.bln, 1
  %i.blr = sub i32 0, %i.blo
  %spec.select.i.i571 = select i1 %i.blq, i32 %i.blr, i32 %i.blp ; 5 uses
  %i.bls = icmp slt i32 %spec.select.i.i571, 256
  br i1 %i.bls, label %bb.is, label %bb.iy

bb.is:                                            ; preds = %bb.ir
  %i.blt = sext i32 %spec.select.i.i571 to i64
  %i.blu = getelementptr inbounds i8, ptr @ff_ue_golomb_len, i64 %i.blt
  %i.blv = load i8, ptr %i.blu, align 1, !tbaa !28
  %i.blw = zext i8 %i.blv to i32                  ; 5 uses
  %i.blx = add nsw i32 %spec.select.i.i571, 1     ; 3 uses
  %i.bly = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.blz = load i32, ptr %i.aov, align 4, !tbaa !37 ; 5 uses
  %i.bma = icmp sgt i32 %i.blz, %i.blw
  br i1 %i.bma, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.bmb = shl i32 %i.bly, %i.blw
  %i.bmc = or i32 %i.bmb, %i.blx
  %i.bmd = sub nuw nsw i32 %i.blz, %i.blw
  br label %set_ue_golomb.exit693

bb.iu:                                            ; preds = %bb.is
  %i.bme = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bmf = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bmg = ptrtoint ptr %i.bme to i64
  %i.bmh = ptrtoint ptr %i.bmf to i64
  %i.bmi = sub i64 %i.bmg, %i.bmh
  %i.bmj = icmp ugt i64 %i.bmi, 3
  br i1 %i.bmj, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.bmk = shl i32 %i.bly, %i.blz
  %i.bml = sub nsw i32 %i.blw, %i.blz
  %i.bmm = lshr i32 %i.blx, %i.bml
  %i.bmn = or i32 %i.bmm, %i.bmk
  %i.bmo = tail call i32 @llvm.bswap.i32(i32 %i.bmn)
  store i32 %i.bmo, ptr %i.bmf, align 1, !tbaa !28
  %i.bmp = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 4
  store ptr %i.bmq, ptr %i.aou, align 8, !tbaa !36
  br label %bb.ix

bb.iw:                                            ; preds = %bb.iu
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %reass.sub886 = sub i32 %i.blz, %i.blw
  %i.bmr = add i32 %reass.sub886, 32
  br label %set_ue_golomb.exit693

bb.iy:                                            ; preds = %bb.ir
  %i.bms = add nuw nsw i32 %spec.select.i.i571, 1 ; 5 uses
  %i.bmt = icmp samesign ugt i32 %spec.select.i.i571, 65534 ; 2 uses
  %i.bmu = lshr i32 %i.bms, 16
  %spec.select.i.i681 = select i1 %i.bmt, i32 %i.bmu, i32 %i.bms ; 3 uses
  %spec.select11.i.i682 = select i1 %i.bmt, i32 16, i32 0 ; 2 uses
  %.not.i.i683 = icmp samesign ult i32 %spec.select.i.i681, 256 ; 2 uses
  %i.bmv = lshr i32 %spec.select.i.i681, 8
  %i.bmw = or disjoint i32 %spec.select11.i.i682, 8
  %.110.i.i684 = select i1 %.not.i.i683, i32 %spec.select.i.i681, i32 %i.bmv
  %.1.i.i685 = select i1 %.not.i.i683, i32 %spec.select11.i.i682, i32 %i.bmw
  %i.bmx = zext nneg i32 %.110.i.i684 to i64
  %i.bmy = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bmx
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !28
  %i.bna = zext i8 %i.bmz to i32
  %i.bnb = add nuw nsw i32 %.1.i.i685, %i.bna
  %i.bnc = shl nuw nsw i32 %i.bnb, 1              ; 2 uses
  %i.bnd = or disjoint i32 %i.bnc, 1              ; 4 uses
  %i.bne = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.bnf = load i32, ptr %i.aov, align 4, !tbaa !37 ; 5 uses
  %i.bng = icmp slt i32 %i.bnd, %i.bnf
  br i1 %i.bng, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.bnh = shl i32 %i.bne, %i.bnd
  %i.bni = or i32 %i.bnh, %i.bms
  %i.bnj = sub nsw i32 %i.bnf, %i.bnd
  br label %set_ue_golomb.exit693

bb.ja:                                            ; preds = %bb.iy
  %i.bnk = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bnl = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bnm = ptrtoint ptr %i.bnk to i64
  %i.bnn = ptrtoint ptr %i.bnl to i64
  %i.bno = sub i64 %i.bnm, %i.bnn
  %i.bnp = icmp ugt i64 %i.bno, 3
  br i1 %i.bnp, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.bnq = shl i32 %i.bne, %i.bnf
  %i.bnr = sub nsw i32 %i.bnd, %i.bnf
  %i.bns = lshr i32 %i.bms, %i.bnr
  %i.bnt = or i32 %i.bns, %i.bnq
  %i.bnu = tail call i32 @llvm.bswap.i32(i32 %i.bnt)
  store i32 %i.bnu, ptr %i.bnl, align 1, !tbaa !28
  %i.bnv = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 4
  store ptr %i.bnw, ptr %i.aou, align 8, !tbaa !36
  br label %bb.jd

bb.jc:                                            ; preds = %bb.ja
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.bnx = add nsw i32 %i.bnf, 31
  %i.bny = sub i32 %i.bnx, %i.bnc
  br label %set_ue_golomb.exit693

set_ue_golomb.exit693:                            ; preds = %bb.iz, %bb.jd, %bb.it, %bb.ix
  %i.bnz = phi i32 [ %i.blx, %bb.ix ], [ %i.bmc, %bb.it ], [ %i.bni, %bb.iz ], [ %i.bms, %bb.jd ] ; 6 uses
  %i.boa = phi i32 [ %i.bmr, %bb.ix ], [ %i.bmd, %bb.it ], [ %i.bnj, %bb.iz ], [ %i.bny, %bb.jd ] ; 14 uses
  store i32 %i.bnz, ptr %5, align 8, !tbaa !38
  store i32 %i.boa, ptr %i.aov, align 4, !tbaa !37
  %i.bob = load i8, ptr %i.z, align 2, !tbaa !124 ; 5 uses
  %i.boc = zext i8 %i.bob to i32                  ; 7 uses
  %i.bod = zext nneg i8 %i.bob to i64
  %notmask.i572 = shl nsw i64 -1, %i.bod
  %i.boe = xor i64 %notmask.i572, -1
  %i.bof = and i64 %i.bli, %i.boe                 ; 3 uses
  %i.bog = icmp ult i8 %i.bob, 32
  br i1 %i.bog, label %bb.je, label %bb.jk

bb.je:                                            ; preds = %set_ue_golomb.exit693
  %i.boh = trunc nuw i64 %i.bof to i32            ; 3 uses
  %i.boi = icmp sgt i32 %i.boa, %i.boc
  br i1 %i.boi, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.boj = shl i32 %i.bnz, %i.boc
  %i.bok = or i32 %i.boj, %i.boh
  %i.bol = sub nuw nsw i32 %i.boa, %i.boc
  br label %put_bits.exit.i677

bb.jg:                                            ; preds = %bb.je
  %i.bom = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bon = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.boo = ptrtoint ptr %i.bom to i64
  %i.bop = ptrtoint ptr %i.bon to i64
  %i.boq = sub i64 %i.boo, %i.bop
  %i.bor = icmp ugt i64 %i.boq, 3
  br i1 %i.bor, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.bos = shl i32 %i.bnz, %i.boa
  %i.bot = sub nsw i32 %i.boc, %i.boa
  %i.bou = lshr i32 %i.boh, %i.bot
  %i.bov = or i32 %i.bou, %i.bos
  %i.bow = tail call i32 @llvm.bswap.i32(i32 %i.bov)
  store i32 %i.bow, ptr %i.bon, align 1, !tbaa !28
  %i.box = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 4
  store ptr %i.boy, ptr %i.aou, align 8, !tbaa !36
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jg
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %reass.sub888 = sub i32 %i.boa, %i.boc
  %i.boz = add i32 %reass.sub888, 32
  br label %put_bits.exit.i677

put_bits.exit.i677:                               ; preds = %bb.jj, %bb.jf
  %.026.i.i.i678 = phi i32 [ %i.bok, %bb.jf ], [ %i.boh, %bb.jj ]
  %.0.i.i.i679 = phi i32 [ %i.bol, %bb.jf ], [ %i.boz, %bb.jj ]
  store i32 %.026.i.i.i678, ptr %5, align 8, !tbaa !38
  br label %put_se_coef.exit573.sink.split

bb.jk:                                            ; preds = %set_ue_golomb.exit693
  %i.bpa = icmp eq i8 %i.bob, 32
  br i1 %i.bpa, label %bb.jl, label %bb.jo

bb.jl:                                            ; preds = %bb.jk
  %i.bpb = trunc i64 %i.bli to i32                ; 2 uses
  %i.bpc = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bpd = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bpe = ptrtoint ptr %i.bpc to i64
  %i.bpf = ptrtoint ptr %i.bpd to i64
  %i.bpg = sub i64 %i.bpe, %i.bpf
  %i.bph = icmp ugt i64 %i.bpg, 3
  br i1 %i.bph, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.bpi = zext i32 %i.bnz to i64
  %i.bpj = zext nneg i32 %i.boa to i64
  %i.bpk = shl i64 %i.bpi, %i.bpj
  %i.bpl = trunc i64 %i.bpk to i32
  %i.bpm = sub nsw i32 32, %i.boa
  %i.bpn = lshr i32 %i.bpb, %i.bpm
  %i.bpo = or i32 %i.bpn, %i.bpl
  %i.bpp = tail call i32 @llvm.bswap.i32(i32 %i.bpo)
  store i32 %i.bpp, ptr %i.bpd, align 1, !tbaa !28
  %i.bpq = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 4
  store ptr %i.bpr, ptr %i.aou, align 8, !tbaa !36
  br label %put_bits32.exit.i675

bb.jn:                                            ; preds = %bb.jl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_bits32.exit.i675

put_bits32.exit.i675:                             ; preds = %bb.jn, %bb.jm
  store i32 %i.bpb, ptr %5, align 8, !tbaa !38
  br label %put_se_coef.exit573.sink.split

bb.jo:                                            ; preds = %bb.jk
  %i.bps = icmp ult i8 %i.bob, 64
  br i1 %i.bps, label %bb.jp, label %put_se_coef.exit573

bb.jp:                                            ; preds = %bb.jo
  %i.bpt = trunc i64 %i.bof to i32                ; 2 uses
  %i.bpu = lshr i64 %i.bof, 32                    ; 3 uses
  %i.bpv = trunc nuw nsw i64 %i.bpu to i32
  %i.bpw = add nsw i32 %i.boc, -32                ; 4 uses
  %i.bpx = icmp slt i32 %i.bpw, %i.boa
  br i1 %i.bpx, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.bpy = shl i32 %i.bnz, %i.bpw
  %i.bpz = sub nuw nsw i32 %i.boa, %i.bpw
  %.pre986 = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bqa = zext i32 %i.bpy to i64
  %i.bqb = or i64 %i.bpu, %i.bqa
  br label %put_bits.exit17.i671

bb.jr:                                            ; preds = %bb.jp
  %i.bqc = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bqd = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 3 uses
  %i.bqe = ptrtoint ptr %i.bqc to i64
  %i.bqf = ptrtoint ptr %i.bqd to i64
  %i.bqg = sub i64 %i.bqe, %i.bqf
  %i.bqh = icmp ugt i64 %i.bqg, 3
  br i1 %i.bqh, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.bqi = shl i32 %i.bnz, %i.boa
  %i.bqj = sub nsw i32 %i.bpw, %i.boa
  %i.bqk = lshr i32 %i.bpv, %i.bqj
  %i.bql = or i32 %i.bqk, %i.bqi
  %i.bqm = tail call i32 @llvm.bswap.i32(i32 %i.bql)
  store i32 %i.bqm, ptr %i.bqd, align 1, !tbaa !28
  %i.bqn = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 4 ; 2 uses
  store ptr %i.bqo, ptr %i.aou, align 8, !tbaa !36
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.bqp = phi ptr [ %i.bqd, %bb.jt ], [ %i.bqo, %bb.js ]
  %reass.sub887 = sub i32 %i.boa, %i.boc
  %i.bqq = add i32 %reass.sub887, 64
  br label %put_bits.exit17.i671

put_bits.exit17.i671:                             ; preds = %bb.ju, %bb.jq
  %i.bqr = phi ptr [ %.pre986, %bb.jq ], [ %i.bqp, %bb.ju ] ; 2 uses
  %.026.i.i15.i672 = phi i64 [ %i.bqb, %bb.jq ], [ %i.bpu, %bb.ju ]
  %.0.i.i16.i673 = phi i32 [ %i.bpz, %bb.jq ], [ %i.bqq, %bb.ju ] ; 3 uses
  %i.bqs = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bqt = ptrtoint ptr %i.bqs to i64
  %i.bqu = ptrtoint ptr %i.bqr to i64
  %i.bqv = sub i64 %i.bqt, %i.bqu
  %i.bqw = icmp ugt i64 %i.bqv, 3
  br i1 %i.bqw, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %put_bits.exit17.i671
  %i.bqx = zext nneg i32 %.0.i.i16.i673 to i64
  %i.bqy = shl i64 %.026.i.i15.i672, %i.bqx
  %i.bqz = trunc i64 %i.bqy to i32
  %i.bra = sub nsw i32 32, %.0.i.i16.i673
  %i.brb = lshr i32 %i.bpt, %i.bra
  %i.brc = or i32 %i.brb, %i.bqz
  %i.brd = tail call i32 @llvm.bswap.i32(i32 %i.brc)
end_hunk_0
begin_hunk_1_@ff_dovi_rpu_generate:bb.a
bb.kn:                                            ; preds = %bb.kl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.btu = phi ptr [ %i.btl, %bb.kn ], [ %i.btt, %bb.km ]
  %reass.sub884 = sub i32 %i.btf, %i.bri
  %i.btv = add i32 %reass.sub884, 64
  br label %put_bits.exit17.i

put_bits.exit17.i:                                ; preds = %bb.ko, %bb.kk
  %i.btw = phi ptr [ %.pre985, %bb.kk ], [ %i.btu, %bb.ko ] ; 2 uses
  %.026.i.i15.i = phi i64 [ %i.btj, %bb.kk ], [ 0, %bb.ko ]
  %.0.i.i16.i = phi i32 [ %i.bti, %bb.kk ], [ %i.btv, %bb.ko ] ; 3 uses
  %i.btx = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bty = ptrtoint ptr %i.btx to i64
  %i.btz = ptrtoint ptr %i.btw to i64
  %i.bua = sub i64 %i.bty, %i.btz
  %i.bub = icmp ugt i64 %i.bua, 3
  br i1 %i.bub, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %put_bits.exit17.i
  %i.buc = zext nneg i32 %.0.i.i16.i to i64
  %i.bud = shl i64 %.026.i.i15.i, %i.buc
  %i.bue = trunc i64 %i.bud to i32
  %i.buf = sub nsw i32 32, %.0.i.i16.i
  %i.bug = lshr i32 %i.brn, %i.buf
  %i.buh = or i32 %i.bug, %i.bue
  %i.bui = tail call i32 @llvm.bswap.i32(i32 %i.buh)
  store i32 %i.bui, ptr %i.btw, align 1, !tbaa !28
  %i.buj = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 4
  store ptr %i.buk, ptr %i.aou, align 8, !tbaa !36
  br label %put_bits32.exit18.i

bb.kq:                                            ; preds = %put_bits.exit17.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_bits32.exit18.i

put_bits32.exit18.i:                              ; preds = %bb.kq, %bb.kp
  store float %i.brm, ptr %5, align 8, !tbaa !38
  br label %put_se_coef.exit573.sink.split

put_se_coef.exit573.sink.split:                   ; preds = %put_bits.exit.i677, %put_bits32.exit.i675, %put_bits32.exit18.i674, %put_bits.exit.i667, %put_bits32.exit.i, %put_bits32.exit18.i
  %.0.i.i16.i.sink = phi i32 [ %.0.i.i16.i, %put_bits32.exit18.i ], [ %i.bsk, %put_bits32.exit.i ], [ %.0.i.i.i669, %put_bits.exit.i667 ], [ %.0.i.i16.i673, %put_bits32.exit18.i674 ], [ %i.boa, %put_bits32.exit.i675 ], [ %.0.i.i.i679, %put_bits.exit.i677 ]
  store i32 %.0.i.i16.i.sink, ptr %i.aov, align 4, !tbaa !37
  br label %put_se_coef.exit573

put_se_coef.exit573:                              ; preds = %put_se_coef.exit573.sink.split, %bb.ki, %bb.jo, %bb.iq
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1 ; 2 uses
  %exitcond930.not = icmp eq i64 %indvars.iv.next928, 7
  br i1 %exitcond930.not, label %bb.ip, label %bb.iq, !llvm.loop !102

.loopexit812:                                     ; preds = %bb.ip, %put_se_coef.exit, %put_se_coef.exit570, %set_ue_golomb.exit545
  %indvars.iv.next938 = add nuw nsw i64 %indvars.iv937, 1 ; 2 uses
  %i.bul = load i8, ptr %i.azj, align 8, !tbaa !122
  %i.bum = zext i8 %i.bul to i64
  %i.bun = add nsw i64 %i.bum, -1
  %i.buo = icmp slt i64 %indvars.iv.next938, %i.bun
  br i1 %i.buo, label %bb.gi, label %._crit_edge855, !llvm.loop !103

bb.kr:                                            ; preds = %.preheader809, %put_ue_coef.exit582
  %indvars.iv944 = phi i64 [ 0, %.preheader809 ], [ %indvars.iv.next945, %put_ue_coef.exit582 ] ; 2 uses
  %i.bup = getelementptr inbounds nuw [32 x i8], ptr %i.azh, i64 %indvars.iv944 ; 4 uses
  %i.buq = load i8, ptr %i.azi, align 2, !tbaa !148
  %i.bur = zext i8 %i.buq to i32                  ; 5 uses
  %i.bus = load i16, ptr %i.bup, align 8, !tbaa !157
  %i.but = zext i16 %i.bus to i32                 ; 3 uses
  %i.buu = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.buv = load i32, ptr %i.aov, align 4, !tbaa !37 ; 5 uses
  %i.buw = icmp sgt i32 %i.buv, %i.bur
  br i1 %i.buw, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.bux = shl i32 %i.buu, %i.bur
  %i.buy = or i32 %i.bux, %i.but
  %i.buz = sub nuw nsw i32 %i.buv, %i.bur
  br label %put_bits.exit577

bb.kt:                                            ; preds = %bb.kr
  %i.bva = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bvb = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bvc = ptrtoint ptr %i.bva to i64
  %i.bvd = ptrtoint ptr %i.bvb to i64
  %i.bve = sub i64 %i.bvc, %i.bvd
  %i.bvf = icmp ugt i64 %i.bve, 3
  br i1 %i.bvf, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.bvg = shl i32 %i.buu, %i.buv
  %i.bvh = sub nsw i32 %i.bur, %i.buv
  %i.bvi = lshr i32 %i.but, %i.bvh
  %i.bvj = or i32 %i.bvi, %i.bvg
  %i.bvk = tail call i32 @llvm.bswap.i32(i32 %i.bvj)
  store i32 %i.bvk, ptr %i.bvb, align 1, !tbaa !28
  %i.bvl = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 4
  store ptr %i.bvm, ptr %i.aou, align 8, !tbaa !36
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kt
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  %reass.sub891 = sub i32 %i.buv, %i.bur
  %i.bvn = add i32 %reass.sub891, 32
  br label %put_bits.exit577

put_bits.exit577:                                 ; preds = %bb.ks, %bb.kw
  %.026.i.i575 = phi i32 [ %i.buy, %bb.ks ], [ %i.but, %bb.kw ] ; 5 uses
  %.0.i.i576 = phi i32 [ %i.buz, %bb.ks ], [ %i.bvn, %bb.kw ] ; 11 uses
  store i32 %.026.i.i575, ptr %5, align 8, !tbaa !38
  store i32 %.0.i.i576, ptr %i.aov, align 4, !tbaa !37
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bup, i64 8
  %i.bvp = load i64, ptr %i.bvo, align 8, !tbaa !127 ; 3 uses
  %i.bvq = load i8, ptr %i.apk, align 1, !tbaa !143
  switch i8 %i.bvq, label %put_ue_coef.exit [
    i8 0, label %bb.kx
    i8 1, label %bb.lk
  ]

bb.kx:                                            ; preds = %put_bits.exit577
  %i.bvr = load i8, ptr %i.z, align 2, !tbaa !124
  %i.bvs = zext nneg i8 %i.bvr to i64
  %i.bvt = lshr i64 %i.bvp, %i.bvs                ; 2 uses
  %i.bvu = trunc i64 %i.bvt to i32                ; 4 uses
  %i.bvv = icmp slt i32 %i.bvu, 256
  br i1 %i.bvv, label %bb.ky, label %bb.le

bb.ky:                                            ; preds = %bb.kx
  %sext = shl i64 %i.bvt, 32
  %i.bvw = ashr exact i64 %sext, 32
  %i.bvx = getelementptr inbounds i8, ptr @ff_ue_golomb_len, i64 %i.bvw
  %i.bvy = load i8, ptr %i.bvx, align 1, !tbaa !28
  %i.bvz = zext i8 %i.bvy to i32                  ; 5 uses
  %i.bwa = add nsw i32 %i.bvu, 1                  ; 3 uses
  %i.bwb = icmp sgt i32 %.0.i.i576, %i.bvz
  br i1 %i.bwb, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.bwc = shl i32 %.026.i.i575, %i.bvz
  %i.bwd = or i32 %i.bwc, %i.bwa
  %i.bwe = sub nuw nsw i32 %.0.i.i576, %i.bvz
  br label %set_ue_golomb.exit706

bb.la:                                            ; preds = %bb.ky
  %i.bwf = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bwg = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bwh = ptrtoint ptr %i.bwf to i64
  %i.bwi = ptrtoint ptr %i.bwg to i64
  %i.bwj = sub i64 %i.bwh, %i.bwi
  %i.bwk = icmp ugt i64 %i.bwj, 3
  br i1 %i.bwk, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.bwl = shl i32 %.026.i.i575, %.0.i.i576
  %i.bwm = sub nsw i32 %i.bvz, %.0.i.i576
  %i.bwn = lshr i32 %i.bwa, %i.bwm
  %i.bwo = or i32 %i.bwn, %i.bwl
  %i.bwp = tail call i32 @llvm.bswap.i32(i32 %i.bwo)
  store i32 %i.bwp, ptr %i.bwg, align 1, !tbaa !28
  %i.bwq = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 4
  store ptr %i.bwr, ptr %i.aou, align 8, !tbaa !36
  br label %bb.ld

bb.lc:                                            ; preds = %bb.la
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %reass.sub.i702 = add nsw i32 %.0.i.i576, 32
  %i.bws = sub i32 %reass.sub.i702, %i.bvz
  br label %set_ue_golomb.exit706

bb.le:                                            ; preds = %bb.kx
  %i.bwt = add nuw nsw i32 %i.bvu, 1              ; 5 uses
  %i.bwu = icmp samesign ugt i32 %i.bvu, 65534    ; 2 uses
  %i.bwv = lshr i32 %i.bwt, 16
  %spec.select.i.i694 = select i1 %i.bwu, i32 %i.bwv, i32 %i.bwt ; 3 uses
  %spec.select11.i.i695 = select i1 %i.bwu, i32 16, i32 0 ; 2 uses
  %.not.i.i696 = icmp samesign ult i32 %spec.select.i.i694, 256 ; 2 uses
  %i.bww = lshr i32 %spec.select.i.i694, 8
  %i.bwx = or disjoint i32 %spec.select11.i.i695, 8
  %.110.i.i697 = select i1 %.not.i.i696, i32 %spec.select.i.i694, i32 %i.bww
  %.1.i.i698 = select i1 %.not.i.i696, i32 %spec.select11.i.i695, i32 %i.bwx
  %i.bwy = zext nneg i32 %.110.i.i697 to i64
  %i.bwz = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bwy
  %i.bxa = load i8, ptr %i.bwz, align 1, !tbaa !28
  %i.bxb = zext i8 %i.bxa to i32
  %i.bxc = add nuw nsw i32 %.1.i.i698, %i.bxb
  %i.bxd = shl nuw nsw i32 %i.bxc, 1              ; 2 uses
  %i.bxe = or disjoint i32 %i.bxd, 1              ; 4 uses
  %i.bxf = icmp slt i32 %i.bxe, %.0.i.i576
  br i1 %i.bxf, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.bxg = shl i32 %.026.i.i575, %i.bxe
  %i.bxh = or i32 %i.bxg, %i.bwt
  %i.bxi = sub nsw i32 %.0.i.i576, %i.bxe
  br label %set_ue_golomb.exit706

bb.lg:                                            ; preds = %bb.le
  %i.bxj = load ptr, ptr %i.aot, align 8, !tbaa !35
  %i.bxk = load ptr, ptr %i.aou, align 8, !tbaa !36 ; 2 uses
  %i.bxl = ptrtoint ptr %i.bxj to i64
  %i.bxm = ptrtoint ptr %i.bxk to i64
  %i.bxn = sub i64 %i.bxl, %i.bxm
  %i.bxo = icmp ugt i64 %i.bxn, 3
  br i1 %i.bxo, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bxp = shl i32 %.026.i.i575, %.0.i.i576
  %i.bxq = sub nsw i32 %i.bxe, %.0.i.i576
  %i.bxr = lshr i32 %i.bwt, %i.bxq
  %i.bxs = or i32 %i.bxr, %i.bxp
  %i.bxt = tail call i32 @llvm.bswap.i32(i32 %i.bxs)
  store i32 %i.bxt, ptr %i.bxk, align 1, !tbaa !28
  %i.bxu = load ptr, ptr %i.aou, align 8, !tbaa !36
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxu, i64 4
  store ptr %i.bxv, ptr %i.aou, align 8, !tbaa !36
  br label %bb.lj

bb.li:                                            ; preds = %bb.lg
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %i.bxw = add nsw i32 %.0.i.i576, 31
  %i.bxx = sub i32 %i.bxw, %i.bxd
  br label %set_ue_golomb.exit706

set_ue_golomb.exit706:                            ; preds = %bb.lf, %bb.lj, %bb.kz, %bb.ld
  %storemerge759 = phi i32 [ %i.bwa, %bb.ld ], [ %i.bwd, %bb.kz ], [ %i.bxh, %bb.lf ], [ %i.bwt, %bb.lj ]
  %storemerge = phi i32 [ %i.bws, %bb.ld ], [ %i.bwe, %bb.kz ], [ %i.bxi, %bb.lf ], [ %i.bxx, %bb.lj ]
  store i32 %storemerge759, ptr %5, align 8, !tbaa !38
  store i32 %storemerge, ptr %i.aov, align 4, !tbaa !37
  %i.bxy = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bxz = zext i8 %i.bxy to i32
  %i.bya = zext nneg i8 %i.bxy to i64
  %notmask.i578 = shl nsw i64 -1, %i.bya
  %i.byb = xor i64 %notmask.i578, -1
  %i.byc = and i64 %i.bvp, %i.byb
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bxz, i64 noundef %i.byc)
  br label %put_ue_coef.exit

bb.lk:                                            ; preds = %put_bits.exit577
  %i.byd = uitofp nsz i64 %i.bvp to float
  %i.bye = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.byf = zext i8 %i.bye to i32
  %i.byg = zext nneg i8 %i.bye to i64
  %i.byh = shl nuw i64 1, %i.byg
  %i.byi = sitofp nsz i64 %i.byh to float
  %i.byj = fdiv nsz float %i.byd, %i.byi
  %i.byk = bitcast float %i.byj to i32
  %i.byl = zext i32 %i.byk to i64
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.byf, i64 noundef %i.byl)
  br label %put_ue_coef.exit

put_ue_coef.exit:                                 ; preds = %put_bits.exit577, %set_ue_golomb.exit706, %bb.lk
  %i.bym = load i32, ptr %i.vr, align 8, !tbaa !125
  %cond1 = icmp eq i32 %i.bym, 0
  br i1 %cond1, label %bb.ll, label %put_ue_coef.exit582

bb.ll:                                            ; preds = %put_ue_coef.exit
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bup, i64 16
  %i.byo = load i64, ptr %i.byn, align 8, !tbaa !128 ; 3 uses
  %i.byp = load i8, ptr %i.apk, align 1, !tbaa !143 ; 2 uses
  switch i8 %i.byp, label %put_ue_coef.exit580 [
    i8 0, label %bb.lm
    i8 1, label %bb.ln
  ]

bb.lm:                                            ; preds = %bb.ll
  %i.byq = load i8, ptr %i.z, align 2, !tbaa !124
  %i.byr = zext nneg i8 %i.byq to i64
  %i.bys = lshr i64 %i.byo, %i.byr
  %i.byt = trunc i64 %i.bys to i32
  call fastcc void @set_ue_golomb(ptr noundef nonnull %5, i32 noundef %i.byt)
  %i.byu = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.byv = zext i8 %i.byu to i32
  %i.byw = zext nneg i8 %i.byu to i64
  %notmask.i579 = shl nsw i64 -1, %i.byw
  %i.byx = xor i64 %notmask.i579, -1
  %i.byy = and i64 %i.byo, %i.byx
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.byv, i64 noundef %i.byy)
  br label %put_ue_coef.exit580thread-pre-split

bb.ln:                                            ; preds = %bb.ll
  %i.byz = uitofp nsz i64 %i.byo to float
  %i.bza = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bzb = zext i8 %i.bza to i32
  %i.bzc = zext nneg i8 %i.bza to i64
  %i.bzd = shl nuw i64 1, %i.bzc
  %i.bze = sitofp nsz i64 %i.bzd to float
  %i.bzf = fdiv nsz float %i.byz, %i.bze
  %i.bzg = bitcast float %i.bzf to i32
  %i.bzh = zext i32 %i.bzg to i64
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bzb, i64 noundef %i.bzh)
  br label %put_ue_coef.exit580thread-pre-split

put_ue_coef.exit580thread-pre-split:              ; preds = %bb.ln, %bb.lm
  %.pr747 = load i8, ptr %i.apk, align 1, !tbaa !143
  br label %put_ue_coef.exit580

put_ue_coef.exit580:                              ; preds = %put_ue_coef.exit580thread-pre-split, %bb.ll
  %i.bzi = phi i8 [ %.pr747, %put_ue_coef.exit580thread-pre-split ], [ %i.byp, %bb.ll ]
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bup, i64 24
  %i.bzk = load i64, ptr %i.bzj, align 8, !tbaa !129 ; 3 uses
  switch i8 %i.bzi, label %put_ue_coef.exit582 [
    i8 0, label %bb.lo
    i8 1, label %bb.lp
  ]

bb.lo:                                            ; preds = %put_ue_coef.exit580
  %i.bzl = load i8, ptr %i.z, align 2, !tbaa !124
  %i.bzm = zext nneg i8 %i.bzl to i64
  %i.bzn = lshr i64 %i.bzk, %i.bzm
  %i.bzo = trunc i64 %i.bzn to i32
  call fastcc void @set_ue_golomb(ptr noundef nonnull %5, i32 noundef %i.bzo)
  %i.bzp = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bzq = zext i8 %i.bzp to i32
  %i.bzr = zext nneg i8 %i.bzp to i64
  %notmask.i581 = shl nsw i64 -1, %i.bzr
  %i.bzs = xor i64 %notmask.i581, -1
  %i.bzt = and i64 %i.bzk, %i.bzs
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bzq, i64 noundef %i.bzt)
  br label %put_ue_coef.exit582

bb.lp:                                            ; preds = %put_ue_coef.exit580
  %i.bzu = uitofp nsz i64 %i.bzk to float
  %i.bzv = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.bzw = zext i8 %i.bzv to i32
  %i.bzx = zext nneg i8 %i.bzv to i64
  %i.bzy = shl nuw i64 1, %i.bzx
  %i.bzz = sitofp nsz i64 %i.bzy to float
  %i.caa = fdiv nsz float %i.bzu, %i.bzz
  %i.cab = bitcast float %i.caa to i32
  %i.cac = zext i32 %i.cab to i64
  call fastcc void @put_bits63(ptr noundef nonnull %5, i32 noundef %i.bzw, i64 noundef %i.cac)
  br label %put_ue_coef.exit582

put_ue_coef.exit582:                              ; preds = %bb.lp, %bb.lo, %put_ue_coef.exit580, %put_ue_coef.exit
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 2 uses
  %exitcond947.not = icmp eq i64 %indvars.iv.next945, 3
  br i1 %exitcond947.not, label %.loopexit810, label %bb.kr, !llvm.loop !104

.loopexit810:                                     ; preds = %put_ue_coef.exit582, %bb.gg
  %i.cad = load ptr, ptr %i.xm, align 8, !tbaa !131
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5144) %i.cad, ptr noundef nonnull align 8 dereferenceable(5144) %i.h, i64 5144, i1 false)
  br label %bb.lq

bb.lq:                                            ; preds = %.loopexit810, %bb.ey
  br i1 %narrow, label %bb.lr, label %bb.zx

bb.lr:                                            ; preds = %bb.lq
  %i.cae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.caf = load ptr, ptr %i.cae, align 8, !tbaa !132 ; 6 uses
  %i.cag = icmp eq i32 %i.arl, 4
  %i.cah = select i1 %i.cag, i32 1073741824, i32 268435456 ; 4 uses
  %i.cai = load i8, ptr %i.k, align 4, !tbaa !159
  %i.caj = zext i8 %i.cai to i32
  call fastcc void @set_ue_golomb(ptr noundef %5, i32 noundef %i.caj)
  %i.cak = load i8, ptr %i.k, align 4, !tbaa !159
  %i.cal = zext i8 %i.cak to i32
  call fastcc void @set_ue_golomb(ptr noundef %5, i32 noundef %i.cal)
  %i.cam = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.can = load i8, ptr %i.cam, align 1, !tbaa !160
  %i.cao = zext i8 %i.can to i32
  call fastcc void @set_ue_golomb(ptr noundef %5, i32 noundef %i.cao)
  br i1 %.not501, label %.preheader808, label %bb.mo

.preheader808:                                    ; preds = %bb.lr
  %i.cap = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %bb.ls

.preheader807:                                    ; preds = %put_sbits.exit
  %i.caq = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.cah to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296 ; 3 uses
  %i.car = load i64, ptr %i.caq, align 4          ; 3 uses
  %.sroa.03.0.extract.trunc.i590 = trunc i64 %i.car to i32
  %.sroa.5.0.extract.shift.i591 = lshr i64 %i.car, 32 ; 2 uses
  %.not.i592 = icmp eq i64 %.sroa.5.0.extract.shift.i591, 0
  %.sroa.5.0.extract.trunc.i593 = trunc nuw i64 %.sroa.5.0.extract.shift.i591 to i32
  %i.cas = icmp eq i32 %i.cah, %.sroa.5.0.extract.trunc.i593
  %or.cond.i594 = select i1 %.not.i592, i1 true, i1 %i.cas
  br i1 %or.cond.i594, label %av_q2den.exit599, label %bb.ly

bb.ls:                                            ; preds = %.preheader808, %put_sbits.exit
  %indvars.iv948 = phi i64 [ 0, %.preheader808 ], [ %indvars.iv.next949, %put_sbits.exit ] ; 2 uses
  %i.cat = getelementptr inbounds nuw [8 x i8], ptr %i.cap, i64 %indvars.iv948
  %i.cau = load i64, ptr %i.cat, align 4          ; 3 uses
  %.sroa.03.0.extract.trunc.i = trunc i64 %i.cau to i32
  %i.cav = and i64 %i.cau, -35188667056128
  %or.cond.i584 = icmp eq i64 %i.cav, 0
  br i1 %or.cond.i584, label %av_q2den.exit, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.caw = tail call i64 @av_mul_q(i64 %i.cau, i64 4294975488) #15 ; 2 uses
end_hunk_1
begin_hunk_2_@try_reuse_ext:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.s = getelementptr inbounds [76 x i8], ptr %0, i64 %i.p ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, ptr noundef nonnull align 4 dereferenceable(76) %i.s, i64 76, i1 false), !tbaa.struct !176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.s, ptr noundef nonnull align 4 dereferenceable(76) %i.q, i64 76, i1 false), !tbaa.struct !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.q, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false), !tbaa.struct !176
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.pre.pre = load i32, ptr %i.f, align 4, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %i.n, %bb.c ]
  %i.t = add nsw i32 %.02950, 1
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit42, label %.lr.ph, !llvm.loop !174

.loopexit:                                        ; preds = %ff_dovi_rpu_extension_is_static.exit, %bb.e
  %i.u = phi i32 [ %.pre, %bb.e ], [ %i.n, %ff_dovi_rpu_extension_is_static.exit ]
  %.03045 = phi i32 [ %i.r, %bb.e ], [ %.02950, %ff_dovi_rpu_extension_is_static.exit ]
  %.1 = phi i32 [ %i.t, %bb.e ], [ %.02950, %ff_dovi_rpu_extension_is_static.exit ]
  %i.v = icmp eq i32 %.03045, %i.u
  br i1 %i.v, label %.loopexit42, label %.loopexit.ff_dovi_rpu_extension_is_static.exit.thread_crit_edge

.loopexit.ff_dovi_rpu_extension_is_static.exit.thread_crit_edge: ; preds = %.loopexit
  %.pre60 = load i32, ptr %i.a, align 8, !tbaa !29
  br label %ff_dovi_rpu_extension_is_static.exit.thread

ff_dovi_rpu_extension_is_static.exit.thread:      ; preds = %.loopexit.ff_dovi_rpu_extension_is_static.exit.thread_crit_edge, %bb.b
  %i.w = phi i32 [ %.pre60, %.loopexit.ff_dovi_rpu_extension_is_static.exit.thread_crit_edge ], [ %i.g, %bb.b ] ; 2 uses
  %.2.ph = phi i32 [ %.1, %.loopexit.ff_dovi_rpu_extension_is_static.exit.thread_crit_edge ], [ %.02950, %bb.b ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next58, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !175

._crit_edge:                                      ; preds = %ff_dovi_rpu_extension_is_static.exit.thread, %bb.a
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %.2.ph, %ff_dovi_rpu_extension_is_static.exit.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !40
  %i.ab = icmp eq i32 %.029.lcssa, %i.aa
  %i.ac = zext i1 %i.ab to i32
  br label %.loopexit42

.loopexit42:                                      ; preds = %.loopexit, %bb.f, %._crit_edge
  %.234 = phi i32 [ %i.ac, %._crit_edge ], [ 0, %bb.f ], [ 0, %.loopexit ]
  ret i32 %.234
}

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @put_bits(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483639, -2147483648) %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37   ; 5 uses
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.a, %1
  %i.f = or i32 %i.e, %2
  %i.g = sub nsw i32 %i.c, %1
  br label %put_bits_no_assert.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = shl i32 %i.a, %i.c
  %i.q = sub nsw i32 %1, %i.c
  %i.r = lshr i32 %2, %i.q
  %i.s = or i32 %i.r, %i.p
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.k, align 1, !tbaa !28
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.j, align 8, !tbaa !36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %reass.sub = sub i32 %i.c, %1
  %i.w = add i32 %reass.sub, 32
  br label %put_bits_no_assert.exit

put_bits_no_assert.exit:                          ; preds = %bb.b, %bb.f
  %.026.i = phi i32 [ %i.f, %bb.b ], [ %2, %bb.f ]
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.w, %bb.f ]
  store i32 %.026.i, ptr %0, align 8, !tbaa !38
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !37
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ue_golomb(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 256
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr @ff_ue_golomb_len, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i32                      ; 5 uses
  %i.f = add nsw i32 %1, 1                        ; 3 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 5 uses
  %i.j = icmp sgt i32 %i.i, %i.e
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = shl i32 %i.g, %i.e
  %i.l = or i32 %i.k, %i.f
  %i.m = sub nuw nsw i32 %i.i, %i.e
  br label %put_bits.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = shl i32 %i.g, %i.i
  %i.w = sub nsw i32 %i.e, %i.i
  %i.x = lshr i32 %i.f, %i.w
  %i.y = or i32 %i.x, %i.v
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %i.z, ptr %i.q, align 1, !tbaa !28
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %reass.sub = sub i32 %i.i, %i.e
  %i.ac = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.c, %bb.g
  %.026.i.i = phi i32 [ %i.l, %bb.c ], [ %i.f, %bb.g ]
  %.0.i.i = phi i32 [ %i.m, %bb.c ], [ %i.ac, %bb.g ]
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !38
  store i32 %.0.i.i, ptr %i.h, align 4, !tbaa !37
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.ad = add nuw nsw i32 %1, 1                   ; 5 uses
  %i.ae = icmp samesign ugt i32 %1, 65534         ; 2 uses
  %i.af = lshr i32 %i.ad, 16
  %spec.select.i = select i1 %i.ae, i32 %i.af, i32 %i.ad ; 3 uses
  %spec.select11.i = select i1 %i.ae, i32 16, i32 0 ; 2 uses
  %.not.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.ag = lshr i32 %spec.select.i, 8
  %i.ah = or disjoint i32 %spec.select11.i, 8
  %.110.i = select i1 %.not.i, i32 %spec.select.i, i32 %i.ag
  %.1.i = select i1 %.not.i, i32 %spec.select11.i, i32 %i.ah
  %i.ai = zext nneg i32 %.110.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = add nuw nsw i32 %.1.i, %i.al
  %i.an = shl nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ao = or disjoint i32 %i.an, 1                ; 4 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !37 ; 5 uses
  %i.as = icmp slt i32 %i.ao, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = shl i32 %i.ap, %i.ao
  %i.au = or i32 %i.at, %i.ad
  %i.av = sub nsw i32 %i.ar, %i.ao
  br label %put_bits.exit10

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ugt i64 %i.bc, 3
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = shl i32 %i.ap, %i.ar
  %i.bf = sub nsw i32 %i.ao, %i.ar
  %i.bg = lshr i32 %i.ad, %i.bf
  %i.bh = or i32 %i.bg, %i.be
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  store i32 %i.bi, ptr %i.az, align 1, !tbaa !28
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !36
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = sub i32 %i.ar, %i.an
  %i.bm = add i32 %i.bl, 31
  br label %put_bits.exit10

put_bits.exit10:                                  ; preds = %bb.i, %bb.m
  %.026.i.i8 = phi i32 [ %i.au, %bb.i ], [ %i.ad, %bb.m ]
  %.0.i.i9 = phi i32 [ %i.av, %bb.i ], [ %i.bm, %bb.m ]
  store i32 %.026.i.i8, ptr %0, align 8, !tbaa !38
  store i32 %.0.i.i9, ptr %i.aq, align 4, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %put_bits.exit10, %put_bits.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ff_dovi_guess_profile_hevc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @put_bits32(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !38
  %i.l = zext i32 %i.k to i64
  %i.m = zext nneg i32 %i.b to i64
  %i.n = shl i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = sub nsw i32 32, %i.b
  %i.q = lshr i32 %1, %i.p
  %i.r = or i32 %i.q, %i.o
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %i.f, align 1, !tbaa !28
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %i.e, align 8, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !38
  store i32 %i.b, ptr %i.a, align 4, !tbaa !37
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @align_put_bits(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.d = icmp sgt i32 %i.b, 7
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 7
  %i.f = shl i32 %i.c, %i.e
  %i.g = and i32 %i.b, 2147483640
  br label %put_bits.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = shl i32 %i.c, %i.b
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  store i32 %i.q, ptr %i.k, align 1, !tbaa !28
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %i.j, align 8, !tbaa !36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %reass.sub.i = and i32 %i.b, -8
  %i.t = add i32 %reass.sub.i, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.b, %bb.f
  %.026.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.f ]
  %.0.i.i = phi i32 [ %i.g, %bb.b ], [ %i.t, %bb.f ]
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !38
  store i32 %.0.i.i, ptr %i.a, align 4, !tbaa !37
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @flush_put_bits(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %i.c = icmp slt i32 %i.b, 32
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !38
  %i.e = shl i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 160) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = load i32, ptr %0, align 8, !tbaa !38
  %i.l = lshr i32 %i.k, 24
  %i.m = trunc nuw i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !36
  store i8 %i.m, ptr %i.h, align 1, !tbaa !28
  %i.o = load i32, ptr %0, align 8, !tbaa !38
  %i.p = shl i32 %i.o, 8
  store i32 %i.p, ptr %0, align 8, !tbaa !38
  %i.q = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %i.r = add nsw i32 %i.q, 8
  store i32 %i.r, ptr %i.a, align 4, !tbaa !37
  %i.s = icmp slt i32 %i.q, 24
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i32 32, ptr %i.a, align 4, !tbaa !37
  store i32 0, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #4

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #4

declare void @ff_copy_bits(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4
end_hunk_2
