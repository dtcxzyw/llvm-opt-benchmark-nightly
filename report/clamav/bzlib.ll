Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bzlib?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  %i.bbt = phi i32 [ %i.bal, %._crit_edge1566.i ], [ %i.bcd, %._crit_edge1637.i ] ; 4 uses
  %i.bbu = phi i32 [ %i.bam, %._crit_edge1566.i ], [ %i.bce, %._crit_edge1637.i ] ; 4 uses
  %i.bbv = phi i32 [ %i.baw, %._crit_edge1566.i ], [ %i.bcm, %._crit_edge1637.i ]
  %.81282.i = phi i32 [ %.71281.i, %._crit_edge1566.i ], [ %.91283.i, %._crit_edge1637.i ] ; 4 uses
  %.11263.i = phi i32 [ %.01262.i, %._crit_edge1566.i ], [ %.21264.i, %._crit_edge1637.i ] ; 6 uses
  %.01251.i = phi i32 [ %i.baz, %._crit_edge1566.i ], [ %i.bcq, %._crit_edge1637.i ] ; 6 uses
  %.01240.i = phi i32 [ %i.bao, %._crit_edge1566.i ], [ %i.bco, %._crit_edge1637.i ] ; 4 uses
  %.21227.i = phi i32 [ %.11226.i, %._crit_edge1566.i ], [ %.31228.i, %._crit_edge1637.i ] ; 4 uses
  %.21212.i = phi i32 [ %.11211.i, %._crit_edge1566.i ], [ %.31213.i, %._crit_edge1637.i ] ; 4 uses
  %.21197.i = phi ptr [ %.11196.i, %._crit_edge1566.i ], [ %.31198.i, %._crit_edge1637.i ] ; 5 uses
  %.21182.i = phi ptr [ %.11181.i, %._crit_edge1566.i ], [ %.31183.i, %._crit_edge1637.i ] ; 5 uses
  %.21167.i = phi ptr [ %.11166.i, %._crit_edge1566.i ], [ %.31168.i, %._crit_edge1637.i ] ; 5 uses
  %.11138.i = phi i32 [ %.01137.i, %._crit_edge1566.i ], [ %.21139.i, %._crit_edge1637.i ] ; 4 uses
  %.11126.i = phi i32 [ %.01125.i, %._crit_edge1566.i ], [ %.21127.i, %._crit_edge1637.i ] ; 4 uses
  %.21103.i = phi i32 [ %.11102.i, %._crit_edge1566.i ], [ %.31104.i, %._crit_edge1637.i ] ; 4 uses
  %.21088.i = phi i32 [ %.11087.i, %._crit_edge1566.i ], [ %.31089.i, %._crit_edge1637.i ] ; 4 uses
  %.11075.i = phi i32 [ %.01074.i, %._crit_edge1566.i ], [ %.21076.i, %._crit_edge1637.i ] ; 4 uses
  %.101063.i = phi i32 [ %.91062.i, %._crit_edge1566.i ], [ %.111064.i, %._crit_edge1637.i ] ; 4 uses
  %.111042.i = phi i32 [ %.101041.i, %._crit_edge1566.i ], [ %.121043.i, %._crit_edge1637.i ] ; 4 uses
  %.121018.i = phi i32 [ %.111017.i, %._crit_edge1566.i ], [ %.131019.i, %._crit_edge1637.i ] ; 4 uses
  %.8995.i = phi i32 [ %.7994.i, %._crit_edge1566.i ], [ %.9996.i, %._crit_edge1637.i ] ; 4 uses
  %.16974.i = phi i32 [ %.15973.i, %._crit_edge1566.i ], [ %.17975.i, %._crit_edge1637.i ] ; 4 uses
  %.22.i = phi i32 [ %.21.i, %._crit_edge1566.i ], [ %.23.i, %._crit_edge1637.i ] ; 4 uses
  %i.bbw = icmp sgt i32 %.11263.i, 20
  br i1 %i.bbw, label %BZ2_decompress.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.bbx = sext i32 %.11263.i to i64              ; 2 uses
  %i.bby = getelementptr inbounds [4 x i8], ptr %.21197.i, i64 %i.bbx
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !58
  %.not1349.i = icmp sgt i32 %.01251.i, %i.bbz
  br i1 %.not1349.i, label %bb.em, label %bb.es

bb.em:                                            ; preds = %bb.el
  %i.bca = add nsw i32 %.11263.i, 1
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %._crit_edge1953.i
  %i.bcb = phi i32 [ %i.bbr, %bb.em ], [ %.pre1865.i, %._crit_edge1953.i ] ; 2 uses
  %i.bcc = phi i32 [ %i.bbs, %bb.em ], [ %.pre1871.i, %._crit_edge1953.i ] ; 2 uses
  %i.bcd = phi i32 [ %i.bbt, %bb.em ], [ %.pre1873.i, %._crit_edge1953.i ] ; 2 uses
  %i.bce = phi i32 [ %i.bbu, %bb.em ], [ %.pre1877.i, %._crit_edge1953.i ] ; 2 uses
  %i.bcf = phi i32 [ %i.bbv, %bb.em ], [ %.pre1955.i, %._crit_edge1953.i ] ; 3 uses
  %.91283.i = phi i32 [ %.81282.i, %bb.em ], [ %.pre1875.i, %._crit_edge1953.i ] ; 2 uses
  %.21264.i = phi i32 [ %i.bca, %bb.em ], [ %.pre1879.i, %._crit_edge1953.i ] ; 2 uses
  %.11252.i = phi i32 [ %.01251.i, %bb.em ], [ %.pre1881.i, %._crit_edge1953.i ] ; 2 uses
  %.11241.i = phi i32 [ %.01240.i, %bb.em ], [ %.pre1883.i, %._crit_edge1953.i ]
  %.31228.i = phi i32 [ %.21227.i, %bb.em ], [ %.pre1885.i, %._crit_edge1953.i ] ; 2 uses
  %.31213.i = phi i32 [ %.21212.i, %bb.em ], [ %.pre1887.i, %._crit_edge1953.i ] ; 2 uses
  %.31198.i = phi ptr [ %.21197.i, %bb.em ], [ %.pre1889.i, %._crit_edge1953.i ] ; 2 uses
  %.31183.i = phi ptr [ %.21182.i, %bb.em ], [ %.pre1891.i, %._crit_edge1953.i ] ; 2 uses
  %.31168.i = phi ptr [ %.21167.i, %bb.em ], [ %.pre1893.i, %._crit_edge1953.i ] ; 2 uses
  %.21139.i = phi i32 [ %.11138.i, %bb.em ], [ %.pre1869.i, %._crit_edge1953.i ] ; 2 uses
  %.21127.i = phi i32 [ %.11126.i, %bb.em ], [ %.pre1867.i, %._crit_edge1953.i ] ; 2 uses
  %.31104.i = phi i32 [ %.21103.i, %bb.em ], [ %.pre1863.i, %._crit_edge1953.i ] ; 2 uses
  %.31089.i = phi i32 [ %.21088.i, %bb.em ], [ %.pre1861.i, %._crit_edge1953.i ] ; 2 uses
  %.21076.i = phi i32 [ %.11075.i, %bb.em ], [ %.pre1859.i, %._crit_edge1953.i ] ; 2 uses
  %.111064.i = phi i32 [ %.101063.i, %bb.em ], [ %.pre1857.i, %._crit_edge1953.i ] ; 2 uses
  %.121043.i = phi i32 [ %.111042.i, %bb.em ], [ %.pre1855.i, %._crit_edge1953.i ] ; 2 uses
  %.131019.i = phi i32 [ %.121018.i, %bb.em ], [ %.pre1853.i, %._crit_edge1953.i ] ; 2 uses
  %.9996.i = phi i32 [ %.8995.i, %bb.em ], [ %.pre1851.i, %._crit_edge1953.i ] ; 2 uses
  %.17975.i = phi i32 [ %.16974.i, %bb.em ], [ %.pre1849.i, %._crit_edge1953.i ] ; 2 uses
  %.23.i = phi i32 [ %.22.i, %bb.em ], [ %.pre.i36, %._crit_edge1953.i ] ; 2 uses
  store i32 37, ptr %i.g, align 8, !tbaa !19
  %i.bcg = icmp sgt i32 %i.bcf, 0
  br i1 %i.bcg, label %.._crit_edge1637_crit_edge.i, label %.lr.ph1636.i

.._crit_edge1637_crit_edge.i:                     ; preds = %bb.en
  %.pre1958.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1637.i

.lr.ph1636.i:                                     ; preds = %bb.en
  %i.bch = load ptr, ptr %i.d, align 8, !tbaa !17 ; 5 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 8 ; 2 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bch, i64 12 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bch, i64 16 ; 2 uses
  %.pre1956.i = load i32, ptr %i.bci, align 8, !tbaa !87
  br label %bb.eo

._crit_edge1637.i:                                ; preds = %bb.er, %.._crit_edge1637_crit_edge.i
  %i.bcl = phi i32 [ %.pre1958.i, %.._crit_edge1637_crit_edge.i ], [ %i.bcz, %bb.er ]
  %.lcssa1451.i = phi i32 [ %i.bcf, %.._crit_edge1637_crit_edge.i ], [ %i.bda, %bb.er ]
  %i.bcm = add nsw i32 %.lcssa1451.i, -1          ; 3 uses
  %i.bcn = lshr i32 %i.bcl, %i.bcm
  %i.bco = and i32 %i.bcn, 1                      ; 2 uses
  store i32 %i.bcm, ptr %.phi.trans.insert1946.i, align 4, !tbaa !20
  %i.bcp = shl i32 %.11252.i, 1
  %i.bcq = or disjoint i32 %i.bco, %i.bcp
  br label %bb.ek

bb.eo:                                            ; preds = %bb.er, %.lr.ph1636.i
  %i.bcr = phi i32 [ %.pre1956.i, %.lr.ph1636.i ], [ %i.bdc, %bb.er ] ; 2 uses
  %i.bcs = phi i32 [ %i.bcf, %.lr.ph1636.i ], [ %i.bda, %bb.er ] ; 2 uses
  %i.bct = icmp eq i32 %i.bcr, 0
  br i1 %i.bct, label %BZ2_decompress.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bcu = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bcv = shl i32 %i.bcu, 8
  %i.bcw = load ptr, ptr %i.bch, align 8, !tbaa !88 ; 2 uses
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !52
  %i.bcy = zext i8 %i.bcx to i32
  %i.bcz = or disjoint i32 %i.bcv, %i.bcy         ; 2 uses
  store i32 %i.bcz, ptr %i.v, align 8, !tbaa !21
  %i.bda = add nsw i32 %i.bcs, 8                  ; 3 uses
  store i32 %i.bda, ptr %.phi.trans.insert1946.i, align 4, !tbaa !20
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcw, i64 1
  store ptr %i.bdb, ptr %i.bch, align 8, !tbaa !88
  %i.bdc = add i32 %i.bcr, -1                     ; 2 uses
  store i32 %i.bdc, ptr %i.bci, align 8, !tbaa !87
  %i.bdd = load i32, ptr %i.bcj, align 4, !tbaa !22
  %i.bde = add i32 %i.bdd, 1                      ; 2 uses
  store i32 %i.bde, ptr %i.bcj, align 4, !tbaa !22
  %i.bdf = icmp eq i32 %i.bde, 0
  br i1 %i.bdf, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.bdg = load i32, ptr %i.bck, align 8, !tbaa !23
  %i.bdh = add i32 %i.bdg, 1
  store i32 %i.bdh, ptr %i.bck, align 8, !tbaa !23
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.bdi = icmp sgt i32 %i.bcs, -8
  br i1 %i.bdi, label %._crit_edge1637.i, label %bb.eo

bb.es:                                            ; preds = %bb.el
  %i.bdj = getelementptr inbounds [4 x i8], ptr %.21182.i, i64 %i.bbx
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !58
  %i.bdl = sub nsw i32 %.01251.i, %i.bdk          ; 2 uses
  %or.cond.i = icmp ugt i32 %i.bdl, 257
  br i1 %or.cond.i, label %BZ2_decompress.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bdm = zext nneg i32 %i.bdl to i64
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.21167.i, i64 %i.bdm
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !58
  br label %.loopexit1402.i

.loopexit1402.i:                                  ; preds = %.preheader1404.i, %.preheader1401.i, %.loopexit1402.loopexit.i, %.loopexit1402.loopexit1684.i, %bb.gq, %bb.et
  %i.bdp = phi i32 [ %i.bbu, %bb.et ], [ %i.buf, %bb.gq ], [ %i.bfk, %.loopexit1402.loopexit1684.i ], [ %i.bfk, %.loopexit1402.loopexit.i ], [ %i.bfk, %.preheader1401.i ], [ %i.bfk, %.preheader1404.i ] ; 10 uses
  %.01293.i = phi i32 [ %i.bbt, %bb.et ], [ %.61299.i, %bb.gq ], [ %.31296.i, %.loopexit1402.loopexit1684.i ], [ %.31296.i, %.loopexit1402.loopexit.i ], [ %.31296.i, %.preheader1401.i ], [ %.31296.i, %.preheader1404.i ] ; 9 uses
  %.101284.i = phi i32 [ %.81282.i, %bb.et ], [ %.161290.i, %bb.gq ], [ %.131287.i, %.loopexit1402.loopexit1684.i ], [ %.131287.i, %.loopexit1402.loopexit.i ], [ %.131287.i, %.preheader1401.i ], [ %.131287.i, %.preheader1404.i ] ; 10 uses
  %.31265.i = phi i32 [ %.11263.i, %bb.et ], [ %.91271.i, %bb.gq ], [ %.61268.i, %.loopexit1402.loopexit1684.i ], [ %.61268.i, %.loopexit1402.loopexit.i ], [ %.61268.i, %.preheader1401.i ], [ %.61268.i, %.preheader1404.i ] ; 9 uses
  %.21253.i = phi i32 [ %.01251.i, %bb.et ], [ %.81259.i, %bb.gq ], [ %.51256.i, %.loopexit1402.loopexit1684.i ], [ %.51256.i, %.loopexit1402.loopexit.i ], [ %.51256.i, %.preheader1401.i ], [ %.51256.i, %.preheader1404.i ] ; 10 uses
  %.21242.i = phi i32 [ %.01240.i, %bb.et ], [ %.81248.i, %bb.gq ], [ %.51245.i, %.loopexit1402.loopexit1684.i ], [ %.51245.i, %.loopexit1402.loopexit.i ], [ %.51245.i, %.preheader1401.i ], [ %.51245.i, %.preheader1404.i ] ; 10 uses
  %.41229.i = phi i32 [ %.21227.i, %bb.et ], [ %.121237.i, %bb.gq ], [ %.81233.i, %.loopexit1402.loopexit1684.i ], [ %.81233.i, %.loopexit1402.loopexit.i ], [ %.81233.i, %.preheader1401.i ], [ %.81233.i, %.preheader1404.i ] ; 10 uses
  %.41214.i = phi i32 [ %.21212.i, %bb.et ], [ %.121222.i, %bb.gq ], [ %.81218.i, %.loopexit1402.loopexit1684.i ], [ %.81218.i, %.loopexit1402.loopexit.i ], [ %.81218.i, %.preheader1401.i ], [ %.81218.i, %.preheader1404.i ] ; 10 uses
  %.41199.i = phi ptr [ %.21197.i, %bb.et ], [ %.121207.i, %bb.gq ], [ %.81203.i, %.loopexit1402.loopexit1684.i ], [ %.81203.i, %.loopexit1402.loopexit.i ], [ %.81203.i, %.preheader1401.i ], [ %.81203.i, %.preheader1404.i ] ; 10 uses
  %.41184.i = phi ptr [ %.21182.i, %bb.et ], [ %.121192.i, %bb.gq ], [ %.81188.i, %.loopexit1402.loopexit1684.i ], [ %.81188.i, %.loopexit1402.loopexit.i ], [ %.81188.i, %.preheader1401.i ], [ %.81188.i, %.preheader1404.i ] ; 10 uses
  %.41169.i = phi ptr [ %.21167.i, %bb.et ], [ %.121177.i, %bb.gq ], [ %.81173.i, %.loopexit1402.loopexit1684.i ], [ %.81173.i, %.loopexit1402.loopexit.i ], [ %.81173.i, %.preheader1401.i ], [ %.81173.i, %.preheader1404.i ] ; 10 uses
  %.01152.i = phi i32 [ %i.bbs, %bb.et ], [ %.101162.i, %bb.gq ], [ %i.bhx, %.loopexit1402.loopexit1684.i ], [ %i.bib, %.loopexit1402.loopexit.i ], [ %i.bhd, %.preheader1401.i ], [ %i.bhd, %.preheader1404.i ] ; 9 uses
  %.31140.i = phi i32 [ %.11138.i, %bb.et ], [ %.121149.i, %bb.gq ], [ %i.bie, %.loopexit1402.loopexit1684.i ], [ %i.bid, %.loopexit1402.loopexit.i ], [ %.61143.i, %.preheader1401.i ], [ %.61143.i, %.preheader1404.i ] ; 25 uses
  %.31128.i = phi i32 [ %.11126.i, %bb.et ], [ %.91134.i, %bb.gq ], [ %.61131.i, %.loopexit1402.loopexit1684.i ], [ %.61131.i, %.loopexit1402.loopexit.i ], [ %.61131.i, %.preheader1401.i ], [ %.61131.i, %.preheader1404.i ] ; 11 uses
  %.01116.i = phi i32 [ %i.bdo, %bb.et ], [ %i.bvw, %bb.gq ], [ %i.bhb, %.loopexit1402.loopexit1684.i ], [ %i.bhb, %.loopexit1402.loopexit.i ], [ %i.bhb, %.preheader1401.i ], [ %i.bhb, %.preheader1404.i ] ; 22 uses
  %.41105.i = phi i32 [ %.21103.i, %bb.et ], [ %.121113.i, %bb.gq ], [ %.81109.i, %.loopexit1402.loopexit1684.i ], [ %.81109.i, %.loopexit1402.loopexit.i ], [ %.81109.i, %.preheader1401.i ], [ %.81109.i, %.preheader1404.i ] ; 10 uses
  %.41090.i = phi i32 [ %.21088.i, %bb.et ], [ %.121098.i, %bb.gq ], [ %.81094.i, %.loopexit1402.loopexit1684.i ], [ %.81094.i, %.loopexit1402.loopexit.i ], [ %.81094.i, %.preheader1401.i ], [ %.81094.i, %.preheader1404.i ] ; 10 uses
  %.31077.i = phi i32 [ %.11075.i, %bb.et ], [ %.91083.i, %bb.gq ], [ %.61080.i, %.loopexit1402.loopexit1684.i ], [ %.61080.i, %.loopexit1402.loopexit.i ], [ %.61080.i, %.preheader1401.i ], [ %.61080.i, %.preheader1404.i ] ; 5 uses
  %.121065.i = phi i32 [ %.101063.i, %bb.et ], [ %.181071.i, %bb.gq ], [ %.151068.i, %.loopexit1402.loopexit1684.i ], [ %.151068.i, %.loopexit1402.loopexit.i ], [ %.151068.i, %.preheader1401.i ], [ %.151068.i, %.preheader1404.i ] ; 11 uses
  %.131044.i = phi i32 [ %.111042.i, %bb.et ], [ %.191050.i, %bb.gq ], [ %.161047.i, %.loopexit1402.loopexit1684.i ], [ %.161047.i, %.loopexit1402.loopexit.i ], [ %.161047.i, %.preheader1401.i ], [ %.161047.i, %.preheader1404.i ] ; 10 uses
  %.141020.i = phi i32 [ %.121018.i, %bb.et ], [ %.201026.i, %bb.gq ], [ %.171023.i, %.loopexit1402.loopexit1684.i ], [ %.171023.i, %.loopexit1402.loopexit.i ], [ %.171023.i, %.preheader1401.i ], [ %.171023.i, %.preheader1404.i ] ; 10 uses
  %.10997.i = phi i32 [ %.8995.i, %bb.et ], [ %.161003.i, %bb.gq ], [ %.131000.i, %.loopexit1402.loopexit1684.i ], [ %.131000.i, %.loopexit1402.loopexit.i ], [ %.131000.i, %.preheader1401.i ], [ %.131000.i, %.preheader1404.i ] ; 10 uses
  %.18976.i = phi i32 [ %.16974.i, %bb.et ], [ %.24982.i, %bb.gq ], [ %.21979.i, %.loopexit1402.loopexit1684.i ], [ %.21979.i, %.loopexit1402.loopexit.i ], [ %.21979.i, %.preheader1401.i ], [ %.21979.i, %.preheader1404.i ] ; 9 uses
  %.24.i = phi i32 [ %.22.i, %bb.et ], [ %.30.i, %bb.gq ], [ %.27.i, %.loopexit1402.loopexit1684.i ], [ %.27.i, %.loopexit1402.loopexit.i ], [ %.27.i, %.preheader1401.i ], [ %.27.i, %.preheader1404.i ] ; 5 uses
  %i.bdq = icmp eq i32 %.01116.i, %.31077.i
  br i1 %i.bdq, label %bb.gr, label %bb.eu

bb.eu:                                            ; preds = %.loopexit1402.i
  %or.cond7.i = icmp ult i32 %.01116.i, 2
  br i1 %or.cond7.i, label %bb.ev, label %bb.ft

bb.ev:                                            ; preds = %bb.fn, %bb.eu
  %i.bdr = phi i32 [ %i.bfk, %bb.fn ], [ %i.bdp, %bb.eu ] ; 3 uses
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
  %.11117.i = phi i32 [ %i.bhb, %bb.fn ], [ %.01116.i, %bb.eu ] ; 4 uses
  %.51106.i = phi i32 [ %.81109.i, %bb.fn ], [ %.41105.i, %bb.eu ] ; 3 uses
  %.51091.i = phi i32 [ %.81094.i, %bb.fn ], [ %.41090.i, %bb.eu ] ; 3 uses
  %.41078.i = phi i32 [ %.61080.i, %bb.fn ], [ %.31077.i, %bb.eu ] ; 3 uses
  %.131066.i = phi i32 [ %.151068.i, %bb.fn ], [ %.121065.i, %bb.eu ] ; 4 uses
  %.141045.i = phi i32 [ %.161047.i, %bb.fn ], [ %.131044.i, %bb.eu ] ; 3 uses
  %.151021.i = phi i32 [ %.171023.i, %bb.fn ], [ %.141020.i, %bb.eu ] ; 3 uses
  %.11998.i = phi i32 [ %.131000.i, %bb.fn ], [ %.10997.i, %bb.eu ] ; 3 uses
  %.19977.i = phi i32 [ %.21979.i, %bb.fn ], [ %.18976.i, %bb.eu ] ; 3 uses
  %.25.i = phi i32 [ %.27.i, %bb.fn ], [ %.24.i, %bb.eu ] ; 3 uses
  %i.bds = icmp sgt i32 %.11294.i, 2097151
  br i1 %i.bds, label %BZ2_decompress.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %1 = icmp eq i32 %.11117.i, 0
  %i.bdt = shl nsw i32 %.11294.i, 1               ; 3 uses
  %.21154.v.i = select i1 %1, i32 %.11294.i, i32 %i.bdt
  %.21154.i = add nsw i32 %.21154.v.i, %.11153.i  ; 2 uses
  %i.bdu = icmp eq i32 %.51106.i, 0
  br i1 %i.bdu, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.bdv = add nsw i32 %.51091.i, 1               ; 4 uses
  %.not1357.i = icmp slt i32 %i.bdv, %.131066.i
  br i1 %.not1357.i, label %bb.ey, label %BZ2_decompress.exit

bb.ey:                                            ; preds = %bb.ex
  %i.bdw = sext i32 %i.bdv to i64
  %i.bdx = getelementptr inbounds i8, ptr %i.ab, i64 %i.bdw
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !52 ; 2 uses
  %i.bdz = zext i8 %i.bdy to i32
  %i.bea = zext i8 %i.bdy to i64                  ; 4 uses
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bea
  %i.bec = load i32, ptr %i.beb, align 4, !tbaa !58
  %i.bed = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bea
  %i.bee = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bea
  %i.bef = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bea
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ew
  %.61231.i = phi i32 [ %i.bdz, %bb.ey ], [ %.51230.i, %bb.ew ]
  %.61216.i = phi i32 [ %i.bec, %bb.ey ], [ %.51215.i, %bb.ew ] ; 2 uses
  %.61201.i = phi ptr [ %i.bed, %bb.ey ], [ %.51200.i, %bb.ew ]
  %.61186.i = phi ptr [ %i.bef, %bb.ey ], [ %.51185.i, %bb.ew ]
  %.61171.i = phi ptr [ %i.bee, %bb.ey ], [ %.51170.i, %bb.ew ]
  %.61107.i = phi i32 [ 50, %bb.ey ], [ %.51106.i, %bb.ew ]
  %.61092.i = phi i32 [ %i.bdv, %bb.ey ], [ %.51091.i, %bb.ew ]
  %i.beg = add nsw i32 %.61107.i, -1
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.aq
  %i.beh = phi i32 [ %i.bdr, %bb.ez ], [ %.pre1877.i, %bb.aq ] ; 3 uses
  %.21295.i = phi i32 [ %i.bdt, %bb.ez ], [ %.pre1873.i, %bb.aq ] ; 3 uses
  %.121286.i = phi i32 [ %.111285.i, %bb.ez ], [ %.pre1875.i, %bb.aq ] ; 3 uses
  %.51267.i = phi i32 [ %.61216.i, %bb.ez ], [ %.pre1879.i, %bb.aq ] ; 7 uses
  %.41255.i = phi i32 [ %.31254.i, %bb.ez ], [ %.pre1881.i, %bb.aq ] ; 2 uses
  %.41244.i = phi i32 [ %.31243.i, %bb.ez ], [ %.pre1883.i, %bb.aq ] ; 3 uses
  %.71232.i = phi i32 [ %.61231.i, %bb.ez ], [ %.pre1885.i, %bb.aq ] ; 3 uses
  %.71217.i = phi i32 [ %.61216.i, %bb.ez ], [ %.pre1887.i, %bb.aq ] ; 3 uses
  %.71202.i = phi ptr [ %.61201.i, %bb.ez ], [ %.pre1889.i, %bb.aq ] ; 3 uses
  %.71187.i = phi ptr [ %.61186.i, %bb.ez ], [ %.pre1891.i, %bb.aq ] ; 3 uses
  %.71172.i = phi ptr [ %.61171.i, %bb.ez ], [ %.pre1893.i, %bb.aq ] ; 3 uses
  %.31155.i = phi i32 [ %.21154.i, %bb.ez ], [ %.pre1871.i, %bb.aq ] ; 3 uses
  %.51142.i = phi i32 [ %.41141.i, %bb.ez ], [ %.pre1869.i, %bb.aq ] ; 3 uses
  %.51130.i = phi i32 [ %.41129.i, %bb.ez ], [ %.pre1867.i, %bb.aq ] ; 3 uses
  %.21118.i = phi i32 [ %.11117.i, %bb.ez ], [ %.pre1865.i, %bb.aq ] ; 3 uses
  %.71108.i = phi i32 [ %i.beg, %bb.ez ], [ %.pre1863.i, %bb.aq ] ; 3 uses
  %.71093.i = phi i32 [ %.61092.i, %bb.ez ], [ %.pre1861.i, %bb.aq ] ; 3 uses
  %.51079.i = phi i32 [ %.41078.i, %bb.ez ], [ %.pre1859.i, %bb.aq ] ; 3 uses
  %.141067.i = phi i32 [ %.131066.i, %bb.ez ], [ %.pre1857.i, %bb.aq ] ; 3 uses
  %.151046.i = phi i32 [ %.141045.i, %bb.ez ], [ %.pre1855.i, %bb.aq ] ; 3 uses
  %.161022.i = phi i32 [ %.151021.i, %bb.ez ], [ %.pre1853.i, %bb.aq ] ; 3 uses
  %.12999.i = phi i32 [ %.11998.i, %bb.ez ], [ %.pre1851.i, %bb.aq ] ; 3 uses
  %.20978.i = phi i32 [ %.19977.i, %bb.ez ], [ %.pre1849.i, %bb.aq ] ; 3 uses
  %.26.i = phi i32 [ %.25.i, %bb.ez ], [ %.pre.i36, %bb.aq ] ; 3 uses
  store i32 38, ptr %i.g, align 8, !tbaa !19
  %i.bei = load i32, ptr %.phi.trans.insert1946.i, align 4, !tbaa !20 ; 3 uses
  %.not13581601.i = icmp slt i32 %i.bei, %.51267.i
  br i1 %.not13581601.i, label %.lr.ph1603.i, label %.._crit_edge1604_crit_edge.i

.._crit_edge1604_crit_edge.i:                     ; preds = %bb.fa
  %.pre1944.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1604.i

.lr.ph1603.i:                                     ; preds = %bb.fa
  %i.bej = load ptr, ptr %i.d, align 8, !tbaa !17 ; 5 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 8 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bej, i64 12 ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 16 ; 2 uses
  %.pre1942.i = load i32, ptr %i.bek, align 8, !tbaa !87 ; 2 uses
  %i.ben = icmp eq i32 %.pre1942.i, 0
  br i1 %i.ben, label %BZ2_decompress.exit, label %.lr.ph510.preheader

.lr.ph510.preheader:                              ; preds = %.lr.ph1603.i
  %.promoted849 = load ptr, ptr %i.bej, align 8, !tbaa !88
  %.promoted850 = load i32, ptr %i.bel, align 4, !tbaa !22
  br label %.lr.ph510

._crit_edge1604.i:                                ; preds = %bb.fd, %.._crit_edge1604_crit_edge.i
  %i.beo = phi i32 [ %.pre1944.i, %.._crit_edge1604_crit_edge.i ], [ %i.bfc, %bb.fd ]
  %.lcssa1468.i = phi i32 [ %i.bei, %.._crit_edge1604_crit_edge.i ], [ %i.bfd, %bb.fd ]
  %i.bep = sub nsw i32 %.lcssa1468.i, %.51267.i   ; 3 uses
  %i.beq = lshr i32 %i.beo, %i.bep
  %notmask1359.i = shl nsw i32 -1, %.51267.i
  %i.ber = xor i32 %notmask1359.i, -1
  %i.bes = and i32 %i.beq, %i.ber
  store i32 %i.bep, ptr %.phi.trans.insert1946.i, align 4, !tbaa !20
  br label %bb.fe

bb.fb:                                            ; preds = %bb.fd
  %i.bet = icmp eq i32 %i.bff, 0
  br i1 %i.bet, label %BZ2_decompress.exit, label %.lr.ph510

.lr.ph510:                                        ; preds = %.lr.ph510.preheader, %bb.fb
  %i.beu = phi i32 [ %i.bfg, %bb.fb ], [ %.promoted850, %.lr.ph510.preheader ]
  %i.bev = phi ptr [ %i.bfe, %bb.fb ], [ %.promoted849, %.lr.ph510.preheader ] ; 2 uses
  %i.bew = phi i32 [ %i.bfd, %bb.fb ], [ %i.bei, %.lr.ph510.preheader ]
  %i.bex = phi i32 [ %i.bff, %bb.fb ], [ %.pre1942.i, %.lr.ph510.preheader ]
  %i.bey = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bez = shl i32 %i.bey, 8
  %i.bfa = load i8, ptr %i.bev, align 1, !tbaa !52
  %i.bfb = zext i8 %i.bfa to i32
  %i.bfc = or disjoint i32 %i.bez, %i.bfb         ; 2 uses
  store i32 %i.bfc, ptr %i.v, align 8, !tbaa !21
  %i.bfd = add nsw i32 %i.bew, 8                  ; 4 uses
  store i32 %i.bfd, ptr %.phi.trans.insert1946.i, align 4, !tbaa !20
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bev, i64 1 ; 2 uses
  store ptr %i.bfe, ptr %i.bej, align 8, !tbaa !88
  %i.bff = add i32 %i.bex, -1                     ; 3 uses
  store i32 %i.bff, ptr %i.bek, align 8, !tbaa !87
  %i.bfg = add i32 %i.beu, 1                      ; 3 uses
  store i32 %i.bfg, ptr %i.bel, align 4, !tbaa !22
  %i.bfh = icmp eq i32 %i.bfg, 0
  br i1 %i.bfh, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph510
  %i.bfi = load i32, ptr %i.bem, align 8, !tbaa !23
  %i.bfj = add i32 %i.bfi, 1
  store i32 %i.bfj, ptr %i.bem, align 8, !tbaa !23
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph510
  %.not1358.i = icmp slt i32 %i.bfd, %.51267.i
  br i1 %.not1358.i, label %bb.fb, label %._crit_edge1604.i

bb.fe:                                            ; preds = %._crit_edge1619.i, %._crit_edge1604.i
  %i.bfk = phi i32 [ %i.beh, %._crit_edge1604.i ], [ %i.bfr, %._crit_edge1619.i ] ; 10 uses
  %i.bfl = phi i32 [ %i.bep, %._crit_edge1604.i ], [ %i.bfz, %._crit_edge1619.i ]
  %.31296.i = phi i32 [ %.21295.i, %._crit_edge1604.i ], [ %.41297.i, %._crit_edge1619.i ] ; 10 uses
  %.131287.i = phi i32 [ %.121286.i, %._crit_edge1604.i ], [ %.141288.i, %._crit_edge1619.i ] ; 10 uses
  %.61268.i = phi i32 [ %.51267.i, %._crit_edge1604.i ], [ %.71269.i, %._crit_edge1619.i ] ; 12 uses
  %.51256.i = phi i32 [ %i.bes, %._crit_edge1604.i ], [ %i.bgd, %._crit_edge1619.i ] ; 12 uses
  %.51245.i = phi i32 [ %.41244.i, %._crit_edge1604.i ], [ %i.bgb, %._crit_edge1619.i ] ; 10 uses
  %.81233.i = phi i32 [ %.71232.i, %._crit_edge1604.i ], [ %.91234.i, %._crit_edge1619.i ] ; 10 uses
  %.81218.i = phi i32 [ %.71217.i, %._crit_edge1604.i ], [ %.91219.i, %._crit_edge1619.i ] ; 10 uses
  %.81203.i = phi ptr [ %.71202.i, %._crit_edge1604.i ], [ %.91204.i, %._crit_edge1619.i ] ; 11 uses
  %.81188.i = phi ptr [ %.71187.i, %._crit_edge1604.i ], [ %.91189.i, %._crit_edge1619.i ] ; 11 uses
  %.81173.i = phi ptr [ %.71172.i, %._crit_edge1604.i ], [ %.91174.i, %._crit_edge1619.i ] ; 11 uses
  %.41156.i = phi i32 [ %.31155.i, %._crit_edge1604.i ], [ %.51157.i, %._crit_edge1619.i ] ; 6 uses
  %.61143.i = phi i32 [ %.51142.i, %._crit_edge1604.i ], [ %.71144.i, %._crit_edge1619.i ] ; 10 uses
  %.61131.i = phi i32 [ %.51130.i, %._crit_edge1604.i ], [ %.71132.i, %._crit_edge1619.i ] ; 12 uses
  %.31119.i = phi i32 [ %.21118.i, %._crit_edge1604.i ], [ %.41120.i, %._crit_edge1619.i ] ; 3 uses
  %.81109.i = phi i32 [ %.71108.i, %._crit_edge1604.i ], [ %.91110.i, %._crit_edge1619.i ] ; 10 uses
  %.81094.i = phi i32 [ %.71093.i, %._crit_edge1604.i ], [ %.91095.i, %._crit_edge1619.i ] ; 10 uses
  %.61080.i = phi i32 [ %.51079.i, %._crit_edge1604.i ], [ %.71081.i, %._crit_edge1619.i ] ; 10 uses
  %.151068.i = phi i32 [ %.141067.i, %._crit_edge1604.i ], [ %.161069.i, %._crit_edge1619.i ] ; 10 uses
  %.161047.i = phi i32 [ %.151046.i, %._crit_edge1604.i ], [ %.171048.i, %._crit_edge1619.i ] ; 10 uses
  %.171023.i = phi i32 [ %.161022.i, %._crit_edge1604.i ], [ %.181024.i, %._crit_edge1619.i ] ; 10 uses
  %.131000.i = phi i32 [ %.12999.i, %._crit_edge1604.i ], [ %.141001.i, %._crit_edge1619.i ] ; 10 uses
  %.21979.i = phi i32 [ %.20978.i, %._crit_edge1604.i ], [ %.22980.i, %._crit_edge1619.i ] ; 10 uses
  %.27.i = phi i32 [ %.26.i, %._crit_edge1604.i ], [ %.28.i, %._crit_edge1619.i ] ; 10 uses
  %i.bfm = icmp sgt i32 %.61268.i, 20
  br i1 %i.bfm, label %BZ2_decompress.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bfn = sext i32 %.61268.i to i64              ; 2 uses
  %i.bfo = getelementptr inbounds [4 x i8], ptr %.81203.i, i64 %i.bfn
  %i.bfp = load i32, ptr %i.bfo, align 4, !tbaa !58
  %.not1360.i = icmp sgt i32 %.51256.i, %i.bfp
  br i1 %.not1360.i, label %bb.fg, label %bb.fm

bb.fg:                                            ; preds = %bb.ff
  %i.bfq = add nsw i32 %.61268.i, 1
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %._crit_edge1945.i
  %i.bfr = phi i32 [ %i.bfk, %bb.fg ], [ %.pre1877.i, %._crit_edge1945.i ] ; 2 uses
  %i.bfs = phi i32 [ %i.bfl, %bb.fg ], [ %.pre1947.i, %._crit_edge1945.i ] ; 3 uses
  %.41297.i = phi i32 [ %.31296.i, %bb.fg ], [ %.pre1873.i, %._crit_edge1945.i ] ; 2 uses
  %.141288.i = phi i32 [ %.131287.i, %bb.fg ], [ %.pre1875.i, %._crit_edge1945.i ] ; 2 uses
  %.71269.i = phi i32 [ %i.bfq, %bb.fg ], [ %.pre1879.i, %._crit_edge1945.i ] ; 2 uses
  %.61257.i = phi i32 [ %.51256.i, %bb.fg ], [ %.pre1881.i, %._crit_edge1945.i ] ; 2 uses
  %.61246.i = phi i32 [ %.51245.i, %bb.fg ], [ %.pre1883.i, %._crit_edge1945.i ]
  %.91234.i = phi i32 [ %.81233.i, %bb.fg ], [ %.pre1885.i, %._crit_edge1945.i ] ; 2 uses
  %.91219.i = phi i32 [ %.81218.i, %bb.fg ], [ %.pre1887.i, %._crit_edge1945.i ] ; 2 uses
  %.91204.i = phi ptr [ %.81203.i, %bb.fg ], [ %.pre1889.i, %._crit_edge1945.i ] ; 2 uses
  %.91189.i = phi ptr [ %.81188.i, %bb.fg ], [ %.pre1891.i, %._crit_edge1945.i ] ; 2 uses
  %.91174.i = phi ptr [ %.81173.i, %bb.fg ], [ %.pre1893.i, %._crit_edge1945.i ] ; 2 uses
  %.51157.i = phi i32 [ %.41156.i, %bb.fg ], [ %.pre1871.i, %._crit_edge1945.i ] ; 2 uses
  %.71144.i = phi i32 [ %.61143.i, %bb.fg ], [ %.pre1869.i, %._crit_edge1945.i ] ; 2 uses
  %.71132.i = phi i32 [ %.61131.i, %bb.fg ], [ %.pre1867.i, %._crit_edge1945.i ] ; 2 uses
  %.41120.i = phi i32 [ %.31119.i, %bb.fg ], [ %.pre1865.i, %._crit_edge1945.i ] ; 2 uses
  %.91110.i = phi i32 [ %.81109.i, %bb.fg ], [ %.pre1863.i, %._crit_edge1945.i ] ; 2 uses
  %.91095.i = phi i32 [ %.81094.i, %bb.fg ], [ %.pre1861.i, %._crit_edge1945.i ] ; 2 uses
  %.71081.i = phi i32 [ %.61080.i, %bb.fg ], [ %.pre1859.i, %._crit_edge1945.i ] ; 2 uses
  %.161069.i = phi i32 [ %.151068.i, %bb.fg ], [ %.pre1857.i, %._crit_edge1945.i ] ; 2 uses
  %.171048.i = phi i32 [ %.161047.i, %bb.fg ], [ %.pre1855.i, %._crit_edge1945.i ] ; 2 uses
  %.181024.i = phi i32 [ %.171023.i, %bb.fg ], [ %.pre1853.i, %._crit_edge1945.i ] ; 2 uses
  %.141001.i = phi i32 [ %.131000.i, %bb.fg ], [ %.pre1851.i, %._crit_edge1945.i ] ; 2 uses
  %.22980.i = phi i32 [ %.21979.i, %bb.fg ], [ %.pre1849.i, %._crit_edge1945.i ] ; 2 uses
  %.28.i = phi i32 [ %.27.i, %bb.fg ], [ %.pre.i36, %._crit_edge1945.i ] ; 2 uses
  store i32 39, ptr %i.g, align 8, !tbaa !19
  %i.bft = icmp sgt i32 %i.bfs, 0
  br i1 %i.bft, label %.._crit_edge1619_crit_edge.i, label %.lr.ph1618.i

.._crit_edge1619_crit_edge.i:                     ; preds = %bb.fh
  %.pre1950.i = load i32, ptr %i.v, align 8, !tbaa !21
end_hunk_0
