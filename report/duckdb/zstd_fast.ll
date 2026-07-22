inline.NumInlined: 495
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN11duckdb_zstd23ZSTD_compressBlock_fastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.csg = icmp ult ptr %.247.i35.i1385, %i.cif
  br i1 %i.csg, label %bb.ol, label %bb.on

bb.ol:                                            ; preds = %.loopexit.i33.i1383
  %.251.val.i46.i1404 = load i32, ptr %.251.i34.i1384, align 1, !tbaa !3
  %.247.val.i47.i1405 = load i32, ptr %.247.i35.i1385, align 1, !tbaa !3
  %i.csh = icmp eq i32 %.251.val.i46.i1404, %.247.val.i47.i1405
  br i1 %i.csh, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.csi = getelementptr inbounds nuw i8, ptr %.247.i35.i1385, i64 4
  %i.csj = getelementptr inbounds nuw i8, ptr %.251.i34.i1384, i64 4
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol, %.loopexit.i33.i1383
  %.352.i36.i1386 = phi ptr [ %i.csj, %bb.om ], [ %.251.i34.i1384, %bb.ol ], [ %.251.i34.i1384, %.loopexit.i33.i1383 ] ; 4 uses
  %.348.i37.i1387 = phi ptr [ %i.csi, %bb.om ], [ %.247.i35.i1385, %bb.ol ], [ %.247.i35.i1385, %.loopexit.i33.i1383 ] ; 5 uses
  %i.csk = icmp ult ptr %.348.i37.i1387, %i.cig
  br i1 %i.csk, label %bb.oo, label %bb.oq

bb.oo:                                            ; preds = %bb.on
  %.352.val.i44.i1402 = load i16, ptr %.352.i36.i1386, align 1, !tbaa !36
  %.348.val.i45.i1403 = load i16, ptr %.348.i37.i1387, align 1, !tbaa !36
  %i.csl = icmp eq i16 %.352.val.i44.i1402, %.348.val.i45.i1403
  br i1 %i.csl, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.csm = getelementptr inbounds nuw i8, ptr %.348.i37.i1387, i64 2
  %i.csn = getelementptr inbounds nuw i8, ptr %.352.i36.i1386, i64 2
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo, %bb.on
  %.453.i38.i1388 = phi ptr [ %i.csn, %bb.op ], [ %.352.i36.i1386, %bb.oo ], [ %.352.i36.i1386, %bb.on ]
  %.4.i39.i1389 = phi ptr [ %i.csm, %bb.op ], [ %.348.i37.i1387, %bb.oo ], [ %.348.i37.i1387, %bb.on ] ; 4 uses
  %i.cso = icmp ult ptr %.4.i39.i1389, %i.axi
  br i1 %i.cso, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.csp = load i8, ptr %.453.i38.i1388, align 1, !tbaa !34
  %i.csq = load i8, ptr %.4.i39.i1389, align 1, !tbaa !34
  %i.csr = icmp eq i8 %i.csp, %i.csq
  %spec.select.idx.i42.i1400 = zext i1 %i.csr to i64
  %spec.select.i43.i1401 = getelementptr inbounds nuw i8, ptr %.4.i39.i1389, i64 %spec.select.idx.i42.i1400
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq
  %.5.i40.i1390 = phi ptr [ %.4.i39.i1389, %bb.oq ], [ %spec.select.i43.i1401, %bb.or ]
  %i.css = ptrtoint ptr %.5.i40.i1390 to i64
  %i.cst = ptrtoint ptr %i.crs to i64
  %i.csu = sub i64 %i.css, %i.cst
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit60.i1391

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit60.i1391: ; preds = %bb.os, %.thread63.i59.i1417, %bb.oj
  %.3.i41.i1392 = phi i64 [ %i.csf, %.thread63.i59.i1417 ], [ %i.csu, %bb.os ], [ %i.crx, %bb.oj ] ; 2 uses
  %i.csv = ptrtoint ptr %.1.i196.i1373 to i64
  %i.csw = sub i64 %i.csv, %i.awt
  %i.csx = trunc i64 %i.csw to i32
  %.1.i.val12.i1393 = load i64, ptr %.1.i196.i1373, align 1, !tbaa !24
  %i.csy = mul i64 %.1.i.val12.i1393, -3523014627193167104
  %i.csz = lshr i64 %i.csy, %i.cid
  %i.cta = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.csz
  store i32 %i.csx, ptr %i.cta, align 4, !tbaa !3
  %i.ctb = getelementptr i8, ptr %.1.i196.i1373, i64 %.3.i41.i1392
  %i.ctc = getelementptr i8, ptr %i.ctb, i64 4    ; 3 uses
  %.not.i.i1394 = icmp ugt ptr %.1.i196.i1373, %i.cih
  br i1 %.not.i.i1394, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit75.i1397, label %bb.ot

bb.ot:                                            ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit60.i1391
  %i.ctd = load ptr, ptr %i.cii, align 8, !tbaa !38
  %.1.i.val23.i1395 = load <2 x i64>, ptr %.1.i196.i1373, align 1, !tbaa !34
  store <2 x i64> %.1.i.val23.i1395, ptr %i.ctd, align 1, !tbaa !34
  %.pre283.i1396 = load ptr, ptr %i.cil, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit75.i1397

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit75.i1397: ; preds = %bb.ot, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit60.i1391
  %i.cte = phi ptr [ %i.crn, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit60.i1391 ], [ %.pre283.i1396, %bb.ot ] ; 5 uses
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cte, i64 4
  store i16 0, ptr %i.ctf, align 4, !tbaa !55
  store i32 1, ptr %i.cte, align 4, !tbaa !57
  %i.ctg = add i64 %.3.i41.i1392, 1               ; 2 uses
  %i.cth = icmp ugt i64 %i.ctg, 65535
  br i1 %i.cth, label %bb.ou, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit.i1398

bb.ou:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit75.i1397
  store i32 2, ptr %i.cik, align 8, !tbaa !52
  %i.cti = load ptr, ptr %1, align 8, !tbaa !53
  %i.ctj = ptrtoint ptr %i.cte to i64
  %i.ctk = ptrtoint ptr %i.cti to i64
  %i.ctl = sub i64 %i.ctj, %i.ctk
  %i.ctm = lshr exact i64 %i.ctl, 3
  %i.ctn = trunc i64 %i.ctm to i32
  store i32 %i.ctn, ptr %i.cim, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit.i1398

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit.i1398: ; preds = %bb.ou, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit75.i1397
  %i.cto = trunc i64 %i.ctg to i16
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cte, i64 6
  store i16 %i.cto, ptr %i.ctp, align 2, !tbaa !58
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.cte, i64 8 ; 2 uses
  store ptr %i.ctq, ptr %i.cil, align 8, !tbaa !42
  %.not293.i.i1399 = icmp ugt ptr %i.ctc, %i.axj
  br i1 %.not293.i.i1399, label %.critedge3.i.i1378, label %.lr.ph197.i1372

.critedge3.i.i1378:                               ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit.i1398, %.lr.ph197.i1372, %bb.og, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit5.i1367
  %.4276.i.i1379 = phi i32 [ %.2274.i.i1347, %bb.og ], [ %.2274.i.i1347, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit5.i1367 ], [ %.3275.i194.i1375, %.lr.ph197.i1372 ], [ %.3270.i195.i1374, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit.i1398 ] ; 2 uses
  %.4271.i.i1380 = phi i32 [ 0, %bb.og ], [ %.2269.i.i1348, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit5.i1367 ], [ %.3270.i195.i1374, %.lr.ph197.i1372 ], [ %.3275.i194.i1375, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit.i1398 ] ; 2 uses
  %.2.i.i1381 = phi ptr [ %i.cqy, %bb.og ], [ %i.cqy, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit5.i1367 ], [ %.1.i196.i1373, %.lr.ph197.i1372 ], [ %i.ctc, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit.i1398 ] ; 4 uses
  %i.ctr = getelementptr inbounds nuw i8, ptr %.2.i.i1381, i64 3 ; 2 uses
  %.not287.i.i1382 = icmp ult ptr %i.ctr, %i.axj
  br i1 %.not287.i.i1382, label %bb.mx, label %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit

_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit: ; preds = %.critedge3.i.i1378, %bb.nh, %bb.nb, %bb.mw
  %.1273.i164.i1292 = phi i32 [ %.1273.i206.fr.i1304, %bb.nh ], [ 0, %bb.nb ], [ %.0272.i.i669, %bb.mw ], [ %.4276.i.i1379, %.critedge3.i.i1378 ] ; 2 uses
  %.1268.i162.i1293 = phi i32 [ %.1268.i208.i1302, %bb.nh ], [ %.1268.i208.i1302, %bb.nb ], [ %spec.select.i.i668, %bb.mw ], [ %.4271.i.i1380, %.critedge3.i.i1378 ] ; 2 uses
  %.0225.i160.i1294 = phi ptr [ %.0225.i210.i1300, %bb.nh ], [ %.0225.i210.i1300, %bb.nb ], [ %3, %bb.mw ], [ %.2.i.i1381, %.critedge3.i.i1378 ]
  %.0266.i.i1295 = select i1 %i.aya, i32 %i.axk, i32 0
  %spec.select295.i.i1296 = select i1 %i.axz, i32 %i.axm, i32 0
  %i.cts = icmp ne i32 %.1273.i164.i1292, 0       ; 2 uses
  %or.cond.i.i1297 = select i1 %i.aya, i1 %i.cts, i1 false
  %i.ctt = select i1 %or.cond.i.i1297, i32 %i.axk, i32 %spec.select295.i.i1296
  %i.ctu = select i1 %i.cts, i32 %.1273.i164.i1292, i32 %.0266.i.i1295
  store i32 %i.ctu, ptr %2, align 4, !tbaa !3
  %.not294.i.i1298 = icmp eq i32 %.1268.i162.i1293, 0
  %i.ctv = select i1 %.not294.i.i1298, i32 %i.ctt, i32 %.1268.i162.i1293
  store i32 %i.ctv, ptr %i.axl, align 4, !tbaa !3
  br label %bb.ov

bb.ov:                                            ; preds = %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_6_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_5_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_6_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_5_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_4_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit
  %.sink3295 = phi ptr [ %i.axi, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %i.axi, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_6_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %i.axi, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_5_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %i.axi, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %i.ac, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %i.ac, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_6_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %i.ac, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_5_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %i.ac, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_4_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ]
  %.0225.i160.i1294.sink = phi ptr [ %.0225.i160.i1294, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %.0225.i160.i1086, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_6_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %.0225.i160.i878, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_5_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %.0225.i160.i673, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %.0225.i160.i465, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_7_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %.0225.i160.i257, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_6_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %.0225.i160.i52, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_5_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ], [ %.0225.i160.i, %_ZN11duckdb_zstdL34ZSTD_compressBlock_fast_noDict_4_1EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit ]
  %i.ctw = ptrtoint ptr %.sink3295 to i64
  %i.ctx = ptrtoint ptr %.0225.i160.i1294.sink to i64
  %i.cty = sub i64 %i.ctw, %i.ctx
  ret i64 %i.cty
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd38ZSTD_compressBlock_fast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.h = load i32, ptr %i.g, align 4, !tbaa !87
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 18 uses
  %i.l = zext i32 %i.i to i64                     ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31   ; 22 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 25 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 50 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 16 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !3      ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3    ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !31  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 18 uses
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !89  ; 14 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %.neg.i.i = sub i64 %i.ah, %i.ag
  %.neg332.i.i = trunc i64 %.neg.i.i to i32
  %i.ai = add i32 %i.n, %.neg332.i.i              ; 12 uses
  %i.aj = ptrtoint ptr %3 to i64
  %i.ak = ptrtoint ptr %i.p to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !23 ; 12 uses
  %i.as = ptrtoint ptr %i.k to i64                ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.au = load i32, ptr %i.at, align 8, !tbaa !90
  %.not.i.i = icmp eq i32 %i.au, 0                ; 4 uses
  switch i32 %i.b, label %bb.b [
    i32 7, label %bb.jc
    i32 5, label %bb.ck
    i32 6, label %bb.ft
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = shl nuw i64 4, %i.av
  %.not.i = icmp ugt i32 %i.ar, 61
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0292.i183.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0292.i183.i
  tail call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 2, i32 1)
  %i.ay = add nuw i64 %.0292.i183.i, 64           ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !91

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.c, %bb.b
  %i.ba = add nsw i64 %4, -8
  %.not333.i206.i = icmp slt i64 %i.ba, %i.l
  br i1 %.not333.i206.i, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %.loopexit.i
  %.0262.i205.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.bb = and i64 %i.ap, 4294967295
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  %i.bf = sub i32 32, %i.f                        ; 4 uses
  %i.bg = sub i32 24, %i.ar                       ; 2 uses
  %i.bh = add i32 %i.n, -1                        ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.bk = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.q, i64 -3 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 2 uses
  %i.br = zext i32 %i.ai to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.ac, i64 %i.bs
  br label %bb.d

bb.d:                                             ; preds = %.thread122.i, %.lr.ph212.i
  %.0262.i211.i = phi ptr [ %.0262.i205.i, %.lr.ph212.i ], [ %.0262.i.i, %.thread122.i ]
  %.0261.i210.i = phi ptr [ %i.be, %.lr.ph212.i ], [ %.3269.i.i, %.thread122.i ] ; 3 uses
  %.0266.i209.i = phi ptr [ %3, %.lr.ph212.i ], [ %.3269.i.i, %.thread122.i ] ; 26 uses
  %.0272.i208.i = phi i32 [ %i.s, %.lr.ph212.i ], [ %.7279.i.i, %.thread122.i ] ; 8 uses
  %.0282.i207.i = phi i32 [ %i.u, %.lr.ph212.i ], [ %.7289.i.i, %.thread122.i ] ; 3 uses
  %.0261.i.val12.i = load i32, ptr %.0261.i210.i, align 1, !tbaa !3
  %i.bu = mul i32 %.0261.i.val12.i, -1640531535   ; 2 uses
  %i.bv = lshr i32 %i.bu, %i.bg                   ; 2 uses
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3  ; 2 uses
  %i.ca = xor i32 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.0261.i210.i, i64 256
  %invariant.op2487 = sub i32 1, %.0272.i208.i
  br label %bb.e

bb.e:                                             ; preds = %bb.cc, %bb.d
  %.0319.i.i = phi ptr [ %i.cb, %bb.d ], [ %.1320.i.i, %bb.cc ] ; 2 uses
  %.0315.i.i = phi i64 [ %i.l, %bb.d ], [ %.1316.i.i, %bb.cc ]
  %.0309.i.in.in.in.i = phi i32 [ %i.ca, %bb.d ], [ %i.ri, %bb.cc ]
  %.0307.i.i = phi i32 [ %i.bz, %bb.d ], [ %i.rh, %bb.cc ]
  %.pn217.i = phi i32 [ %i.bu, %bb.d ], [ %i.ce, %bb.cc ]
  %.1263.i.i = phi ptr [ %.0262.i211.i, %bb.d ], [ %i.rc, %bb.cc ] ; 4 uses
  %.1.i.i = phi ptr [ %.0261.i210.i, %bb.d ], [ %.1263.i.i, %bb.cc ] ; 16 uses
  %.0301.i.in.i = lshr i32 %.pn217.i, %i.bf
  %.0301.i.i = zext i32 %.0301.i.in.i to i64
  %.0311.i.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0301.i.i ; 2 uses
  %.0311.i.i = load i32, ptr %.0311.i.in.i, align 4, !tbaa !3 ; 3 uses
  %.0309.i.in.in.i = and i32 %.0309.i.in.in.in.i, 255
  %.0309.i.in.i = icmp eq i32 %.0309.i.in.in.i, 0
  %.pn.i = ptrtoint ptr %.1.i.i to i64            ; 4 uses
  %.0313.i.in.i = sub i64 %.pn.i, %i.as           ; 2 uses
  %.0313.i.i = trunc i64 %.0313.i.in.i to i32     ; 4 uses
  %i.cc = zext i32 %.0311.i.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cc ; 4 uses
  %.reass.i.reass.reass.reass = add i32 %.0313.i.i, %invariant.op2487 ; 4 uses
  %.1263.i.val11.i = load i32, ptr %.1263.i.i, align 1, !tbaa !3
  %i.ce = mul i32 %.1263.i.val11.i, -1640531535   ; 2 uses
  %i.cf = lshr i32 %i.ce, %i.bg                   ; 2 uses
  store i32 %.0313.i.i, ptr %.0311.i.in.i, align 4, !tbaa !3
  %i.cg = sub i32 %i.bh, %.reass.i.reass.reass.reass
  %i.ch = icmp ugt i32 %i.cg, 2
  br i1 %i.ch, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  %i.ci = icmp ult i32 %.reass.i.reass.reass.reass, %i.n ; 2 uses
  %i.cj = sub i32 %.reass.i.reass.reass.reass, %i.ai
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ck
  %i.cm = zext i32 %.reass.i.reass.reass.reass to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cm
  %i.co = select i1 %i.ci, ptr %i.cl, ptr %i.cn   ; 2 uses
  %.val4.i = load i32, ptr %i.co, align 1, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %.val.i = load i32, ptr %i.cp, align 1, !tbaa !3
  %i.cq = icmp eq i32 %.val4.i, %.val.i
  br i1 %i.cq, label %bb.g, label %bb.ao

bb.g:                                             ; preds = %bb.f
  %.1.i.i1994.le = ptrtoint ptr %.1.i.i to i64    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 5 uses
  %i.cs = select i1 %i.ci, ptr %i.af, ptr %i.q    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 5 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 5 uses
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 %i.cx ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.q
  %..i.i = select i1 %i.cz, ptr %i.cy, ptr %i.q   ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %..i.i, i64 -7 ; 2 uses
  %i.db = icmp ult ptr %i.ct, %i.da
  br i1 %i.db, label %bb.h, label %.loopexit.i.i.i

bb.h:                                             ; preds = %bb.g
  %.val60.i.i.i = load i64, ptr %i.cu, align 1, !tbaa !24 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.ct, align 1, !tbaa !24 ; 2 uses
  %.not.i.i22.i = icmp eq i64 %.val60.i.i.i, %.val.i.i.i
  br i1 %.not.i.i22.i, label %.preheader.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = xor i64 %.val.i.i.i, %.val60.i.i.i
  %i.dd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dc, i1 true)
  %i.de = lshr i64 %i.dd, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %bb.j
  %.pn.i.i23.i = phi ptr [ %.049.i.i.i, %bb.j ], [ %i.cu, %bb.h ]
  %.pn67.i.i.i = phi ptr [ %.045.i.i.i, %bb.j ], [ %i.ct, %bb.h ]
  %.045.i.i.i = getelementptr inbounds nuw i8, ptr %.pn67.i.i.i, i64 8 ; 5 uses
  %.049.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i23.i, i64 8 ; 3 uses
  %i.df = icmp ult ptr %.045.i.i.i, %i.da
  br i1 %i.df, label %bb.j, label %.loopexit.i.i.i

bb.j:                                             ; preds = %.preheader.i.i.i
  %.049.val.i.i.i = load i64, ptr %.049.i.i.i, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.i.i = load i64, ptr %.045.i.i.i, align 1, !tbaa !24 ; 2 uses
  %.not59.i.i.i = icmp eq i64 %.049.val.i.i.i, %.045.val.i.i.i
  br i1 %.not59.i.i.i, label %.preheader.i.i.i, label %.thread63.i.i.i

.thread63.i.i.i:                                  ; preds = %bb.j
  %i.dg = xor i64 %.045.val.i.i.i, %.049.val.i.i.i
  %i.dh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dg, i1 true)
  %i.di = lshr i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.045.i.i.i, i64 %i.di
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.ct to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.g
  %.251.i.i.i = phi ptr [ %i.cu, %bb.g ], [ %.049.i.i.i, %.preheader.i.i.i ] ; 4 uses
  %.247.i.i.i = phi ptr [ %i.ct, %bb.g ], [ %.045.i.i.i, %.preheader.i.i.i ] ; 5 uses
  %i.dn = getelementptr inbounds i8, ptr %..i.i, i64 -3
  %i.do = icmp ult ptr %.247.i.i.i, %i.dn
  br i1 %i.do, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit.i.i.i
  %.251.val.i.i.i = load i32, ptr %.251.i.i.i, align 1, !tbaa !3
  %.247.val.i.i.i = load i32, ptr %.247.i.i.i, align 1, !tbaa !3
  %i.dp = icmp eq i32 %.251.val.i.i.i, %.247.val.i.i.i
  br i1 %i.dp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %.247.i.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.251.i.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.loopexit.i.i.i
  %.352.i.i.i = phi ptr [ %i.dr, %bb.l ], [ %.251.i.i.i, %bb.k ], [ %.251.i.i.i, %.loopexit.i.i.i ] ; 4 uses
  %.348.i.i.i = phi ptr [ %i.dq, %bb.l ], [ %.247.i.i.i, %bb.k ], [ %.247.i.i.i, %.loopexit.i.i.i ] ; 5 uses
  %i.ds = getelementptr inbounds i8, ptr %..i.i, i64 -1
  %i.dt = icmp ult ptr %.348.i.i.i, %i.ds
  br i1 %i.dt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.352.val.i.i.i = load i16, ptr %.352.i.i.i, align 1, !tbaa !36
  %.348.val.i.i.i = load i16, ptr %.348.i.i.i, align 1, !tbaa !36
  %i.du = icmp eq i16 %.352.val.i.i.i, %.348.val.i.i.i
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %.348.i.i.i, i64 2
  %i.dw = getelementptr inbounds nuw i8, ptr %.352.i.i.i, i64 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.453.i.i.i = phi ptr [ %i.dw, %bb.o ], [ %.352.i.i.i, %bb.n ], [ %.352.i.i.i, %bb.m ]
  %.4.i.i.i = phi ptr [ %i.dv, %bb.o ], [ %.348.i.i.i, %bb.n ], [ %.348.i.i.i, %bb.m ] ; 4 uses
  %i.dx = icmp ult ptr %.4.i.i.i, %..i.i
  br i1 %i.dx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dy = load i8, ptr %.453.i.i.i, align 1, !tbaa !34
  %i.dz = load i8, ptr %.4.i.i.i, align 1, !tbaa !34
  %i.ea = icmp eq i8 %i.dy, %i.dz
  %spec.select.idx.i.i.i = zext i1 %i.ea to i64
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %.4.i.i.i, i64 %spec.select.idx.i.i.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.5.i.i.i = phi ptr [ %.4.i.i.i, %bb.p ], [ %spec.select.i.i.i, %bb.q ]
  %i.eb = ptrtoint ptr %.5.i.i.i to i64
  %i.ec = ptrtoint ptr %i.ct to i64
  %i.ed = sub i64 %i.eb, %i.ec
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd38ZSTD_compressBlock_fast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %i.qj = getelementptr inbounds nuw i8, ptr %.121.i61.i, i64 7
  store i8 %i.qi, ptr %i.qg, align 1, !tbaa !34
  %i.qk = getelementptr inbounds nuw i8, ptr %.11520.i62.i, i64 8 ; 2 uses
  %i.ql = load i8, ptr %i.qh, align 1, !tbaa !34
  %i.qm = getelementptr inbounds nuw i8, ptr %.121.i61.i, i64 8
  store i8 %i.ql, ptr %i.qj, align 1, !tbaa !34
  %exitcond.not.i63.i.7 = icmp eq ptr %i.qk, %.5.i.lcssa.i
  br i1 %exitcond.not.i63.i.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i, label %.lr.ph.i60.i, !llvm.loop !105

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i: ; preds = %bb.bu, %.lr.ph.i60.i.prol.loopexit, %.lr.ph.i60.i, %middle.block2048, %vec.epilog.middle.block2065, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i57.i, %bb.bs
  %i.qn = load ptr, ptr %i.bj, align 8, !tbaa !38
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.ob
  store ptr %i.qo, ptr %i.bj, align 8, !tbaa !38
  %i.qp = icmp ugt i64 %i.ob, 65535
  %.pre254.i = load ptr, ptr %i.bm, align 8, !tbaa !42 ; 3 uses
  br i1 %i.qp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i
  store i32 1, ptr %i.bl, align 8, !tbaa !52
  %i.qq = load ptr, ptr %1, align 8, !tbaa !53
  %i.qr = ptrtoint ptr %.pre254.i to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = lshr exact i64 %i.qt, 3
  %i.qv = trunc i64 %i.qu to i32
  store i32 %i.qv, ptr %i.bn, align 4, !tbaa !54
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.thread.i
  %i.qw = phi ptr [ %.pre253.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.thread.i ], [ %.pre254.i, %bb.bz ], [ %.pre254.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i ] ; 4 uses
  %i.qx = trunc i64 %i.ob to i16
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store i16 %i.qx, ptr %i.qy, align 4, !tbaa !55
  store i32 %i.oc, ptr %i.qw, align 4, !tbaa !57
  %i.qz = add i64 %.5298.i.lcssa.i, -3            ; 3 uses
  %i.ra = icmp ugt i64 %i.qz, 65535
  br i1 %i.ra, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i

bb.cb:                                            ; preds = %bb.bd, %.thread.i
  %.not336.i.i = icmp uge ptr %.1263.i.i, %.0319.i.i ; 2 uses
  %i.rb = zext i1 %.not336.i.i to i64
  %.1316.i.i = add i64 %.0315.i.i, %i.rb          ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.1263.i.i, i64 %.1316.i.i ; 2 uses
  %i.rd = icmp ugt ptr %i.rc, %i.r
  br i1 %i.rd, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.1320.i.idx.i = select i1 %.not336.i.i, i64 256, i64 0
  %.1320.i.i = getelementptr inbounds nuw i8, ptr %.0319.i.i, i64 %.1320.i.idx.i
  %i.re = lshr i32 %i.cf, 8
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !3  ; 2 uses
  %i.ri = xor i32 %i.rh, %i.cf
  br label %bb.e

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i: ; preds = %bb.ca, %bb.bc, %bb.an
  %.sink335.i = phi ptr [ %i.mc, %bb.bc ], [ %i.if, %bb.an ], [ %i.qw, %bb.ca ] ; 2 uses
  %.sink331.ph.i = phi i64 [ %i.mf, %bb.bc ], [ %i.ii, %bb.an ], [ %i.qz, %bb.ca ]
  %.6299.i.ph.ph.i = phi i64 [ %.2295.i.lcssa.i, %bb.bc ], [ %i.fi, %bb.an ], [ %.5298.i.lcssa.i, %bb.ca ]
  %.4286.i.ph.ph.i = phi i32 [ %.0272.i208.i, %bb.bc ], [ %.0282.i207.i, %bb.an ], [ %.0272.i208.i, %bb.ca ]
  %.4276.i.ph.ph.i = phi i32 [ %i.ir, %bb.bc ], [ %.0272.i208.i, %bb.an ], [ %i.ml, %bb.ca ]
  %.6.i.ph.ph.i = phi ptr [ %.2.i.lcssa.i, %bb.bc ], [ %i.cr, %bb.an ], [ %.5.i.lcssa.i, %bb.ca ]
  store i32 2, ptr %i.bl, align 8, !tbaa !52
  %i.rj = load ptr, ptr %1, align 8, !tbaa !53
  %i.rk = ptrtoint ptr %.sink335.i to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = lshr exact i64 %i.rm, 3
  %i.ro = trunc i64 %i.rn to i32
  store i32 %i.ro, ptr %i.bn, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i: ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i, %bb.ca, %bb.bc, %bb.an
  %.sink331.i = phi i64 [ %i.ii, %bb.an ], [ %i.mf, %bb.bc ], [ %i.qz, %bb.ca ], [ %.sink331.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i ]
  %.sink330.i = phi ptr [ %i.if, %bb.an ], [ %i.mc, %bb.bc ], [ %i.qw, %bb.ca ], [ %.sink335.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i ] ; 2 uses
  %.6299.i.ph.i = phi i64 [ %i.fi, %bb.an ], [ %.2295.i.lcssa.i, %bb.bc ], [ %.5298.i.lcssa.i, %bb.ca ], [ %.6299.i.ph.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i ]
  %.4286.i.ph.i = phi i32 [ %.0282.i207.i, %bb.an ], [ %.0272.i208.i, %bb.bc ], [ %.0272.i208.i, %bb.ca ], [ %.4286.i.ph.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i ] ; 2 uses
  %.4276.i.ph.i = phi i32 [ %.0272.i208.i, %bb.an ], [ %i.ir, %bb.bc ], [ %i.ml, %bb.ca ], [ %.4276.i.ph.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i ] ; 2 uses
  %.6.i.ph.i = phi ptr [ %i.cr, %bb.an ], [ %.2.i.lcssa.i, %bb.bc ], [ %.5.i.lcssa.i, %bb.ca ], [ %.6.i.ph.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i ]
  %i.rp = trunc i64 %.sink331.i to i16
  %i.rq = getelementptr inbounds nuw i8, ptr %.sink330.i, i64 6
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !58
  %i.rr = getelementptr inbounds nuw i8, ptr %.sink330.i, i64 8 ; 2 uses
  store ptr %i.rr, ptr %i.bm, align 8, !tbaa !42
  %i.rs = getelementptr inbounds nuw i8, ptr %.6.i.ph.i, i64 %.6299.i.ph.i ; 4 uses
  %.not337.i.i = icmp ugt ptr %i.rs, %i.r
  br i1 %.not337.i.i, label %.thread122.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i
  %i.rt = add i32 %.0313.i.i, 2
  %i.ru = and i64 %.0313.i.in.i, 4294967295
  %i.rv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 2
  %.val10.i = load i32, ptr %i.rw, align 1, !tbaa !3
  %i.rx = mul i32 %.val10.i, -1640531535
  %i.ry = lshr i32 %i.rx, %i.bf
  %i.rz = zext i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rz
  store i32 %i.rt, ptr %i.sa, align 4, !tbaa !3
  %i.sb = getelementptr inbounds i8, ptr %i.rs, i64 -2 ; 2 uses
  %i.sc = ptrtoint ptr %i.sb to i64
  %i.sd = sub i64 %i.sc, %i.as
  %i.se = trunc i64 %i.sd to i32
  %.val9.i = load i32, ptr %i.sb, align 1, !tbaa !3
  %i.sf = mul i32 %.val9.i, -1640531535
  %i.sg = lshr i32 %i.sf, %i.bf
  %i.sh = zext i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sh
  store i32 %i.se, ptr %i.si, align 4, !tbaa !3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cj, %bb.cd
  %i.sj = phi ptr [ %i.rr, %bb.cd ], [ %i.tl, %bb.cj ]
  %.1267.i204.i = phi ptr [ %i.rs, %bb.cd ], [ %i.tr, %bb.cj ] ; 9 uses
  %.5277.i203.i = phi i32 [ %.4276.i.ph.i, %bb.cd ], [ %.5287.i202.i, %bb.cj ] ; 4 uses
  %.5287.i202.i = phi i32 [ %.4286.i.ph.i, %bb.cd ], [ %.5277.i203.i, %bb.cj ] ; 5 uses
  %i.sk = ptrtoint ptr %.1267.i204.i to i64
  %i.sl = sub i64 %i.sk, %i.as
  %i.sm = trunc i64 %i.sl to i32                  ; 2 uses
  %i.sn = sub i32 %i.sm, %.5287.i202.i            ; 3 uses
  %i.so = icmp ult i32 %i.sn, %i.n                ; 2 uses
  %i.sp = zext i32 %i.sn to i64
  %.v.i = select i1 %i.so, ptr %i.bt, ptr %i.k
  %i.sq = getelementptr inbounds nuw i8, ptr %.v.i, i64 %i.sp ; 2 uses
  %i.sr = sub i32 %i.bh, %i.sn
  %i.ss = icmp ugt i32 %i.sr, 2
  br i1 %i.ss, label %bb.cf, label %.thread122.i

bb.cf:                                            ; preds = %bb.ce
  %.val7.i = load i32, ptr %i.sq, align 1, !tbaa !3
  %.7.i.val.i = load i32, ptr %.1267.i204.i, align 1, !tbaa !3
  %i.st = icmp eq i32 %.val7.i, %.7.i.val.i
  br i1 %i.st, label %bb.cg, label %.thread122.i

bb.cg:                                            ; preds = %bb.cf
  %i.su = select i1 %i.so, ptr %i.af, ptr %i.q
  %i.sv = getelementptr inbounds nuw i8, ptr %.1267.i204.i, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.sx = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.sv, ptr noundef nonnull %i.sw, ptr noundef %i.q, ptr noundef %i.su, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i = icmp ugt ptr %.1267.i204.i, %i.bi
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sy = load ptr, ptr %i.bj, align 8, !tbaa !38
  %.1267.i.val.i = load <2 x i64>, ptr %.1267.i204.i, align 1, !tbaa !34
  store <2 x i64> %.1267.i.val.i, ptr %i.sy, align 1, !tbaa !34
  %.pre257.i = load ptr, ptr %i.bm, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i: ; preds = %bb.ch, %bb.cg
  %i.sz = phi ptr [ %i.sj, %bb.cg ], [ %.pre257.i, %bb.ch ] ; 5 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  store i16 0, ptr %i.ta, align 4, !tbaa !55
  store i32 1, ptr %i.sz, align 4, !tbaa !57
  %i.tb = add i64 %i.sx, 1                        ; 2 uses
  %i.tc = icmp ugt i64 %i.tb, 65535
  br i1 %i.tc, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i
  store i32 2, ptr %i.bl, align 8, !tbaa !52
  %i.td = load ptr, ptr %1, align 8, !tbaa !53
  %i.te = ptrtoint ptr %i.sz to i64
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = sub i64 %i.te, %i.tf
  %i.th = lshr exact i64 %i.tg, 3
  %i.ti = trunc i64 %i.th to i32
  store i32 %i.ti, ptr %i.bn, align 4, !tbaa !54
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i
  %i.tj = trunc i64 %i.tb to i16
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sz, i64 6
  store i16 %i.tj, ptr %i.tk, align 2, !tbaa !58
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sz, i64 8 ; 2 uses
  store ptr %i.tl, ptr %i.bm, align 8, !tbaa !42
  %.7.i.val8.i = load i32, ptr %.1267.i204.i, align 1, !tbaa !3
  %i.tm = mul i32 %.7.i.val8.i, -1640531535
  %i.tn = lshr i32 %i.tm, %i.bf
  %i.to = zext i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.to
  store i32 %i.sm, ptr %i.tp, align 4, !tbaa !3
  %i.tq = getelementptr i8, ptr %.1267.i204.i, i64 %i.sx
  %i.tr = getelementptr i8, ptr %i.tq, i64 4      ; 3 uses
  %.not338.i.i = icmp ugt ptr %i.tr, %i.r
  br i1 %.not338.i.i, label %.thread122.i, label %bb.ce

.thread122.i:                                     ; preds = %bb.cj, %bb.cf, %bb.ce, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i
  %.7289.i.i = phi i32 [ %.4286.i.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i ], [ %.5287.i202.i, %bb.ce ], [ %.5287.i202.i, %bb.cf ], [ %.5277.i203.i, %bb.cj ] ; 2 uses
  %.7279.i.i = phi i32 [ %.4276.i.ph.i, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i ], [ %.5277.i203.i, %bb.ce ], [ %.5277.i203.i, %bb.cf ], [ %.5287.i202.i, %bb.cj ] ; 2 uses
  %.3269.i.i = phi ptr [ %i.rs, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i ], [ %.1267.i204.i, %bb.ce ], [ %.1267.i204.i, %bb.cf ], [ %i.tr, %bb.cj ] ; 4 uses
  %.0262.i.i = getelementptr inbounds nuw i8, ptr %.3269.i.i, i64 %i.l ; 2 uses
  %.not333.i.i = icmp ugt ptr %.0262.i.i, %i.r
  br i1 %.not333.i.i, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %bb.d

bb.ck:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i28, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ts = zext nneg i32 %i.ar to i64
  %i.tt = shl nuw i64 4, %i.ts
  %.not.i25 = icmp ugt i32 %i.ar, 61
  br i1 %.not.i25, label %.loopexit.i28, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.cl, %.lr.ph.i26
  %.0292.i183.i27 = phi i64 [ %i.tv, %.lr.ph.i26 ], [ 0, %bb.cl ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0292.i183.i27
  tail call void @llvm.prefetch.p0(ptr %i.tu, i32 0, i32 2, i32 1)
  %i.tv = add nuw i64 %.0292.i183.i27, 64         ; 2 uses
  %i.tw = icmp ult i64 %i.tv, %i.tt
  br i1 %i.tw, label %.lr.ph.i26, label %.loopexit.i28, !llvm.loop !91

.loopexit.i28:                                    ; preds = %.lr.ph.i26, %bb.cl, %bb.ck
  %i.tx = add nsw i64 %4, -8
  %.not333.i206.i29 = icmp slt i64 %i.tx, %i.l
  br i1 %.not333.i206.i29, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %.lr.ph212.i30

.lr.ph212.i30:                                    ; preds = %.loopexit.i28
  %.0262.i205.i31 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.ty = and i64 %i.ap, 4294967295
  %i.tz = icmp eq i64 %i.ty, 0
  %i.ua = zext i1 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %3, i64 %i.ua
  %i.uc = sub i32 64, %i.f
  %i.ud = zext nneg i32 %i.uc to i64              ; 4 uses
  %i.ue = sub i32 56, %i.ar
  %i.uf = zext nneg i32 %i.ue to i64              ; 2 uses
  %i.ug = add i32 %i.n, -1                        ; 2 uses
  %i.uh = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.uj = ptrtoint ptr %i.uh to i64               ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.un = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 4 uses
  %i.uo = getelementptr inbounds i8, ptr %i.q, i64 -3 ; 2 uses
  %i.up = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 2 uses
  %i.uq = zext i32 %i.ai to i64
  %i.ur = sub nsw i64 0, %i.uq
  %i.us = getelementptr inbounds i8, ptr %i.ac, i64 %i.ur
  br label %bb.cm

bb.cm:                                            ; preds = %.thread122.i97, %.lr.ph212.i30
  %.0262.i211.i32 = phi ptr [ %.0262.i205.i31, %.lr.ph212.i30 ], [ %.0262.i.i101, %.thread122.i97 ]
  %.0261.i210.i33 = phi ptr [ %i.ub, %.lr.ph212.i30 ], [ %.3269.i.i100, %.thread122.i97 ] ; 3 uses
  %.0266.i209.i34 = phi ptr [ %3, %.lr.ph212.i30 ], [ %.3269.i.i100, %.thread122.i97 ] ; 26 uses
  %.0272.i208.i35 = phi i32 [ %i.s, %.lr.ph212.i30 ], [ %.7279.i.i99, %.thread122.i97 ] ; 8 uses
  %.0282.i207.i36 = phi i32 [ %i.u, %.lr.ph212.i30 ], [ %.7289.i.i98, %.thread122.i97 ] ; 3 uses
  %.0261.i.val12.i37 = load i64, ptr %.0261.i210.i33, align 1, !tbaa !24
  %i.ut = mul i64 %.0261.i.val12.i37, -3523014627271114752 ; 2 uses
  %i.uu = lshr i64 %i.ut, %i.uf                   ; 2 uses
  %i.uv = lshr i64 %i.uu, 8
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !3  ; 2 uses
  %i.uy = zext i32 %i.ux to i64
  %i.uz = xor i64 %i.uu, %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %.0261.i210.i33, i64 256
  %invariant.op2483 = sub i32 1, %.0272.i208.i35
  br label %bb.cn

bb.cn:                                            ; preds = %bb.fl, %bb.cm
  %.0319.i.i38 = phi ptr [ %i.va, %bb.cm ], [ %.1320.i.i59, %bb.fl ] ; 2 uses
  %.0315.i.i39 = phi i64 [ %i.l, %bb.cm ], [ %.1316.i.i57, %bb.fl ]
  %.0309.i.in.in.in.i40 = phi i64 [ %i.uz, %bb.cm ], [ %i.akh, %bb.fl ]
  %.0307.i.i41 = phi i32 [ %i.ux, %bb.cm ], [ %i.akf, %bb.fl ]
  %.pn217.i42 = phi i64 [ %i.ut, %bb.cm ], [ %i.vd, %bb.fl ]
  %.1263.i.i43 = phi ptr [ %.0262.i211.i32, %bb.cm ], [ %i.akb, %bb.fl ] ; 4 uses
  %.1.i.i44 = phi ptr [ %.0261.i210.i33, %bb.cm ], [ %.1263.i.i43, %bb.fl ] ; 16 uses
  %.0301.i.i45 = lshr i64 %.pn217.i42, %i.ud
  %.0311.i.in.i46 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0301.i.i45 ; 2 uses
  %.0311.i.i47 = load i32, ptr %.0311.i.in.i46, align 4, !tbaa !3 ; 3 uses
  %.0309.i.in.in.i48 = and i64 %.0309.i.in.in.in.i40, 255
  %.0309.i.in.not.i = icmp eq i64 %.0309.i.in.in.i48, 0
  %.pn.i49 = ptrtoint ptr %.1.i.i44 to i64        ; 4 uses
  %.0313.i.in.i50 = sub i64 %.pn.i49, %i.as       ; 2 uses
  %.0313.i.i51 = trunc i64 %.0313.i.in.i50 to i32 ; 4 uses
  %i.vb = zext i32 %.0311.i.i47 to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.vb ; 4 uses
  %.reass.i53.reass.reass.reass = add i32 %.0313.i.i51, %invariant.op2483 ; 4 uses
  %.1263.i.val11.i54 = load i64, ptr %.1263.i.i43, align 1, !tbaa !24
  %i.vd = mul i64 %.1263.i.val11.i54, -3523014627271114752 ; 2 uses
  %i.ve = lshr i64 %i.vd, %i.uf                   ; 2 uses
  store i32 %.0313.i.i51, ptr %.0311.i.in.i46, align 4, !tbaa !3
  %i.vf = sub i32 %i.ug, %.reass.i53.reass.reass.reass
  %i.vg = icmp ugt i32 %i.vf, 2
  br i1 %i.vg, label %bb.co, label %bb.dx

bb.co:                                            ; preds = %bb.cn
  %i.vh = icmp ult i32 %.reass.i53.reass.reass.reass, %i.n ; 2 uses
  %i.vi = sub i32 %.reass.i53.reass.reass.reass, %i.ai
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.vj
  %i.vl = zext i32 %.reass.i53.reass.reass.reass to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.vl
  %i.vn = select i1 %i.vh, ptr %i.vk, ptr %i.vm   ; 2 uses
  %.val4.i208 = load i32, ptr %i.vn, align 1, !tbaa !3
  %i.vo = getelementptr inbounds nuw i8, ptr %.1.i.i44, i64 1
  %.val.i209 = load i32, ptr %i.vo, align 1, !tbaa !3
  %i.vp = icmp eq i32 %.val4.i208, %.val.i209
  br i1 %i.vp, label %bb.cp, label %bb.dx

bb.cp:                                            ; preds = %bb.co
  %.1.i.i441748.le = ptrtoint ptr %.1.i.i44 to i64 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.1.i.i44, i64 1 ; 5 uses
  %i.vr = select i1 %i.vh, ptr %i.af, ptr %i.q    ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.1.i.i44, i64 5 ; 8 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vn, i64 4 ; 5 uses
  %i.vu = ptrtoint ptr %i.vr to i64
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = getelementptr inbounds i8, ptr %i.vs, i64 %i.vw ; 2 uses
  %i.vy = icmp ult ptr %i.vx, %i.q
  %..i.i210 = select i1 %i.vy, ptr %i.vx, ptr %i.q ; 4 uses
  %i.vz = getelementptr inbounds i8, ptr %..i.i210, i64 -7 ; 2 uses
  %i.wa = icmp ult ptr %i.vs, %i.vz
  br i1 %i.wa, label %bb.cq, label %.loopexit.i.i.i211

bb.cq:                                            ; preds = %bb.cp
  %.val60.i.i.i284 = load i64, ptr %i.vt, align 1, !tbaa !24 ; 2 uses
  %.val.i.i.i285 = load i64, ptr %i.vs, align 1, !tbaa !24 ; 2 uses
  %.not.i.i22.i286 = icmp eq i64 %.val60.i.i.i284, %.val.i.i.i285
  br i1 %.not.i.i22.i286, label %.preheader.i.i.i287, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wb = xor i64 %.val.i.i.i285, %.val60.i.i.i284
  %i.wc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.wb, i1 true)
  %i.wd = lshr i64 %i.wc, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i219

.preheader.i.i.i287:                              ; preds = %bb.cq, %bb.cs
  %.pn.i.i23.i288 = phi ptr [ %.049.i.i.i291, %bb.cs ], [ %i.vt, %bb.cq ]
  %.pn67.i.i.i289 = phi ptr [ %.045.i.i.i290, %bb.cs ], [ %i.vs, %bb.cq ]
  %.045.i.i.i290 = getelementptr inbounds nuw i8, ptr %.pn67.i.i.i289, i64 8 ; 5 uses
  %.049.i.i.i291 = getelementptr inbounds nuw i8, ptr %.pn.i.i23.i288, i64 8 ; 3 uses
  %i.we = icmp ult ptr %.045.i.i.i290, %i.vz
  br i1 %i.we, label %bb.cs, label %.loopexit.i.i.i211

bb.cs:                                            ; preds = %.preheader.i.i.i287
  %.049.val.i.i.i292 = load i64, ptr %.049.i.i.i291, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.i.i293 = load i64, ptr %.045.i.i.i290, align 1, !tbaa !24 ; 2 uses
  %.not59.i.i.i294 = icmp eq i64 %.049.val.i.i.i292, %.045.val.i.i.i293
  br i1 %.not59.i.i.i294, label %.preheader.i.i.i287, label %.thread63.i.i.i295

.thread63.i.i.i295:                               ; preds = %bb.cs
  %i.wf = xor i64 %.045.val.i.i.i293, %.049.val.i.i.i292
  %i.wg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.wf, i1 true)
  %i.wh = lshr i64 %i.wg, 3
  %i.wi = getelementptr inbounds nuw i8, ptr %.045.i.i.i290, i64 %i.wh
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = ptrtoint ptr %i.vs to i64
  %i.wl = sub i64 %i.wj, %i.wk
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i219

.loopexit.i.i.i211:                               ; preds = %.preheader.i.i.i287, %bb.cp
  %.251.i.i.i212 = phi ptr [ %i.vt, %bb.cp ], [ %.049.i.i.i291, %.preheader.i.i.i287 ] ; 4 uses
  %.247.i.i.i213 = phi ptr [ %i.vs, %bb.cp ], [ %.045.i.i.i290, %.preheader.i.i.i287 ] ; 5 uses
  %i.wm = getelementptr inbounds i8, ptr %..i.i210, i64 -3
  %i.wn = icmp ult ptr %.247.i.i.i213, %i.wm
  br i1 %i.wn, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %.loopexit.i.i.i211
  %.251.val.i.i.i282 = load i32, ptr %.251.i.i.i212, align 1, !tbaa !3
  %.247.val.i.i.i283 = load i32, ptr %.247.i.i.i213, align 1, !tbaa !3
  %i.wo = icmp eq i32 %.251.val.i.i.i282, %.247.val.i.i.i283
  br i1 %i.wo, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.wp = getelementptr inbounds nuw i8, ptr %.247.i.i.i213, i64 4
  %i.wq = getelementptr inbounds nuw i8, ptr %.251.i.i.i212, i64 4
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %.loopexit.i.i.i211
  %.352.i.i.i214 = phi ptr [ %i.wq, %bb.cu ], [ %.251.i.i.i212, %bb.ct ], [ %.251.i.i.i212, %.loopexit.i.i.i211 ] ; 4 uses
  %.348.i.i.i215 = phi ptr [ %i.wp, %bb.cu ], [ %.247.i.i.i213, %bb.ct ], [ %.247.i.i.i213, %.loopexit.i.i.i211 ] ; 5 uses
  %i.wr = getelementptr inbounds i8, ptr %..i.i210, i64 -1
  %i.ws = icmp ult ptr %.348.i.i.i215, %i.wr
  br i1 %i.ws, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %.352.val.i.i.i280 = load i16, ptr %.352.i.i.i214, align 1, !tbaa !36
  %.348.val.i.i.i281 = load i16, ptr %.348.i.i.i215, align 1, !tbaa !36
  %i.wt = icmp eq i16 %.352.val.i.i.i280, %.348.val.i.i.i281
  br i1 %i.wt, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.wu = getelementptr inbounds nuw i8, ptr %.348.i.i.i215, i64 2
  %i.wv = getelementptr inbounds nuw i8, ptr %.352.i.i.i214, i64 2
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %.453.i.i.i216 = phi ptr [ %i.wv, %bb.cx ], [ %.352.i.i.i214, %bb.cw ], [ %.352.i.i.i214, %bb.cv ]
  %.4.i.i.i217 = phi ptr [ %i.wu, %bb.cx ], [ %.348.i.i.i215, %bb.cw ], [ %.348.i.i.i215, %bb.cv ] ; 4 uses
  %i.ww = icmp ult ptr %.4.i.i.i217, %..i.i210
  br i1 %i.ww, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.wx = load i8, ptr %.453.i.i.i216, align 1, !tbaa !34
  %i.wy = load i8, ptr %.4.i.i.i217, align 1, !tbaa !34
  %i.wz = icmp eq i8 %i.wx, %i.wy
  %spec.select.idx.i.i.i278 = zext i1 %i.wz to i64
  %spec.select.i.i.i279 = getelementptr inbounds nuw i8, ptr %.4.i.i.i217, i64 %spec.select.idx.i.i.i278
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.5.i.i.i218 = phi ptr [ %.4.i.i.i217, %bb.cy ], [ %spec.select.i.i.i279, %bb.cz ]
  %i.xa = ptrtoint ptr %.5.i.i.i218 to i64
  %i.xb = ptrtoint ptr %i.vs to i64
  %i.xc = sub i64 %i.xa, %i.xb
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i219
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd38ZSTD_compressBlock_fast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  store i8 %i.aje, ptr %i.ajc, align 1, !tbaa !34
  %i.ajg = getelementptr inbounds nuw i8, ptr %.11520.i62.i138, i64 7
  %i.ajh = load i8, ptr %i.ajd, align 1, !tbaa !34
  %i.aji = getelementptr inbounds nuw i8, ptr %.121.i61.i137, i64 7
  store i8 %i.ajh, ptr %i.ajf, align 1, !tbaa !34
  %i.ajj = getelementptr inbounds nuw i8, ptr %.11520.i62.i138, i64 8 ; 2 uses
  %i.ajk = load i8, ptr %i.ajg, align 1, !tbaa !34
  %i.ajl = getelementptr inbounds nuw i8, ptr %.121.i61.i137, i64 8
  store i8 %i.ajk, ptr %i.aji, align 1, !tbaa !34
  %exitcond.not.i63.i139.7 = icmp eq ptr %i.ajj, %.5.i.lcssa.i78
  br i1 %exitcond.not.i63.i139.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i124, label %.lr.ph.i60.i136, !llvm.loop !117

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i124: ; preds = %bb.fd, %.lr.ph.i60.i136.prol.loopexit, %.lr.ph.i60.i136, %middle.block1802, %vec.epilog.middle.block1819, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i57.i133, %bb.fb
  %i.ajm = load ptr, ptr %i.ui, align 8, !tbaa !38
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.aha
  store ptr %i.ajn, ptr %i.ui, align 8, !tbaa !38
  %i.ajo = icmp ugt i64 %i.aha, 65535
  %.pre254.i125 = load ptr, ptr %i.ul, align 8, !tbaa !42 ; 3 uses
  br i1 %i.ajo, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i124
  store i32 1, ptr %i.uk, align 8, !tbaa !52
  %i.ajp = load ptr, ptr %1, align 8, !tbaa !53
  %i.ajq = ptrtoint ptr %.pre254.i125 to i64
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = sub i64 %i.ajq, %i.ajr
  %i.ajt = lshr exact i64 %i.ajs, 3
  %i.aju = trunc i64 %i.ajt to i32
  store i32 %i.aju, ptr %i.um, align 4, !tbaa !54
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i124, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.thread.i81
  %i.ajv = phi ptr [ %.pre253.i82, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.thread.i81 ], [ %.pre254.i125, %bb.fi ], [ %.pre254.i125, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i124 ] ; 4 uses
  %i.ajw = trunc i64 %i.aha to i16
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 4
  store i16 %i.ajw, ptr %i.ajx, align 4, !tbaa !55
  store i32 %i.ahb, ptr %i.ajv, align 4, !tbaa !57
  %i.ajy = add i64 %.5298.i.lcssa.i77, -3         ; 3 uses
  %i.ajz = icmp ugt i64 %i.ajy, 65535
  br i1 %i.ajz, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83

bb.fk:                                            ; preds = %bb.em, %.thread.i55
  %.not336.i.i56 = icmp uge ptr %.1263.i.i43, %.0319.i.i38 ; 2 uses
  %i.aka = zext i1 %.not336.i.i56 to i64
  %.1316.i.i57 = add i64 %.0315.i.i39, %i.aka     ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.1263.i.i43, i64 %.1316.i.i57 ; 2 uses
  %i.akc = icmp ugt ptr %i.akb, %i.r
  br i1 %i.akc, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.1320.i.idx.i58 = select i1 %.not336.i.i56, i64 256, i64 0
  %.1320.i.i59 = getelementptr inbounds nuw i8, ptr %.0319.i.i38, i64 %.1320.i.idx.i58
  %i.akd = lshr i64 %i.ve, 8
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.akd
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !3 ; 2 uses
  %i.akg = zext i32 %i.akf to i64
  %i.akh = xor i64 %i.ve, %i.akg
  br label %bb.cn

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111: ; preds = %bb.fj, %bb.el, %bb.dw
  %.sink335.i112 = phi ptr [ %i.afb, %bb.el ], [ %i.abe, %bb.dw ], [ %i.ajv, %bb.fj ] ; 2 uses
  %.sink331.ph.i113 = phi i64 [ %i.afe, %bb.el ], [ %i.abh, %bb.dw ], [ %i.ajy, %bb.fj ]
  %.6299.i.ph.ph.i114 = phi i64 [ %.2295.i.lcssa.i172, %bb.el ], [ %i.yh, %bb.dw ], [ %.5298.i.lcssa.i77, %bb.fj ]
  %.4286.i.ph.ph.i115 = phi i32 [ %.0272.i208.i35, %bb.el ], [ %.0282.i207.i36, %bb.dw ], [ %.0272.i208.i35, %bb.fj ]
  %.4276.i.ph.ph.i116 = phi i32 [ %i.abq, %bb.el ], [ %.0272.i208.i35, %bb.dw ], [ %i.afk, %bb.fj ]
  %.6.i.ph.ph.i117 = phi ptr [ %.2.i.lcssa.i173, %bb.el ], [ %i.vq, %bb.dw ], [ %.5.i.lcssa.i78, %bb.fj ]
  store i32 2, ptr %i.uk, align 8, !tbaa !52
  %i.aki = load ptr, ptr %1, align 8, !tbaa !53
  %i.akj = ptrtoint ptr %.sink335.i112 to i64
  %i.akk = ptrtoint ptr %i.aki to i64
  %i.akl = sub i64 %i.akj, %i.akk
  %i.akm = lshr exact i64 %i.akl, 3
  %i.akn = trunc i64 %i.akm to i32
  store i32 %i.akn, ptr %i.um, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83: ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111, %bb.fj, %bb.el, %bb.dw
  %.sink331.i84 = phi i64 [ %i.abh, %bb.dw ], [ %i.afe, %bb.el ], [ %i.ajy, %bb.fj ], [ %.sink331.ph.i113, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111 ]
  %.sink330.i85 = phi ptr [ %i.abe, %bb.dw ], [ %i.afb, %bb.el ], [ %i.ajv, %bb.fj ], [ %.sink335.i112, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111 ] ; 2 uses
  %.6299.i.ph.i86 = phi i64 [ %i.yh, %bb.dw ], [ %.2295.i.lcssa.i172, %bb.el ], [ %.5298.i.lcssa.i77, %bb.fj ], [ %.6299.i.ph.ph.i114, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111 ]
  %.4286.i.ph.i87 = phi i32 [ %.0282.i207.i36, %bb.dw ], [ %.0272.i208.i35, %bb.el ], [ %.0272.i208.i35, %bb.fj ], [ %.4286.i.ph.ph.i115, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111 ] ; 2 uses
  %.4276.i.ph.i88 = phi i32 [ %.0272.i208.i35, %bb.dw ], [ %i.abq, %bb.el ], [ %i.afk, %bb.fj ], [ %.4276.i.ph.ph.i116, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111 ] ; 2 uses
  %.6.i.ph.i89 = phi ptr [ %i.vq, %bb.dw ], [ %.2.i.lcssa.i173, %bb.el ], [ %.5.i.lcssa.i78, %bb.fj ], [ %.6.i.ph.ph.i117, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i111 ]
  %i.ako = trunc i64 %.sink331.i84 to i16
  %i.akp = getelementptr inbounds nuw i8, ptr %.sink330.i85, i64 6
  store i16 %i.ako, ptr %i.akp, align 2, !tbaa !58
  %i.akq = getelementptr inbounds nuw i8, ptr %.sink330.i85, i64 8 ; 2 uses
  store ptr %i.akq, ptr %i.ul, align 8, !tbaa !42
  %i.akr = getelementptr inbounds nuw i8, ptr %.6.i.ph.i89, i64 %.6299.i.ph.i86 ; 4 uses
  %.not337.i.i90 = icmp ugt ptr %i.akr, %i.r
  br i1 %.not337.i.i90, label %.thread122.i97, label %bb.fm

bb.fm:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83
  %i.aks = add i32 %.0313.i.i51, 2
  %i.akt = and i64 %.0313.i.in.i50, 4294967295
  %i.aku = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.akt
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 2
  %.val10.i91 = load i64, ptr %i.akv, align 1, !tbaa !24
  %i.akw = mul i64 %.val10.i91, -3523014627271114752
  %i.akx = lshr i64 %i.akw, %i.ud
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.akx
  store i32 %i.aks, ptr %i.aky, align 4, !tbaa !3
  %i.akz = getelementptr inbounds i8, ptr %i.akr, i64 -2 ; 2 uses
  %i.ala = ptrtoint ptr %i.akz to i64
  %i.alb = sub i64 %i.ala, %i.as
  %i.alc = trunc i64 %i.alb to i32
  %.val9.i92 = load i64, ptr %i.akz, align 1, !tbaa !24
  %i.ald = mul i64 %.val9.i92, -3523014627271114752
  %i.ale = lshr i64 %i.ald, %i.ud
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ale
  store i32 %i.alc, ptr %i.alf, align 4, !tbaa !3
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fs, %bb.fm
  %i.alg = phi ptr [ %i.akq, %bb.fm ], [ %i.ami, %bb.fs ]
  %.1267.i204.i93 = phi ptr [ %i.akr, %bb.fm ], [ %i.amn, %bb.fs ] ; 9 uses
  %.5277.i203.i94 = phi i32 [ %.4276.i.ph.i88, %bb.fm ], [ %.5287.i202.i95, %bb.fs ] ; 4 uses
  %.5287.i202.i95 = phi i32 [ %.4286.i.ph.i87, %bb.fm ], [ %.5277.i203.i94, %bb.fs ] ; 5 uses
  %i.alh = ptrtoint ptr %.1267.i204.i93 to i64
  %i.ali = sub i64 %i.alh, %i.as
  %i.alj = trunc i64 %i.ali to i32                ; 2 uses
  %i.alk = sub i32 %i.alj, %.5287.i202.i95        ; 3 uses
  %i.all = icmp ult i32 %i.alk, %i.n              ; 2 uses
  %i.alm = zext i32 %i.alk to i64
  %.v.i96 = select i1 %i.all, ptr %i.us, ptr %i.k
  %i.aln = getelementptr inbounds nuw i8, ptr %.v.i96, i64 %i.alm ; 2 uses
  %i.alo = sub i32 %i.ug, %i.alk
  %i.alp = icmp ugt i32 %i.alo, 2
  br i1 %i.alp, label %bb.fo, label %.thread122.i97

bb.fo:                                            ; preds = %bb.fn
  %.val7.i103 = load i32, ptr %i.aln, align 1, !tbaa !3
  %.7.i.val.i104 = load i32, ptr %.1267.i204.i93, align 1, !tbaa !3
  %i.alq = icmp eq i32 %.val7.i103, %.7.i.val.i104
  br i1 %i.alq, label %bb.fp, label %.thread122.i97

bb.fp:                                            ; preds = %bb.fo
  %i.alr = select i1 %i.all, ptr %i.af, ptr %i.q
  %i.als = getelementptr inbounds nuw i8, ptr %.1267.i204.i93, i64 4
  %i.alt = getelementptr inbounds nuw i8, ptr %i.aln, i64 4
  %i.alu = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.als, ptr noundef nonnull %i.alt, ptr noundef %i.q, ptr noundef %i.alr, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i105 = icmp ugt ptr %.1267.i204.i93, %i.uh
  br i1 %.not.i.i.i105, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i108, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.alv = load ptr, ptr %i.ui, align 8, !tbaa !38
  %.1267.i.val.i106 = load <2 x i64>, ptr %.1267.i204.i93, align 1, !tbaa !34
  store <2 x i64> %.1267.i.val.i106, ptr %i.alv, align 1, !tbaa !34
  %.pre257.i107 = load ptr, ptr %i.ul, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i108

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i108: ; preds = %bb.fq, %bb.fp
  %i.alw = phi ptr [ %i.alg, %bb.fp ], [ %.pre257.i107, %bb.fq ] ; 5 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  store i16 0, ptr %i.alx, align 4, !tbaa !55
  store i32 1, ptr %i.alw, align 4, !tbaa !57
  %i.aly = add i64 %i.alu, 1                      ; 2 uses
  %i.alz = icmp ugt i64 %i.aly, 65535
  br i1 %i.alz, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i108
  store i32 2, ptr %i.uk, align 8, !tbaa !52
  %i.ama = load ptr, ptr %1, align 8, !tbaa !53
  %i.amb = ptrtoint ptr %i.alw to i64
  %i.amc = ptrtoint ptr %i.ama to i64
  %i.amd = sub i64 %i.amb, %i.amc
  %i.ame = lshr exact i64 %i.amd, 3
  %i.amf = trunc i64 %i.ame to i32
  store i32 %i.amf, ptr %i.um, align 4, !tbaa !54
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i108
  %i.amg = trunc i64 %i.aly to i16
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alw, i64 6
  store i16 %i.amg, ptr %i.amh, align 2, !tbaa !58
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alw, i64 8 ; 2 uses
  store ptr %i.ami, ptr %i.ul, align 8, !tbaa !42
  %.7.i.val8.i109 = load i64, ptr %.1267.i204.i93, align 1, !tbaa !24
  %i.amj = mul i64 %.7.i.val8.i109, -3523014627271114752
  %i.amk = lshr i64 %i.amj, %i.ud
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.amk
  store i32 %i.alj, ptr %i.aml, align 4, !tbaa !3
  %i.amm = getelementptr i8, ptr %.1267.i204.i93, i64 %i.alu
  %i.amn = getelementptr i8, ptr %i.amm, i64 4    ; 3 uses
  %.not338.i.i110 = icmp ugt ptr %i.amn, %i.r
  br i1 %.not338.i.i110, label %.thread122.i97, label %bb.fn

.thread122.i97:                                   ; preds = %bb.fs, %bb.fo, %bb.fn, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83
  %.7289.i.i98 = phi i32 [ %.4286.i.ph.i87, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83 ], [ %.5287.i202.i95, %bb.fn ], [ %.5287.i202.i95, %bb.fo ], [ %.5277.i203.i94, %bb.fs ] ; 2 uses
  %.7279.i.i99 = phi i32 [ %.4276.i.ph.i88, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83 ], [ %.5277.i203.i94, %bb.fn ], [ %.5277.i203.i94, %bb.fo ], [ %.5287.i202.i95, %bb.fs ] ; 2 uses
  %.3269.i.i100 = phi ptr [ %i.akr, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i83 ], [ %.1267.i204.i93, %bb.fn ], [ %.1267.i204.i93, %bb.fo ], [ %i.amn, %bb.fs ] ; 4 uses
  %.0262.i.i101 = getelementptr inbounds nuw i8, ptr %.3269.i.i100, i64 %i.l ; 2 uses
  %.not333.i.i102 = icmp ugt ptr %.0262.i.i101, %i.r
  br i1 %.not333.i.i102, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %bb.cm

bb.ft:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i302, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.amo = zext nneg i32 %i.ar to i64
  %i.amp = shl nuw i64 4, %i.amo
  %.not.i299 = icmp ugt i32 %i.ar, 61
  br i1 %.not.i299, label %.loopexit.i302, label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %bb.fu, %.lr.ph.i300
  %.0292.i183.i301 = phi i64 [ %i.amr, %.lr.ph.i300 ], [ 0, %bb.fu ] ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0292.i183.i301
  tail call void @llvm.prefetch.p0(ptr %i.amq, i32 0, i32 2, i32 1)
  %i.amr = add nuw i64 %.0292.i183.i301, 64       ; 2 uses
  %i.ams = icmp ult i64 %i.amr, %i.amp
  br i1 %i.ams, label %.lr.ph.i300, label %.loopexit.i302, !llvm.loop !91

.loopexit.i302:                                   ; preds = %.lr.ph.i300, %bb.fu, %bb.ft
  %i.amt = add nsw i64 %4, -8
  %.not333.i206.i303 = icmp slt i64 %i.amt, %i.l
  br i1 %.not333.i206.i303, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %.lr.ph212.i304

.lr.ph212.i304:                                   ; preds = %.loopexit.i302
  %.0262.i205.i305 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.amu = and i64 %i.ap, 4294967295
  %i.amv = icmp eq i64 %i.amu, 0
  %i.amw = zext i1 %i.amv to i64
  %i.amx = getelementptr inbounds nuw i8, ptr %3, i64 %i.amw
  %i.amy = sub i32 64, %i.f
  %i.amz = zext nneg i32 %i.amy to i64            ; 4 uses
  %i.ana = sub i32 56, %i.ar
  %i.anb = zext nneg i32 %i.ana to i64            ; 2 uses
  %i.anc = add i32 %i.n, -1                       ; 2 uses
  %i.and = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.anf = ptrtoint ptr %i.and to i64             ; 3 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.anj = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 4 uses
  %i.ank = getelementptr inbounds i8, ptr %i.q, i64 -3 ; 2 uses
  %i.anl = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 2 uses
  %i.anm = zext i32 %i.ai to i64
  %i.ann = sub nsw i64 0, %i.anm
  %i.ano = getelementptr inbounds i8, ptr %i.ac, i64 %i.ann
  br label %bb.fv

bb.fv:                                            ; preds = %.thread122.i372, %.lr.ph212.i304
  %.0262.i211.i306 = phi ptr [ %.0262.i205.i305, %.lr.ph212.i304 ], [ %.0262.i.i376, %.thread122.i372 ]
  %.0261.i210.i307 = phi ptr [ %i.amx, %.lr.ph212.i304 ], [ %.3269.i.i375, %.thread122.i372 ] ; 3 uses
  %.0266.i209.i308 = phi ptr [ %3, %.lr.ph212.i304 ], [ %.3269.i.i375, %.thread122.i372 ] ; 26 uses
  %.0272.i208.i309 = phi i32 [ %i.s, %.lr.ph212.i304 ], [ %.7279.i.i374, %.thread122.i372 ] ; 8 uses
  %.0282.i207.i310 = phi i32 [ %i.u, %.lr.ph212.i304 ], [ %.7289.i.i373, %.thread122.i372 ] ; 3 uses
  %.0261.i.val12.i311 = load i64, ptr %.0261.i210.i307, align 1, !tbaa !24
  %i.anp = mul i64 %.0261.i.val12.i311, -3523014627193847808 ; 2 uses
  %i.anq = lshr i64 %i.anp, %i.anb                ; 2 uses
  %i.anr = lshr i64 %i.anq, 8
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.anr
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !3 ; 2 uses
  %i.anu = zext i32 %i.ant to i64
  %i.anv = xor i64 %i.anq, %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %.0261.i210.i307, i64 256
  %invariant.op = sub i32 1, %.0272.i208.i309
  br label %bb.fw

bb.fw:                                            ; preds = %bb.iu, %bb.fv
  %.0319.i.i312 = phi ptr [ %i.anw, %bb.fv ], [ %.1320.i.i334, %bb.iu ] ; 2 uses
  %.0315.i.i313 = phi i64 [ %i.l, %bb.fv ], [ %.1316.i.i332, %bb.iu ]
  %.0309.i.in.in.in.i314 = phi i64 [ %i.anv, %bb.fv ], [ %i.bdd, %bb.iu ]
  %.0307.i.i315 = phi i32 [ %i.ant, %bb.fv ], [ %i.bdb, %bb.iu ]
  %.pn217.i316 = phi i64 [ %i.anp, %bb.fv ], [ %i.anz, %bb.iu ]
  %.1263.i.i317 = phi ptr [ %.0262.i211.i306, %bb.fv ], [ %i.bcx, %bb.iu ] ; 4 uses
  %.1.i.i318 = phi ptr [ %.0261.i210.i307, %bb.fv ], [ %.1263.i.i317, %bb.iu ] ; 16 uses
  %.0301.i.i319 = lshr i64 %.pn217.i316, %i.amz
  %.0311.i.in.i320 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0301.i.i319 ; 2 uses
  %.0311.i.i321 = load i32, ptr %.0311.i.in.i320, align 4, !tbaa !3 ; 3 uses
  %.0309.i.in.in.i322 = and i64 %.0309.i.in.in.in.i314, 255
  %.0309.i.in.not.i323 = icmp eq i64 %.0309.i.in.in.i322, 0
  %.pn.i324 = ptrtoint ptr %.1.i.i318 to i64      ; 4 uses
  %.0313.i.in.i325 = sub i64 %.pn.i324, %i.as     ; 2 uses
  %.0313.i.i326 = trunc i64 %.0313.i.in.i325 to i32 ; 4 uses
  %i.anx = zext i32 %.0311.i.i321 to i64
  %i.any = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.anx ; 4 uses
  %.reass.i328.reass.reass.reass = add i32 %.0313.i.i326, %invariant.op ; 4 uses
  %.1263.i.val11.i329 = load i64, ptr %.1263.i.i317, align 1, !tbaa !24
  %i.anz = mul i64 %.1263.i.val11.i329, -3523014627193847808 ; 2 uses
  %i.aoa = lshr i64 %i.anz, %i.anb                ; 2 uses
  store i32 %.0313.i.i326, ptr %.0311.i.in.i320, align 4, !tbaa !3
  %i.aob = sub i32 %i.anc, %.reass.i328.reass.reass.reass
  %i.aoc = icmp ugt i32 %i.aob, 2
  br i1 %i.aoc, label %bb.fx, label %bb.hg

bb.fx:                                            ; preds = %bb.fw
  %i.aod = icmp ult i32 %.reass.i328.reass.reass.reass, %i.n ; 2 uses
  %i.aoe = sub i32 %.reass.i328.reass.reass.reass, %i.ai
  %i.aof = zext i32 %i.aoe to i64
  %i.aog = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aof
  %i.aoh = zext i32 %.reass.i328.reass.reass.reass to i64
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aoh
  %i.aoj = select i1 %i.aod, ptr %i.aog, ptr %i.aoi ; 2 uses
  %.val4.i483 = load i32, ptr %i.aoj, align 1, !tbaa !3
  %i.aok = getelementptr inbounds nuw i8, ptr %.1.i.i318, i64 1
  %.val.i484 = load i32, ptr %i.aok, align 1, !tbaa !3
  %i.aol = icmp eq i32 %.val4.i483, %.val.i484
  br i1 %i.aol, label %bb.fy, label %bb.hg

bb.fy:                                            ; preds = %bb.fx
  %.1.i.i3181645.le = ptrtoint ptr %.1.i.i318 to i64 ; 3 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.1.i.i318, i64 1 ; 5 uses
  %i.aon = select i1 %i.aod, ptr %i.af, ptr %i.q  ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %.1.i.i318, i64 5 ; 8 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoj, i64 4 ; 5 uses
  %i.aoq = ptrtoint ptr %i.aon to i64
  %i.aor = ptrtoint ptr %i.aop to i64
  %i.aos = sub i64 %i.aoq, %i.aor
  %i.aot = getelementptr inbounds i8, ptr %i.aoo, i64 %i.aos ; 2 uses
  %i.aou = icmp ult ptr %i.aot, %i.q
  %..i.i485 = select i1 %i.aou, ptr %i.aot, ptr %i.q ; 4 uses
  %i.aov = getelementptr inbounds i8, ptr %..i.i485, i64 -7 ; 2 uses
  %i.aow = icmp ult ptr %i.aoo, %i.aov
  br i1 %i.aow, label %bb.fz, label %.loopexit.i.i.i486

bb.fz:                                            ; preds = %bb.fy
  %.val60.i.i.i559 = load i64, ptr %i.aop, align 1, !tbaa !24 ; 2 uses
  %.val.i.i.i560 = load i64, ptr %i.aoo, align 1, !tbaa !24 ; 2 uses
  %.not.i.i22.i561 = icmp eq i64 %.val60.i.i.i559, %.val.i.i.i560
  br i1 %.not.i.i22.i561, label %.preheader.i.i.i562, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aox = xor i64 %.val.i.i.i560, %.val60.i.i.i559
  %i.aoy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aox, i1 true)
  %i.aoz = lshr i64 %i.aoy, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i494

.preheader.i.i.i562:                              ; preds = %bb.fz, %bb.gb
  %.pn.i.i23.i563 = phi ptr [ %.049.i.i.i566, %bb.gb ], [ %i.aop, %bb.fz ]
  %.pn67.i.i.i564 = phi ptr [ %.045.i.i.i565, %bb.gb ], [ %i.aoo, %bb.fz ]
  %.045.i.i.i565 = getelementptr inbounds nuw i8, ptr %.pn67.i.i.i564, i64 8 ; 5 uses
  %.049.i.i.i566 = getelementptr inbounds nuw i8, ptr %.pn.i.i23.i563, i64 8 ; 3 uses
  %i.apa = icmp ult ptr %.045.i.i.i565, %i.aov
  br i1 %i.apa, label %bb.gb, label %.loopexit.i.i.i486

bb.gb:                                            ; preds = %.preheader.i.i.i562
  %.049.val.i.i.i567 = load i64, ptr %.049.i.i.i566, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.i.i568 = load i64, ptr %.045.i.i.i565, align 1, !tbaa !24 ; 2 uses
  %.not59.i.i.i569 = icmp eq i64 %.049.val.i.i.i567, %.045.val.i.i.i568
  br i1 %.not59.i.i.i569, label %.preheader.i.i.i562, label %.thread63.i.i.i570

.thread63.i.i.i570:                               ; preds = %bb.gb
  %i.apb = xor i64 %.045.val.i.i.i568, %.049.val.i.i.i567
  %i.apc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.apb, i1 true)
  %i.apd = lshr i64 %i.apc, 3
  %i.ape = getelementptr inbounds nuw i8, ptr %.045.i.i.i565, i64 %i.apd
  %i.apf = ptrtoint ptr %i.ape to i64
  %i.apg = ptrtoint ptr %i.aoo to i64
  %i.aph = sub i64 %i.apf, %i.apg
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i494

.loopexit.i.i.i486:                               ; preds = %.preheader.i.i.i562, %bb.fy
  %.251.i.i.i487 = phi ptr [ %i.aop, %bb.fy ], [ %.049.i.i.i566, %.preheader.i.i.i562 ] ; 4 uses
  %.247.i.i.i488 = phi ptr [ %i.aoo, %bb.fy ], [ %.045.i.i.i565, %.preheader.i.i.i562 ] ; 5 uses
  %i.api = getelementptr inbounds i8, ptr %..i.i485, i64 -3
  %i.apj = icmp ult ptr %.247.i.i.i488, %i.api
  br i1 %i.apj, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %.loopexit.i.i.i486
  %.251.val.i.i.i557 = load i32, ptr %.251.i.i.i487, align 1, !tbaa !3
  %.247.val.i.i.i558 = load i32, ptr %.247.i.i.i488, align 1, !tbaa !3
  %i.apk = icmp eq i32 %.251.val.i.i.i557, %.247.val.i.i.i558
  br i1 %i.apk, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.apl = getelementptr inbounds nuw i8, ptr %.247.i.i.i488, i64 4
  %i.apm = getelementptr inbounds nuw i8, ptr %.251.i.i.i487, i64 4
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %.loopexit.i.i.i486
  %.352.i.i.i489 = phi ptr [ %i.apm, %bb.gd ], [ %.251.i.i.i487, %bb.gc ], [ %.251.i.i.i487, %.loopexit.i.i.i486 ] ; 4 uses
  %.348.i.i.i490 = phi ptr [ %i.apl, %bb.gd ], [ %.247.i.i.i488, %bb.gc ], [ %.247.i.i.i488, %.loopexit.i.i.i486 ] ; 5 uses
  %i.apn = getelementptr inbounds i8, ptr %..i.i485, i64 -1
  %i.apo = icmp ult ptr %.348.i.i.i490, %i.apn
  br i1 %i.apo, label %bb.gf, label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  %.352.val.i.i.i555 = load i16, ptr %.352.i.i.i489, align 1, !tbaa !36
  %.348.val.i.i.i556 = load i16, ptr %.348.i.i.i490, align 1, !tbaa !36
  %i.app = icmp eq i16 %.352.val.i.i.i555, %.348.val.i.i.i556
  br i1 %i.app, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.apq = getelementptr inbounds nuw i8, ptr %.348.i.i.i490, i64 2
  %i.apr = getelementptr inbounds nuw i8, ptr %.352.i.i.i489, i64 2
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %bb.ge
  %.453.i.i.i491 = phi ptr [ %i.apr, %bb.gg ], [ %.352.i.i.i489, %bb.gf ], [ %.352.i.i.i489, %bb.ge ]
  %.4.i.i.i492 = phi ptr [ %i.apq, %bb.gg ], [ %.348.i.i.i490, %bb.gf ], [ %.348.i.i.i490, %bb.ge ] ; 4 uses
  %i.aps = icmp ult ptr %.4.i.i.i492, %..i.i485
  br i1 %i.aps, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.apt = load i8, ptr %.453.i.i.i491, align 1, !tbaa !34
  %i.apu = load i8, ptr %.4.i.i.i492, align 1, !tbaa !34
  %i.apv = icmp eq i8 %i.apt, %i.apu
  %spec.select.idx.i.i.i553 = zext i1 %i.apv to i64
  %spec.select.i.i.i554 = getelementptr inbounds nuw i8, ptr %.4.i.i.i492, i64 %spec.select.idx.i.i.i553
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.5.i.i.i493 = phi ptr [ %.4.i.i.i492, %bb.gh ], [ %spec.select.i.i.i554, %bb.gi ]
  %i.apw = ptrtoint ptr %.5.i.i.i493 to i64
  %i.apx = ptrtoint ptr %i.aoo to i64
  %i.apy = sub i64 %i.apw, %i.apx
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i494
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd38ZSTD_compressBlock_fast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  store i8 %i.bca, ptr %i.bby, align 1, !tbaa !34
  %i.bcc = getelementptr inbounds nuw i8, ptr %.11520.i62.i413, i64 7
  %i.bcd = load i8, ptr %i.bbz, align 1, !tbaa !34
  %i.bce = getelementptr inbounds nuw i8, ptr %.121.i61.i412, i64 7
  store i8 %i.bcd, ptr %i.bcb, align 1, !tbaa !34
  %i.bcf = getelementptr inbounds nuw i8, ptr %.11520.i62.i413, i64 8 ; 2 uses
  %i.bcg = load i8, ptr %i.bcc, align 1, !tbaa !34
  %i.bch = getelementptr inbounds nuw i8, ptr %.121.i61.i412, i64 8
  store i8 %i.bcg, ptr %i.bce, align 1, !tbaa !34
  %exitcond.not.i63.i414.7 = icmp eq ptr %i.bcf, %.5.i.lcssa.i353
  br i1 %exitcond.not.i63.i414.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i399, label %.lr.ph.i60.i411, !llvm.loop !129

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i399: ; preds = %bb.im, %.lr.ph.i60.i411.prol.loopexit, %.lr.ph.i60.i411, %middle.block1679, %vec.epilog.middle.block1696, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i57.i408, %bb.ik
  %i.bci = load ptr, ptr %i.ane, align 8, !tbaa !38
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 %i.azw
  store ptr %i.bcj, ptr %i.ane, align 8, !tbaa !38
  %i.bck = icmp ugt i64 %i.azw, 65535
  %.pre254.i400 = load ptr, ptr %i.anh, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bck, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i399
  store i32 1, ptr %i.ang, align 8, !tbaa !52
  %i.bcl = load ptr, ptr %1, align 8, !tbaa !53
  %i.bcm = ptrtoint ptr %.pre254.i400 to i64
  %i.bcn = ptrtoint ptr %i.bcl to i64
  %i.bco = sub i64 %i.bcm, %i.bcn
  %i.bcp = lshr exact i64 %i.bco, 3
  %i.bcq = trunc i64 %i.bcp to i32
  store i32 %i.bcq, ptr %i.ani, align 4, !tbaa !54
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i399, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.thread.i356
  %i.bcr = phi ptr [ %.pre253.i357, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.thread.i356 ], [ %.pre254.i400, %bb.ir ], [ %.pre254.i400, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit364.i.i399 ] ; 4 uses
  %i.bcs = trunc i64 %i.azw to i16
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcr, i64 4
  store i16 %i.bcs, ptr %i.bct, align 4, !tbaa !55
  store i32 %i.azx, ptr %i.bcr, align 4, !tbaa !57
  %i.bcu = add i64 %.5298.i.lcssa.i352, -3        ; 3 uses
  %i.bcv = icmp ugt i64 %i.bcu, 65535
  br i1 %i.bcv, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358

bb.it:                                            ; preds = %bb.hv, %.thread.i330
  %.not336.i.i331 = icmp uge ptr %.1263.i.i317, %.0319.i.i312 ; 2 uses
  %i.bcw = zext i1 %.not336.i.i331 to i64
  %.1316.i.i332 = add i64 %.0315.i.i313, %i.bcw   ; 2 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %.1263.i.i317, i64 %.1316.i.i332 ; 2 uses
  %i.bcy = icmp ugt ptr %i.bcx, %i.r
  br i1 %i.bcy, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.1320.i.idx.i333 = select i1 %.not336.i.i331, i64 256, i64 0
  %.1320.i.i334 = getelementptr inbounds nuw i8, ptr %.0319.i.i312, i64 %.1320.i.idx.i333
  %i.bcz = lshr i64 %i.aoa, 8
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bcz
  %i.bdb = load i32, ptr %i.bda, align 4, !tbaa !3 ; 2 uses
  %i.bdc = zext i32 %i.bdb to i64
  %i.bdd = xor i64 %i.aoa, %i.bdc
  br label %bb.fw

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386: ; preds = %bb.is, %bb.hu, %bb.hf
  %.sink335.i387 = phi ptr [ %i.axx, %bb.hu ], [ %i.aua, %bb.hf ], [ %i.bcr, %bb.is ] ; 2 uses
  %.sink331.ph.i388 = phi i64 [ %i.aya, %bb.hu ], [ %i.aud, %bb.hf ], [ %i.bcu, %bb.is ]
  %.6299.i.ph.ph.i389 = phi i64 [ %.2295.i.lcssa.i447, %bb.hu ], [ %i.ard, %bb.hf ], [ %.5298.i.lcssa.i352, %bb.is ]
  %.4286.i.ph.ph.i390 = phi i32 [ %.0272.i208.i309, %bb.hu ], [ %.0282.i207.i310, %bb.hf ], [ %.0272.i208.i309, %bb.is ]
  %.4276.i.ph.ph.i391 = phi i32 [ %i.aum, %bb.hu ], [ %.0272.i208.i309, %bb.hf ], [ %i.ayg, %bb.is ]
  %.6.i.ph.ph.i392 = phi ptr [ %.2.i.lcssa.i448, %bb.hu ], [ %i.aom, %bb.hf ], [ %.5.i.lcssa.i353, %bb.is ]
  store i32 2, ptr %i.ang, align 8, !tbaa !52
  %i.bde = load ptr, ptr %1, align 8, !tbaa !53
  %i.bdf = ptrtoint ptr %.sink335.i387 to i64
  %i.bdg = ptrtoint ptr %i.bde to i64
  %i.bdh = sub i64 %i.bdf, %i.bdg
  %i.bdi = lshr exact i64 %i.bdh, 3
  %i.bdj = trunc i64 %i.bdi to i32
  store i32 %i.bdj, ptr %i.ani, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358: ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386, %bb.is, %bb.hu, %bb.hf
  %.sink331.i359 = phi i64 [ %i.aud, %bb.hf ], [ %i.aya, %bb.hu ], [ %i.bcu, %bb.is ], [ %.sink331.ph.i388, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386 ]
  %.sink330.i360 = phi ptr [ %i.aua, %bb.hf ], [ %i.axx, %bb.hu ], [ %i.bcr, %bb.is ], [ %.sink335.i387, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386 ] ; 2 uses
  %.6299.i.ph.i361 = phi i64 [ %i.ard, %bb.hf ], [ %.2295.i.lcssa.i447, %bb.hu ], [ %.5298.i.lcssa.i352, %bb.is ], [ %.6299.i.ph.ph.i389, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386 ]
  %.4286.i.ph.i362 = phi i32 [ %.0282.i207.i310, %bb.hf ], [ %.0272.i208.i309, %bb.hu ], [ %.0272.i208.i309, %bb.is ], [ %.4286.i.ph.ph.i390, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386 ] ; 2 uses
  %.4276.i.ph.i363 = phi i32 [ %.0272.i208.i309, %bb.hf ], [ %i.aum, %bb.hu ], [ %i.ayg, %bb.is ], [ %.4276.i.ph.ph.i391, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386 ] ; 2 uses
  %.6.i.ph.i364 = phi ptr [ %i.aom, %bb.hf ], [ %.2.i.lcssa.i448, %bb.hu ], [ %.5.i.lcssa.i353, %bb.is ], [ %.6.i.ph.ph.i392, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.sink.split.i386 ]
  %i.bdk = trunc i64 %.sink331.i359 to i16
  %i.bdl = getelementptr inbounds nuw i8, ptr %.sink330.i360, i64 6
  store i16 %i.bdk, ptr %i.bdl, align 2, !tbaa !58
  %i.bdm = getelementptr inbounds nuw i8, ptr %.sink330.i360, i64 8 ; 2 uses
  store ptr %i.bdm, ptr %i.anh, align 8, !tbaa !42
  %i.bdn = getelementptr inbounds nuw i8, ptr %.6.i.ph.i364, i64 %.6299.i.ph.i361 ; 4 uses
  %.not337.i.i365 = icmp ugt ptr %i.bdn, %i.r
  br i1 %.not337.i.i365, label %.thread122.i372, label %bb.iv

bb.iv:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358
  %i.bdo = add i32 %.0313.i.i326, 2
  %i.bdp = and i64 %.0313.i.in.i325, 4294967295
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bdp
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 2
  %.val10.i366 = load i64, ptr %i.bdr, align 1, !tbaa !24
  %i.bds = mul i64 %.val10.i366, -3523014627193847808
  %i.bdt = lshr i64 %i.bds, %i.amz
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bdt
  store i32 %i.bdo, ptr %i.bdu, align 4, !tbaa !3
  %i.bdv = getelementptr inbounds i8, ptr %i.bdn, i64 -2 ; 2 uses
  %i.bdw = ptrtoint ptr %i.bdv to i64
  %i.bdx = sub i64 %i.bdw, %i.as
  %i.bdy = trunc i64 %i.bdx to i32
  %.val9.i367 = load i64, ptr %i.bdv, align 1, !tbaa !24
  %i.bdz = mul i64 %.val9.i367, -3523014627193847808
  %i.bea = lshr i64 %i.bdz, %i.amz
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bea
  store i32 %i.bdy, ptr %i.beb, align 4, !tbaa !3
  br label %bb.iw

bb.iw:                                            ; preds = %bb.jb, %bb.iv
  %i.bec = phi ptr [ %i.bdm, %bb.iv ], [ %i.bfe, %bb.jb ]
  %.1267.i204.i368 = phi ptr [ %i.bdn, %bb.iv ], [ %i.bfj, %bb.jb ] ; 9 uses
  %.5277.i203.i369 = phi i32 [ %.4276.i.ph.i363, %bb.iv ], [ %.5287.i202.i370, %bb.jb ] ; 4 uses
  %.5287.i202.i370 = phi i32 [ %.4286.i.ph.i362, %bb.iv ], [ %.5277.i203.i369, %bb.jb ] ; 5 uses
  %i.bed = ptrtoint ptr %.1267.i204.i368 to i64
  %i.bee = sub i64 %i.bed, %i.as
  %i.bef = trunc i64 %i.bee to i32                ; 2 uses
  %i.beg = sub i32 %i.bef, %.5287.i202.i370       ; 3 uses
  %i.beh = icmp ult i32 %i.beg, %i.n              ; 2 uses
  %i.bei = zext i32 %i.beg to i64
  %.v.i371 = select i1 %i.beh, ptr %i.ano, ptr %i.k
  %i.bej = getelementptr inbounds nuw i8, ptr %.v.i371, i64 %i.bei ; 2 uses
  %i.bek = sub i32 %i.anc, %i.beg
  %i.bel = icmp ugt i32 %i.bek, 2
  br i1 %i.bel, label %bb.ix, label %.thread122.i372

bb.ix:                                            ; preds = %bb.iw
  %.val7.i378 = load i32, ptr %i.bej, align 1, !tbaa !3
  %.7.i.val.i379 = load i32, ptr %.1267.i204.i368, align 1, !tbaa !3
  %i.bem = icmp eq i32 %.val7.i378, %.7.i.val.i379
  br i1 %i.bem, label %bb.iy, label %.thread122.i372

bb.iy:                                            ; preds = %bb.ix
  %i.ben = select i1 %i.beh, ptr %i.af, ptr %i.q
  %i.beo = getelementptr inbounds nuw i8, ptr %.1267.i204.i368, i64 4
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bej, i64 4
  %i.beq = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.beo, ptr noundef nonnull %i.bep, ptr noundef %i.q, ptr noundef %i.ben, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i380 = icmp ugt ptr %.1267.i204.i368, %i.and
  br i1 %.not.i.i.i380, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i383, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ber = load ptr, ptr %i.ane, align 8, !tbaa !38
  %.1267.i.val.i381 = load <2 x i64>, ptr %.1267.i204.i368, align 1, !tbaa !34
  store <2 x i64> %.1267.i.val.i381, ptr %i.ber, align 1, !tbaa !34
  %.pre257.i382 = load ptr, ptr %i.anh, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i383

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i383: ; preds = %bb.iz, %bb.iy
  %i.bes = phi ptr [ %i.bec, %bb.iy ], [ %.pre257.i382, %bb.iz ] ; 5 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 4
  store i16 0, ptr %i.bet, align 4, !tbaa !55
  store i32 1, ptr %i.bes, align 4, !tbaa !57
  %i.beu = add i64 %i.beq, 1                      ; 2 uses
  %i.bev = icmp ugt i64 %i.beu, 65535
  br i1 %i.bev, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i383
  store i32 2, ptr %i.ang, align 8, !tbaa !52
  %i.bew = load ptr, ptr %1, align 8, !tbaa !53
  %i.bex = ptrtoint ptr %i.bes to i64
  %i.bey = ptrtoint ptr %i.bew to i64
  %i.bez = sub i64 %i.bex, %i.bey
  %i.bfa = lshr exact i64 %i.bez, 3
  %i.bfb = trunc i64 %i.bfa to i32
  store i32 %i.bfb, ptr %i.ani, align 4, !tbaa !54
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit79.i383
  %i.bfc = trunc i64 %i.beu to i16
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bes, i64 6
  store i16 %i.bfc, ptr %i.bfd, align 2, !tbaa !58
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bes, i64 8 ; 2 uses
  store ptr %i.bfe, ptr %i.anh, align 8, !tbaa !42
  %.7.i.val8.i384 = load i64, ptr %.1267.i204.i368, align 1, !tbaa !24
  %i.bff = mul i64 %.7.i.val8.i384, -3523014627193847808
  %i.bfg = lshr i64 %i.bff, %i.amz
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bfg
  store i32 %i.bef, ptr %i.bfh, align 4, !tbaa !3
  %i.bfi = getelementptr i8, ptr %.1267.i204.i368, i64 %i.beq
  %i.bfj = getelementptr i8, ptr %i.bfi, i64 4    ; 3 uses
  %.not338.i.i385 = icmp ugt ptr %i.bfj, %i.r
  br i1 %.not338.i.i385, label %.thread122.i372, label %bb.iw

.thread122.i372:                                  ; preds = %bb.jb, %bb.ix, %bb.iw, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358
  %.7289.i.i373 = phi i32 [ %.4286.i.ph.i362, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358 ], [ %.5287.i202.i370, %bb.iw ], [ %.5287.i202.i370, %bb.ix ], [ %.5277.i203.i369, %bb.jb ] ; 2 uses
  %.7279.i.i374 = phi i32 [ %.4276.i.ph.i363, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358 ], [ %.5277.i203.i369, %bb.iw ], [ %.5277.i203.i369, %bb.ix ], [ %.5287.i202.i370, %bb.jb ] ; 2 uses
  %.3269.i.i375 = phi ptr [ %i.bdn, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit356.i.i358 ], [ %.1267.i204.i368, %bb.iw ], [ %.1267.i204.i368, %bb.ix ], [ %i.bfj, %bb.jb ] ; 4 uses
  %.0262.i.i376 = getelementptr inbounds nuw i8, ptr %.3269.i.i375, i64 %i.l ; 2 uses
  %.not333.i.i377 = icmp ugt ptr %.0262.i.i376, %i.r
  br i1 %.not333.i.i377, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %bb.fv

bb.jc:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i577, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.bfk = zext nneg i32 %i.ar to i64
  %i.bfl = shl nuw i64 4, %i.bfk
  %.not.i574 = icmp ugt i32 %i.ar, 61
  br i1 %.not.i574, label %.loopexit.i577, label %.lr.ph.i575

.lr.ph.i575:                                      ; preds = %bb.jd, %.lr.ph.i575
  %.0292.i183.i576 = phi i64 [ %i.bfn, %.lr.ph.i575 ], [ 0, %bb.jd ] ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0292.i183.i576
  tail call void @llvm.prefetch.p0(ptr %i.bfm, i32 0, i32 2, i32 1)
  %i.bfn = add nuw i64 %.0292.i183.i576, 64       ; 2 uses
  %i.bfo = icmp ult i64 %i.bfn, %i.bfl
  br i1 %i.bfo, label %.lr.ph.i575, label %.loopexit.i577, !llvm.loop !91

.loopexit.i577:                                   ; preds = %.lr.ph.i575, %bb.jd, %bb.jc
  %i.bfp = add nsw i64 %4, -8
  %.not333.i206.i578 = icmp slt i64 %i.bfp, %i.l
  br i1 %.not333.i206.i578, label %_ZN11duckdb_zstdL42ZSTD_compressBlock_fast_dictMatchState_4_0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm.exit, label %.lr.ph212.i579

.lr.ph212.i579:                                   ; preds = %.loopexit.i577
  %.0262.i205.i580 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.bfq = and i64 %i.ap, 4294967295
  %i.bfr = icmp eq i64 %i.bfq, 0
  %i.bfs = zext i1 %i.bfr to i64
  %i.bft = getelementptr inbounds nuw i8, ptr %3, i64 %i.bfs
  %i.bfu = sub i32 64, %i.f
  %i.bfv = zext nneg i32 %i.bfu to i64            ; 4 uses
  %i.bfw = sub i32 56, %i.ar
  %i.bfx = zext nneg i32 %i.bfw to i64            ; 2 uses
  %i.bfy = add i32 %i.n, -1                       ; 2 uses
  %i.bfz = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.bgb = ptrtoint ptr %i.bfz to i64             ; 3 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.bgf = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 4 uses
  %i.bgg = getelementptr inbounds i8, ptr %i.q, i64 -3 ; 2 uses
  %i.bgh = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 2 uses
  %i.bgi = zext i32 %i.ai to i64
  %i.bgj = sub nsw i64 0, %i.bgi
  %i.bgk = getelementptr inbounds i8, ptr %i.ac, i64 %i.bgj
  br label %bb.je

bb.je:                                            ; preds = %.thread122.i647, %.lr.ph212.i579
  %.0262.i211.i581 = phi ptr [ %.0262.i205.i580, %.lr.ph212.i579 ], [ %.0262.i.i651, %.thread122.i647 ]
  %.0261.i210.i582 = phi ptr [ %i.bft, %.lr.ph212.i579 ], [ %.3269.i.i650, %.thread122.i647 ] ; 3 uses
  %.0266.i209.i583 = phi ptr [ %3, %.lr.ph212.i579 ], [ %.3269.i.i650, %.thread122.i647 ] ; 26 uses
  %.0272.i208.i584 = phi i32 [ %i.s, %.lr.ph212.i579 ], [ %.7279.i.i649, %.thread122.i647 ] ; 8 uses
  %.0282.i207.i585 = phi i32 [ %i.u, %.lr.ph212.i579 ], [ %.7289.i.i648, %.thread122.i647 ] ; 3 uses
  %.0261.i.val12.i586 = load i64, ptr %.0261.i210.i582, align 1, !tbaa !24
  %i.bgl = mul i64 %.0261.i.val12.i586, -3523014627193167104 ; 2 uses
  %i.bgm = lshr i64 %i.bgl, %i.bfx                ; 2 uses
  %i.bgn = lshr i64 %i.bgm, 8
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bgn
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !3 ; 2 uses
  %i.bgq = zext i32 %i.bgp to i64
  %i.bgr = xor i64 %i.bgm, %i.bgq
  %i.bgs = getelementptr inbounds nuw i8, ptr %.0261.i210.i582, i64 256
  %invariant.op2485 = sub i32 1, %.0272.i208.i584
  br label %bb.jf

bb.jf:                                            ; preds = %bb.md, %bb.je
  %.0319.i.i587 = phi ptr [ %i.bgs, %bb.je ], [ %.1320.i.i609, %bb.md ] ; 2 uses
  %.0315.i.i588 = phi i64 [ %i.l, %bb.je ], [ %.1316.i.i607, %bb.md ]
  %.0309.i.in.in.in.i589 = phi i64 [ %i.bgr, %bb.je ], [ %i.bvz, %bb.md ]
  %.0307.i.i590 = phi i32 [ %i.bgp, %bb.je ], [ %i.bvx, %bb.md ]
  %.pn217.i591 = phi i64 [ %i.bgl, %bb.je ], [ %i.bgv, %bb.md ]
  %.1263.i.i592 = phi ptr [ %.0262.i211.i581, %bb.je ], [ %i.bvt, %bb.md ] ; 4 uses
  %.1.i.i593 = phi ptr [ %.0261.i210.i582, %bb.je ], [ %.1263.i.i592, %bb.md ] ; 16 uses
  %.0301.i.i594 = lshr i64 %.pn217.i591, %i.bfv
  %.0311.i.in.i595 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0301.i.i594 ; 2 uses
  %.0311.i.i596 = load i32, ptr %.0311.i.in.i595, align 4, !tbaa !3 ; 3 uses
  %.0309.i.in.in.i597 = and i64 %.0309.i.in.in.in.i589, 255
  %.0309.i.in.not.i598 = icmp eq i64 %.0309.i.in.in.i597, 0
  %.pn.i599 = ptrtoint ptr %.1.i.i593 to i64      ; 4 uses
  %.0313.i.in.i600 = sub i64 %.pn.i599, %i.as     ; 2 uses
  %.0313.i.i601 = trunc i64 %.0313.i.in.i600 to i32 ; 4 uses
  %i.bgt = zext i32 %.0311.i.i596 to i64
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bgt ; 4 uses
  %.reass.i603.reass.reass.reass = add i32 %.0313.i.i601, %invariant.op2485 ; 4 uses
  %.1263.i.val11.i604 = load i64, ptr %.1263.i.i592, align 1, !tbaa !24
  %i.bgv = mul i64 %.1263.i.val11.i604, -3523014627193167104 ; 2 uses
  %i.bgw = lshr i64 %i.bgv, %i.bfx                ; 2 uses
  store i32 %.0313.i.i601, ptr %.0311.i.in.i595, align 4, !tbaa !3
  %i.bgx = sub i32 %i.bfy, %.reass.i603.reass.reass.reass
  %i.bgy = icmp ugt i32 %i.bgx, 2
  br i1 %i.bgy, label %bb.jg, label %bb.kp

bb.jg:                                            ; preds = %bb.jf
  %i.bgz = icmp ult i32 %.reass.i603.reass.reass.reass, %i.n ; 2 uses
  %i.bha = sub i32 %.reass.i603.reass.reass.reass, %i.ai
  %i.bhb = zext i32 %i.bha to i64
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bhb
  %i.bhd = zext i32 %.reass.i603.reass.reass.reass to i64
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bhd
  %i.bhf = select i1 %i.bgz, ptr %i.bhc, ptr %i.bhe ; 2 uses
  %.val4.i758 = load i32, ptr %i.bhf, align 1, !tbaa !3
  %i.bhg = getelementptr inbounds nuw i8, ptr %.1.i.i593, i64 1
  %.val.i759 = load i32, ptr %i.bhg, align 1, !tbaa !3
  %i.bhh = icmp eq i32 %.val4.i758, %.val.i759
  br i1 %i.bhh, label %bb.jh, label %bb.kp

bb.jh:                                            ; preds = %bb.jg
  %.1.i.i5931871.le = ptrtoint ptr %.1.i.i593 to i64 ; 3 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %.1.i.i593, i64 1 ; 5 uses
  %i.bhj = select i1 %i.bgz, ptr %i.af, ptr %i.q  ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %.1.i.i593, i64 5 ; 8 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhf, i64 4 ; 5 uses
  %i.bhm = ptrtoint ptr %i.bhj to i64
  %i.bhn = ptrtoint ptr %i.bhl to i64
  %i.bho = sub i64 %i.bhm, %i.bhn
  %i.bhp = getelementptr inbounds i8, ptr %i.bhk, i64 %i.bho ; 2 uses
  %i.bhq = icmp ult ptr %i.bhp, %i.q
  %..i.i760 = select i1 %i.bhq, ptr %i.bhp, ptr %i.q ; 4 uses
  %i.bhr = getelementptr inbounds i8, ptr %..i.i760, i64 -7 ; 2 uses
  %i.bhs = icmp ult ptr %i.bhk, %i.bhr
  br i1 %i.bhs, label %bb.ji, label %.loopexit.i.i.i761

bb.ji:                                            ; preds = %bb.jh
  %.val60.i.i.i834 = load i64, ptr %i.bhl, align 1, !tbaa !24 ; 2 uses
  %.val.i.i.i835 = load i64, ptr %i.bhk, align 1, !tbaa !24 ; 2 uses
  %.not.i.i22.i836 = icmp eq i64 %.val60.i.i.i834, %.val.i.i.i835
  br i1 %.not.i.i22.i836, label %.preheader.i.i.i837, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.bht = xor i64 %.val.i.i.i835, %.val60.i.i.i834
  %i.bhu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bht, i1 true)
  %i.bhv = lshr i64 %i.bhu, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i769

.preheader.i.i.i837:                              ; preds = %bb.ji, %bb.jk
  %.pn.i.i23.i838 = phi ptr [ %.049.i.i.i841, %bb.jk ], [ %i.bhl, %bb.ji ]
  %.pn67.i.i.i839 = phi ptr [ %.045.i.i.i840, %bb.jk ], [ %i.bhk, %bb.ji ]
  %.045.i.i.i840 = getelementptr inbounds nuw i8, ptr %.pn67.i.i.i839, i64 8 ; 5 uses
  %.049.i.i.i841 = getelementptr inbounds nuw i8, ptr %.pn.i.i23.i838, i64 8 ; 3 uses
  %i.bhw = icmp ult ptr %.045.i.i.i840, %i.bhr
  br i1 %i.bhw, label %bb.jk, label %.loopexit.i.i.i761

bb.jk:                                            ; preds = %.preheader.i.i.i837
  %.049.val.i.i.i842 = load i64, ptr %.049.i.i.i841, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.i.i843 = load i64, ptr %.045.i.i.i840, align 1, !tbaa !24 ; 2 uses
  %.not59.i.i.i844 = icmp eq i64 %.049.val.i.i.i842, %.045.val.i.i.i843
  br i1 %.not59.i.i.i844, label %.preheader.i.i.i837, label %.thread63.i.i.i845

.thread63.i.i.i845:                               ; preds = %bb.jk
  %i.bhx = xor i64 %.045.val.i.i.i843, %.049.val.i.i.i842
  %i.bhy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bhx, i1 true)
  %i.bhz = lshr i64 %i.bhy, 3
  %i.bia = getelementptr inbounds nuw i8, ptr %.045.i.i.i840, i64 %i.bhz
  %i.bib = ptrtoint ptr %i.bia to i64
  %i.bic = ptrtoint ptr %i.bhk to i64
  %i.bid = sub i64 %i.bib, %i.bic
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i769

.loopexit.i.i.i761:                               ; preds = %.preheader.i.i.i837, %bb.jh
  %.251.i.i.i762 = phi ptr [ %i.bhl, %bb.jh ], [ %.049.i.i.i841, %.preheader.i.i.i837 ] ; 4 uses
  %.247.i.i.i763 = phi ptr [ %i.bhk, %bb.jh ], [ %.045.i.i.i840, %.preheader.i.i.i837 ] ; 5 uses
  %i.bie = getelementptr inbounds i8, ptr %..i.i760, i64 -3
  %i.bif = icmp ult ptr %.247.i.i.i763, %i.bie
  br i1 %i.bif, label %bb.jl, label %bb.jn

bb.jl:                                            ; preds = %.loopexit.i.i.i761
  %.251.val.i.i.i832 = load i32, ptr %.251.i.i.i762, align 1, !tbaa !3
  %.247.val.i.i.i833 = load i32, ptr %.247.i.i.i763, align 1, !tbaa !3
  %i.big = icmp eq i32 %.251.val.i.i.i832, %.247.val.i.i.i833
  br i1 %i.big, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.bih = getelementptr inbounds nuw i8, ptr %.247.i.i.i763, i64 4
  %i.bii = getelementptr inbounds nuw i8, ptr %.251.i.i.i762, i64 4
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl, %.loopexit.i.i.i761
  %.352.i.i.i764 = phi ptr [ %i.bii, %bb.jm ], [ %.251.i.i.i762, %bb.jl ], [ %.251.i.i.i762, %.loopexit.i.i.i761 ] ; 4 uses
  %.348.i.i.i765 = phi ptr [ %i.bih, %bb.jm ], [ %.247.i.i.i763, %bb.jl ], [ %.247.i.i.i763, %.loopexit.i.i.i761 ] ; 5 uses
  %i.bij = getelementptr inbounds i8, ptr %..i.i760, i64 -1
  %i.bik = icmp ult ptr %.348.i.i.i765, %i.bij
  br i1 %i.bik, label %bb.jo, label %bb.jq

bb.jo:                                            ; preds = %bb.jn
  %.352.val.i.i.i830 = load i16, ptr %.352.i.i.i764, align 1, !tbaa !36
  %.348.val.i.i.i831 = load i16, ptr %.348.i.i.i765, align 1, !tbaa !36
  %i.bil = icmp eq i16 %.352.val.i.i.i830, %.348.val.i.i.i831
  br i1 %i.bil, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.bim = getelementptr inbounds nuw i8, ptr %.348.i.i.i765, i64 2
  %i.bin = getelementptr inbounds nuw i8, ptr %.352.i.i.i764, i64 2
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %bb.jn
  %.453.i.i.i766 = phi ptr [ %i.bin, %bb.jp ], [ %.352.i.i.i764, %bb.jo ], [ %.352.i.i.i764, %bb.jn ]
  %.4.i.i.i767 = phi ptr [ %i.bim, %bb.jp ], [ %.348.i.i.i765, %bb.jo ], [ %.348.i.i.i765, %bb.jn ] ; 4 uses
  %i.bio = icmp ult ptr %.4.i.i.i767, %..i.i760
  br i1 %i.bio, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.bip = load i8, ptr %.453.i.i.i766, align 1, !tbaa !34
  %i.biq = load i8, ptr %.4.i.i.i767, align 1, !tbaa !34
  %i.bir = icmp eq i8 %i.bip, %i.biq
  %spec.select.idx.i.i.i828 = zext i1 %i.bir to i64
  %spec.select.i.i.i829 = getelementptr inbounds nuw i8, ptr %.4.i.i.i767, i64 %spec.select.idx.i.i.i828
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.5.i.i.i768 = phi ptr [ %.4.i.i.i767, %bb.jq ], [ %spec.select.i.i.i829, %bb.jr ]
  %i.bis = ptrtoint ptr %.5.i.i.i768 to i64
  %i.bit = ptrtoint ptr %i.bhk to i64
  %i.biu = sub i64 %i.bis, %i.bit
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit.i.i769
end_hunk_3
