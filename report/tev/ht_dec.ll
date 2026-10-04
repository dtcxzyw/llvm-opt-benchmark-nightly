Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ht_dec?download=true
inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a
  %.51449 = phi i32 [ %.014441915, %.lr.ph1918 ], [ %i.asa, %bb.fu ], [ %.31447, %bb.fr ] ; 2 uses
  %.51436 = phi i32 [ %.014311916, %.lr.ph1918 ], [ %i.asb, %bb.fu ], [ %.31434, %bb.fr ] ; 3 uses
  %i.asc = add nuw nsw i32 %.014561913, 1         ; 2 uses
  %i.asd = shl i32 %.014571912, 4
  %i.ase = icmp slt i32 %i.asc, %i.aqi
  br i1 %i.ase, label %.lr.ph1918, label %._crit_edge1919, !llvm.loop !54

._crit_edge1919:                                  ; preds = %bb.fv
  %i.asf = shl nuw i32 65535, %i.aqa
  %i.asg = and i32 %.101469, %i.asf
  %.not1655.not = icmp eq i32 %i.asg, 0
  br i1 %.not1655.not, label %.loopexit1840, label %.lr.ph1929.preheader

.lr.ph1929.preheader:                             ; preds = %._crit_edge1919
  %i.ash = trunc nuw nsw i64 %indvars.iv2037 to i32
  br label %.lr.ph1929

.lr.ph1929:                                       ; preds = %.lr.ph1929.preheader, %bb.ge
  %.014261928 = phi ptr [ %i.atu, %bb.ge ], [ %gep, %.lr.ph1929.preheader ] ; 6 uses
  %.014271927 = phi i32 [ %i.att, %bb.ge ], [ %i.ash, %.lr.ph1929.preheader ]
  %.014281926 = phi i32 [ %i.atv, %bb.ge ], [ %i.aqb, %.lr.ph1929.preheader ] ; 3 uses
  %.614371925 = phi i32 [ %.111442, %bb.ge ], [ %.51436, %.lr.ph1929.preheader ] ; 3 uses
  %.614501924 = phi i32 [ %.111455, %bb.ge ], [ %.51449, %.lr.ph1929.preheader ] ; 4 uses
  %i.asi = and i32 %.014281926, %.101469
  %i.asj = icmp eq i32 %i.asi, 0
  br i1 %i.asj, label %bb.ge, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph1929
  %i.ask = and i32 %.014281926, 286331153         ; 4 uses
  %i.asl = and i32 %i.ask, %.101469
  %.not1656 = icmp eq i32 %i.asl, 0
  br i1 %.not1656, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.asm = shl i32 %.614501924, 31
  %i.asn = load i32, ptr %.014261928, align 4, !tbaa !12
  %i.aso = or i32 %i.asm, %i.asn
  %i.asp = or i32 %i.aso, %i.hx
  store i32 %i.asp, ptr %.014261928, align 4, !tbaa !12
  %i.asq = lshr i32 %.614501924, 1
  %i.asr = add i32 %.614371925, 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.71451 = phi i32 [ %i.asq, %bb.fx ], [ %.614501924, %bb.fw ] ; 3 uses
  %.71438 = phi i32 [ %i.asr, %bb.fx ], [ %.614371925, %bb.fw ] ; 2 uses
  %i.ass = shl nuw nsw i32 %i.ask, 1
  %i.ast = and i32 %i.ass, %.101469
  %.not1657 = icmp eq i32 %i.ast, 0
  br i1 %.not1657, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.asu = shl i32 %.71451, 31
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.014261928, i64 %i.ho ; 2 uses
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !12
  %i.asx = or i32 %i.asu, %i.asw
  %i.asy = or i32 %i.asx, %i.hx
  store i32 %i.asy, ptr %i.asv, align 4, !tbaa !12
  %i.asz = lshr i32 %.71451, 1
  %i.ata = add i32 %.71438, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.81452 = phi i32 [ %i.asz, %bb.fz ], [ %.71451, %bb.fy ] ; 3 uses
  %.81439 = phi i32 [ %i.ata, %bb.fz ], [ %.71438, %bb.fy ] ; 2 uses
  %i.atb = shl nuw nsw i32 %i.ask, 2
  %i.atc = and i32 %i.atb, %.101469
  %.not1658 = icmp eq i32 %i.atc, 0
  br i1 %.not1658, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.atd = shl i32 %.81452, 31
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %.014261928, i64 %i.hs ; 2 uses
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !12
  %i.atg = or i32 %i.atd, %i.atf
  %i.ath = or i32 %i.atg, %i.hx
  store i32 %i.ath, ptr %i.ate, align 4, !tbaa !12
  %i.ati = lshr i32 %.81452, 1
  %i.atj = add i32 %.81439, 1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.91453 = phi i32 [ %i.ati, %bb.gb ], [ %.81452, %bb.ga ] ; 3 uses
  %.91440 = phi i32 [ %i.atj, %bb.gb ], [ %.81439, %bb.ga ] ; 2 uses
  %i.atk = shl nuw i32 %i.ask, 3
  %i.atl = and i32 %i.atk, %.101469
  %.not1659 = icmp eq i32 %i.atl, 0
  br i1 %.not1659, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.atm = shl i32 %.91453, 31
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %.014261928, i64 %i.hu ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !12
  %i.atp = or i32 %i.atm, %i.ato
  %i.atq = or i32 %i.atp, %i.hx
  store i32 %i.atq, ptr %i.atn, align 4, !tbaa !12
  %i.atr = lshr i32 %.91453, 1
  %i.ats = add i32 %.91440, 1
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd, %.lr.ph1929
  %.111455 = phi i32 [ %.614501924, %.lr.ph1929 ], [ %i.atr, %bb.gd ], [ %.91453, %bb.gc ]
  %.111442 = phi i32 [ %.614371925, %.lr.ph1929 ], [ %i.ats, %bb.gd ], [ %.91440, %bb.gc ] ; 2 uses
  %i.att = add nuw nsw i32 %.014271927, 1         ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.014261928, i64 4
  %i.atv = shl i32 %.014281926, 4
  %i.atw = icmp slt i32 %i.att, %i.aqi
  br i1 %i.atw, label %.lr.ph1929, label %.loopexit1840, !llvm.loop !55

.loopexit1840:                                    ; preds = %bb.ge, %bb.fe, %._crit_edge1919
  %.11460.lcssa2163 = phi i32 [ %.101469, %._crit_edge1919 ], [ %.014591932, %bb.fe ], [ %.101469, %bb.ge ] ; 4 uses
  %.11472.lcssa2162 = phi i32 [ %.101481, %._crit_edge1919 ], [ %.014711931, %bb.fe ], [ %.101481, %bb.ge ]
  %.121443 = phi i32 [ %.51436, %._crit_edge1919 ], [ 0, %bb.fe ], [ %.111442, %bb.ge ] ; 2 uses
  %i.atx = load i64, ptr %i.hy, align 8, !tbaa !22
  %i.aty = zext nneg i32 %.121443 to i64
  %i.atz = lshr i64 %i.atx, %i.aty
  store i64 %i.atz, ptr %i.hy, align 8, !tbaa !22
  %i.aua = load i32, ptr %i.hz, align 8, !tbaa !23
  %i.aub = sub i32 %i.aua, %.121443
  store i32 %i.aub, ptr %i.hz, align 8, !tbaa !23
  br i1 %i.apy, label %.thread2164, label %bb.fe

.thread2164:                                      ; preds = %.loopexit1840
  %i.auc = lshr i32 %.11460.lcssa2163, 28         ; 2 uses
  %i.aud = lshr i32 %.11460.lcssa2163, 29
  %i.aue = shl nuw nsw i32 %i.auc, 1
  %i.auf = and i32 %i.aue, 14
  %i.aug = or i32 %i.aud, %i.auf
  %i.auh = or i32 %i.aug, %i.auc
  %i.aui = load i32, ptr %i.apu, align 4, !tbaa !12
  %i.auj = xor i32 %i.aui, -1
  %i.auk = and i32 %i.auh, %i.auj
  %i.aul = load i32, ptr %i.apv, align 4, !tbaa !12
  %i.aum = or i32 %i.aul, %i.auk
  store i32 %i.aum, ptr %i.apv, align 4, !tbaa !12
  br label %.loopexit1842

.loopexit1842:                                    ; preds = %.thread2164, %bb.fd
  %.111470 = phi i32 [ 0, %bb.fd ], [ %.11460.lcssa2163, %.thread2164 ]
  %i.aun = load i32, ptr %.114911935, align 4, !tbaa !12
  %i.auo = or i32 %i.aun, %.111470                ; 2 uses
  %i.aup = lshr i32 %i.auo, 3
  %i.auq = and i32 %i.aup, 286331153              ; 4 uses
  %i.aur = shl i32 %i.auq, 4
  %i.aus = lshr i32 %i.auq, 4
  %i.aut = or i32 %i.aus, %i.aur
  %i.auu = or i32 %i.aut, %i.auq
  %.not1654 = icmp eq i64 %indvars.iv2040, 0
  br i1 %.not1654, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %.loopexit1842
  %i.auv = shl i32 %i.auq, 28
  %i.auw = getelementptr inbounds i8, ptr %.114871937, i64 -4
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !12
  %i.auy = xor i32 %i.aux, -1
  %i.auz = and i32 %i.auv, %i.auy
  %i.ava = getelementptr inbounds i8, ptr %.014851938, i64 -4 ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !12
  %i.avc = or i32 %i.avb, %i.auz
  store i32 %i.avc, ptr %i.ava, align 4, !tbaa !12
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.loopexit1842
  %i.avd = load i32, ptr %.114871937, align 4, !tbaa !12
  %i.ave = xor i32 %i.avd, -1
  %i.avf = and i32 %i.auu, %i.ave
  %i.avg = load i32, ptr %.014851938, align 4, !tbaa !12
  %i.avh = or i32 %i.avg, %i.avf
  store i32 %i.avh, ptr %.014851938, align 4, !tbaa !12
  %i.avi = lshr i32 %i.auo, 31
  %i.avj = getelementptr inbounds nuw i8, ptr %.114871937, i64 4 ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !12
  %i.avl = xor i32 %i.avk, -1
  %i.avm = and i32 %i.avi, %i.avl
  %i.avn = getelementptr inbounds nuw i8, ptr %.014851938, i64 4 ; 3 uses
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !12
  %i.avp = or i32 %i.avo, %i.avm
  store i32 %i.avp, ptr %i.avn, align 4, !tbaa !12
  %indvars.iv.next2041 = add nuw nsw i64 %indvars.iv2040, 8 ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %.114911935, i64 4
  %i.avr = getelementptr inbounds nuw i8, ptr %.114891936, i64 4
  %i.avs = trunc nuw i64 %indvars.iv.next2041 to i32
  %i.avt = icmp sgt i32 %i.ek, %i.avs
  br i1 %i.avt, label %bb.fd, label %._crit_edge1942, !llvm.loop !56

._crit_edge1942:                                  ; preds = %bb.gg, %bb.fa, %._crit_edge1909
  %i.avu = phi ptr [ %i.aoq, %bb.fa ], [ %i.aot, %._crit_edge1909 ], [ %i.aot, %bb.gg ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.avu, i8 0, i64 %i.ie, i1 false)
  br label %.thread1807

.thread1807:                                      ; preds = %._crit_edge1901.thread, %._crit_edge1884, %._crit_edge1942, %._crit_edge1901
  %i.avv = icmp slt i64 %indvars.iv.next2044.pre-phi, %i.if
  br i1 %i.avv, label %bb.cp, label %._crit_edge1947, !llvm.loop !57

._crit_edge1947:                                  ; preds = %.thread1807, %.preheader1844
  br i1 %i.gt, label %bb.gh, label %.loopexit1836

bb.gh:                                            ; preds = %._crit_edge1947
  %i.avw = and i32 %i.en, 3
  %.off = add nsw i32 %i.avw, -1                  ; 2 uses
  br i1 %i.gw, label %13, label %.loopexit1838

13:                                               ; preds = %bb.gh
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.gi, label %.loopexit1837

bb.gi:                                            ; preds = %13
  %i.avx = and i32 %i.en, 16777212
  %i.avy = mul nsw i32 %i.avx, %i.ek
  %i.avz = sext i32 %i.avy to i64
  %i.awa = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.avz
  %i.awb = add i32 %i.fq, -2
  %i.awc = shl nuw i32 1, %i.awb                  ; 4 uses
  br i1 %i.gz, label %.lr.ph1955, label %.loopexit1837

.lr.ph1955:                                       ; preds = %bb.gi
  %i.awd = and i32 %i.en, 4
  %.not1622 = icmp eq i32 %i.awd, 0
  %i.awe = select i1 %.not1622, ptr %i.eo, ptr %i.ep
  %i.awf = add i32 %i.fq, -1                      ; 4 uses
  %i.awg = zext nneg i32 %i.ek to i64
  %i.awh = shl nuw nsw i32 %i.ek, 1
  %i.awi = zext nneg i32 %i.awh to i64
  %i.awj = mul nuw nsw i32 %i.ek, 3
  %i.awk = zext nneg i32 %i.awj to i64
  %i.awl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.gj

bb.gj:                                            ; preds = %.lr.ph1955, %.split1558
  %indvars.iv2047 = phi i64 [ 0, %.lr.ph1955 ], [ %indvars.iv.next2048, %.split1558 ] ; 2 uses
  %.014241952 = phi ptr [ %i.awe, %.lr.ph1955 ], [ %i.awo, %.split1558 ] ; 2 uses
  %i.awn = call fastcc i32 @rev_fetch_mrp(ptr noundef %12)
  %i.awo = getelementptr inbounds nuw i8, ptr %.014241952, i64 4
  %i.awp = load i32, ptr %.014241952, align 4, !tbaa !12 ; 7 uses
  %.not1643 = icmp eq i32 %i.awp, 0
  br i1 %.not1643, label %.split1558, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.awa, i64 %indvars.iv2047
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gu
  %.014141951 = phi i32 [ 0, %bb.gk ], [ %i.ayg, %bb.gu ]
  %.014151950 = phi ptr [ %i.awq, %bb.gk ], [ %i.ayh, %bb.gu ] ; 6 uses
  %.014161949 = phi i32 [ 15, %bb.gk ], [ %i.ayf, %bb.gu ] ; 3 uses
  %.014171948 = phi i32 [ %i.awn, %bb.gk ], [ %.51422, %bb.gu ] ; 4 uses
  %i.awr = and i32 %.014161949, %i.awp
  %.not1644 = icmp eq i32 %i.awr, 0
  br i1 %.not1644, label %bb.gu, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aws = and i32 %.014161949, 286331153         ; 4 uses
  %i.awt = and i32 %i.aws, %i.awp
  %.not1645 = icmp eq i32 %i.awt, 0
  br i1 %.not1645, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.awu = and i32 %.014171948, 1
  %i.awv = xor i32 %i.awu, 1
  %i.aww = shl nuw i32 %i.awv, %i.awf
  %i.awx = load i32, ptr %.014151950, align 4, !tbaa !12
  %i.awy = xor i32 %i.awx, %i.aww
  %i.awz = or i32 %i.awy, %i.awc
  store i32 %i.awz, ptr %.014151950, align 4, !tbaa !12
  %i.axa = lshr i32 %.014171948, 1
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.11418 = phi i32 [ %i.axa, %bb.gn ], [ %.014171948, %bb.gm ] ; 3 uses
  %i.axb = shl nuw nsw i32 %i.aws, 1
  %i.axc = and i32 %i.axb, %i.awp
  %.not1646 = icmp eq i32 %i.axc, 0
  br i1 %.not1646, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.axd = and i32 %.11418, 1
  %i.axe = xor i32 %i.axd, 1
  %i.axf = shl nuw i32 %i.axe, %i.awf
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %.014151950, i64 %i.awg ; 2 uses
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !12
  %i.axi = xor i32 %i.axh, %i.axf
  %i.axj = or i32 %i.axi, %i.awc
  store i32 %i.axj, ptr %i.axg, align 4, !tbaa !12
  %i.axk = lshr i32 %.11418, 1
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.21419 = phi i32 [ %i.axk, %bb.gp ], [ %.11418, %bb.go ] ; 3 uses
  %i.axl = shl nuw nsw i32 %i.aws, 2
  %i.axm = and i32 %i.axl, %i.awp
  %.not1647 = icmp eq i32 %i.axm, 0
  br i1 %.not1647, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.axn = and i32 %.21419, 1
  %i.axo = xor i32 %i.axn, 1
  %i.axp = shl nuw i32 %i.axo, %i.awf
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %.014151950, i64 %i.awi ; 2 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !12
  %i.axs = xor i32 %i.axr, %i.axp
  %i.axt = or i32 %i.axs, %i.awc
  store i32 %i.axt, ptr %i.axq, align 4, !tbaa !12
  %i.axu = lshr i32 %.21419, 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.31420 = phi i32 [ %i.axu, %bb.gr ], [ %.21419, %bb.gq ] ; 3 uses
  %i.axv = shl nuw i32 %i.aws, 3
  %i.axw = and i32 %i.axv, %i.awp
  %.not1648 = icmp eq i32 %i.axw, 0
  br i1 %.not1648, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.axx = and i32 %.31420, 1
  %i.axy = xor i32 %i.axx, 1
  %i.axz = shl nuw i32 %i.axy, %i.awf
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %.014151950, i64 %i.awk ; 2 uses
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !12
  %i.ayc = xor i32 %i.ayb, %i.axz
  %i.ayd = or i32 %i.ayc, %i.awc
  store i32 %i.ayd, ptr %i.aya, align 4, !tbaa !12
  %i.aye = lshr i32 %.31420, 1
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt, %bb.gl
  %.51422 = phi i32 [ %.014171948, %bb.gl ], [ %i.aye, %bb.gt ], [ %.31420, %bb.gs ]
  %i.ayf = shl i32 %.014161949, 4
  %i.ayg = add nuw nsw i32 %.014141951, 1         ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %.014151950, i64 4
  %exitcond2046.not = icmp eq i32 %i.ayg, 8
  br i1 %exitcond2046.not, label %.split1560, label %bb.gl, !llvm.loop !58

.split1560:                                       ; preds = %bb.gu
  %i.ayi = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.awp)
  br label %.split1558

.split1558:                                       ; preds = %bb.gj, %.split1560
  %phi.call1561 = phi i32 [ %i.ayi, %.split1560 ], [ 0, %bb.gj ] ; 2 uses
  %i.ayj = load i64, ptr %i.awl, align 8, !tbaa !19
  %i.ayk = zext nneg i32 %phi.call1561 to i64
  %i.ayl = lshr i64 %i.ayj, %i.ayk
  store i64 %i.ayl, ptr %i.awl, align 8, !tbaa !19
  %i.aym = load i32, ptr %i.awm, align 8, !tbaa !20
  %i.ayn = sub i32 %i.aym, %phi.call1561
  store i32 %i.ayn, ptr %i.awm, align 8, !tbaa !20
  %indvars.iv.next2048 = add nuw nsw i64 %indvars.iv2047, 8 ; 2 uses
  %i.ayo = trunc nuw i64 %indvars.iv.next2048 to i32
  %i.ayp = icmp sgt i32 %i.ek, %i.ayo
  br i1 %i.ayp, label %bb.gj, label %.loopexit1838, !llvm.loop !59

.loopexit1838:                                    ; preds = %.split1558, %bb.gh
  %switch1772 = icmp ult i32 %.off, 2
  %brmerge.not = and i1 %switch1772, %i.gz
  br i1 %brmerge.not, label %.lr.ph1961.preheader, label %.loopexit1837

.lr.ph1961.preheader:                             ; preds = %.loopexit1838
  %i.ayq = and i32 %i.en, 4
  %.not1623 = icmp eq i32 %i.ayq, 0               ; 2 uses
  %i.ayr = select i1 %.not1623, ptr %i.eq, ptr %i.er ; 7 uses
  %i.ays = select i1 %.not1623, ptr %i.eo, ptr %i.ep ; 8 uses
  %i.ayt = xor i32 %i.ej, -1
  %i.ayu = add i32 %i.ei, %i.ayt                  ; 2 uses
  %i.ayv = zext i32 %i.ayu to i64                 ; 2 uses
  %i.ayw = lshr i64 %i.ayv, 3
  %i.ayx = add nuw nsw i64 %i.ayw, 1              ; 2 uses
  %min.iters.check2257 = icmp ult i32 %i.ayu, 56
  br i1 %min.iters.check2257, label %.lr.ph1961.preheader2367, label %vector.memcheck2258

vector.memcheck2258:                              ; preds = %.lr.ph1961.preheader
  %i.ayy = lshr i64 %i.ayv, 1
  %i.ayz = and i64 %i.ayy, 2147483644             ; 2 uses
  %i.aza = add nuw nsw i64 %i.ayz, 4              ; 2 uses
  %i.azb = getelementptr i8, ptr %i.ayr, i64 %i.aza ; 2 uses
  %i.azc = getelementptr i8, ptr %i.ays, i64 %i.aza
  %i.azd = getelementptr nuw i8, ptr %i.ays, i64 4
  %i.aze = getelementptr i8, ptr %i.ays, i64 %i.ayz
  %i.azf = getelementptr i8, ptr %i.aze, i64 8
  %bound02259 = icmp ult ptr %i.ayr, %i.azc
  %bound12260 = icmp ult ptr %i.ays, %i.azb
  %found.conflict2261 = and i1 %bound02259, %bound12260
  %bound02262 = icmp ult ptr %i.ayr, %i.azf
  %bound12263 = icmp ult ptr %i.azd, %i.azb
  %found.conflict2264 = and i1 %bound02262, %bound12263
  %conflict.rdx2265 = or i1 %found.conflict2261, %found.conflict2264
  br i1 %conflict.rdx2265, label %.lr.ph1961.preheader2367, label %vector.ph2266

vector.ph2266:                                    ; preds = %vector.memcheck2258
  %n.vec2267 = and i64 %i.ayx, 1073741820         ; 4 uses
  %i.azg = trunc nuw nsw i64 %n.vec2267 to i32
  %i.azh = shl i32 %i.azg, 3
  %i.azi = shl nuw nsw i64 %n.vec2267, 2          ; 2 uses
  %i.azj = getelementptr i8, ptr %i.ayr, i64 %i.azi
  %i.azk = getelementptr i8, ptr %i.ays, i64 %i.azi
  br label %vector.body2268

vector.body2268:                                  ; preds = %vector.body2268, %vector.ph2266
  %index2269 = phi i64 [ 0, %vector.ph2266 ], [ %index.next2275, %vector.body2268 ] ; 2 uses
  %vector.recur2270 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2266 ], [ %wide.load2273, %vector.body2268 ]
  %i.azl = shl i64 %index2269, 2                  ; 2 uses
  %next.gep2271 = getelementptr i8, ptr %i.ayr, i64 %i.azl ; 2 uses
  %next.gep2272 = getelementptr i8, ptr %i.ays, i64 %i.azl ; 2 uses
  %wide.load2273 = load <4 x i32>, ptr %next.gep2272, align 4, !tbaa !12, !alias.scope !124 ; 7 uses
  %i.azm = shufflevector <4 x i32> %vector.recur2270, <4 x i32> %wide.load2273, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2273, <4 x i32> %i.azm, <4 x i32> splat (i32 4))
  %i.azo = lshr <4 x i32> %wide.load2273, splat (i32 4)
  %i.azp = or <4 x i32> %i.azo, %i.azn
  %i.azq = or <4 x i32> %i.azp, %wide.load2273    ; 2 uses
  store <4 x i32> %i.azq, ptr %next.gep2271, align 4, !tbaa !12, !alias.scope !125, !noalias !126
  %i.azr = getelementptr inbounds nuw i8, ptr %next.gep2272, i64 4
  %wide.load2274 = load <4 x i32>, ptr %i.azr, align 4, !tbaa !12, !alias.scope !127
  %i.azs = shl <4 x i32> %wide.load2274, splat (i32 28)
  %i.azt = or <4 x i32> %i.azq, %i.azs            ; 3 uses
  %i.azu = shl <4 x i32> %i.azt, splat (i32 1)
  %i.azv = and <4 x i32> %i.azu, splat (i32 -286331154)
  %i.azw = lshr <4 x i32> %i.azt, splat (i32 1)
  %i.azx = and <4 x i32> %i.azw, splat (i32 2004318071)
  %i.azy = or <4 x i32> %i.azx, %i.azv
  %i.azz = or <4 x i32> %i.azy, %i.azt
  %i.baa = xor <4 x i32> %wide.load2273, splat (i32 -1)
  %i.bab = and <4 x i32> %i.azz, %i.baa
  store <4 x i32> %i.bab, ptr %next.gep2271, align 4, !tbaa !12, !alias.scope !125, !noalias !126
  %index.next2275 = add nuw i64 %index2269, 4     ; 2 uses
  %i.bac = icmp eq i64 %index.next2275, %n.vec2267
  br i1 %i.bac, label %middle.block2276, label %vector.body2268, !llvm.loop !64

middle.block2276:                                 ; preds = %vector.body2268
  %vector.recur.extract2277 = extractelement <4 x i32> %wide.load2273, i64 3
  %cmp.n2278 = icmp eq i64 %i.ayx, %n.vec2267
  br i1 %cmp.n2278, label %.loopexit1837, label %.lr.ph1961.preheader2367

.lr.ph1961.preheader2367:                         ; preds = %vector.memcheck2258, %.lr.ph1961.preheader, %middle.block2276
  %.014101959.ph = phi i32 [ 0, %vector.memcheck2258 ], [ 0, %.lr.ph1961.preheader ], [ %i.azh, %middle.block2276 ]
  %.014111958.ph = phi i32 [ 0, %vector.memcheck2258 ], [ 0, %.lr.ph1961.preheader ], [ %vector.recur.extract2277, %middle.block2276 ]
  %.014121957.ph = phi ptr [ %i.ayr, %vector.memcheck2258 ], [ %i.ayr, %.lr.ph1961.preheader ], [ %i.azj, %middle.block2276 ]
  %.014131956.ph = phi ptr [ %i.ays, %vector.memcheck2258 ], [ %i.ays, %.lr.ph1961.preheader ], [ %i.azk, %middle.block2276 ]
  br label %.lr.ph1961

.lr.ph1961:                                       ; preds = %.lr.ph1961.preheader2367, %.lr.ph1961
  %.014101959 = phi i32 [ %i.bau, %.lr.ph1961 ], [ %.014101959.ph, %.lr.ph1961.preheader2367 ]
  %.014111958 = phi i32 [ %i.bad, %.lr.ph1961 ], [ %.014111958.ph, %.lr.ph1961.preheader2367 ]
  %.014121957 = phi ptr [ %i.bav, %.lr.ph1961 ], [ %.014121957.ph, %.lr.ph1961.preheader2367 ] ; 3 uses
  %.014131956 = phi ptr [ %i.bai, %.lr.ph1961 ], [ %.014131956.ph, %.lr.ph1961.preheader2367 ] ; 2 uses
  %i.bad = load i32, ptr %.014131956, align 4, !tbaa !12 ; 5 uses
  %i.bae = tail call i32 @llvm.fshl.i32(i32 %i.bad, i32 %.014111958, i32 4)
  %i.baf = lshr i32 %i.bad, 4
  %i.bag = or i32 %i.baf, %i.bae
  %i.bah = or i32 %i.bag, %i.bad                  ; 2 uses
  store i32 %i.bah, ptr %.014121957, align 4, !tbaa !12
  %i.bai = getelementptr inbounds nuw i8, ptr %.014131956, i64 4 ; 2 uses
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !12
  %i.bak = shl i32 %i.baj, 28
  %i.bal = or i32 %i.bah, %i.bak                  ; 3 uses
  %i.bam = shl i32 %i.bal, 1
  %i.ban = and i32 %i.bam, -286331154
  %i.bao = lshr i32 %i.bal, 1
  %i.bap = and i32 %i.bao, 2004318071
  %i.baq = or i32 %i.bap, %i.ban
  %i.bar = or i32 %i.baq, %i.bal
  %i.bas = xor i32 %i.bad, -1
  %i.bat = and i32 %i.bar, %i.bas
  store i32 %i.bat, ptr %.014121957, align 4, !tbaa !12
  %i.bau = add nuw nsw i32 %.014101959, 8         ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.014121957, i64 4
  %i.baw = icmp slt i32 %i.bau, %i.ek
  br i1 %i.baw, label %.lr.ph1961, label %.loopexit1837, !llvm.loop !65

.loopexit1837:                                    ; preds = %.lr.ph1961, %middle.block2276, %.loopexit1838, %bb.gi, %13
  %i.bax = icmp sgt i32 %i.en, 6
  %i.bay = add nuw nsw i32 %i.en, 1
  %i.baz = and i32 %i.bay, 3
  %.neg1833 = add i32 %i.en, -3
  %i.bba = sub i32 %.neg1833, %i.baz
  %i.bbb = select i1 %i.bax, i32 %i.bba, i32 0    ; 2 uses
  %i.bbc = icmp slt i32 %i.bbb, %i.en
  br i1 %i.bbc, label %.lr.ph2003, label %.loopexit1836

.lr.ph2003:                                       ; preds = %.loopexit1837
  %i.bbd = add i32 %i.fq, -2
  %i.bbe = shl i32 3, %i.bbd                      ; 4 uses
  %i.bbf = sext i32 %i.ek to i64                  ; 2 uses
  %i.bbg = shl nuw nsw i32 %i.ek, 1
  %i.bbh = zext nneg i32 %i.bbg to i64
  %i.bbi = mul nuw nsw i32 %i.ek, 3
  %i.bbj = zext nneg i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bbm = sext i32 %i.bbb to i64
  %i.bbn = sext i32 %i.en to i64
  %i.bbo = xor i32 %i.ej, -1
  %i.bbp = add i32 %i.ei, %i.bbo
  %i.bbq = lshr i32 %i.bbp, 1
  %i.bbr = and i32 %i.bbq, 2147483644
  %i.bbs = zext nneg i32 %i.bbr to i64            ; 2 uses
  %i.bbt = add nuw nsw i64 %i.bbs, 4              ; 3 uses
  %i.bbu = xor i32 %i.ej, -1
  %i.bbv = add i32 %i.ei, %i.bbu
  %i.bbw = lshr i32 %i.bbv, 1
  %i.bbx = and i32 %i.bbw, 2147483644
  %narrow2361 = add nuw i32 %i.bbx, 4
  %i.bby = zext i32 %narrow2361 to i64            ; 2 uses
  %i.bbz = xor i32 %i.ej, -1
  %i.bca = add i32 %i.ei, %i.bbz                  ; 2 uses
  %i.bcb = lshr i32 %i.bca, 3
  %narrow2362 = add nuw nsw i32 %i.bcb, 1
  %i.bcc = zext nneg i32 %narrow2362 to i64       ; 2 uses
  %min.iters.check2330 = icmp ult i32 %i.bca, 56
  %n.vec2332 = and i64 %i.bcc, 1073741816         ; 4 uses
  %i.bcd = trunc nuw nsw i64 %n.vec2332 to i32
  %i.bce = shl i32 %i.bcd, 3
  %i.bcf = shl nuw nsw i64 %n.vec2332, 2          ; 2 uses
  %cmp.n2343 = icmp eq i64 %n.vec2332, %i.bcc
  %i.bcg = xor i32 %i.ej, -1
  %i.bch = add i32 %i.ei, %i.bcg                  ; 2 uses
  %i.bci = lshr i32 %i.bch, 3
  %narrow2363 = add nuw nsw i32 %i.bci, 1
  %i.bcj = zext nneg i32 %narrow2363 to i64       ; 2 uses
  %min.iters.check2301 = icmp ult i32 %i.bch, 24
  %n.vec2303 = and i64 %i.bcj, 1073741820         ; 4 uses
  %i.bck = trunc nuw nsw i64 %n.vec2303 to i32
  %i.bcl = shl i32 %i.bck, 3
  %i.bcm = shl nuw nsw i64 %n.vec2303, 2          ; 3 uses
  %cmp.n2317 = icmp eq i64 %n.vec2303, %i.bcj
  br label %bb.gv

bb.gv:                                            ; preds = %.lr.ph2003, %._crit_edge2000
  %indvars.iv2056 = phi i64 [ %i.bbm, %.lr.ph2003 ], [ %indvars.iv.next2057, %._crit_edge2000 ] ; 3 uses
  %i.bcn = trunc nsw i64 %indvars.iv2056 to i32   ; 3 uses
  %i.bco = sub nsw i32 %i.en, %i.bcn              ; 2 uses
  %switch.tableidx = add i32 %i.bco, -1           ; 2 uses
  %i.bcp = icmp ult i32 %switch.tableidx, 3
  br i1 %i.bcp, label %switch.lookup, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bcq = icmp sgt i32 %i.bco, 4
  br i1 %i.bcq, label %bb.gx, label %.thread1813

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.gz, label %.lr.ph1968, label %._crit_edge2000

.lr.ph1968:                                       ; preds = %bb.gx
  %i.bcr = and i32 %i.bcn, 4
  %.not1626 = icmp eq i32 %i.bcr, 0               ; 3 uses
  %i.bcs = select i1 %.not1626, ptr %i.eq, ptr %i.er ; 14 uses
  %i.bct = select i1 %.not1626, ptr %i.eo, ptr %i.ep ; 12 uses
  br i1 %.not, label %.lr.ph1968.split.us.preheader, label %.lr.ph1968.split.preheader

.lr.ph1968.split.preheader:                       ; preds = %.lr.ph1968
  br i1 %min.iters.check2330, label %.lr.ph1968.split.preheader2365, label %vector.memcheck2323

vector.memcheck2323:                              ; preds = %.lr.ph1968.split.preheader
  %scevgep2324 = getelementptr i8, ptr %i.bcs, i64 %i.bby
  %scevgep2325 = getelementptr i8, ptr %i.bct, i64 %i.bby
  %bound02326 = icmp ult ptr %i.bcs, %scevgep2325
  %bound12327 = icmp ult ptr %i.bct, %scevgep2324
  %found.conflict2328 = and i1 %bound02326, %bound12327
  br i1 %found.conflict2328, label %.lr.ph1968.split.preheader2365, label %vector.ph2331

vector.ph2331:                                    ; preds = %vector.memcheck2323
  %i.bcu = getelementptr i8, ptr %i.bcs, i64 %i.bcf
  %i.bcv = getelementptr i8, ptr %i.bct, i64 %i.bcf
  br label %vector.body2333

vector.body2333:                                  ; preds = %vector.body2333, %vector.ph2331
  %index2334 = phi i64 [ 0, %vector.ph2331 ], [ %index.next2341, %vector.body2333 ] ; 2 uses
  %i.bcw = shl i64 %index2334, 2                  ; 2 uses
  %next.gep2335 = getelementptr i8, ptr %i.bcs, i64 %i.bcw ; 3 uses
  %next.gep2336 = getelementptr i8, ptr %i.bct, i64 %i.bcw ; 2 uses
  %i.bcx = getelementptr i8, ptr %next.gep2336, i64 16
  %wide.load2337 = load <4 x i32>, ptr %next.gep2336, align 4, !tbaa !12, !alias.scope !128
  %wide.load2338 = load <4 x i32>, ptr %i.bcx, align 4, !tbaa !12, !alias.scope !128
  %i.bcy = xor <4 x i32> %wide.load2337, splat (i32 -1)
  %i.bcz = xor <4 x i32> %wide.load2338, splat (i32 -1)
  %i.bda = getelementptr i8, ptr %next.gep2335, i64 16 ; 2 uses
  %wide.load2339 = load <4 x i32>, ptr %next.gep2335, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %wide.load2340 = load <4 x i32>, ptr %i.bda, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %i.bdb = and <4 x i32> %wide.load2339, %i.bcy
  %i.bdc = and <4 x i32> %wide.load2340, %i.bcz
  store <4 x i32> %i.bdb, ptr %next.gep2335, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  store <4 x i32> %i.bdc, ptr %i.bda, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %index.next2341 = add nuw i64 %index2334, 8     ; 2 uses
  %i.bdd = icmp eq i64 %index.next2341, %n.vec2332
  br i1 %i.bdd, label %middle.block2342, label %vector.body2333, !llvm.loop !69

middle.block2342:                                 ; preds = %vector.body2333
  br i1 %cmp.n2343, label %.lr.ph1999, label %.lr.ph1968.split.preheader2365

.lr.ph1968.split.preheader2365:                   ; preds = %vector.memcheck2323, %.lr.ph1968.split.preheader, %middle.block2342
  %.013991966.ph = phi i32 [ 0, %vector.memcheck2323 ], [ 0, %.lr.ph1968.split.preheader ], [ %i.bce, %middle.block2342 ]
  %.014061963.ph = phi ptr [ %i.bcs, %vector.memcheck2323 ], [ %i.bcs, %.lr.ph1968.split.preheader ], [ %i.bcu, %middle.block2342 ]
  %.014081962.ph = phi ptr [ %i.bct, %vector.memcheck2323 ], [ %i.bct, %.lr.ph1968.split.preheader ], [ %i.bcv, %middle.block2342 ]
  br label %.lr.ph1968.split

.lr.ph1968.split.us.preheader:                    ; preds = %.lr.ph1968
  %i.bde = select i1 %.not1626, ptr %i.ep, ptr %i.eo ; 8 uses
  br i1 %min.iters.check2301, label %.lr.ph1968.split.us.preheader2364, label %vector.memcheck2283

vector.memcheck2283:                              ; preds = %.lr.ph1968.split.us.preheader
  %scevgep2284 = getelementptr i8, ptr %i.bcs, i64 %i.bbt ; 3 uses
  %scevgep2285 = getelementptr i8, ptr %i.bde, i64 %i.bbt
  %scevgep2286 = getelementptr nuw i8, ptr %i.bde, i64 4
  %i.bdf = getelementptr i8, ptr %i.bde, i64 %i.bbs
  %scevgep2287 = getelementptr i8, ptr %i.bdf, i64 8
  %scevgep2288 = getelementptr i8, ptr %i.bct, i64 %i.bbt
  %bound02289 = icmp ult ptr %i.bcs, %scevgep2285
  %bound12290 = icmp ult ptr %i.bde, %scevgep2284
  %found.conflict2291 = and i1 %bound02289, %bound12290
  %bound02292 = icmp ult ptr %i.bcs, %scevgep2287
  %bound12293 = icmp ult ptr %scevgep2286, %scevgep2284
  %found.conflict2294 = and i1 %bound02292, %bound12293
  %conflict.rdx2295 = or i1 %found.conflict2291, %found.conflict2294
  %bound02296 = icmp ult ptr %i.bcs, %scevgep2288
  %bound12297 = icmp ult ptr %i.bct, %scevgep2284
  %found.conflict2298 = and i1 %bound02296, %bound12297
  %conflict.rdx2299 = or i1 %conflict.rdx2295, %found.conflict2298
  br i1 %conflict.rdx2299, label %.lr.ph1968.split.us.preheader2364, label %vector.ph2302

vector.ph2302:                                    ; preds = %vector.memcheck2283
  %i.bdg = getelementptr i8, ptr %i.bde, i64 %i.bcm
  %i.bdh = getelementptr i8, ptr %i.bcs, i64 %i.bcm
  %i.bdi = getelementptr i8, ptr %i.bct, i64 %i.bcm
  br label %vector.body2304

vector.body2304:                                  ; preds = %vector.body2304, %vector.ph2302
  %index2305 = phi i64 [ 0, %vector.ph2302 ], [ %index.next2314, %vector.body2304 ] ; 2 uses
  %vector.recur2306 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2302 ], [ %wide.load2310, %vector.body2304 ]
  %i.bdj = shl i64 %index2305, 2                  ; 3 uses
  %next.gep2307 = getelementptr i8, ptr %i.bde, i64 %i.bdj ; 2 uses
  %next.gep2308 = getelementptr i8, ptr %i.bcs, i64 %i.bdj ; 2 uses
  %next.gep2309 = getelementptr i8, ptr %i.bct, i64 %i.bdj
  %wide.load2310 = load <4 x i32>, ptr %next.gep2307, align 4, !tbaa !12, !alias.scope !130 ; 6 uses
  %i.bdk = shufflevector <4 x i32> %vector.recur2306, <4 x i32> %wide.load2310, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bdl = getelementptr inbounds nuw i8, ptr %next.gep2307, i64 4
  %wide.load2311 = load <4 x i32>, ptr %i.bdl, align 4, !tbaa !12, !alias.scope !131
  %i.bdm = shl <4 x i32> %wide.load2311, splat (i32 28)
  %i.bdn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2310, <4 x i32> %i.bdk, <4 x i32> splat (i32 4))
  %i.bdo = lshr <4 x i32> %wide.load2310, splat (i32 4)
  %i.bdp = or <4 x i32> %i.bdo, %i.bdn
  %i.bdq = or <4 x i32> %i.bdp, %i.bdm
  %i.bdr = or <4 x i32> %i.bdq, %wide.load2310
  %i.bds = shl <4 x i32> %i.bdr, splat (i32 3)
  %i.bdt = and <4 x i32> %i.bds, splat (i32 -2004318072)
  %wide.load2312 = load <4 x i32>, ptr %next.gep2308, align 4, !tbaa !12, !alias.scope !132, !noalias !133
  %i.bdu = or <4 x i32> %i.bdt, %wide.load2312
  %wide.load2313 = load <4 x i32>, ptr %next.gep2309, align 4, !tbaa !12, !alias.scope !134
  %i.bdv = xor <4 x i32> %wide.load2313, splat (i32 -1)
  %i.bdw = and <4 x i32> %i.bdu, %i.bdv
  store <4 x i32> %i.bdw, ptr %next.gep2308, align 4, !tbaa !12, !alias.scope !132, !noalias !133
  %index.next2314 = add nuw i64 %index2305, 4     ; 2 uses
  %i.bdx = icmp eq i64 %index.next2314, %n.vec2303
  br i1 %i.bdx, label %middle.block2315, label %vector.body2304, !llvm.loop !75

middle.block2315:                                 ; preds = %vector.body2304
  %vector.recur.extract2316 = extractelement <4 x i32> %wide.load2310, i64 3
  br i1 %cmp.n2317, label %.lr.ph1999, label %.lr.ph1968.split.us.preheader2364

.lr.ph1968.split.us.preheader2364:                ; preds = %vector.memcheck2283, %.lr.ph1968.split.us.preheader, %middle.block2315
  %.013991966.us.ph = phi i32 [ 0, %vector.memcheck2283 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %i.bcl, %middle.block2315 ]
  %.014001965.us.ph = phi i32 [ 0, %vector.memcheck2283 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %vector.recur.extract2316, %middle.block2315 ]
  %.014041964.us.ph = phi ptr [ %i.bde, %vector.memcheck2283 ], [ %i.bde, %.lr.ph1968.split.us.preheader ], [ %i.bdg, %middle.block2315 ]
  %.014061963.us.ph = phi ptr [ %i.bcs, %vector.memcheck2283 ], [ %i.bcs, %.lr.ph1968.split.us.preheader ], [ %i.bdh, %middle.block2315 ]
  %.014081962.us.ph = phi ptr [ %i.bct, %vector.memcheck2283 ], [ %i.bct, %.lr.ph1968.split.us.preheader ], [ %i.bdi, %middle.block2315 ]
  br label %.lr.ph1968.split.us

.lr.ph1968.split.us:                              ; preds = %.lr.ph1968.split.us.preheader2364, %.lr.ph1968.split.us
  %.013991966.us = phi i32 [ %i.beo, %.lr.ph1968.split.us ], [ %.013991966.us.ph, %.lr.ph1968.split.us.preheader2364 ]
  %.014001965.us = phi i32 [ %i.bdy, %.lr.ph1968.split.us ], [ %.014001965.us.ph, %.lr.ph1968.split.us.preheader2364 ]
  %.014041964.us = phi ptr [ %i.bdz, %.lr.ph1968.split.us ], [ %.014041964.us.ph, %.lr.ph1968.split.us.preheader2364 ] ; 2 uses
end_hunk_0
