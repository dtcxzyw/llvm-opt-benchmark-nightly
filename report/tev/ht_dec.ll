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
  %i.ayv = lshr i32 %i.ayu, 3
  %narrow2353 = add nuw nsw i32 %i.ayv, 1
  %i.ayw = zext nneg i32 %narrow2353 to i64       ; 2 uses
  %min.iters.check2257 = icmp ult i32 %i.ayu, 56
  br i1 %min.iters.check2257, label %.lr.ph1961.preheader2360, label %vector.memcheck2244

vector.memcheck2244:                              ; preds = %.lr.ph1961.preheader
  %i.ayx = xor i32 %i.ej, -1
  %i.ayy = add i32 %i.ei, %i.ayx
  %i.ayz = lshr i32 %i.ayy, 1
  %i.aza = and i32 %i.ayz, 2147483644
  %i.azb = zext nneg i32 %i.aza to i64            ; 2 uses
  %i.azc = add nuw nsw i64 %i.azb, 4              ; 2 uses
  %scevgep2245 = getelementptr i8, ptr %i.ayr, i64 %i.azc ; 2 uses
  %scevgep2246 = getelementptr i8, ptr %i.ays, i64 %i.azc
  %scevgep2247 = getelementptr nuw i8, ptr %i.ays, i64 4
  %i.azd = getelementptr i8, ptr %i.ays, i64 %i.azb
  %scevgep2248 = getelementptr i8, ptr %i.azd, i64 8
  %bound02249 = icmp ult ptr %i.ayr, %scevgep2246
  %bound12250 = icmp ult ptr %i.ays, %scevgep2245
  %found.conflict2251 = and i1 %bound02249, %bound12250
  %bound02252 = icmp ult ptr %i.ayr, %scevgep2248
  %bound12253 = icmp ult ptr %scevgep2247, %scevgep2245
  %found.conflict2254 = and i1 %bound02252, %bound12253
  %conflict.rdx2255 = or i1 %found.conflict2251, %found.conflict2254
  br i1 %conflict.rdx2255, label %.lr.ph1961.preheader2360, label %vector.ph2258

vector.ph2258:                                    ; preds = %vector.memcheck2244
  %n.vec2259 = and i64 %i.ayw, 1073741820         ; 4 uses
  %i.aze = trunc nuw nsw i64 %n.vec2259 to i32
  %i.azf = shl i32 %i.aze, 3
  %i.azg = shl nuw nsw i64 %n.vec2259, 2          ; 2 uses
  %i.azh = getelementptr i8, ptr %i.ayr, i64 %i.azg
  %i.azi = getelementptr i8, ptr %i.ays, i64 %i.azg
  br label %vector.body2260

vector.body2260:                                  ; preds = %vector.body2260, %vector.ph2258
  %index2261 = phi i64 [ 0, %vector.ph2258 ], [ %index.next2267, %vector.body2260 ] ; 2 uses
  %vector.recur2262 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2258 ], [ %wide.load2265, %vector.body2260 ]
  %i.azj = shl i64 %index2261, 2                  ; 2 uses
  %next.gep2263 = getelementptr i8, ptr %i.ayr, i64 %i.azj ; 2 uses
  %next.gep2264 = getelementptr i8, ptr %i.ays, i64 %i.azj ; 2 uses
  %wide.load2265 = load <4 x i32>, ptr %next.gep2264, align 4, !tbaa !12, !alias.scope !124 ; 7 uses
  %i.azk = shufflevector <4 x i32> %vector.recur2262, <4 x i32> %wide.load2265, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2265, <4 x i32> %i.azk, <4 x i32> splat (i32 4))
  %i.azm = lshr <4 x i32> %wide.load2265, splat (i32 4)
  %i.azn = or <4 x i32> %i.azm, %i.azl
  %i.azo = or <4 x i32> %i.azn, %wide.load2265    ; 2 uses
  store <4 x i32> %i.azo, ptr %next.gep2263, align 4, !tbaa !12, !alias.scope !125, !noalias !126
  %i.azp = getelementptr inbounds nuw i8, ptr %next.gep2264, i64 4
  %wide.load2266 = load <4 x i32>, ptr %i.azp, align 4, !tbaa !12, !alias.scope !127
  %i.azq = shl <4 x i32> %wide.load2266, splat (i32 28)
  %i.azr = or <4 x i32> %i.azo, %i.azq            ; 3 uses
  %i.azs = shl <4 x i32> %i.azr, splat (i32 1)
  %i.azt = and <4 x i32> %i.azs, splat (i32 -286331154)
  %i.azu = lshr <4 x i32> %i.azr, splat (i32 1)
  %i.azv = and <4 x i32> %i.azu, splat (i32 2004318071)
  %i.azw = or <4 x i32> %i.azv, %i.azt
  %i.azx = or <4 x i32> %i.azw, %i.azr
  %i.azy = xor <4 x i32> %wide.load2265, splat (i32 -1)
  %i.azz = and <4 x i32> %i.azx, %i.azy
  store <4 x i32> %i.azz, ptr %next.gep2263, align 4, !tbaa !12, !alias.scope !125, !noalias !126
  %index.next2267 = add nuw i64 %index2261, 4     ; 2 uses
  %i.baa = icmp eq i64 %index.next2267, %n.vec2259
  br i1 %i.baa, label %middle.block2268, label %vector.body2260, !llvm.loop !64

middle.block2268:                                 ; preds = %vector.body2260
  %vector.recur.extract2269 = extractelement <4 x i32> %wide.load2265, i64 3
  %cmp.n2270 = icmp eq i64 %n.vec2259, %i.ayw
  br i1 %cmp.n2270, label %.loopexit1837, label %.lr.ph1961.preheader2360

.lr.ph1961.preheader2360:                         ; preds = %vector.memcheck2244, %.lr.ph1961.preheader, %middle.block2268
  %.014101959.ph = phi i32 [ 0, %vector.memcheck2244 ], [ 0, %.lr.ph1961.preheader ], [ %i.azf, %middle.block2268 ]
  %.014111958.ph = phi i32 [ 0, %vector.memcheck2244 ], [ 0, %.lr.ph1961.preheader ], [ %vector.recur.extract2269, %middle.block2268 ]
  %.014121957.ph = phi ptr [ %i.ayr, %vector.memcheck2244 ], [ %i.ayr, %.lr.ph1961.preheader ], [ %i.azh, %middle.block2268 ]
  %.014131956.ph = phi ptr [ %i.ays, %vector.memcheck2244 ], [ %i.ays, %.lr.ph1961.preheader ], [ %i.azi, %middle.block2268 ]
  br label %.lr.ph1961

.lr.ph1961:                                       ; preds = %.lr.ph1961.preheader2360, %.lr.ph1961
  %.014101959 = phi i32 [ %i.bas, %.lr.ph1961 ], [ %.014101959.ph, %.lr.ph1961.preheader2360 ]
  %.014111958 = phi i32 [ %i.bab, %.lr.ph1961 ], [ %.014111958.ph, %.lr.ph1961.preheader2360 ]
  %.014121957 = phi ptr [ %i.bat, %.lr.ph1961 ], [ %.014121957.ph, %.lr.ph1961.preheader2360 ] ; 3 uses
  %.014131956 = phi ptr [ %i.bag, %.lr.ph1961 ], [ %.014131956.ph, %.lr.ph1961.preheader2360 ] ; 2 uses
  %i.bab = load i32, ptr %.014131956, align 4, !tbaa !12 ; 5 uses
  %i.bac = tail call i32 @llvm.fshl.i32(i32 %i.bab, i32 %.014111958, i32 4)
  %i.bad = lshr i32 %i.bab, 4
  %i.bae = or i32 %i.bad, %i.bac
  %i.baf = or i32 %i.bae, %i.bab                  ; 2 uses
  store i32 %i.baf, ptr %.014121957, align 4, !tbaa !12
  %i.bag = getelementptr inbounds nuw i8, ptr %.014131956, i64 4 ; 2 uses
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !12
  %i.bai = shl i32 %i.bah, 28
  %i.baj = or i32 %i.baf, %i.bai                  ; 3 uses
  %i.bak = shl i32 %i.baj, 1
  %i.bal = and i32 %i.bak, -286331154
  %i.bam = lshr i32 %i.baj, 1
  %i.ban = and i32 %i.bam, 2004318071
  %i.bao = or i32 %i.ban, %i.bal
  %i.bap = or i32 %i.bao, %i.baj
  %i.baq = xor i32 %i.bab, -1
  %i.bar = and i32 %i.bap, %i.baq
  store i32 %i.bar, ptr %.014121957, align 4, !tbaa !12
  %i.bas = add nuw nsw i32 %.014101959, 8         ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %.014121957, i64 4
  %i.bau = icmp slt i32 %i.bas, %i.ek
  br i1 %i.bau, label %.lr.ph1961, label %.loopexit1837, !llvm.loop !65

.loopexit1837:                                    ; preds = %.lr.ph1961, %middle.block2268, %.loopexit1838, %bb.gi, %13
  %i.bav = icmp sgt i32 %i.en, 6
  %i.baw = add nuw nsw i32 %i.en, 1
  %i.bax = and i32 %i.baw, 3
  %.neg1833 = add i32 %i.en, -3
  %i.bay = sub i32 %.neg1833, %i.bax
  %i.baz = select i1 %i.bav, i32 %i.bay, i32 0    ; 2 uses
  %i.bba = icmp slt i32 %i.baz, %i.en
  br i1 %i.bba, label %.lr.ph2003, label %.loopexit1836

.lr.ph2003:                                       ; preds = %.loopexit1837
  %i.bbb = add i32 %i.fq, -2
  %i.bbc = shl i32 3, %i.bbb                      ; 4 uses
  %i.bbd = sext i32 %i.ek to i64                  ; 2 uses
  %i.bbe = shl nuw nsw i32 %i.ek, 1
  %i.bbf = zext nneg i32 %i.bbe to i64
  %i.bbg = mul nuw nsw i32 %i.ek, 3
  %i.bbh = zext nneg i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bbk = sext i32 %i.baz to i64
  %i.bbl = sext i32 %i.en to i64
  %i.bbm = xor i32 %i.ej, -1
  %i.bbn = add i32 %i.ei, %i.bbm
  %i.bbo = lshr i32 %i.bbn, 1
  %i.bbp = and i32 %i.bbo, 2147483644
  %i.bbq = zext nneg i32 %i.bbp to i64            ; 2 uses
  %i.bbr = add nuw nsw i64 %i.bbq, 4              ; 3 uses
  %i.bbs = xor i32 %i.ej, -1
  %i.bbt = add i32 %i.ei, %i.bbs
  %i.bbu = lshr i32 %i.bbt, 1
  %i.bbv = and i32 %i.bbu, 2147483644
  %narrow2354 = add nuw i32 %i.bbv, 4
  %i.bbw = zext i32 %narrow2354 to i64            ; 2 uses
  %i.bbx = xor i32 %i.ej, -1
  %i.bby = add i32 %i.ei, %i.bbx                  ; 2 uses
  %i.bbz = lshr i32 %i.bby, 3
  %narrow2355 = add nuw nsw i32 %i.bbz, 1
  %i.bca = zext nneg i32 %narrow2355 to i64       ; 2 uses
  %min.iters.check2322 = icmp ult i32 %i.bby, 56
  %n.vec2324 = and i64 %i.bca, 1073741816         ; 4 uses
  %i.bcb = trunc nuw nsw i64 %n.vec2324 to i32
  %i.bcc = shl i32 %i.bcb, 3
  %i.bcd = shl nuw nsw i64 %n.vec2324, 2          ; 2 uses
  %cmp.n2335 = icmp eq i64 %n.vec2324, %i.bca
  %i.bce = xor i32 %i.ej, -1
  %i.bcf = add i32 %i.ei, %i.bce                  ; 2 uses
  %i.bcg = lshr i32 %i.bcf, 3
  %narrow2356 = add nuw nsw i32 %i.bcg, 1
  %i.bch = zext nneg i32 %narrow2356 to i64       ; 2 uses
  %min.iters.check2293 = icmp ult i32 %i.bcf, 24
  %n.vec2295 = and i64 %i.bch, 1073741820         ; 4 uses
  %i.bci = trunc nuw nsw i64 %n.vec2295 to i32
  %i.bcj = shl i32 %i.bci, 3
  %i.bck = shl nuw nsw i64 %n.vec2295, 2          ; 3 uses
  %cmp.n2309 = icmp eq i64 %n.vec2295, %i.bch
  br label %bb.gv

bb.gv:                                            ; preds = %.lr.ph2003, %._crit_edge2000
  %indvars.iv2056 = phi i64 [ %i.bbk, %.lr.ph2003 ], [ %indvars.iv.next2057, %._crit_edge2000 ] ; 3 uses
  %i.bcl = trunc nsw i64 %indvars.iv2056 to i32   ; 3 uses
  %i.bcm = sub nsw i32 %i.en, %i.bcl              ; 2 uses
  %switch.tableidx = add i32 %i.bcm, -1           ; 2 uses
  %i.bcn = icmp ult i32 %switch.tableidx, 3
  br i1 %i.bcn, label %switch.lookup, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bco = icmp sgt i32 %i.bcm, 4
  br i1 %i.bco, label %bb.gx, label %.thread1813

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.gz, label %.lr.ph1968, label %._crit_edge2000

.lr.ph1968:                                       ; preds = %bb.gx
  %i.bcp = and i32 %i.bcl, 4
  %.not1626 = icmp eq i32 %i.bcp, 0               ; 3 uses
  %i.bcq = select i1 %.not1626, ptr %i.eq, ptr %i.er ; 14 uses
  %i.bcr = select i1 %.not1626, ptr %i.eo, ptr %i.ep ; 12 uses
  br i1 %.not, label %.lr.ph1968.split.us.preheader, label %.lr.ph1968.split.preheader

.lr.ph1968.split.preheader:                       ; preds = %.lr.ph1968
  br i1 %min.iters.check2322, label %.lr.ph1968.split.preheader2358, label %vector.memcheck2315

vector.memcheck2315:                              ; preds = %.lr.ph1968.split.preheader
  %scevgep2316 = getelementptr i8, ptr %i.bcq, i64 %i.bbw
  %scevgep2317 = getelementptr i8, ptr %i.bcr, i64 %i.bbw
  %bound02318 = icmp ult ptr %i.bcq, %scevgep2317
  %bound12319 = icmp ult ptr %i.bcr, %scevgep2316
  %found.conflict2320 = and i1 %bound02318, %bound12319
  br i1 %found.conflict2320, label %.lr.ph1968.split.preheader2358, label %vector.ph2323

vector.ph2323:                                    ; preds = %vector.memcheck2315
  %i.bcs = getelementptr i8, ptr %i.bcq, i64 %i.bcd
  %i.bct = getelementptr i8, ptr %i.bcr, i64 %i.bcd
  br label %vector.body2325

vector.body2325:                                  ; preds = %vector.body2325, %vector.ph2323
  %index2326 = phi i64 [ 0, %vector.ph2323 ], [ %index.next2333, %vector.body2325 ] ; 2 uses
  %i.bcu = shl i64 %index2326, 2                  ; 2 uses
  %next.gep2327 = getelementptr i8, ptr %i.bcq, i64 %i.bcu ; 3 uses
  %next.gep2328 = getelementptr i8, ptr %i.bcr, i64 %i.bcu ; 2 uses
  %i.bcv = getelementptr i8, ptr %next.gep2328, i64 16
  %wide.load2329 = load <4 x i32>, ptr %next.gep2328, align 4, !tbaa !12, !alias.scope !128
  %wide.load2330 = load <4 x i32>, ptr %i.bcv, align 4, !tbaa !12, !alias.scope !128
  %i.bcw = xor <4 x i32> %wide.load2329, splat (i32 -1)
  %i.bcx = xor <4 x i32> %wide.load2330, splat (i32 -1)
  %i.bcy = getelementptr i8, ptr %next.gep2327, i64 16 ; 2 uses
  %wide.load2331 = load <4 x i32>, ptr %next.gep2327, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %wide.load2332 = load <4 x i32>, ptr %i.bcy, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %i.bcz = and <4 x i32> %wide.load2331, %i.bcw
  %i.bda = and <4 x i32> %wide.load2332, %i.bcx
  store <4 x i32> %i.bcz, ptr %next.gep2327, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  store <4 x i32> %i.bda, ptr %i.bcy, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %index.next2333 = add nuw i64 %index2326, 8     ; 2 uses
  %i.bdb = icmp eq i64 %index.next2333, %n.vec2324
  br i1 %i.bdb, label %middle.block2334, label %vector.body2325, !llvm.loop !69

middle.block2334:                                 ; preds = %vector.body2325
  br i1 %cmp.n2335, label %.lr.ph1999, label %.lr.ph1968.split.preheader2358

.lr.ph1968.split.preheader2358:                   ; preds = %vector.memcheck2315, %.lr.ph1968.split.preheader, %middle.block2334
  %.013991966.ph = phi i32 [ 0, %vector.memcheck2315 ], [ 0, %.lr.ph1968.split.preheader ], [ %i.bcc, %middle.block2334 ]
  %.014061963.ph = phi ptr [ %i.bcq, %vector.memcheck2315 ], [ %i.bcq, %.lr.ph1968.split.preheader ], [ %i.bcs, %middle.block2334 ]
  %.014081962.ph = phi ptr [ %i.bcr, %vector.memcheck2315 ], [ %i.bcr, %.lr.ph1968.split.preheader ], [ %i.bct, %middle.block2334 ]
  br label %.lr.ph1968.split

.lr.ph1968.split.us.preheader:                    ; preds = %.lr.ph1968
  %i.bdc = select i1 %.not1626, ptr %i.ep, ptr %i.eo ; 8 uses
  br i1 %min.iters.check2293, label %.lr.ph1968.split.us.preheader2357, label %vector.memcheck2275

vector.memcheck2275:                              ; preds = %.lr.ph1968.split.us.preheader
  %scevgep2276 = getelementptr i8, ptr %i.bcq, i64 %i.bbr ; 3 uses
  %scevgep2277 = getelementptr i8, ptr %i.bdc, i64 %i.bbr
  %scevgep2278 = getelementptr nuw i8, ptr %i.bdc, i64 4
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 %i.bbq
  %scevgep2279 = getelementptr i8, ptr %i.bdd, i64 8
  %scevgep2280 = getelementptr i8, ptr %i.bcr, i64 %i.bbr
  %bound02281 = icmp ult ptr %i.bcq, %scevgep2277
  %bound12282 = icmp ult ptr %i.bdc, %scevgep2276
  %found.conflict2283 = and i1 %bound02281, %bound12282
  %bound02284 = icmp ult ptr %i.bcq, %scevgep2279
  %bound12285 = icmp ult ptr %scevgep2278, %scevgep2276
  %found.conflict2286 = and i1 %bound02284, %bound12285
  %conflict.rdx2287 = or i1 %found.conflict2283, %found.conflict2286
  %bound02288 = icmp ult ptr %i.bcq, %scevgep2280
  %bound12289 = icmp ult ptr %i.bcr, %scevgep2276
  %found.conflict2290 = and i1 %bound02288, %bound12289
  %conflict.rdx2291 = or i1 %conflict.rdx2287, %found.conflict2290
  br i1 %conflict.rdx2291, label %.lr.ph1968.split.us.preheader2357, label %vector.ph2294

vector.ph2294:                                    ; preds = %vector.memcheck2275
  %i.bde = getelementptr i8, ptr %i.bdc, i64 %i.bck
  %i.bdf = getelementptr i8, ptr %i.bcq, i64 %i.bck
  %i.bdg = getelementptr i8, ptr %i.bcr, i64 %i.bck
  br label %vector.body2296

vector.body2296:                                  ; preds = %vector.body2296, %vector.ph2294
  %index2297 = phi i64 [ 0, %vector.ph2294 ], [ %index.next2306, %vector.body2296 ] ; 2 uses
  %vector.recur2298 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2294 ], [ %wide.load2302, %vector.body2296 ]
  %i.bdh = shl i64 %index2297, 2                  ; 3 uses
  %next.gep2299 = getelementptr i8, ptr %i.bdc, i64 %i.bdh ; 2 uses
  %next.gep2300 = getelementptr i8, ptr %i.bcq, i64 %i.bdh ; 2 uses
  %next.gep2301 = getelementptr i8, ptr %i.bcr, i64 %i.bdh
  %wide.load2302 = load <4 x i32>, ptr %next.gep2299, align 4, !tbaa !12, !alias.scope !130 ; 6 uses
  %i.bdi = shufflevector <4 x i32> %vector.recur2298, <4 x i32> %wide.load2302, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bdj = getelementptr inbounds nuw i8, ptr %next.gep2299, i64 4
  %wide.load2303 = load <4 x i32>, ptr %i.bdj, align 4, !tbaa !12, !alias.scope !131
  %i.bdk = shl <4 x i32> %wide.load2303, splat (i32 28)
  %i.bdl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2302, <4 x i32> %i.bdi, <4 x i32> splat (i32 4))
  %i.bdm = lshr <4 x i32> %wide.load2302, splat (i32 4)
  %i.bdn = or <4 x i32> %i.bdm, %i.bdl
  %i.bdo = or <4 x i32> %i.bdn, %i.bdk
  %i.bdp = or <4 x i32> %i.bdo, %wide.load2302
  %i.bdq = shl <4 x i32> %i.bdp, splat (i32 3)
  %i.bdr = and <4 x i32> %i.bdq, splat (i32 -2004318072)
  %wide.load2304 = load <4 x i32>, ptr %next.gep2300, align 4, !tbaa !12, !alias.scope !132, !noalias !133
  %i.bds = or <4 x i32> %i.bdr, %wide.load2304
  %wide.load2305 = load <4 x i32>, ptr %next.gep2301, align 4, !tbaa !12, !alias.scope !134
  %i.bdt = xor <4 x i32> %wide.load2305, splat (i32 -1)
  %i.bdu = and <4 x i32> %i.bds, %i.bdt
  store <4 x i32> %i.bdu, ptr %next.gep2300, align 4, !tbaa !12, !alias.scope !132, !noalias !133
  %index.next2306 = add nuw i64 %index2297, 4     ; 2 uses
  %i.bdv = icmp eq i64 %index.next2306, %n.vec2295
  br i1 %i.bdv, label %middle.block2307, label %vector.body2296, !llvm.loop !75

middle.block2307:                                 ; preds = %vector.body2296
  %vector.recur.extract2308 = extractelement <4 x i32> %wide.load2302, i64 3
  br i1 %cmp.n2309, label %.lr.ph1999, label %.lr.ph1968.split.us.preheader2357

.lr.ph1968.split.us.preheader2357:                ; preds = %vector.memcheck2275, %.lr.ph1968.split.us.preheader, %middle.block2307
  %.013991966.us.ph = phi i32 [ 0, %vector.memcheck2275 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %i.bcj, %middle.block2307 ]
  %.014001965.us.ph = phi i32 [ 0, %vector.memcheck2275 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %vector.recur.extract2308, %middle.block2307 ]
  %.014041964.us.ph = phi ptr [ %i.bdc, %vector.memcheck2275 ], [ %i.bdc, %.lr.ph1968.split.us.preheader ], [ %i.bde, %middle.block2307 ]
  %.014061963.us.ph = phi ptr [ %i.bcq, %vector.memcheck2275 ], [ %i.bcq, %.lr.ph1968.split.us.preheader ], [ %i.bdf, %middle.block2307 ]
  %.014081962.us.ph = phi ptr [ %i.bcr, %vector.memcheck2275 ], [ %i.bcr, %.lr.ph1968.split.us.preheader ], [ %i.bdg, %middle.block2307 ]
  br label %.lr.ph1968.split.us

.lr.ph1968.split.us:                              ; preds = %.lr.ph1968.split.us.preheader2357, %.lr.ph1968.split.us
  %.013991966.us = phi i32 [ %i.bem, %.lr.ph1968.split.us ], [ %.013991966.us.ph, %.lr.ph1968.split.us.preheader2357 ]
  %.014001965.us = phi i32 [ %i.bdw, %.lr.ph1968.split.us ], [ %.014001965.us.ph, %.lr.ph1968.split.us.preheader2357 ]
  %.014041964.us = phi ptr [ %i.bdx, %.lr.ph1968.split.us ], [ %.014041964.us.ph, %.lr.ph1968.split.us.preheader2357 ] ; 2 uses
end_hunk_0
