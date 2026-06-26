inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@sort_typeBstar:.preheader340.preheader
  %i.awz = lshr exact i64 %i.tf, 2
  %i.axa = trunc i64 %i.awz to i32                ; 4 uses
  %i.axb = sdiv i32 %i.axa, 2
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds [4 x i8], ptr %.0455.ph.i.i, i64 %i.axc ; 11 uses
  %i.axe = icmp slt i32 %i.axa, 513
  br i1 %i.axe, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %bb.gr
  %i.axf = icmp slt i32 %i.axa, 33
  br i1 %i.axf, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.axg = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 5 uses
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axh
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !3
  %i.axk = load i32, ptr %i.axd, align 4, !tbaa !3 ; 3 uses
  %i.axl = sext i32 %i.axk to i64
  %i.axm = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axl
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !3
  %i.axo = icmp sgt i32 %i.axj, %i.axn            ; 4 uses
  %spec.select.i.i570.i.i = select i1 %i.axo, ptr %.0455.ph.i.i, ptr %i.axd
  %i.axp = select i1 %i.axo, i32 %i.axg, i32 %i.axk
  %i.axq = sext i32 %i.axp to i64
  %i.axr = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axq
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !3
  %i.axt = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.axu = sext i32 %i.axt to i64
  %i.axv = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axu
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !3 ; 2 uses
  %i.axx = icmp sgt i32 %i.axs, %i.axw
  br i1 %i.axx, label %bb.gu, label %tr_pivot.exit.i.i

bb.gu:                                            ; preds = %bb.gt
  %spec.select22.i.i.i.i = select i1 %i.axo, ptr %i.axd, ptr %.0455.ph.i.i
  %i.axy = select i1 %i.axo, i32 %i.axk, i32 %i.axg
  %i.axz = sext i32 %i.axy to i64
  %i.aya = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.axz
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !3
  %i.ayc = icmp sgt i32 %i.ayb, %i.axw
  %spec.select22..i.i.i.i = select i1 %i.ayc, ptr %spec.select22.i.i.i.i, ptr %i.tr
  br label %tr_pivot.exit.i.i

bb.gv:                                            ; preds = %bb.gs
  %i.ayd = lshr i64 %i.tf, 4
  %i.aye = and i64 %i.ayd, 1073741823             ; 2 uses
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.aye ; 3 uses
  %i.ayg = sub nsw i64 0, %i.aye
  %i.ayh = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.ayg ; 3 uses
  %i.ayi = load i32, ptr %i.ayf, align 4, !tbaa !3 ; 2 uses
  %i.ayj = sext i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayj
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !3
  %i.aym = load i32, ptr %i.axd, align 4, !tbaa !3 ; 2 uses
  %i.ayn = sext i32 %i.aym to i64
  %i.ayo = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayn
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !3
  %i.ayq = icmp sgt i32 %i.ayl, %i.ayp            ; 3 uses
  %spec.select.i43.i.i.i = select i1 %i.ayq, ptr %i.axd, ptr %i.ayf
  %spec.select56.i.i.i.i = select i1 %i.ayq, ptr %i.ayf, ptr %i.axd ; 2 uses
  %i.ayr = load i32, ptr %i.ayh, align 4, !tbaa !3 ; 2 uses
  %i.ays = sext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ays
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !3
  %i.ayv = load i32, ptr %i.tr, align 4, !tbaa !3 ; 2 uses
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.ayw
  %i.ayy = load i32, ptr %i.ayx, align 4, !tbaa !3
  %i.ayz = icmp sgt i32 %i.ayu, %i.ayy            ; 3 uses
  %.048.i.i.i.i = select i1 %i.ayz, ptr %i.tr, ptr %i.ayh
  %.0.i44.i.i.i = select i1 %i.ayz, ptr %i.ayh, ptr %i.tr ; 2 uses
  %i.aza = select i1 %i.ayq, i32 %i.aym, i32 %i.ayi
  %i.azb = sext i32 %i.aza to i64
  %i.azc = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azb
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !3
  %i.aze = select i1 %i.ayz, i32 %i.ayv, i32 %i.ayr
  %i.azf = sext i32 %i.aze to i64
  %i.azg = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azf
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !3
  %i.azi = icmp sgt i32 %i.azd, %i.azh            ; 3 uses
  %.151.i.i.i.i = select i1 %i.azi, ptr %.0.i44.i.i.i, ptr %spec.select56.i.i.i.i ; 3 uses
  %.149.i.i.i.i = select i1 %i.azi, ptr %spec.select.i43.i.i.i, ptr %.048.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.azi, ptr %spec.select56.i.i.i.i, ptr %.0.i44.i.i.i
  %i.azj = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 3 uses
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azk
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !3
  %i.azn = load i32, ptr %.151.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.azo = sext i32 %i.azn to i64
  %i.azp = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azo
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !3
  %i.azr = icmp sgt i32 %i.azm, %i.azq            ; 3 uses
  %.054.i.i.i.i = select i1 %i.azr, ptr %.151.i.i.i.i, ptr %.0455.ph.i.i
  %.252.i.i.i.i = select i1 %i.azr, ptr %.0455.ph.i.i, ptr %.151.i.i.i.i
  %i.azs = select i1 %i.azr, i32 %i.azn, i32 %i.azj
  %i.azt = sext i32 %i.azs to i64
  %i.azu = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azt
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !3
  %i.azw = load i32, ptr %.149.i.i.i.i, align 4, !tbaa !3
  %i.azx = sext i32 %i.azw to i64
  %i.azy = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.azx
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !3
  %i.baa = icmp sgt i32 %i.azv, %i.azz            ; 2 uses
  %.3.i.i.i.i = select i1 %i.baa, ptr %.1.i.i.i.i, ptr %.252.i.i.i.i ; 2 uses
  %.2.i.i.i.i = select i1 %i.baa, ptr %.054.i.i.i.i, ptr %.149.i.i.i.i ; 2 uses
  %i.bab = load i32, ptr %.3.i.i.i.i, align 4, !tbaa !3
  %i.bac = sext i32 %i.bab to i64
  %i.bad = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bac
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !3
  %i.baf = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !3
  %i.bag = sext i32 %i.baf to i64
  %i.bah = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bag
  %i.bai = load i32, ptr %i.bah, align 4, !tbaa !3
  %i.baj = icmp sgt i32 %i.bae, %i.bai
  %.055.i.i.i.i = select i1 %i.baj, ptr %.2.i.i.i.i, ptr %.3.i.i.i.i
  br label %tr_pivot.exit.i.i

bb.gw:                                            ; preds = %bb.gr
  %i.bak = lshr i32 %i.axa, 3                     ; 2 uses
  %i.bal = zext nneg i32 %i.bak to i64            ; 3 uses
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.bal ; 3 uses
  %i.ban = shl nuw nsw i32 %i.bak, 1
  %i.bao = zext nneg i32 %i.ban to i64            ; 2 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %.0455.ph.i.i, i64 %i.bao ; 2 uses
  %i.baq = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3 ; 5 uses
  %i.bar = sext i32 %i.baq to i64
  %i.bas = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bar
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !3
  %i.bau = load i32, ptr %i.bam, align 4, !tbaa !3 ; 3 uses
  %i.bav = sext i32 %i.bau to i64
  %i.baw = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bav
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !3
  %i.bay = icmp sgt i32 %i.bat, %i.bax            ; 4 uses
  %spec.select.i45.i.i.i = select i1 %i.bay, ptr %.0455.ph.i.i, ptr %i.bam
  %i.baz = select i1 %i.bay, i32 %i.baq, i32 %i.bau
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bba
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !3
  %i.bbd = load i32, ptr %i.bap, align 4, !tbaa !3
  %i.bbe = sext i32 %i.bbd to i64
  %i.bbf = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbe
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !3 ; 2 uses
  %i.bbh = icmp sgt i32 %i.bbc, %i.bbg
  br i1 %i.bbh, label %bb.gx, label %tr_median3.exit49.i.i.i

bb.gx:                                            ; preds = %bb.gw
  %spec.select22.i47.i.i.i = select i1 %i.bay, ptr %i.bam, ptr %.0455.ph.i.i
  %i.bbi = select i1 %i.bay, i32 %i.bau, i32 %i.baq
  %i.bbj = sext i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbj
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !3
  %i.bbm = icmp sgt i32 %i.bbl, %i.bbg
  %spec.select22..i48.i.i.i = select i1 %i.bbm, ptr %spec.select22.i47.i.i.i, ptr %i.bap
  br label %tr_median3.exit49.i.i.i

tr_median3.exit49.i.i.i:                          ; preds = %bb.gx, %bb.gw
  %.0.i46.i.i.i = phi ptr [ %spec.select22..i48.i.i.i, %bb.gx ], [ %spec.select.i45.i.i.i, %bb.gw ] ; 3 uses
  %i.bbn = sub nsw i64 0, %i.bal                  ; 2 uses
  %i.bbo = getelementptr inbounds [4 x i8], ptr %i.axd, i64 %i.bbn ; 3 uses
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.axd, i64 %i.bal ; 2 uses
  %i.bbq = load i32, ptr %i.bbo, align 4, !tbaa !3 ; 3 uses
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbr
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !3
  %i.bbu = load i32, ptr %i.axd, align 4, !tbaa !3 ; 3 uses
  %i.bbv = sext i32 %i.bbu to i64
  %i.bbw = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bbv
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !3
  %i.bby = icmp sgt i32 %i.bbt, %i.bbx            ; 4 uses
  %spec.select.i50.i.i.i = select i1 %i.bby, ptr %i.bbo, ptr %i.axd
  %i.bbz = select i1 %i.bby, i32 %i.bbq, i32 %i.bbu
  %i.bca = sext i32 %i.bbz to i64
  %i.bcb = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bca
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !3
  %i.bcd = load i32, ptr %i.bbp, align 4, !tbaa !3
  %i.bce = sext i32 %i.bcd to i64
  %i.bcf = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bce
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !3 ; 2 uses
  %i.bch = icmp sgt i32 %i.bcc, %i.bcg
  br i1 %i.bch, label %bb.gy, label %tr_median3.exit54.i.i.i

bb.gy:                                            ; preds = %tr_median3.exit49.i.i.i
  %spec.select22.i52.i.i.i = select i1 %i.bby, ptr %i.axd, ptr %i.bbo
  %i.bci = select i1 %i.bby, i32 %i.bbu, i32 %i.bbq
  %i.bcj = sext i32 %i.bci to i64
  %i.bck = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bcj
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !3
  %i.bcm = icmp sgt i32 %i.bcl, %i.bcg
  %spec.select22..i53.i.i.i = select i1 %i.bcm, ptr %spec.select22.i52.i.i.i, ptr %i.bbp
  br label %tr_median3.exit54.i.i.i

tr_median3.exit54.i.i.i:                          ; preds = %bb.gy, %tr_median3.exit49.i.i.i
  %.0.i51.i.i.i = phi ptr [ %spec.select22..i53.i.i.i, %bb.gy ], [ %spec.select.i50.i.i.i, %tr_median3.exit49.i.i.i ] ; 3 uses
  %i.bcn = sub nsw i64 0, %i.bao
  %i.bco = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.bcn ; 3 uses
  %i.bcp = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.bbn ; 3 uses
  %i.bcq = load i32, ptr %i.bco, align 4, !tbaa !3 ; 3 uses
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bcr
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !3
  %i.bcu = load i32, ptr %i.bcp, align 4, !tbaa !3 ; 3 uses
  %i.bcv = sext i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !3
  %i.bcy = icmp sgt i32 %i.bct, %i.bcx            ; 4 uses
  %spec.select.i55.i.i.i = select i1 %i.bcy, ptr %i.bco, ptr %i.bcp
  %i.bcz = select i1 %i.bcy, i32 %i.bcq, i32 %i.bcu
  %i.bda = sext i32 %i.bcz to i64
  %i.bdb = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bda
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !3 ; 2 uses
  %i.bdd = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.bde = sext i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bde
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !3 ; 2 uses
  %i.bdh = icmp sgt i32 %i.bdc, %i.bdg
  br i1 %i.bdh, label %bb.gz, label %tr_median3.exit59.i.i.i

bb.gz:                                            ; preds = %tr_median3.exit54.i.i.i
  %spec.select22.i57.i.i.i = select i1 %i.bcy, ptr %i.bcp, ptr %i.bco
  %i.bdi = select i1 %i.bcy, i32 %i.bcu, i32 %i.bcq
  %i.bdj = sext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdj
  %i.bdl = load i32, ptr %i.bdk, align 4, !tbaa !3
  %i.bdm = icmp sgt i32 %i.bdl, %i.bdg
  %spec.select22..i58.i.i.i = select i1 %i.bdm, ptr %spec.select22.i57.i.i.i, ptr %i.tr ; 2 uses
  %.pre.i.i.i = load i32, ptr %spec.select22..i58.i.i.i, align 4, !tbaa !3
  %.pre65.i.i.i = sext i32 %.pre.i.i.i to i64
  %.phi.trans.insert.i.i.i = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %.pre65.i.i.i
  %.pre66.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  br label %tr_median3.exit59.i.i.i

tr_median3.exit59.i.i.i:                          ; preds = %bb.gz, %tr_median3.exit54.i.i.i
  %i.bdn = phi i32 [ %i.bdc, %tr_median3.exit54.i.i.i ], [ %.pre66.i.i.i, %bb.gz ] ; 2 uses
  %.0.i56.i.i.i = phi ptr [ %spec.select.i55.i.i.i, %tr_median3.exit54.i.i.i ], [ %spec.select22..i58.i.i.i, %bb.gz ]
  %i.bdo = load i32, ptr %.0.i46.i.i.i, align 4, !tbaa !3 ; 3 uses
  %i.bdp = sext i32 %i.bdo to i64
  %i.bdq = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdp
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !3
  %i.bds = load i32, ptr %.0.i51.i.i.i, align 4, !tbaa !3 ; 3 uses
  %i.bdt = sext i32 %i.bds to i64
  %i.bdu = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdt
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !3
  %i.bdw = icmp sgt i32 %i.bdr, %i.bdv            ; 4 uses
  %spec.select.i60.i.i.i = select i1 %i.bdw, ptr %.0.i46.i.i.i, ptr %.0.i51.i.i.i
  %i.bdx = select i1 %i.bdw, i32 %i.bdo, i32 %i.bds
  %i.bdy = sext i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bdy
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !3
  %i.beb = icmp sgt i32 %i.bea, %i.bdn
  br i1 %i.beb, label %bb.ha, label %tr_pivot.exit.i.i

bb.ha:                                            ; preds = %tr_median3.exit59.i.i.i
  %spec.select22.i62.i.i.i = select i1 %i.bdw, ptr %.0.i51.i.i.i, ptr %.0.i46.i.i.i
  %i.bec = select i1 %i.bdw, i32 %i.bds, i32 %i.bdo
  %i.bed = sext i32 %i.bec to i64
  %i.bee = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bed
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !3
  %i.beg = icmp sgt i32 %i.bef, %i.bdn
  %spec.select22..i63.i.i.i = select i1 %i.beg, ptr %spec.select22.i62.i.i.i, ptr %.0.i56.i.i.i
  br label %tr_pivot.exit.i.i

tr_pivot.exit.i.i:                                ; preds = %bb.ha, %tr_median3.exit59.i.i.i, %bb.gv, %bb.gu, %bb.gt
  %i.beh = phi i32 [ %i.axg, %bb.gt ], [ %i.azj, %bb.gv ], [ %i.axg, %bb.gu ], [ %i.baq, %bb.ha ], [ %i.baq, %tr_median3.exit59.i.i.i ]
  %.0.i569.i.i = phi ptr [ %spec.select.i.i570.i.i, %bb.gt ], [ %.055.i.i.i.i, %bb.gv ], [ %spec.select22..i.i.i.i, %bb.gu ], [ %spec.select22..i63.i.i.i, %bb.ha ], [ %spec.select.i60.i.i.i, %tr_median3.exit59.i.i.i ] ; 2 uses
  %i.bei = load i32, ptr %.0.i569.i.i, align 4, !tbaa !3
  store i32 %i.bei, ptr %.0455.ph.i.i, align 4, !tbaa !3
  store i32 %i.beh, ptr %.0.i569.i.i, align 4, !tbaa !3
  %i.bej = load i32, ptr %.0455.ph.i.i, align 4, !tbaa !3
  %i.bek = sext i32 %i.bej to i64
  %i.bel = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bek
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !3 ; 13 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hc, %tr_pivot.exit.i.i
  %.0154.i.i = phi ptr [ %.0455.ph.i.i, %tr_pivot.exit.i.i ], [ %i.ben, %bb.hc ] ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %.0154.i.i, i64 4 ; 9 uses
  %i.beo = icmp ult ptr %i.ben, %.0463.ph.i.i
  br i1 %i.beo, label %bb.hc, label %.critedge2.i55.i

bb.hc:                                            ; preds = %bb.hb
  %i.bep = load i32, ptr %i.ben, align 4, !tbaa !3
  %i.beq = sext i32 %i.bep to i64
  %i.ber = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.beq
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !3 ; 2 uses
  %i.bet = icmp eq i32 %i.bes, %i.bem
  br i1 %i.bet, label %bb.hb, label %.critedge.i58.i, !llvm.loop !42

.critedge.i58.i:                                  ; preds = %bb.hc
  %i.beu = icmp slt i32 %i.bes, %i.bem
  br i1 %i.beu, label %.preheader206.i.i, label %.critedge2.i55.i

.preheader206.i.i:                                ; preds = %.critedge.i58.i
  %i.bev = getelementptr inbounds nuw i8, ptr %.0154.i.i, i64 8 ; 3 uses
  %i.bew = icmp ult ptr %i.bev, %.0463.ph.i.i
  br i1 %i.bew, label %.lr.ph.i59.i, label %.critedge2.i55.i

.lr.ph.i59.i:                                     ; preds = %.preheader206.i.i, %bb.hf
  %i.bex = phi ptr [ %i.bff, %bb.hf ], [ %i.bev, %.preheader206.i.i ] ; 4 uses
  %.0159217.i.i = phi ptr [ %.1160.i.i, %bb.hf ], [ %i.ben, %.preheader206.i.i ] ; 5 uses
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !3 ; 2 uses
  %i.bez = sext i32 %i.bey to i64
  %i.bfa = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bez
  %i.bfb = load i32, ptr %i.bfa, align 4, !tbaa !3 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.bfb, %i.bem
  br i1 %.not.i60.i, label %.critedge2.i55.i, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph.i59.i
  %i.bfc = icmp eq i32 %i.bfb, %i.bem
  br i1 %i.bfc, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.bfd = load i32, ptr %.0159217.i.i, align 4, !tbaa !3
  store i32 %i.bfd, ptr %i.bex, align 4, !tbaa !3
  store i32 %i.bey, ptr %.0159217.i.i, align 4, !tbaa !3
  %i.bfe = getelementptr inbounds nuw i8, ptr %.0159217.i.i, i64 4
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.1160.i.i = phi ptr [ %i.bfe, %bb.he ], [ %.0159217.i.i, %bb.hd ] ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bex, i64 4 ; 3 uses
  %i.bfg = icmp ult ptr %i.bff, %.0463.ph.i.i
  br i1 %i.bfg, label %.lr.ph.i59.i, label %.critedge2.i55.i, !llvm.loop !43

.critedge2.i55.i:                                 ; preds = %bb.hb, %bb.hf, %.lr.ph.i59.i, %.preheader206.i.i, %.critedge.i58.i
  %.2161.i.i = phi ptr [ %i.ben, %.critedge.i58.i ], [ %.0159217.i.i, %.lr.ph.i59.i ], [ %i.ben, %.preheader206.i.i ], [ %.1160.i.i, %bb.hf ], [ %i.ben, %bb.hb ] ; 2 uses
  %.2156.i.i = phi ptr [ %i.ben, %.critedge.i58.i ], [ %i.bex, %.lr.ph.i59.i ], [ %i.bev, %.preheader206.i.i ], [ %i.bff, %bb.hf ], [ %i.ben, %bb.hb ] ; 6 uses
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hh, %.critedge2.i55.i
  %.0149.i.i = phi ptr [ %.0463.ph.i.i, %.critedge2.i55.i ], [ %i.bfh, %bb.hh ] ; 2 uses
  %i.bfh = getelementptr inbounds i8, ptr %.0149.i.i, i64 -4 ; 9 uses
  %i.bfi = icmp ult ptr %.2156.i.i, %i.bfh
  br i1 %i.bfi, label %bb.hh, label %.critedge6.i.i

bb.hh:                                            ; preds = %bb.hg
  %i.bfj = load i32, ptr %i.bfh, align 4, !tbaa !3
  %i.bfk = sext i32 %i.bfj to i64
  %i.bfl = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bfk
  %i.bfm = load i32, ptr %i.bfl, align 4, !tbaa !3 ; 2 uses
  %i.bfn = icmp eq i32 %i.bfm, %i.bem
  br i1 %i.bfn, label %bb.hg, label %.critedge4.i.i, !llvm.loop !44

.critedge4.i.i:                                   ; preds = %bb.hh
  %i.bfo = icmp sgt i32 %i.bfm, %i.bem
  br i1 %i.bfo, label %.preheader.i.i298, label %.critedge6.i.i

.preheader.i.i298:                                ; preds = %.critedge4.i.i
  %i.bfp = getelementptr inbounds i8, ptr %.0149.i.i, i64 -8 ; 3 uses
  %i.bfq = icmp ult ptr %.2156.i.i, %i.bfp
  br i1 %i.bfq, label %.lr.ph223.i.i, label %.critedge6.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader.i.i298, %bb.hk
  %i.bfr = phi ptr [ %i.bfz, %bb.hk ], [ %i.bfp, %.preheader.i.i298 ] ; 4 uses
  %.0143222.i.i = phi ptr [ %.1144.i.i, %bb.hk ], [ %i.bfh, %.preheader.i.i298 ] ; 5 uses
  %i.bfs = load i32, ptr %i.bfr, align 4, !tbaa !3 ; 2 uses
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bft
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !3 ; 2 uses
  %.not197.i.i = icmp slt i32 %i.bfv, %i.bem
  br i1 %.not197.i.i, label %.critedge6.i.i, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph223.i.i
  %i.bfw = icmp eq i32 %i.bfv, %i.bem
  br i1 %i.bfw, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bfx = load i32, ptr %.0143222.i.i, align 4, !tbaa !3
  store i32 %i.bfx, ptr %i.bfr, align 4, !tbaa !3
  store i32 %i.bfs, ptr %.0143222.i.i, align 4, !tbaa !3
  %i.bfy = getelementptr inbounds i8, ptr %.0143222.i.i, i64 -4
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.1144.i.i = phi ptr [ %i.bfy, %bb.hj ], [ %.0143222.i.i, %bb.hi ] ; 2 uses
  %i.bfz = getelementptr inbounds i8, ptr %i.bfr, i64 -4 ; 3 uses
  %i.bga = icmp ult ptr %.2156.i.i, %i.bfz
  br i1 %i.bga, label %.lr.ph223.i.i, label %.critedge6.i.i, !llvm.loop !45

.critedge6.i.i:                                   ; preds = %bb.hg, %bb.hk, %.lr.ph223.i.i, %.preheader.i.i298, %.critedge4.i.i
  %.2151.i.i = phi ptr [ %i.bfh, %.critedge4.i.i ], [ %i.bfr, %.lr.ph223.i.i ], [ %i.bfp, %.preheader.i.i298 ], [ %i.bfz, %bb.hk ], [ %i.bfh, %bb.hg ] ; 2 uses
  %.2145.i.i = phi ptr [ %i.bfh, %.critedge4.i.i ], [ %.0143222.i.i, %.lr.ph223.i.i ], [ %i.bfh, %.preheader.i.i298 ], [ %.1144.i.i, %bb.hk ], [ %i.bfh, %bb.hg ] ; 2 uses
  %i.bgb = icmp ult ptr %.2156.i.i, %.2151.i.i
  br i1 %i.bgb, label %.lr.ph247.i.i, label %._crit_edge.i56.i

.lr.ph247.i.i:                                    ; preds = %.critedge6.i.i, %.critedge10.i.i
  %.3146246.i.i = phi ptr [ %.4147.lcssa.i.i, %.critedge10.i.i ], [ %.2145.i.i, %.critedge6.i.i ] ; 2 uses
  %.3152245.i.i = phi ptr [ %.lcssa208.i.i, %.critedge10.i.i ], [ %.2151.i.i, %.critedge6.i.i ] ; 5 uses
  %.3157244.i.i = phi ptr [ %.lcssa.i57.i, %.critedge10.i.i ], [ %.2156.i.i, %.critedge6.i.i ] ; 3 uses
  %.3162243.i.i = phi ptr [ %.4163.lcssa.i.i, %.critedge10.i.i ], [ %.2161.i.i, %.critedge6.i.i ] ; 2 uses
  %i.bgc = load i32, ptr %.3157244.i.i, align 4, !tbaa !3
  %i.bgd = load i32, ptr %.3152245.i.i, align 4, !tbaa !3
  store i32 %i.bgd, ptr %.3157244.i.i, align 4, !tbaa !3
  store i32 %i.bgc, ptr %.3152245.i.i, align 4, !tbaa !3
  %i.bge = getelementptr inbounds nuw i8, ptr %.3157244.i.i, i64 4 ; 3 uses
  %i.bgf = icmp ult ptr %i.bge, %.3152245.i.i
  br i1 %i.bgf, label %.lr.ph230.i.i, label %.critedge8.i.i

.lr.ph230.i.i:                                    ; preds = %.lr.ph247.i.i, %bb.hn
  %i.bgg = phi ptr [ %i.bgo, %bb.hn ], [ %i.bge, %.lr.ph247.i.i ] ; 4 uses
  %.4163229.i.i = phi ptr [ %.5164.i.i, %bb.hn ], [ %.3162243.i.i, %.lr.ph247.i.i ] ; 5 uses
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !3 ; 2 uses
  %i.bgi = sext i32 %i.bgh to i64
  %i.bgj = getelementptr inbounds [4 x i8], ptr %.0452.ph.i.i, i64 %i.bgi
  %i.bgk = load i32, ptr %i.bgj, align 4, !tbaa !3 ; 2 uses
  %.not199.i.i = icmp sgt i32 %i.bgk, %i.bem
  br i1 %.not199.i.i, label %.critedge8.i.i, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph230.i.i
  %i.bgl = icmp eq i32 %i.bgk, %i.bem
  br i1 %i.bgl, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.bgm = load i32, ptr %.4163229.i.i, align 4, !tbaa !3
  store i32 %i.bgm, ptr %i.bgg, align 4, !tbaa !3
  store i32 %i.bgh, ptr %.4163229.i.i, align 4, !tbaa !3
  %i.bgn = getelementptr inbounds nuw i8, ptr %.4163229.i.i, i64 4
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.5164.i.i = phi ptr [ %i.bgn, %bb.hm ], [ %.4163229.i.i, %bb.hl ] ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgg, i64 4 ; 3 uses
  %i.bgp = icmp ult ptr %i.bgo, %.3152245.i.i
  br i1 %i.bgp, label %.lr.ph230.i.i, label %.critedge8.i.i, !llvm.loop !46

.critedge8.i.i:                                   ; preds = %bb.hn, %.lr.ph230.i.i, %.lr.ph247.i.i
  %.4163.lcssa.i.i = phi ptr [ %.3162243.i.i, %.lr.ph247.i.i ], [ %.5164.i.i, %bb.hn ], [ %.4163229.i.i, %.lr.ph230.i.i ] ; 2 uses
  %.lcssa.i57.i = phi ptr [ %i.bge, %.lr.ph247.i.i ], [ %i.bgo, %bb.hn ], [ %i.bgg, %.lr.ph230.i.i ] ; 5 uses
  %i.bgq = getelementptr inbounds i8, ptr %.3152245.i.i, i64 -4 ; 3 uses
  %i.bgr = icmp ult ptr %.lcssa.i57.i, %i.bgq
  br i1 %i.bgr, label %.lr.ph237.i.i, label %.critedge10.i.i

.lr.ph237.i.i:                                    ; preds = %.critedge8.i.i, %bb.hq
  %i.bgs = phi ptr [ %i.bha, %bb.hq ], [ %i.bgq, %.critedge8.i.i ] ; 4 uses
  %.4147236.i.i = phi ptr [ %.5148.i.i, %bb.hq ], [ %.3146246.i.i, %.critedge8.i.i ] ; 5 uses
end_hunk_0
begin_hunk_1_@ss_mintrosort:bb.a
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !3
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds i8, ptr %i.ce, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !7
  %i.pk = load i32, ptr %i.ol, align 4, !tbaa !3  ; 2 uses
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !3
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds i8, ptr %i.ce, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !7
  %i.pr = icmp ugt i8 %i.pj, %i.pq                ; 3 uses
  %.060.i.i = select i1 %i.pr, ptr %i.ol, ptr %i.on
  %.0.i50.i = select i1 %i.pr, ptr %i.on, ptr %i.ol ; 2 uses
  %i.ps = select i1 %i.pc, i32 %i.ov, i32 %i.oo
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds i8, ptr %i.ce, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !7
  %i.pz = select i1 %i.pr, i32 %i.pk, i32 %i.pd
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !3
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds i8, ptr %i.ce, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !7
  %i.qg = icmp ugt i8 %i.py, %i.qf                ; 3 uses
  %.163.i.i = select i1 %i.qg, ptr %.0.i50.i, ptr %spec.select68.i.i ; 3 uses
  %.161.i.i = select i1 %i.qg, ptr %spec.select.i49.i, ptr %.060.i.i ; 2 uses
  %.1.i.i = select i1 %i.qg, ptr %spec.select68.i.i, ptr %.0.i50.i
  %i.qh = load i32, ptr %.0426, align 4, !tbaa !3 ; 3 uses
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds i8, ptr %i.ce, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !7
  %i.qo = load i32, ptr %.163.i.i, align 4, !tbaa !3 ; 2 uses
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !3
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds i8, ptr %i.ce, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !7
  %i.qv = icmp ugt i8 %i.qn, %i.qu                ; 3 uses
  %.066.i.i = select i1 %i.qv, ptr %.163.i.i, ptr %.0426
  %.264.i.i = select i1 %i.qv, ptr %.0426, ptr %.163.i.i
  %i.qw = select i1 %i.qv, i32 %i.qo, i32 %i.qh
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds i8, ptr %i.ce, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !7
  %i.rd = load i32, ptr %.161.i.i, align 4, !tbaa !3
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !3
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %i.ce, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !7
  %i.rk = icmp ugt i8 %i.rc, %i.rj                ; 2 uses
  %.3.i.i = select i1 %i.rk, ptr %.1.i.i, ptr %.264.i.i ; 2 uses
  %.2.i.i = select i1 %i.rk, ptr %.066.i.i, ptr %.161.i.i ; 2 uses
  %i.rl = load i32, ptr %.3.i.i, align 4, !tbaa !3
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !3
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds i8, ptr %i.ce, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !7
  %i.rs = load i32, ptr %.2.i.i, align 4, !tbaa !3
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %1, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds i8, ptr %i.ce, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !7
  %i.rz = icmp ugt i8 %i.rr, %i.ry
  %.067.i.i = select i1 %i.rz, ptr %.2.i.i, ptr %.3.i.i
  br label %ss_pivot.exit

bb.av:                                            ; preds = %bb.aq
  %i.sa = lshr i32 %i.mp, 3                       ; 2 uses
  %i.sb = zext nneg i32 %i.sa to i64              ; 3 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.0426, i64 %i.sb ; 3 uses
  %i.sd = shl nuw nsw i32 %i.sa, 1
  %i.se = zext nneg i32 %i.sd to i64              ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.0426, i64 %i.se ; 2 uses
  %i.sg = load i32, ptr %.0426, align 4, !tbaa !3 ; 5 uses
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [4 x i8], ptr %1, i64 %i.sh
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !3
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds i8, ptr %i.ce, i64 %i.sk
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !7
  %i.sn = load i32, ptr %i.sc, align 4, !tbaa !3  ; 3 uses
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.so
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !3
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds i8, ptr %i.ce, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !7
  %i.su = icmp ugt i8 %i.sm, %i.st                ; 4 uses
  %spec.select.i51.i = select i1 %i.su, ptr %.0426, ptr %i.sc
  %i.sv = select i1 %i.su, i32 %i.sg, i32 %i.sn
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !3
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds i8, ptr %i.ce, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !7
  %i.tc = load i32, ptr %i.sf, align 4, !tbaa !3
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [4 x i8], ptr %1, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !3
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds i8, ptr %i.ce, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !7   ; 2 uses
  %i.tj = icmp ugt i8 %i.tb, %i.ti
  br i1 %i.tj, label %bb.aw, label %ss_median3.exit55.i

bb.aw:                                            ; preds = %bb.av
  %spec.select28.i53.i = select i1 %i.su, ptr %i.sc, ptr %.0426
  %i.tk = select i1 %i.su, i32 %i.sn, i32 %i.sg
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !3
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds i8, ptr %i.ce, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !7
  %i.tr = icmp ugt i8 %i.tq, %i.ti
  %spec.select28..i54.i = select i1 %i.tr, ptr %spec.select28.i53.i, ptr %i.sf
  br label %ss_median3.exit55.i

ss_median3.exit55.i:                              ; preds = %bb.aw, %bb.av
  %.0.i52.i = phi ptr [ %spec.select28..i54.i, %bb.aw ], [ %spec.select.i51.i, %bb.av ] ; 3 uses
  %i.ts = sub nsw i64 0, %i.sb                    ; 2 uses
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ms, i64 %i.ts ; 3 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.sb ; 2 uses
  %i.tv = load i32, ptr %i.tt, align 4, !tbaa !3  ; 3 uses
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !3
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds i8, ptr %i.ce, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !7
  %i.uc = load i32, ptr %i.ms, align 4, !tbaa !3  ; 3 uses
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds i8, ptr %i.ce, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !7
  %i.uj = icmp ugt i8 %i.ub, %i.ui                ; 4 uses
  %spec.select.i56.i = select i1 %i.uj, ptr %i.tt, ptr %i.ms
  %i.uk = select i1 %i.uj, i32 %i.tv, i32 %i.uc
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ul
  %i.un = load i32, ptr %i.um, align 4, !tbaa !3
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds i8, ptr %i.ce, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !7
  %i.ur = load i32, ptr %i.tu, align 4, !tbaa !3
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %1, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !3
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds i8, ptr %i.ce, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !7   ; 2 uses
  %i.uy = icmp ugt i8 %i.uq, %i.ux
  br i1 %i.uy, label %bb.ax, label %ss_median3.exit60.i

bb.ax:                                            ; preds = %ss_median3.exit55.i
  %spec.select28.i58.i = select i1 %i.uj, ptr %i.ms, ptr %i.tt
  %i.uz = select i1 %i.uj, i32 %i.uc, i32 %i.tv
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !3
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds i8, ptr %i.ce, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !7
  %i.vg = icmp ugt i8 %i.vf, %i.ux
  %spec.select28..i59.i = select i1 %i.vg, ptr %spec.select28.i58.i, ptr %i.tu
  br label %ss_median3.exit60.i

ss_median3.exit60.i:                              ; preds = %bb.ax, %ss_median3.exit55.i
  %.0.i57.i = phi ptr [ %spec.select28..i59.i, %bb.ax ], [ %spec.select.i56.i, %ss_median3.exit55.i ] ; 3 uses
  %i.vh = getelementptr inbounds i8, ptr %.0436, i64 -4 ; 4 uses
  %i.vi = sub nsw i64 0, %i.se
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.vi ; 3 uses
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.ts ; 3 uses
  %i.vl = load i32, ptr %i.vj, align 4, !tbaa !3  ; 3 uses
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !3
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds i8, ptr %i.ce, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !7
  %i.vs = load i32, ptr %i.vk, align 4, !tbaa !3  ; 3 uses
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !3
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds i8, ptr %i.ce, i64 %i.vw
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !7
  %i.vz = icmp ugt i8 %i.vr, %i.vy                ; 4 uses
  %spec.select.i61.i = select i1 %i.vz, ptr %i.vj, ptr %i.vk
  %i.wa = select i1 %i.vz, i32 %i.vl, i32 %i.vs
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.wb
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !3
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds i8, ptr %i.ce, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !7   ; 2 uses
  %i.wh = load i32, ptr %i.vh, align 4, !tbaa !3
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !3
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds i8, ptr %i.ce, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !7   ; 2 uses
  %i.wo = icmp ugt i8 %i.wg, %i.wn
  br i1 %i.wo, label %bb.ay, label %ss_median3.exit65.i

bb.ay:                                            ; preds = %ss_median3.exit60.i
  %spec.select28.i63.i = select i1 %i.vz, ptr %i.vk, ptr %i.vj
  %i.wp = select i1 %i.vz, i32 %i.vs, i32 %i.vl
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !3
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds i8, ptr %i.ce, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !7
  %i.ww = icmp ugt i8 %i.wv, %i.wn
  %spec.select28..i64.i = select i1 %i.ww, ptr %spec.select28.i63.i, ptr %i.vh ; 2 uses
  %.pre.i517 = load i32, ptr %spec.select28..i64.i, align 4, !tbaa !3
  %.pre71.i = sext i32 %.pre.i517 to i64
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre71.i
  %.pre72.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %.phi.trans.insert73.i = sext i32 %.pre72.i to i64
  %.phi.trans.insert74.i = getelementptr inbounds i8, ptr %i.ce, i64 %.phi.trans.insert73.i
  %.pre75.i = load i8, ptr %.phi.trans.insert74.i, align 1, !tbaa !7
  br label %ss_median3.exit65.i

ss_median3.exit65.i:                              ; preds = %bb.ay, %ss_median3.exit60.i
  %i.wx = phi i8 [ %i.wg, %ss_median3.exit60.i ], [ %.pre75.i, %bb.ay ] ; 2 uses
  %.0.i62.i = phi ptr [ %spec.select.i61.i, %ss_median3.exit60.i ], [ %spec.select28..i64.i, %bb.ay ]
  %i.wy = load i32, ptr %.0.i52.i, align 4, !tbaa !3 ; 3 uses
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !3
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds i8, ptr %i.ce, i64 %i.xc
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !7
  %i.xf = load i32, ptr %.0.i57.i, align 4, !tbaa !3 ; 3 uses
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !3
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.ce, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !7
  %i.xm = icmp ugt i8 %i.xe, %i.xl                ; 4 uses
  %spec.select.i66.i515 = select i1 %i.xm, ptr %.0.i52.i, ptr %.0.i57.i
  %i.xn = select i1 %i.xm, i32 %i.wy, i32 %i.xf
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !3
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds i8, ptr %i.ce, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !7
  %i.xu = icmp ugt i8 %i.xt, %i.wx
  br i1 %i.xu, label %bb.az, label %ss_pivot.exit

bb.az:                                            ; preds = %ss_median3.exit65.i
  %spec.select28.i68.i = select i1 %i.xm, ptr %.0.i57.i, ptr %.0.i52.i
  %i.xv = select i1 %i.xm, i32 %i.xf, i32 %i.wy
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xw
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !3
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds i8, ptr %i.ce, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !7
  %i.yc = icmp ugt i8 %i.yb, %i.wx
  %spec.select28..i69.i = select i1 %i.yc, ptr %spec.select28.i68.i, ptr %.0.i62.i
  br label %ss_pivot.exit

ss_pivot.exit:                                    ; preds = %bb.as, %bb.at, %bb.au, %ss_median3.exit65.i, %bb.az
  %i.yd = phi i32 [ %i.mw, %bb.as ], [ %i.qh, %bb.au ], [ %i.mw, %bb.at ], [ %i.sg, %bb.az ], [ %i.sg, %ss_median3.exit65.i ]
  %.0.i516 = phi ptr [ %spec.select.i.i518, %bb.as ], [ %.067.i.i, %bb.au ], [ %spec.select28..i.i, %bb.at ], [ %spec.select28..i69.i, %bb.az ], [ %spec.select.i66.i515, %ss_median3.exit65.i ] ; 2 uses
  %i.ye = load i32, ptr %.0.i516, align 4, !tbaa !3 ; 2 uses
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !3
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds i8, ptr %i.ce, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !7   ; 14 uses
  store i32 %i.ye, ptr %.0426, align 4, !tbaa !3
  store i32 %i.yd, ptr %.0.i516, align 4, !tbaa !3
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %ss_pivot.exit
  %.0414 = phi ptr [ %.0426, %ss_pivot.exit ], [ %i.yl, %bb.bb ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.0414, i64 4 ; 9 uses
  %i.ym = icmp ult ptr %i.yl, %.0436
  br i1 %i.ym, label %bb.bb, label %.critedge2

bb.bb:                                            ; preds = %bb.ba
  %i.yn = load i32, ptr %i.yl, align 4, !tbaa !3
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !3
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds i8, ptr %i.ce, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !7   ; 2 uses
  %i.yu = icmp eq i8 %i.yt, %i.yk
  br i1 %i.yu, label %bb.ba, label %.critedge, !llvm.loop !144

.critedge:                                        ; preds = %bb.bb
  %i.yv = icmp ult i8 %i.yt, %i.yk
  br i1 %i.yv, label %.preheader558, label %.critedge2

.preheader558:                                    ; preds = %.critedge
  %i.yw = getelementptr inbounds nuw i8, ptr %.0414, i64 8 ; 3 uses
  %i.yx = icmp ult ptr %i.yw, %.0436
  br i1 %i.yx, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader558, %bb.be
  %i.yy = phi ptr [ %i.zj, %bb.be ], [ %i.yw, %.preheader558 ] ; 4 uses
  %.1420600 = phi ptr [ %.2421, %bb.be ], [ %i.yl, %.preheader558 ] ; 5 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !3  ; 2 uses
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.za
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !3
  %i.zd = sext i32 %i.zc to i64
  %i.ze = getelementptr inbounds i8, ptr %i.ce, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !7   ; 2 uses
  %.not = icmp ugt i8 %i.zf, %i.yk
  br i1 %.not, label %.critedge2, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph
  %i.zg = icmp eq i8 %i.zf, %i.yk
  br i1 %i.zg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.zh = load i32, ptr %.1420600, align 4, !tbaa !3
  store i32 %i.zh, ptr %i.yy, align 4, !tbaa !3
  store i32 %i.yz, ptr %.1420600, align 4, !tbaa !3
  %i.zi = getelementptr inbounds nuw i8, ptr %.1420600, i64 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.2421 = phi ptr [ %i.zi, %bb.bd ], [ %.1420600, %bb.bc ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yy, i64 4 ; 3 uses
  %i.zk = icmp ult ptr %i.zj, %.0436
  br i1 %i.zk, label %.lr.ph, label %.critedge2, !llvm.loop !145

.critedge2:                                       ; preds = %bb.ba, %bb.be, %.lr.ph, %.preheader558, %.critedge
  %.3422 = phi ptr [ %i.yl, %.critedge ], [ %.1420600, %.lr.ph ], [ %i.yl, %.preheader558 ], [ %.2421, %bb.be ], [ %i.yl, %bb.ba ] ; 2 uses
  %.2416 = phi ptr [ %i.yl, %.critedge ], [ %i.yy, %.lr.ph ], [ %i.yw, %.preheader558 ], [ %i.zj, %bb.be ], [ %i.yl, %bb.ba ] ; 6 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.critedge2
  %.0409 = phi ptr [ %.0436, %.critedge2 ], [ %i.zl, %bb.bg ] ; 2 uses
  %i.zl = getelementptr inbounds i8, ptr %.0409, i64 -4 ; 9 uses
  %i.zm = icmp ult ptr %.2416, %i.zl
  br i1 %i.zm, label %bb.bg, label %.critedge6

bb.bg:                                            ; preds = %bb.bf
  %i.zn = load i32, ptr %i.zl, align 4, !tbaa !3
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !3
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds i8, ptr %i.ce, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !7   ; 2 uses
  %i.zu = icmp eq i8 %i.zt, %i.yk
  br i1 %i.zu, label %bb.bf, label %.critedge4, !llvm.loop !146

.critedge4:                                       ; preds = %bb.bg
  %i.zv = icmp ugt i8 %i.zt, %i.yk
  br i1 %i.zv, label %.preheader, label %.critedge6

.preheader:                                       ; preds = %.critedge4
  %i.zw = getelementptr inbounds i8, ptr %.0409, i64 -8 ; 3 uses
  %i.zx = icmp ult ptr %.2416, %i.zw
  br i1 %i.zx, label %.lr.ph607, label %.critedge6

.lr.ph607:                                        ; preds = %.preheader, %bb.bj
  %i.zy = phi ptr [ %i.aaj, %bb.bj ], [ %i.zw, %.preheader ] ; 4 uses
  %.0403606 = phi ptr [ %.1404, %bb.bj ], [ %i.zl, %.preheader ] ; 5 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !3  ; 2 uses
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !3
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds i8, ptr %i.ce, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !7 ; 2 uses
  %.not486 = icmp ult i8 %i.aaf, %i.yk
  br i1 %.not486, label %.critedge6, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph607
  %i.aag = icmp eq i8 %i.aaf, %i.yk
  br i1 %i.aag, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aah = load i32, ptr %.0403606, align 4, !tbaa !3
  store i32 %i.aah, ptr %i.zy, align 4, !tbaa !3
  store i32 %i.zz, ptr %.0403606, align 4, !tbaa !3
  %i.aai = getelementptr inbounds i8, ptr %.0403606, i64 -4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1404 = phi ptr [ %i.aai, %bb.bi ], [ %.0403606, %bb.bh ] ; 2 uses
  %i.aaj = getelementptr inbounds i8, ptr %i.zy, i64 -4 ; 3 uses
  %i.aak = icmp ult ptr %.2416, %i.aaj
  br i1 %i.aak, label %.lr.ph607, label %.critedge6, !llvm.loop !147

.critedge6:                                       ; preds = %bb.bf, %bb.bj, %.lr.ph607, %.preheader, %.critedge4
  %.2411 = phi ptr [ %i.zl, %.critedge4 ], [ %i.zy, %.lr.ph607 ], [ %i.zw, %.preheader ], [ %i.aaj, %bb.bj ], [ %i.zl, %bb.bf ] ; 2 uses
  %.2405 = phi ptr [ %i.zl, %.critedge4 ], [ %.0403606, %.lr.ph607 ], [ %i.zl, %.preheader ], [ %.1404, %bb.bj ], [ %i.zl, %bb.bf ] ; 2 uses
  %i.aal = icmp ult ptr %.2416, %.2411
  br i1 %i.aal, label %.lr.ph631, label %._crit_edge

.lr.ph631:                                        ; preds = %.critedge6, %.critedge10
  %.3406630 = phi ptr [ %.4407.lcssa, %.critedge10 ], [ %.2405, %.critedge6 ] ; 2 uses
  %.3412629 = phi ptr [ %.lcssa572, %.critedge10 ], [ %.2411, %.critedge6 ] ; 5 uses
  %.3417628 = phi ptr [ %.lcssa571, %.critedge10 ], [ %.2416, %.critedge6 ] ; 3 uses
  %.4423627 = phi ptr [ %.5424.lcssa, %.critedge10 ], [ %.3422, %.critedge6 ] ; 2 uses
  %i.aam = load i32, ptr %.3417628, align 4, !tbaa !3
  %i.aan = load i32, ptr %.3412629, align 4, !tbaa !3
  store i32 %i.aan, ptr %.3417628, align 4, !tbaa !3
  store i32 %i.aam, ptr %.3412629, align 4, !tbaa !3
  %i.aao = getelementptr inbounds nuw i8, ptr %.3417628, i64 4 ; 3 uses
  %i.aap = icmp ult ptr %i.aao, %.3412629
  br i1 %i.aap, label %.lr.ph614, label %.critedge8

.lr.ph614:                                        ; preds = %.lr.ph631, %bb.bm
  %i.aaq = phi ptr [ %i.abb, %bb.bm ], [ %i.aao, %.lr.ph631 ] ; 4 uses
  %.5424613 = phi ptr [ %.6425, %bb.bm ], [ %.4423627, %.lr.ph631 ] ; 5 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !3 ; 2 uses
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !3
  %i.aav = sext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds i8, ptr %i.ce, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !7 ; 2 uses
  %.not494 = icmp ugt i8 %i.aax, %i.yk
end_hunk_1
