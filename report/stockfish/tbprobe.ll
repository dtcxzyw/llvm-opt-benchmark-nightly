Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %i.axt = lshr exact i64 %i.axs, 1
  %i.axu = trunc i64 %i.axt to i16
  %i.axv = add i16 %i.axu, 1
  store i16 %i.axv, ptr %i.aqb, align 8, !tbaa !215
  %.1.val.i.i.i.i.2 = load i16, ptr %i.axq, align 1
  %i.axw = zext i16 %.1.val.i.i.i.i.2 to i64
  %i.axx = shl nuw nsw i64 %i.axw, 1
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axq, i64 %i.axx
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 2 ; 3 uses
  %i.aya = ptrtoint ptr %i.axz to i64
  %i.ayb = sub i64 %i.aya, %i.rg
  %i.ayc = lshr exact i64 %i.ayb, 1
  %i.ayd = trunc i64 %i.ayc to i16
  %i.aye = add i16 %i.ayd, 1
  store i16 %i.aye, ptr %i.aqd, align 2, !tbaa !215
  %.1.val.1.i.i.i.i.2 = load i16, ptr %i.axz, align 1
  %i.ayf = zext i16 %.1.val.1.i.i.i.i.2 to i64
  %i.ayg = shl nuw nsw i64 %i.ayf, 1
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axz, i64 %i.ayg
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 2 ; 3 uses
  %i.ayj = ptrtoint ptr %i.ayi to i64
  %i.ayk = sub i64 %i.ayj, %i.rg
  %i.ayl = lshr exact i64 %i.ayk, 1
  %i.aym = trunc i64 %i.ayl to i16
  %i.ayn = add i16 %i.aym, 1
  store i16 %i.ayn, ptr %i.aqe, align 4, !tbaa !215
  %.1.val.2.i.i.i.i.2 = load i16, ptr %i.ayi, align 1
  %i.ayo = zext i16 %.1.val.2.i.i.i.i.2 to i64
  %i.ayp = shl nuw nsw i64 %i.ayo, 1
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayi, i64 %i.ayp
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 2 ; 3 uses
  %i.ays = ptrtoint ptr %i.ayr to i64
  %i.ayt = sub i64 %i.ays, %i.rg
  %i.ayu = lshr exact i64 %i.ayt, 1
  %i.ayv = trunc i64 %i.ayu to i16
  %i.ayw = add i16 %i.ayv, 1
  store i16 %i.ayw, ptr %i.aqf, align 2, !tbaa !215
  %.1.val.3.i.i.i.i.2 = load i16, ptr %i.ayr, align 1
  %i.ayx = zext i16 %.1.val.3.i.i.i.i.2 to i64
  %i.ayy = shl nuw nsw i64 %i.ayx, 1
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayr, i64 %i.ayy
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 2 ; 2 uses
  %i.azb = ptrtoint ptr %i.aza to i64
  %i.azc = and i64 %i.azb, 1
  %i.azd = getelementptr inbounds nuw i8, ptr %i.aza, i64 %i.azc ; 3 uses
  %i.aze = ptrtoint ptr %i.azd to i64
  %i.azf = sub i64 %i.aze, %i.rg
  %i.azg = lshr exact i64 %i.azf, 1
  %i.azh = trunc i64 %i.azg to i16
  %i.azi = add i16 %i.azh, 1
  store i16 %i.azi, ptr %i.aqb, align 8, !tbaa !215
  %.1.val.i.i.i.i.3 = load i16, ptr %i.azd, align 1
  %i.azj = zext i16 %.1.val.i.i.i.i.3 to i64
  %i.azk = shl nuw nsw i64 %i.azj, 1
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azd, i64 %i.azk
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 2 ; 3 uses
  %i.azn = ptrtoint ptr %i.azm to i64
  %i.azo = sub i64 %i.azn, %i.rg
  %i.azp = lshr exact i64 %i.azo, 1
  %i.azq = trunc i64 %i.azp to i16
  %i.azr = add i16 %i.azq, 1
  store i16 %i.azr, ptr %i.aqd, align 2, !tbaa !215
  %.1.val.1.i.i.i.i.3 = load i16, ptr %i.azm, align 1
  %i.azs = zext i16 %.1.val.1.i.i.i.i.3 to i64
  %i.azt = shl nuw nsw i64 %i.azs, 1
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azm, i64 %i.azt
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 2 ; 3 uses
  %i.azw = ptrtoint ptr %i.azv to i64
  %i.azx = sub i64 %i.azw, %i.rg
  %i.azy = lshr exact i64 %i.azx, 1
  %i.azz = trunc i64 %i.azy to i16
  %i.baa = add i16 %i.azz, 1
  store i16 %i.baa, ptr %i.aqe, align 4, !tbaa !215
  %.1.val.2.i.i.i.i.3 = load i16, ptr %i.azv, align 1
  %i.bab = zext i16 %.1.val.2.i.i.i.i.3 to i64
  %i.bac = shl nuw nsw i64 %i.bab, 1
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azv, i64 %i.bac
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 2 ; 3 uses
  %i.baf = ptrtoint ptr %i.bae to i64
  %i.bag = sub i64 %i.baf, %i.rg
  %i.bah = lshr exact i64 %i.bag, 1
  %i.bai = trunc i64 %i.bah to i16
  %i.baj = add i16 %i.bai, 1
  store i16 %i.baj, ptr %i.aqf, align 2, !tbaa !215
  %.1.val.3.i.i.i.i.3 = load i16, ptr %i.bae, align 1
  %i.bak = zext i16 %.1.val.3.i.i.i.i.3 to i64
  %i.bal = shl nuw nsw i64 %i.bak, 1
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bal
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 2
  br label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i

_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i: ; preds = %.split.i.i.i.i, %.split.i.i.i.i.1, %.preheader.us65.i.i.i.i, %.preheader.us65.i.i.i.i.1, %.split41.split.i.i.i.i
  %.us-phi44.i.ph.i.i.i = phi ptr [ %i.auw, %.preheader.us65.i.i.i.i.1 ], [ %i.rb, %.split41.split.i.i.i.i ], [ %i.are, %.preheader.us65.i.i.i.i ], [ %i.awa, %.split.i.i.i.i ], [ %i.ban, %.split.i.i.i.i.1 ] ; 2 uses
  %i.bao = ptrtoint ptr %.us-phi44.i.ph.i.i.i to i64
  %i.bap = and i64 %i.bao, 1
  br label %.preheader129.i.split.i.i

_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i: ; preds = %.loopexit34.split.us.i.i.i.i, %.loopexit34.split.us.i.i.i.i.1, %.loopexit34.split.us.i.i.i.i.2, %.preheader.us48.i.i.i.i.3, %.split.us.i.i.i.i.3, %.split41.split.us.i.i.i.i.3, %.loopexit34.split.us.us.i.i.i.i, %.preheader.us.i.i.i.i.3, %.split.us.us.i.i.i.i.3, %.split41.us.i.i.i.i.3
  %.us-phi44.i.i.i.i = phi ptr [ %i.acg, %.split.us.us.i.i.i.i.3 ], [ %.3.us.i.i.i.i, %.loopexit34.split.us.us.i.i.i.i ], [ %.3.us.i.i.i.i.2, %.split41.us.i.i.i.i.3 ], [ %i.adq, %.preheader.us.i.i.i.i.3 ], [ %.3.us53.i.i.i.i, %.loopexit34.split.us.i.i.i.i ], [ %.3.us53.i.i.i.i.1, %.loopexit34.split.us.i.i.i.i.1 ], [ %.3.us53.i.i.i.i.2, %.loopexit34.split.us.i.i.i.i.2 ], [ %.3.us53.i.i.i.i.2, %.split41.split.us.i.i.i.i.3 ], [ %i.apx, %.preheader.us48.i.i.i.i.3 ], [ %i.aon, %.split.us.i.i.i.i.3 ] ; 3 uses
  %i.baq = ptrtoint ptr %.us-phi44.i.i.i.i to i64
  %i.bar = and i64 %i.baq, 1                      ; 2 uses
  br i1 %i.rf, label %.preheader130.us.i.i.i, label %.preheader129.i.split.i.i

.preheader130.us.i.i.i:                           ; preds = %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i
  %i.bas = getelementptr inbounds nuw i8, ptr %.us-phi44.i.i.i.i, i64 %i.bar ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 112
  %i.bau = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 120
  %i.bav = load i64, ptr %i.bau, align 8, !tbaa !250
  %i.baw = mul i64 %i.bav, 6
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bas, i64 %i.baw ; 3 uses
  store ptr %i.bas, ptr %i.bat, align 8, !tbaa !251
  br i1 %i.is, label %.preheader130.us.i.i.i.1, label %.preheader128.i.us.i.i

.preheader130.us.i.i.i.1:                         ; preds = %.preheader130.us.i.i.i
  %i.bay = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 352
  %i.baz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 360
  %i.bba = load i64, ptr %i.baz, align 8, !tbaa !250
  %i.bbb = mul i64 %i.bba, 6
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bax, i64 %i.bbb ; 3 uses
  store ptr %i.bax, ptr %i.bay, align 8, !tbaa !251
  %exitcond195.not.i.i.i.1 = icmp eq i8 %i.jb, 2
  br i1 %exitcond195.not.i.i.i.1, label %.preheader128.i.us.i.i, label %.preheader130.us.i.i.i.2

.preheader130.us.i.i.i.2:                         ; preds = %.preheader130.us.i.i.i.1
  %i.bbd = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 592
  %i.bbe = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 600
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !250
  %i.bbg = mul i64 %i.bbf, 6
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbc, i64 %i.bbg ; 3 uses
  store ptr %i.bbc, ptr %i.bbd, align 8, !tbaa !251
  %exitcond195.not.i.i.i.2 = icmp eq i8 %i.jb, 3
  br i1 %exitcond195.not.i.i.i.2, label %.preheader128.i.us.i.i, label %.preheader130.us.i.i.i.3

.preheader130.us.i.i.i.3:                         ; preds = %.preheader130.us.i.i.i.2
  %i.bbi = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 832
  %i.bbj = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 840
  %i.bbk = load i64, ptr %i.bbj, align 8, !tbaa !250
  %i.bbl = mul i64 %i.bbk, 6
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbh, i64 %i.bbl
  store ptr %i.bbh, ptr %i.bbi, align 8, !tbaa !251
  br label %.preheader128.i.us.i.i

.preheader128.i.us.i.i:                           ; preds = %.preheader130.us.i.i.i, %.preheader130.us.i.i.i.1, %.preheader130.us.i.i.i.2, %.preheader130.us.i.i.i.3
  %.lcssa498 = phi ptr [ %i.bax, %.preheader130.us.i.i.i ], [ %i.bbc, %.preheader130.us.i.i.i.1 ], [ %i.bbh, %.preheader130.us.i.i.i.2 ], [ %i.bbm, %.preheader130.us.i.i.i.3 ] ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 96
  %i.bbo = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 104
  %i.bbp = load i32, ptr %i.bbo, align 8, !tbaa !252
  %i.bbq = zext i32 %i.bbp to i64
  %i.bbr = shl nuw nsw i64 %i.bbq, 1
  %i.bbs = getelementptr inbounds nuw i8, ptr %.lcssa498, i64 %i.bbr ; 3 uses
  store ptr %.lcssa498, ptr %i.bbn, align 8, !tbaa !253
  br i1 %i.is, label %.preheader128.i.us.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge

.preheader128.i.us.i.i.1:                         ; preds = %.preheader128.i.us.i.i
  %i.bbt = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 336
  %i.bbu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 344
  %i.bbv = load i32, ptr %i.bbu, align 8, !tbaa !252
  store ptr %i.bbs, ptr %i.bbt, align 8, !tbaa !253
  %i.bbw = zext i32 %i.bbv to i64
  %i.bbx = shl nuw nsw i64 %i.bbw, 1
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %i.bbx ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 576
  %i.bca = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 584
  %i.bcb = load i32, ptr %i.bca, align 8, !tbaa !252
  store ptr %i.bby, ptr %i.bbz, align 8, !tbaa !253
  %i.bcc = zext i32 %i.bcb to i64
  %i.bcd = shl nuw nsw i64 %i.bcc, 1
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bby, i64 %i.bcd ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 816
  %i.bcg = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 824
  %i.bch = load i32, ptr %i.bcg, align 8, !tbaa !252
  %i.bci = zext i32 %i.bch to i64
  %i.bcj = shl nuw nsw i64 %i.bci, 1
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bce, i64 %i.bcj
  store ptr %i.bce, ptr %i.bcf, align 8, !tbaa !253
  br label %.preheader.i.i.i

.preheader129.i.split.i.i:                        ; preds = %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i
  %i.bcl = phi i64 [ %i.bap, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i ], [ %i.bar, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i ] ; 2 uses
  %.us-phi44.i218.i.i.i = phi ptr [ %.us-phi44.i.ph.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.thread.i.i.i ], [ %.us-phi44.i.i.i.i, %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i ] ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 120
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !250 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 112
  %narrow.i.i = mul nuw nsw i8 %i.it, 6
  %i.bcp = zext nneg i8 %narrow.i.i to i64        ; 2 uses
  %i.bcq = mul i64 %i.bcn, %i.bcp
  %i.bcr = getelementptr i8, ptr %.us-phi44.i218.i.i.i, i64 %i.bcq
  %scevgep.i.i.i = getelementptr i8, ptr %i.bcr, i64 %i.bcl
  %i.bcs = add nuw nsw i64 %i.bcp, 6
  %i.bct = mul i64 %i.bcn, %i.bcs
  %i.bcu = getelementptr i8, ptr %.us-phi44.i218.i.i.i, i64 %i.bct
  %scevgep190.i.i.i = getelementptr i8, ptr %i.bcu, i64 %i.bcl ; 2 uses
  store ptr %scevgep.i.i.i, ptr %i.bco, align 8, !tbaa !251
  %i.bcv = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 104
  %i.bcw = load i32, ptr %i.bcv, align 8, !tbaa !252
  %i.bcx = zext i32 %i.bcw to i64                 ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 96
  %i.bcz = shl nuw nsw i8 %i.it, 1
  %i.bda = zext nneg i8 %i.bcz to i64             ; 2 uses
  %i.bdb = mul nuw nsw i64 %i.bcx, %i.bda
  %scevgep.i.i = getelementptr i8, ptr %scevgep190.i.i.i, i64 %i.bdb
  %i.bdc = add nuw nsw i64 %i.bda, 2
  %i.bdd = mul nuw nsw i64 %i.bdc, %i.bcx
  %scevgep97.i.i = getelementptr i8, ptr %scevgep190.i.i.i, i64 %i.bdd
  store ptr %scevgep.i.i, ptr %i.bcy, align 8, !tbaa !253
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader129.i.split.i.i, %.preheader128.i.us.i.i.1
  %.8172.i.i.i.ph = phi ptr [ %scevgep97.i.i, %.preheader129.i.split.i.i ], [ %i.bck, %.preheader128.i.us.i.i.1 ]
  %i.bde = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bdf = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !254
  %i.bdh = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.bdi = load i64, ptr %i.bdh, align 8, !tbaa !255
  %i.bdj = ptrtoint ptr %.8172.i.i.i.ph to i64
  %i.bdk = add i64 %i.bdj, 63
  %i.bdl = and i64 %i.bdk, -64
  %i.bdm = inttoptr i64 %i.bdl to ptr             ; 2 uses
  store ptr %i.bdm, ptr %i.bde, align 8, !tbaa !256
  br i1 %i.is, label %.preheader.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %i.bdn = zext i32 %i.bdg to i64
  %i.bdo = mul i64 %i.bdi, %i.bdn
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdm, i64 %i.bdo
  %i.bdq = zext nneg i8 %i.re to i64
  %i.bdr = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.bdq ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 72
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdr, i64 4
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !254
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !255
  %i.bdx = ptrtoint ptr %i.bdp to i64
  %i.bdy = add i64 %i.bdx, 63
  %i.bdz = and i64 %i.bdy, -64
  %i.bea = inttoptr i64 %i.bdz to ptr             ; 2 uses
  store ptr %i.bea, ptr %i.bds, align 8, !tbaa !256
  %i.beb = zext i32 %i.bdu to i64
  %i.bec = mul i64 %i.bdw, %i.beb
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bea, i64 %i.bec
  %narrow126.i.i.i.2 = shl nuw nsw i8 %i.re, 1
  %i.bee = zext nneg i8 %narrow126.i.i.i.2 to i64
  %i.bef = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.bee ; 3 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 72
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bef, i64 4
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !254
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bef, i64 8
  %i.bek = load i64, ptr %i.bej, align 8, !tbaa !255
  %i.bel = ptrtoint ptr %i.bed to i64
  %i.bem = add i64 %i.bel, 63
  %i.ben = and i64 %i.bem, -64
  %i.beo = inttoptr i64 %i.ben to ptr             ; 2 uses
  store ptr %i.beo, ptr %i.beg, align 8, !tbaa !256
  %i.bep = zext i32 %i.bei to i64
  %i.beq = mul i64 %i.bek, %i.bep
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.beq
  %narrow126.i.i.i.3 = select i1 %i.rf, i64 3, i64 0
  %i.bes = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %narrow126.i.i.i.3
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 72
  %i.beu = ptrtoint ptr %i.ber to i64
  %i.bev = add i64 %i.beu, 63
  %i.bew = and i64 %i.bev, -64
  %i.bex = inttoptr i64 %i.bew to ptr
  store ptr %i.bex, ptr %i.bet, align 8, !tbaa !256
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge: ; preds = %.preheader128.i.us.i.i
  %i.bey = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bez = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.bfa = load i32, ptr %i.bez, align 4, !tbaa !254 ; 0 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.bfc = load i64, ptr %i.bfb, align 8, !tbaa !255 ; 0 uses
  %i.bfd = ptrtoint ptr %i.bbs to i64
  %i.bfe = add i64 %i.bfd, 63
  %i.bff = and i64 %i.bfe, -64
  %i.bfg = inttoptr i64 %i.bff to ptr
  store ptr %i.bfg, ptr %i.bey, align 8, !tbaa !256
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i: ; preds = %.preheader.i.i.i, %.preheader.i.i.i.1, %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge, %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  store atomic i8 1, ptr %.0.val.i.i release, align 8
  %i.bfh = load ptr, ptr %i.ia, align 8, !tbaa !191
  %i.bfi = load ptr, ptr %4, align 8, !tbaa !181  ; 2 uses
  %i.bfj = icmp eq ptr %i.bfi, %i.cc
  br i1 %i.bfj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i
  %i.bfk = load i64, ptr %i.cc, align 8, !tbaa !176
  %i.bfl = add i64 %i.bfk, 1
  call void @_ZdlPvm(ptr noundef %i.bfi, i64 noundef %i.bfl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bfm = load ptr, ptr %3, align 8, !tbaa !181  ; 2 uses
  %i.bfn = icmp eq ptr %i.bfm, %i.ca
  br i1 %i.bfn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i
  %i.bfo = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.bfp = add i64 %i.bfo, 1
  call void @_ZdlPvm(ptr noundef %i.bfm, i64 noundef %i.bfp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bfq = load ptr, ptr %2, align 8, !tbaa !181  ; 2 uses
  %i.bfr = icmp eq ptr %i.bfq, %i.by
  br i1 %i.bfr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i
  %i.bfs = load i64, ptr %i.by, align 8, !tbaa !176
  %i.bft = add i64 %i.bfs, 1
  call void @_ZdlPvm(ptr noundef %i.bfq, i64 noundef %i.bft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, %bb.r
  %.023.i.i = phi ptr [ %i.bx, %bb.r ], [ %i.bfh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i ]
  %i.bfu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 0 uses
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i

_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i: ; preds = %bb.bs, %bb.o
  %.1.i.i = phi ptr [ %i.bs, %bb.o ], [ %.023.i.i, %bb.bs ]
  %.not11.i = icmp eq ptr %.1.i.i, null
  br i1 %.not11.i, label %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, label %bb.bt

_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread: ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  store i32 0, ptr %1, align 4, !tbaa !210
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

bb.bt:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 32
  %i.bfw = load i64, ptr %i.bfv, align 8, !tbaa !440 ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 40
  %i.bfy = load i64, ptr %i.bfx, align 8, !tbaa !449
  %i.bfz = icmp eq i64 %i.bfw, %i.bfy             ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.bgb = load i8, ptr %i.bga, align 4           ; 2 uses
  %i.bgc = icmp ne i8 %i.bgb, 0
  %i.bgd = select i1 %i.bfz, i1 %i.bgc, i1 false
  %i.bge = load ptr, ptr %i.bd, align 8, !tbaa !228
  %i.bgf = load i64, ptr %i.bge, align 8, !tbaa !230
  %i.bgg = icmp ne i64 %i.bgf, %i.bfw
  %i.bgh = select i1 %i.bgd, i1 true, i1 %i.bgg   ; 3 uses
  %i.bgi = select i1 %i.bgh, i32 8, i32 0         ; 2 uses
  %i.bgj = select i1 %i.bgh, i32 56, i32 0        ; 2 uses
  %i.bgk = zext i1 %i.bgh to i8
  %i.bgl = xor i8 %i.bgb, %i.bgk
  %i.bgm = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 3 uses
  %i.bgn = load i8, ptr %i.bgm, align 4, !tbaa !198, !range !196, !noundef !197
  %i.bgo = trunc nuw i8 %i.bgn to i1              ; 3 uses
  br i1 %i.bgo, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.bgp = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 184
  %i.bgq = load i8, ptr %i.bgp, align 8, !tbaa !217
  %i.bgr = trunc nuw nsw i32 %i.bgi to i8
  %i.bgs = xor i8 %i.bgq, %i.bgr
  %i.bgt = lshr i8 %i.bgs, 3
  %i.bgu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bgv = zext nneg i8 %i.bgt to i64
  %i.bgw = getelementptr inbounds nuw [8 x i8], ptr %i.bgu, i64 %i.bgv
  %i.bgx = load i64, ptr %i.bgw, align 8, !tbaa !96
  %i.bgy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bgz = load i64, ptr %i.bgy, align 8, !tbaa !96
  %i.bha = and i64 %i.bgz, %i.bgx                 ; 2 uses
  %i.bhb = trunc nuw nsw i32 %i.bgj to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %indvars.iv.i17.i = phi i64 [ %indvars.iv.next.i18.i, %bb.bv ], [ 0, %bb.bu ] ; 5 uses
  %.0159.i.i = phi i64 [ %i.bhf, %bb.bv ], [ %i.bha, %bb.bu ] ; 3 uses
  %i.bhc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0159.i.i, i1 true)
  %i.bhd = trunc nuw nsw i64 %i.bhc to i8
  %i.bhe = add i64 %.0159.i.i, -1
  %i.bhf = and i64 %i.bhe, %.0159.i.i             ; 2 uses
  %i.bhg = xor i8 %i.bhd, %i.bhb
  %indvars.iv.next.i18.i = add nuw nsw i64 %indvars.iv.i17.i, 1 ; 3 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i17.i
  store i8 %i.bhg, ptr %i.bhh, align 1, !tbaa !138
  %.not.i19.i = icmp eq i64 %i.bhf, 0
  br i1 %.not.i19.i, label %bb.bw, label %bb.bv, !llvm.loop !414

bb.bw:                                            ; preds = %bb.bv
  %i.bhi = trunc nuw i64 %indvars.iv.next.i18.i to i32
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i18.i
  %.not17.i.i.i.i = icmp eq i64 %indvars.iv.i17.i, 0
  %.pre298.i.i = load i8, ptr %i.a, align 1, !tbaa !138 ; 3 uses
  br i1 %.not17.i.i.i.i, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.bw
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.phi.trans.insert.i.i = zext i8 %.pre298.i.i to i64
  %.phi.trans.insert296.i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %.phi.trans.insert.i.i
  %.pre297.i.i = load i32, ptr %.phi.trans.insert296.i.i, align 4, !tbaa !132 ; 2 uses
end_hunk_0
