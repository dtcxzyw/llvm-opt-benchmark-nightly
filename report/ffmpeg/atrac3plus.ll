Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3plus?download=true
inline.NumInlined: 168
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@decode_gainc_data:bb.a

bb.bf:                                            ; preds = %gainc_loc_mode0.exit231.i, %.lr.ph294.i
  %indvars.iv356.i = phi i64 [ 1, %.lr.ph294.i ], [ %indvars.iv.next357.i, %gainc_loc_mode0.exit231.i ] ; 12 uses
  %i.aam = load i32, ptr %i.zf, align 4, !tbaa !227
  %i.aan = sext i32 %i.aam to i64
  %.not224.i = icmp slt i64 %indvars.iv356.i, %i.aan ; 3 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv356.i
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !9
  %i.aaq = add nsw i64 %indvars.iv356.i, -1       ; 2 uses
  %i.aar = getelementptr [4 x i8], ptr %i.zb, i64 %indvars.iv356.i
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !9
  %i.aat = icmp sgt i32 %i.aap, %i.aas
  br i1 %i.aat, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not224.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aau = load i32, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 216), align 8, !tbaa !25
  %i.aav = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.aaw = lshr i32 %i.aav, 3
  %i.aax = zext nneg i32 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aax
  %i.aaz = load i32, ptr %i.aay, align 1, !tbaa !14
  %i.aba = tail call i32 @llvm.bswap.i32(i32 %i.aaz)
  %i.abb = and i32 %i.aav, 7
  %i.abc = shl i32 %i.aba, %i.abb
  %i.abd = sub nsw i32 32, %i.aau
  %i.abe = lshr i32 %i.abc, %i.abd
  %i.abf = zext i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %i.abf ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 2
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !14
  %i.abj = sext i16 %i.abi to i32
  %i.abk = load i16, ptr %i.abg, align 2, !tbaa !14
  %i.abl = sext i16 %i.abk to i32
  %i.abm = load i32, ptr %i.d, align 8, !tbaa !20
  %i.abn = add i32 %i.aav, %i.abj
  %i.abo = tail call i32 @llvm.umin.i32(i32 %i.abm, i32 %i.abn)
  store i32 %i.abo, ptr %i.c, align 8, !tbaa !19
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aaq
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !9
  %i.abr = add nsw i32 %i.abq, %i.abl
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv356.i
  store i32 %i.abr, ptr %i.abs, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit231.i

bb.bi:                                            ; preds = %bb.bg
  %i.abt = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.abu = lshr i32 %i.abt, 3
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !14
  %i.aby = load i32, ptr %i.d, align 8, !tbaa !20 ; 3 uses
  %i.abz = icmp slt i32 %i.abt, %i.aby
  %i.aca = zext i1 %i.abz to i32
  %spec.select.i.i66 = add i32 %i.abt, %i.aca     ; 7 uses
  %i.acb = zext i8 %i.abx to i32
  %i.acc = and i32 %i.abt, 7
  store i32 %spec.select.i.i66, ptr %i.c, align 8, !tbaa !19
  %i.acd = lshr exact i32 128, %i.acc
  %i.ace = and i32 %i.acd, %i.acb
  %.not225.i = icmp eq i32 %i.ace, 0
  br i1 %.not225.i, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.acf = getelementptr [4 x i8], ptr %i.aai, i64 %indvars.iv356.i ; 4 uses
  %i.acg = getelementptr i8, ptr %i.acf, i64 -4
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !9 ; 4 uses
  %i.aci = icmp slt i32 %i.ach, 15
  br i1 %i.aci, label %._crit_edge.i229.i, label %bb.bk

._crit_edge.i229.i:                               ; preds = %bb.bj
  %i.acj = lshr i32 %spec.select.i.i66, 3
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ack
  %i.acm = load i32, ptr %i.acl, align 1, !tbaa !14
  %i.acn = tail call i32 @llvm.bswap.i32(i32 %i.acm)
  %i.aco = and i32 %spec.select.i.i66, 7
  %i.acp = shl i32 %i.acn, %i.aco
  %i.acq = lshr i32 %i.acp, 27
  %i.acr = add i32 %spec.select.i.i66, 5
  %i.acs = tail call i32 @llvm.umin.i32(i32 %i.aby, i32 %i.acr)
  store i32 %i.acs, ptr %i.c, align 8, !tbaa !19
  store i32 %i.acq, ptr %i.acf, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit231.i

bb.bk:                                            ; preds = %bb.bj
  %i.act = icmp samesign ugt i32 %i.ach, 29
  br i1 %i.act, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 31, ptr %i.acf, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit231.i

bb.bm:                                            ; preds = %bb.bk
  %i.acu = sub nuw nsw i32 30, %i.ach
  %i.acv = zext nneg i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.acv
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !14
  %i.acy = zext i8 %i.acx to i32                  ; 2 uses
  %i.acz = lshr i32 %spec.select.i.i66, 3
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 1, !tbaa !14
  %i.add = tail call i32 @llvm.bswap.i32(i32 %i.adc)
  %i.ade = and i32 %spec.select.i.i66, 7
  %i.adf = shl i32 %i.add, %i.ade
  %i.adg = sub nsw i32 31, %i.acy
  %i.adh = lshr i32 %i.adf, %i.adg
  %i.adi = add i32 %spec.select.i.i66, 1
  %i.adj = add i32 %i.adi, %i.acy
  %i.adk = tail call i32 @llvm.umin.i32(i32 %i.aby, i32 %i.adj)
  store i32 %i.adk, ptr %i.c, align 8, !tbaa !19
  %i.adl = add nuw nsw i32 %i.ach, 1
  %i.adm = add i32 %i.adl, %i.adh
  store i32 %i.adm, ptr %i.acf, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit231.i

bb.bn:                                            ; preds = %bb.bi
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv356.i
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !9
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv356.i
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit231.i

bb.bo:                                            ; preds = %bb.bf
  %i.adq = select i1 %.not224.i, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 240), ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 168) ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !17
  %i.adt = load i32, ptr %i.adq, align 8, !tbaa !25
  %i.adu = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.adv = lshr i32 %i.adu, 3
  %i.adw = zext nneg i32 %i.adv to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.adw
  %i.ady = load i32, ptr %i.adx, align 1, !tbaa !14
  %i.adz = tail call i32 @llvm.bswap.i32(i32 %i.ady)
  %i.aea = and i32 %i.adu, 7
  %i.aeb = shl i32 %i.adz, %i.aea
  %i.aec = sub nsw i32 32, %i.adt
  %i.aed = lshr i32 %i.aeb, %i.aec
  %i.aee = zext i32 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 2
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !14
  %i.aei = sext i16 %i.aeh to i32
  %i.aej = load i16, ptr %i.aef, align 2, !tbaa !14
  %i.aek = sext i16 %i.aej to i32                 ; 2 uses
  %i.ael = load i32, ptr %i.d, align 8, !tbaa !20
  %i.aem = add i32 %i.adu, %i.aei
  %i.aen = tail call i32 @llvm.umin.i32(i32 %i.ael, i32 %i.aem)
  store i32 %i.aen, ptr %i.c, align 8, !tbaa !19
  br i1 %.not224.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aeo = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aaq
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !9
  %i.aeq = add nsw i32 %i.aep, %i.aek
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv356.i
  store i32 %i.aeq, ptr %i.aer, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit231.i

bb.bq:                                            ; preds = %bb.bo
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv356.i
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !9
  %i.aeu = add nsw i32 %i.aet, %i.aek
  %i.aev = and i32 %i.aeu, 31
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv356.i
  store i32 %i.aev, ptr %i.aew, align 4, !tbaa !9
  br label %gainc_loc_mode0.exit231.i

gainc_loc_mode0.exit231.i:                        ; preds = %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bl, %._crit_edge.i229.i, %bb.bh
  %indvars.iv.next357.i = add nuw nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %i.aex = load i32, ptr %i.zb, align 4, !tbaa !227
  %i.aey = sext i32 %i.aex to i64
  %i.aez = icmp slt i64 %indvars.iv.next357.i, %i.aey
  br i1 %i.aez, label %bb.bf, label %.loopexit254.i, !llvm.loop !205

.loopexit254.i:                                   ; preds = %gainc_loc_mode0.exit231.i, %bb.be, %bb.bb
  %indvars.iv.next360.i = add nuw nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %exitcond363.not.i = icmp eq i64 %indvars.iv.next360.i, %wide.trip.count362.i
  br i1 %exitcond363.not.i, label %.loopexit251.i, label %bb.bb, !llvm.loop !206

bb.br:                                            ; preds = %gainc_loc_mode1.exit.i, %.preheader252.i
  %indvars.iv364.i = phi i64 [ 0, %.preheader252.i ], [ %indvars.iv.next365.i, %gainc_loc_mode1.exit.i ] ; 2 uses
  %i.afa = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv364.i ; 4 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !227 ; 3 uses
  %i.afc = icmp sgt i32 %i.afb, 0
  br i1 %i.afc, label %bb.bs, label %gainc_loc_mode1.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.afd = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.afe = load i32, ptr %i.d, align 8, !tbaa !20
  %i.aff = lshr i32 %i.afd, 3
  %i.afg = zext nneg i32 %i.aff to i64
  %i.afh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.afg
  %i.afi = load i32, ptr %i.afh, align 1, !tbaa !14
  %i.afj = tail call i32 @llvm.bswap.i32(i32 %i.afi)
  %i.afk = and i32 %i.afd, 7
  %i.afl = shl i32 %i.afj, %i.afk
  %i.afm = lshr i32 %i.afl, 27                    ; 2 uses
  %i.afn = add i32 %i.afd, 5
  %i.afo = tail call i32 @llvm.umin.i32(i32 %i.afe, i32 %i.afn)
  store i32 %i.afo, ptr %i.c, align 8, !tbaa !19
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afa, i64 32 ; 2 uses
  store i32 %i.afm, ptr %i.afp, align 4, !tbaa !9
  %.not2.i.i = icmp eq i32 %i.afb, 1
  br i1 %.not2.i.i, label %gainc_loc_mode1.exit.i, label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %bb.bs
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afa, i64 4
  %wide.trip.count.i.i68 = zext nneg i32 %i.afb to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph.i.i67
  %4 = phi i32 [ %i.afm, %.lr.ph.i.i67 ], [ %i.agt, %bb.bt ]
  %indvars.iv.i.i69 = phi i64 [ 1, %.lr.ph.i.i67 ], [ %indvars.iv.next.i.i70, %bb.bt ] ; 4 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %indvars.iv.i.i69
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !9
  %i.aft = getelementptr [4 x i8], ptr %i.afa, i64 %indvars.iv.i.i69
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !9
  %.not.i232.i = icmp sgt i32 %i.afs, %i.afu
  %i.afv = select i1 %.not.i232.i, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 216), ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 168) ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.afx = load ptr, ptr %i.afw, align 16, !tbaa !17
  %i.afy = load i32, ptr %i.afv, align 8, !tbaa !25
  %i.afz = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.aga = lshr i32 %i.afz, 3
  %i.agb = zext nneg i32 %i.aga to i64
  %i.agc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 1, !tbaa !14
  %i.age = tail call i32 @llvm.bswap.i32(i32 %i.agd)
  %i.agf = and i32 %i.afz, 7
  %i.agg = shl i32 %i.age, %i.agf
  %i.agh = sub nsw i32 32, %i.afy
  %i.agi = lshr i32 %i.agg, %i.agh
  %i.agj = zext i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.agj ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 2
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !14
  %i.agn = sext i16 %i.agm to i32
  %i.ago = load i16, ptr %i.agk, align 2, !tbaa !14
  %i.agp = sext i16 %i.ago to i32
  %i.agq = load i32, ptr %i.d, align 8, !tbaa !20
  %i.agr = add i32 %i.afz, %i.agn
  %i.ags = tail call i32 @llvm.umin.i32(i32 %i.agq, i32 %i.agr)
  store i32 %i.ags, ptr %i.c, align 8, !tbaa !19
  %i.agt = add nsw i32 %4, %i.agp                 ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %indvars.iv.i.i69
  store i32 %i.agt, ptr %5, align 4, !tbaa !9
  %indvars.iv.next.i.i70 = add nuw nsw i64 %indvars.iv.i.i69, 1 ; 2 uses
  %exitcond.not.i.i71 = icmp eq i64 %indvars.iv.next.i.i70, %wide.trip.count.i.i68
  br i1 %exitcond.not.i.i71, label %gainc_loc_mode1.exit.i, label %bb.bt, !llvm.loop !207

gainc_loc_mode1.exit.i:                           ; preds = %bb.bt, %bb.bs, %bb.br
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %exitcond368.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count367.i
  br i1 %exitcond368.not.i, label %.loopexit251.i, label %bb.br, !llvm.loop !208

bb.bu:                                            ; preds = %.loopexit87
  %.not221.i = icmp eq i64 %indvars.iv168, 0
  br i1 %.not221.i, label %.preheader260.i, label %.preheader263.i

.preheader263.i:                                  ; preds = %bb.bu
  %wide.trip.count340.i = zext nneg i32 %i.af to i64 ; 2 uses
  br label %bb.bv

.preheader260.i:                                  ; preds = %bb.bu
  %i.agu = load i32, ptr %.pre, align 4, !tbaa !227 ; 2 uses
  %i.agv = icmp sgt i32 %i.agu, 0
  br i1 %i.agv, label %gainc_loc_mode0.exit245.peel.i, label %.preheader258.i

gainc_loc_mode0.exit245.peel.i:                   ; preds = %.preheader260.i
  %i.agw = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.agx = lshr i32 %i.wu, 3
  %i.agy = zext nneg i32 %i.agx to i64
  %i.agz = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.agy
  %i.aha = load i32, ptr %i.agz, align 1, !tbaa !14
  %i.ahb = tail call i32 @llvm.bswap.i32(i32 %i.aha)
  %i.ahc = and i32 %i.wu, 7
  %i.ahd = shl i32 %i.ahb, %i.ahc
  %i.ahe = lshr i32 %i.ahd, 27
  %i.ahf = add i32 %i.wu, 5
  %i.ahg = tail call i32 @llvm.umin.i32(i32 %i.wk, i32 %i.ahf)
  store i32 %i.ahg, ptr %i.c, align 8, !tbaa !19
  store i32 %i.ahe, ptr %i.agw, align 4, !tbaa !9
  %.not425.i = icmp eq i32 %i.agu, 1
  br i1 %.not425.i, label %.preheader258.i, label %.peel.next346.i

bb.bv:                                            ; preds = %gainc_loc_mode1.exit241.i, %.preheader263.i
  %indvars.iv337.i = phi i64 [ 0, %.preheader263.i ], [ %indvars.iv.next338.i, %gainc_loc_mode1.exit241.i ] ; 3 uses
  %i.ahh = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv337.i ; 5 uses
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !227 ; 6 uses
  %i.ahj = icmp slt i32 %i.ahi, 1
  br i1 %i.ahj, label %gainc_loc_mode1.exit241.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ahk = load ptr, ptr %i.e, align 8, !tbaa !224 ; 2 uses
  %i.ahl = ptrtoaddr ptr %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw [60 x i8], ptr %i.ahk, i64 %indvars.iv337.i ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !227
  %i.aho = icmp sgt i32 %i.ahi, %i.ahn
  %.pre.i65 = load i32, ptr %i.c, align 8, !tbaa !19 ; 5 uses
  %.pre400.i = load i32, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  br i1 %i.aho, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ahp = lshr i32 %.pre.i65, 3
  %i.ahq = zext nneg i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !14
  %i.aht = icmp slt i32 %.pre.i65, %.pre400.i
  %i.ahu = zext i1 %i.aht to i32
  %spec.select.i233.i = add i32 %.pre.i65, %i.ahu ; 2 uses
  %i.ahv = zext i8 %i.ahs to i32
  %i.ahw = and i32 %.pre.i65, 7
  store i32 %spec.select.i233.i, ptr %i.c, align 8, !tbaa !19
  %i.ahx = lshr exact i32 128, %i.ahw
  %i.ahy = and i32 %i.ahx, %i.ahv
  %.not222.i = icmp eq i32 %i.ahy, 0
  br i1 %.not222.i, label %.lr.ph281.i, label %bb.by

.lr.ph281.i:                                      ; preds = %bb.bx
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahm, i64 32 ; 6 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahh, i64 32 ; 6 uses
  %i.aib = zext nneg i32 %i.ahi to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.ahi, 8
  %i.aic = sub i64 %i.ahl, %.pre282
  %diff.check = icmp ugt i64 %i.aic, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph281.i
  %n.vec = and i64 %i.aib, 2147483640             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %index ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %wide.load = load <4 x i32>, ptr %i.aid, align 4, !tbaa !9
  %wide.load283 = load <4 x i32>, ptr %i.aie, align 4, !tbaa !9
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %index ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 16
  store <4 x i32> %wide.load, ptr %i.aif, align 4, !tbaa !9
  store <4 x i32> %wide.load283, ptr %i.aig, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aih = icmp eq i64 %index.next, %n.vec
  br i1 %i.aih, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aib
  br i1 %cmp.n, label %gainc_loc_mode1.exit241.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph281.i, %middle.block
  %indvars.iv334.i.ph = phi i64 [ 0, %.lr.ph281.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter357 = and i64 %i.aib, 3                ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv334.i.prol = phi i64 [ %indvars.iv.next335.i.prol, %scalar.ph.prol ], [ %indvars.iv334.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv334.i.prol
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !9
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv334.i.prol
  store i32 %i.aij, ptr %i.aik, align 4, !tbaa !9
  %indvars.iv.next335.i.prol = add nuw nsw i64 %indvars.iv334.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter357
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !210

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv334.i.unr = phi i64 [ %indvars.iv334.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next335.i.prol, %scalar.ph.prol ]
  %i.ail = sub nsw i64 %indvars.iv334.i.ph, %i.aib
  %i.aim = icmp ugt i64 %i.ail, -4
  br i1 %i.aim, label %gainc_loc_mode1.exit241.i, label %scalar.ph

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ain = phi i32 [ %.pre.i65, %bb.bw ], [ %spec.select.i233.i, %bb.bx ] ; 3 uses
  %i.aio = lshr i32 %i.ain, 3
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aip
  %i.air = load i32, ptr %i.aiq, align 1, !tbaa !14
  %i.ais = tail call i32 @llvm.bswap.i32(i32 %i.air)
  %i.ait = and i32 %i.ain, 7
  %i.aiu = shl i32 %i.ais, %i.ait
  %i.aiv = lshr i32 %i.aiu, 27                    ; 2 uses
  %i.aiw = add i32 %i.ain, 5
  %i.aix = tail call i32 @llvm.umin.i32(i32 %.pre400.i, i32 %i.aiw)
  store i32 %i.aix, ptr %i.c, align 8, !tbaa !19
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ahh, i64 32 ; 2 uses
  store i32 %i.aiv, ptr %i.aiy, align 4, !tbaa !9
  %.not2.i234.i = icmp eq i32 %i.ahi, 1
  br i1 %.not2.i234.i, label %gainc_loc_mode1.exit241.i, label %.lr.ph.i235.i

.lr.ph.i235.i:                                    ; preds = %bb.by
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4
  %wide.trip.count.i236.i = zext nneg i32 %i.ahi to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.lr.ph.i235.i
  %6 = phi i32 [ %i.aiv, %.lr.ph.i235.i ], [ %i.akc, %bb.bz ]
  %indvars.iv.i237.i = phi i64 [ 1, %.lr.ph.i235.i ], [ %indvars.iv.next.i239.i, %bb.bz ] ; 4 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %indvars.iv.i237.i
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !9
  %i.ajc = getelementptr [4 x i8], ptr %i.ahh, i64 %indvars.iv.i237.i
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !9
  %.not.i238.i = icmp sgt i32 %i.ajb, %i.ajd
  %i.aje = select i1 %.not.i238.i, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 216), ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 168) ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 8
  %i.ajg = load ptr, ptr %i.ajf, align 16, !tbaa !17
  %i.ajh = load i32, ptr %i.aje, align 8, !tbaa !25
  %i.aji = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.ajj = lshr i32 %i.aji, 3
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 1, !tbaa !14
  %i.ajn = tail call i32 @llvm.bswap.i32(i32 %i.ajm)
  %i.ajo = and i32 %i.aji, 7
  %i.ajp = shl i32 %i.ajn, %i.ajo
  %i.ajq = sub nsw i32 32, %i.ajh
  %i.ajr = lshr i32 %i.ajp, %i.ajq
  %i.ajs = zext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajs ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 2
  %i.ajv = load i16, ptr %i.aju, align 2, !tbaa !14
  %i.ajw = sext i16 %i.ajv to i32
  %i.ajx = load i16, ptr %i.ajt, align 2, !tbaa !14
  %i.ajy = sext i16 %i.ajx to i32
  %i.ajz = load i32, ptr %i.d, align 8, !tbaa !20
  %i.aka = add i32 %i.aji, %i.ajw
  %i.akb = tail call i32 @llvm.umin.i32(i32 %i.ajz, i32 %i.aka)
  store i32 %i.akb, ptr %i.c, align 8, !tbaa !19
  %i.akc = add nsw i32 %6, %i.ajy                 ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i237.i
  store i32 %i.akc, ptr %7, align 4, !tbaa !9
  %indvars.iv.next.i239.i = add nuw nsw i64 %indvars.iv.i237.i, 1 ; 2 uses
  %exitcond.not.i240.i = icmp eq i64 %indvars.iv.next.i239.i, %wide.trip.count.i236.i
  br i1 %exitcond.not.i240.i, label %gainc_loc_mode1.exit241.i, label %bb.bz, !llvm.loop !207

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i.3, %scalar.ph ], [ %indvars.iv334.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv334.i
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !9
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv334.i
  store i32 %i.ake, ptr %i.akf, align 4, !tbaa !9
  %indvars.iv.next335.i = add nuw nsw i64 %indvars.iv334.i, 1 ; 2 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv.next335.i
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !9
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv.next335.i
  store i32 %i.akh, ptr %i.aki, align 4, !tbaa !9
  %indvars.iv.next335.i.1 = add nuw nsw i64 %indvars.iv334.i, 2 ; 2 uses
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv.next335.i.1
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !9
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv.next335.i.1
  store i32 %i.akk, ptr %i.akl, align 4, !tbaa !9
  %indvars.iv.next335.i.2 = add nuw nsw i64 %indvars.iv334.i, 3 ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv.next335.i.2
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !9
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv.next335.i.2
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !9
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %exitcond166.not.3 = icmp eq i64 %indvars.iv.next335.i.3, %i.aib
  br i1 %exitcond166.not.3, label %gainc_loc_mode1.exit241.i, label %scalar.ph, !llvm.loop !211

gainc_loc_mode1.exit241.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.bz, %middle.block, %bb.by, %bb.bv
  %indvars.iv.next338.i = add nuw nsw i64 %indvars.iv337.i, 1 ; 2 uses
  %exitcond341.not.i = icmp eq i64 %indvars.iv.next338.i, %wide.trip.count340.i
  br i1 %exitcond341.not.i, label %.loopexit251.i, label %bb.bv, !llvm.loop !212

.preheader258.i:                                  ; preds = %gainc_loc_mode0.exit245.i, %gainc_loc_mode0.exit245.peel.i, %.preheader260.i
  %.not78 = icmp eq i32 %i.ac, 0
  br i1 %.not78, label %.loopexit251.i, label %.lr.ph291.i

.lr.ph291.i:                                      ; preds = %.preheader258.i
  %i.akp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 152), align 8
  %wide.trip.count354.i = zext nneg i32 %i.af to i64 ; 2 uses
  br label %bb.cc

.peel.next346.i:                                  ; preds = %gainc_loc_mode0.exit245.peel.i, %gainc_loc_mode0.exit245.i
  %indvars.iv342.i = phi i64 [ %indvars.iv.next343.i, %gainc_loc_mode0.exit245.i ], [ 1, %gainc_loc_mode0.exit245.peel.i ] ; 2 uses
  %i.akq = getelementptr [4 x i8], ptr %i.agw, i64 %indvars.iv342.i ; 2 uses
  %i.akr = getelementptr i8, ptr %i.akq, i64 -4
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !9 ; 4 uses
  %i.akt = icmp slt i32 %i.aks, 15
  br i1 %i.akt, label %._crit_edge.i243.i, label %bb.ca

._crit_edge.i243.i:                               ; preds = %.peel.next346.i
  %i.aku = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.akv = load i32, ptr %i.d, align 8, !tbaa !20
  %i.akw = lshr i32 %i.aku, 3
  %i.akx = zext nneg i32 %i.akw to i64
  %i.aky = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.akx
  %i.akz = load i32, ptr %i.aky, align 1, !tbaa !14
  %i.ala = tail call i32 @llvm.bswap.i32(i32 %i.akz)
  %i.alb = and i32 %i.aku, 7
  %i.alc = shl i32 %i.ala, %i.alb
  %i.ald = lshr i32 %i.alc, 27
  %i.ale = add i32 %i.aku, 5
  %i.alf = tail call i32 @llvm.umin.i32(i32 %i.akv, i32 %i.ale)
  store i32 %i.alf, ptr %i.c, align 8, !tbaa !19
  br label %gainc_loc_mode0.exit245.i

bb.ca:                                            ; preds = %.peel.next346.i
  %i.alg = icmp samesign ugt i32 %i.aks, 29
  br i1 %i.alg, label %gainc_loc_mode0.exit245.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.alh = sub nuw nsw i32 30, %i.aks
  %i.ali = zext nneg i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !14
  %i.all = zext i8 %i.alk to i32                  ; 2 uses
  %i.alm = add nuw nsw i32 %i.all, 1
  %i.aln = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.alo = load i32, ptr %i.d, align 8, !tbaa !20
  %i.alp = lshr i32 %i.aln, 3
  %i.alq = zext nneg i32 %i.alp to i64
  %i.alr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.alq
  %i.als = load i32, ptr %i.alr, align 1, !tbaa !14
  %i.alt = tail call i32 @llvm.bswap.i32(i32 %i.als)
  %i.alu = and i32 %i.aln, 7
  %i.alv = shl i32 %i.alt, %i.alu
  %i.alw = sub nsw i32 31, %i.all
  %i.alx = lshr i32 %i.alv, %i.alw
  %i.aly = add i32 %i.alm, %i.aln
  %i.alz = tail call i32 @llvm.umin.i32(i32 %i.alo, i32 %i.aly)
  store i32 %i.alz, ptr %i.c, align 8, !tbaa !19
  %i.ama = add nuw nsw i32 %i.aks, 1
  %i.amb = add i32 %i.ama, %i.alx
  br label %gainc_loc_mode0.exit245.i

gainc_loc_mode0.exit245.i:                        ; preds = %bb.ca, %bb.cb, %._crit_edge.i243.i
  %.sink238 = phi i32 [ %i.amb, %bb.cb ], [ %i.ald, %._crit_edge.i243.i ], [ 31, %bb.ca ]
  store i32 %.sink238, ptr %i.akq, align 4, !tbaa !9
  %indvars.iv.next343.i = add nuw nsw i64 %indvars.iv342.i, 1 ; 2 uses
  %i.amc = load i32, ptr %.pre, align 4, !tbaa !227
  %i.amd = sext i32 %i.amc to i64
  %i.ame = icmp slt i64 %indvars.iv.next343.i, %i.amd
  br i1 %i.ame, label %.peel.next346.i, label %.preheader258.i, !llvm.loop !213

bb.cc:                                            ; preds = %.loopexit257.i, %.lr.ph291.i
  %indvars.iv351.i = phi i64 [ 1, %.lr.ph291.i ], [ %indvars.iv.next352.i, %.loopexit257.i ] ; 2 uses
  %i.amf = getelementptr inbounds nuw [60 x i8], ptr %.pre, i64 %indvars.iv351.i ; 7 uses
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !227 ; 3 uses
  %i.amh = icmp slt i32 %i.amg, 1
  br i1 %i.amh, label %.loopexit257.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ami = load i32, ptr getelementptr inbounds nuw (i8, ptr @gain_vlc_tabs, i64 144), align 16, !tbaa !25
  %i.amj = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.amk = lshr i32 %i.amj, 3
  %i.aml = zext nneg i32 %i.amk to i64
  %i.amm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aml
  %i.amn = load i32, ptr %i.amm, align 1, !tbaa !14
  %i.amo = tail call i32 @llvm.bswap.i32(i32 %i.amn)
  %i.amp = and i32 %i.amj, 7
  %i.amq = shl i32 %i.amo, %i.amp
  %i.amr = sub nsw i32 32, %i.ami
  %i.ams = lshr i32 %i.amq, %i.amr
  %i.amt = zext i32 %i.ams to i64
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %i.amt ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 2
  %i.amw = load i16, ptr %i.amv, align 2, !tbaa !14
  %i.amx = sext i16 %i.amw to i32
  %i.amy = load i16, ptr %i.amu, align 2, !tbaa !14
  %i.amz = zext i16 %i.amy to i32
  %i.ana = load i32, ptr %i.d, align 8, !tbaa !20
  %i.anb = add i32 %i.amj, %i.amx
  %i.anc = tail call i32 @llvm.umin.i32(i32 %i.ana, i32 %i.anb)
  store i32 %i.anc, ptr %i.c, align 8, !tbaa !19
  %i.and = getelementptr inbounds i8, ptr %i.amf, i64 -60
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !227 ; 2 uses
  %i.anf = icmp sgt i32 %i.ane, 0
  br i1 %i.anf, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ang = getelementptr inbounds i8, ptr %i.amf, i64 -28
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ani = phi i32 [ %i.anh, %bb.ce ], [ 0, %bb.cd ]
  %i.anj = add i32 %i.ani, %i.amz
  %i.ank = and i32 %i.anj, 31
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amf, i64 32 ; 3 uses
  store i32 %i.ank, ptr %i.anl, align 4, !tbaa !9
  %.not426.i = icmp eq i32 %i.amg, 1
  br i1 %.not426.i, label %.loopexit257.i, label %.lr.ph289.i

.lr.ph289.i:                                      ; preds = %bb.cf
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amf, i64 4
  %i.ann = getelementptr inbounds i8, ptr %i.amf, i64 -28
  %i.ano = sext i32 %i.ane to i64
  %umax = zext nneg i32 %i.amg to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cj, %.lr.ph289.i
  %indvars.iv348.i = phi i64 [ 1, %.lr.ph289.i ], [ %indvars.iv.next349.i, %bb.cj ] ; 7 uses
  %i.anp = icmp sge i64 %indvars.iv348.i, %i.ano  ; 2 uses
  %i.anq = zext i1 %i.anp to i64
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %indvars.iv348.i
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !9
  %i.ant = getelementptr [4 x i8], ptr %i.amf, i64 %indvars.iv348.i
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !9
  %i.anv = icmp sgt i32 %i.ans, %i.anu
  %i.anw = select i1 %i.anv, i64 2, i64 0
  %i.anx = getelementptr inbounds nuw [24 x i8], ptr @gain_vlc_tabs, i64 %i.anw
  %i.any = getelementptr inbounds nuw [24 x i8], ptr %i.anx, i64 %i.anq ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 144
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.any, i64 152
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !17
  %i.aoc = load i32, ptr %i.anz, align 8, !tbaa !25
  %i.aod = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.aoe = lshr i32 %i.aod, 3
  %i.aof = zext nneg i32 %i.aoe to i64
  %i.aog = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aof
  %i.aoh = load i32, ptr %i.aog, align 1, !tbaa !14
  %i.aoi = tail call i32 @llvm.bswap.i32(i32 %i.aoh)
  %i.aoj = and i32 %i.aod, 7
  %i.aok = shl i32 %i.aoi, %i.aoj
  %i.aol = sub nsw i32 32, %i.aoc
  %i.aom = lshr i32 %i.aok, %i.aol
  %i.aon = zext i32 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.aon ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 2
  %i.aoq = load i16, ptr %i.aop, align 2, !tbaa !14
  %i.aor = sext i16 %i.aoq to i32
  %i.aos = load i16, ptr %i.aoo, align 2, !tbaa !14
  %i.aot = sext i16 %i.aos to i32                 ; 2 uses
  %i.aou = load i32, ptr %i.d, align 8, !tbaa !20
  %i.aov = add i32 %i.aod, %i.aor
  %i.aow = tail call i32 @llvm.umin.i32(i32 %i.aou, i32 %i.aov)
  store i32 %i.aow, ptr %i.c, align 8, !tbaa !19
  br i1 %i.anp, label %bb.ch, label %bb.ci
end_hunk_0
