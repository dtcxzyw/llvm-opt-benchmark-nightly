Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bzlib?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  %i.abx = phi i32 [ %i.wi, %bb.cl ], [ %.pre1889.i, %bb.aq ] ; 3 uses
  %i.aby = phi i32 [ %i.wk, %bb.cl ], [ %.pre1893.i, %bb.aq ]
  %i.abz = phi i32 [ %i.wl, %bb.cl ], [ %.pre1895.i, %bb.aq ] ; 3 uses
  %i.aca = phi i32 [ %i.wm, %bb.cl ], [ %.pre1897.i.a, %bb.aq ] ; 3 uses
  %i.acb = phi i32 [ %i.wn, %bb.cl ], [ %.pre1899.i.a, %bb.aq ] ; 3 uses
  %i.acc = phi i32 [ %i.wo, %bb.cl ], [ %.pre1901.i, %bb.aq ] ; 3 uses
  %i.acd = phi i32 [ %i.wp, %bb.cl ], [ %.pre1903.i.a, %bb.aq ] ; 3 uses
  %i.ace = phi i32 [ %i.wq, %bb.cl ], [ %.pre1905.i.a, %bb.aq ] ; 3 uses
  %i.acf = phi i32 [ %i.wr, %bb.cl ], [ %.pre1907.i, %bb.aq ] ; 3 uses
  %i.acg = phi i32 [ %i.ws, %bb.cl ], [ %.pre1909.i.a, %bb.aq ] ; 3 uses
  %i.ach = phi i32 [ %i.wt, %bb.cl ], [ %.pre1911.i.a, %bb.aq ] ; 3 uses
  %i.aci = phi i32 [ %i.wu, %bb.cl ], [ %.pre1913.i, %bb.aq ] ; 3 uses
  %i.acj = phi i32 [ %i.wv, %bb.cl ], [ %.pre1915.i.a, %bb.aq ] ; 3 uses
  %i.ack = phi i32 [ %i.ww, %bb.cl ], [ %.pre1917.i.a, %bb.aq ] ; 3 uses
  %i.acl = phi i32 [ %i.wx, %bb.cl ], [ %.pre1919.i, %bb.aq ] ; 3 uses
  %i.acm = phi i32 [ %i.wy, %bb.cl ], [ %.pre1921.i, %bb.aq ] ; 3 uses
  %i.acn = phi i32 [ %i.wz, %bb.cl ], [ %.pre1923.i.a, %bb.aq ] ; 3 uses
  %i.aco = phi i32 [ %i.xa, %bb.cl ], [ %.pre1925.i, %bb.aq ] ; 3 uses
  %i.acp = phi ptr [ %i.xb, %bb.cl ], [ %.pre1927.i, %bb.aq ] ; 3 uses
  %i.acq = phi ptr [ %i.xc, %bb.cl ], [ %.pre1929.i, %bb.aq ] ; 3 uses
  %i.acr = phi ptr [ %i.xd, %bb.cl ], [ %.pre1931.i, %bb.aq ] ; 3 uses
  %.01006.i = phi i32 [ %i.abw, %bb.cl ], [ %.pre1891.i, %bb.aq ] ; 3 uses
  %.4962.i = phi i32 [ %.0958.i, %bb.cl ], [ %.pre1887.i, %bb.aq ] ; 3 uses
  %.7.i = phi i32 [ %.3.i47, %bb.cl ], [ %.pre.i36, %bb.aq ] ; 3 uses
  store i32 30, ptr %i.g, align 8, !tbaa !19
  %.promoted1533.i = load i32, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20 ; 3 uses
  %i.acs = icmp sgt i32 %.promoted1533.i, 2
  br i1 %i.acs, label %.._crit_edge1536_crit_edge.i, label %.lr.ph1535.i

.._crit_edge1536_crit_edge.i:                     ; preds = %bb.cm
  %.pre1950.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1536.i

.lr.ph1535.i:                                     ; preds = %bb.cm
  %i.act = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 12 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 16 ; 2 uses
  %.promoted1539.i = load i32, ptr %i.acu, align 8, !tbaa !75
  br label %bb.cn

._crit_edge1536.i:                                ; preds = %bb.cq, %.._crit_edge1536_crit_edge.i
  %i.acx = phi i32 [ %.pre1950.i, %.._crit_edge1536_crit_edge.i ], [ %i.adj, %bb.cq ]
  %.lcssa1489.i = phi i32 [ %.promoted1533.i, %.._crit_edge1536_crit_edge.i ], [ %i.adk, %bb.cq ]
  %i.acy = add nsw i32 %.lcssa1489.i, -3          ; 3 uses
  %i.acz = lshr i32 %i.acx, %i.acy
  %i.ada = and i32 %i.acz, 7                      ; 3 uses
  store i32 %i.acy, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %.off.i = add nsw i32 %i.ada, -2
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %bb.cr, label %BZ2_decompress.exit

bb.cn:                                            ; preds = %bb.cq, %.lr.ph1535.i
  %i.adb = phi i32 [ %.promoted1539.i, %.lr.ph1535.i ], [ %i.adm, %bb.cq ] ; 2 uses
  %i.adc = phi i32 [ %.promoted1533.i, %.lr.ph1535.i ], [ %i.adk, %bb.cq ] ; 2 uses
  %i.add = icmp eq i32 %i.adb, 0
  br i1 %i.add, label %BZ2_decompress.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ade = load i32, ptr %i.v, align 8, !tbaa !21
  %i.adf = shl i32 %i.ade, 8
  %i.adg = load ptr, ptr %i.act, align 8, !tbaa !76 ; 2 uses
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !34
  %i.adi = zext i8 %i.adh to i32
  %i.adj = or disjoint i32 %i.adf, %i.adi         ; 2 uses
  store i32 %i.adj, ptr %i.v, align 8, !tbaa !21
  %i.adk = add nsw i32 %i.adc, 8                  ; 3 uses
  store i32 %i.adk, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adg, i64 1
  store ptr %i.adl, ptr %i.act, align 8, !tbaa !76
  %i.adm = add i32 %i.adb, -1                     ; 2 uses
  store i32 %i.adm, ptr %i.acu, align 8, !tbaa !75
  %i.adn = load i32, ptr %i.acv, align 4, !tbaa !23
  %i.ado = add i32 %i.adn, 1                      ; 2 uses
  store i32 %i.ado, ptr %i.acv, align 4, !tbaa !23
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.adq = load i32, ptr %i.acw, align 8, !tbaa !24
  %i.adr = add i32 %i.adq, 1
  store i32 %i.adr, ptr %i.acw, align 8, !tbaa !24
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ads = icmp sgt i32 %i.adc, -6
  br i1 %i.ads, label %._crit_edge1536.i, label %bb.cn

bb.cr:                                            ; preds = %._crit_edge1536.i, %._crit_edge1951.i
  %i.adt = phi i32 [ %i.abx, %._crit_edge1536.i ], [ %.pre1889.i, %._crit_edge1951.i ] ; 3 uses
  %i.adu = phi i32 [ %i.abz, %._crit_edge1536.i ], [ %.pre1895.i, %._crit_edge1951.i ]
  %i.adv = phi i32 [ %i.aca, %._crit_edge1536.i ], [ %.pre1897.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.adw = phi i32 [ %i.acb, %._crit_edge1536.i ], [ %.pre1899.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.adx = phi i32 [ %i.acc, %._crit_edge1536.i ], [ %.pre1901.i, %._crit_edge1951.i ] ; 3 uses
  %i.ady = phi i32 [ %i.acd, %._crit_edge1536.i ], [ %.pre1903.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.adz = phi i32 [ %i.ace, %._crit_edge1536.i ], [ %.pre1905.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.aea = phi i32 [ %i.acf, %._crit_edge1536.i ], [ %.pre1907.i, %._crit_edge1951.i ] ; 3 uses
  %i.aeb = phi i32 [ %i.acg, %._crit_edge1536.i ], [ %.pre1909.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.aec = phi i32 [ %i.ach, %._crit_edge1536.i ], [ %.pre1911.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.aed = phi i32 [ %i.aci, %._crit_edge1536.i ], [ %.pre1913.i, %._crit_edge1951.i ] ; 3 uses
  %i.aee = phi i32 [ %i.acj, %._crit_edge1536.i ], [ %.pre1915.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.aef = phi i32 [ %i.ack, %._crit_edge1536.i ], [ %.pre1917.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.aeg = phi i32 [ %i.acl, %._crit_edge1536.i ], [ %.pre1919.i, %._crit_edge1951.i ] ; 3 uses
  %i.aeh = phi i32 [ %i.acm, %._crit_edge1536.i ], [ %.pre1921.i, %._crit_edge1951.i ] ; 3 uses
  %i.aei = phi i32 [ %i.acn, %._crit_edge1536.i ], [ %.pre1923.i.a, %._crit_edge1951.i ] ; 3 uses
  %i.aej = phi i32 [ %i.aco, %._crit_edge1536.i ], [ %.pre1925.i, %._crit_edge1951.i ] ; 3 uses
  %i.aek = phi ptr [ %i.acp, %._crit_edge1536.i ], [ %.pre1927.i, %._crit_edge1951.i ] ; 3 uses
  %i.ael = phi ptr [ %i.acq, %._crit_edge1536.i ], [ %.pre1929.i, %._crit_edge1951.i ] ; 3 uses
  %i.aem = phi ptr [ %i.acr, %._crit_edge1536.i ], [ %.pre1931.i, %._crit_edge1951.i ] ; 3 uses
  %.promoted1540.i = phi i32 [ %i.acy, %._crit_edge1536.i ], [ %.promoted1540.pre.i, %._crit_edge1951.i ] ; 3 uses
  %.01031.i = phi i32 [ %i.ada, %._crit_edge1536.i ], [ %.pre1893.i, %._crit_edge1951.i ] ; 3 uses
  %.11007.i = phi i32 [ %.01006.i, %._crit_edge1536.i ], [ %.pre1891.i, %._crit_edge1951.i ] ; 3 uses
  %.5963.i = phi i32 [ %.4962.i, %._crit_edge1536.i ], [ %.pre1887.i, %._crit_edge1951.i ] ; 3 uses
  %.8.i = phi i32 [ %.7.i, %._crit_edge1536.i ], [ %.pre.i36, %._crit_edge1951.i ] ; 2 uses
  store i32 31, ptr %i.g, align 8, !tbaa !19
  %i.aen = icmp sgt i32 %.promoted1540.i, 14
  br i1 %i.aen, label %.._crit_edge1543_crit_edge.i, label %.lr.ph1542.i.a

.._crit_edge1543_crit_edge.i:                     ; preds = %bb.cr
  %.pre1955.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1543.i.a

.lr.ph1542.i.a:                                   ; preds = %bb.cr
  %i.aeo = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 12 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16 ; 2 uses
  %.promoted1546.i = load i32, ptr %i.aep, align 8, !tbaa !75
  br label %bb.cs

._crit_edge1543.i.a:                              ; preds = %bb.cv, %.._crit_edge1543_crit_edge.i
  %i.aes = phi i32 [ %.pre1955.i, %.._crit_edge1543_crit_edge.i ], [ %i.aff, %bb.cv ]
  %.lcssa1485.i = phi i32 [ %.promoted1540.i, %.._crit_edge1543_crit_edge.i ], [ %i.afg, %bb.cv ]
  %i.aet = add nsw i32 %.lcssa1485.i, -15         ; 2 uses
  %i.aeu = lshr i32 %i.aes, %i.aet
  %i.aev = and i32 %i.aeu, 32767                  ; 3 uses
  store i32 %i.aet, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.aew = add nsw i32 %i.aev, -18003
  %or.cond3.i = icmp ult i32 %i.aew, -18002
  br i1 %or.cond3.i, label %BZ2_decompress.exit, label %bb.cw

bb.cs:                                            ; preds = %bb.cv, %.lr.ph1542.i.a
  %i.aex = phi i32 [ %.promoted1546.i, %.lr.ph1542.i.a ], [ %i.afi, %bb.cv ] ; 2 uses
  %i.aey = phi i32 [ %.promoted1540.i, %.lr.ph1542.i.a ], [ %i.afg, %bb.cv ] ; 2 uses
  %i.aez = icmp eq i32 %i.aex, 0
  br i1 %i.aez, label %BZ2_decompress.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.afa = load i32, ptr %i.v, align 8, !tbaa !21
  %i.afb = shl i32 %i.afa, 8
  %i.afc = load ptr, ptr %i.aeo, align 8, !tbaa !76 ; 2 uses
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !34
  %i.afe = zext i8 %i.afd to i32
  %i.aff = or disjoint i32 %i.afb, %i.afe         ; 2 uses
  store i32 %i.aff, ptr %i.v, align 8, !tbaa !21
  %i.afg = add nsw i32 %i.aey, 8                  ; 3 uses
  store i32 %i.afg, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afc, i64 1
  store ptr %i.afh, ptr %i.aeo, align 8, !tbaa !76
  %i.afi = add i32 %i.aex, -1                     ; 2 uses
  store i32 %i.afi, ptr %i.aep, align 8, !tbaa !75
  %i.afj = load i32, ptr %i.aeq, align 4, !tbaa !23
  %i.afk = add i32 %i.afj, 1                      ; 2 uses
  store i32 %i.afk, ptr %i.aeq, align 4, !tbaa !23
  %i.afl = icmp eq i32 %i.afk, 0
  br i1 %i.afl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afm = load i32, ptr %i.aer, align 8, !tbaa !24
  %i.afn = add i32 %i.afm, 1
  store i32 %i.afn, ptr %i.aer, align 8, !tbaa !24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.afo = icmp sgt i32 %i.aey, 6
  br i1 %i.afo, label %._crit_edge1543.i.a, label %bb.cs

bb.cw:                                            ; preds = %bb.dd, %._crit_edge1543.i.a
  %i.afp = phi i32 [ %.ph, %bb.dd ], [ %i.adt, %._crit_edge1543.i.a ]
  %i.afq = phi i32 [ %.ph636, %bb.dd ], [ %i.adv, %._crit_edge1543.i.a ] ; 2 uses
  %i.afr = phi i32 [ %.ph637, %bb.dd ], [ %i.adw, %._crit_edge1543.i.a ] ; 2 uses
  %i.afs = phi i32 [ %.ph638, %bb.dd ], [ %i.adx, %._crit_edge1543.i.a ] ; 2 uses
  %i.aft = phi i32 [ %.ph639, %bb.dd ], [ %i.ady, %._crit_edge1543.i.a ] ; 2 uses
  %i.afu = phi i32 [ %.ph640, %bb.dd ], [ %i.adz, %._crit_edge1543.i.a ] ; 2 uses
  %i.afv = phi i32 [ %.ph641, %bb.dd ], [ %i.aea, %._crit_edge1543.i.a ] ; 2 uses
  %i.afw = phi i32 [ %.ph642, %bb.dd ], [ %i.aeb, %._crit_edge1543.i.a ] ; 2 uses
  %i.afx = phi i32 [ %.ph643, %bb.dd ], [ %i.aec, %._crit_edge1543.i.a ] ; 2 uses
  %i.afy = phi i32 [ %.ph644, %bb.dd ], [ %i.aed, %._crit_edge1543.i.a ] ; 2 uses
  %i.afz = phi i32 [ %.ph645, %bb.dd ], [ %i.aee, %._crit_edge1543.i.a ] ; 2 uses
  %i.aga = phi i32 [ %.ph646, %bb.dd ], [ %i.aef, %._crit_edge1543.i.a ] ; 2 uses
  %i.agb = phi i32 [ %.ph647, %bb.dd ], [ %i.aeg, %._crit_edge1543.i.a ] ; 2 uses
  %i.agc = phi i32 [ %.ph648, %bb.dd ], [ %i.aeh, %._crit_edge1543.i.a ] ; 2 uses
  %i.agd = phi i32 [ %.ph649, %bb.dd ], [ %i.aei, %._crit_edge1543.i.a ] ; 2 uses
  %i.age = phi i32 [ %.ph650, %bb.dd ], [ %i.aej, %._crit_edge1543.i.a ] ; 2 uses
  %i.agf = phi ptr [ %.ph651, %bb.dd ], [ %i.aek, %._crit_edge1543.i.a ] ; 2 uses
  %i.agg = phi ptr [ %.ph652, %bb.dd ], [ %i.ael, %._crit_edge1543.i.a ] ; 2 uses
  %i.agh = phi ptr [ %.ph653, %bb.dd ], [ %i.aem, %._crit_edge1543.i.a ] ; 2 uses
  %.01053.i = phi i32 [ %.21055.i.ph, %bb.dd ], [ %i.aev, %._crit_edge1543.i.a ] ; 6 uses
  %.11032.i = phi i32 [ %.31034.i.ph, %bb.dd ], [ %.01031.i, %._crit_edge1543.i.a ] ; 12 uses
  %.21008.i = phi i32 [ %.41010.i.ph, %bb.dd ], [ %.11007.i, %._crit_edge1543.i.a ] ; 2 uses
  %.6964.i = phi i32 [ %.8966.i, %bb.dd ], [ %.5963.i, %._crit_edge1543.i.a ]
  %.9.i = phi i32 [ %i.ahp, %bb.dd ], [ 0, %._crit_edge1543.i.a ] ; 2 uses
  %i.agi = icmp slt i32 %.9.i, %.01053.i
  br i1 %i.agi, label %.preheader635, label %bb.de

.preheader635:                                    ; preds = %bb.aq, %bb.cw
  %.ph = phi i32 [ %i.afp, %bb.cw ], [ %.pre1889.i, %bb.aq ] ; 3 uses
  %.ph636 = phi i32 [ %i.afq, %bb.cw ], [ %.pre1897.i.a, %bb.aq ] ; 3 uses
  %.ph637 = phi i32 [ %i.afr, %bb.cw ], [ %.pre1899.i.a, %bb.aq ] ; 3 uses
  %.ph638 = phi i32 [ %i.afs, %bb.cw ], [ %.pre1901.i, %bb.aq ] ; 3 uses
  %.ph639 = phi i32 [ %i.aft, %bb.cw ], [ %.pre1903.i.a, %bb.aq ] ; 3 uses
  %.ph640 = phi i32 [ %i.afu, %bb.cw ], [ %.pre1905.i.a, %bb.aq ] ; 3 uses
  %.ph641 = phi i32 [ %i.afv, %bb.cw ], [ %.pre1907.i, %bb.aq ] ; 3 uses
  %.ph642 = phi i32 [ %i.afw, %bb.cw ], [ %.pre1909.i.a, %bb.aq ] ; 3 uses
  %.ph643 = phi i32 [ %i.afx, %bb.cw ], [ %.pre1911.i.a, %bb.aq ] ; 3 uses
  %.ph644 = phi i32 [ %i.afy, %bb.cw ], [ %.pre1913.i, %bb.aq ] ; 3 uses
  %.ph645 = phi i32 [ %i.afz, %bb.cw ], [ %.pre1915.i.a, %bb.aq ] ; 3 uses
  %.ph646 = phi i32 [ %i.aga, %bb.cw ], [ %.pre1917.i.a, %bb.aq ] ; 3 uses
  %.ph647 = phi i32 [ %i.agb, %bb.cw ], [ %.pre1919.i, %bb.aq ] ; 3 uses
  %.ph648 = phi i32 [ %i.agc, %bb.cw ], [ %.pre1921.i, %bb.aq ] ; 3 uses
  %.ph649 = phi i32 [ %i.agd, %bb.cw ], [ %.pre1923.i.a, %bb.aq ] ; 3 uses
  %.ph650 = phi i32 [ %i.age, %bb.cw ], [ %.pre1925.i, %bb.aq ] ; 3 uses
  %.ph651 = phi ptr [ %i.agf, %bb.cw ], [ %.pre1927.i, %bb.aq ] ; 3 uses
  %.ph652 = phi ptr [ %i.agg, %bb.cw ], [ %.pre1929.i, %bb.aq ] ; 3 uses
  %.ph653 = phi ptr [ %i.agh, %bb.cw ], [ %.pre1931.i, %bb.aq ] ; 3 uses
  %.21055.i.ph = phi i32 [ %.01053.i, %bb.cw ], [ %.pre1895.i, %bb.aq ] ; 3 uses
  %.31034.i.ph = phi i32 [ %.11032.i, %bb.cw ], [ %.pre1893.i, %bb.aq ] ; 4 uses
  %.41010.i.ph = phi i32 [ %.21008.i, %bb.cw ], [ %.pre1891.i, %bb.aq ] ; 3 uses
  %.8966.i.ph = phi i32 [ 0, %bb.cw ], [ %.pre1887.i, %bb.aq ]
  %.11.i.ph = phi i32 [ %.9.i, %bb.cw ], [ %.pre.i36, %bb.aq ] ; 4 uses
  %.phi.trans.insert1975.i.promoted = load i32, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  br label %bb.cx

bb.cx:                                            ; preds = %.preheader635, %bb.dc
  %.promoted1684.i834 = phi i32 [ %i.agp, %bb.dc ], [ %.phi.trans.insert1975.i.promoted, %.preheader635 ] ; 3 uses
  %.8966.i = phi i32 [ %i.ahl, %bb.dc ], [ %.8966.i.ph, %.preheader635 ] ; 4 uses
  store i32 32, ptr %i.g, align 8, !tbaa !19
  %i.agj = icmp sgt i32 %.promoted1684.i834, 0
  br i1 %i.agj, label %.._crit_edge1687_crit_edge.i, label %.lr.ph1686.i

.._crit_edge1687_crit_edge.i:                     ; preds = %bb.cx
  %.pre1998.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1687.i

.lr.ph1686.i:                                     ; preds = %bb.cx
  %i.agk = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 12 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agk, i64 16 ; 2 uses
  %.promoted1690.i = load i32, ptr %i.agl, align 8, !tbaa !75
  br label %bb.cy

._crit_edge1687.i:                                ; preds = %bb.db, %.._crit_edge1687_crit_edge.i
  %i.ago = phi i32 [ %.pre1998.i, %.._crit_edge1687_crit_edge.i ], [ %i.ahb, %bb.db ]
  %.lcssa1435.i = phi i32 [ %.promoted1684.i834, %.._crit_edge1687_crit_edge.i ], [ %i.ahc, %bb.db ]
  %i.agp = add nsw i32 %.lcssa1435.i, -1          ; 3 uses
  store i32 %i.agp, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.agq = shl nuw i32 1, %i.agp
  %i.agr = and i32 %i.agq, %i.ago
  %i.ags = icmp eq i32 %i.agr, 0
  br i1 %i.ags, label %bb.dd, label %bb.dc

bb.cy:                                            ; preds = %bb.db, %.lr.ph1686.i
  %i.agt = phi i32 [ %.promoted1690.i, %.lr.ph1686.i ], [ %i.ahe, %bb.db ] ; 2 uses
  %i.agu = phi i32 [ %.promoted1684.i834, %.lr.ph1686.i ], [ %i.ahc, %bb.db ] ; 2 uses
  %i.agv = icmp eq i32 %i.agt, 0
  br i1 %i.agv, label %BZ2_decompress.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.agw = load i32, ptr %i.v, align 8, !tbaa !21
  %i.agx = shl i32 %i.agw, 8
  %i.agy = load ptr, ptr %i.agk, align 8, !tbaa !76 ; 2 uses
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !34
  %i.aha = zext i8 %i.agz to i32
  %i.ahb = or disjoint i32 %i.agx, %i.aha         ; 2 uses
  store i32 %i.ahb, ptr %i.v, align 8, !tbaa !21
  %i.ahc = add nsw i32 %i.agu, 8                  ; 3 uses
  store i32 %i.ahc, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  store ptr %i.ahd, ptr %i.agk, align 8, !tbaa !76
  %i.ahe = add i32 %i.agt, -1                     ; 2 uses
  store i32 %i.ahe, ptr %i.agl, align 8, !tbaa !75
  %i.ahf = load i32, ptr %i.agm, align 4, !tbaa !23
  %i.ahg = add i32 %i.ahf, 1                      ; 2 uses
  store i32 %i.ahg, ptr %i.agm, align 4, !tbaa !23
  %i.ahh = icmp eq i32 %i.ahg, 0
  br i1 %i.ahh, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ahi = load i32, ptr %i.agn, align 8, !tbaa !24
  %i.ahj = add i32 %i.ahi, 1
  store i32 %i.ahj, ptr %i.agn, align 8, !tbaa !24
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.ahk = icmp sgt i32 %i.agu, -8
  br i1 %i.ahk, label %._crit_edge1687.i, label %bb.cy

bb.dc:                                            ; preds = %._crit_edge1687.i
  %i.ahl = add nsw i32 %.8966.i, 1                ; 3 uses
  %.not1370.i = icmp slt i32 %i.ahl, %.31034.i.ph
  br i1 %.not1370.i, label %bb.cx, label %BZ2_decompress.exit

bb.dd:                                            ; preds = %._crit_edge1687.i
  %i.ahm = trunc i32 %.8966.i to i8
  %i.ahn = sext i32 %.11.i.ph to i64
  %i.aho = getelementptr inbounds i8, ptr %i.aa, i64 %i.ahn
  store i8 %i.ahm, ptr %i.aho, align 1, !tbaa !34
  %i.ahp = add nsw i32 %.11.i.ph, 1
  br label %bb.cw

bb.de:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ahq = icmp sgt i32 %.11032.i, 0
  br i1 %i.ahq, label %iter.check, label %.preheader1419.i

iter.check:                                       ; preds = %bb.de
  %min.iters.check477 = icmp ult i32 %.11032.i, 4
  br i1 %min.iters.check477, label %.lr.ph1549.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ahr = add nsw i32 %.11032.i, -1              ; 2 uses
  %i.ahs = and i32 %i.ahr, 255
  %i.aht = icmp eq i32 %i.ahs, 255
  %i.ahu = icmp ugt i32 %i.ahr, 255
  %i.ahv = or i1 %i.aht, %i.ahu
  br i1 %i.ahv, label %.lr.ph1549.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check478 = icmp ult i32 %.11032.i, 32
  br i1 %min.iters.check478, label %vec.epilog.ph, label %vector.ph479

vector.ph479:                                     ; preds = %vector.main.loop.iter.check
  %i.ahw = and i32 %.11032.i, 28
  %n.vec480 = and i32 %.11032.i, 480              ; 10 uses
  %i.ahx = trunc i32 %n.vec480 to i8              ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !34
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.ahy, align 16, !tbaa !34
  %i.ahz = icmp eq i32 %n.vec480, 32
  br i1 %i.ahz, label %middle.block484, label %vector.body481.1

vector.body481.1:                                 ; preds = %vector.ph479
  %i.aia = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aib = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.aia, align 16, !tbaa !34
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.aib, align 16, !tbaa !34
  %i.aic = icmp eq i32 %n.vec480, 64
  br i1 %i.aic, label %middle.block484, label %vector.body481.2

vector.body481.2:                                 ; preds = %vector.body481.1
  %i.aid = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aie = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.aid, align 16, !tbaa !34
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.aie, align 16, !tbaa !34
  %i.aif = icmp eq i32 %n.vec480, 96
  br i1 %i.aif, label %middle.block484, label %vector.body481.3

vector.body481.3:                                 ; preds = %vector.body481.2
  %i.aig = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aih = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.aig, align 16, !tbaa !34
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.aih, align 16, !tbaa !34
  %i.aii = icmp eq i32 %n.vec480, 128
  br i1 %i.aii, label %middle.block484, label %vector.body481.4

vector.body481.4:                                 ; preds = %vector.body481.3
  %i.aij = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aik = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.aij, align 16, !tbaa !34
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.aik, align 16, !tbaa !34
  %i.ail = icmp eq i32 %n.vec480, 160
  br i1 %i.ail, label %middle.block484, label %vector.body481.5

vector.body481.5:                                 ; preds = %vector.body481.4
  %i.aim = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.aim, align 16, !tbaa !34
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.ain, align 16, !tbaa !34
  %i.aio = icmp eq i32 %n.vec480, 192
  br i1 %i.aio, label %middle.block484, label %vector.body481.6

vector.body481.6:                                 ; preds = %vector.body481.5
  %i.aip = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.aip, align 16, !tbaa !34
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.aiq, align 16, !tbaa !34
  %i.air = icmp eq i32 %n.vec480, 224
  br i1 %i.air, label %middle.block484, label %vector.body481.7

vector.body481.7:                                 ; preds = %vector.body481.6
  %i.ais = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ait = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.ais, align 16, !tbaa !34
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.ait, align 16, !tbaa !34
  br label %middle.block484

middle.block484:                                  ; preds = %vector.body481.7, %vector.body481.6, %vector.body481.5, %vector.body481.4, %vector.body481.3, %vector.body481.2, %vector.body481.1, %vector.ph479
  %cmp.n = icmp eq i32 %.11032.i, %n.vec480
  br i1 %cmp.n, label %.preheader1419.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block484
  %min.epilog.iters.check = icmp eq i32 %i.ahw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1549.i.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec480, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val485 = phi i8 [ %i.ahx, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec486 = and i32 %.11032.i, 508              ; 3 uses
  %i.aiu = trunc i32 %n.vec486 to i8
  %broadcast.splatinsert487 = insertelement <4 x i8> poison, i8 %bc.resume.val485, i64 0
  %broadcast.splat488 = shufflevector <4 x i8> %broadcast.splatinsert487, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat488, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index489 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next491, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind490 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next492, %vec.epilog.vector.body ] ; 2 uses
  %i.aiv = and i32 %index489, 252
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aiw
  store <4 x i8> %vec.ind490, ptr %i.aix, align 4, !tbaa !34
  %index.next491 = add nuw i32 %index489, 4       ; 2 uses
  %vec.ind.next492 = add <4 x i8> %vec.ind490, splat (i8 4)
  %i.aiy = icmp eq i32 %index.next491, %n.vec486
  br i1 %i.aiy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n493 = icmp eq i32 %.11032.i, %n.vec486
  br i1 %cmp.n493, label %.preheader1419.i, label %.lr.ph1549.i.preheader

.lr.ph1549.i.preheader:                           ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010291547.i.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.ahx, %vec.epilog.iter.check ], [ %i.aiu, %vec.epilog.middle.block ]
  br label %.lr.ph1549.i

.preheader1419.i:                                 ; preds = %.lr.ph1549.i, %middle.block484, %vec.epilog.middle.block, %bb.de
  %i.aiz = icmp sgt i32 %.01053.i, 0
  br i1 %i.aiz, label %.lr.ph1556.i, label %._crit_edge1557.i

.lr.ph1556.i:                                     ; preds = %.preheader1419.i
  %wide.trip.count.i = zext nneg i32 %.01053.i to i64
  br label %bb.df

.lr.ph1549.i:                                     ; preds = %.lr.ph1549.i.preheader, %.lr.ph1549.i
  %.010291547.i = phi i8 [ %i.ajc, %.lr.ph1549.i ], [ %.010291547.i.ph, %.lr.ph1549.i.preheader ] ; 3 uses
  %i.aja = zext i8 %.010291547.i to i64
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aja
  store i8 %.010291547.i, ptr %i.ajb, align 1, !tbaa !34
  %i.ajc = add i8 %.010291547.i, 1                ; 2 uses
  %i.ajd = zext i8 %i.ajc to i32
  %i.aje = icmp samesign ugt i32 %.11032.i, %i.ajd
  br i1 %i.aje, label %.lr.ph1549.i, label %.preheader1419.i, !llvm.loop !81

bb.df:                                            ; preds = %._crit_edge1554.i, %.lr.ph1556.i
  %indvars.iv1771.i = phi i64 [ 0, %.lr.ph1556.i ], [ %indvars.iv.next1772.i, %._crit_edge1554.i ] ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv1771.i
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !34 ; 7 uses
  %i.ajh = zext i8 %i.ajg to i64                  ; 27 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !34 ; 2 uses
  %.not13691550.i = icmp eq i8 %i.ajg, 0
  br i1 %.not13691550.i, label %._crit_edge1554.i, label %iter.check510

iter.check510:                                    ; preds = %bb.df
  %min.iters.check497 = icmp ult i8 %i.ajg, 4
  br i1 %min.iters.check497, label %.lr.ph1553.i.preheader, label %vector.scevcheck495

vector.scevcheck495:                              ; preds = %iter.check510
  %i.ajk = add i8 %i.ajg, -1
  %i.ajl = zext i8 %i.ajg to i32
  %i.ajm = add nsw i32 %i.ajl, -1
  %i.ajn = zext i8 %i.ajk to i32
  %i.ajo = icmp ult i32 %i.ajm, %i.ajn
  br i1 %i.ajo, label %.lr.ph1553.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck495
  %i.ajp = zext i8 %i.ajg to i64
  %i.ajq = add nuw nsw i64 %i.ajp, 4294967295
  %i.ajr = and i64 %i.ajq, 4294967295
  %i.ajs = sub nsw i64 %i.ajh, %i.ajr
  %diff.check = icmp ugt i64 %i.ajs, -32
  br i1 %diff.check, label %.lr.ph1553.i.preheader, label %vector.main.loop.iter.check498

vector.main.loop.iter.check498:                   ; preds = %vector.memcheck
  %min.iters.check499 = icmp ult i8 %i.ajg, 32
  br i1 %min.iters.check499, label %vec.epilog.ph514, label %vector.ph500

vector.ph500:                                     ; preds = %vector.main.loop.iter.check498
  %i.ajt = and i64 %i.ajh, 28
  %n.vec501 = and i64 %i.ajh, 224                 ; 8 uses
  %i.aju = and i64 %i.ajh, 31
  %i.ajv = add nuw nsw i64 %i.ajh, 4294967295
  %i.ajw = and i64 %i.ajv, 4294967295
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajw ; 2 uses
  %i.ajy = getelementptr inbounds i8, ptr %i.ajx, i64 -15
  %i.ajz = getelementptr inbounds i8, ptr %i.ajx, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ajy, align 1, !tbaa !34
  %wide.load504 = load <16 x i8>, ptr %i.ajz, align 1, !tbaa !34
  %i.aka = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajh ; 2 uses
  %i.akb = getelementptr inbounds i8, ptr %i.aka, i64 -15
  %i.akc = getelementptr inbounds i8, ptr %i.aka, i64 -31
  store <16 x i8> %wide.load, ptr %i.akb, align 1, !tbaa !34
  store <16 x i8> %wide.load504, ptr %i.akc, align 1, !tbaa !34
  %i.akd = icmp eq i64 %n.vec501, 32
  br i1 %i.akd, label %middle.block506, label %vector.body502.1
end_hunk_0
begin_hunk_1_@nsis_BZ2_bzDecompress:bb.a
vector.body527:                                   ; preds = %vector.body527, %vector.ph525
  %index528 = phi i64 [ 0, %vector.ph525 ], [ %index.next531, %vector.body527 ] ; 2 uses
  %i.bbf = add nuw i64 %index528, %i.bbc          ; 2 uses
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %i.bbf
  %wide.load529 = load <4 x i32>, ptr %i.bbg, align 4, !tbaa !40
  %i.bbh = shl <4 x i32> %wide.load529, splat (i32 1)
  %i.bbi = add <4 x i32> %i.bbh, splat (i32 2)
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %i.bbf
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 4 ; 2 uses
  %wide.load530 = load <4 x i32>, ptr %i.bbk, align 4, !tbaa !40
  %i.bbl = sub <4 x i32> %i.bbi, %wide.load530
  store <4 x i32> %i.bbl, ptr %i.bbk, align 4, !tbaa !40
  %index.next531 = add nuw i64 %index528, 4       ; 2 uses
  %i.bbm = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.bbm, label %middle.block532, label %vector.body527, !llvm.loop !88

middle.block532:                                  ; preds = %vector.body527
  %cmp.n533 = icmp eq i64 %i.bbd, %n.vec526
  br i1 %cmp.n533, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i.preheader

.lr.ph85.i.i.preheader:                           ; preds = %.lr.ph85.preheader.i.i, %middle.block532
  %indvars.iv109.i.i.ph = phi i64 [ %i.bbc, %.lr.ph85.preheader.i.i ], [ %i.bbe, %middle.block532 ]
  br label %.lr.ph85.i.i

.lr.ph82.i.i:                                     ; preds = %.lr.ph82.i.i, %.lr.ph82.preheader.i.i.new
  %i.bbn = phi i32 [ %.pre1961.i.a, %.lr.ph82.preheader.i.i.new ], [ %i.bbw, %.lr.ph82.i.i ]
  %indvars.iv104.i.i = phi i64 [ %i.bar, %.lr.ph82.preheader.i.i.new ], [ %indvars.iv.next105.i.i.1, %.lr.ph82.i.i ] ; 3 uses
  %.081.i.i = phi i32 [ 0, %.lr.ph82.preheader.i.i.new ], [ %i.bcb, %.lr.ph82.i.i ]
  %niter739 = phi i64 [ 0, %.lr.ph82.preheader.i.i.new ], [ %niter739.next.1, %.lr.ph82.i.i ]
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1 ; 2 uses
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %indvars.iv.next105.i.i
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !40 ; 2 uses
  %i.bbq = sub nsw i32 %i.bbp, %i.bbn
  %i.bbr = add nsw i32 %i.bbq, %.081.i.i          ; 2 uses
  %i.bbs = add nsw i32 %i.bbr, -1
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %indvars.iv104.i.i
  store i32 %i.bbs, ptr %i.bbt, align 4, !tbaa !40
  %i.bbu = shl i32 %i.bbr, 1
  %indvars.iv.next105.i.i.1 = add nuw nsw i64 %indvars.iv104.i.i, 2 ; 3 uses
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %indvars.iv.next105.i.i.1
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !40 ; 3 uses
  %i.bbx = sub nsw i32 %i.bbw, %i.bbp
  %i.bby = add nsw i32 %i.bbx, %i.bbu             ; 2 uses
  %i.bbz = add nsw i32 %i.bby, -1
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %indvars.iv.next105.i.i
  store i32 %i.bbz, ptr %i.bca, align 4, !tbaa !40
  %i.bcb = shl i32 %i.bby, 1                      ; 2 uses
  %niter739.next.1 = add i64 %niter739, 2         ; 2 uses
  %niter739.ncmp.1 = icmp eq i64 %niter739.next.1, %unroll_iter738
  br i1 %niter739.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph82.i.i

.lr.ph85.i.i:                                     ; preds = %.lr.ph85.i.i.preheader, %.lr.ph85.i.i
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i, %.lr.ph85.i.i ], [ %indvars.iv109.i.i.ph, %.lr.ph85.i.i.preheader ] ; 2 uses
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 3 uses
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %indvars.iv109.i.i
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !40
  %i.bce = shl i32 %i.bcd, 1
  %i.bcf = add i32 %i.bce, 2
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %indvars.iv.next110.i.i ; 2 uses
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !40
  %i.bci = sub i32 %i.bcf, %i.bch
  store i32 %i.bci, ptr %i.bcg, align 4, !tbaa !40
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next110.i.i, %wide.trip.count112.i.i
  br i1 %exitcond113.not.i.i, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i, !llvm.loop !89

CreateDecodeTables.exit.i:                        ; preds = %.lr.ph85.i.i, %middle.block532, %.preheader.i.i
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv1781.i.a
  store i32 %.0948.lcssa20492052.i, ptr %i.bcj, align 4, !tbaa !40
  %indvars.iv.next1782.i.a = add nuw nsw i64 %indvars.iv1781.i.a, 1 ; 2 uses
  %exitcond1786.not.i = icmp eq i64 %indvars.iv.next1782.i.a, %wide.trip.count1785.i
  br i1 %exitcond1786.not.i, label %._crit_edge1567.i, label %.preheader1417.i

._crit_edge1567.i:                                ; preds = %CreateDecodeTables.exit.i, %.preheader1418.i
  %.6993.lcssa.i = phi i32 [ 0, %.preheader1418.i ], [ %.41035.i, %CreateDecodeTables.exit.i ] ; 2 uses
  %i.bck = load i32, ptr %i.y, align 8, !tbaa !78
  %i.bcl = load i32, ptr %i.o, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !tbaa !40
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.d, i64 7804
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bcm, align 4, !tbaa !34
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.d, i64 7880
  store i32 4080, ptr %i.bcn, align 8, !tbaa !40
  %i.bco = getelementptr inbounds nuw i8, ptr %i.d, i64 7788
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bco, align 4, !tbaa !34
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.d, i64 7876
  store i32 4064, ptr %i.bcp, align 4, !tbaa !40
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.d, i64 7772
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.bcq, align 4, !tbaa !34
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.d, i64 7872
  store i32 4048, ptr %i.bcr, align 8, !tbaa !40
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.d, i64 7756
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.bcs, align 4, !tbaa !34
  %i.bct = getelementptr inbounds nuw i8, ptr %i.d, i64 7868
  store i32 4032, ptr %i.bct, align 4, !tbaa !40
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.d, i64 7740
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.bcu, align 4, !tbaa !34
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.d, i64 7864
  store i32 4016, ptr %i.bcv, align 8, !tbaa !40
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.d, i64 7724
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.bcw, align 4, !tbaa !34
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.d, i64 7860
  store i32 4000, ptr %i.bcx, align 4, !tbaa !40
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.d, i64 7708
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.bcy, align 4, !tbaa !34
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.d, i64 7856
  store i32 3984, ptr %i.bcz, align 8, !tbaa !40
  %i.bda = getelementptr inbounds nuw i8, ptr %i.d, i64 7692
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.bda, align 4, !tbaa !34
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.d, i64 7852
  store i32 3968, ptr %i.bdb, align 4, !tbaa !40
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.d, i64 7676
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.bdc, align 4, !tbaa !34
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.d, i64 7848
  store i32 3952, ptr %i.bdd, align 8, !tbaa !40
  %i.bde = getelementptr inbounds nuw i8, ptr %i.d, i64 7660
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.bde, align 4, !tbaa !34
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.d, i64 7844
  store i32 3936, ptr %i.bdf, align 4, !tbaa !40
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.d, i64 7644
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bdg, align 4, !tbaa !34
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.d, i64 7840
  store i32 3920, ptr %i.bdh, align 8, !tbaa !40
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.d, i64 7628
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.bdi, align 4, !tbaa !34
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.d, i64 7836
  store i32 3904, ptr %i.bdj, align 4, !tbaa !40
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.d, i64 7612
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bdk, align 4, !tbaa !34
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.d, i64 7832
  store i32 3888, ptr %i.bdl, align 8, !tbaa !40
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.d, i64 7596
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.bdm, align 4, !tbaa !34
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.d, i64 7828
  store i32 3872, ptr %i.bdn, align 4, !tbaa !40
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.d, i64 7580
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.bdo, align 4, !tbaa !34
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.d, i64 7824
  store i32 3856, ptr %i.bdp, align 8, !tbaa !40
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.d, i64 7564
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.bdq, align 4, !tbaa !34
  store i32 3840, ptr %i.aj, align 4, !tbaa !40
  %i.bdr = add nsw i32 %i.bck, 1                  ; 2 uses
  %i.bds = mul nsw i32 %i.bcl, 100000             ; 2 uses
  %i.bdt = icmp slt i32 %.31056.i, 1
  br i1 %i.bdt, label %BZ2_decompress.exit, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge1567.i
  %i.bdu = load i8, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.bdv = zext i8 %i.bdu to i64                  ; 4 uses
  %i.bdw = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bdv
  %i.bdx = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bdv
  %i.bdy = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bdv
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bdv
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !40 ; 2 uses
  %i.beb = zext i8 %i.bdu to i32
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.aq
  %i.bec = phi i32 [ %i.anl, %bb.ef ], [ %.pre1903.i.a, %bb.aq ] ; 3 uses
  %i.bed = phi i32 [ %i.ano, %bb.ef ], [ %.pre1909.i.a, %bb.aq ] ; 3 uses
  %i.bee = phi i32 [ %i.anp, %bb.ef ], [ %.pre1911.i.a, %bb.aq ] ; 3 uses
  %i.bef = phi i32 [ %i.anq, %bb.ef ], [ %.pre1915.i.a, %bb.aq ] ; 3 uses
  %i.beg = phi i32 [ %i.ans, %bb.ef ], [ %.pre1919.i, %bb.aq ] ; 2 uses
  %i.beh = phi i32 [ %i.ant, %bb.ef ], [ %.pre1921.i, %bb.aq ] ; 3 uses
  %.71281.i = phi i32 [ %.01274.i, %bb.ef ], [ %.pre1913.i, %bb.aq ] ; 3 uses
  %.01262.i = phi i32 [ %i.bea, %bb.ef ], [ %.pre1917.i.a, %bb.aq ] ; 7 uses
  %.11226.i = phi i32 [ %i.beb, %bb.ef ], [ %.pre1923.i.a, %bb.aq ] ; 3 uses
  %.11211.i = phi i32 [ %i.bea, %bb.ef ], [ %.pre1925.i, %bb.aq ] ; 3 uses
  %.11196.i = phi ptr [ %i.bdy, %bb.ef ], [ %.pre1927.i, %bb.aq ] ; 3 uses
  %.11181.i = phi ptr [ %i.bdw, %bb.ef ], [ %.pre1929.i, %bb.aq ] ; 3 uses
  %.11166.i = phi ptr [ %i.bdx, %bb.ef ], [ %.pre1931.i, %bb.aq ] ; 3 uses
  %.01137.i = phi i32 [ 0, %bb.ef ], [ %.pre1907.i, %bb.aq ] ; 3 uses
  %.01125.i = phi i32 [ %i.bds, %bb.ef ], [ %.pre1905.i.a, %bb.aq ] ; 3 uses
  %.11102.i = phi i32 [ 49, %bb.ef ], [ %.pre1901.i, %bb.aq ] ; 3 uses
  %.11087.i = phi i32 [ 0, %bb.ef ], [ %.pre1899.i.a, %bb.aq ] ; 3 uses
  %.01074.i = phi i32 [ %i.bdr, %bb.ef ], [ %.pre1897.i.a, %bb.aq ] ; 3 uses
  %.91062.i = phi i32 [ %.31056.i, %bb.ef ], [ %.pre1895.i, %bb.aq ] ; 3 uses
  %.101041.i = phi i32 [ %.41035.i, %bb.ef ], [ %.pre1893.i, %bb.aq ] ; 3 uses
  %.111017.i = phi i32 [ %.51011.i, %bb.ef ], [ %.pre1891.i, %bb.aq ] ; 3 uses
  %.7994.i = phi i32 [ %.6993.lcssa.i, %bb.ef ], [ %.pre1889.i, %bb.aq ] ; 3 uses
  %.15973.i = phi i32 [ %.9967.i, %bb.ef ], [ %.pre1887.i, %bb.aq ] ; 3 uses
  %.21.i = phi i32 [ 256, %bb.ef ], [ %.pre.i36, %bb.aq ] ; 3 uses
  store i32 36, ptr %i.g, align 8, !tbaa !19
  %.promoted1574.i = load i32, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20 ; 3 uses
  %.not13481575.i = icmp slt i32 %.promoted1574.i, %.01262.i
  br i1 %.not13481575.i, label %.lr.ph1577.i, label %.._crit_edge1578_crit_edge.i

.._crit_edge1578_crit_edge.i:                     ; preds = %bb.eg
  %.pre1963.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1578.i

.lr.ph1577.i:                                     ; preds = %bb.eg
  %i.bei = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 8 ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bei, i64 12 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 16 ; 2 uses
  %.promoted1581.i = load i32, ptr %i.bej, align 8, !tbaa !75 ; 2 uses
  %i.bem = icmp eq i32 %.promoted1581.i, 0
  br i1 %i.bem, label %BZ2_decompress.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph1577.i
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted832 = load ptr, ptr %i.bei, align 8, !tbaa !76
  %.promoted833 = load i32, ptr %i.bek, align 4, !tbaa !23
  br label %.lr.ph

._crit_edge1578.i:                                ; preds = %bb.ej, %.._crit_edge1578_crit_edge.i
  %i.ben = phi i32 [ %.pre1963.i, %.._crit_edge1578_crit_edge.i ], [ %i.bfa, %bb.ej ]
  %.lcssa1481.i = phi i32 [ %.promoted1574.i, %.._crit_edge1578_crit_edge.i ], [ %i.bfb, %bb.ej ]
  %i.beo = sub nsw i32 %.lcssa1481.i, %.01262.i   ; 3 uses
  %i.bep = lshr i32 %i.ben, %i.beo
  %notmask.i = shl nsw i32 -1, %.01262.i
  %i.beq = xor i32 %notmask.i, -1
  %i.ber = and i32 %i.bep, %i.beq
  store i32 %i.beo, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  br label %bb.ek

bb.eh:                                            ; preds = %bb.ej
  %i.bes = icmp eq i32 %i.bfd, 0
  br i1 %i.bes, label %BZ2_decompress.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.eh
  %i.bet = phi i32 [ %i.bfe, %bb.eh ], [ %.promoted833, %.lr.ph.preheader ]
  %i.beu = phi ptr [ %i.bfc, %bb.eh ], [ %.promoted832, %.lr.ph.preheader ] ; 2 uses
  %i.bev = phi i32 [ %i.bfa, %bb.eh ], [ %.promoted, %.lr.ph.preheader ]
  %i.bew = phi i32 [ %i.bfb, %bb.eh ], [ %.promoted1574.i, %.lr.ph.preheader ]
  %1 = phi i32 [ %i.bfd, %bb.eh ], [ %.promoted1581.i, %.lr.ph.preheader ]
  %i.bex = shl i32 %i.bev, 8
  %i.bey = load i8, ptr %i.beu, align 1, !tbaa !34
  %i.bez = zext i8 %i.bey to i32
  %i.bfa = or disjoint i32 %i.bex, %i.bez         ; 3 uses
  store i32 %i.bfa, ptr %i.v, align 8, !tbaa !21
  %i.bfb = add nsw i32 %i.bew, 8                  ; 4 uses
  store i32 %i.bfb, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.beu, i64 1 ; 2 uses
  store ptr %i.bfc, ptr %i.bei, align 8, !tbaa !76
  %i.bfd = add i32 %1, -1                         ; 3 uses
  store i32 %i.bfd, ptr %i.bej, align 8, !tbaa !75
  %i.bfe = add i32 %i.bet, 1                      ; 3 uses
  store i32 %i.bfe, ptr %i.bek, align 4, !tbaa !23
  %i.bff = icmp eq i32 %i.bfe, 0
  br i1 %i.bff, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph
  %i.bfg = load i32, ptr %i.bel, align 8, !tbaa !24
  %i.bfh = add i32 %i.bfg, 1
  store i32 %i.bfh, ptr %i.bel, align 8, !tbaa !24
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph
  %.not1348.i = icmp slt i32 %i.bfb, %.01262.i
  br i1 %.not1348.i, label %bb.eh, label %._crit_edge1578.i

bb.ek:                                            ; preds = %._crit_edge1659.i, %._crit_edge1578.i
  %i.bfi = phi i32 [ %i.bec, %._crit_edge1578.i ], [ %i.bfr, %._crit_edge1659.i ] ; 3 uses
  %i.bfj = phi i32 [ %i.bed, %._crit_edge1578.i ], [ %i.bfs, %._crit_edge1659.i ] ; 4 uses
  %i.bfk = phi i32 [ %i.bee, %._crit_edge1578.i ], [ %i.bft, %._crit_edge1659.i ] ; 4 uses
  %i.bfl = phi i32 [ %i.bef, %._crit_edge1578.i ], [ %i.bfu, %._crit_edge1659.i ] ; 4 uses
  %.promoted16561985.i = phi i32 [ %i.beo, %._crit_edge1578.i ], [ %i.bgb, %._crit_edge1659.i ]
  %.81282.i = phi i32 [ %.71281.i, %._crit_edge1578.i ], [ %.91283.i, %._crit_edge1659.i ] ; 4 uses
  %.11263.i = phi i32 [ %.01262.i, %._crit_edge1578.i ], [ %.21264.i, %._crit_edge1659.i ] ; 6 uses
  %.01251.i = phi i32 [ %i.ber, %._crit_edge1578.i ], [ %i.bgf, %._crit_edge1659.i ] ; 6 uses
  %.01240.i = phi i32 [ %i.beh, %._crit_edge1578.i ], [ %i.bgd, %._crit_edge1659.i ] ; 4 uses
  %.21227.i = phi i32 [ %.11226.i, %._crit_edge1578.i ], [ %.31228.i, %._crit_edge1659.i ] ; 4 uses
  %.21212.i = phi i32 [ %.11211.i, %._crit_edge1578.i ], [ %.31213.i, %._crit_edge1659.i ] ; 4 uses
  %.21197.i = phi ptr [ %.11196.i, %._crit_edge1578.i ], [ %.31198.i, %._crit_edge1659.i ] ; 5 uses
  %.21182.i = phi ptr [ %.11181.i, %._crit_edge1578.i ], [ %.31183.i, %._crit_edge1659.i ] ; 5 uses
  %.21167.i = phi ptr [ %.11166.i, %._crit_edge1578.i ], [ %.31168.i, %._crit_edge1659.i ] ; 5 uses
  %.11138.i = phi i32 [ %.01137.i, %._crit_edge1578.i ], [ %.21139.i, %._crit_edge1659.i ] ; 4 uses
  %.11126.i = phi i32 [ %.01125.i, %._crit_edge1578.i ], [ %.21127.i, %._crit_edge1659.i ] ; 4 uses
  %.21103.i = phi i32 [ %.11102.i, %._crit_edge1578.i ], [ %.31104.i, %._crit_edge1659.i ] ; 4 uses
  %.21088.i = phi i32 [ %.11087.i, %._crit_edge1578.i ], [ %.31089.i, %._crit_edge1659.i ] ; 4 uses
  %.11075.i = phi i32 [ %.01074.i, %._crit_edge1578.i ], [ %.21076.i, %._crit_edge1659.i ] ; 4 uses
  %.101063.i = phi i32 [ %.91062.i, %._crit_edge1578.i ], [ %.111064.i, %._crit_edge1659.i ] ; 4 uses
  %.111042.i = phi i32 [ %.101041.i, %._crit_edge1578.i ], [ %.121043.i, %._crit_edge1659.i ] ; 4 uses
  %.121018.i = phi i32 [ %.111017.i, %._crit_edge1578.i ], [ %.131019.i, %._crit_edge1659.i ] ; 4 uses
  %.8995.i = phi i32 [ %.7994.i, %._crit_edge1578.i ], [ %.9996.i, %._crit_edge1659.i ] ; 4 uses
  %.16974.i = phi i32 [ %.15973.i, %._crit_edge1578.i ], [ %.17975.i, %._crit_edge1659.i ] ; 4 uses
  %.22.i = phi i32 [ %.21.i, %._crit_edge1578.i ], [ %.23.i, %._crit_edge1659.i ] ; 4 uses
  %i.bfm = icmp sgt i32 %.11263.i, 20
  br i1 %i.bfm, label %BZ2_decompress.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.bfn = sext i32 %.11263.i to i64              ; 2 uses
  %i.bfo = getelementptr inbounds [4 x i8], ptr %.21197.i, i64 %i.bfn
  %i.bfp = load i32, ptr %i.bfo, align 4, !tbaa !40
  %.not1349.i = icmp sgt i32 %.01251.i, %i.bfp
  br i1 %.not1349.i, label %bb.em, label %bb.es

bb.em:                                            ; preds = %bb.el
  %i.bfq = add nsw i32 %.11263.i, 1
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %._crit_edge1982.i
  %i.bfr = phi i32 [ %i.bfi, %bb.em ], [ %.pre1903.i.a, %._crit_edge1982.i ] ; 2 uses
  %i.bfs = phi i32 [ %i.bfj, %bb.em ], [ %.pre1909.i.a, %._crit_edge1982.i ] ; 2 uses
  %i.bft = phi i32 [ %i.bfk, %bb.em ], [ %.pre1911.i.a, %._crit_edge1982.i ] ; 2 uses
  %i.bfu = phi i32 [ %i.bfl, %bb.em ], [ %.pre1915.i.a, %._crit_edge1982.i ] ; 2 uses
  %.promoted1656.i = phi i32 [ %.promoted16561985.i, %bb.em ], [ %.promoted1656.pre.i, %._crit_edge1982.i ] ; 3 uses
  %.91283.i = phi i32 [ %.81282.i, %bb.em ], [ %.pre1913.i, %._crit_edge1982.i ] ; 2 uses
  %.21264.i = phi i32 [ %i.bfq, %bb.em ], [ %.pre1917.i.a, %._crit_edge1982.i ] ; 2 uses
  %.11252.i = phi i32 [ %.01251.i, %bb.em ], [ %.pre1919.i, %._crit_edge1982.i ] ; 2 uses
  %.11241.i = phi i32 [ %.01240.i, %bb.em ], [ %.pre1921.i, %._crit_edge1982.i ]
  %.31228.i = phi i32 [ %.21227.i, %bb.em ], [ %.pre1923.i.a, %._crit_edge1982.i ] ; 2 uses
  %.31213.i = phi i32 [ %.21212.i, %bb.em ], [ %.pre1925.i, %._crit_edge1982.i ] ; 2 uses
  %.31198.i = phi ptr [ %.21197.i, %bb.em ], [ %.pre1927.i, %._crit_edge1982.i ] ; 2 uses
  %.31183.i = phi ptr [ %.21182.i, %bb.em ], [ %.pre1929.i, %._crit_edge1982.i ] ; 2 uses
  %.31168.i = phi ptr [ %.21167.i, %bb.em ], [ %.pre1931.i, %._crit_edge1982.i ] ; 2 uses
  %.21139.i = phi i32 [ %.11138.i, %bb.em ], [ %.pre1907.i, %._crit_edge1982.i ] ; 2 uses
  %.21127.i = phi i32 [ %.11126.i, %bb.em ], [ %.pre1905.i.a, %._crit_edge1982.i ] ; 2 uses
  %.31104.i = phi i32 [ %.21103.i, %bb.em ], [ %.pre1901.i, %._crit_edge1982.i ] ; 2 uses
  %.31089.i = phi i32 [ %.21088.i, %bb.em ], [ %.pre1899.i.a, %._crit_edge1982.i ] ; 2 uses
  %.21076.i = phi i32 [ %.11075.i, %bb.em ], [ %.pre1897.i.a, %._crit_edge1982.i ] ; 2 uses
  %.111064.i = phi i32 [ %.101063.i, %bb.em ], [ %.pre1895.i, %._crit_edge1982.i ] ; 2 uses
  %.121043.i = phi i32 [ %.111042.i, %bb.em ], [ %.pre1893.i, %._crit_edge1982.i ] ; 2 uses
  %.131019.i = phi i32 [ %.121018.i, %bb.em ], [ %.pre1891.i, %._crit_edge1982.i ] ; 2 uses
  %.9996.i = phi i32 [ %.8995.i, %bb.em ], [ %.pre1889.i, %._crit_edge1982.i ] ; 2 uses
  %.17975.i = phi i32 [ %.16974.i, %bb.em ], [ %.pre1887.i, %._crit_edge1982.i ] ; 2 uses
  %.23.i = phi i32 [ %.22.i, %bb.em ], [ %.pre.i36, %._crit_edge1982.i ] ; 2 uses
  store i32 37, ptr %i.g, align 8, !tbaa !19
  %i.bfv = icmp sgt i32 %.promoted1656.i, 0
  br i1 %i.bfv, label %.._crit_edge1659_crit_edge.i, label %.lr.ph1658.i

.._crit_edge1659_crit_edge.i:                     ; preds = %bb.en
  %.pre1987.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1659.i

.lr.ph1658.i:                                     ; preds = %bb.en
  %i.bfw = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 8 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfw, i64 12 ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfw, i64 16 ; 2 uses
  %.promoted1662.i = load i32, ptr %i.bfx, align 8, !tbaa !75
  br label %bb.eo

._crit_edge1659.i:                                ; preds = %bb.er, %.._crit_edge1659_crit_edge.i
  %i.bga = phi i32 [ %.pre1987.i, %.._crit_edge1659_crit_edge.i ], [ %i.bgo, %bb.er ]
  %.lcssa1451.i = phi i32 [ %.promoted1656.i, %.._crit_edge1659_crit_edge.i ], [ %i.bgp, %bb.er ]
  %i.bgb = add nsw i32 %.lcssa1451.i, -1          ; 3 uses
  %i.bgc = lshr i32 %i.bga, %i.bgb
  %i.bgd = and i32 %i.bgc, 1                      ; 2 uses
  store i32 %i.bgb, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bge = shl i32 %.11252.i, 1
  %i.bgf = or disjoint i32 %i.bgd, %i.bge
  br label %bb.ek

bb.eo:                                            ; preds = %bb.er, %.lr.ph1658.i
  %i.bgg = phi i32 [ %.promoted1662.i, %.lr.ph1658.i ], [ %i.bgr, %bb.er ] ; 2 uses
  %i.bgh = phi i32 [ %.promoted1656.i, %.lr.ph1658.i ], [ %i.bgp, %bb.er ] ; 2 uses
  %i.bgi = icmp eq i32 %i.bgg, 0
  br i1 %i.bgi, label %BZ2_decompress.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bgj = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bgk = shl i32 %i.bgj, 8
  %i.bgl = load ptr, ptr %i.bfw, align 8, !tbaa !76 ; 2 uses
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !34
  %i.bgn = zext i8 %i.bgm to i32
  %i.bgo = or disjoint i32 %i.bgk, %i.bgn         ; 2 uses
  store i32 %i.bgo, ptr %i.v, align 8, !tbaa !21
  %i.bgp = add nsw i32 %i.bgh, 8                  ; 3 uses
  store i32 %i.bgp, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgl, i64 1
  store ptr %i.bgq, ptr %i.bfw, align 8, !tbaa !76
  %i.bgr = add i32 %i.bgg, -1                     ; 2 uses
  store i32 %i.bgr, ptr %i.bfx, align 8, !tbaa !75
  %i.bgs = load i32, ptr %i.bfy, align 4, !tbaa !23
  %i.bgt = add i32 %i.bgs, 1                      ; 2 uses
  store i32 %i.bgt, ptr %i.bfy, align 4, !tbaa !23
  %i.bgu = icmp eq i32 %i.bgt, 0
  br i1 %i.bgu, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.bgv = load i32, ptr %i.bfz, align 8, !tbaa !24
  %i.bgw = add i32 %i.bgv, 1
  store i32 %i.bgw, ptr %i.bfz, align 8, !tbaa !24
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.bgx = icmp sgt i32 %i.bgh, -8
  br i1 %i.bgx, label %._crit_edge1659.i, label %bb.eo

bb.es:                                            ; preds = %bb.el
  %i.bgy = getelementptr inbounds [4 x i8], ptr %.21182.i, i64 %i.bfn
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !40
  %i.bha = sub nsw i32 %.01251.i, %i.bgz          ; 2 uses
  %or.cond.i = icmp ugt i32 %i.bha, 257
  br i1 %or.cond.i, label %BZ2_decompress.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bhb = zext nneg i32 %i.bha to i64
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %.21167.i, i64 %i.bhb
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !40
  br label %.loopexit1402.i

.loopexit1402.i:                                  ; preds = %.preheader1404.i, %.preheader1401.i, %.loopexit1402.loopexit.i, %.loopexit1402.loopexit1719.i, %bb.gq, %bb.et
  %i.bhe = phi i32 [ %i.bfl, %bb.et ], [ %i.bxp, %bb.gq ], [ %i.biy, %.loopexit1402.loopexit1719.i ], [ %i.biy, %.loopexit1402.loopexit.i ], [ %i.biy, %.preheader1401.i ], [ %i.biy, %.preheader1404.i ] ; 10 uses
  %.01293.i = phi i32 [ %i.bfk, %bb.et ], [ %.61299.i, %bb.gq ], [ %.31296.i, %.loopexit1402.loopexit1719.i ], [ %.31296.i, %.loopexit1402.loopexit.i ], [ %.31296.i, %.preheader1401.i ], [ %.31296.i, %.preheader1404.i ] ; 9 uses
  %.101284.i = phi i32 [ %.81282.i, %bb.et ], [ %.161290.i, %bb.gq ], [ %.131287.i, %.loopexit1402.loopexit1719.i ], [ %.131287.i, %.loopexit1402.loopexit.i ], [ %.131287.i, %.preheader1401.i ], [ %.131287.i, %.preheader1404.i ] ; 10 uses
  %.31265.i = phi i32 [ %.11263.i, %bb.et ], [ %.91271.i, %bb.gq ], [ %.61268.i, %.loopexit1402.loopexit1719.i ], [ %.61268.i, %.loopexit1402.loopexit.i ], [ %.61268.i, %.preheader1401.i ], [ %.61268.i, %.preheader1404.i ] ; 9 uses
  %.21253.i = phi i32 [ %.01251.i, %bb.et ], [ %.81259.i, %bb.gq ], [ %.51256.i, %.loopexit1402.loopexit1719.i ], [ %.51256.i, %.loopexit1402.loopexit.i ], [ %.51256.i, %.preheader1401.i ], [ %.51256.i, %.preheader1404.i ] ; 10 uses
  %.21242.i = phi i32 [ %.01240.i, %bb.et ], [ %.81248.i, %bb.gq ], [ %.51245.i, %.loopexit1402.loopexit1719.i ], [ %.51245.i, %.loopexit1402.loopexit.i ], [ %.51245.i, %.preheader1401.i ], [ %.51245.i, %.preheader1404.i ] ; 10 uses
  %.41229.i = phi i32 [ %.21227.i, %bb.et ], [ %.121237.i, %bb.gq ], [ %.81233.i, %.loopexit1402.loopexit1719.i ], [ %.81233.i, %.loopexit1402.loopexit.i ], [ %.81233.i, %.preheader1401.i ], [ %.81233.i, %.preheader1404.i ] ; 10 uses
  %.41214.i = phi i32 [ %.21212.i, %bb.et ], [ %.121222.i, %bb.gq ], [ %.81218.i, %.loopexit1402.loopexit1719.i ], [ %.81218.i, %.loopexit1402.loopexit.i ], [ %.81218.i, %.preheader1401.i ], [ %.81218.i, %.preheader1404.i ] ; 10 uses
  %.41199.i = phi ptr [ %.21197.i, %bb.et ], [ %.121207.i, %bb.gq ], [ %.81203.i, %.loopexit1402.loopexit1719.i ], [ %.81203.i, %.loopexit1402.loopexit.i ], [ %.81203.i, %.preheader1401.i ], [ %.81203.i, %.preheader1404.i ] ; 10 uses
  %.41184.i = phi ptr [ %.21182.i, %bb.et ], [ %.121192.i, %bb.gq ], [ %.81188.i, %.loopexit1402.loopexit1719.i ], [ %.81188.i, %.loopexit1402.loopexit.i ], [ %.81188.i, %.preheader1401.i ], [ %.81188.i, %.preheader1404.i ] ; 10 uses
  %.41169.i = phi ptr [ %.21167.i, %bb.et ], [ %.121177.i, %bb.gq ], [ %.81173.i, %.loopexit1402.loopexit1719.i ], [ %.81173.i, %.loopexit1402.loopexit.i ], [ %.81173.i, %.preheader1401.i ], [ %.81173.i, %.preheader1404.i ] ; 10 uses
  %.01152.i = phi i32 [ %i.bfj, %bb.et ], [ %.101162.i, %bb.gq ], [ %i.blj, %.loopexit1402.loopexit1719.i ], [ %i.bln, %.loopexit1402.loopexit.i ], [ %i.bkp, %.preheader1401.i ], [ %i.bkp, %.preheader1404.i ] ; 9 uses
  %.31140.i = phi i32 [ %.11138.i, %bb.et ], [ %.121149.i, %bb.gq ], [ %i.blq, %.loopexit1402.loopexit1719.i ], [ %i.blp, %.loopexit1402.loopexit.i ], [ %.61143.i, %.preheader1401.i ], [ %.61143.i, %.preheader1404.i ] ; 25 uses
  %.31128.i = phi i32 [ %.11126.i, %bb.et ], [ %.91134.i, %bb.gq ], [ %.61131.i, %.loopexit1402.loopexit1719.i ], [ %.61131.i, %.loopexit1402.loopexit.i ], [ %.61131.i, %.preheader1401.i ], [ %.61131.i, %.preheader1404.i ] ; 11 uses
  %.01116.i = phi i32 [ %i.bhd, %bb.et ], [ %i.bze, %bb.gq ], [ %i.bkn, %.loopexit1402.loopexit1719.i ], [ %i.bkn, %.loopexit1402.loopexit.i ], [ %i.bkn, %.preheader1401.i ], [ %i.bkn, %.preheader1404.i ] ; 22 uses
  %.41105.i = phi i32 [ %.21103.i, %bb.et ], [ %.121113.i, %bb.gq ], [ %.81109.i, %.loopexit1402.loopexit1719.i ], [ %.81109.i, %.loopexit1402.loopexit.i ], [ %.81109.i, %.preheader1401.i ], [ %.81109.i, %.preheader1404.i ] ; 10 uses
  %.41090.i = phi i32 [ %.21088.i, %bb.et ], [ %.121098.i, %bb.gq ], [ %.81094.i, %.loopexit1402.loopexit1719.i ], [ %.81094.i, %.loopexit1402.loopexit.i ], [ %.81094.i, %.preheader1401.i ], [ %.81094.i, %.preheader1404.i ] ; 10 uses
  %.31077.i = phi i32 [ %.11075.i, %bb.et ], [ %.91083.i, %bb.gq ], [ %.61080.i, %.loopexit1402.loopexit1719.i ], [ %.61080.i, %.loopexit1402.loopexit.i ], [ %.61080.i, %.preheader1401.i ], [ %.61080.i, %.preheader1404.i ] ; 5 uses
  %.121065.i = phi i32 [ %.101063.i, %bb.et ], [ %.181071.i, %bb.gq ], [ %.151068.i, %.loopexit1402.loopexit1719.i ], [ %.151068.i, %.loopexit1402.loopexit.i ], [ %.151068.i, %.preheader1401.i ], [ %.151068.i, %.preheader1404.i ] ; 11 uses
  %.131044.i = phi i32 [ %.111042.i, %bb.et ], [ %.191050.i, %bb.gq ], [ %.161047.i, %.loopexit1402.loopexit1719.i ], [ %.161047.i, %.loopexit1402.loopexit.i ], [ %.161047.i, %.preheader1401.i ], [ %.161047.i, %.preheader1404.i ] ; 10 uses
  %.141020.i = phi i32 [ %.121018.i, %bb.et ], [ %.201026.i, %bb.gq ], [ %.171023.i, %.loopexit1402.loopexit1719.i ], [ %.171023.i, %.loopexit1402.loopexit.i ], [ %.171023.i, %.preheader1401.i ], [ %.171023.i, %.preheader1404.i ] ; 10 uses
  %.10997.i = phi i32 [ %.8995.i, %bb.et ], [ %.161003.i, %bb.gq ], [ %.131000.i, %.loopexit1402.loopexit1719.i ], [ %.131000.i, %.loopexit1402.loopexit.i ], [ %.131000.i, %.preheader1401.i ], [ %.131000.i, %.preheader1404.i ] ; 10 uses
  %.18976.i = phi i32 [ %.16974.i, %bb.et ], [ %.24982.i, %bb.gq ], [ %.21979.i, %.loopexit1402.loopexit1719.i ], [ %.21979.i, %.loopexit1402.loopexit.i ], [ %.21979.i, %.preheader1401.i ], [ %.21979.i, %.preheader1404.i ] ; 9 uses
  %.24.i = phi i32 [ %.22.i, %bb.et ], [ %.30.i, %bb.gq ], [ %.27.i, %.loopexit1402.loopexit1719.i ], [ %.27.i, %.loopexit1402.loopexit.i ], [ %.27.i, %.preheader1401.i ], [ %.27.i, %.preheader1404.i ] ; 5 uses
  %i.bhf = icmp eq i32 %.01116.i, %.31077.i
  br i1 %i.bhf, label %bb.gr, label %bb.eu

bb.eu:                                            ; preds = %.loopexit1402.i
  %or.cond7.i = icmp ult i32 %.01116.i, 2
  br i1 %or.cond7.i, label %bb.ev, label %bb.ft

bb.ev:                                            ; preds = %bb.fn, %bb.eu
  %i.bhg = phi i32 [ %i.biy, %bb.fn ], [ %i.bhe, %bb.eu ] ; 3 uses
  %.11294.i = phi i32 [ %.31296.i, %bb.fn ], [ 1, %bb.eu ] ; 4 uses
  %.111285.i = phi i32 [ %.131287.i, %bb.fn ], [ %.101284.i, %bb.eu ] ; 3 uses
  %.41266.i = phi i32 [ %.61268.i, %bb.fn ], [ %.31265.i, %bb.eu ] ; 2 uses
  %.31254.i = phi i32 [ %.51256.i, %bb.fn ], [ %.21253.i, %bb.eu ] ; 3 uses
  %.31243.i = phi i32 [ %.51245.i, %bb.fn ], [ %.21242.i, %bb.eu ] ; 3 uses
  %.51230.i = phi i32 [ %.81233.i, %bb.fn ], [ %.41229.i, %bb.eu ] ; 3 uses
  %.51215.i = phi i32 [ %.81218.i, %bb.fn ], [ %.41214.i, %bb.eu ] ; 3 uses
  %.51200.i = phi ptr [ %.81203.i, %bb.fn ], [ %.41199.i, %bb.eu ] ; 3 uses
  %.51185.i = phi ptr [ %.81188.i, %bb.fn ], [ %.41184.i, %bb.eu ] ; 3 uses
  %.51170.i = phi ptr [ %.81173.i, %bb.fn ], [ %.41169.i, %bb.eu ] ; 3 uses
  %.11153.i = phi i32 [ %.41156.i, %bb.fn ], [ -1, %bb.eu ] ; 2 uses
  %.41141.i = phi i32 [ %.61143.i, %bb.fn ], [ %.31140.i, %bb.eu ] ; 3 uses
  %.41129.i = phi i32 [ %.61131.i, %bb.fn ], [ %.31128.i, %bb.eu ] ; 3 uses
  %.11117.i = phi i32 [ %i.bkn, %bb.fn ], [ %.01116.i, %bb.eu ] ; 4 uses
  %.51106.i = phi i32 [ %.81109.i, %bb.fn ], [ %.41105.i, %bb.eu ] ; 3 uses
  %.51091.i = phi i32 [ %.81094.i, %bb.fn ], [ %.41090.i, %bb.eu ] ; 3 uses
  %.41078.i = phi i32 [ %.61080.i, %bb.fn ], [ %.31077.i, %bb.eu ] ; 3 uses
  %.131066.i = phi i32 [ %.151068.i, %bb.fn ], [ %.121065.i, %bb.eu ] ; 4 uses
  %.141045.i = phi i32 [ %.161047.i, %bb.fn ], [ %.131044.i, %bb.eu ] ; 3 uses
  %.151021.i = phi i32 [ %.171023.i, %bb.fn ], [ %.141020.i, %bb.eu ] ; 3 uses
  %.11998.i = phi i32 [ %.131000.i, %bb.fn ], [ %.10997.i, %bb.eu ] ; 3 uses
  %.19977.i = phi i32 [ %.21979.i, %bb.fn ], [ %.18976.i, %bb.eu ] ; 3 uses
  %.25.i = phi i32 [ %.27.i, %bb.fn ], [ %.24.i, %bb.eu ] ; 3 uses
  %i.bhh = icmp sgt i32 %.11294.i, 2097151
  br i1 %i.bhh, label %BZ2_decompress.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bhi = icmp eq i32 %.11117.i, 0
  %i.bhj = shl nsw i32 %.11294.i, 1               ; 3 uses
  %.21154.v.i = select i1 %i.bhi, i32 %.11294.i, i32 %i.bhj
  %.21154.i = add nsw i32 %.21154.v.i, %.11153.i  ; 2 uses
  %i.bhk = icmp eq i32 %.51106.i, 0
  br i1 %i.bhk, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.bhl = add nsw i32 %.51091.i, 1               ; 4 uses
  %.not1357.i = icmp slt i32 %i.bhl, %.131066.i
  br i1 %.not1357.i, label %bb.ey, label %BZ2_decompress.exit

bb.ey:                                            ; preds = %bb.ex
  %i.bhm = sext i32 %i.bhl to i64
  %i.bhn = getelementptr inbounds i8, ptr %i.ab, i64 %i.bhm
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !34 ; 2 uses
  %i.bhp = zext i8 %i.bho to i32
  %i.bhq = zext i8 %i.bho to i64                  ; 4 uses
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bhq
  %i.bhs = load i32, ptr %i.bhr, align 4, !tbaa !40
  %i.bht = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bhq
  %i.bhu = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bhq
  %i.bhv = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bhq
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ew
  %.61231.i = phi i32 [ %i.bhp, %bb.ey ], [ %.51230.i, %bb.ew ]
  %.61216.i = phi i32 [ %i.bhs, %bb.ey ], [ %.51215.i, %bb.ew ] ; 2 uses
  %.61201.i = phi ptr [ %i.bht, %bb.ey ], [ %.51200.i, %bb.ew ]
  %.61186.i = phi ptr [ %i.bhv, %bb.ey ], [ %.51185.i, %bb.ew ]
  %.61171.i = phi ptr [ %i.bhu, %bb.ey ], [ %.51170.i, %bb.ew ]
  %.61107.i = phi i32 [ 50, %bb.ey ], [ %.51106.i, %bb.ew ]
  %.61092.i = phi i32 [ %i.bhl, %bb.ey ], [ %.51091.i, %bb.ew ]
  %i.bhw = add nsw i32 %.61107.i, -1
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.aq
  %i.bhx = phi i32 [ %i.bhg, %bb.ez ], [ %.pre1915.i.a, %bb.aq ] ; 3 uses
  %.21295.i = phi i32 [ %i.bhj, %bb.ez ], [ %.pre1911.i.a, %bb.aq ] ; 3 uses
  %.121286.i = phi i32 [ %.111285.i, %bb.ez ], [ %.pre1913.i, %bb.aq ] ; 3 uses
  %.51267.i = phi i32 [ %.61216.i, %bb.ez ], [ %.pre1917.i.a, %bb.aq ] ; 7 uses
  %.41255.i = phi i32 [ %.31254.i, %bb.ez ], [ %.pre1919.i, %bb.aq ] ; 2 uses
  %.41244.i = phi i32 [ %.31243.i, %bb.ez ], [ %.pre1921.i, %bb.aq ] ; 3 uses
  %.71232.i = phi i32 [ %.61231.i, %bb.ez ], [ %.pre1923.i.a, %bb.aq ] ; 3 uses
  %.71217.i = phi i32 [ %.61216.i, %bb.ez ], [ %.pre1925.i, %bb.aq ] ; 3 uses
  %.71202.i = phi ptr [ %.61201.i, %bb.ez ], [ %.pre1927.i, %bb.aq ] ; 3 uses
  %.71187.i = phi ptr [ %.61186.i, %bb.ez ], [ %.pre1929.i, %bb.aq ] ; 3 uses
  %.71172.i = phi ptr [ %.61171.i, %bb.ez ], [ %.pre1931.i, %bb.aq ] ; 3 uses
  %.31155.i = phi i32 [ %.21154.i, %bb.ez ], [ %.pre1909.i.a, %bb.aq ] ; 3 uses
  %.51142.i = phi i32 [ %.41141.i, %bb.ez ], [ %.pre1907.i, %bb.aq ] ; 3 uses
  %.51130.i = phi i32 [ %.41129.i, %bb.ez ], [ %.pre1905.i.a, %bb.aq ] ; 3 uses
  %.21118.i = phi i32 [ %.11117.i, %bb.ez ], [ %.pre1903.i.a, %bb.aq ] ; 3 uses
  %.71108.i = phi i32 [ %i.bhw, %bb.ez ], [ %.pre1901.i, %bb.aq ] ; 3 uses
  %.71093.i = phi i32 [ %.61092.i, %bb.ez ], [ %.pre1899.i.a, %bb.aq ] ; 3 uses
  %.51079.i = phi i32 [ %.41078.i, %bb.ez ], [ %.pre1897.i.a, %bb.aq ] ; 3 uses
  %.141067.i = phi i32 [ %.131066.i, %bb.ez ], [ %.pre1895.i, %bb.aq ] ; 3 uses
  %.151046.i = phi i32 [ %.141045.i, %bb.ez ], [ %.pre1893.i, %bb.aq ] ; 3 uses
  %.161022.i = phi i32 [ %.151021.i, %bb.ez ], [ %.pre1891.i, %bb.aq ] ; 3 uses
  %.12999.i = phi i32 [ %.11998.i, %bb.ez ], [ %.pre1889.i, %bb.aq ] ; 3 uses
  %.20978.i = phi i32 [ %.19977.i, %bb.ez ], [ %.pre1887.i, %bb.aq ] ; 3 uses
  %.26.i = phi i32 [ %.25.i, %bb.ez ], [ %.pre.i36, %bb.aq ] ; 3 uses
  store i32 38, ptr %i.g, align 8, !tbaa !19
  %.promoted1618.i = load i32, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20 ; 3 uses
  %.not13581619.i = icmp slt i32 %.promoted1618.i, %.51267.i
  br i1 %.not13581619.i, label %.lr.ph1621.i, label %.._crit_edge1622_crit_edge.i

.._crit_edge1622_crit_edge.i:                     ; preds = %bb.fa
  %.pre1973.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1622.i

.lr.ph1621.i:                                     ; preds = %bb.fa
  %i.bhy = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 8 ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhy, i64 12 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhy, i64 16 ; 2 uses
  %.promoted1625.i = load i32, ptr %i.bhz, align 8, !tbaa !75 ; 2 uses
  %i.bic = icmp eq i32 %.promoted1625.i, 0
  br i1 %i.bic, label %BZ2_decompress.exit, label %.lr.ph473.preheader

.lr.ph473.preheader:                              ; preds = %.lr.ph1621.i
  %.promoted844 = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted845 = load ptr, ptr %i.bhy, align 8, !tbaa !76
  %.promoted846 = load i32, ptr %i.bia, align 4, !tbaa !23
  br label %.lr.ph473

._crit_edge1622.i:                                ; preds = %bb.fd, %.._crit_edge1622_crit_edge.i
  %i.bid = phi i32 [ %.pre1973.i, %.._crit_edge1622_crit_edge.i ], [ %i.biq, %bb.fd ]
  %.lcssa1468.i = phi i32 [ %.promoted1618.i, %.._crit_edge1622_crit_edge.i ], [ %i.bir, %bb.fd ]
  %i.bie = sub nsw i32 %.lcssa1468.i, %.51267.i   ; 3 uses
  %i.bif = lshr i32 %i.bid, %i.bie
  %notmask1359.i = shl nsw i32 -1, %.51267.i
  %i.big = xor i32 %notmask1359.i, -1
  %i.bih = and i32 %i.bif, %i.big
  store i32 %i.bie, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  br label %bb.fe

bb.fb:                                            ; preds = %bb.fd
  %i.bii = icmp eq i32 %i.bit, 0
  br i1 %i.bii, label %BZ2_decompress.exit, label %.lr.ph473

.lr.ph473:                                        ; preds = %.lr.ph473.preheader, %bb.fb
  %i.bij = phi i32 [ %i.biu, %bb.fb ], [ %.promoted846, %.lr.ph473.preheader ]
  %i.bik = phi ptr [ %i.bis, %bb.fb ], [ %.promoted845, %.lr.ph473.preheader ] ; 2 uses
  %i.bil = phi i32 [ %i.biq, %bb.fb ], [ %.promoted844, %.lr.ph473.preheader ]
  %i.bim = phi i32 [ %i.bir, %bb.fb ], [ %.promoted1618.i, %.lr.ph473.preheader ]
  %2 = phi i32 [ %i.bit, %bb.fb ], [ %.promoted1625.i, %.lr.ph473.preheader ]
  %i.bin = shl i32 %i.bil, 8
  %i.bio = load i8, ptr %i.bik, align 1, !tbaa !34
  %i.bip = zext i8 %i.bio to i32
  %i.biq = or disjoint i32 %i.bin, %i.bip         ; 3 uses
  store i32 %i.biq, ptr %i.v, align 8, !tbaa !21
  %i.bir = add nsw i32 %i.bim, 8                  ; 4 uses
  store i32 %i.bir, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bik, i64 1 ; 2 uses
  store ptr %i.bis, ptr %i.bhy, align 8, !tbaa !76
  %i.bit = add i32 %2, -1                         ; 3 uses
  store i32 %i.bit, ptr %i.bhz, align 8, !tbaa !75
  %i.biu = add i32 %i.bij, 1                      ; 3 uses
  store i32 %i.biu, ptr %i.bia, align 4, !tbaa !23
  %i.biv = icmp eq i32 %i.biu, 0
  br i1 %i.biv, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph473
  %i.biw = load i32, ptr %i.bib, align 8, !tbaa !24
  %i.bix = add i32 %i.biw, 1
  store i32 %i.bix, ptr %i.bib, align 8, !tbaa !24
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph473
  %.not1358.i = icmp slt i32 %i.bir, %.51267.i
  br i1 %.not1358.i, label %bb.fb, label %._crit_edge1622.i

bb.fe:                                            ; preds = %._crit_edge1639.i, %._crit_edge1622.i
  %i.biy = phi i32 [ %i.bhx, %._crit_edge1622.i ], [ %i.bje, %._crit_edge1639.i ] ; 10 uses
  %.promoted16361977.i = phi i32 [ %i.bie, %._crit_edge1622.i ], [ %i.bjl, %._crit_edge1639.i ]
  %.31296.i = phi i32 [ %.21295.i, %._crit_edge1622.i ], [ %.41297.i, %._crit_edge1639.i ] ; 10 uses
  %.131287.i = phi i32 [ %.121286.i, %._crit_edge1622.i ], [ %.141288.i, %._crit_edge1639.i ] ; 10 uses
  %.61268.i = phi i32 [ %.51267.i, %._crit_edge1622.i ], [ %.71269.i, %._crit_edge1639.i ] ; 12 uses
  %.51256.i = phi i32 [ %i.bih, %._crit_edge1622.i ], [ %i.bjp, %._crit_edge1639.i ] ; 12 uses
  %.51245.i = phi i32 [ %.41244.i, %._crit_edge1622.i ], [ %i.bjn, %._crit_edge1639.i ] ; 10 uses
  %.81233.i = phi i32 [ %.71232.i, %._crit_edge1622.i ], [ %.91234.i, %._crit_edge1639.i ] ; 10 uses
  %.81218.i = phi i32 [ %.71217.i, %._crit_edge1622.i ], [ %.91219.i, %._crit_edge1639.i ] ; 10 uses
  %.81203.i = phi ptr [ %.71202.i, %._crit_edge1622.i ], [ %.91204.i, %._crit_edge1639.i ] ; 11 uses
  %.81188.i = phi ptr [ %.71187.i, %._crit_edge1622.i ], [ %.91189.i, %._crit_edge1639.i ] ; 11 uses
  %.81173.i = phi ptr [ %.71172.i, %._crit_edge1622.i ], [ %.91174.i, %._crit_edge1639.i ] ; 11 uses
  %.41156.i = phi i32 [ %.31155.i, %._crit_edge1622.i ], [ %.51157.i, %._crit_edge1639.i ] ; 6 uses
  %.61143.i = phi i32 [ %.51142.i, %._crit_edge1622.i ], [ %.71144.i, %._crit_edge1639.i ] ; 10 uses
  %.61131.i = phi i32 [ %.51130.i, %._crit_edge1622.i ], [ %.71132.i, %._crit_edge1639.i ] ; 12 uses
  %.31119.i = phi i32 [ %.21118.i, %._crit_edge1622.i ], [ %.41120.i, %._crit_edge1639.i ] ; 3 uses
  %.81109.i = phi i32 [ %.71108.i, %._crit_edge1622.i ], [ %.91110.i, %._crit_edge1639.i ] ; 10 uses
  %.81094.i = phi i32 [ %.71093.i, %._crit_edge1622.i ], [ %.91095.i, %._crit_edge1639.i ] ; 10 uses
  %.61080.i = phi i32 [ %.51079.i, %._crit_edge1622.i ], [ %.71081.i, %._crit_edge1639.i ] ; 10 uses
  %.151068.i = phi i32 [ %.141067.i, %._crit_edge1622.i ], [ %.161069.i, %._crit_edge1639.i ] ; 10 uses
  %.161047.i = phi i32 [ %.151046.i, %._crit_edge1622.i ], [ %.171048.i, %._crit_edge1639.i ] ; 10 uses
  %.171023.i = phi i32 [ %.161022.i, %._crit_edge1622.i ], [ %.181024.i, %._crit_edge1639.i ] ; 10 uses
  %.131000.i = phi i32 [ %.12999.i, %._crit_edge1622.i ], [ %.141001.i, %._crit_edge1639.i ] ; 10 uses
  %.21979.i = phi i32 [ %.20978.i, %._crit_edge1622.i ], [ %.22980.i, %._crit_edge1639.i ] ; 10 uses
  %.27.i = phi i32 [ %.26.i, %._crit_edge1622.i ], [ %.28.i, %._crit_edge1639.i ] ; 10 uses
  %i.biz = icmp sgt i32 %.61268.i, 20
  br i1 %i.biz, label %BZ2_decompress.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bja = sext i32 %.61268.i to i64              ; 2 uses
  %i.bjb = getelementptr inbounds [4 x i8], ptr %.81203.i, i64 %i.bja
  %i.bjc = load i32, ptr %i.bjb, align 4, !tbaa !40
  %.not1360.i = icmp sgt i32 %.51256.i, %i.bjc
  br i1 %.not1360.i, label %bb.fg, label %bb.fm

bb.fg:                                            ; preds = %bb.ff
  %i.bjd = add nsw i32 %.61268.i, 1
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %._crit_edge1974.i
  %i.bje = phi i32 [ %i.biy, %bb.fg ], [ %.pre1915.i.a, %._crit_edge1974.i ] ; 2 uses
  %.promoted1636.i = phi i32 [ %.promoted16361977.i, %bb.fg ], [ %.promoted1636.pre.i, %._crit_edge1974.i ] ; 3 uses
  %.41297.i = phi i32 [ %.31296.i, %bb.fg ], [ %.pre1911.i.a, %._crit_edge1974.i ] ; 2 uses
  %.141288.i = phi i32 [ %.131287.i, %bb.fg ], [ %.pre1913.i, %._crit_edge1974.i ] ; 2 uses
  %.71269.i = phi i32 [ %i.bjd, %bb.fg ], [ %.pre1917.i.a, %._crit_edge1974.i ] ; 2 uses
  %.61257.i = phi i32 [ %.51256.i, %bb.fg ], [ %.pre1919.i, %._crit_edge1974.i ] ; 2 uses
  %.61246.i = phi i32 [ %.51245.i, %bb.fg ], [ %.pre1921.i, %._crit_edge1974.i ]
  %.91234.i = phi i32 [ %.81233.i, %bb.fg ], [ %.pre1923.i.a, %._crit_edge1974.i ] ; 2 uses
  %.91219.i = phi i32 [ %.81218.i, %bb.fg ], [ %.pre1925.i, %._crit_edge1974.i ] ; 2 uses
  %.91204.i = phi ptr [ %.81203.i, %bb.fg ], [ %.pre1927.i, %._crit_edge1974.i ] ; 2 uses
  %.91189.i = phi ptr [ %.81188.i, %bb.fg ], [ %.pre1929.i, %._crit_edge1974.i ] ; 2 uses
  %.91174.i = phi ptr [ %.81173.i, %bb.fg ], [ %.pre1931.i, %._crit_edge1974.i ] ; 2 uses
  %.51157.i = phi i32 [ %.41156.i, %bb.fg ], [ %.pre1909.i.a, %._crit_edge1974.i ] ; 2 uses
  %.71144.i = phi i32 [ %.61143.i, %bb.fg ], [ %.pre1907.i, %._crit_edge1974.i ] ; 2 uses
  %.71132.i = phi i32 [ %.61131.i, %bb.fg ], [ %.pre1905.i.a, %._crit_edge1974.i ] ; 2 uses
  %.41120.i = phi i32 [ %.31119.i, %bb.fg ], [ %.pre1903.i.a, %._crit_edge1974.i ] ; 2 uses
  %.91110.i = phi i32 [ %.81109.i, %bb.fg ], [ %.pre1901.i, %._crit_edge1974.i ] ; 2 uses
  %.91095.i = phi i32 [ %.81094.i, %bb.fg ], [ %.pre1899.i.a, %._crit_edge1974.i ] ; 2 uses
  %.71081.i = phi i32 [ %.61080.i, %bb.fg ], [ %.pre1897.i.a, %._crit_edge1974.i ] ; 2 uses
  %.161069.i = phi i32 [ %.151068.i, %bb.fg ], [ %.pre1895.i, %._crit_edge1974.i ] ; 2 uses
  %.171048.i = phi i32 [ %.161047.i, %bb.fg ], [ %.pre1893.i, %._crit_edge1974.i ] ; 2 uses
  %.181024.i = phi i32 [ %.171023.i, %bb.fg ], [ %.pre1891.i, %._crit_edge1974.i ] ; 2 uses
  %.141001.i = phi i32 [ %.131000.i, %bb.fg ], [ %.pre1889.i, %._crit_edge1974.i ] ; 2 uses
  %.22980.i = phi i32 [ %.21979.i, %bb.fg ], [ %.pre1887.i, %._crit_edge1974.i ] ; 2 uses
  %.28.i = phi i32 [ %.27.i, %bb.fg ], [ %.pre.i36, %._crit_edge1974.i ] ; 2 uses
  store i32 39, ptr %i.g, align 8, !tbaa !19
  %i.bjf = icmp sgt i32 %.promoted1636.i, 0
  br i1 %i.bjf, label %.._crit_edge1639_crit_edge.i, label %.lr.ph1638.i

.._crit_edge1639_crit_edge.i:                     ; preds = %bb.fh
  %.pre1979.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1639.i

.lr.ph1638.i:                                     ; preds = %bb.fh
  %i.bjg = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 8 ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjg, i64 12 ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjg, i64 16 ; 2 uses
  %.promoted1642.i = load i32, ptr %i.bjh, align 8, !tbaa !75
  br label %bb.fi

._crit_edge1639.i:                                ; preds = %bb.fl, %.._crit_edge1639_crit_edge.i
  %i.bjk = phi i32 [ %.pre1979.i, %.._crit_edge1639_crit_edge.i ], [ %i.bjy, %bb.fl ]
  %.lcssa1460.i = phi i32 [ %.promoted1636.i, %.._crit_edge1639_crit_edge.i ], [ %i.bjz, %bb.fl ]
  %i.bjl = add nsw i32 %.lcssa1460.i, -1          ; 3 uses
  %i.bjm = lshr i32 %i.bjk, %i.bjl
  %i.bjn = and i32 %i.bjm, 1                      ; 2 uses
  store i32 %i.bjl, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bjo = shl i32 %.61257.i, 1
  %i.bjp = or disjoint i32 %i.bjn, %i.bjo
  br label %bb.fe

bb.fi:                                            ; preds = %bb.fl, %.lr.ph1638.i
  %i.bjq = phi i32 [ %.promoted1642.i, %.lr.ph1638.i ], [ %i.bkb, %bb.fl ] ; 2 uses
  %i.bjr = phi i32 [ %.promoted1636.i, %.lr.ph1638.i ], [ %i.bjz, %bb.fl ] ; 2 uses
  %i.bjs = icmp eq i32 %i.bjq, 0
  br i1 %i.bjs, label %BZ2_decompress.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bjt = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bju = shl i32 %i.bjt, 8
  %i.bjv = load ptr, ptr %i.bjg, align 8, !tbaa !76 ; 2 uses
  %i.bjw = load i8, ptr %i.bjv, align 1, !tbaa !34
  %i.bjx = zext i8 %i.bjw to i32
  %i.bjy = or disjoint i32 %i.bju, %i.bjx         ; 2 uses
  store i32 %i.bjy, ptr %i.v, align 8, !tbaa !21
  %i.bjz = add nsw i32 %i.bjr, 8                  ; 3 uses
  store i32 %i.bjz, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjv, i64 1
  store ptr %i.bka, ptr %i.bjg, align 8, !tbaa !76
  %i.bkb = add i32 %i.bjq, -1                     ; 2 uses
  store i32 %i.bkb, ptr %i.bjh, align 8, !tbaa !75
  %i.bkc = load i32, ptr %i.bji, align 4, !tbaa !23
  %i.bkd = add i32 %i.bkc, 1                      ; 2 uses
  store i32 %i.bkd, ptr %i.bji, align 4, !tbaa !23
  %i.bke = icmp eq i32 %i.bkd, 0
  br i1 %i.bke, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bkf = load i32, ptr %i.bjj, align 8, !tbaa !24
  %i.bkg = add i32 %i.bkf, 1
  store i32 %i.bkg, ptr %i.bjj, align 8, !tbaa !24
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.bkh = icmp sgt i32 %i.bjr, -8
  br i1 %i.bkh, label %._crit_edge1639.i, label %bb.fi

bb.fm:                                            ; preds = %bb.ff
  %i.bki = getelementptr inbounds [4 x i8], ptr %.81188.i, i64 %i.bja
  %i.bkj = load i32, ptr %i.bki, align 4, !tbaa !40
  %i.bkk = sub nsw i32 %.51256.i, %i.bkj          ; 2 uses
  %or.cond1375.i = icmp ugt i32 %i.bkk, 257
  br i1 %or.cond1375.i, label %BZ2_decompress.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.bkl = zext nneg i32 %i.bkk to i64
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %.81173.i, i64 %i.bkl
  %i.bkn = load i32, ptr %i.bkm, align 4, !tbaa !40 ; 8 uses
  %i.bko = icmp ult i32 %i.bkn, 2
  br i1 %i.bko, label %bb.ev, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bkp = add nsw i32 %.41156.i, 1               ; 5 uses
  %i.bkq = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.bkr = sext i32 %i.bkq to i64
  %i.bks = getelementptr inbounds i8, ptr %i.ai, i64 %i.bkr
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !34
  %i.bku = zext i8 %i.bkt to i64
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bku
  %i.bkw = load i8, ptr %i.bkv, align 1, !tbaa !34 ; 3 uses
  %i.bkx = zext i8 %i.bkw to i64
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bkx ; 2 uses
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !40
  %i.bla = add nsw i32 %i.bkz, %i.bkp
  store i32 %i.bla, ptr %i.bky, align 4, !tbaa !40
  %i.blb = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1361.i = icmp eq i8 %i.blb, 0
  %i.blc = icmp sgt i32 %.41156.i, -1             ; 2 uses
  br i1 %.not1361.i, label %.preheader1401.i, label %.preheader1404.i

.preheader1404.i:                                 ; preds = %bb.fo
  br i1 %i.blc, label %.lr.ph1628.i, label %.loopexit1402.i

.lr.ph1628.i:                                     ; preds = %.preheader1404.i
  %i.bld = zext i8 %i.bkw to i16
  %i.ble = sext i32 %.61143.i to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.61143.i, i32 %.61131.i) ; 2 uses
  %wide.trip.count1834.i = sext i32 %smax.i to i64
  br label %bb.fp

.preheader1401.i:                                 ; preds = %bb.fo
  br i1 %i.blc, label %.lr.ph1633.i, label %.loopexit1402.i

.lr.ph1633.i:                                     ; preds = %.preheader1401.i
  %i.blf = zext i8 %i.bkw to i32
  %i.blg = sext i32 %.61143.i to i64
  %smax1840.i = tail call i32 @llvm.smax.i32(i32 %.61143.i, i32 %.61131.i) ; 2 uses
  %wide.trip.count1841.i = sext i32 %smax1840.i to i64
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fq, %.lr.ph1628.i
  %indvars.iv1830.i = phi i64 [ %i.ble, %.lr.ph1628.i ], [ %indvars.iv.next1831.i, %bb.fq ] ; 3 uses
end_hunk_1
begin_hunk_2_@nsis_BZ2_bzDecompress:bb.a
  %i.bsq = getelementptr i8, ptr %i.bry, i64 -3
  store i8 %i.bsp, ptr %i.bsq, align 1, !tbaa !34
  %i.bsr = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.bss = sext i32 %i.bsr to i64
  %i.bst = getelementptr i8, ptr %i.ai, i64 %i.bss
  %i.bsu = getelementptr i8, ptr %i.bst, i64 11
  %i.bsv = load i8, ptr %i.bsu, align 1, !tbaa !34
  %i.bsw = getelementptr i8, ptr %i.bry, i64 -4
  store i8 %i.bsv, ptr %i.bsw, align 1, !tbaa !34
  %i.bsx = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.bsy = sext i32 %i.bsx to i64
  %i.bsz = getelementptr i8, ptr %i.ai, i64 %i.bsy
  %i.bta = getelementptr i8, ptr %i.bsz, i64 10
  %i.btb = load i8, ptr %i.bta, align 1, !tbaa !34
  %i.btc = getelementptr i8, ptr %i.bry, i64 -5
  store i8 %i.btb, ptr %i.btc, align 1, !tbaa !34
  %i.btd = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.bte = sext i32 %i.btd to i64
  %i.btf = getelementptr i8, ptr %i.ai, i64 %i.bte
  %i.btg = getelementptr i8, ptr %i.btf, i64 9
  %i.bth = load i8, ptr %i.btg, align 1, !tbaa !34
  %i.bti = getelementptr i8, ptr %i.bry, i64 -6
  store i8 %i.bth, ptr %i.bti, align 1, !tbaa !34
  %i.btj = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.btk = sext i32 %i.btj to i64
  %i.btl = getelementptr i8, ptr %i.ai, i64 %i.btk
  %i.btm = getelementptr i8, ptr %i.btl, i64 8
  %i.btn = load i8, ptr %i.btm, align 1, !tbaa !34
  %i.bto = getelementptr i8, ptr %i.bry, i64 -7
  store i8 %i.btn, ptr %i.bto, align 1, !tbaa !34
  %i.btp = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.btq = sext i32 %i.btp to i64
  %i.btr = getelementptr i8, ptr %i.ai, i64 %i.btq
  %i.bts = getelementptr i8, ptr %i.btr, i64 7
  %i.btt = load i8, ptr %i.bts, align 1, !tbaa !34
  %i.btu = getelementptr i8, ptr %i.bry, i64 -8
  store i8 %i.btt, ptr %i.btu, align 1, !tbaa !34
  %i.btv = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.btw = sext i32 %i.btv to i64
  %i.btx = getelementptr i8, ptr %i.ai, i64 %i.btw
  %i.bty = getelementptr i8, ptr %i.btx, i64 6
  %i.btz = load i8, ptr %i.bty, align 1, !tbaa !34
  %i.bua = getelementptr i8, ptr %i.bry, i64 -9
  store i8 %i.btz, ptr %i.bua, align 1, !tbaa !34
  %i.bub = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.buc = sext i32 %i.bub to i64
  %i.bud = getelementptr i8, ptr %i.ai, i64 %i.buc
  %i.bue = getelementptr i8, ptr %i.bud, i64 5
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !34
  %i.bug = getelementptr i8, ptr %i.bry, i64 -10
  store i8 %i.buf, ptr %i.bug, align 1, !tbaa !34
  %i.buh = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.bui = sext i32 %i.buh to i64
  %i.buj = getelementptr i8, ptr %i.ai, i64 %i.bui
  %i.buk = getelementptr i8, ptr %i.buj, i64 4
  %i.bul = load i8, ptr %i.buk, align 1, !tbaa !34
  %i.bum = getelementptr i8, ptr %i.bry, i64 -11
  store i8 %i.bul, ptr %i.bum, align 1, !tbaa !34
  %i.bun = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.buo = sext i32 %i.bun to i64
  %i.bup = getelementptr i8, ptr %i.ai, i64 %i.buo
  %i.buq = getelementptr i8, ptr %i.bup, i64 3
  %i.bur = load i8, ptr %i.buq, align 1, !tbaa !34
  %i.bus = getelementptr i8, ptr %i.bry, i64 -12
  store i8 %i.bur, ptr %i.bus, align 1, !tbaa !34
  %i.but = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.buu = sext i32 %i.but to i64
  %i.buv = getelementptr i8, ptr %i.ai, i64 %i.buu
  %i.buw = getelementptr i8, ptr %i.buv, i64 2
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !34
  %i.buy = getelementptr i8, ptr %i.bry, i64 -13
  store i8 %i.bux, ptr %i.buy, align 1, !tbaa !34
  %i.buz = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.bva = sext i32 %i.buz to i64
  %i.bvb = getelementptr i8, ptr %i.ai, i64 %i.bva
  %i.bvc = getelementptr i8, ptr %i.bvb, i64 1
  %i.bvd = load i8, ptr %i.bvc, align 1, !tbaa !34
  %i.bve = getelementptr i8, ptr %i.bry, i64 -14
  store i8 %i.bvd, ptr %i.bve, align 1, !tbaa !34
  %indvars.iv.next1811.14.i = add nsw i64 %indvars.iv1814.i, -15 ; 2 uses
  %i.bvf = load i32, ptr %i.brs, align 4, !tbaa !40
  %i.bvg = sext i32 %i.bvf to i64
  %i.bvh = getelementptr inbounds i8, ptr %i.ai, i64 %i.bvg
  %i.bvi = load i8, ptr %i.bvh, align 1, !tbaa !34
  %i.bvj = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv.next1811.14.i
  store i8 %i.bvi, ptr %i.bvj, align 1, !tbaa !34
  %i.bvk = trunc nsw i64 %indvars.iv.next1811.14.i to i32
  %indvars.iv.next1815.i = add nsw i64 %indvars.iv1814.i, -16
  store i32 %i.bvk, ptr %i.brs, align 4, !tbaa !40
  %indvars.iv.next1817.i = add nsw i64 %indvars.iv1816.i, -1
  %.not2043.i = icmp eq i64 %indvars.iv1816.i, 0
  br i1 %.not2043.i, label %.loopexit1413.i, label %.preheader1411.i

.loopexit1413.i:                                  ; preds = %.preheader1411.i, %._crit_edge1590.i, %._crit_edge1602.i
  %.0939.i = phi i8 [ %i.blx, %._crit_edge1602.i ], [ %i.bqn, %._crit_edge1590.i ], [ %i.bqn, %.preheader1411.i ]
  %i.bvl = zext i8 %.0939.i to i64
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bvl
  %i.bvn = load i8, ptr %i.bvm, align 1, !tbaa !34 ; 3 uses
  %i.bvo = zext i8 %i.bvn to i64
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bvo ; 2 uses
  %i.bvq = load i32, ptr %i.bvp, align 4, !tbaa !40
  %i.bvr = add nsw i32 %i.bvq, 1
  store i32 %i.bvr, ptr %i.bvp, align 4, !tbaa !40
  %i.bvs = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1352.i = icmp eq i8 %i.bvs, 0
  %i.bvt = sext i32 %.31140.i to i64              ; 2 uses
  br i1 %.not1352.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.loopexit1413.i
  %i.bvu = zext i8 %i.bvn to i16
  %i.bvv = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.bvw = getelementptr inbounds [2 x i8], ptr %i.bvv, i64 %i.bvt
  store i16 %i.bvu, ptr %i.bvw, align 2, !tbaa !42
  br label %bb.fz

bb.fy:                                            ; preds = %.loopexit1413.i
  %i.bvx = zext i8 %i.bvn to i32
  %i.bvy = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bvz = getelementptr inbounds [4 x i8], ptr %i.bvy, i64 %i.bvt
  store i32 %i.bvx, ptr %i.bvz, align 4, !tbaa !40
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.bwa = add nsw i32 %.31140.i, 1               ; 2 uses
  %i.bwb = icmp eq i32 %.41105.i, 0
  br i1 %i.bwb, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.bwc = add nsw i32 %.41090.i, 1               ; 4 uses
  %.not1353.i = icmp slt i32 %i.bwc, %.121065.i
  br i1 %.not1353.i, label %bb.gb, label %BZ2_decompress.exit

bb.gb:                                            ; preds = %bb.ga
  %i.bwd = sext i32 %i.bwc to i64
  %i.bwe = getelementptr inbounds i8, ptr %i.ab, i64 %i.bwd
  %i.bwf = load i8, ptr %i.bwe, align 1, !tbaa !34 ; 2 uses
  %i.bwg = zext i8 %i.bwf to i32
  %i.bwh = zext i8 %i.bwf to i64                  ; 4 uses
  %i.bwi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bwh
  %i.bwj = load i32, ptr %i.bwi, align 4, !tbaa !40
  %i.bwk = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bwh
  %i.bwl = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bwh
  %i.bwm = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bwh
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.101235.i = phi i32 [ %i.bwg, %bb.gb ], [ %.41229.i, %bb.fz ]
  %.101220.i = phi i32 [ %i.bwj, %bb.gb ], [ %.41214.i, %bb.fz ] ; 2 uses
  %.101205.i = phi ptr [ %i.bwk, %bb.gb ], [ %.41199.i, %bb.fz ]
  %.101190.i = phi ptr [ %i.bwm, %bb.gb ], [ %.41184.i, %bb.fz ]
  %.101175.i = phi ptr [ %i.bwl, %bb.gb ], [ %.41169.i, %bb.fz ]
  %.101111.i = phi i32 [ 50, %bb.gb ], [ %.41105.i, %bb.fz ]
  %.101096.i = phi i32 [ %i.bwc, %bb.gb ], [ %.41090.i, %bb.fz ]
  %i.bwn = add nsw i32 %.101111.i, -1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.aq
  %i.bwo = phi i32 [ %i.bhe, %bb.gc ], [ %.pre1915.i.a, %bb.aq ] ; 3 uses
  %.51298.i = phi i32 [ %.01293.i, %bb.gc ], [ %.pre1911.i.a, %bb.aq ] ; 3 uses
  %.151289.i = phi i32 [ %.101284.i, %bb.gc ], [ %.pre1913.i, %bb.aq ] ; 3 uses
  %.81270.i = phi i32 [ %.101220.i, %bb.gc ], [ %.pre1917.i.a, %bb.aq ] ; 7 uses
  %.71258.i = phi i32 [ %.21253.i, %bb.gc ], [ %.pre1919.i, %bb.aq ] ; 2 uses
  %.71247.i = phi i32 [ %.21242.i, %bb.gc ], [ %.pre1921.i, %bb.aq ] ; 3 uses
  %.111236.i = phi i32 [ %.101235.i, %bb.gc ], [ %.pre1923.i.a, %bb.aq ] ; 3 uses
  %.111221.i = phi i32 [ %.101220.i, %bb.gc ], [ %.pre1925.i, %bb.aq ] ; 3 uses
  %.111206.i = phi ptr [ %.101205.i, %bb.gc ], [ %.pre1927.i, %bb.aq ] ; 3 uses
  %.111191.i = phi ptr [ %.101190.i, %bb.gc ], [ %.pre1929.i, %bb.aq ] ; 3 uses
  %.111176.i = phi ptr [ %.101175.i, %bb.gc ], [ %.pre1931.i, %bb.aq ] ; 3 uses
  %.91161.i = phi i32 [ %.01152.i, %bb.gc ], [ %.pre1909.i.a, %bb.aq ] ; 3 uses
  %.111148.i = phi i32 [ %i.bwa, %bb.gc ], [ %.pre1907.i, %bb.aq ] ; 3 uses
  %.81133.i = phi i32 [ %.31128.i, %bb.gc ], [ %.pre1905.i.a, %bb.aq ] ; 3 uses
  %.51121.i = phi i32 [ %.01116.i, %bb.gc ], [ %.pre1903.i.a, %bb.aq ] ; 3 uses
  %.111112.i = phi i32 [ %i.bwn, %bb.gc ], [ %.pre1901.i, %bb.aq ] ; 3 uses
  %.111097.i = phi i32 [ %.101096.i, %bb.gc ], [ %.pre1899.i.a, %bb.aq ] ; 3 uses
  %.81082.i = phi i32 [ %.31077.i, %bb.gc ], [ %.pre1897.i.a, %bb.aq ] ; 3 uses
  %.171070.i = phi i32 [ %.121065.i, %bb.gc ], [ %.pre1895.i, %bb.aq ] ; 3 uses
  %.181049.i = phi i32 [ %.131044.i, %bb.gc ], [ %.pre1893.i, %bb.aq ] ; 3 uses
  %.191025.i = phi i32 [ %.141020.i, %bb.gc ], [ %.pre1891.i, %bb.aq ] ; 3 uses
  %.151002.i = phi i32 [ %.10997.i, %bb.gc ], [ %.pre1889.i, %bb.aq ] ; 3 uses
  %.23981.i = phi i32 [ %.18976.i, %bb.gc ], [ %.pre1887.i, %bb.aq ] ; 3 uses
  %.29.i = phi i32 [ %.24.i, %bb.gc ], [ %.pre.i36, %bb.aq ] ; 3 uses
  store i32 40, ptr %i.g, align 8, !tbaa !19
  %.promoted1603.i = load i32, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20 ; 3 uses
  %.not13541604.i = icmp slt i32 %.promoted1603.i, %.81270.i
  br i1 %.not13541604.i, label %.lr.ph1606.i, label %.._crit_edge1607_crit_edge.i

.._crit_edge1607_crit_edge.i:                     ; preds = %bb.gd
  %.pre1965.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1607.i

.lr.ph1606.i:                                     ; preds = %bb.gd
  %i.bwp = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwp, i64 8 ; 2 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwp, i64 12 ; 2 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwp, i64 16 ; 2 uses
  %.promoted1610.i = load i32, ptr %i.bwq, align 8, !tbaa !75 ; 2 uses
  %i.bwt = icmp eq i32 %.promoted1610.i, 0
  br i1 %i.bwt, label %BZ2_decompress.exit, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %.lr.ph1606.i
  %.promoted841 = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted842 = load ptr, ptr %i.bwp, align 8, !tbaa !76
  %.promoted843 = load i32, ptr %i.bwr, align 4, !tbaa !23
  br label %.lr.ph472

._crit_edge1607.i:                                ; preds = %bb.gg, %.._crit_edge1607_crit_edge.i
  %i.bwu = phi i32 [ %.pre1965.i, %.._crit_edge1607_crit_edge.i ], [ %i.bxh, %bb.gg ]
  %.lcssa1476.i = phi i32 [ %.promoted1603.i, %.._crit_edge1607_crit_edge.i ], [ %i.bxi, %bb.gg ]
  %i.bwv = sub nsw i32 %.lcssa1476.i, %.81270.i   ; 3 uses
  %i.bww = lshr i32 %i.bwu, %i.bwv
  %notmask1355.i = shl nsw i32 -1, %.81270.i
  %i.bwx = xor i32 %notmask1355.i, -1
  %i.bwy = and i32 %i.bww, %i.bwx
  store i32 %i.bwv, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  br label %bb.gh

bb.ge:                                            ; preds = %bb.gg
  %i.bwz = icmp eq i32 %i.bxk, 0
  br i1 %i.bwz, label %BZ2_decompress.exit, label %.lr.ph472

.lr.ph472:                                        ; preds = %.lr.ph472.preheader, %bb.ge
  %i.bxa = phi i32 [ %i.bxl, %bb.ge ], [ %.promoted843, %.lr.ph472.preheader ]
  %i.bxb = phi ptr [ %i.bxj, %bb.ge ], [ %.promoted842, %.lr.ph472.preheader ] ; 2 uses
  %i.bxc = phi i32 [ %i.bxh, %bb.ge ], [ %.promoted841, %.lr.ph472.preheader ]
  %i.bxd = phi i32 [ %i.bxi, %bb.ge ], [ %.promoted1603.i, %.lr.ph472.preheader ]
  %3 = phi i32 [ %i.bxk, %bb.ge ], [ %.promoted1610.i, %.lr.ph472.preheader ]
  %i.bxe = shl i32 %i.bxc, 8
  %i.bxf = load i8, ptr %i.bxb, align 1, !tbaa !34
  %i.bxg = zext i8 %i.bxf to i32
  %i.bxh = or disjoint i32 %i.bxe, %i.bxg         ; 3 uses
  store i32 %i.bxh, ptr %i.v, align 8, !tbaa !21
  %i.bxi = add nsw i32 %i.bxd, 8                  ; 4 uses
  store i32 %i.bxi, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxb, i64 1 ; 2 uses
  store ptr %i.bxj, ptr %i.bwp, align 8, !tbaa !76
  %i.bxk = add i32 %3, -1                         ; 3 uses
  store i32 %i.bxk, ptr %i.bwq, align 8, !tbaa !75
  %i.bxl = add i32 %i.bxa, 1                      ; 3 uses
  store i32 %i.bxl, ptr %i.bwr, align 4, !tbaa !23
  %i.bxm = icmp eq i32 %i.bxl, 0
  br i1 %i.bxm, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %.lr.ph472
  %i.bxn = load i32, ptr %i.bws, align 8, !tbaa !24
  %i.bxo = add i32 %i.bxn, 1
  store i32 %i.bxo, ptr %i.bws, align 8, !tbaa !24
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.lr.ph472
  %.not1354.i = icmp slt i32 %i.bxi, %.81270.i
  br i1 %.not1354.i, label %bb.ge, label %._crit_edge1607.i

bb.gh:                                            ; preds = %._crit_edge1614.i, %._crit_edge1607.i
  %i.bxp = phi i32 [ %i.bwo, %._crit_edge1607.i ], [ %i.bxv, %._crit_edge1614.i ] ; 4 uses
  %.promoted16111969.i = phi i32 [ %i.bwv, %._crit_edge1607.i ], [ %i.byc, %._crit_edge1614.i ]
  %.61299.i = phi i32 [ %.51298.i, %._crit_edge1607.i ], [ %.71300.i, %._crit_edge1614.i ] ; 4 uses
  %.161290.i = phi i32 [ %.151289.i, %._crit_edge1607.i ], [ %.171291.i, %._crit_edge1614.i ] ; 4 uses
  %.91271.i = phi i32 [ %.81270.i, %._crit_edge1607.i ], [ %.101272.i, %._crit_edge1614.i ] ; 6 uses
  %.81259.i = phi i32 [ %i.bwy, %._crit_edge1607.i ], [ %i.byg, %._crit_edge1614.i ] ; 6 uses
  %.81248.i = phi i32 [ %.71247.i, %._crit_edge1607.i ], [ %i.bye, %._crit_edge1614.i ] ; 4 uses
  %.121237.i = phi i32 [ %.111236.i, %._crit_edge1607.i ], [ %.131238.i, %._crit_edge1614.i ] ; 4 uses
  %.121222.i = phi i32 [ %.111221.i, %._crit_edge1607.i ], [ %.131223.i, %._crit_edge1614.i ] ; 4 uses
  %.121207.i = phi ptr [ %.111206.i, %._crit_edge1607.i ], [ %.131208.i, %._crit_edge1614.i ] ; 5 uses
  %.121192.i = phi ptr [ %.111191.i, %._crit_edge1607.i ], [ %.131193.i, %._crit_edge1614.i ] ; 5 uses
  %.121177.i = phi ptr [ %.111176.i, %._crit_edge1607.i ], [ %.131178.i, %._crit_edge1614.i ] ; 5 uses
  %.101162.i = phi i32 [ %.91161.i, %._crit_edge1607.i ], [ %.111163.i, %._crit_edge1614.i ] ; 4 uses
  %.121149.i = phi i32 [ %.111148.i, %._crit_edge1607.i ], [ %.131150.i, %._crit_edge1614.i ] ; 4 uses
  %.91134.i = phi i32 [ %.81133.i, %._crit_edge1607.i ], [ %.101135.i, %._crit_edge1614.i ] ; 4 uses
  %.61122.i = phi i32 [ %.51121.i, %._crit_edge1607.i ], [ %.71123.i, %._crit_edge1614.i ] ; 3 uses
  %.121113.i = phi i32 [ %.111112.i, %._crit_edge1607.i ], [ %.131114.i, %._crit_edge1614.i ] ; 4 uses
  %.121098.i = phi i32 [ %.111097.i, %._crit_edge1607.i ], [ %.131099.i, %._crit_edge1614.i ] ; 4 uses
  %.91083.i = phi i32 [ %.81082.i, %._crit_edge1607.i ], [ %.101084.i, %._crit_edge1614.i ] ; 4 uses
  %.181071.i = phi i32 [ %.171070.i, %._crit_edge1607.i ], [ %.191072.i, %._crit_edge1614.i ] ; 4 uses
  %.191050.i = phi i32 [ %.181049.i, %._crit_edge1607.i ], [ %.201051.i, %._crit_edge1614.i ] ; 4 uses
  %.201026.i = phi i32 [ %.191025.i, %._crit_edge1607.i ], [ %.211027.i, %._crit_edge1614.i ] ; 4 uses
  %.161003.i = phi i32 [ %.151002.i, %._crit_edge1607.i ], [ %.171004.i, %._crit_edge1614.i ] ; 4 uses
  %.24982.i = phi i32 [ %.23981.i, %._crit_edge1607.i ], [ %.25983.i, %._crit_edge1614.i ] ; 4 uses
  %.30.i = phi i32 [ %.29.i, %._crit_edge1607.i ], [ %.31.i, %._crit_edge1614.i ] ; 4 uses
  %i.bxq = icmp sgt i32 %.91271.i, 20
  br i1 %i.bxq, label %BZ2_decompress.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.bxr = sext i32 %.91271.i to i64              ; 2 uses
  %i.bxs = getelementptr inbounds [4 x i8], ptr %.121207.i, i64 %i.bxr
  %i.bxt = load i32, ptr %i.bxs, align 4, !tbaa !40
  %.not1356.i = icmp sgt i32 %.81259.i, %i.bxt
  br i1 %.not1356.i, label %bb.gj, label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  %i.bxu = add nsw i32 %.91271.i, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %._crit_edge1966.i
  %i.bxv = phi i32 [ %i.bxp, %bb.gj ], [ %.pre1915.i.a, %._crit_edge1966.i ] ; 2 uses
  %.promoted1611.i = phi i32 [ %.promoted16111969.i, %bb.gj ], [ %.promoted1611.pre.i, %._crit_edge1966.i ] ; 3 uses
  %.71300.i = phi i32 [ %.61299.i, %bb.gj ], [ %.pre1911.i.a, %._crit_edge1966.i ] ; 2 uses
  %.171291.i = phi i32 [ %.161290.i, %bb.gj ], [ %.pre1913.i, %._crit_edge1966.i ] ; 2 uses
  %.101272.i = phi i32 [ %i.bxu, %bb.gj ], [ %.pre1917.i.a, %._crit_edge1966.i ] ; 2 uses
  %.91260.i = phi i32 [ %.81259.i, %bb.gj ], [ %.pre1919.i, %._crit_edge1966.i ] ; 2 uses
  %.91249.i = phi i32 [ %.81248.i, %bb.gj ], [ %.pre1921.i, %._crit_edge1966.i ]
  %.131238.i = phi i32 [ %.121237.i, %bb.gj ], [ %.pre1923.i.a, %._crit_edge1966.i ] ; 2 uses
  %.131223.i = phi i32 [ %.121222.i, %bb.gj ], [ %.pre1925.i, %._crit_edge1966.i ] ; 2 uses
  %.131208.i = phi ptr [ %.121207.i, %bb.gj ], [ %.pre1927.i, %._crit_edge1966.i ] ; 2 uses
  %.131193.i = phi ptr [ %.121192.i, %bb.gj ], [ %.pre1929.i, %._crit_edge1966.i ] ; 2 uses
  %.131178.i = phi ptr [ %.121177.i, %bb.gj ], [ %.pre1931.i, %._crit_edge1966.i ] ; 2 uses
  %.111163.i = phi i32 [ %.101162.i, %bb.gj ], [ %.pre1909.i.a, %._crit_edge1966.i ] ; 2 uses
  %.131150.i = phi i32 [ %.121149.i, %bb.gj ], [ %.pre1907.i, %._crit_edge1966.i ] ; 2 uses
  %.101135.i = phi i32 [ %.91134.i, %bb.gj ], [ %.pre1905.i.a, %._crit_edge1966.i ] ; 2 uses
  %.71123.i = phi i32 [ %.61122.i, %bb.gj ], [ %.pre1903.i.a, %._crit_edge1966.i ] ; 2 uses
  %.131114.i = phi i32 [ %.121113.i, %bb.gj ], [ %.pre1901.i, %._crit_edge1966.i ] ; 2 uses
  %.131099.i = phi i32 [ %.121098.i, %bb.gj ], [ %.pre1899.i.a, %._crit_edge1966.i ] ; 2 uses
  %.101084.i = phi i32 [ %.91083.i, %bb.gj ], [ %.pre1897.i.a, %._crit_edge1966.i ] ; 2 uses
  %.191072.i = phi i32 [ %.181071.i, %bb.gj ], [ %.pre1895.i, %._crit_edge1966.i ] ; 2 uses
  %.201051.i = phi i32 [ %.191050.i, %bb.gj ], [ %.pre1893.i, %._crit_edge1966.i ] ; 2 uses
  %.211027.i = phi i32 [ %.201026.i, %bb.gj ], [ %.pre1891.i, %._crit_edge1966.i ] ; 2 uses
  %.171004.i = phi i32 [ %.161003.i, %bb.gj ], [ %.pre1889.i, %._crit_edge1966.i ] ; 2 uses
  %.25983.i = phi i32 [ %.24982.i, %bb.gj ], [ %.pre1887.i, %._crit_edge1966.i ] ; 2 uses
  %.31.i = phi i32 [ %.30.i, %bb.gj ], [ %.pre.i36, %._crit_edge1966.i ] ; 2 uses
  store i32 41, ptr %i.g, align 8, !tbaa !19
  %i.bxw = icmp sgt i32 %.promoted1611.i, 0
  br i1 %i.bxw, label %.._crit_edge1614_crit_edge.i, label %.lr.ph1613.i

.._crit_edge1614_crit_edge.i:                     ; preds = %bb.gk
  %.pre1971.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1614.i

.lr.ph1613.i:                                     ; preds = %bb.gk
  %i.bxx = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 8 ; 2 uses
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxx, i64 12 ; 2 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxx, i64 16 ; 2 uses
  %.promoted1617.i = load i32, ptr %i.bxy, align 8, !tbaa !75
  br label %bb.gl

._crit_edge1614.i:                                ; preds = %bb.go, %.._crit_edge1614_crit_edge.i
  %i.byb = phi i32 [ %.pre1971.i, %.._crit_edge1614_crit_edge.i ], [ %i.byp, %bb.go ]
  %.lcssa1472.i = phi i32 [ %.promoted1611.i, %.._crit_edge1614_crit_edge.i ], [ %i.byq, %bb.go ]
  %i.byc = add nsw i32 %.lcssa1472.i, -1          ; 3 uses
  %i.byd = lshr i32 %i.byb, %i.byc
  %i.bye = and i32 %i.byd, 1                      ; 2 uses
  store i32 %i.byc, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.byf = shl i32 %.91260.i, 1
  %i.byg = or disjoint i32 %i.bye, %i.byf
  br label %bb.gh

bb.gl:                                            ; preds = %bb.go, %.lr.ph1613.i
  %i.byh = phi i32 [ %.promoted1617.i, %.lr.ph1613.i ], [ %i.bys, %bb.go ] ; 2 uses
  %i.byi = phi i32 [ %.promoted1611.i, %.lr.ph1613.i ], [ %i.byq, %bb.go ] ; 2 uses
  %i.byj = icmp eq i32 %i.byh, 0
  br i1 %i.byj, label %BZ2_decompress.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.byk = load i32, ptr %i.v, align 8, !tbaa !21
  %i.byl = shl i32 %i.byk, 8
  %i.bym = load ptr, ptr %i.bxx, align 8, !tbaa !76 ; 2 uses
  %i.byn = load i8, ptr %i.bym, align 1, !tbaa !34
  %i.byo = zext i8 %i.byn to i32
  %i.byp = or disjoint i32 %i.byl, %i.byo         ; 2 uses
  store i32 %i.byp, ptr %i.v, align 8, !tbaa !21
  %i.byq = add nsw i32 %i.byi, 8                  ; 3 uses
  store i32 %i.byq, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bym, i64 1
  store ptr %i.byr, ptr %i.bxx, align 8, !tbaa !76
  %i.bys = add i32 %i.byh, -1                     ; 2 uses
  store i32 %i.bys, ptr %i.bxy, align 8, !tbaa !75
  %i.byt = load i32, ptr %i.bxz, align 4, !tbaa !23
  %i.byu = add i32 %i.byt, 1                      ; 2 uses
  store i32 %i.byu, ptr %i.bxz, align 4, !tbaa !23
  %i.byv = icmp eq i32 %i.byu, 0
  br i1 %i.byv, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.byw = load i32, ptr %i.bya, align 8, !tbaa !24
  %i.byx = add i32 %i.byw, 1
  store i32 %i.byx, ptr %i.bya, align 8, !tbaa !24
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.byy = icmp sgt i32 %i.byi, -8
  br i1 %i.byy, label %._crit_edge1614.i, label %bb.gl

bb.gp:                                            ; preds = %bb.gi
  %i.byz = getelementptr inbounds [4 x i8], ptr %.121192.i, i64 %i.bxr
  %i.bza = load i32, ptr %i.byz, align 4, !tbaa !40
  %i.bzb = sub nsw i32 %.81259.i, %i.bza          ; 2 uses
  %or.cond1376.i = icmp ugt i32 %i.bzb, 257
  br i1 %or.cond1376.i, label %BZ2_decompress.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.bzc = zext nneg i32 %i.bzb to i64
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %.121177.i, i64 %i.bzc
  %i.bze = load i32, ptr %i.bzd, align 4, !tbaa !40
  br label %.loopexit1402.i

bb.gr:                                            ; preds = %.loopexit1402.i
  %i.bzf = load i32, ptr %i.w, align 8, !tbaa !77 ; 2 uses
  %i.bzg = icmp sgt i32 %i.bzf, -1
  %.not1364.i = icmp slt i32 %i.bzf, %.31140.i
  %or.cond1377.i = select i1 %i.bzg, i1 %.not1364.i, i1 false
  br i1 %or.cond1377.i, label %.preheader1398.i, label %BZ2_decompress.exit

.preheader1398.i:                                 ; preds = %bb.gr, %bb.gs
  %indvars.iv1843.i = phi i64 [ %indvars.iv.next1844.i.3, %bb.gs ], [ 0, %bb.gr ] ; 6 uses
  %i.bzh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1843.i
  %i.bzi = load i32, ptr %i.bzh, align 4, !tbaa !40 ; 2 uses
  %i.bzj = icmp slt i32 %i.bzi, 0
  %i.bzk = icmp sgt i32 %i.bzi, %.31140.i
  %or.cond1378.i = select i1 %i.bzj, i1 true, i1 %i.bzk
  br i1 %or.cond1378.i, label %.loopexit.loopexit1715.i, label %.preheader1398.i.1

.preheader1398.i.1:                               ; preds = %.preheader1398.i
  %indvars.iv.next1844.i = or disjoint i64 %indvars.iv1843.i, 1 ; 2 uses
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next1844.i
  %i.bzm = load i32, ptr %i.bzl, align 4, !tbaa !40 ; 2 uses
  %i.bzn = icmp slt i32 %i.bzm, 0
  %i.bzo = icmp sgt i32 %i.bzm, %.31140.i
  %or.cond1378.i.1 = select i1 %i.bzn, i1 true, i1 %i.bzo
  br i1 %or.cond1378.i.1, label %.loopexit.loopexit1715.i, label %.preheader1398.i.2

.preheader1398.i.2:                               ; preds = %.preheader1398.i.1
  %indvars.iv.next1844.i.1 = or disjoint i64 %indvars.iv1843.i, 2 ; 2 uses
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next1844.i.1
  %i.bzq = load i32, ptr %i.bzp, align 4, !tbaa !40 ; 2 uses
  %i.bzr = icmp slt i32 %i.bzq, 0
  %i.bzs = icmp sgt i32 %i.bzq, %.31140.i
  %or.cond1378.i.2 = select i1 %i.bzr, i1 true, i1 %i.bzs
  br i1 %or.cond1378.i.2, label %.loopexit.loopexit1715.i, label %.preheader1398.i.3

.preheader1398.i.3:                               ; preds = %.preheader1398.i.2
  %indvars.iv.next1844.i.2 = or disjoint i64 %indvars.iv1843.i, 3 ; 2 uses
  %i.bzt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next1844.i.2
  %i.bzu = load i32, ptr %i.bzt, align 4, !tbaa !40 ; 2 uses
  %i.bzv = icmp slt i32 %i.bzu, 0
  %i.bzw = icmp sgt i32 %i.bzu, %.31140.i
  %or.cond1378.i.3 = select i1 %i.bzv, i1 true, i1 %i.bzw
  br i1 %or.cond1378.i.3, label %.loopexit.loopexit1715.i, label %bb.gs
end_hunk_2
begin_hunk_3_@nsis_BZ2_bzDecompress:bb.a
  %i.cob = icmp eq i32 %i.coa, 0
  %i.coc = load i8, ptr %i.cnq, align 1, !tbaa !34 ; 2 uses
  br i1 %i.cob, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.cod = and i8 %i.coc, -16
  %i.coe = lshr i32 %.39.i, 16
  %i.cof = trunc i32 %i.coe to i8
  %i.cog = or i8 %i.cod, %i.cof
  br label %bb.he

bb.hd:                                            ; preds = %bb.hb
  %i.coh = and i8 %i.coc, 15
  %i.coi = lshr i32 %.39.i, 12
  %i.coj = trunc i32 %i.coi to i8
  %i.cok = and i8 %i.coj, -16
  %i.col = or disjoint i8 %i.coh, %i.cok
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %storemerge.i = phi i8 [ %i.col, %bb.hd ], [ %i.cog, %bb.hc ]
  store i8 %storemerge.i, ptr %i.cnq, align 1, !tbaa !34
  %i.com = load i32, ptr %i.w, align 8, !tbaa !77
  %.not1367.i = icmp eq i32 %.26984.i, %i.com
  br i1 %.not1367.i, label %bb.hf, label %bb.hb

bb.hf:                                            ; preds = %bb.he
  store i32 %.26984.i, ptr %i.n, align 4, !tbaa !38
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.con = load i32, ptr %i.o, align 8, !tbaa !39
  %i.coo = mul i32 %i.con, 100000
  %.not1368.i = icmp ult i32 %.26984.i, %i.coo
  br i1 %.not1368.i, label %.preheader1390.i, label %BZ2_decompress.exit.thread

.preheader1390.i:                                 ; preds = %bb.hf, %.preheader1390.i
  %.09.i.i39 = phi i32 [ %.09..i.i41, %.preheader1390.i ], [ 0, %bb.hf ] ; 2 uses
  %.0.i.i40 = phi i32 [ %..0.i.i42, %.preheader1390.i ], [ 256, %bb.hf ] ; 2 uses
  %i.cop = add nsw i32 %.0.i.i40, %.09.i.i39
  %i.coq = ashr i32 %i.cop, 1                     ; 3 uses
  %i.cor = sext i32 %i.coq to i64
  %i.cos = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cor
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !40
  %.not.i1383.i = icmp slt i32 %.26984.i, %i.cot  ; 2 uses
  %.09..i.i41 = select i1 %.not.i1383.i, i32 %.09.i.i39, i32 %i.coq ; 3 uses
  %..0.i.i42 = select i1 %.not.i1383.i, i32 %i.coq, i32 %.0.i.i40 ; 2 uses
  %i.cou = sub nsw i32 %..0.i.i42, %.09..i.i41
  %.not11.i.i43 = icmp eq i32 %i.cou, 1
  br i1 %.not11.i.i43, label %indexIntoF.exit.i44, label %.preheader1390.i

indexIntoF.exit.i44:                              ; preds = %.preheader1390.i
  store i32 %.09..i.i41, ptr %i.m, align 8, !tbaa !37
  %i.cov = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.cow = getelementptr inbounds nuw [2 x i8], ptr %i.cov, i64 %i.cnj
  %i.cox = load i16, ptr %i.cow, align 2, !tbaa !42
  %i.coy = zext i16 %i.cox to i32
  %i.coz = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 %i.cnp
  %i.cpb = load i8, ptr %i.cpa, align 1, !tbaa !34
  %i.cpc = zext i8 %i.cpb to i32
  %i.cpd = lshr i32 %i.cpc, %i.cnu
  %i.cpe = shl nuw nsw i32 %i.cpd, 16
  %i.cpf = and i32 %i.cpe, 983040
  %i.cpg = or disjoint i32 %i.cpf, %i.coy
  store i32 %i.cpg, ptr %i.n, align 4, !tbaa !38
  store i32 1, ptr %i.k, align 4, !tbaa !35
  br label %BZ2_decompress.exit

bb.hg:                                            ; preds = %bb.hg, %.preheader.i45.new
  %indvars.iv1879.i = phi i64 [ 0, %.preheader.i45.new ], [ %indvars.iv.next1880.i.1, %bb.hg ] ; 4 uses
  %niter751 = phi i64 [ 0, %.preheader.i45.new ], [ %niter751.next.1, %bb.hg ]
  %i.cph = getelementptr inbounds nuw [4 x i8], ptr %i.clo, i64 %indvars.iv1879.i
  %i.cpi = load i32, ptr %i.cph, align 4, !tbaa !40
  %i.cpj = trunc nuw nsw i64 %indvars.iv1879.i to i32
  %i.cpk = shl i32 %i.cpj, 8
  %i.cpl = and i32 %i.cpi, 255
  %i.cpm = zext nneg i32 %i.cpl to i64
  %i.cpn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cpm ; 3 uses
  %i.cpo = load i32, ptr %i.cpn, align 4, !tbaa !40
  %i.cpp = sext i32 %i.cpo to i64
  %i.cpq = getelementptr inbounds [4 x i8], ptr %i.clo, i64 %i.cpp ; 2 uses
  %i.cpr = load i32, ptr %i.cpq, align 4, !tbaa !40
  %i.cps = or i32 %i.cpr, %i.cpk
  store i32 %i.cps, ptr %i.cpq, align 4, !tbaa !40
  %i.cpt = load i32, ptr %i.cpn, align 4, !tbaa !40
  %i.cpu = add nsw i32 %i.cpt, 1
  store i32 %i.cpu, ptr %i.cpn, align 4, !tbaa !40
  %indvars.iv.next1880.i = or disjoint i64 %indvars.iv1879.i, 1 ; 2 uses
  %i.cpv = getelementptr inbounds nuw [4 x i8], ptr %i.clo, i64 %indvars.iv.next1880.i
  %i.cpw = load i32, ptr %i.cpv, align 4, !tbaa !40
  %i.cpx = trunc nuw nsw i64 %indvars.iv.next1880.i to i32
  %i.cpy = shl i32 %i.cpx, 8
  %i.cpz = and i32 %i.cpw, 255
  %i.cqa = zext nneg i32 %i.cpz to i64
  %i.cqb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cqa ; 3 uses
  %i.cqc = load i32, ptr %i.cqb, align 4, !tbaa !40
  %i.cqd = sext i32 %i.cqc to i64
  %i.cqe = getelementptr inbounds [4 x i8], ptr %i.clo, i64 %i.cqd ; 2 uses
  %i.cqf = load i32, ptr %i.cqe, align 4, !tbaa !40
  %i.cqg = or i32 %i.cqf, %i.cpy
  store i32 %i.cqg, ptr %i.cqe, align 4, !tbaa !40
  %i.cqh = load i32, ptr %i.cqb, align 4, !tbaa !40
  %i.cqi = add nsw i32 %i.cqh, 1
  store i32 %i.cqi, ptr %i.cqb, align 4, !tbaa !40
  %indvars.iv.next1880.i.1 = add nuw nsw i64 %indvars.iv1879.i, 2 ; 2 uses
  %niter751.next.1 = add i64 %niter751, 2         ; 2 uses
  %niter751.ncmp.1 = icmp eq i64 %niter751.next.1, %unroll_iter750
  br i1 %niter751.ncmp.1, label %._crit_edge1654.i.unr-lcssa, label %bb.hg

._crit_edge1654.i.unr-lcssa:                      ; preds = %bb.hg
  %lcmp.mod748.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod748.not, label %._crit_edge1654.i, label %.epil.preheader745

.epil.preheader745:                               ; preds = %._crit_edge1654.i.unr-lcssa, %.preheader.i45
  %indvars.iv1879.i.epil.init = phi i64 [ 0, %.preheader.i45 ], [ %indvars.iv.next1880.i.1, %._crit_edge1654.i.unr-lcssa ] ; 2 uses
  %lcmp.mod749 = trunc i32 %.31140.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod749)
  %i.cqj = getelementptr inbounds nuw [4 x i8], ptr %i.clo, i64 %indvars.iv1879.i.epil.init
  %i.cqk = load i32, ptr %i.cqj, align 4, !tbaa !40
  %i.cql = trunc nuw nsw i64 %indvars.iv1879.i.epil.init to i32
  %i.cqm = shl i32 %i.cql, 8
  %i.cqn = and i32 %i.cqk, 255
  %i.cqo = zext nneg i32 %i.cqn to i64
  %i.cqp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cqo ; 3 uses
  %i.cqq = load i32, ptr %i.cqp, align 4, !tbaa !40
  %i.cqr = sext i32 %i.cqq to i64
  %i.cqs = getelementptr inbounds [4 x i8], ptr %i.clo, i64 %i.cqr ; 2 uses
  %i.cqt = load i32, ptr %i.cqs, align 4, !tbaa !40
  %i.cqu = or i32 %i.cqt, %i.cqm
  store i32 %i.cqu, ptr %i.cqs, align 4, !tbaa !40
  %i.cqv = load i32, ptr %i.cqp, align 4, !tbaa !40
  %i.cqw = add nsw i32 %i.cqv, 1
  store i32 %i.cqw, ptr %i.cqp, align 4, !tbaa !40
  br label %._crit_edge1654.i

._crit_edge1654.i:                                ; preds = %._crit_edge1654.i.unr-lcssa, %.epil.preheader745
  %i.cqx = load i32, ptr %i.w, align 8, !tbaa !77
  %i.cqy = sext i32 %i.cqx to i64
  %i.cqz = getelementptr inbounds [4 x i8], ptr %i.clo, i64 %i.cqy
  %i.cra = load i32, ptr %i.cqz, align 4, !tbaa !40
  %i.crb = lshr i32 %i.cra, 8                     ; 3 uses
  store i32 %i.crb, ptr %i.n, align 4, !tbaa !38
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.crc = load i32, ptr %i.o, align 8, !tbaa !39
  %i.crd = mul i32 %i.crc, 100000
  %.not1366.i = icmp ult i32 %i.crb, %i.crd
  br i1 %.not1366.i, label %bb.hh, label %BZ2_decompress.exit.thread

bb.hh:                                            ; preds = %._crit_edge1654.i
  %i.cre = zext nneg i32 %i.crb to i64
  %i.crf = getelementptr inbounds nuw [4 x i8], ptr %i.clo, i64 %i.cre
  %i.crg = load i32, ptr %i.crf, align 4, !tbaa !40 ; 2 uses
  %i.crh = and i32 %i.crg, 255
  store i32 %i.crh, ptr %i.m, align 8, !tbaa !37
  %i.cri = lshr i32 %i.crg, 8
  store i32 %i.cri, ptr %i.n, align 4, !tbaa !38
  store i32 1, ptr %i.k, align 4, !tbaa !35
  br label %BZ2_decompress.exit

bb.hi:                                            ; preds = %._crit_edge.i
  store i32 1, ptr %i.g, align 8, !tbaa !19
  br label %BZ2_decompress.exit

.loopexit.loopexit1713.i:                         ; preds = %.preheader1393.i.3, %.preheader1393.i.2, %.preheader1393.i.1, %.preheader1393.i
  %indvars.iv1863.i.lcssa = phi i64 [ %indvars.iv1863.i, %.preheader1393.i ], [ %indvars.iv.next1864.i, %.preheader1393.i.1 ], [ %indvars.iv.next1864.i.1, %.preheader1393.i.2 ], [ %indvars.iv.next1864.i.2, %.preheader1393.i.3 ]
  %i.crj = trunc nuw nsw i64 %indvars.iv1863.i.lcssa to i32
  br label %BZ2_decompress.exit

.loopexit.loopexit1714.i:                         ; preds = %.preheader1395.i.3, %.preheader1395.i.2, %.preheader1395.i.1, %.preheader1395.i
  %indvars.iv1858.i.lcssa = phi i64 [ %indvars.iv1858.i, %.preheader1395.i ], [ %indvars.iv.next1859.i, %.preheader1395.i.1 ], [ %indvars.iv.next1859.i.1, %.preheader1395.i.2 ], [ %indvars.iv.next1859.i.2, %.preheader1395.i.3 ]
  %i.crk = trunc nuw nsw i64 %indvars.iv1858.i.lcssa to i32
  br label %BZ2_decompress.exit

.loopexit.loopexit1715.i:                         ; preds = %.preheader1398.i.3, %.preheader1398.i.2, %.preheader1398.i.1, %.preheader1398.i
  %indvars.iv1843.i.lcssa = phi i64 [ %indvars.iv1843.i, %.preheader1398.i ], [ %indvars.iv.next1844.i, %.preheader1398.i.1 ], [ %indvars.iv.next1844.i.1, %.preheader1398.i.2 ], [ %indvars.iv.next1844.i.2, %.preheader1398.i.3 ]
  %i.crl = trunc nuw nsw i64 %indvars.iv1843.i.lcssa to i32
  br label %BZ2_decompress.exit

BZ2_decompress.exit:                              ; preds = %bb.au, %bb.ba, %bb.bf, %bb.bk, %bb.cn, %bb.cs, %bb.eh, %bb.eo, %bb.di, %bb.dp, %bb.du, %bb.dc, %bb.cy, %bb.by, %bb.br, %bb.gl, %bb.ge, %bb.fb, %bb.fp, %bb.fr, %bb.fi, %.lr.ph1577.i, %.lr.ph1606.i, %.lr.ph1621.i, %bb.aq, %bb.ar, %bb.as, %._crit_edge.i, %._crit_edge1528.i.a, %bb.bo, %makeMaps_d.exit.i, %._crit_edge1536.i, %._crit_edge1543.i.a, %bb.dn, %._crit_edge1567.i, %bb.ek, %bb.es, %bb.ev, %bb.ex, %bb.fe, %bb.fm, %bb.ft, %bb.ga, %bb.gh, %bb.gp, %bb.gr, %indexIntoF.exit.i44, %bb.hh, %bb.hi, %.loopexit.loopexit1713.i, %.loopexit.loopexit1714.i, %.loopexit.loopexit1715.i
  %i.crm = phi i32 [ %i.bhe, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lp, %bb.hi ], [ %i.pp, %bb.bf ], [ %.ph645, %bb.dc ], [ %i.rr, %._crit_edge1528.i.a ], [ %i.rr, %bb.bo ], [ %i.acj, %._crit_edge1536.i ], [ %i.nn, %bb.ba ], [ %.ph645, %bb.cy ], [ %i.uv, %bb.br ], [ %i.bhx, %.lr.ph1621.i ], [ %i.aee, %._crit_edge1543.i.a ], [ %i.aro, %bb.dp ], [ %i.ath, %bb.du ], [ %i.aqw, %bb.dn ], [ %i.ys, %bb.by ], [ %i.bje, %bb.fi ], [ %i.bxv, %bb.gl ], [ %i.bef, %.lr.ph1577.i ], [ %i.bxp, %bb.gp ], [ %i.bhe, %bb.gr ], [ %i.aee, %bb.cs ], [ %i.bef, %bb.eh ], [ %i.bfu, %bb.eo ], [ %i.bfl, %bb.es ], [ %i.bhg, %bb.ev ], [ %i.bwo, %.lr.ph1606.i ], [ %i.bhe, %.loopexit.loopexit1713.i ], [ %i.biy, %bb.fm ], [ %i.bhe, %.loopexit.loopexit1715.i ], [ %i.biy, %bb.fe ], [ %i.bhg, %bb.ex ], [ %i.bhe, %.loopexit.loopexit1714.i ], [ %i.bhe, %bb.ft ], [ %i.bwo, %bb.ge ], [ %i.bhx, %bb.fb ], [ %i.bxp, %bb.gh ], [ %i.bhe, %bb.ga ], [ %i.bfl, %bb.ek ], [ %i.anq, %._crit_edge1567.i ], [ %.pre1915.i.a, %bb.aq ], [ %i.wv, %makeMaps_d.exit.i ], [ %i.acj, %bb.cn ], [ %i.rr, %bb.bk ], [ %i.lp, %._crit_edge.i ], [ 0, %bb.as ], [ %i.bhe, %bb.hh ], [ %i.biy, %bb.fr ], [ %i.biy, %bb.fp ], [ %i.aom, %bb.di ], [ %i.lp, %bb.au ]
  %.81301.i = phi i32 [ %.01293.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.ln, %bb.hi ], [ %i.pn, %bb.bf ], [ %.ph643, %bb.dc ], [ %i.rp, %._crit_edge1528.i.a ], [ %i.rp, %bb.bo ], [ %i.ach, %._crit_edge1536.i ], [ %i.nl, %bb.ba ], [ %.ph643, %bb.cy ], [ %i.ut, %bb.br ], [ %.21295.i, %.lr.ph1621.i ], [ %i.aec, %._crit_edge1543.i.a ], [ %i.arn, %bb.dp ], [ %i.atg, %bb.du ], [ %i.aqv, %bb.dn ], [ %i.yq, %bb.by ], [ %.41297.i, %bb.fi ], [ %.71300.i, %bb.gl ], [ %i.bee, %.lr.ph1577.i ], [ %.61299.i, %bb.gp ], [ %.01293.i, %bb.gr ], [ %i.aec, %bb.cs ], [ %i.bee, %bb.eh ], [ %i.bft, %bb.eo ], [ %i.bfk, %bb.es ], [ %.11294.i, %bb.ev ], [ %.51298.i, %.lr.ph1606.i ], [ %.01293.i, %.loopexit.loopexit1713.i ], [ %.31296.i, %bb.fm ], [ %.01293.i, %.loopexit.loopexit1715.i ], [ %.31296.i, %bb.fe ], [ %i.bhj, %bb.ex ], [ %.01293.i, %.loopexit.loopexit1714.i ], [ %.01293.i, %bb.ft ], [ %.51298.i, %bb.ge ], [ %.21295.i, %bb.fb ], [ %.61299.i, %bb.gh ], [ %.01293.i, %bb.ga ], [ %i.bfk, %bb.ek ], [ %i.anp, %._crit_edge1567.i ], [ %.pre1911.i.a, %bb.aq ], [ %i.wt, %makeMaps_d.exit.i ], [ %i.ach, %bb.cn ], [ %i.rp, %bb.bk ], [ %i.ln, %._crit_edge.i ], [ 0, %bb.as ], [ %.01293.i, %bb.hh ], [ %.31296.i, %bb.fr ], [ %.31296.i, %bb.fp ], [ %i.aol, %bb.di ], [ %i.ln, %bb.au ]
  %.181292.i = phi i32 [ %.101284.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lo, %bb.hi ], [ %i.po, %bb.bf ], [ %.ph644, %bb.dc ], [ %i.rq, %._crit_edge1528.i.a ], [ %i.rq, %bb.bo ], [ %i.aci, %._crit_edge1536.i ], [ %i.nm, %bb.ba ], [ %.ph644, %bb.cy ], [ %i.uu, %bb.br ], [ %.121286.i, %.lr.ph1621.i ], [ %i.aed, %._crit_edge1543.i.a ], [ %.41278.i, %bb.dp ], [ %.51279.i, %bb.du ], [ %.31277.i, %bb.dn ], [ %i.yr, %bb.by ], [ %.141288.i, %bb.fi ], [ %.171291.i, %bb.gl ], [ %.71281.i, %.lr.ph1577.i ], [ %.161290.i, %bb.gp ], [ %.101284.i, %bb.gr ], [ %i.aed, %bb.cs ], [ %.71281.i, %bb.eh ], [ %.91283.i, %bb.eo ], [ %.81282.i, %bb.es ], [ %.111285.i, %bb.ev ], [ %.151289.i, %.lr.ph1606.i ], [ %.101284.i, %.loopexit.loopexit1713.i ], [ %.131287.i, %bb.fm ], [ %.101284.i, %.loopexit.loopexit1715.i ], [ %.131287.i, %bb.fe ], [ %.111285.i, %bb.ex ], [ %.101284.i, %.loopexit.loopexit1714.i ], [ %.101284.i, %bb.ft ], [ %.151289.i, %bb.ge ], [ %.121286.i, %bb.fb ], [ %.161290.i, %bb.gh ], [ %.101284.i, %bb.ga ], [ %.81282.i, %bb.ek ], [ %.01274.i, %._crit_edge1567.i ], [ %.pre1913.i, %bb.aq ], [ %i.wu, %makeMaps_d.exit.i ], [ %i.aci, %bb.cn ], [ %i.rq, %bb.bk ], [ %i.lo, %._crit_edge.i ], [ 0, %bb.as ], [ %.101284.i, %bb.hh ], [ %.131287.i, %bb.fr ], [ %.131287.i, %bb.fp ], [ %.11275.i, %bb.di ], [ %i.lo, %bb.au ]
  %.111273.i = phi i32 [ %.31265.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lq, %bb.hi ], [ %i.pq, %bb.bf ], [ %.ph646, %bb.dc ], [ %i.rs, %._crit_edge1528.i.a ], [ %i.rs, %bb.bo ], [ %i.ack, %._crit_edge1536.i ], [ %i.no, %bb.ba ], [ %.ph646, %bb.cy ], [ %i.uw, %bb.br ], [ %.51267.i, %.lr.ph1621.i ], [ %i.aef, %._crit_edge1543.i.a ], [ %i.arp, %bb.dp ], [ %i.ati, %bb.du ], [ %i.aqx, %bb.dn ], [ %i.yt, %bb.by ], [ %.71269.i, %bb.fi ], [ %.101272.i, %bb.gl ], [ %.01262.i, %.lr.ph1577.i ], [ %.91271.i, %bb.gp ], [ %.31265.i, %bb.gr ], [ %i.aef, %bb.cs ], [ %.01262.i, %bb.eh ], [ %.21264.i, %bb.eo ], [ %.11263.i, %bb.es ], [ %.41266.i, %bb.ev ], [ %.81270.i, %.lr.ph1606.i ], [ %.31265.i, %.loopexit.loopexit1713.i ], [ %.61268.i, %bb.fm ], [ %.31265.i, %.loopexit.loopexit1715.i ], [ %.61268.i, %bb.fe ], [ %.41266.i, %bb.ex ], [ %.31265.i, %.loopexit.loopexit1714.i ], [ %.31265.i, %bb.ft ], [ %.81270.i, %bb.ge ], [ %.51267.i, %bb.fb ], [ %.91271.i, %bb.gh ], [ %.31265.i, %bb.ga ], [ %.11263.i, %bb.ek ], [ %i.anr, %._crit_edge1567.i ], [ %.pre1917.i.a, %bb.aq ], [ %i.ww, %makeMaps_d.exit.i ], [ %i.ack, %bb.cn ], [ %i.rs, %bb.bk ], [ %i.lq, %._crit_edge.i ], [ 0, %bb.as ], [ %.31265.i, %bb.hh ], [ %.61268.i, %bb.fr ], [ %.61268.i, %bb.fp ], [ %i.aon, %bb.di ], [ %i.lq, %bb.au ]
  %.101261.i = phi i32 [ %.21253.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lr, %bb.hi ], [ %i.pr, %bb.bf ], [ %.ph647, %bb.dc ], [ %i.rt, %._crit_edge1528.i.a ], [ %i.rt, %bb.bo ], [ %i.acl, %._crit_edge1536.i ], [ %i.np, %bb.ba ], [ %.ph647, %bb.cy ], [ %i.ux, %bb.br ], [ %.41255.i, %.lr.ph1621.i ], [ %i.aeg, %._crit_edge1543.i.a ], [ %i.arq, %bb.dp ], [ %i.atj, %bb.du ], [ %i.aqy, %bb.dn ], [ %i.yu, %bb.by ], [ %.61257.i, %bb.fi ], [ %.91260.i, %bb.gl ], [ %i.beg, %.lr.ph1577.i ], [ %.81259.i, %bb.gp ], [ %.21253.i, %bb.gr ], [ %i.aeg, %bb.cs ], [ %i.beg, %bb.eh ], [ %.11252.i, %bb.eo ], [ %.01251.i, %bb.es ], [ %.31254.i, %bb.ev ], [ %.71258.i, %.lr.ph1606.i ], [ %.21253.i, %.loopexit.loopexit1713.i ], [ %.51256.i, %bb.fm ], [ %.21253.i, %.loopexit.loopexit1715.i ], [ %.51256.i, %bb.fe ], [ %.31254.i, %bb.ex ], [ %.21253.i, %.loopexit.loopexit1714.i ], [ %.21253.i, %bb.ft ], [ %.71258.i, %bb.ge ], [ %.41255.i, %bb.fb ], [ %.81259.i, %bb.gh ], [ %.21253.i, %bb.ga ], [ %.01251.i, %bb.ek ], [ %i.ans, %._crit_edge1567.i ], [ %.pre1919.i, %bb.aq ], [ %i.wx, %makeMaps_d.exit.i ], [ %i.acl, %bb.cn ], [ %i.rt, %bb.bk ], [ %i.lr, %._crit_edge.i ], [ 0, %bb.as ], [ %.21253.i, %bb.hh ], [ %.51256.i, %bb.fr ], [ %.51256.i, %bb.fp ], [ %i.aoo, %bb.di ], [ %i.lr, %bb.au ]
  %.101250.i = phi i32 [ %.21242.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.ls, %bb.hi ], [ %i.ps, %bb.bf ], [ %.ph648, %bb.dc ], [ %i.ru, %._crit_edge1528.i.a ], [ %i.ru, %bb.bo ], [ %i.acm, %._crit_edge1536.i ], [ %i.nq, %bb.ba ], [ %.ph648, %bb.cy ], [ %i.uy, %bb.br ], [ %.41244.i, %.lr.ph1621.i ], [ %i.aeh, %._crit_edge1543.i.a ], [ %i.arr, %bb.dp ], [ %i.atk, %bb.du ], [ %i.aqz, %bb.dn ], [ %i.yv, %bb.by ], [ %.61246.i, %bb.fi ], [ %.91249.i, %bb.gl ], [ %i.beh, %.lr.ph1577.i ], [ %.81248.i, %bb.gp ], [ %.21242.i, %bb.gr ], [ %i.aeh, %bb.cs ], [ %i.beh, %bb.eh ], [ %.11241.i, %bb.eo ], [ %.01240.i, %bb.es ], [ %.31243.i, %bb.ev ], [ %.71247.i, %.lr.ph1606.i ], [ %.21242.i, %.loopexit.loopexit1713.i ], [ %.51245.i, %bb.fm ], [ %.21242.i, %.loopexit.loopexit1715.i ], [ %.51245.i, %bb.fe ], [ %.31243.i, %bb.ex ], [ %.21242.i, %.loopexit.loopexit1714.i ], [ %.21242.i, %bb.ft ], [ %.71247.i, %bb.ge ], [ %.41244.i, %bb.fb ], [ %.81248.i, %bb.gh ], [ %.21242.i, %bb.ga ], [ %.01240.i, %bb.ek ], [ %i.ant, %._crit_edge1567.i ], [ %.pre1921.i, %bb.aq ], [ %i.wy, %makeMaps_d.exit.i ], [ %i.acm, %bb.cn ], [ %i.ru, %bb.bk ], [ %i.ls, %._crit_edge.i ], [ 0, %bb.as ], [ %.21242.i, %bb.hh ], [ %.51245.i, %bb.fr ], [ %.51245.i, %bb.fp ], [ %i.aop, %bb.di ], [ %i.ls, %bb.au ]
  %.141239.i = phi i32 [ %.41229.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lt, %bb.hi ], [ %i.pt, %bb.bf ], [ %.ph649, %bb.dc ], [ %i.rv, %._crit_edge1528.i.a ], [ %i.rv, %bb.bo ], [ %i.acn, %._crit_edge1536.i ], [ %i.nr, %bb.ba ], [ %.ph649, %bb.cy ], [ %i.uz, %bb.br ], [ %.71232.i, %.lr.ph1621.i ], [ %i.aei, %._crit_edge1543.i.a ], [ %i.ars, %bb.dp ], [ %i.atl, %bb.du ], [ %i.ara, %bb.dn ], [ %i.yw, %bb.by ], [ %.91234.i, %bb.fi ], [ %.131238.i, %bb.gl ], [ %.11226.i, %.lr.ph1577.i ], [ %.121237.i, %bb.gp ], [ %.41229.i, %bb.gr ], [ %i.aei, %bb.cs ], [ %.11226.i, %bb.eh ], [ %.31228.i, %bb.eo ], [ %.21227.i, %bb.es ], [ %.51230.i, %bb.ev ], [ %.111236.i, %.lr.ph1606.i ], [ %.41229.i, %.loopexit.loopexit1713.i ], [ %.81233.i, %bb.fm ], [ %.41229.i, %.loopexit.loopexit1715.i ], [ %.81233.i, %bb.fe ], [ %.51230.i, %bb.ex ], [ %.41229.i, %.loopexit.loopexit1714.i ], [ %.41229.i, %bb.ft ], [ %.111236.i, %bb.ge ], [ %.71232.i, %bb.fb ], [ %.121237.i, %bb.gh ], [ %.41229.i, %bb.ga ], [ %.21227.i, %bb.ek ], [ %i.anu, %._crit_edge1567.i ], [ %.pre1923.i.a, %bb.aq ], [ %i.wz, %makeMaps_d.exit.i ], [ %i.acn, %bb.cn ], [ %i.rv, %bb.bk ], [ %i.lt, %._crit_edge.i ], [ 0, %bb.as ], [ %.41229.i, %bb.hh ], [ %.81233.i, %bb.fr ], [ %.81233.i, %bb.fp ], [ %i.aoq, %bb.di ], [ %i.lt, %bb.au ]
  %.141224.i = phi i32 [ %.41214.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lu, %bb.hi ], [ %i.pu, %bb.bf ], [ %.ph650, %bb.dc ], [ %i.rw, %._crit_edge1528.i.a ], [ %i.rw, %bb.bo ], [ %i.aco, %._crit_edge1536.i ], [ %i.ns, %bb.ba ], [ %.ph650, %bb.cy ], [ %i.va, %bb.br ], [ %.71217.i, %.lr.ph1621.i ], [ %i.aej, %._crit_edge1543.i.a ], [ %i.art, %bb.dp ], [ %i.atm, %bb.du ], [ %i.arb, %bb.dn ], [ %i.yx, %bb.by ], [ %.91219.i, %bb.fi ], [ %.131223.i, %bb.gl ], [ %.11211.i, %.lr.ph1577.i ], [ %.121222.i, %bb.gp ], [ %.41214.i, %bb.gr ], [ %i.aej, %bb.cs ], [ %.11211.i, %bb.eh ], [ %.31213.i, %bb.eo ], [ %.21212.i, %bb.es ], [ %.51215.i, %bb.ev ], [ %.111221.i, %.lr.ph1606.i ], [ %.41214.i, %.loopexit.loopexit1713.i ], [ %.81218.i, %bb.fm ], [ %.41214.i, %.loopexit.loopexit1715.i ], [ %.81218.i, %bb.fe ], [ %.51215.i, %bb.ex ], [ %.41214.i, %.loopexit.loopexit1714.i ], [ %.41214.i, %bb.ft ], [ %.111221.i, %bb.ge ], [ %.71217.i, %bb.fb ], [ %.121222.i, %bb.gh ], [ %.41214.i, %bb.ga ], [ %.21212.i, %bb.ek ], [ %i.anv, %._crit_edge1567.i ], [ %.pre1925.i, %bb.aq ], [ %i.xa, %makeMaps_d.exit.i ], [ %i.aco, %bb.cn ], [ %i.rw, %bb.bk ], [ %i.lu, %._crit_edge.i ], [ 0, %bb.as ], [ %.41214.i, %bb.hh ], [ %.81218.i, %bb.fr ], [ %.81218.i, %bb.fp ], [ %i.aor, %bb.di ], [ %i.lu, %bb.au ]
  %.141209.i = phi ptr [ %.41199.i, %indexIntoF.exit.i44 ], [ null, %bb.ar ], [ %i.lv, %bb.hi ], [ %i.pv, %bb.bf ], [ %.ph651, %bb.dc ], [ %i.rx, %._crit_edge1528.i.a ], [ %i.rx, %bb.bo ], [ %i.acp, %._crit_edge1536.i ], [ %i.nt, %bb.ba ], [ %.ph651, %bb.cy ], [ %i.vb, %bb.br ], [ %.71202.i, %.lr.ph1621.i ], [ %i.aek, %._crit_edge1543.i.a ], [ %i.aru, %bb.dp ], [ %i.atn, %bb.du ], [ %i.arc, %bb.dn ], [ %i.yy, %bb.by ], [ %.91204.i, %bb.fi ], [ %.131208.i, %bb.gl ], [ %.11196.i, %.lr.ph1577.i ], [ %.121207.i, %bb.gp ], [ %.41199.i, %bb.gr ], [ %i.aek, %bb.cs ], [ %.11196.i, %bb.eh ], [ %.31198.i, %bb.eo ], [ %.21197.i, %bb.es ], [ %.51200.i, %bb.ev ], [ %.111206.i, %.lr.ph1606.i ], [ %.41199.i, %.loopexit.loopexit1713.i ], [ %.81203.i, %bb.fm ], [ %.41199.i, %.loopexit.loopexit1715.i ], [ %.81203.i, %bb.fe ], [ %.51200.i, %bb.ex ], [ %.41199.i, %.loopexit.loopexit1714.i ], [ %.41199.i, %bb.ft ], [ %.111206.i, %bb.ge ], [ %.71202.i, %bb.fb ], [ %.121207.i, %bb.gh ], [ %.41199.i, %bb.ga ], [ %.21197.i, %bb.ek ], [ %i.anw, %._crit_edge1567.i ], [ %.pre1927.i, %bb.aq ], [ %i.xb, %makeMaps_d.exit.i ], [ %i.acp, %bb.cn ], [ %i.rx, %bb.bk ], [ %i.lv, %._crit_edge.i ], [ null, %bb.as ], [ %.41199.i, %bb.hh ], [ %.81203.i, %bb.fr ], [ %.81203.i, %bb.fp ], [ %i.aos, %bb.di ], [ %i.lv, %bb.au ]
  %.141194.i = phi ptr [ %.41184.i, %indexIntoF.exit.i44 ], [ null, %bb.ar ], [ %i.lw, %bb.hi ], [ %i.pw, %bb.bf ], [ %.ph652, %bb.dc ], [ %i.ry, %._crit_edge1528.i.a ], [ %i.ry, %bb.bo ], [ %i.acq, %._crit_edge1536.i ], [ %i.nu, %bb.ba ], [ %.ph652, %bb.cy ], [ %i.vc, %bb.br ], [ %.71187.i, %.lr.ph1621.i ], [ %i.ael, %._crit_edge1543.i.a ], [ %i.arv, %bb.dp ], [ %i.ato, %bb.du ], [ %i.ard, %bb.dn ], [ %i.yz, %bb.by ], [ %.91189.i, %bb.fi ], [ %.131193.i, %bb.gl ], [ %.11181.i, %.lr.ph1577.i ], [ %.121192.i, %bb.gp ], [ %.41184.i, %bb.gr ], [ %i.ael, %bb.cs ], [ %.11181.i, %bb.eh ], [ %.31183.i, %bb.eo ], [ %.21182.i, %bb.es ], [ %.51185.i, %bb.ev ], [ %.111191.i, %.lr.ph1606.i ], [ %.41184.i, %.loopexit.loopexit1713.i ], [ %.81188.i, %bb.fm ], [ %.41184.i, %.loopexit.loopexit1715.i ], [ %.81188.i, %bb.fe ], [ %.51185.i, %bb.ex ], [ %.41184.i, %.loopexit.loopexit1714.i ], [ %.41184.i, %bb.ft ], [ %.111191.i, %bb.ge ], [ %.71187.i, %bb.fb ], [ %.121192.i, %bb.gh ], [ %.41184.i, %bb.ga ], [ %.21182.i, %bb.ek ], [ %i.anx, %._crit_edge1567.i ], [ %.pre1929.i, %bb.aq ], [ %i.xc, %makeMaps_d.exit.i ], [ %i.acq, %bb.cn ], [ %i.ry, %bb.bk ], [ %i.lw, %._crit_edge.i ], [ null, %bb.as ], [ %.41184.i, %bb.hh ], [ %.81188.i, %bb.fr ], [ %.81188.i, %bb.fp ], [ %i.aot, %bb.di ], [ %i.lw, %bb.au ]
  %.141179.i = phi ptr [ %.41169.i, %indexIntoF.exit.i44 ], [ null, %bb.ar ], [ %i.lx, %bb.hi ], [ %i.px, %bb.bf ], [ %.ph653, %bb.dc ], [ %i.rz, %._crit_edge1528.i.a ], [ %i.rz, %bb.bo ], [ %i.acr, %._crit_edge1536.i ], [ %i.nv, %bb.ba ], [ %.ph653, %bb.cy ], [ %i.vd, %bb.br ], [ %.71172.i, %.lr.ph1621.i ], [ %i.aem, %._crit_edge1543.i.a ], [ %i.arw, %bb.dp ], [ %i.atp, %bb.du ], [ %i.are, %bb.dn ], [ %i.za, %bb.by ], [ %.91174.i, %bb.fi ], [ %.131178.i, %bb.gl ], [ %.11166.i, %.lr.ph1577.i ], [ %.121177.i, %bb.gp ], [ %.41169.i, %bb.gr ], [ %i.aem, %bb.cs ], [ %.11166.i, %bb.eh ], [ %.31168.i, %bb.eo ], [ %.21167.i, %bb.es ], [ %.51170.i, %bb.ev ], [ %.111176.i, %.lr.ph1606.i ], [ %.41169.i, %.loopexit.loopexit1713.i ], [ %.81173.i, %bb.fm ], [ %.41169.i, %.loopexit.loopexit1715.i ], [ %.81173.i, %bb.fe ], [ %.51170.i, %bb.ex ], [ %.41169.i, %.loopexit.loopexit1714.i ], [ %.41169.i, %bb.ft ], [ %.111176.i, %bb.ge ], [ %.71172.i, %bb.fb ], [ %.121177.i, %bb.gh ], [ %.41169.i, %bb.ga ], [ %.21167.i, %bb.ek ], [ %i.any, %._crit_edge1567.i ], [ %.pre1931.i, %bb.aq ], [ %i.xd, %makeMaps_d.exit.i ], [ %i.acr, %bb.cn ], [ %i.rz, %bb.bk ], [ %i.lx, %._crit_edge.i ], [ null, %bb.as ], [ %.41169.i, %bb.hh ], [ %.81173.i, %bb.fr ], [ %.81173.i, %bb.fp ], [ %i.aou, %bb.di ], [ %i.lx, %bb.au ]
  %.121164.i = phi i32 [ %.01152.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lm, %bb.hi ], [ %i.pm, %bb.bf ], [ %.ph642, %bb.dc ], [ %i.ro, %._crit_edge1528.i.a ], [ %i.ro, %bb.bo ], [ %i.acg, %._crit_edge1536.i ], [ %i.nk, %bb.ba ], [ %.ph642, %bb.cy ], [ %i.us, %bb.br ], [ %.31155.i, %.lr.ph1621.i ], [ %i.aeb, %._crit_edge1543.i.a ], [ %i.arm, %bb.dp ], [ %i.atf, %bb.du ], [ %i.aqu, %bb.dn ], [ %i.yp, %bb.by ], [ %.51157.i, %bb.fi ], [ %.111163.i, %bb.gl ], [ %i.bed, %.lr.ph1577.i ], [ %.101162.i, %bb.gp ], [ %.01152.i, %bb.gr ], [ %i.aeb, %bb.cs ], [ %i.bed, %bb.eh ], [ %i.bfs, %bb.eo ], [ %i.bfj, %bb.es ], [ %.11153.i, %bb.ev ], [ %.91161.i, %.lr.ph1606.i ], [ %.01152.i, %.loopexit.loopexit1713.i ], [ %.41156.i, %bb.fm ], [ %.01152.i, %.loopexit.loopexit1715.i ], [ %.41156.i, %bb.fe ], [ %.21154.i, %bb.ex ], [ %.01152.i, %.loopexit.loopexit1714.i ], [ %.01152.i, %bb.ft ], [ %.91161.i, %bb.ge ], [ %.31155.i, %bb.fb ], [ %.101162.i, %bb.gh ], [ %.01152.i, %bb.ga ], [ %i.bfj, %bb.ek ], [ %i.ano, %._crit_edge1567.i ], [ %.pre1909.i.a, %bb.aq ], [ %i.ws, %makeMaps_d.exit.i ], [ %i.acg, %bb.cn ], [ %i.ro, %bb.bk ], [ %i.lm, %._crit_edge.i ], [ 0, %bb.as ], [ %.01152.i, %bb.hh ], [ %.711591631.i, %bb.fr ], [ %.611581626.i, %bb.fp ], [ %i.aok, %bb.di ], [ %i.lm, %bb.au ]
  %.141151.i = phi i32 [ %.31140.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.ll, %bb.hi ], [ %i.pl, %bb.bf ], [ %.ph641, %bb.dc ], [ %i.rn, %._crit_edge1528.i.a ], [ %i.rn, %bb.bo ], [ %i.acf, %._crit_edge1536.i ], [ %i.nj, %bb.ba ], [ %.ph641, %bb.cy ], [ %i.ur, %bb.br ], [ %.51142.i, %.lr.ph1621.i ], [ %i.aea, %._crit_edge1543.i.a ], [ %i.arl, %bb.dp ], [ %i.ate, %bb.du ], [ %i.aqt, %bb.dn ], [ %i.yo, %bb.by ], [ %.71144.i, %bb.fi ], [ %.131150.i, %bb.gl ], [ %.01137.i, %.lr.ph1577.i ], [ %.121149.i, %bb.gp ], [ %.31140.i, %bb.gr ], [ %i.aea, %bb.cs ], [ %.01137.i, %bb.eh ], [ %.21139.i, %bb.eo ], [ %.11138.i, %bb.es ], [ %.41141.i, %bb.ev ], [ %.111148.i, %.lr.ph1606.i ], [ %.31140.i, %.loopexit.loopexit1713.i ], [ %.61143.i, %bb.fm ], [ %.31140.i, %.loopexit.loopexit1715.i ], [ %.61143.i, %bb.fe ], [ %.41141.i, %bb.ex ], [ %.31140.i, %.loopexit.loopexit1714.i ], [ %.31140.i, %bb.ft ], [ %.111148.i, %bb.ge ], [ %.51142.i, %bb.fb ], [ %.121149.i, %bb.gh ], [ %i.bwa, %bb.ga ], [ %.11138.i, %bb.ek ], [ 0, %._crit_edge1567.i ], [ %.pre1907.i, %bb.aq ], [ %i.wr, %makeMaps_d.exit.i ], [ %i.acf, %bb.cn ], [ %i.rn, %bb.bk ], [ %i.ll, %._crit_edge.i ], [ 0, %bb.as ], [ %.31140.i, %bb.hh ], [ %smax1840.i, %bb.fr ], [ %smax.i, %bb.fp ], [ %i.aoj, %bb.di ], [ %i.ll, %bb.au ]
  %.111136.i = phi i32 [ %.31128.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lk, %bb.hi ], [ %i.pk, %bb.bf ], [ %.ph640, %bb.dc ], [ %i.rm, %._crit_edge1528.i.a ], [ %i.rm, %bb.bo ], [ %i.ace, %._crit_edge1536.i ], [ %i.ni, %bb.ba ], [ %.ph640, %bb.cy ], [ %i.uq, %bb.br ], [ %.51130.i, %.lr.ph1621.i ], [ %i.adz, %._crit_edge1543.i.a ], [ %i.ark, %bb.dp ], [ %i.atd, %bb.du ], [ %i.aqs, %bb.dn ], [ %i.yn, %bb.by ], [ %.71132.i, %bb.fi ], [ %.101135.i, %bb.gl ], [ %.01125.i, %.lr.ph1577.i ], [ %.91134.i, %bb.gp ], [ %.31128.i, %bb.gr ], [ %i.adz, %bb.cs ], [ %.01125.i, %bb.eh ], [ %.21127.i, %bb.eo ], [ %.11126.i, %bb.es ], [ %.41129.i, %bb.ev ], [ %.81133.i, %.lr.ph1606.i ], [ %.31128.i, %.loopexit.loopexit1713.i ], [ %.61131.i, %bb.fm ], [ %.31128.i, %.loopexit.loopexit1715.i ], [ %.61131.i, %bb.fe ], [ %.41129.i, %bb.ex ], [ %.31128.i, %.loopexit.loopexit1714.i ], [ %.31128.i, %bb.ft ], [ %.81133.i, %bb.ge ], [ %.51130.i, %bb.fb ], [ %.91134.i, %bb.gh ], [ %.31128.i, %bb.ga ], [ %.11126.i, %bb.ek ], [ %i.bds, %._crit_edge1567.i ], [ %.pre1905.i.a, %bb.aq ], [ %i.wq, %makeMaps_d.exit.i ], [ %i.ace, %bb.cn ], [ %i.rm, %bb.bk ], [ %i.lk, %._crit_edge.i ], [ 0, %bb.as ], [ %.31128.i, %bb.hh ], [ %.61131.i, %bb.fr ], [ %.61131.i, %bb.fp ], [ %i.aoi, %bb.di ], [ %i.lk, %bb.au ]
  %.81124.i = phi i32 [ %.01116.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lj, %bb.hi ], [ %i.pj, %bb.bf ], [ %.ph639, %bb.dc ], [ %i.rl, %._crit_edge1528.i.a ], [ %i.rl, %bb.bo ], [ %i.acd, %._crit_edge1536.i ], [ %i.nh, %bb.ba ], [ %.ph639, %bb.cy ], [ %i.up, %bb.br ], [ %.21118.i, %.lr.ph1621.i ], [ %i.ady, %._crit_edge1543.i.a ], [ %i.arj, %bb.dp ], [ %i.atc, %bb.du ], [ %i.aqr, %bb.dn ], [ %i.ym, %bb.by ], [ %.41120.i, %bb.fi ], [ %.71123.i, %bb.gl ], [ %i.bec, %.lr.ph1577.i ], [ %.61122.i, %bb.gp ], [ %.01116.i, %bb.gr ], [ %i.ady, %bb.cs ], [ %i.bec, %bb.eh ], [ %i.bfr, %bb.eo ], [ %i.bfi, %bb.es ], [ %.11117.i, %bb.ev ], [ %.51121.i, %.lr.ph1606.i ], [ %.01116.i, %.loopexit.loopexit1713.i ], [ %.31119.i, %bb.fm ], [ %.01116.i, %.loopexit.loopexit1715.i ], [ %.31119.i, %bb.fe ], [ %.11117.i, %bb.ex ], [ %.01116.i, %.loopexit.loopexit1714.i ], [ %.01116.i, %bb.ft ], [ %.51121.i, %bb.ge ], [ %.21118.i, %bb.fb ], [ %.61122.i, %bb.gh ], [ %.01116.i, %bb.ga ], [ %i.bfi, %bb.ek ], [ %i.anl, %._crit_edge1567.i ], [ %.pre1903.i.a, %bb.aq ], [ %i.wp, %makeMaps_d.exit.i ], [ %i.acd, %bb.cn ], [ %i.rl, %bb.bk ], [ %i.lj, %._crit_edge.i ], [ 0, %bb.as ], [ %.01116.i, %bb.hh ], [ %i.bkn, %bb.fr ], [ %i.bkn, %bb.fp ], [ %i.aoh, %bb.di ], [ %i.lj, %bb.au ]
  %.141115.i = phi i32 [ %.41105.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.li, %bb.hi ], [ %i.pi, %bb.bf ], [ %.ph638, %bb.dc ], [ %i.rk, %._crit_edge1528.i.a ], [ %i.rk, %bb.bo ], [ %i.acc, %._crit_edge1536.i ], [ %i.ng, %bb.ba ], [ %.ph638, %bb.cy ], [ %i.uo, %bb.br ], [ %.71108.i, %.lr.ph1621.i ], [ %i.adx, %._crit_edge1543.i.a ], [ %i.ari, %bb.dp ], [ %i.atb, %bb.du ], [ %i.aqq, %bb.dn ], [ %i.yl, %bb.by ], [ %.91110.i, %bb.fi ], [ %.131114.i, %bb.gl ], [ %.11102.i, %.lr.ph1577.i ], [ %.121113.i, %bb.gp ], [ %.41105.i, %bb.gr ], [ %i.adx, %bb.cs ], [ %.11102.i, %bb.eh ], [ %.31104.i, %bb.eo ], [ %.21103.i, %bb.es ], [ %.51106.i, %bb.ev ], [ %.111112.i, %.lr.ph1606.i ], [ %.41105.i, %.loopexit.loopexit1713.i ], [ %.81109.i, %bb.fm ], [ %.41105.i, %.loopexit.loopexit1715.i ], [ %.81109.i, %bb.fe ], [ 0, %bb.ex ], [ %.41105.i, %.loopexit.loopexit1714.i ], [ %.41105.i, %bb.ft ], [ %.111112.i, %bb.ge ], [ %.71108.i, %bb.fb ], [ %.121113.i, %bb.gh ], [ 0, %bb.ga ], [ %.21103.i, %bb.ek ], [ 0, %._crit_edge1567.i ], [ %.pre1901.i, %bb.aq ], [ %i.wo, %makeMaps_d.exit.i ], [ %i.acc, %bb.cn ], [ %i.rk, %bb.bk ], [ %i.li, %._crit_edge.i ], [ 0, %bb.as ], [ %.41105.i, %bb.hh ], [ %.81109.i, %bb.fr ], [ %.81109.i, %bb.fp ], [ %i.aog, %bb.di ], [ %i.li, %bb.au ]
  %.141100.i = phi i32 [ %.41090.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lh, %bb.hi ], [ %i.ph, %bb.bf ], [ %.ph637, %bb.dc ], [ %i.rj, %._crit_edge1528.i.a ], [ %i.rj, %bb.bo ], [ %i.acb, %._crit_edge1536.i ], [ %i.nf, %bb.ba ], [ %.ph637, %bb.cy ], [ %i.un, %bb.br ], [ %.71093.i, %.lr.ph1621.i ], [ %i.adw, %._crit_edge1543.i.a ], [ %i.arh, %bb.dp ], [ %i.ata, %bb.du ], [ %i.aqp, %bb.dn ], [ %i.yk, %bb.by ], [ %.91095.i, %bb.fi ], [ %.131099.i, %bb.gl ], [ %.11087.i, %.lr.ph1577.i ], [ %.121098.i, %bb.gp ], [ %.41090.i, %bb.gr ], [ %i.adw, %bb.cs ], [ %.11087.i, %bb.eh ], [ %.31089.i, %bb.eo ], [ %.21088.i, %bb.es ], [ %.51091.i, %bb.ev ], [ %.111097.i, %.lr.ph1606.i ], [ %.41090.i, %.loopexit.loopexit1713.i ], [ %.81094.i, %bb.fm ], [ %.41090.i, %.loopexit.loopexit1715.i ], [ %.81094.i, %bb.fe ], [ %i.bhl, %bb.ex ], [ %.41090.i, %.loopexit.loopexit1714.i ], [ %.41090.i, %bb.ft ], [ %.111097.i, %bb.ge ], [ %.71093.i, %bb.fb ], [ %.121098.i, %bb.gh ], [ %i.bwc, %bb.ga ], [ %.21088.i, %bb.ek ], [ 0, %._crit_edge1567.i ], [ %.pre1899.i.a, %bb.aq ], [ %i.wn, %makeMaps_d.exit.i ], [ %i.acb, %bb.cn ], [ %i.rj, %bb.bk ], [ %i.lh, %._crit_edge.i ], [ 0, %bb.as ], [ %.41090.i, %bb.hh ], [ %.81094.i, %bb.fr ], [ %.81094.i, %bb.fp ], [ %i.aof, %bb.di ], [ %i.lh, %bb.au ]
  %.111085.i = phi i32 [ %.01116.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lg, %bb.hi ], [ %i.pg, %bb.bf ], [ %.ph636, %bb.dc ], [ %i.ri, %._crit_edge1528.i.a ], [ %i.ri, %bb.bo ], [ %i.aca, %._crit_edge1536.i ], [ %i.ne, %bb.ba ], [ %.ph636, %bb.cy ], [ %i.um, %bb.br ], [ %.51079.i, %.lr.ph1621.i ], [ %i.adv, %._crit_edge1543.i.a ], [ %i.arg, %bb.dp ], [ %i.asz, %bb.du ], [ %i.aqo, %bb.dn ], [ %i.yj, %bb.by ], [ %.71081.i, %bb.fi ], [ %.101084.i, %bb.gl ], [ %.01074.i, %.lr.ph1577.i ], [ %.91083.i, %bb.gp ], [ %.01116.i, %bb.gr ], [ %i.adv, %bb.cs ], [ %.01074.i, %bb.eh ], [ %.21076.i, %bb.eo ], [ %.11075.i, %bb.es ], [ %.41078.i, %bb.ev ], [ %.81082.i, %.lr.ph1606.i ], [ %.01116.i, %.loopexit.loopexit1713.i ], [ %.61080.i, %bb.fm ], [ %.01116.i, %.loopexit.loopexit1715.i ], [ %.61080.i, %bb.fe ], [ %.41078.i, %bb.ex ], [ %.01116.i, %.loopexit.loopexit1714.i ], [ %.31077.i, %bb.ft ], [ %.81082.i, %bb.ge ], [ %.51079.i, %bb.fb ], [ %.91083.i, %bb.gh ], [ %.31077.i, %bb.ga ], [ %.11075.i, %bb.ek ], [ %i.bdr, %._crit_edge1567.i ], [ %.pre1897.i.a, %bb.aq ], [ %i.wm, %makeMaps_d.exit.i ], [ %i.aca, %bb.cn ], [ %i.ri, %bb.bk ], [ %i.lg, %._crit_edge.i ], [ 0, %bb.as ], [ %.01116.i, %bb.hh ], [ %.61080.i, %bb.fr ], [ %.61080.i, %bb.fp ], [ %i.aoe, %bb.di ], [ %i.lg, %bb.au ]
  %.201073.i = phi i32 [ %.121065.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lf, %bb.hi ], [ %i.pf, %bb.bf ], [ %.21055.i.ph, %bb.dc ], [ %i.rh, %._crit_edge1528.i.a ], [ %i.rh, %bb.bo ], [ %i.abz, %._crit_edge1536.i ], [ %i.nd, %bb.ba ], [ %.21055.i.ph, %bb.cy ], [ %i.ul, %bb.br ], [ %.141067.i, %.lr.ph1621.i ], [ %i.aev, %._crit_edge1543.i.a ], [ %.71060.i, %bb.dp ], [ %.81061.i, %bb.du ], [ %.61059.i, %bb.dn ], [ %i.yi, %bb.by ], [ %.161069.i, %bb.fi ], [ %.191072.i, %bb.gl ], [ %.91062.i, %.lr.ph1577.i ], [ %.181071.i, %bb.gp ], [ %.121065.i, %bb.gr ], [ %i.adu, %bb.cs ], [ %.91062.i, %bb.eh ], [ %.111064.i, %bb.eo ], [ %.101063.i, %bb.es ], [ %.131066.i, %bb.ev ], [ %.171070.i, %.lr.ph1606.i ], [ %.121065.i, %.loopexit.loopexit1713.i ], [ %.151068.i, %bb.fm ], [ %.121065.i, %.loopexit.loopexit1715.i ], [ %.151068.i, %bb.fe ], [ %.131066.i, %bb.ex ], [ %.121065.i, %.loopexit.loopexit1714.i ], [ %.121065.i, %bb.ft ], [ %.171070.i, %bb.ge ], [ %.141067.i, %bb.fb ], [ %.181071.i, %bb.gh ], [ %.121065.i, %bb.ga ], [ %.101063.i, %bb.ek ], [ %.31056.i, %._crit_edge1567.i ], [ %.pre1895.i, %bb.aq ], [ %i.wl, %makeMaps_d.exit.i ], [ %i.abz, %bb.cn ], [ %i.rh, %bb.bk ], [ %i.lf, %._crit_edge.i ], [ 0, %bb.as ], [ %.121065.i, %bb.hh ], [ %.151068.i, %bb.fr ], [ %.151068.i, %bb.fp ], [ %.41057.i, %bb.di ], [ %i.lf, %bb.au ]
  %.211052.i = phi i32 [ %.131044.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.le, %bb.hi ], [ %i.pe, %bb.bf ], [ %.31034.i.ph, %bb.dc ], [ %i.rg, %._crit_edge1528.i.a ], [ %i.rg, %bb.bo ], [ %i.ada, %._crit_edge1536.i ], [ %i.nc, %bb.ba ], [ %.31034.i.ph, %bb.cy ], [ %i.uk, %bb.br ], [ %.151046.i, %.lr.ph1621.i ], [ %.01031.i, %._crit_edge1543.i.a ], [ %.81039.i, %bb.dp ], [ %.91040.i, %bb.du ], [ %.71038.i, %bb.dn ], [ %i.yh, %bb.by ], [ %.171048.i, %bb.fi ], [ %.201051.i, %bb.gl ], [ %.101041.i, %.lr.ph1577.i ], [ %.191050.i, %bb.gp ], [ %.131044.i, %bb.gr ], [ %.01031.i, %bb.cs ], [ %.101041.i, %bb.eh ], [ %.121043.i, %bb.eo ], [ %.111042.i, %bb.es ], [ %.141045.i, %bb.ev ], [ %.181049.i, %.lr.ph1606.i ], [ %.131044.i, %.loopexit.loopexit1713.i ], [ %.161047.i, %bb.fm ], [ %.131044.i, %.loopexit.loopexit1715.i ], [ %.161047.i, %bb.fe ], [ %.141045.i, %bb.ex ], [ %.131044.i, %.loopexit.loopexit1714.i ], [ %.131044.i, %bb.ft ], [ %.181049.i, %bb.ge ], [ %.151046.i, %bb.fb ], [ %.191050.i, %bb.gh ], [ %.131044.i, %bb.ga ], [ %.111042.i, %bb.ek ], [ %.41035.i, %._crit_edge1567.i ], [ %.pre1893.i, %bb.aq ], [ %i.wk, %makeMaps_d.exit.i ], [ %i.aby, %bb.cn ], [ %i.rg, %bb.bk ], [ %i.le, %._crit_edge.i ], [ 0, %bb.as ], [ %.131044.i, %bb.hh ], [ %.161047.i, %bb.fr ], [ %.161047.i, %bb.fp ], [ %.51036.i, %bb.di ], [ %i.le, %bb.au ]
  %.221028.i = phi i32 [ %.141020.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.ld, %bb.hi ], [ %i.pd, %bb.bf ], [ %.41010.i.ph, %bb.dc ], [ %i.rf, %._crit_edge1528.i.a ], [ %i.rf, %bb.bo ], [ %.01006.i, %._crit_edge1536.i ], [ %i.nb, %bb.ba ], [ %.41010.i.ph, %bb.cy ], [ %i.uj, %bb.br ], [ %.161022.i, %.lr.ph1621.i ], [ %.11007.i, %._crit_edge1543.i.a ], [ %.91015.i, %bb.dp ], [ %.101016.i, %bb.du ], [ %.81014.i, %bb.dn ], [ %i.yg, %bb.by ], [ %.181024.i, %bb.fi ], [ %.211027.i, %bb.gl ], [ %.111017.i, %.lr.ph1577.i ], [ %.201026.i, %bb.gp ], [ %.141020.i, %bb.gr ], [ %.11007.i, %bb.cs ], [ %.111017.i, %bb.eh ], [ %.131019.i, %bb.eo ], [ %.121018.i, %bb.es ], [ %.151021.i, %bb.ev ], [ %.191025.i, %.lr.ph1606.i ], [ %.141020.i, %.loopexit.loopexit1713.i ], [ %.171023.i, %bb.fm ], [ %.141020.i, %.loopexit.loopexit1715.i ], [ %.171023.i, %bb.fe ], [ %.151021.i, %bb.ex ], [ %.141020.i, %.loopexit.loopexit1714.i ], [ %.141020.i, %bb.ft ], [ %.191025.i, %bb.ge ], [ %.161022.i, %bb.fb ], [ %.201026.i, %bb.gh ], [ %.141020.i, %bb.ga ], [ %.121018.i, %bb.ek ], [ %.51011.i, %._crit_edge1567.i ], [ %.pre1891.i, %bb.aq ], [ %i.wj, %makeMaps_d.exit.i ], [ %.01006.i, %bb.cn ], [ %i.rf, %bb.bk ], [ %i.ld, %._crit_edge.i ], [ 0, %bb.as ], [ %.141020.i, %bb.hh ], [ %.171023.i, %bb.fr ], [ %.171023.i, %bb.fp ], [ %.61012.i, %bb.di ], [ %i.ld, %bb.au ]
  %.181005.i = phi i32 [ %.10997.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lc, %bb.hi ], [ %i.pc, %bb.bf ], [ %.ph, %bb.dc ], [ %i.re, %._crit_edge1528.i.a ], [ %i.re, %bb.bo ], [ %i.abx, %._crit_edge1536.i ], [ %i.na, %bb.ba ], [ %.ph, %bb.cy ], [ %i.ui, %bb.br ], [ %.12999.i, %.lr.ph1621.i ], [ %i.adt, %._crit_edge1543.i.a ], [ %.4991.i, %bb.dp ], [ %.5992.i, %bb.du ], [ %.3990.i, %bb.dn ], [ %i.yf, %bb.by ], [ %.141001.i, %bb.fi ], [ %.171004.i, %bb.gl ], [ %.7994.i, %.lr.ph1577.i ], [ %.161003.i, %bb.gp ], [ %.10997.i, %bb.gr ], [ %i.adt, %bb.cs ], [ %.7994.i, %bb.eh ], [ %.9996.i, %bb.eo ], [ %.8995.i, %bb.es ], [ %.11998.i, %bb.ev ], [ %.151002.i, %.lr.ph1606.i ], [ %.10997.i, %.loopexit.loopexit1713.i ], [ %.131000.i, %bb.fm ], [ %.10997.i, %.loopexit.loopexit1715.i ], [ %.131000.i, %bb.fe ], [ %.11998.i, %bb.ex ], [ %.10997.i, %.loopexit.loopexit1714.i ], [ %.10997.i, %bb.ft ], [ %.151002.i, %bb.ge ], [ %.12999.i, %bb.fb ], [ %.161003.i, %bb.gh ], [ %.10997.i, %bb.ga ], [ %.8995.i, %bb.ek ], [ %.6993.lcssa.i, %._crit_edge1567.i ], [ %.pre1889.i, %bb.aq ], [ %i.wi, %makeMaps_d.exit.i ], [ %i.abx, %bb.cn ], [ %i.re, %bb.bk ], [ %i.lc, %._crit_edge.i ], [ 0, %bb.as ], [ %.10997.i, %bb.hh ], [ %.131000.i, %bb.fr ], [ %.131000.i, %bb.fp ], [ %.1988.i, %bb.di ], [ %i.lc, %bb.au ]
  %.28986.i = phi i32 [ %i.cny, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.lb, %bb.hi ], [ %i.pb, %bb.bf ], [ %i.ahl, %bb.dc ], [ %i.rd, %._crit_edge1528.i.a ], [ %i.rd, %bb.bo ], [ %.4962.i, %._crit_edge1536.i ], [ %i.mz, %bb.ba ], [ %.8966.i, %bb.cy ], [ %i.uh, %bb.br ], [ %.20978.i, %.lr.ph1621.i ], [ %.5963.i, %._crit_edge1543.i.a ], [ %.13971.i, %bb.dp ], [ %.14972.i, %bb.du ], [ %.12970.i, %bb.dn ], [ %.2960.i, %bb.by ], [ %.22980.i, %bb.fi ], [ %.25983.i, %bb.gl ], [ %.15973.i, %.lr.ph1577.i ], [ %.24982.i, %bb.gp ], [ %.18976.i, %bb.gr ], [ %.5963.i, %bb.cs ], [ %.15973.i, %bb.eh ], [ %.17975.i, %bb.eo ], [ %.16974.i, %bb.es ], [ %.19977.i, %bb.ev ], [ %.23981.i, %.lr.ph1606.i ], [ %.18976.i, %.loopexit.loopexit1713.i ], [ %.21979.i, %bb.fm ], [ %.18976.i, %.loopexit.loopexit1715.i ], [ %.21979.i, %bb.fe ], [ %.19977.i, %bb.ex ], [ %.18976.i, %.loopexit.loopexit1714.i ], [ %.18976.i, %bb.ft ], [ %.23981.i, %bb.ge ], [ %.20978.i, %bb.fb ], [ %.24982.i, %bb.gh ], [ %.18976.i, %bb.ga ], [ %.16974.i, %bb.ek ], [ %.9967.i, %._crit_edge1567.i ], [ %.pre1887.i, %bb.aq ], [ %.0958.i, %makeMaps_d.exit.i ], [ %.4962.i, %bb.cn ], [ %i.rd, %bb.bk ], [ %i.lb, %._crit_edge.i ], [ 0, %bb.as ], [ %.18976.i, %bb.hh ], [ %.21979.i, %bb.fr ], [ %.21979.i, %bb.fp ], [ %.10968.i, %bb.di ], [ %i.lb, %bb.au ]
  %.42.i = phi i32 [ %.26984.i, %indexIntoF.exit.i44 ], [ 0, %bb.ar ], [ %i.la, %bb.hi ], [ %i.pa, %bb.bf ], [ %.11.i.ph, %bb.dc ], [ %i.rc, %._crit_edge1528.i.a ], [ %i.rc, %bb.bo ], [ %.7.i, %._crit_edge1536.i ], [ %i.my, %bb.ba ], [ %.11.i.ph, %bb.cy ], [ %.1953.i, %bb.br ], [ %.26.i, %.lr.ph1621.i ], [ %.8.i, %._crit_edge1543.i.a ], [ %.17.i, %bb.dp ], [ %.18.i, %bb.du ], [ %.16.i, %bb.dn ], [ %.5.i, %bb.by ], [ %.28.i, %bb.fi ], [ %.31.i, %bb.gl ], [ %.21.i, %.lr.ph1577.i ], [ %.30.i, %bb.gp ], [ %.24.i, %bb.gr ], [ %.8.i, %bb.cs ], [ %.21.i, %bb.eh ], [ %.23.i, %bb.eo ], [ %.22.i, %bb.es ], [ %.25.i, %bb.ev ], [ %.29.i, %.lr.ph1606.i ], [ %i.crj, %.loopexit.loopexit1713.i ], [ %.27.i, %bb.fm ], [ %i.crl, %.loopexit.loopexit1715.i ], [ %.27.i, %bb.fe ], [ %.25.i, %bb.ex ], [ %i.crk, %.loopexit.loopexit1714.i ], [ %.24.i, %bb.ft ], [ %.29.i, %bb.ge ], [ %.26.i, %bb.fb ], [ %.30.i, %bb.gh ], [ %.24.i, %bb.ga ], [ %.22.i, %bb.ek ], [ 256, %._crit_edge1567.i ], [ %.pre.i36, %bb.aq ], [ %.3.i47, %makeMaps_d.exit.i ], [ %.7.i, %bb.cn ], [ %i.rc, %bb.bk ], [ %i.la, %._crit_edge.i ], [ 0, %bb.as ], [ %.31140.i, %bb.hh ], [ %.27.i, %bb.fr ], [ %.27.i, %bb.fp ], [ %.14.i, %bb.di ], [ %i.la, %bb.au ]
  %i.crn = phi i1 [ false, %indexIntoF.exit.i44 ], [ false, %bb.ar ], [ true, %bb.hi ], [ false, %bb.bf ], [ false, %bb.dc ], [ false, %._crit_edge1528.i.a ], [ false, %bb.bo ], [ false, %._crit_edge1536.i ], [ false, %bb.ba ], [ false, %bb.cy ], [ false, %bb.br ], [ false, %.lr.ph1621.i ], [ false, %._crit_edge1543.i.a ], [ false, %bb.dp ], [ false, %bb.du ], [ false, %bb.dn ], [ false, %bb.by ], [ false, %bb.fi ], [ false, %bb.gl ], [ false, %.lr.ph1577.i ], [ false, %bb.gp ], [ false, %bb.gr ], [ false, %bb.cs ], [ false, %bb.eh ], [ false, %bb.eo ], [ false, %bb.es ], [ false, %bb.ev ], [ false, %.lr.ph1606.i ], [ false, %.loopexit.loopexit1713.i ], [ false, %bb.fm ], [ false, %.loopexit.loopexit1715.i ], [ false, %bb.fe ], [ false, %bb.ex ], [ false, %.loopexit.loopexit1714.i ], [ false, %bb.ft ], [ false, %bb.ge ], [ false, %bb.fb ], [ false, %bb.gh ], [ false, %bb.ga ], [ false, %bb.ek ], [ false, %._crit_edge1567.i ], [ false, %bb.aq ], [ false, %makeMaps_d.exit.i ], [ false, %bb.cn ], [ false, %bb.bk ], [ false, %._crit_edge.i ], [ false, %bb.as ], [ false, %bb.hh ], [ false, %bb.fr ], [ false, %bb.fp ], [ false, %bb.di ], [ false, %bb.au ]
  %.0940.i = phi i32 [ 0, %indexIntoF.exit.i44 ], [ -3, %bb.ar ], [ 4, %bb.hi ], [ 0, %bb.bf ], [ -4, %bb.dc ], [ -4, %._crit_edge1528.i.a ], [ -4, %bb.bo ], [ -4, %._crit_edge1536.i ], [ 0, %bb.ba ], [ 0, %bb.cy ], [ 0, %bb.br ], [ 0, %.lr.ph1621.i ], [ -4, %._crit_edge1543.i.a ], [ 0, %bb.dp ], [ 0, %bb.du ], [ -4, %bb.dn ], [ 0, %bb.by ], [ 0, %bb.fi ], [ 0, %bb.gl ], [ 0, %.lr.ph1577.i ], [ -4, %bb.gp ], [ -4, %bb.gr ], [ 0, %bb.cs ], [ 0, %bb.eh ], [ 0, %bb.eo ], [ -4, %bb.es ], [ -4, %bb.ev ], [ 0, %.lr.ph1606.i ], [ -4, %.loopexit.loopexit1713.i ], [ -4, %bb.fm ], [ -4, %.loopexit.loopexit1715.i ], [ -4, %bb.fe ], [ -4, %bb.ex ], [ -4, %.loopexit.loopexit1714.i ], [ -4, %bb.ft ], [ 0, %bb.ge ], [ 0, %bb.fb ], [ -4, %bb.gh ], [ -4, %bb.ga ], [ -4, %bb.ek ], [ -4, %._crit_edge1567.i ], [ -4, %bb.aq ], [ -4, %makeMaps_d.exit.i ], [ 0, %bb.cn ], [ 0, %bb.bk ], [ -4, %._crit_edge.i ], [ -3, %bb.as ], [ 0, %bb.hh ], [ -4, %bb.fr ], [ -4, %bb.fp ], [ 0, %bb.di ], [ 0, %bb.au ]
  store i32 %.42.i, ptr %i.u, align 4, !tbaa !51
  store i32 %.28986.i, ptr %.phi.trans.insert1886.i, align 8, !tbaa !52
  store i32 %.181005.i, ptr %.phi.trans.insert1888.i, align 4, !tbaa !53
  store i32 %.221028.i, ptr %.phi.trans.insert1890.i, align 8, !tbaa !54
  store i32 %.211052.i, ptr %.phi.trans.insert1892.i, align 4, !tbaa !55
  store i32 %.201073.i, ptr %.phi.trans.insert1894.i, align 8, !tbaa !56
  store i32 %.111085.i, ptr %.phi.trans.insert1896.i, align 4, !tbaa !57
  store i32 %.141100.i, ptr %.phi.trans.insert1898.i, align 8, !tbaa !58
  store i32 %.141115.i, ptr %.phi.trans.insert1900.i, align 4, !tbaa !59
  store i32 %.81124.i, ptr %.phi.trans.insert1902.i, align 8, !tbaa !60
  store i32 %.111136.i, ptr %.phi.trans.insert1904.i, align 4, !tbaa !61
  store i32 %.141151.i, ptr %i.l, align 8, !tbaa !36
  store i32 %.121164.i, ptr %.phi.trans.insert1908.i, align 4, !tbaa !62
  store i32 %.81301.i, ptr %.phi.trans.insert1910.i, align 8, !tbaa !63
  store i32 %.181292.i, ptr %.phi.trans.insert1912.i, align 4, !tbaa !64
  store i32 %i.crm, ptr %.phi.trans.insert1914.i, align 8, !tbaa !65
  store i32 %.111273.i, ptr %.phi.trans.insert1916.i, align 4, !tbaa !66
  store i32 %.101261.i, ptr %.phi.trans.insert1918.i, align 8, !tbaa !67
  store i32 %.101250.i, ptr %.phi.trans.insert1920.i, align 4, !tbaa !68
  store i32 %.141239.i, ptr %.phi.trans.insert1922.i, align 8, !tbaa !69
  store i32 %.141224.i, ptr %.phi.trans.insert1924.i, align 4, !tbaa !70
  store ptr %.141209.i, ptr %.phi.trans.insert1926.i, align 8, !tbaa !71
  store ptr %.141194.i, ptr %.phi.trans.insert1928.i, align 8, !tbaa !72
  store ptr %.141179.i, ptr %.phi.trans.insert1930.i, align 8, !tbaa !73
  br i1 %i.crn, label %unRLE_obuf_to_output_SMALL.exit.thread, label %BZ2_decompress.exit.thread

BZ2_decompress.exit.thread:                       ; preds = %._crit_edge1654.i, %bb.hf, %BZ2_decompress.exit
  %.0.i3855 = phi i32 [ %.0940.i, %BZ2_decompress.exit ], [ 1, %bb.hf ], [ 1, %._crit_edge1654.i ]
  %i.cro = load i32, ptr %i.g, align 8, !tbaa !19
  %.not31 = icmp eq i32 %i.cro, 2
  br i1 %.not31, label %.loopexit, label %unRLE_obuf_to_output_SMALL.exit.thread

unRLE_obuf_to_output_SMALL.exit.thread:           ; preds = %bb.d, %indexIntoF.exit132.i, %bb.j, %bb.k, %bb.n, %bb.q, %bb.t, %bb.aj, %bb.af, %bb.ac, %bb.z, %bb.x, %bb.ai, %BZ2_decompress.exit, %unRLE_obuf_to_output_SMALL.exit, %bb.an, %BZ2_decompress.exit.thread, %bb.c, %bb.b, %bb.a
  %.3 = phi i32 [ 4, %BZ2_decompress.exit ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ], [ -4, %bb.aj ], [ -4, %indexIntoF.exit132.i ], [ %.0.i3855, %BZ2_decompress.exit.thread ], [ 0, %bb.an ], [ 0, %unRLE_obuf_to_output_SMALL.exit ], [ -4, %bb.ai ], [ -4, %bb.x ], [ -4, %bb.z ], [ -4, %bb.ac ], [ -4, %bb.af ], [ -4, %bb.t ], [ -4, %bb.q ], [ -4, %bb.n ], [ -4, %bb.k ], [ -4, %bb.j ], [ -1, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @nsis_BZ2_bzDecompressEnd(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !14
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  tail call void %i.i(ptr noundef %i.k, ptr noundef nonnull %i.g) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  tail call void %i.o(ptr noundef %i.q, ptr noundef nonnull %i.m) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 3168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %.not28 = icmp eq ptr %i.s, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  tail call void %i.u(ptr noundef %i.w, ptr noundef nonnull %i.s) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ab) #8
  store ptr null, ptr %i.b, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 56}
!9 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !11, i64 64}
!13 = !{!9, !11, i64 72}
!14 = !{!15, !11, i64 0}
!15 = !{!"", !11, i64 0, !5, i64 8, !6, i64 12, !5, i64 16, !6, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !6, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !6, i64 68, !5, i64 1092, !6, i64 1096, !6, i64 2124, !16, i64 3152, !17, i64 3160, !10, i64 3168, !5, i64 3176, !5, i64 3180, !5, i64 3184, !5, i64 3188, !5, i64 3192, !6, i64 3196, !6, i64 3452, !6, i64 3468, !6, i64 3724, !6, i64 7820, !6, i64 7884, !6, i64 25886, !6, i64 43888, !6, i64 45436, !6, i64 51628, !6, i64 57820, !6, i64 64012, !5, i64 64036, !5, i64 64040, !5, i64 64044, !5, i64 64048, !5, i64 64052, !5, i64 64056, !5, i64 64060, !5, i64 64064, !5, i64 64068, !5, i64 64072, !5, i64 64076, !5, i64 64080, !5, i64 64084, !5, i64 64088, !5, i64 64092, !5, i64 64096, !5, i64 64100, !5, i64 64104, !5, i64 64108, !5, i64 64112, !5, i64 64116, !16, i64 64120, !16, i64 64128, !16, i64 64136}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"p1 short", !11, i64 0}
!18 = !{!9, !11, i64 48}
!19 = !{!15, !5, i64 8}
!20 = !{!15, !5, i64 36}
!21 = !{!15, !5, i64 32}
!22 = !{!15, !5, i64 3188}
!23 = !{!9, !5, i64 12}
!24 = !{!9, !5, i64 16}
!25 = !{!9, !5, i64 36}
!26 = !{!9, !5, i64 40}
!27 = !{!15, !6, i64 44}
!28 = !{!15, !5, i64 48}
!29 = !{!15, !5, i64 52}
!30 = !{!9, !5, i64 32}
!31 = !{!15, !5, i64 16}
!32 = !{!15, !6, i64 12}
!33 = !{!9, !10, i64 24}
!34 = !{!6, !6, i64 0}
!35 = !{!15, !5, i64 1092}
!36 = !{!15, !5, i64 64080}
!37 = !{!15, !5, i64 64}
!38 = !{!15, !5, i64 60}
!39 = !{!15, !5, i64 40}
end_hunk_3
