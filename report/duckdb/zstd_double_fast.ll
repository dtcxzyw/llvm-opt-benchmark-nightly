inline.NumInlined: 454
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11duckdb_zstd29ZSTD_compressBlock_doubleFastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.348.i148.i759 = phi ptr [ %i.bzw, %bb.os ], [ %.247.i146.i757, %bb.or ], [ %.247.i146.i757, %.loopexit.i144.i755 ] ; 5 uses
  %i.bzy = icmp ult ptr %.348.i148.i759, %i.big
  br i1 %i.bzy, label %bb.ou, label %bb.ow

bb.ou:                                            ; preds = %bb.ot
  %.352.val.i155.i774 = load i16, ptr %.352.i147.i758, align 1, !tbaa !35
  %.348.val.i156.i775 = load i16, ptr %.348.i148.i759, align 1, !tbaa !35
  %i.bzz = icmp eq i16 %.352.val.i155.i774, %.348.val.i156.i775
  br i1 %i.bzz, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  %i.caa = getelementptr inbounds nuw i8, ptr %.348.i148.i759, i64 2
  %i.cab = getelementptr inbounds nuw i8, ptr %.352.i147.i758, i64 2
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou, %bb.ot
  %.453.i149.i760 = phi ptr [ %i.cab, %bb.ov ], [ %.352.i147.i758, %bb.ou ], [ %.352.i147.i758, %bb.ot ]
  %.4.i150.i761 = phi ptr [ %i.caa, %bb.ov ], [ %.348.i148.i759, %bb.ou ], [ %.348.i148.i759, %bb.ot ] ; 4 uses
  %i.cac = icmp ult ptr %.4.i150.i761, %i.z
  br i1 %i.cac, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.cad = load i8, ptr %.453.i149.i760, align 1, !tbaa !37
  %i.cae = load i8, ptr %.4.i150.i761, align 1, !tbaa !37
  %i.caf = icmp eq i8 %i.cad, %i.cae
  %spec.select.idx.i153.i772 = zext i1 %i.caf to i64
  %spec.select.i154.i773 = getelementptr inbounds nuw i8, ptr %.4.i150.i761, i64 %spec.select.idx.i153.i772
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %.5.i151.i762 = phi ptr [ %.4.i150.i761, %bb.ow ], [ %spec.select.i154.i773, %bb.ox ]
  %i.cag = ptrtoint ptr %.5.i151.i762 to i64
  %i.cah = ptrtoint ptr %i.bzg to i64
  %i.cai = sub i64 %i.cag, %i.cah
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit171.i763

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit171.i763: ; preds = %bb.oy, %.thread63.i170.i789, %bb.op
  %.3.i152.i764 = phi i64 [ %i.bzt, %.thread63.i170.i789 ], [ %i.cai, %bb.oy ], [ %i.bzl, %bb.op ] ; 2 uses
  %i.caj = ptrtoint ptr %.1.i367.i746 to i64
  %i.cak = sub i64 %i.caj, %i.k
  %i.cal = trunc i64 %i.cak to i32                ; 2 uses
  %.1.i.val18.i765 = load i64, ptr %.1.i367.i746, align 1, !tbaa !26 ; 2 uses
  %i.cam = mul i64 %.1.i.val18.i765, -3523014627193167104
  %i.can = lshr i64 %i.cam, %i.bid
  %i.cao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.can
  store i32 %i.cal, ptr %i.cao, align 4, !tbaa !3
  %i.cap = mul i64 %.1.i.val18.i765, -3523014627327384477
  %i.caq = lshr i64 %i.cap, %i.bib
  %i.car = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.caq
  store i32 %i.cal, ptr %i.car, align 4, !tbaa !3
  %.not.i7.i766 = icmp ugt ptr %.1.i367.i746, %i.bih
  br i1 %.not.i7.i766, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit186.i769, label %bb.oz

bb.oz:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit171.i763
  %i.cas = load ptr, ptr %i.bii, align 8, !tbaa !38
  %.1.i.val33.i767 = load <2 x i64>, ptr %.1.i367.i746, align 1, !tbaa !37
  store <2 x i64> %.1.i.val33.i767, ptr %i.cas, align 1, !tbaa !37
  %.pre469.i768 = load ptr, ptr %i.bil, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit186.i769

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit186.i769: ; preds = %bb.oz, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit171.i763
  %i.cat = phi ptr [ %i.byz, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit171.i763 ], [ %.pre469.i768, %bb.oz ] ; 5 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 4
  store i16 0, ptr %i.cau, align 4, !tbaa !55
  store i32 1, ptr %i.cat, align 4, !tbaa !57
  %i.cav = add i64 %.3.i152.i764, 1               ; 2 uses
  %i.caw = icmp ugt i64 %i.cav, 65535
  br i1 %i.caw, label %bb.pa, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit8.i770

bb.pa:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit186.i769
  store i32 2, ptr %i.bik, align 8, !tbaa !52
  %i.cax = load ptr, ptr %1, align 8, !tbaa !53
  %i.cay = ptrtoint ptr %i.cat to i64
  %i.caz = ptrtoint ptr %i.cax to i64
  %i.cba = sub i64 %i.cay, %i.caz
  %i.cbb = lshr exact i64 %i.cba, 3
  %i.cbc = trunc i64 %i.cbb to i32
  store i32 %i.cbc, ptr %i.bim, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit8.i770

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit8.i770: ; preds = %bb.pa, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit186.i769
  %i.cbd = trunc i64 %i.cav to i16
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cat, i64 6
  store i16 %i.cbd, ptr %i.cbe, align 2, !tbaa !65
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cat, i64 8 ; 2 uses
  store ptr %i.cbf, ptr %i.bil, align 8, !tbaa !42
  %i.cbg = getelementptr i8, ptr %.1.i367.i746, i64 %.3.i152.i764
  %i.cbh = getelementptr i8, ptr %i.cbg, i64 4    ; 3 uses
  %.not315.i.i771 = icmp ugt ptr %i.cbh, %i.aa
  br i1 %.not315.i.i771, label %.critedge7.i.i751, label %bb.om

.critedge7.i.i751:                                ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit8.i770, %bb.om, %.critedge.i.i734
  %.4257.i.i752 = phi i32 [ %.2255.i.i739, %.critedge.i.i734 ], [ %.3256.i365.i748, %bb.om ], [ %.3.i366.i747, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit8.i770 ] ; 2 uses
  %.4.i.i753 = phi i32 [ %.2251.i.i740, %.critedge.i.i734 ], [ %.3.i366.i747, %bb.om ], [ %.3256.i365.i748, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit8.i770 ] ; 2 uses
  %.2.i.i754 = phi ptr [ %i.byb, %.critedge.i.i734 ], [ %.1.i367.i746, %bb.om ], [ %i.cbh, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit8.i770 ] ; 4 uses
  %i.cbi = getelementptr inbounds nuw i8, ptr %.2.i.i754, i64 1 ; 2 uses
  %i.cbj = icmp ugt ptr %i.cbi, %i.aa
  br i1 %i.cbj, label %_ZN11duckdb_zstdL38ZSTD_compressBlock_doubleFast_noDict_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %bb.lc, !llvm.loop !66

_ZN11duckdb_zstdL38ZSTD_compressBlock_doubleFast_noDict_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit: ; preds = %.critedge7.i.i429, %bb.ix, %bb.hi, %.critedge7.i.i108, %bb.ex, %bb.di, %.critedge7.i.i751, %bb.mx, %bb.li, %.critedge7.i.i, %bb.ax, %bb.i, %bb.lb, %bb.hb, %bb.db, %bb.b
  %.1250.i314.i695.sink2259 = phi i32 [ %.1250.i370.fr.i32, %bb.ex ], [ %.1250.i370.fr.i675, %bb.mx ], [ 0, %bb.hi ], [ %.4.i.i110, %.critedge7.i.i108 ], [ %.1250.i370.fr.i, %bb.ax ], [ %.0249.i.i, %bb.b ], [ 0, %bb.li ], [ %.4.i.i, %.critedge7.i.i ], [ %.0249.i.i, %bb.db ], [ 0, %bb.di ], [ %.4.i.i753, %.critedge7.i.i751 ], [ %.0249.i.i, %bb.hb ], [ 0, %bb.i ], [ %.1250.i370.fr.i353, %bb.ix ], [ %.0249.i.i, %bb.lb ], [ %.4.i.i431, %.critedge7.i.i429 ] ; 2 uses
  %.1254.i316.i694.sink2257 = phi i32 [ %.1254.i369.i30, %bb.ex ], [ %.1254.i369.i673, %bb.mx ], [ %.1254.i369.i351, %bb.hi ], [ %.4257.i.i109, %.critedge7.i.i108 ], [ %.1254.i369.i, %bb.ax ], [ %spec.select318.i.i, %bb.b ], [ %.1254.i369.i673, %bb.li ], [ %.4257.i.i, %.critedge7.i.i ], [ %spec.select318.i.i, %bb.db ], [ %.1254.i369.i30, %bb.di ], [ %.4257.i.i752, %.critedge7.i.i751 ], [ %spec.select318.i.i, %bb.hb ], [ %.1254.i369.i, %bb.i ], [ %.1254.i369.i351, %bb.ix ], [ %spec.select318.i.i, %bb.lb ], [ %.4257.i.i430, %.critedge7.i.i429 ] ; 2 uses
  %.0248.i312.i696.sink = phi ptr [ %.0248.i372.i28, %bb.ex ], [ %.0248.i372.i671, %bb.mx ], [ %.0248.i372.i349, %bb.hi ], [ %.2.i.i111, %.critedge7.i.i108 ], [ %.0248.i372.i, %bb.ax ], [ %3, %bb.b ], [ %.0248.i372.i671, %bb.li ], [ %.2.i.i, %.critedge7.i.i ], [ %3, %bb.db ], [ %.0248.i372.i28, %bb.di ], [ %.2.i.i754, %.critedge7.i.i751 ], [ %3, %bb.hb ], [ %.0248.i372.i, %bb.i ], [ %.0248.i372.i349, %bb.ix ], [ %3, %bb.lb ], [ %.2.i.i432, %.critedge7.i.i429 ]
  %.0258.i.i697 = select i1 %i.ar, i32 %i.ab, i32 0
  %spec.select.i.i698 = select i1 %i.aq, i32 %i.ad, i32 0
  %i.cbk = icmp ne i32 %.1250.i314.i695.sink2259, 0 ; 2 uses
  %or.cond.i.i699 = select i1 %i.ar, i1 %i.cbk, i1 false
  %i.cbl = select i1 %or.cond.i.i699, i32 %i.ab, i32 %spec.select.i.i698
  %i.cbm = select i1 %i.cbk, i32 %.1250.i314.i695.sink2259, i32 %.0258.i.i697
  store i32 %i.cbm, ptr %2, align 4, !tbaa !3
  %.not317.i.i700 = icmp eq i32 %.1254.i316.i694.sink2257, 0
  %i.cbn = select i1 %.not317.i.i700, i32 %i.cbl, i32 %.1254.i316.i694.sink2257
  store i32 %i.cbn, ptr %i.ac, align 4, !tbaa !3
  %i.cbo = ptrtoint ptr %i.z to i64
  %i.cbp = ptrtoint ptr %.0248.i312.i696.sink to i64
  %i.cbq = sub i64 %i.cbo, %i.cbp
  ret i64 %i.cbq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd44ZSTD_compressBlock_doubleFast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 20 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 26 uses
  %i.n = ptrtoint ptr %3 to i64                   ; 6 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 17 uses
  %i.p = add i64 %4, %i.n
  %i.q = sub i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !31
  %i.t = getelementptr i8, ptr %0, i64 24
  %.val28.i = load i32, ptr %i.t, align 8, !tbaa !32 ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 40
  %.val29.i = load i32, ptr %i.u, align 8, !tbaa !33
  %i.v = shl nuw i32 1, %i.s                      ; 2 uses
  %i.w = sub i32 %i.r, %.val28.i
  %i.x = icmp ugt i32 %i.w, %i.v
  %i.y = sub i32 %i.r, %i.v
  %.not.i35.i = icmp eq i32 %.val29.i, 0
  %i.z = select i1 %.not.i35.i, i1 %i.x, i1 false
  %i.aa = select i1 %i.z, i32 %i.y, i32 %.val28.i ; 30 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab ; 37 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 58 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 12 uses
  %i.af = load i32, ptr %2, align 4, !tbaa !3     ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !91 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7  ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !32 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 22 uses
  %i.as = zext i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as ; 17 uses
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !92 ; 21 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %.neg.i.i = sub i64 %i.aw, %i.av
  %.neg448.i.i = trunc i64 %.neg.i.i to i32
  %i.ax = add i32 %i.aa, %.neg448.i.i             ; 20 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !25 ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 260
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !24 ; 12 uses
  %i.bc = ptrtoint ptr %i.ac to i64
  %i.bd = ptrtoint ptr %i.at to i64
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = sub i64 %i.n, %i.be
  %i.bg = add i64 %i.bf, %i.av                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !93
  %.not.i.i = icmp eq i32 %i.bi, 0                ; 4 uses
  switch i32 %i.b, label %bb.b [
    i32 7, label %bb.jr
    i32 5, label %bb.cp
    i32 6, label %bb.gd
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = zext nneg i32 %i.az to i64
  %i.bk = shl i64 4, %i.bj
  %i.bl = zext nneg i32 %i.bb to i64
  %i.bm = shl i64 4, %i.bl
  %.not251.i = icmp ugt i32 %i.az, 61
  br i1 %.not251.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.c
  %.not252.i = icmp ugt i32 %i.bb, 61
  br i1 %.not252.i, label %.loopexit.i, label %.lr.ph185.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0396.i183.i = phi i64 [ %i.bo, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0396.i183.i
  tail call void @llvm.prefetch.p0(ptr %i.bn, i32 0, i32 2, i32 1)
  %i.bo = add i64 %.0396.i183.i, 64               ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bk
  br i1 %i.bp, label %.lr.ph.i, label %.preheader.i, !llvm.loop !94

.lr.ph185.i:                                      ; preds = %.preheader.i, %.lr.ph185.i
  %.0397.i184.i = phi i64 [ %i.br, %.lr.ph185.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0397.i184.i
  tail call void @llvm.prefetch.p0(ptr %i.bq, i32 0, i32 2, i32 1)
  %i.br = add i64 %.0397.i184.i, 64               ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bm
  br i1 %i.bs, label %.lr.ph185.i, label %.loopexit.i, !llvm.loop !95

.loopexit.i:                                      ; preds = %.lr.ph185.i, %.preheader.i, %bb.b
  %i.bt = and i64 %i.bg, 4294967295
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = zext i1 %i.bu to i64                    ; 2 uses
  %i.bw = add nsw i64 %4, -8
  %i.bx = icmp sgt i64 %i.bw, %i.bv
  br i1 %i.bx, label %.lr.ph247.i, label %_ZN11duckdb_zstdL46ZSTD_compressBlock_doubleFast_dictMatchState_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

.lr.ph247.i:                                      ; preds = %.loopexit.i
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %i.bv
  %i.bz = sub i32 64, %i.g
  %i.ca = zext nneg i32 %i.bz to i64              ; 5 uses
  %i.cb = sub i32 32, %i.k                        ; 4 uses
  %i.cc = sub i32 56, %i.az
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = sub i32 24, %i.bb
  %i.cf = add i32 %i.aa, -1                       ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 -7 ; 6 uses
  %i.ch = getelementptr inbounds i8, ptr %i.ad, i64 -3 ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ad, i64 -32 ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 4 uses
  %i.cp = zext i32 %i.ax to i64
  %i.cq = sub nsw i64 0, %i.cp
  %invariant.gep.i = getelementptr i8, ptr %i.ar, i64 %i.cq
  br label %bb.d

bb.d:                                             ; preds = %.thread155.i, %.lr.ph247.i
  %.0.i246.i = phi ptr [ %i.by, %.lr.ph247.i ], [ %.17.i.i, %.thread155.i ] ; 26 uses
  %.0379.i245.i = phi ptr [ %3, %.lr.ph247.i ], [ %.4383.i.i, %.thread155.i ] ; 28 uses
  %.0384.i243.i = phi i32 [ %i.af, %.lr.ph247.i ], [ %.5389.i.i, %.thread155.i ] ; 6 uses
  %.0390.i242.i = phi i32 [ %i.ah, %.lr.ph247.i ], [ %.5395.i.i, %.thread155.i ] ; 3 uses
  %.0.i.val27.i = load i64, ptr %.0.i246.i, align 1 ; 4 uses
  %i.cr = mul i64 %.0.i.val27.i, -3523014627327384477 ; 2 uses
  %i.cs = lshr i64 %i.cr, %i.ca
  %i.ct = trunc i64 %.0.i.val27.i to i32
  %i.cu = mul i32 %i.ct, -1640531535              ; 2 uses
  %i.cv = lshr i32 %i.cu, %i.cb
  %i.cw = zext i32 %i.cv to i64
  %i.cx = lshr i64 %i.cr, %i.cd                   ; 2 uses
  %i.cy = lshr i32 %i.cu, %i.ce                   ; 2 uses
  %i.cz = lshr i64 %i.cx, 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3  ; 2 uses
  %i.dc = lshr i32 %i.cy, 8
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %i.dg = zext i32 %i.db to i64
  %i.dh = xor i64 %i.cx, %i.dg
  %i.di = and i64 %i.dh, 255
  %.not.i = icmp eq i64 %i.di, 0
  %i.dj = xor i32 %i.cy, %i.df
  %i.dk = and i32 %i.dj, 255
  %.not161.i = icmp eq i32 %i.dk, 0
  %i.dl = ptrtoint ptr %.0.i246.i to i64          ; 7 uses
  %i.dm = sub i64 %i.dl, %i.o
  %i.dn = trunc i64 %i.dm to i32                  ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cs ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3  ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cw ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3  ; 3 uses
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ds ; 4 uses
  %i.du = zext i32 %i.dr to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.du ; 2 uses
  %i.dw = add i32 %i.dn, 1                        ; 3 uses
  %i.dx = sub i32 %i.dw, %.0384.i243.i            ; 4 uses
  %i.dy = icmp ult i32 %i.dx, %i.aa               ; 2 uses
  %i.dz = sub i32 %i.dx, %i.ax
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ea
  %i.ec = zext i32 %i.dx to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ec
  %i.ee = select i1 %i.dy, ptr %i.eb, ptr %i.ed   ; 2 uses
  store i32 %i.dn, ptr %i.dq, align 4, !tbaa !3
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  %i.ef = sub i32 %i.cf, %i.dx
  %i.eg = icmp ugt i32 %i.ef, 2
  br i1 %i.eg, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %.val4.i = load i32, ptr %i.ee, align 1, !tbaa !3
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i246.i, i64 1 ; 6 uses
  %.val.i = load i32, ptr %i.eh, align 1, !tbaa !3
  %i.ei = icmp eq i32 %.val4.i, %.val.i
  br i1 %i.ei, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.ej = select i1 %i.dy, ptr %i.au, ptr %i.ad
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i246.i, i64 5
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.em = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.ek, ptr noundef nonnull %i.el, ptr noundef %i.ad, ptr noundef %i.ej, ptr noundef %i.ac) ; 2 uses
  %i.en = add i64 %i.em, 4                        ; 2 uses
  %i.eo = ptrtoint ptr %i.eh to i64
  %i.ep = ptrtoint ptr %.0379.i245.i to i64       ; 2 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 7 uses
  %.not.i474.i.i = icmp ugt ptr %i.eh, %i.cj
  %i.er = load ptr, ptr %i.ck, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i474.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0379.i.val.i = load <2 x i64>, ptr %.0379.i245.i, align 1, !tbaa !37
  store <2 x i64> %.0379.i.val.i, ptr %i.er, align 1, !tbaa !37
  %i.es = icmp ugt i64 %i.eq, 16
  %i.et = load ptr, ptr %i.ck, align 8, !tbaa !38 ; 4 uses
  br i1 %i.es, label %bb.h, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i: ; preds = %bb.g
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eq
  store ptr %i.eu, ptr %i.ck, align 8, !tbaa !38
  %.pre277.i = load ptr, ptr %i.cn, align 8, !tbaa !42
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.0379.i245.i, i64 16 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.et, i64 %i.eq
  %.val31.i = load <2 x i64>, ptr %i.ew, align 1, !tbaa !37
  store <2 x i64> %.val31.i, ptr %i.ev, align 1, !tbaa !37
  %i.ey = icmp slt i64 %i.eq, 33
  br i1 %i.ey, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.130.i.i.i = phi ptr [ %i.ez, %bb.i ], [ %i.fc, %bb.j ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.ew, %bb.i ], [ %i.fb, %bb.j ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.1.i.i.val.i = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !37
  store <2 x i64> %.1.i.i.val.i, ptr %.130.i.i.i, align 1, !tbaa !37
  %i.fa = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val30.i = load <2 x i64>, ptr %i.fb, align 1, !tbaa !37
  store <2 x i64> %.val30.i, ptr %i.fa, align 1, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.fd = icmp ult ptr %i.fc, %i.ex
  br i1 %i.fd, label %bb.j, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !43

bb.k:                                             ; preds = %bb.f
  %.not.i36.i = icmp ugt ptr %.0379.i245.i, %i.cj
  br i1 %.not.i36.i, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fe = sub i64 %i.cl, %i.ep                    ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.er, i64 %i.fe ; 3 uses
  %.val19.i.i = load <2 x i64>, ptr %.0379.i245.i, align 1, !tbaa !37
  store <2 x i64> %.val19.i.i, ptr %i.er, align 1, !tbaa !37
  %i.fg = icmp slt i64 %i.fe, 17
  br i1 %i.fg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.130.i.i37.i = phi ptr [ %i.fh, %bb.m ], [ %i.fk, %bb.n ] ; 3 uses
  %.pn.i.i38.i = phi ptr [ %.0379.i245.i, %bb.m ], [ %i.fj, %bb.n ] ; 2 uses
  %.1.i.i39.i = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i, i64 16
  %.1.i.val.i.i = load <2 x i64>, ptr %.1.i.i39.i, align 1, !tbaa !37
  store <2 x i64> %.1.i.val.i.i, ptr %.130.i.i37.i, align 1, !tbaa !37
  %i.fi = getelementptr inbounds nuw i8, ptr %.130.i.i37.i, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i, i64 32 ; 2 uses
  %.val.i.i = load <2 x i64>, ptr %i.fj, align 1, !tbaa !37
  store <2 x i64> %.val.i.i, ptr %i.fi, align 1, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %.130.i.i37.i, i64 32 ; 2 uses
  %i.fl = icmp ult ptr %i.fk, %i.ff
  br i1 %i.fl, label %bb.n, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i, !llvm.loop !43

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i: ; preds = %bb.n, %bb.l, %bb.k
  %.014.i.i = phi ptr [ %.0379.i245.i, %bb.k ], [ %i.cj, %bb.l ], [ %i.cj, %bb.n ] ; 7 uses
  %.0.i41.i = phi ptr [ %i.er, %bb.k ], [ %i.ff, %bb.l ], [ %i.ff, %bb.n ] ; 6 uses
  %i.fm = icmp ult ptr %.014.i.i, %i.eh
  br i1 %i.fm, label %iter.check1576, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i

iter.check1576:                                   ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i
  %.014.i.i1557 = ptrtoaddr ptr %.014.i.i to i64  ; 2 uses
  %.0.i41.i1556 = ptrtoaddr ptr %.0.i41.i to i64
  %i.fn = add i64 %i.dl, 1
  %i.fo = sub i64 %i.fn, %.014.i.i1557            ; 7 uses
  %min.iters.check1559 = icmp ult i64 %i.fo, 4
  %i.fp = sub i64 %.014.i.i1557, %.0.i41.i1556
  %diff.check1558 = icmp ugt i64 %i.fp, -32
  %or.cond = select i1 %min.iters.check1559, i1 true, i1 %diff.check1558
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1560

vector.main.loop.iter.check1560:                  ; preds = %iter.check1576
  %min.iters.check1561 = icmp ult i64 %i.fo, 32
  br i1 %min.iters.check1561, label %vec.epilog.ph1580, label %vector.ph1562

vector.ph1562:                                    ; preds = %vector.main.loop.iter.check1560
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd44ZSTD_compressBlock_doubleFast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.sr = getelementptr inbounds nuw i8, ptr %.121.i115.i, i64 8
  store i8 %i.sq, ptr %i.so, align 1, !tbaa !37
  %exitcond.not.i117.i.7 = icmp eq ptr %i.sp, %.12.i.i
  br i1 %exitcond.not.i117.i.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i, label %.lr.ph.i114.i, !llvm.loop !110

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i: ; preds = %bb.cb, %.lr.ph.i114.i.prol.loopexit, %.lr.ph.i114.i, %middle.block1610, %vec.epilog.middle.block1627, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i111.i, %bb.bz
  %i.ss = load ptr, ptr %i.ck, align 8, !tbaa !38
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.qg
  store ptr %i.st, ptr %i.ck, align 8, !tbaa !38
  %i.su = icmp ugt i64 %i.qg, 65535
  %.pre276.i = load ptr, ptr %i.cn, align 8, !tbaa !42 ; 3 uses
  br i1 %i.su, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i
  store i32 1, ptr %i.cm, align 8, !tbaa !52
  %i.sv = load ptr, ptr %1, align 8, !tbaa !53
  %i.sw = ptrtoint ptr %.pre276.i to i64
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = lshr exact i64 %i.sy, 3
  %i.ta = trunc i64 %i.sz to i32
  store i32 %i.ta, ptr %i.co, align 4, !tbaa !54
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.thread.i
  %i.tb = phi ptr [ %.pre.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.thread.i ], [ %.pre276.i, %bb.cg ], [ %.pre276.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i ] ; 4 uses
  %i.tc = trunc i64 %i.qg to i16
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  store i16 %i.tc, ptr %i.td, align 4, !tbaa !55
  store i32 %i.qh, ptr %i.tb, align 4, !tbaa !57
  %i.te = add i64 %.12410.i.i, -3                 ; 3 uses
  %i.tf = icmp ugt i64 %i.te, 65535
  br i1 %i.tf, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i: ; preds = %bb.ch, %bb.p
  %.sink352.i = phi ptr [ %i.hm, %bb.p ], [ %i.tb, %bb.ch ] ; 2 uses
  %.sink348.ph.i = phi i64 [ %i.hp, %bb.p ], [ %i.te, %bb.ch ]
  %.13411.i.ph.i = phi i64 [ %i.en, %bb.p ], [ %.12410.i.i, %bb.ch ]
  %.1391.i.ph.i = phi i32 [ %.0390.i242.i, %bb.p ], [ %.0384.i243.i, %bb.ch ]
  %.1385.i.ph.i = phi i32 [ %.0384.i243.i, %bb.p ], [ %.6420.i.i, %bb.ch ]
  %.13.i.ph.i = phi ptr [ %i.eh, %bb.p ], [ %.12.i.i, %bb.ch ]
  store i32 2, ptr %i.cm, align 8, !tbaa !52
  %i.tg = load ptr, ptr %1, align 8, !tbaa !53
  %i.th = ptrtoint ptr %.sink352.i to i64
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = sub i64 %i.th, %i.ti
  %i.tk = lshr exact i64 %i.tj, 3
  %i.tl = trunc i64 %i.tk to i32
  store i32 %i.tl, ptr %i.co, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i: ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i, %bb.ch, %bb.p
  %.sink348.i = phi i64 [ %i.hp, %bb.p ], [ %i.te, %bb.ch ], [ %.sink348.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i ]
  %.sink347.i = phi ptr [ %i.hm, %bb.p ], [ %i.tb, %bb.ch ], [ %.sink352.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i ] ; 2 uses
  %.13411.i.i = phi i64 [ %i.en, %bb.p ], [ %.12410.i.i, %bb.ch ], [ %.13411.i.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i ]
  %.1391.i.i = phi i32 [ %.0390.i242.i, %bb.p ], [ %.0384.i243.i, %bb.ch ], [ %.1391.i.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i ] ; 2 uses
  %.1385.i.i = phi i32 [ %.0384.i243.i, %bb.p ], [ %.6420.i.i, %bb.ch ], [ %.1385.i.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i ] ; 2 uses
  %.13.i.i = phi ptr [ %i.eh, %bb.p ], [ %.12.i.i, %bb.ch ], [ %.13.i.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i ]
  %i.tm = trunc i64 %.sink348.i to i16
  %i.tn = getelementptr inbounds nuw i8, ptr %.sink347.i, i64 6
  store i16 %i.tm, ptr %i.tn, align 2, !tbaa !65
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.sink347.i, i64 8 ; 2 uses
  store ptr %storemerge.i, ptr %i.cn, align 8, !tbaa !42
  %i.to = getelementptr inbounds nuw i8, ptr %.13.i.i, i64 %.13411.i.i ; 6 uses
  %.not452.i.i = icmp ugt ptr %i.to, %i.ae
  br i1 %.not452.i.i, label %.thread155.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i
  %i.tp = add i32 %i.dn, 2                        ; 3 uses
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.tq ; 2 uses
  %.val25.i = load i64, ptr %i.tr, align 1, !tbaa !26
  %i.ts = mul i64 %.val25.i, -3523014627327384477
  %i.tt = lshr i64 %i.ts, %i.ca
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.tt
  store i32 %i.tp, ptr %i.tu, align 4, !tbaa !3
  %i.tv = getelementptr inbounds i8, ptr %i.to, i64 -2 ; 2 uses
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = sub i64 %i.tw, %i.o
  %i.ty = trunc i64 %i.tx to i32
  %.val24.i = load i64, ptr %i.tv, align 1, !tbaa !26
  %i.tz = mul i64 %.val24.i, -3523014627327384477
  %i.ua = lshr i64 %i.tz, %i.ca
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ua
  store i32 %i.ty, ptr %i.ub, align 4, !tbaa !3
  %.val11.i = load i32, ptr %i.tr, align 1, !tbaa !3
  %i.uc = mul i32 %.val11.i, -1640531535
  %i.ud = lshr i32 %i.uc, %i.cb
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ue
  store i32 %i.tp, ptr %i.uf, align 4, !tbaa !3
  %i.ug = getelementptr inbounds i8, ptr %i.to, i64 -1 ; 2 uses
  %i.uh = ptrtoint ptr %i.ug to i64
  %i.ui = sub i64 %i.uh, %i.o
  %i.uj = trunc i64 %i.ui to i32
  %.val10.i = load i32, ptr %i.ug, align 1, !tbaa !3
  %i.uk = mul i32 %.val10.i, -1640531535
  %i.ul = lshr i32 %i.uk, %i.cb
  %i.um = zext i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.um
  store i32 %i.uj, ptr %i.un, align 4, !tbaa !3
  br label %bb.cj

bb.cj:                                            ; preds = %bb.co, %bb.ci
  %i.uo = phi ptr [ %storemerge.i, %bb.ci ], [ %i.vq, %bb.co ]
  %.1380.i241.i = phi ptr [ %i.to, %bb.ci ], [ %i.vz, %bb.co ] ; 12 uses
  %.2386.i240.i = phi i32 [ %.1385.i.i, %bb.ci ], [ %.2392.i239.i, %bb.co ] ; 4 uses
  %.2392.i239.i = phi i32 [ %.1391.i.i, %bb.ci ], [ %.2386.i240.i, %bb.co ] ; 5 uses
  %i.up = ptrtoint ptr %.1380.i241.i to i64
  %i.uq = sub i64 %i.up, %i.o
  %i.ur = trunc i64 %i.uq to i32                  ; 3 uses
  %i.us = sub i32 %i.ur, %.2392.i239.i            ; 3 uses
  %i.ut = icmp ult i32 %i.us, %i.aa               ; 2 uses
  %i.uu = zext i32 %i.us to i64
  %.v.i = select i1 %i.ut, ptr %invariant.gep.i, ptr %i.m
  %i.uv = getelementptr i8, ptr %.v.i, i64 %i.uu  ; 2 uses
  %i.uw = sub i32 %i.cf, %i.us
  %i.ux = icmp ugt i32 %i.uw, 2
  br i1 %i.ux, label %bb.ck, label %.thread155.i

bb.ck:                                            ; preds = %bb.cj
  %.val8.i = load i32, ptr %i.uv, align 1, !tbaa !3
  %.14.i.val.i = load i32, ptr %.1380.i241.i, align 1, !tbaa !3
  %i.uy = icmp eq i32 %.val8.i, %.14.i.val.i
  br i1 %i.uy, label %bb.cl, label %.thread155.i

bb.cl:                                            ; preds = %bb.ck
  %i.uz = select i1 %i.ut, ptr %i.au, ptr %i.ad
  %i.va = getelementptr inbounds nuw i8, ptr %.1380.i241.i, i64 4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vc = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.va, ptr noundef nonnull %i.vb, ptr noundef %i.ad, ptr noundef %i.uz, ptr noundef %i.ac) ; 2 uses
  %.not.i.i.i = icmp ugt ptr %.1380.i241.i, %i.cj
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.vd = load ptr, ptr %i.ck, align 8, !tbaa !38
  %.1380.i.val.i = load <2 x i64>, ptr %.1380.i241.i, align 1, !tbaa !37
  store <2 x i64> %.1380.i.val.i, ptr %i.vd, align 1, !tbaa !37
  %.pre279.i = load ptr, ptr %i.cn, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i: ; preds = %bb.cm, %bb.cl
  %i.ve = phi ptr [ %i.uo, %bb.cl ], [ %.pre279.i, %bb.cm ] ; 5 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  store i16 0, ptr %i.vf, align 4, !tbaa !55
  store i32 1, ptr %i.ve, align 4, !tbaa !57
  %i.vg = add i64 %i.vc, 1                        ; 2 uses
  %i.vh = icmp ugt i64 %i.vg, 65535
  br i1 %i.vh, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i
  store i32 2, ptr %i.cm, align 8, !tbaa !52
  %i.vi = load ptr, ptr %1, align 8, !tbaa !53
  %i.vj = ptrtoint ptr %i.ve to i64
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = lshr exact i64 %i.vl, 3
  %i.vn = trunc i64 %i.vm to i32
  store i32 %i.vn, ptr %i.co, align 4, !tbaa !54
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i
  %i.vo = trunc i64 %i.vg to i16
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ve, i64 6
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !65
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ve, i64 8 ; 2 uses
  store ptr %i.vq, ptr %i.cn, align 8, !tbaa !42
  %.14.i.val9.i = load i32, ptr %.1380.i241.i, align 1, !tbaa !3
  %i.vr = mul i32 %.14.i.val9.i, -1640531535
  %i.vs = lshr i32 %i.vr, %i.cb
  %i.vt = zext i32 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.vt
  store i32 %i.ur, ptr %i.vu, align 4, !tbaa !3
  %.14.i.val23.i = load i64, ptr %.1380.i241.i, align 1, !tbaa !26
  %i.vv = mul i64 %.14.i.val23.i, -3523014627327384477
  %i.vw = lshr i64 %i.vv, %i.ca
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.vw
  store i32 %i.ur, ptr %i.vx, align 4, !tbaa !3
  %i.vy = getelementptr i8, ptr %.1380.i241.i, i64 %i.vc
  %i.vz = getelementptr i8, ptr %i.vy, i64 4      ; 4 uses
  %.not453.i.i = icmp ugt ptr %i.vz, %i.ae
  br i1 %.not453.i.i, label %.thread155.i, label %bb.cj

.thread155.i:                                     ; preds = %bb.co, %bb.ck, %bb.cj, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i, %.thread.i
  %.5395.i.i = phi i32 [ %.0390.i242.i, %.thread.i ], [ %.1391.i.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i ], [ %.2392.i239.i, %bb.cj ], [ %.2392.i239.i, %bb.ck ], [ %.2386.i240.i, %bb.co ] ; 2 uses
  %.5389.i.i = phi i32 [ %.0384.i243.i, %.thread.i ], [ %.1385.i.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i ], [ %.2386.i240.i, %bb.cj ], [ %.2386.i240.i, %bb.ck ], [ %.2392.i239.i, %bb.co ] ; 2 uses
  %.4383.i.i = phi ptr [ %.0379.i245.i, %.thread.i ], [ %i.to, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i ], [ %.1380.i241.i, %bb.cj ], [ %.1380.i241.i, %bb.ck ], [ %i.vz, %bb.co ] ; 2 uses
  %.17.i.i = phi ptr [ %i.kr, %.thread.i ], [ %i.to, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i ], [ %.1380.i241.i, %bb.cj ], [ %.1380.i241.i, %bb.ck ], [ %i.vz, %bb.co ] ; 2 uses
  %i.wa = icmp ult ptr %.17.i.i, %i.ae
  br i1 %i.wa, label %bb.d, label %_ZN11duckdb_zstdL52ZSTD_compressBlock_doubleFast_dictMatchState_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj.exit.loopexit.i

_ZN11duckdb_zstdL52ZSTD_compressBlock_doubleFast_dictMatchState_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj.exit.loopexit.i: ; preds = %.thread155.i
  %.pre280.i = ptrtoint ptr %.4383.i.i to i64
  br label %_ZN11duckdb_zstdL46ZSTD_compressBlock_doubleFast_dictMatchState_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

bb.cp:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i35, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wb = zext nneg i32 %i.az to i64
  %i.wc = shl i64 4, %i.wb
  %i.wd = zext nneg i32 %i.bb to i64
  %i.we = shl i64 4, %i.wd
  %.not251.i28 = icmp ugt i32 %i.az, 61
  br i1 %.not251.i28, label %.preheader.i31, label %.lr.ph.i29

.preheader.i31:                                   ; preds = %.lr.ph.i29, %bb.cq
  %.not252.i32 = icmp ugt i32 %i.bb, 61
  br i1 %.not252.i32, label %.loopexit.i35, label %.lr.ph185.i33

.lr.ph.i29:                                       ; preds = %bb.cq, %.lr.ph.i29
  %.0396.i183.i30 = phi i64 [ %i.wg, %.lr.ph.i29 ], [ 0, %bb.cq ] ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0396.i183.i30
  tail call void @llvm.prefetch.p0(ptr %i.wf, i32 0, i32 2, i32 1)
  %i.wg = add i64 %.0396.i183.i30, 64             ; 2 uses
  %i.wh = icmp ult i64 %i.wg, %i.wc
  br i1 %i.wh, label %.lr.ph.i29, label %.preheader.i31, !llvm.loop !94

.lr.ph185.i33:                                    ; preds = %.preheader.i31, %.lr.ph185.i33
  %.0397.i184.i34 = phi i64 [ %i.wj, %.lr.ph185.i33 ], [ 0, %.preheader.i31 ] ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0397.i184.i34
  tail call void @llvm.prefetch.p0(ptr %i.wi, i32 0, i32 2, i32 1)
  %i.wj = add i64 %.0397.i184.i34, 64             ; 2 uses
  %i.wk = icmp ult i64 %i.wj, %i.we
  br i1 %i.wk, label %.lr.ph185.i33, label %.loopexit.i35, !llvm.loop !95

.loopexit.i35:                                    ; preds = %.lr.ph185.i33, %.preheader.i31, %bb.cp
  %i.wl = and i64 %i.bg, 4294967295
  %i.wm = icmp eq i64 %i.wl, 0
  %i.wn = zext i1 %i.wm to i64                    ; 2 uses
  %i.wo = add nsw i64 %4, -8
  %i.wp = icmp sgt i64 %i.wo, %i.wn
  br i1 %i.wp, label %.lr.ph247.i39, label %_ZN11duckdb_zstdL46ZSTD_compressBlock_doubleFast_dictMatchState_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

.lr.ph247.i39:                                    ; preds = %.loopexit.i35
  %i.wq = getelementptr inbounds nuw i8, ptr %3, i64 %i.wn
  %i.wr = sub i32 64, %i.g
  %i.ws = zext nneg i32 %i.wr to i64              ; 5 uses
  %i.wt = sub i32 64, %i.k
  %i.wu = zext nneg i32 %i.wt to i64              ; 4 uses
  %i.wv = sub i32 56, %i.az
  %i.ww = zext nneg i32 %i.wv to i64              ; 2 uses
  %i.wx = sub i32 56, %i.bb
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = add i32 %i.aa, -1                       ; 2 uses
  %i.xa = getelementptr inbounds i8, ptr %i.ad, i64 -7 ; 6 uses
  %i.xb = getelementptr inbounds i8, ptr %i.ad, i64 -3 ; 3 uses
  %i.xc = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 3 uses
  %i.xd = getelementptr inbounds i8, ptr %i.ad, i64 -32 ; 10 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.xf = ptrtoint ptr %i.xd to i64               ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 4 uses
  %i.xj = zext i32 %i.ax to i64
  %i.xk = sub nsw i64 0, %i.xj
  %invariant.gep.i40 = getelementptr i8, ptr %i.ar, i64 %i.xk
  br label %bb.cr

bb.cr:                                            ; preds = %.thread155.i50, %.lr.ph247.i39
  %.0.i246.i41 = phi ptr [ %i.wq, %.lr.ph247.i39 ], [ %.17.i.i54, %.thread155.i50 ] ; 26 uses
  %.0379.i245.i42 = phi ptr [ %3, %.lr.ph247.i39 ], [ %.4383.i.i53, %.thread155.i50 ] ; 28 uses
  %.0384.i243.i43 = phi i32 [ %i.af, %.lr.ph247.i39 ], [ %.5389.i.i52, %.thread155.i50 ] ; 6 uses
  %.0390.i242.i44 = phi i32 [ %i.ah, %.lr.ph247.i39 ], [ %.5395.i.i51, %.thread155.i50 ] ; 3 uses
  %.0.i.val27.i45 = load i64, ptr %.0.i246.i41, align 1, !tbaa !26 ; 4 uses
  %i.xl = mul i64 %.0.i.val27.i45, -3523014627327384477 ; 2 uses
  %i.xm = lshr i64 %i.xl, %i.ws
  %i.xn = mul i64 %.0.i.val27.i45, -3523014627271114752 ; 2 uses
  %i.xo = lshr i64 %i.xn, %i.wu
  %i.xp = lshr i64 %i.xl, %i.ww                   ; 2 uses
  %i.xq = lshr i64 %i.xn, %i.wy                   ; 2 uses
  %i.xr = lshr i64 %i.xp, 8
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !3  ; 2 uses
  %i.xu = lshr i64 %i.xq, 8
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.xu
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !3  ; 2 uses
  %i.xx = zext i32 %i.xt to i64
  %i.xy = xor i64 %i.xp, %i.xx
  %i.xz = and i64 %i.xy, 255
  %.not.i46 = icmp eq i64 %i.xz, 0
  %i.ya = zext i32 %i.xw to i64
  %i.yb = xor i64 %i.xq, %i.ya
  %i.yc = and i64 %i.yb, 255
  %.not161.i47 = icmp eq i64 %i.yc, 0
  %i.yd = ptrtoint ptr %.0.i246.i41 to i64        ; 7 uses
  %i.ye = sub i64 %i.yd, %i.o
  %i.yf = trunc i64 %i.ye to i32                  ; 6 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.xm ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !3  ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.xo ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !3  ; 3 uses
  %i.yk = zext i32 %i.yh to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.yk ; 4 uses
  %i.ym = zext i32 %i.yj to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ym ; 2 uses
  %i.yo = add i32 %i.yf, 1                        ; 3 uses
  %i.yp = sub i32 %i.yo, %.0384.i243.i43          ; 4 uses
  %i.yq = icmp ult i32 %i.yp, %i.aa               ; 2 uses
  %i.yr = sub i32 %i.yp, %i.ax
  %i.ys = zext i32 %i.yr to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ys
  %i.yu = zext i32 %i.yp to i64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.yu
  %i.yw = select i1 %i.yq, ptr %i.yt, ptr %i.yv   ; 2 uses
  store i32 %i.yf, ptr %i.yi, align 4, !tbaa !3
  store i32 %i.yf, ptr %i.yg, align 4, !tbaa !3
  %i.yx = sub i32 %i.wz, %i.yp
  %i.yy = icmp ugt i32 %i.yx, 2
  br i1 %i.yy, label %bb.cs, label %bb.de

bb.cs:                                            ; preds = %bb.cr
  %.val4.i233 = load i32, ptr %i.yw, align 1, !tbaa !3
  %i.yz = getelementptr inbounds nuw i8, ptr %.0.i246.i41, i64 1 ; 6 uses
  %.val.i234 = load i32, ptr %i.yz, align 1, !tbaa !3
  %i.za = icmp eq i32 %.val4.i233, %.val.i234
  br i1 %i.za, label %bb.ct, label %bb.de

bb.ct:                                            ; preds = %bb.cs
  %i.zb = select i1 %i.yq, ptr %i.au, ptr %i.ad
  %i.zc = getelementptr inbounds nuw i8, ptr %.0.i246.i41, i64 5
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.ze = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.zc, ptr noundef nonnull %i.zd, ptr noundef %i.ad, ptr noundef %i.zb, ptr noundef %i.ac) ; 2 uses
  %i.zf = add i64 %i.ze, 4                        ; 2 uses
  %i.zg = ptrtoint ptr %i.yz to i64
  %i.zh = ptrtoint ptr %.0379.i245.i42 to i64     ; 2 uses
  %i.zi = sub i64 %i.zg, %i.zh                    ; 7 uses
  %.not.i474.i.i235 = icmp ugt ptr %i.yz, %i.xd
  %i.zj = load ptr, ptr %i.xe, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i474.i.i235, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.0379.i.val.i236 = load <2 x i64>, ptr %.0379.i245.i42, align 1, !tbaa !37
  store <2 x i64> %.0379.i.val.i236, ptr %i.zj, align 1, !tbaa !37
  %i.zk = icmp ugt i64 %i.zi, 16
  %i.zl = load ptr, ptr %i.xe, align 8, !tbaa !38 ; 4 uses
  br i1 %i.zk, label %bb.cv, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i237

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i237: ; preds = %bb.cu
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zi
  store ptr %i.zm, ptr %i.xe, align 8, !tbaa !38
  %.pre277.i238 = load ptr, ptr %i.xh, align 8, !tbaa !42
  br label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %.0379.i245.i42, i64 16 ; 2 uses
  %i.zp = getelementptr i8, ptr %i.zl, i64 %i.zi
  %.val31.i239 = load <2 x i64>, ptr %i.zo, align 1, !tbaa !37
  store <2 x i64> %.val31.i239, ptr %i.zn, align 1, !tbaa !37
  %i.zq = icmp slt i64 %i.zi, 33
  br i1 %i.zq, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i245, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.130.i.i.i240 = phi ptr [ %i.zr, %bb.cw ], [ %i.zu, %bb.cx ] ; 3 uses
  %.pn.i.i.i241 = phi ptr [ %i.zo, %bb.cw ], [ %i.zt, %bb.cx ] ; 2 uses
  %.1.i.i.i242 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i241, i64 16
  %.1.i.i.val.i243 = load <2 x i64>, ptr %.1.i.i.i242, align 1, !tbaa !37
  store <2 x i64> %.1.i.i.val.i243, ptr %.130.i.i.i240, align 1, !tbaa !37
  %i.zs = getelementptr inbounds nuw i8, ptr %.130.i.i.i240, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %.pn.i.i.i241, i64 32 ; 2 uses
  %.val30.i244 = load <2 x i64>, ptr %i.zt, align 1, !tbaa !37
  store <2 x i64> %.val30.i244, ptr %i.zs, align 1, !tbaa !37
  %i.zu = getelementptr inbounds nuw i8, ptr %.130.i.i.i240, i64 32 ; 2 uses
  %i.zv = icmp ult ptr %i.zu, %i.zp
  br i1 %i.zv, label %bb.cx, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i245, !llvm.loop !43

bb.cy:                                            ; preds = %bb.ct
  %.not.i36.i247 = icmp ugt ptr %.0379.i245.i42, %i.xd
  br i1 %.not.i36.i247, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i254, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zw = sub i64 %i.xf, %i.zh                    ; 2 uses
  %i.zx = getelementptr inbounds i8, ptr %i.zj, i64 %i.zw ; 3 uses
  %.val19.i.i248 = load <2 x i64>, ptr %.0379.i245.i42, align 1, !tbaa !37
  store <2 x i64> %.val19.i.i248, ptr %i.zj, align 1, !tbaa !37
  %i.zy = icmp slt i64 %i.zw, 17
  br i1 %i.zy, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i254, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.130.i.i37.i249 = phi ptr [ %i.zz, %bb.da ], [ %i.aac, %bb.db ] ; 3 uses
  %.pn.i.i38.i250 = phi ptr [ %.0379.i245.i42, %bb.da ], [ %i.aab, %bb.db ] ; 2 uses
  %.1.i.i39.i251 = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i250, i64 16
  %.1.i.val.i.i252 = load <2 x i64>, ptr %.1.i.i39.i251, align 1, !tbaa !37
  store <2 x i64> %.1.i.val.i.i252, ptr %.130.i.i37.i249, align 1, !tbaa !37
  %i.aaa = getelementptr inbounds nuw i8, ptr %.130.i.i37.i249, i64 16
  %i.aab = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i250, i64 32 ; 2 uses
  %.val.i.i253 = load <2 x i64>, ptr %i.aab, align 1, !tbaa !37
  store <2 x i64> %.val.i.i253, ptr %i.aaa, align 1, !tbaa !37
  %i.aac = getelementptr inbounds nuw i8, ptr %.130.i.i37.i249, i64 32 ; 2 uses
  %i.aad = icmp ult ptr %i.aac, %i.zx
  br i1 %i.aad, label %bb.db, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i254, !llvm.loop !43

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i254: ; preds = %bb.db, %bb.cz, %bb.cy
  %.014.i.i255 = phi ptr [ %.0379.i245.i42, %bb.cy ], [ %i.xd, %bb.cz ], [ %i.xd, %bb.db ] ; 7 uses
  %.0.i41.i256 = phi ptr [ %i.zj, %bb.cy ], [ %i.zx, %bb.cz ], [ %i.zx, %bb.db ] ; 6 uses
  %i.aae = icmp ult ptr %.014.i.i255, %i.yz
  br i1 %i.aae, label %iter.check1424, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i245

iter.check1424:                                   ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i254
  %.014.i.i2551405 = ptrtoaddr ptr %.014.i.i255 to i64 ; 2 uses
  %.0.i41.i2561404 = ptrtoaddr ptr %.0.i41.i256 to i64
  %i.aaf = add i64 %i.yd, 1
  %i.aag = sub i64 %i.aaf, %.014.i.i2551405       ; 7 uses
  %min.iters.check1407 = icmp ult i64 %i.aag, 4
  %i.aah = sub i64 %.014.i.i2551405, %.0.i41.i2561404
  %diff.check1406 = icmp ugt i64 %i.aah, -32
  %or.cond1632 = select i1 %min.iters.check1407, i1 true, i1 %diff.check1406
  br i1 %or.cond1632, label %.lr.ph.i.i257.preheader, label %vector.main.loop.iter.check1408

vector.main.loop.iter.check1408:                  ; preds = %iter.check1424
  %min.iters.check1409 = icmp ult i64 %i.aag, 32
  br i1 %min.iters.check1409, label %vec.epilog.ph1428, label %vector.ph1410

vector.ph1410:                                    ; preds = %vector.main.loop.iter.check1408
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd44ZSTD_compressBlock_doubleFast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.anf = load i8, ptr %i.anb, align 1, !tbaa !37
  %i.ang = getelementptr inbounds nuw i8, ptr %.121.i115.i129, i64 7
  store i8 %i.anf, ptr %i.and, align 1, !tbaa !37
  %i.anh = getelementptr inbounds nuw i8, ptr %.11520.i116.i130, i64 8 ; 2 uses
  %i.ani = load i8, ptr %i.ane, align 1, !tbaa !37
  %i.anj = getelementptr inbounds nuw i8, ptr %.121.i115.i129, i64 8
  store i8 %i.ani, ptr %i.ang, align 1, !tbaa !37
  %exitcond.not.i117.i131.7 = icmp eq ptr %i.anh, %.12.i.i76
  br i1 %exitcond.not.i117.i131.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i116, label %.lr.ph.i114.i128, !llvm.loop !118

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i116: ; preds = %bb.fp, %.lr.ph.i114.i128.prol.loopexit, %.lr.ph.i114.i128, %middle.block1458, %vec.epilog.middle.block1475, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i111.i125, %bb.fn
  %i.ank = load ptr, ptr %i.xe, align 8, !tbaa !38
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.aky
  store ptr %i.anl, ptr %i.xe, align 8, !tbaa !38
  %i.anm = icmp ugt i64 %i.aky, 65535
  %.pre276.i117 = load ptr, ptr %i.xh, align 8, !tbaa !42 ; 3 uses
  br i1 %i.anm, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i116
  store i32 1, ptr %i.xg, align 8, !tbaa !52
  %i.ann = load ptr, ptr %1, align 8, !tbaa !53
  %i.ano = ptrtoint ptr %.pre276.i117 to i64
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = sub i64 %i.ano, %i.anp
  %i.anr = lshr exact i64 %i.anq, 3
  %i.ans = trunc i64 %i.anr to i32
  store i32 %i.ans, ptr %i.xi, align 4, !tbaa !54
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i116, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.thread.i79
  %i.ant = phi ptr [ %.pre.i80, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.thread.i79 ], [ %.pre276.i117, %bb.fu ], [ %.pre276.i117, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i116 ] ; 4 uses
  %i.anu = trunc i64 %i.aky to i16
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 4
  store i16 %i.anu, ptr %i.anv, align 4, !tbaa !55
  store i32 %i.akz, ptr %i.ant, align 4, !tbaa !57
  %i.anw = add i64 %.12410.i.i75, -3              ; 3 uses
  %i.anx = icmp ugt i64 %i.anw, 65535
  br i1 %i.anx, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103: ; preds = %bb.fv, %bb.dd
  %.sink352.i104 = phi ptr [ %i.ace, %bb.dd ], [ %i.ant, %bb.fv ] ; 2 uses
  %.sink348.ph.i105 = phi i64 [ %i.ach, %bb.dd ], [ %i.anw, %bb.fv ]
  %.13411.i.ph.i106 = phi i64 [ %i.zf, %bb.dd ], [ %.12410.i.i75, %bb.fv ]
  %.1391.i.ph.i107 = phi i32 [ %.0390.i242.i44, %bb.dd ], [ %.0384.i243.i43, %bb.fv ]
  %.1385.i.ph.i108 = phi i32 [ %.0384.i243.i43, %bb.dd ], [ %.6420.i.i74, %bb.fv ]
  %.13.i.ph.i109 = phi ptr [ %i.yz, %bb.dd ], [ %.12.i.i76, %bb.fv ]
  store i32 2, ptr %i.xg, align 8, !tbaa !52
  %i.any = load ptr, ptr %1, align 8, !tbaa !53
  %i.anz = ptrtoint ptr %.sink352.i104 to i64
  %i.aoa = ptrtoint ptr %i.any to i64
  %i.aob = sub i64 %i.anz, %i.aoa
  %i.aoc = lshr exact i64 %i.aob, 3
  %i.aod = trunc i64 %i.aoc to i32
  store i32 %i.aod, ptr %i.xi, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81: ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103, %bb.fv, %bb.dd
  %.sink348.i82 = phi i64 [ %i.ach, %bb.dd ], [ %i.anw, %bb.fv ], [ %.sink348.ph.i105, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103 ]
  %.sink347.i83 = phi ptr [ %i.ace, %bb.dd ], [ %i.ant, %bb.fv ], [ %.sink352.i104, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103 ] ; 2 uses
  %.13411.i.i84 = phi i64 [ %i.zf, %bb.dd ], [ %.12410.i.i75, %bb.fv ], [ %.13411.i.ph.i106, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103 ]
  %.1391.i.i85 = phi i32 [ %.0390.i242.i44, %bb.dd ], [ %.0384.i243.i43, %bb.fv ], [ %.1391.i.ph.i107, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103 ] ; 2 uses
  %.1385.i.i86 = phi i32 [ %.0384.i243.i43, %bb.dd ], [ %.6420.i.i74, %bb.fv ], [ %.1385.i.ph.i108, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103 ] ; 2 uses
  %.13.i.i87 = phi ptr [ %i.yz, %bb.dd ], [ %.12.i.i76, %bb.fv ], [ %.13.i.ph.i109, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i103 ]
  %i.aoe = trunc i64 %.sink348.i82 to i16
  %i.aof = getelementptr inbounds nuw i8, ptr %.sink347.i83, i64 6
  store i16 %i.aoe, ptr %i.aof, align 2, !tbaa !65
  %storemerge.i88 = getelementptr inbounds nuw i8, ptr %.sink347.i83, i64 8 ; 2 uses
  store ptr %storemerge.i88, ptr %i.xh, align 8, !tbaa !42
  %i.aog = getelementptr inbounds nuw i8, ptr %.13.i.i87, i64 %.13411.i.i84 ; 6 uses
  %.not452.i.i89 = icmp ugt ptr %i.aog, %i.ae
  br i1 %.not452.i.i89, label %.thread155.i50, label %bb.fw

bb.fw:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81
  %i.aoh = add i32 %i.yf, 2                       ; 3 uses
  %i.aoi = zext i32 %i.aoh to i64
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aoi
  %.val25.i90 = load i64, ptr %i.aoj, align 1, !tbaa !26 ; 2 uses
  %i.aok = mul i64 %.val25.i90, -3523014627327384477
  %i.aol = lshr i64 %i.aok, %i.ws
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aol
  store i32 %i.aoh, ptr %i.aom, align 4, !tbaa !3
  %i.aon = getelementptr inbounds i8, ptr %i.aog, i64 -2 ; 2 uses
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = sub i64 %i.aoo, %i.o
  %i.aoq = trunc i64 %i.aop to i32
  %.val24.i91 = load i64, ptr %i.aon, align 1, !tbaa !26
  %i.aor = mul i64 %.val24.i91, -3523014627327384477
  %i.aos = lshr i64 %i.aor, %i.ws
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aos
  store i32 %i.aoq, ptr %i.aot, align 4, !tbaa !3
  %i.aou = mul i64 %.val25.i90, -3523014627271114752
  %i.aov = lshr i64 %i.aou, %i.wu
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aov
  store i32 %i.aoh, ptr %i.aow, align 4, !tbaa !3
  %i.aox = getelementptr inbounds i8, ptr %i.aog, i64 -1 ; 2 uses
  %i.aoy = ptrtoint ptr %i.aox to i64
  %i.aoz = sub i64 %i.aoy, %i.o
  %i.apa = trunc i64 %i.aoz to i32
  %.val17.i = load i64, ptr %i.aox, align 1, !tbaa !26
  %i.apb = mul i64 %.val17.i, -3523014627271114752
  %i.apc = lshr i64 %i.apb, %i.wu
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.apc
  store i32 %i.apa, ptr %i.apd, align 4, !tbaa !3
  br label %bb.fx

bb.fx:                                            ; preds = %bb.gc, %bb.fw
  %i.ape = phi ptr [ %storemerge.i88, %bb.fw ], [ %i.aqg, %bb.gc ]
  %.1380.i241.i92 = phi ptr [ %i.aog, %bb.fw ], [ %i.aqo, %bb.gc ] ; 11 uses
  %.2386.i240.i93 = phi i32 [ %.1385.i.i86, %bb.fw ], [ %.2392.i239.i94, %bb.gc ] ; 4 uses
  %.2392.i239.i94 = phi i32 [ %.1391.i.i85, %bb.fw ], [ %.2386.i240.i93, %bb.gc ] ; 5 uses
  %i.apf = ptrtoint ptr %.1380.i241.i92 to i64
  %i.apg = sub i64 %i.apf, %i.o
  %i.aph = trunc i64 %i.apg to i32                ; 3 uses
  %i.api = sub i32 %i.aph, %.2392.i239.i94        ; 3 uses
  %i.apj = icmp ult i32 %i.api, %i.aa             ; 2 uses
  %i.apk = zext i32 %i.api to i64
  %.v.i95 = select i1 %i.apj, ptr %invariant.gep.i40, ptr %i.m
  %i.apl = getelementptr i8, ptr %.v.i95, i64 %i.apk ; 2 uses
  %i.apm = sub i32 %i.wz, %i.api
  %i.apn = icmp ugt i32 %i.apm, 2
  br i1 %i.apn, label %bb.fy, label %.thread155.i50

bb.fy:                                            ; preds = %bb.fx
  %.val8.i96 = load i32, ptr %i.apl, align 1, !tbaa !3
  %.14.i.val.i97 = load i32, ptr %.1380.i241.i92, align 1, !tbaa !3
  %i.apo = icmp eq i32 %.val8.i96, %.14.i.val.i97
  br i1 %i.apo, label %bb.fz, label %.thread155.i50

bb.fz:                                            ; preds = %bb.fy
  %i.app = select i1 %i.apj, ptr %i.au, ptr %i.ad
  %i.apq = getelementptr inbounds nuw i8, ptr %.1380.i241.i92, i64 4
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apl, i64 4
  %i.aps = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.apq, ptr noundef nonnull %i.apr, ptr noundef %i.ad, ptr noundef %i.app, ptr noundef %i.ac) ; 2 uses
  %.not.i.i.i98 = icmp ugt ptr %.1380.i241.i92, %i.xd
  br i1 %.not.i.i.i98, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i101, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.apt = load ptr, ptr %i.xe, align 8, !tbaa !38
  %.1380.i.val.i99 = load <2 x i64>, ptr %.1380.i241.i92, align 1, !tbaa !37
  store <2 x i64> %.1380.i.val.i99, ptr %i.apt, align 1, !tbaa !37
  %.pre279.i100 = load ptr, ptr %i.xh, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i101

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i101: ; preds = %bb.ga, %bb.fz
  %i.apu = phi ptr [ %i.ape, %bb.fz ], [ %.pre279.i100, %bb.ga ] ; 5 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 4
  store i16 0, ptr %i.apv, align 4, !tbaa !55
  store i32 1, ptr %i.apu, align 4, !tbaa !57
  %i.apw = add i64 %i.aps, 1                      ; 2 uses
  %i.apx = icmp ugt i64 %i.apw, 65535
  br i1 %i.apx, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i101
  store i32 2, ptr %i.xg, align 8, !tbaa !52
  %i.apy = load ptr, ptr %1, align 8, !tbaa !53
  %i.apz = ptrtoint ptr %i.apu to i64
  %i.aqa = ptrtoint ptr %i.apy to i64
  %i.aqb = sub i64 %i.apz, %i.aqa
  %i.aqc = lshr exact i64 %i.aqb, 3
  %i.aqd = trunc i64 %i.aqc to i32
  store i32 %i.aqd, ptr %i.xi, align 4, !tbaa !54
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i101
  %i.aqe = trunc i64 %i.apw to i16
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apu, i64 6
  store i16 %i.aqe, ptr %i.aqf, align 2, !tbaa !65
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apu, i64 8 ; 2 uses
  store ptr %i.aqg, ptr %i.xh, align 8, !tbaa !42
  %.14.i.val16.i = load i64, ptr %.1380.i241.i92, align 1, !tbaa !26 ; 2 uses
  %i.aqh = mul i64 %.14.i.val16.i, -3523014627271114752
  %i.aqi = lshr i64 %i.aqh, %i.wu
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aqi
  store i32 %i.aph, ptr %i.aqj, align 4, !tbaa !3
  %i.aqk = mul i64 %.14.i.val16.i, -3523014627327384477
  %i.aql = lshr i64 %i.aqk, %i.ws
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aql
  store i32 %i.aph, ptr %i.aqm, align 4, !tbaa !3
  %i.aqn = getelementptr i8, ptr %.1380.i241.i92, i64 %i.aps
  %i.aqo = getelementptr i8, ptr %i.aqn, i64 4    ; 4 uses
  %.not453.i.i102 = icmp ugt ptr %i.aqo, %i.ae
  br i1 %.not453.i.i102, label %.thread155.i50, label %bb.fx

.thread155.i50:                                   ; preds = %bb.gc, %bb.fy, %bb.fx, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81, %.thread.i49
  %.5395.i.i51 = phi i32 [ %.0390.i242.i44, %.thread.i49 ], [ %.1391.i.i85, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81 ], [ %.2392.i239.i94, %bb.fx ], [ %.2392.i239.i94, %bb.fy ], [ %.2386.i240.i93, %bb.gc ] ; 2 uses
  %.5389.i.i52 = phi i32 [ %.0384.i243.i43, %.thread.i49 ], [ %.1385.i.i86, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81 ], [ %.2386.i240.i93, %bb.fx ], [ %.2386.i240.i93, %bb.fy ], [ %.2392.i239.i94, %bb.gc ] ; 2 uses
  %.4383.i.i53 = phi ptr [ %.0379.i245.i42, %.thread.i49 ], [ %i.aog, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81 ], [ %.1380.i241.i92, %bb.fx ], [ %.1380.i241.i92, %bb.fy ], [ %i.aqo, %bb.gc ] ; 2 uses
  %.17.i.i54 = phi ptr [ %i.afj, %.thread.i49 ], [ %i.aog, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i81 ], [ %.1380.i241.i92, %bb.fx ], [ %.1380.i241.i92, %bb.fy ], [ %i.aqo, %bb.gc ] ; 2 uses
  %i.aqp = icmp ult ptr %.17.i.i54, %i.ae
  br i1 %i.aqp, label %bb.cr, label %_ZN11duckdb_zstdL52ZSTD_compressBlock_doubleFast_dictMatchState_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj.exit.loopexit.i55

_ZN11duckdb_zstdL52ZSTD_compressBlock_doubleFast_dictMatchState_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj.exit.loopexit.i55: ; preds = %.thread155.i50
  %.pre280.i56 = ptrtoint ptr %.4383.i.i53 to i64
  br label %_ZN11duckdb_zstdL46ZSTD_compressBlock_doubleFast_dictMatchState_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

bb.gd:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i274, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aqq = zext nneg i32 %i.az to i64
  %i.aqr = shl i64 4, %i.aqq
  %i.aqs = zext nneg i32 %i.bb to i64
  %i.aqt = shl i64 4, %i.aqs
  %.not251.i267 = icmp ugt i32 %i.az, 61
  br i1 %.not251.i267, label %.preheader.i270, label %.lr.ph.i268

.preheader.i270:                                  ; preds = %.lr.ph.i268, %bb.ge
  %.not252.i271 = icmp ugt i32 %i.bb, 61
  br i1 %.not252.i271, label %.loopexit.i274, label %.lr.ph185.i272

.lr.ph.i268:                                      ; preds = %bb.ge, %.lr.ph.i268
  %.0396.i183.i269 = phi i64 [ %i.aqv, %.lr.ph.i268 ], [ 0, %bb.ge ] ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0396.i183.i269
  tail call void @llvm.prefetch.p0(ptr %i.aqu, i32 0, i32 2, i32 1)
  %i.aqv = add i64 %.0396.i183.i269, 64           ; 2 uses
  %i.aqw = icmp ult i64 %i.aqv, %i.aqr
  br i1 %i.aqw, label %.lr.ph.i268, label %.preheader.i270, !llvm.loop !94

.lr.ph185.i272:                                   ; preds = %.preheader.i270, %.lr.ph185.i272
  %.0397.i184.i273 = phi i64 [ %i.aqy, %.lr.ph185.i272 ], [ 0, %.preheader.i270 ] ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0397.i184.i273
  tail call void @llvm.prefetch.p0(ptr %i.aqx, i32 0, i32 2, i32 1)
  %i.aqy = add i64 %.0397.i184.i273, 64           ; 2 uses
  %i.aqz = icmp ult i64 %i.aqy, %i.aqt
  br i1 %i.aqz, label %.lr.ph185.i272, label %.loopexit.i274, !llvm.loop !95

.loopexit.i274:                                   ; preds = %.lr.ph185.i272, %.preheader.i270, %bb.gd
  %i.ara = and i64 %i.bg, 4294967295
  %i.arb = icmp eq i64 %i.ara, 0
  %i.arc = zext i1 %i.arb to i64                  ; 2 uses
  %i.ard = add nsw i64 %4, -8
  %i.are = icmp sgt i64 %i.ard, %i.arc
  br i1 %i.are, label %.lr.ph247.i278, label %_ZN11duckdb_zstdL46ZSTD_compressBlock_doubleFast_dictMatchState_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

.lr.ph247.i278:                                   ; preds = %.loopexit.i274
  %i.arf = getelementptr inbounds nuw i8, ptr %3, i64 %i.arc
  %i.arg = sub i32 64, %i.g
  %i.arh = zext nneg i32 %i.arg to i64            ; 5 uses
  %i.ari = sub i32 64, %i.k
  %i.arj = zext nneg i32 %i.ari to i64            ; 4 uses
  %i.ark = sub i32 56, %i.az
  %i.arl = zext nneg i32 %i.ark to i64            ; 2 uses
  %i.arm = sub i32 56, %i.bb
  %i.arn = zext nneg i32 %i.arm to i64
  %i.aro = add i32 %i.aa, -1                      ; 2 uses
  %i.arp = getelementptr inbounds i8, ptr %i.ad, i64 -7 ; 6 uses
  %i.arq = getelementptr inbounds i8, ptr %i.ad, i64 -3 ; 3 uses
  %i.arr = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 3 uses
  %i.ars = getelementptr inbounds i8, ptr %i.ad, i64 -32 ; 10 uses
  %i.art = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.aru = ptrtoint ptr %i.ars to i64             ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 4 uses
  %i.ary = zext i32 %i.ax to i64
  %i.arz = sub nsw i64 0, %i.ary
  %invariant.gep.i279 = getelementptr i8, ptr %i.ar, i64 %i.arz
  br label %bb.gf

bb.gf:                                            ; preds = %.thread155.i289, %.lr.ph247.i278
  %.0.i246.i280 = phi ptr [ %i.arf, %.lr.ph247.i278 ], [ %.17.i.i293, %.thread155.i289 ] ; 26 uses
  %.0379.i245.i281 = phi ptr [ %3, %.lr.ph247.i278 ], [ %.4383.i.i292, %.thread155.i289 ] ; 28 uses
  %.0384.i243.i282 = phi i32 [ %i.af, %.lr.ph247.i278 ], [ %.5389.i.i291, %.thread155.i289 ] ; 6 uses
  %.0390.i242.i283 = phi i32 [ %i.ah, %.lr.ph247.i278 ], [ %.5395.i.i290, %.thread155.i289 ] ; 3 uses
  %.0.i.val27.i284 = load i64, ptr %.0.i246.i280, align 1, !tbaa !26 ; 4 uses
  %i.asa = mul i64 %.0.i.val27.i284, -3523014627327384477 ; 2 uses
  %i.asb = lshr i64 %i.asa, %i.arh
  %i.asc = mul i64 %.0.i.val27.i284, -3523014627193847808 ; 2 uses
  %i.asd = lshr i64 %i.asc, %i.arj
  %i.ase = lshr i64 %i.asa, %i.arl                ; 2 uses
  %i.asf = lshr i64 %i.asc, %i.arn                ; 2 uses
  %i.asg = lshr i64 %i.ase, 8
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.asg
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !3 ; 2 uses
  %i.asj = lshr i64 %i.asf, 8
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.asj
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !3 ; 2 uses
  %i.asm = zext i32 %i.asi to i64
  %i.asn = xor i64 %i.ase, %i.asm
  %i.aso = and i64 %i.asn, 255
  %.not.i285 = icmp eq i64 %i.aso, 0
  %i.asp = zext i32 %i.asl to i64
  %i.asq = xor i64 %i.asf, %i.asp
  %i.asr = and i64 %i.asq, 255
  %.not161.i286 = icmp eq i64 %i.asr, 0
  %i.ass = ptrtoint ptr %.0.i246.i280 to i64      ; 7 uses
  %i.ast = sub i64 %i.ass, %i.o
  %i.asu = trunc i64 %i.ast to i32                ; 6 uses
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.asb ; 2 uses
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !3 ; 2 uses
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.asd ; 2 uses
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !3 ; 3 uses
  %i.asz = zext i32 %i.asw to i64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.asz ; 4 uses
  %i.atb = zext i32 %i.asy to i64
  %i.atc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.atb ; 2 uses
  %i.atd = add i32 %i.asu, 1                      ; 3 uses
  %i.ate = sub i32 %i.atd, %.0384.i243.i282       ; 4 uses
  %i.atf = icmp ult i32 %i.ate, %i.aa             ; 2 uses
  %i.atg = sub i32 %i.ate, %i.ax
  %i.ath = zext i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ath
  %i.atj = zext i32 %i.ate to i64
  %i.atk = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.atj
  %i.atl = select i1 %i.atf, ptr %i.ati, ptr %i.atk ; 2 uses
  store i32 %i.asu, ptr %i.asx, align 4, !tbaa !3
  store i32 %i.asu, ptr %i.asv, align 4, !tbaa !3
  %i.atm = sub i32 %i.aro, %i.ate
  %i.atn = icmp ugt i32 %i.atm, 2
  br i1 %i.atn, label %bb.gg, label %bb.gs

bb.gg:                                            ; preds = %bb.gf
  %.val4.i477 = load i32, ptr %i.atl, align 1, !tbaa !3
  %i.ato = getelementptr inbounds nuw i8, ptr %.0.i246.i280, i64 1 ; 6 uses
  %.val.i478 = load i32, ptr %i.ato, align 1, !tbaa !3
  %i.atp = icmp eq i32 %.val4.i477, %.val.i478
  br i1 %i.atp, label %bb.gh, label %bb.gs

bb.gh:                                            ; preds = %bb.gg
  %i.atq = select i1 %i.atf, ptr %i.au, ptr %i.ad
  %i.atr = getelementptr inbounds nuw i8, ptr %.0.i246.i280, i64 5
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atl, i64 4
  %i.att = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.atr, ptr noundef nonnull %i.ats, ptr noundef %i.ad, ptr noundef %i.atq, ptr noundef %i.ac) ; 2 uses
  %i.atu = add i64 %i.att, 4                      ; 2 uses
  %i.atv = ptrtoint ptr %i.ato to i64
  %i.atw = ptrtoint ptr %.0379.i245.i281 to i64   ; 2 uses
  %i.atx = sub i64 %i.atv, %i.atw                 ; 7 uses
  %.not.i474.i.i479 = icmp ugt ptr %i.ato, %i.ars
  %i.aty = load ptr, ptr %i.art, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i474.i.i479, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.0379.i.val.i480 = load <2 x i64>, ptr %.0379.i245.i281, align 1, !tbaa !37
  store <2 x i64> %.0379.i.val.i480, ptr %i.aty, align 1, !tbaa !37
  %i.atz = icmp ugt i64 %i.atx, 16
  %i.aua = load ptr, ptr %i.art, align 8, !tbaa !38 ; 4 uses
  br i1 %i.atz, label %bb.gj, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i481

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i481: ; preds = %bb.gi
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.atx
  store ptr %i.aub, ptr %i.art, align 8, !tbaa !38
  %.pre277.i482 = load ptr, ptr %i.arw, align 8, !tbaa !42
  br label %bb.gr

bb.gj:                                            ; preds = %bb.gi
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aua, i64 16
  %i.aud = getelementptr inbounds nuw i8, ptr %.0379.i245.i281, i64 16 ; 2 uses
  %i.aue = getelementptr i8, ptr %i.aua, i64 %i.atx
  %.val31.i483 = load <2 x i64>, ptr %i.aud, align 1, !tbaa !37
  store <2 x i64> %.val31.i483, ptr %i.auc, align 1, !tbaa !37
  %i.auf = icmp slt i64 %i.atx, 33
  br i1 %i.auf, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i489, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aua, i64 32
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %bb.gk
  %.130.i.i.i484 = phi ptr [ %i.aug, %bb.gk ], [ %i.auj, %bb.gl ] ; 3 uses
  %.pn.i.i.i485 = phi ptr [ %i.aud, %bb.gk ], [ %i.aui, %bb.gl ] ; 2 uses
  %.1.i.i.i486 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i485, i64 16
  %.1.i.i.val.i487 = load <2 x i64>, ptr %.1.i.i.i486, align 1, !tbaa !37
  store <2 x i64> %.1.i.i.val.i487, ptr %.130.i.i.i484, align 1, !tbaa !37
  %i.auh = getelementptr inbounds nuw i8, ptr %.130.i.i.i484, i64 16
  %i.aui = getelementptr inbounds nuw i8, ptr %.pn.i.i.i485, i64 32 ; 2 uses
  %.val30.i488 = load <2 x i64>, ptr %i.aui, align 1, !tbaa !37
  store <2 x i64> %.val30.i488, ptr %i.auh, align 1, !tbaa !37
  %i.auj = getelementptr inbounds nuw i8, ptr %.130.i.i.i484, i64 32 ; 2 uses
  %i.auk = icmp ult ptr %i.auj, %i.aue
  br i1 %i.auk, label %bb.gl, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i489, !llvm.loop !43

bb.gm:                                            ; preds = %bb.gh
  %.not.i36.i491 = icmp ugt ptr %.0379.i245.i281, %i.ars
  br i1 %.not.i36.i491, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i498, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aul = sub i64 %i.aru, %i.atw                 ; 2 uses
  %i.aum = getelementptr inbounds i8, ptr %i.aty, i64 %i.aul ; 3 uses
  %.val19.i.i492 = load <2 x i64>, ptr %.0379.i245.i281, align 1, !tbaa !37
  store <2 x i64> %.val19.i.i492, ptr %i.aty, align 1, !tbaa !37
  %i.aun = icmp slt i64 %i.aul, 17
  br i1 %i.aun, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i498, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aty, i64 16
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gp, %bb.go
  %.130.i.i37.i493 = phi ptr [ %i.auo, %bb.go ], [ %i.aur, %bb.gp ] ; 3 uses
  %.pn.i.i38.i494 = phi ptr [ %.0379.i245.i281, %bb.go ], [ %i.auq, %bb.gp ] ; 2 uses
  %.1.i.i39.i495 = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i494, i64 16
  %.1.i.val.i.i496 = load <2 x i64>, ptr %.1.i.i39.i495, align 1, !tbaa !37
  store <2 x i64> %.1.i.val.i.i496, ptr %.130.i.i37.i493, align 1, !tbaa !37
  %i.aup = getelementptr inbounds nuw i8, ptr %.130.i.i37.i493, i64 16
  %i.auq = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i494, i64 32 ; 2 uses
  %.val.i.i497 = load <2 x i64>, ptr %i.auq, align 1, !tbaa !37
  store <2 x i64> %.val.i.i497, ptr %i.aup, align 1, !tbaa !37
  %i.aur = getelementptr inbounds nuw i8, ptr %.130.i.i37.i493, i64 32 ; 2 uses
  %i.aus = icmp ult ptr %i.aur, %i.aum
  br i1 %i.aus, label %bb.gp, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i498, !llvm.loop !43

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i498: ; preds = %bb.gp, %bb.gn, %bb.gm
  %.014.i.i499 = phi ptr [ %.0379.i245.i281, %bb.gm ], [ %i.ars, %bb.gn ], [ %i.ars, %bb.gp ] ; 7 uses
  %.0.i41.i500 = phi ptr [ %i.aty, %bb.gm ], [ %i.aum, %bb.gn ], [ %i.aum, %bb.gp ] ; 6 uses
  %i.aut = icmp ult ptr %.014.i.i499, %i.ato
  br i1 %i.aut, label %iter.check, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i489

iter.check:                                       ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i498
  %.014.i.i4991350 = ptrtoaddr ptr %.014.i.i499 to i64 ; 2 uses
  %.0.i41.i5001349 = ptrtoaddr ptr %.0.i41.i500 to i64
  %i.auu = add i64 %i.ass, 1
  %i.auv = sub i64 %i.auu, %.014.i.i4991350       ; 7 uses
  %min.iters.check = icmp ult i64 %i.auv, 4
  %i.auw = sub i64 %.014.i.i4991350, %.0.i41.i5001349
  %diff.check = icmp ugt i64 %i.auw, -32
  %or.cond1634 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1634, label %.lr.ph.i.i501.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1351 = icmp ult i64 %i.auv, 32
  br i1 %min.iters.check1351, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd44ZSTD_compressBlock_doubleFast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.bhu = load i8, ptr %i.bhq, align 1, !tbaa !37
  %i.bhv = getelementptr inbounds nuw i8, ptr %.121.i115.i370, i64 7
  store i8 %i.bhu, ptr %i.bhs, align 1, !tbaa !37
  %i.bhw = getelementptr inbounds nuw i8, ptr %.11520.i116.i371, i64 8 ; 2 uses
  %i.bhx = load i8, ptr %i.bht, align 1, !tbaa !37
  %i.bhy = getelementptr inbounds nuw i8, ptr %.121.i115.i370, i64 8
  store i8 %i.bhx, ptr %i.bhv, align 1, !tbaa !37
  %exitcond.not.i117.i372.7 = icmp eq ptr %i.bhw, %.12.i.i315
  br i1 %exitcond.not.i117.i372.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i357, label %.lr.ph.i114.i369, !llvm.loop !126

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i357: ; preds = %bb.jd, %.lr.ph.i114.i369.prol.loopexit, %.lr.ph.i114.i369, %middle.block1382, %vec.epilog.middle.block1399, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i111.i366, %bb.jb
  %i.bhz = load ptr, ptr %i.art, align 8, !tbaa !38
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.bfn
  store ptr %i.bia, ptr %i.art, align 8, !tbaa !38
  %i.bib = icmp ugt i64 %i.bfn, 65535
  %.pre276.i358 = load ptr, ptr %i.arw, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bib, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i357
  store i32 1, ptr %i.arv, align 8, !tbaa !52
  %i.bic = load ptr, ptr %1, align 8, !tbaa !53
  %i.bid = ptrtoint ptr %.pre276.i358 to i64
  %i.bie = ptrtoint ptr %i.bic to i64
  %i.bif = sub i64 %i.bid, %i.bie
  %i.big = lshr exact i64 %i.bif, 3
  %i.bih = trunc i64 %i.big to i32
  store i32 %i.bih, ptr %i.arx, align 4, !tbaa !54
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i357, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.thread.i318
  %i.bii = phi ptr [ %.pre.i319, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.thread.i318 ], [ %.pre276.i358, %bb.ji ], [ %.pre276.i358, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit479.i.i357 ] ; 4 uses
  %i.bij = trunc i64 %i.bfn to i16
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bii, i64 4
  store i16 %i.bij, ptr %i.bik, align 4, !tbaa !55
  store i32 %i.bfo, ptr %i.bii, align 4, !tbaa !57
  %i.bil = add i64 %.12410.i.i314, -3             ; 3 uses
  %i.bim = icmp ugt i64 %i.bil, 65535
  br i1 %i.bim, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344: ; preds = %bb.jj, %bb.gr
  %.sink352.i345 = phi ptr [ %i.awt, %bb.gr ], [ %i.bii, %bb.jj ] ; 2 uses
  %.sink348.ph.i346 = phi i64 [ %i.aww, %bb.gr ], [ %i.bil, %bb.jj ]
  %.13411.i.ph.i347 = phi i64 [ %i.atu, %bb.gr ], [ %.12410.i.i314, %bb.jj ]
  %.1391.i.ph.i348 = phi i32 [ %.0390.i242.i283, %bb.gr ], [ %.0384.i243.i282, %bb.jj ]
  %.1385.i.ph.i349 = phi i32 [ %.0384.i243.i282, %bb.gr ], [ %.6420.i.i313, %bb.jj ]
  %.13.i.ph.i350 = phi ptr [ %i.ato, %bb.gr ], [ %.12.i.i315, %bb.jj ]
  store i32 2, ptr %i.arv, align 8, !tbaa !52
  %i.bin = load ptr, ptr %1, align 8, !tbaa !53
  %i.bio = ptrtoint ptr %.sink352.i345 to i64
  %i.bip = ptrtoint ptr %i.bin to i64
  %i.biq = sub i64 %i.bio, %i.bip
  %i.bir = lshr exact i64 %i.biq, 3
  %i.bis = trunc i64 %i.bir to i32
  store i32 %i.bis, ptr %i.arx, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320: ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344, %bb.jj, %bb.gr
  %.sink348.i321 = phi i64 [ %i.aww, %bb.gr ], [ %i.bil, %bb.jj ], [ %.sink348.ph.i346, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344 ]
  %.sink347.i322 = phi ptr [ %i.awt, %bb.gr ], [ %i.bii, %bb.jj ], [ %.sink352.i345, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344 ] ; 2 uses
  %.13411.i.i323 = phi i64 [ %i.atu, %bb.gr ], [ %.12410.i.i314, %bb.jj ], [ %.13411.i.ph.i347, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344 ]
  %.1391.i.i324 = phi i32 [ %.0390.i242.i283, %bb.gr ], [ %.0384.i243.i282, %bb.jj ], [ %.1391.i.ph.i348, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344 ] ; 2 uses
  %.1385.i.i325 = phi i32 [ %.0384.i243.i282, %bb.gr ], [ %.6420.i.i313, %bb.jj ], [ %.1385.i.ph.i349, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344 ] ; 2 uses
  %.13.i.i326 = phi ptr [ %i.ato, %bb.gr ], [ %.12.i.i315, %bb.jj ], [ %.13.i.ph.i350, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.sink.split.i344 ]
  %i.bit = trunc i64 %.sink348.i321 to i16
  %i.biu = getelementptr inbounds nuw i8, ptr %.sink347.i322, i64 6
  store i16 %i.bit, ptr %i.biu, align 2, !tbaa !65
  %storemerge.i327 = getelementptr inbounds nuw i8, ptr %.sink347.i322, i64 8 ; 2 uses
  store ptr %storemerge.i327, ptr %i.arw, align 8, !tbaa !42
  %i.biv = getelementptr inbounds nuw i8, ptr %.13.i.i326, i64 %.13411.i.i323 ; 6 uses
  %.not452.i.i328 = icmp ugt ptr %i.biv, %i.ae
  br i1 %.not452.i.i328, label %.thread155.i289, label %bb.jk

bb.jk:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320
  %i.biw = add i32 %i.asu, 2                      ; 3 uses
  %i.bix = zext i32 %i.biw to i64
  %i.biy = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bix
  %.val25.i329 = load i64, ptr %i.biy, align 1, !tbaa !26 ; 2 uses
  %i.biz = mul i64 %.val25.i329, -3523014627327384477
  %i.bja = lshr i64 %i.biz, %i.arh
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bja
  store i32 %i.biw, ptr %i.bjb, align 4, !tbaa !3
  %i.bjc = getelementptr inbounds i8, ptr %i.biv, i64 -2 ; 2 uses
  %i.bjd = ptrtoint ptr %i.bjc to i64
  %i.bje = sub i64 %i.bjd, %i.o
  %i.bjf = trunc i64 %i.bje to i32
  %.val24.i330 = load i64, ptr %i.bjc, align 1, !tbaa !26
  %i.bjg = mul i64 %.val24.i330, -3523014627327384477
  %i.bjh = lshr i64 %i.bjg, %i.arh
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bjh
  store i32 %i.bjf, ptr %i.bji, align 4, !tbaa !3
  %i.bjj = mul i64 %.val25.i329, -3523014627193847808
  %i.bjk = lshr i64 %i.bjj, %i.arj
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bjk
  store i32 %i.biw, ptr %i.bjl, align 4, !tbaa !3
  %i.bjm = getelementptr inbounds i8, ptr %i.biv, i64 -1 ; 2 uses
  %i.bjn = ptrtoint ptr %i.bjm to i64
  %i.bjo = sub i64 %i.bjn, %i.o
  %i.bjp = trunc i64 %i.bjo to i32
  %.val17.i331 = load i64, ptr %i.bjm, align 1, !tbaa !26
  %i.bjq = mul i64 %.val17.i331, -3523014627193847808
  %i.bjr = lshr i64 %i.bjq, %i.arj
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bjr
  store i32 %i.bjp, ptr %i.bjs, align 4, !tbaa !3
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jq, %bb.jk
  %i.bjt = phi ptr [ %storemerge.i327, %bb.jk ], [ %i.bkv, %bb.jq ]
  %.1380.i241.i332 = phi ptr [ %i.biv, %bb.jk ], [ %i.bld, %bb.jq ] ; 11 uses
  %.2386.i240.i333 = phi i32 [ %.1385.i.i325, %bb.jk ], [ %.2392.i239.i334, %bb.jq ] ; 4 uses
  %.2392.i239.i334 = phi i32 [ %.1391.i.i324, %bb.jk ], [ %.2386.i240.i333, %bb.jq ] ; 5 uses
  %i.bju = ptrtoint ptr %.1380.i241.i332 to i64
  %i.bjv = sub i64 %i.bju, %i.o
  %i.bjw = trunc i64 %i.bjv to i32                ; 3 uses
  %i.bjx = sub i32 %i.bjw, %.2392.i239.i334       ; 3 uses
  %i.bjy = icmp ult i32 %i.bjx, %i.aa             ; 2 uses
  %i.bjz = zext i32 %i.bjx to i64
  %.v.i335 = select i1 %i.bjy, ptr %invariant.gep.i279, ptr %i.m
  %i.bka = getelementptr i8, ptr %.v.i335, i64 %i.bjz ; 2 uses
  %i.bkb = sub i32 %i.aro, %i.bjx
  %i.bkc = icmp ugt i32 %i.bkb, 2
  br i1 %i.bkc, label %bb.jm, label %.thread155.i289

bb.jm:                                            ; preds = %bb.jl
  %.val8.i336 = load i32, ptr %i.bka, align 1, !tbaa !3
  %.14.i.val.i337 = load i32, ptr %.1380.i241.i332, align 1, !tbaa !3
  %i.bkd = icmp eq i32 %.val8.i336, %.14.i.val.i337
  br i1 %i.bkd, label %bb.jn, label %.thread155.i289

bb.jn:                                            ; preds = %bb.jm
  %i.bke = select i1 %i.bjy, ptr %i.au, ptr %i.ad
  %i.bkf = getelementptr inbounds nuw i8, ptr %.1380.i241.i332, i64 4
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bka, i64 4
  %i.bkh = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.bkf, ptr noundef nonnull %i.bkg, ptr noundef %i.ad, ptr noundef %i.bke, ptr noundef %i.ac) ; 2 uses
  %.not.i.i.i338 = icmp ugt ptr %.1380.i241.i332, %i.ars
  br i1 %.not.i.i.i338, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i341, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bki = load ptr, ptr %i.art, align 8, !tbaa !38
  %.1380.i.val.i339 = load <2 x i64>, ptr %.1380.i241.i332, align 1, !tbaa !37
  store <2 x i64> %.1380.i.val.i339, ptr %i.bki, align 1, !tbaa !37
  %.pre279.i340 = load ptr, ptr %i.arw, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i341

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i341: ; preds = %bb.jo, %bb.jn
  %i.bkj = phi ptr [ %i.bjt, %bb.jn ], [ %.pre279.i340, %bb.jo ] ; 5 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 4
  store i16 0, ptr %i.bkk, align 4, !tbaa !55
  store i32 1, ptr %i.bkj, align 4, !tbaa !57
  %i.bkl = add i64 %i.bkh, 1                      ; 2 uses
  %i.bkm = icmp ugt i64 %i.bkl, 65535
  br i1 %i.bkm, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i341
  store i32 2, ptr %i.arv, align 8, !tbaa !52
  %i.bkn = load ptr, ptr %1, align 8, !tbaa !53
  %i.bko = ptrtoint ptr %i.bkj to i64
  %i.bkp = ptrtoint ptr %i.bkn to i64
  %i.bkq = sub i64 %i.bko, %i.bkp
  %i.bkr = lshr exact i64 %i.bkq, 3
  %i.bks = trunc i64 %i.bkr to i32
  store i32 %i.bks, ptr %i.arx, align 4, !tbaa !54
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit133.i341
  %i.bkt = trunc i64 %i.bkl to i16
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkj, i64 6
  store i16 %i.bkt, ptr %i.bku, align 2, !tbaa !65
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkj, i64 8 ; 2 uses
  store ptr %i.bkv, ptr %i.arw, align 8, !tbaa !42
  %.14.i.val16.i342 = load i64, ptr %.1380.i241.i332, align 1, !tbaa !26 ; 2 uses
  %i.bkw = mul i64 %.14.i.val16.i342, -3523014627193847808
  %i.bkx = lshr i64 %i.bkw, %i.arj
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bkx
  store i32 %i.bjw, ptr %i.bky, align 4, !tbaa !3
  %i.bkz = mul i64 %.14.i.val16.i342, -3523014627327384477
  %i.bla = lshr i64 %i.bkz, %i.arh
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bla
  store i32 %i.bjw, ptr %i.blb, align 4, !tbaa !3
  %i.blc = getelementptr i8, ptr %.1380.i241.i332, i64 %i.bkh
  %i.bld = getelementptr i8, ptr %i.blc, i64 4    ; 4 uses
  %.not453.i.i343 = icmp ugt ptr %i.bld, %i.ae
  br i1 %.not453.i.i343, label %.thread155.i289, label %bb.jl

.thread155.i289:                                  ; preds = %bb.jq, %bb.jm, %bb.jl, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320, %.thread.i288
  %.5395.i.i290 = phi i32 [ %.0390.i242.i283, %.thread.i288 ], [ %.1391.i.i324, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320 ], [ %.2392.i239.i334, %bb.jl ], [ %.2392.i239.i334, %bb.jm ], [ %.2386.i240.i333, %bb.jq ] ; 2 uses
  %.5389.i.i291 = phi i32 [ %.0384.i243.i282, %.thread.i288 ], [ %.1385.i.i325, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320 ], [ %.2386.i240.i333, %bb.jl ], [ %.2386.i240.i333, %bb.jm ], [ %.2392.i239.i334, %bb.jq ] ; 2 uses
  %.4383.i.i292 = phi ptr [ %.0379.i245.i281, %.thread.i288 ], [ %i.biv, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320 ], [ %.1380.i241.i332, %bb.jl ], [ %.1380.i241.i332, %bb.jm ], [ %i.bld, %bb.jq ] ; 2 uses
  %.17.i.i293 = phi ptr [ %i.azy, %.thread.i288 ], [ %i.biv, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit475.i.i320 ], [ %.1380.i241.i332, %bb.jl ], [ %.1380.i241.i332, %bb.jm ], [ %i.bld, %bb.jq ] ; 2 uses
  %i.ble = icmp ult ptr %.17.i.i293, %i.ae
  br i1 %i.ble, label %bb.gf, label %_ZN11duckdb_zstdL52ZSTD_compressBlock_doubleFast_dictMatchState_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj.exit.loopexit.i294

_ZN11duckdb_zstdL52ZSTD_compressBlock_doubleFast_dictMatchState_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj.exit.loopexit.i294: ; preds = %.thread155.i289
  %.pre280.i295 = ptrtoint ptr %.4383.i.i292 to i64
  br label %_ZN11duckdb_zstdL46ZSTD_compressBlock_doubleFast_dictMatchState_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

bb.jr:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i518, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.blf = zext nneg i32 %i.az to i64
  %i.blg = shl i64 4, %i.blf
  %i.blh = zext nneg i32 %i.bb to i64
  %i.bli = shl i64 4, %i.blh
  %.not251.i511 = icmp ugt i32 %i.az, 61
  br i1 %.not251.i511, label %.preheader.i514, label %.lr.ph.i512

.preheader.i514:                                  ; preds = %.lr.ph.i512, %bb.js
  %.not252.i515 = icmp ugt i32 %i.bb, 61
  br i1 %.not252.i515, label %.loopexit.i518, label %.lr.ph185.i516

.lr.ph.i512:                                      ; preds = %bb.js, %.lr.ph.i512
  %.0396.i183.i513 = phi i64 [ %i.blk, %.lr.ph.i512 ], [ 0, %bb.js ] ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0396.i183.i513
  tail call void @llvm.prefetch.p0(ptr %i.blj, i32 0, i32 2, i32 1)
  %i.blk = add i64 %.0396.i183.i513, 64           ; 2 uses
  %i.bll = icmp ult i64 %i.blk, %i.blg
  br i1 %i.bll, label %.lr.ph.i512, label %.preheader.i514, !llvm.loop !94

.lr.ph185.i516:                                   ; preds = %.preheader.i514, %.lr.ph185.i516
  %.0397.i184.i517 = phi i64 [ %i.bln, %.lr.ph185.i516 ], [ 0, %.preheader.i514 ] ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0397.i184.i517
  tail call void @llvm.prefetch.p0(ptr %i.blm, i32 0, i32 2, i32 1)
  %i.bln = add i64 %.0397.i184.i517, 64           ; 2 uses
  %i.blo = icmp ult i64 %i.bln, %i.bli
  br i1 %i.blo, label %.lr.ph185.i516, label %.loopexit.i518, !llvm.loop !95

.loopexit.i518:                                   ; preds = %.lr.ph185.i516, %.preheader.i514, %bb.jr
  %i.blp = and i64 %i.bg, 4294967295
  %i.blq = icmp eq i64 %i.blp, 0
  %i.blr = zext i1 %i.blq to i64                  ; 2 uses
  %i.bls = add nsw i64 %4, -8
  %i.blt = icmp sgt i64 %i.bls, %i.blr
  br i1 %i.blt, label %.lr.ph247.i522, label %_ZN11duckdb_zstdL46ZSTD_compressBlock_doubleFast_dictMatchState_4EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

.lr.ph247.i522:                                   ; preds = %.loopexit.i518
  %i.blu = getelementptr inbounds nuw i8, ptr %3, i64 %i.blr
  %i.blv = sub i32 64, %i.g
  %i.blw = zext nneg i32 %i.blv to i64            ; 5 uses
  %i.blx = sub i32 64, %i.k
  %i.bly = zext nneg i32 %i.blx to i64            ; 4 uses
  %i.blz = sub i32 56, %i.az
  %i.bma = zext nneg i32 %i.blz to i64            ; 2 uses
  %i.bmb = sub i32 56, %i.bb
  %i.bmc = zext nneg i32 %i.bmb to i64
  %i.bmd = add i32 %i.aa, -1                      ; 2 uses
  %i.bme = getelementptr inbounds i8, ptr %i.ad, i64 -7 ; 6 uses
  %i.bmf = getelementptr inbounds i8, ptr %i.ad, i64 -3 ; 3 uses
  %i.bmg = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 3 uses
  %i.bmh = getelementptr inbounds i8, ptr %i.ad, i64 -32 ; 10 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.bmj = ptrtoint ptr %i.bmh to i64             ; 2 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 4 uses
  %i.bmn = zext i32 %i.ax to i64
  %i.bmo = sub nsw i64 0, %i.bmn
  %invariant.gep.i523 = getelementptr i8, ptr %i.ar, i64 %i.bmo
  br label %bb.jt

bb.jt:                                            ; preds = %.thread155.i533, %.lr.ph247.i522
  %.0.i246.i524 = phi ptr [ %i.blu, %.lr.ph247.i522 ], [ %.17.i.i537, %.thread155.i533 ] ; 26 uses
  %.0379.i245.i525 = phi ptr [ %3, %.lr.ph247.i522 ], [ %.4383.i.i536, %.thread155.i533 ] ; 28 uses
  %.0384.i243.i526 = phi i32 [ %i.af, %.lr.ph247.i522 ], [ %.5389.i.i535, %.thread155.i533 ] ; 6 uses
  %.0390.i242.i527 = phi i32 [ %i.ah, %.lr.ph247.i522 ], [ %.5395.i.i534, %.thread155.i533 ] ; 3 uses
  %.0.i.val27.i528 = load i64, ptr %.0.i246.i524, align 1, !tbaa !26 ; 4 uses
  %i.bmp = mul i64 %.0.i.val27.i528, -3523014627327384477 ; 2 uses
  %i.bmq = lshr i64 %i.bmp, %i.blw
  %i.bmr = mul i64 %.0.i.val27.i528, -3523014627193167104 ; 2 uses
  %i.bms = lshr i64 %i.bmr, %i.bly
  %i.bmt = lshr i64 %i.bmp, %i.bma                ; 2 uses
  %i.bmu = lshr i64 %i.bmr, %i.bmc                ; 2 uses
  %i.bmv = lshr i64 %i.bmt, 8
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bmv
  %i.bmx = load i32, ptr %i.bmw, align 4, !tbaa !3 ; 2 uses
  %i.bmy = lshr i64 %i.bmu, 8
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bmy
  %i.bna = load i32, ptr %i.bmz, align 4, !tbaa !3 ; 2 uses
  %i.bnb = zext i32 %i.bmx to i64
  %i.bnc = xor i64 %i.bmt, %i.bnb
  %i.bnd = and i64 %i.bnc, 255
  %.not.i529 = icmp eq i64 %i.bnd, 0
  %i.bne = zext i32 %i.bna to i64
  %i.bnf = xor i64 %i.bmu, %i.bne
  %i.bng = and i64 %i.bnf, 255
  %.not161.i530 = icmp eq i64 %i.bng, 0
  %i.bnh = ptrtoint ptr %.0.i246.i524 to i64      ; 7 uses
  %i.bni = sub i64 %i.bnh, %i.o
  %i.bnj = trunc i64 %i.bni to i32                ; 6 uses
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bmq ; 2 uses
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !3 ; 2 uses
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bms ; 2 uses
  %i.bnn = load i32, ptr %i.bnm, align 4, !tbaa !3 ; 3 uses
  %i.bno = zext i32 %i.bnl to i64
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bno ; 4 uses
  %i.bnq = zext i32 %i.bnn to i64
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bnq ; 2 uses
  %i.bns = add i32 %i.bnj, 1                      ; 3 uses
  %i.bnt = sub i32 %i.bns, %.0384.i243.i526       ; 4 uses
  %i.bnu = icmp ult i32 %i.bnt, %i.aa             ; 2 uses
  %i.bnv = sub i32 %i.bnt, %i.ax
  %i.bnw = zext i32 %i.bnv to i64
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bnw
  %i.bny = zext i32 %i.bnt to i64
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bny
  %i.boa = select i1 %i.bnu, ptr %i.bnx, ptr %i.bnz ; 2 uses
  store i32 %i.bnj, ptr %i.bnm, align 4, !tbaa !3
  store i32 %i.bnj, ptr %i.bnk, align 4, !tbaa !3
  %i.bob = sub i32 %i.bmd, %i.bnt
  %i.boc = icmp ugt i32 %i.bob, 2
  br i1 %i.boc, label %bb.ju, label %bb.kg

bb.ju:                                            ; preds = %bb.jt
  %.val4.i721 = load i32, ptr %i.boa, align 1, !tbaa !3
  %i.bod = getelementptr inbounds nuw i8, ptr %.0.i246.i524, i64 1 ; 6 uses
  %.val.i722 = load i32, ptr %i.bod, align 1, !tbaa !3
  %i.boe = icmp eq i32 %.val4.i721, %.val.i722
  br i1 %i.boe, label %bb.jv, label %bb.kg

bb.jv:                                            ; preds = %bb.ju
  %i.bof = select i1 %i.bnu, ptr %i.au, ptr %i.ad
  %i.bog = getelementptr inbounds nuw i8, ptr %.0.i246.i524, i64 5
  %i.boh = getelementptr inbounds nuw i8, ptr %i.boa, i64 4
  %i.boi = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.bog, ptr noundef nonnull %i.boh, ptr noundef %i.ad, ptr noundef %i.bof, ptr noundef %i.ac) ; 2 uses
  %i.boj = add i64 %i.boi, 4                      ; 2 uses
  %i.bok = ptrtoint ptr %i.bod to i64
  %i.bol = ptrtoint ptr %.0379.i245.i525 to i64   ; 2 uses
  %i.bom = sub i64 %i.bok, %i.bol                 ; 7 uses
  %.not.i474.i.i723 = icmp ugt ptr %i.bod, %i.bmh
  %i.bon = load ptr, ptr %i.bmi, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i474.i.i723, label %bb.ka, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %.0379.i.val.i724 = load <2 x i64>, ptr %.0379.i245.i525, align 1, !tbaa !37
  store <2 x i64> %.0379.i.val.i724, ptr %i.bon, align 1, !tbaa !37
  %i.boo = icmp ugt i64 %i.bom, 16
  %i.bop = load ptr, ptr %i.bmi, align 8, !tbaa !38 ; 4 uses
  br i1 %i.boo, label %bb.jx, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i725

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.thread.i725: ; preds = %bb.jw
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 %i.bom
  store ptr %i.boq, ptr %i.bmi, align 8, !tbaa !38
  %.pre277.i726 = load ptr, ptr %i.bml, align 8, !tbaa !42
  br label %bb.kf

bb.jx:                                            ; preds = %bb.jw
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bop, i64 16
  %i.bos = getelementptr inbounds nuw i8, ptr %.0379.i245.i525, i64 16 ; 2 uses
  %i.bot = getelementptr i8, ptr %i.bop, i64 %i.bom
  %.val31.i727 = load <2 x i64>, ptr %i.bos, align 1, !tbaa !37
  store <2 x i64> %.val31.i727, ptr %i.bor, align 1, !tbaa !37
  %i.bou = icmp slt i64 %i.bom, 33
  br i1 %i.bou, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i733, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bop, i64 32
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jz, %bb.jy
  %.130.i.i.i728 = phi ptr [ %i.bov, %bb.jy ], [ %i.boy, %bb.jz ] ; 3 uses
  %.pn.i.i.i729 = phi ptr [ %i.bos, %bb.jy ], [ %i.box, %bb.jz ] ; 2 uses
  %.1.i.i.i730 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i729, i64 16
  %.1.i.i.val.i731 = load <2 x i64>, ptr %.1.i.i.i730, align 1, !tbaa !37
  store <2 x i64> %.1.i.i.val.i731, ptr %.130.i.i.i728, align 1, !tbaa !37
  %i.bow = getelementptr inbounds nuw i8, ptr %.130.i.i.i728, i64 16
  %i.box = getelementptr inbounds nuw i8, ptr %.pn.i.i.i729, i64 32 ; 2 uses
  %.val30.i732 = load <2 x i64>, ptr %i.box, align 1, !tbaa !37
  store <2 x i64> %.val30.i732, ptr %i.bow, align 1, !tbaa !37
  %i.boy = getelementptr inbounds nuw i8, ptr %.130.i.i.i728, i64 32 ; 2 uses
  %i.boz = icmp ult ptr %i.boy, %i.bot
  br i1 %i.boz, label %bb.jz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i733, !llvm.loop !43

bb.ka:                                            ; preds = %bb.jv
  %.not.i36.i735 = icmp ugt ptr %.0379.i245.i525, %i.bmh
  br i1 %.not.i36.i735, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i742, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.bpa = sub i64 %i.bmj, %i.bol                 ; 2 uses
  %i.bpb = getelementptr inbounds i8, ptr %i.bon, i64 %i.bpa ; 3 uses
  %.val19.i.i736 = load <2 x i64>, ptr %.0379.i245.i525, align 1, !tbaa !37
  store <2 x i64> %.val19.i.i736, ptr %i.bon, align 1, !tbaa !37
  %i.bpc = icmp slt i64 %i.bpa, 17
  br i1 %i.bpc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i742, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bon, i64 16
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kd, %bb.kc
  %.130.i.i37.i737 = phi ptr [ %i.bpd, %bb.kc ], [ %i.bpg, %bb.kd ] ; 3 uses
  %.pn.i.i38.i738 = phi ptr [ %.0379.i245.i525, %bb.kc ], [ %i.bpf, %bb.kd ] ; 2 uses
  %.1.i.i39.i739 = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i738, i64 16
  %.1.i.val.i.i740 = load <2 x i64>, ptr %.1.i.i39.i739, align 1, !tbaa !37
  store <2 x i64> %.1.i.val.i.i740, ptr %.130.i.i37.i737, align 1, !tbaa !37
  %i.bpe = getelementptr inbounds nuw i8, ptr %.130.i.i37.i737, i64 16
  %i.bpf = getelementptr inbounds nuw i8, ptr %.pn.i.i38.i738, i64 32 ; 2 uses
  %.val.i.i741 = load <2 x i64>, ptr %i.bpf, align 1, !tbaa !37
  store <2 x i64> %.val.i.i741, ptr %i.bpe, align 1, !tbaa !37
  %i.bpg = getelementptr inbounds nuw i8, ptr %.130.i.i37.i737, i64 32 ; 2 uses
  %i.bph = icmp ult ptr %i.bpg, %i.bpb
  br i1 %i.bph, label %bb.kd, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i742, !llvm.loop !43

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i742: ; preds = %bb.kd, %bb.kb, %bb.ka
  %.014.i.i743 = phi ptr [ %.0379.i245.i525, %bb.ka ], [ %i.bmh, %bb.kb ], [ %i.bmh, %bb.kd ] ; 7 uses
  %.0.i41.i744 = phi ptr [ %i.bon, %bb.ka ], [ %i.bpb, %bb.kb ], [ %i.bpb, %bb.kd ] ; 6 uses
  %i.bpi = icmp ult ptr %.014.i.i743, %i.bod
  br i1 %i.bpi, label %iter.check1500, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i733

iter.check1500:                                   ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i40.i742
  %.014.i.i7431481 = ptrtoaddr ptr %.014.i.i743 to i64 ; 2 uses
  %.0.i41.i7441480 = ptrtoaddr ptr %.0.i41.i744 to i64
  %i.bpj = add i64 %i.bnh, 1
  %i.bpk = sub i64 %i.bpj, %.014.i.i7431481       ; 7 uses
  %min.iters.check1483 = icmp ult i64 %i.bpk, 4
  %i.bpl = sub i64 %.014.i.i7431481, %.0.i41.i7441480
  %diff.check1482 = icmp ugt i64 %i.bpl, -32
  %or.cond1636 = select i1 %min.iters.check1483, i1 true, i1 %diff.check1482
  br i1 %or.cond1636, label %.lr.ph.i.i745.preheader, label %vector.main.loop.iter.check1484

vector.main.loop.iter.check1484:                  ; preds = %iter.check1500
  %min.iters.check1485 = icmp ult i64 %i.bpk, 32
  br i1 %min.iters.check1485, label %vec.epilog.ph1504, label %vector.ph1486

vector.ph1486:                                    ; preds = %vector.main.loop.iter.check1484
end_hunk_3
