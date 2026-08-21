Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/backward_references?download=true
inline.NumInlined: 233
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZL28CreateBackwardReferencesDH42mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.bbk = icmp ult i64 %i.bbj, %i.bad
  br i1 %i.bbk, label %bb.hb, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, !llvm.loop !626

_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit: ; preds = %bb.hb, %bb.gz, %bb.gv, %bb.ha, %bb.gy, %bb.gu, %bb.gw
  %.1202 = phi ptr [ %i.ate, %bb.gu ], [ %.0201883, %bb.gw ], [ %.0201883, %bb.gy ], [ %.0201883, %bb.ha ], [ %.0201883, %bb.gz ], [ %i.ate, %bb.gv ], [ %.0201883, %bb.hb ] ; 2 uses
  %.6200 = phi i64 [ %i.axb, %bb.gu ], [ %i.ayp, %bb.gw ], [ %i.ayp, %bb.gy ], [ %i.ayp, %bb.ha ], [ %i.baa, %bb.gz ], [ %i.axb, %bb.gv ], [ %i.bbj, %bb.hb ] ; 3 uses
  %.6 = phi i64 [ 0, %bb.gu ], [ %i.ayo, %bb.gw ], [ %i.ayo, %bb.gy ], [ %i.ayo, %bb.ha ], [ %i.azz, %bb.gz ], [ 0, %bb.gv ], [ %i.bbi, %bb.hb ] ; 2 uses
  %.1190 = phi i64 [ %i.arn, %bb.gu ], [ %.0189886, %bb.gw ], [ %.0189886, %bb.gy ], [ %.0189886, %bb.ha ], [ %.0189886, %bb.gz ], [ %i.arn, %bb.gv ], [ %.0189886, %bb.hb ]
  %i.bbl = add i64 %.6200, 4
  %i.bbm = icmp ult i64 %i.bbl, %i.j
  br i1 %i.bbm, label %bb.b, label %._crit_edge, !llvm.loop !627

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, %bb.a
  %.0201.lcssa = phi ptr [ %9, %bb.a ], [ %.1202, %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit ]
  %.0194.lcssa = phi i64 [ %1, %bb.a ], [ %.6200, %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit ]
  %.0191.lcssa = phi i64 [ %i.i, %bb.a ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit ]
  %i.bbn = sub i64 %i.j, %.0194.lcssa
  %i.bbo = add i64 %i.bbn, %.0191.lcssa
  store i64 %i.bbo, ptr %8, align 8, !tbaa !30
  %i.bbp = ptrtoint ptr %.0201.lcssa to i64
  %i.bbq = ptrtoint ptr %9 to i64
  %i.bbr = sub i64 %i.bbp, %i.bbq
  %i.bbs = ashr exact i64 %i.bbr, 4
  %i.bbt = load i64, ptr %10, align 8, !tbaa !30
  %i.bbu = add i64 %i.bbt, %i.bbs
  store i64 %i.bbu, ptr %10, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL28CreateBackwardReferencesDH55mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add i64 %i.f, -16                        ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.j = load i64, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.k = add i64 %1, %0                           ; 6 uses
  %i.l = icmp ugt i64 %0, 7
  %i.m = add i64 %i.k, -7                         ; 3 uses
  %spec.select = select i1 %i.l, i64 %i.m, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.o, 9
  %i.q = select i1 %i.p, i64 64, i64 512          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32
  %i.u = add i64 %1, 8
  %i.v = icmp ult i64 %i.u, %i.k
  br i1 %i.v, label %.thread.lr.ph, label %._crit_edge825

.thread.lr.ph:                                    ; preds = %bb.a
  %i.w = add i64 %i.q, %1
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !628, !alias.scope !630, !noalias !633 ; 15 uses
  %i.ab = and i64 %3, 4294967295                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 360 ; 2 uses
  %i.aj = shl nuw nsw i64 %i.q, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %.thread

.thread:                                          ; preds = %.thread.lr.ph, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit
  %.0189824 = phi i64 [ %i.w, %.thread.lr.ph ], [ %.1190, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 7 uses
  %.0191823 = phi i64 [ %i.j, %.thread.lr.ph ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 2 uses
  %.0194822 = phi i64 [ %1, %.thread.lr.ph ], [ %.6200, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 25 uses
  %.0201821 = phi ptr [ %8, %.thread.lr.ph ], [ %.1202, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 13 uses
  %i.au = sub i64 %i.k, %.0194822                 ; 21 uses
  %i.av = tail call noundef i64 @llvm.umin.i64(i64 %.0194822, i64 %i.g) ; 5 uses
  %i.aw = add i64 %.0194822, %i.i
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.ay = and i64 %.0194822, %3                   ; 2 uses
  %i.az = getelementptr i8, ptr %2, i64 %i.ay     ; 29 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !54, !alias.scope !637, !noalias !639 ; 5 uses
  %.val386 = load i64, ptr %i.az, align 1
  %i.bb = mul i64 %.val386, -2064201331557805312
  %i.bc = lshr i64 %i.bb, 44                      ; 5 uses
  %i.bd = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !638, !noalias !640
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = sub i64 %.0194822, %i.be                ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.0194822
  br i1 %i.bg, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.thread
  %i.bh = and i64 %i.ab, %i.bf
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh     ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.bk = icmp eq i8 %i.ba, %i.bj
  br i1 %i.bk, label %.preheader532, label %bb.h

.preheader532:                                    ; preds = %bb.b
  %i.bl = icmp ugt i64 %i.au, 7
  br i1 %i.bl, label %.lr.ph, label %.preheader531

.preheader531:                                    ; preds = %bb.d, %.preheader532
  %.026.i113.i.lcssa = phi ptr [ %i.bi, %.preheader532 ], [ %i.bu, %bb.d ] ; 3 uses
  %.024.i114.i.lcssa = phi ptr [ %i.az, %.preheader532 ], [ %i.bt, %bb.d ]
  %.022.i115.i.lcssa = phi i64 [ %i.au, %.preheader532 ], [ %i.bv, %bb.d ] ; 3 uses
  %.not.i120.i568 = icmp eq i64 %.022.i115.i.lcssa, 0
  br i1 %.not.i120.i568, label %.critedge.i121.i, label %.lr.ph572.preheader

.lr.ph572.preheader:                              ; preds = %.preheader531
  %scevgep = getelementptr i8, ptr %.026.i113.i.lcssa, i64 %.022.i115.i.lcssa
  br label %.lr.ph572

.lr.ph:                                           ; preds = %.preheader532, %bb.d
  %.022.i115.i565 = phi i64 [ %i.bv, %bb.d ], [ %i.au, %.preheader532 ]
  %.024.i114.i564 = phi ptr [ %i.bt, %bb.d ], [ %i.az, %.preheader532 ] ; 2 uses
  %.026.i113.i563 = phi ptr [ %i.bu, %bb.d ], [ %i.bi, %.preheader532 ] ; 3 uses
  %.0.copyload.i127.i = load i64, ptr %.024.i114.i564, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.0.copyload.i.i295 = load i64, ptr %.026.i113.i563, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.not30.i123.i = icmp eq i64 %.0.copyload.i127.i, %.0.copyload.i.i295
  br i1 %.not30.i123.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bm = xor i64 %.0.copyload.i.i295, %.0.copyload.i127.i
  %i.bn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bm, i1 true)
  %i.bo = ptrtoint ptr %.026.i113.i563 to i64
  %i.bp = ptrtoint ptr %i.bi to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr i64 %i.bn, 3
  %i.bs = add i64 %i.bq, %i.br
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

bb.d:                                             ; preds = %.lr.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %.024.i114.i564, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i113.i563, i64 8 ; 2 uses
  %i.bv = add i64 %.022.i115.i565, -8             ; 3 uses
  %i.bw = icmp ugt i64 %i.bv, 7
  br i1 %i.bw, label %.lr.ph, label %.preheader531, !llvm.loop !62

.lr.ph572:                                        ; preds = %.lr.ph572.preheader, %bb.e
  %.123.i119.i571 = phi i64 [ %i.ca, %bb.e ], [ %.022.i115.i.lcssa, %.lr.ph572.preheader ]
  %.125.i118.i570 = phi ptr [ %i.cb, %bb.e ], [ %.024.i114.i.lcssa, %.lr.ph572.preheader ] ; 2 uses
  %.228.i117.i569 = phi ptr [ %i.cc, %bb.e ], [ %.026.i113.i.lcssa, %.lr.ph572.preheader ] ; 3 uses
  %i.bx = load i8, ptr %.228.i117.i569, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.by = load i8, ptr %.125.i118.i570, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.bz = icmp eq i8 %i.bx, %i.by
  br i1 %i.bz, label %bb.e, label %.critedge.i121.i

bb.e:                                             ; preds = %.lr.ph572
  %i.ca = add nsw i64 %.123.i119.i571, -1         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.125.i118.i570, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.228.i117.i569, i64 1
  %.not.i120.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i120.i, label %.critedge.i121.i, label %.lr.ph572, !llvm.loop !64

.critedge.i121.i:                                 ; preds = %bb.e, %.lr.ph572, %.preheader531
  %.228.i117.i.lcssa = phi ptr [ %.026.i113.i.lcssa, %.preheader531 ], [ %.228.i117.i569, %.lr.ph572 ], [ %scevgep, %bb.e ]
  %i.cd = ptrtoint ptr %.228.i117.i.lcssa to i64
  %i.ce = ptrtoint ptr %i.bi to i64
  %i.cf = sub i64 %i.cd, %i.ce
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i: ; preds = %bb.c, %.critedge.i121.i
  %.2.i122.i = phi i64 [ %i.bs, %bb.c ], [ %i.cf, %.critedge.i121.i ] ; 4 uses
  %i.cg = icmp ugt i64 %.2.i122.i, 3
  br i1 %i.cg, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i
  %i.ch = mul i64 %.2.i122.i, 135
  %i.ci = add i64 %i.ch, 1935                     ; 2 uses
  %i.cj = icmp ugt i64 %i.ci, 2020
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr i8, ptr %i.az, i64 %.2.i122.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i, %bb.b, %.thread
  %.sroa.29.7 = phi i64 [ %i.ci, %bb.g ], [ 2020, %bb.f ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 2020, %bb.b ], [ 2020, %.thread ] ; 5 uses
  %.sroa.18403.7 = phi i64 [ %i.be, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 0, %bb.b ], [ 0, %.thread ] ; 4 uses
  %.sroa.0394.7 = phi i64 [ %.2.i122.i, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 0, %bb.b ], [ 0, %.thread ] ; 5 uses
  %.299.i.in = phi i8 [ %i.cl, %bb.g ], [ %i.ba, %bb.f ], [ %i.ba, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ %i.ba, %bb.b ], [ %i.ba, %.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !641
  store i64 %i.bc, ptr %i.b, align 16, !tbaa !30, !noalias !641
  %i.cm = add nuw nsw i64 %i.bc, 8
  %i.cn = and i64 %i.cm, 1048575                  ; 2 uses
  store i64 %i.cn, ptr %i.ao, align 8, !tbaa !30, !noalias !641
  %i.co = add nuw nsw i64 %i.bc, 16
  %i.cp = and i64 %i.co, 1048575                  ; 2 uses
  store i64 %i.cp, ptr %i.ap, align 16, !tbaa !30, !noalias !641
  %i.cq = add nuw nsw i64 %i.bc, 24
  %i.cr = and i64 %i.cq, 1048575                  ; 2 uses
  store i64 %i.cr, ptr %i.aq, align 8, !tbaa !30, !noalias !641
  %11 = lshr i64 %.0194822, 3
  %i.cs = and i64 %11, 3
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cs
  %i.ct = load i64, ptr %12, align 8, !tbaa !30, !noalias !641
  %i.cu = icmp ugt i64 %i.au, 7                   ; 5 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bc
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3, !noalias !639
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %i.cy = sub i64 %.0194822, %i.cx                ; 3 uses
  %i.cz = and i64 %3, %i.cx
  %i.da = getelementptr i8, ptr %2, i64 %i.cz     ; 5 uses
  %i.db = getelementptr i8, ptr %i.da, i64 %.sroa.0394.7
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %.not.i280 = icmp eq i8 %.299.i.in, %i.dc
  br i1 %.not.i280, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dd = icmp eq i64 %.0194822, %i.cx
  %i.de = icmp ugt i64 %i.cy, %i.av
  %i.df = or i1 %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %.preheader527, !prof !72

.preheader527:                                    ; preds = %bb.i
  br i1 %i.cu, label %.lr.ph580, label %.preheader526

.preheader526:                                    ; preds = %bb.k, %.preheader527
  %.026.i.i281.lcssa = phi ptr [ %i.da, %.preheader527 ], [ %i.do, %bb.k ] ; 3 uses
  %.024.i.i282.lcssa = phi ptr [ %i.az, %.preheader527 ], [ %i.dn, %bb.k ]
  %.022.i.i283.lcssa = phi i64 [ %i.au, %.preheader527 ], [ %i.dp, %bb.k ] ; 3 uses
  %.not.i.i288584 = icmp eq i64 %.022.i.i283.lcssa, 0
  br i1 %.not.i.i288584, label %.critedge.i.i289, label %.lr.ph588.preheader

.lr.ph588.preheader:                              ; preds = %.preheader526
  %scevgep909 = getelementptr i8, ptr %.026.i.i281.lcssa, i64 %.022.i.i283.lcssa
  br label %.lr.ph588

.lr.ph580:                                        ; preds = %.preheader527, %bb.k
  %.022.i.i283579 = phi i64 [ %i.dp, %bb.k ], [ %i.au, %.preheader527 ]
  %.024.i.i282578 = phi ptr [ %i.dn, %bb.k ], [ %i.az, %.preheader527 ] ; 2 uses
  %.026.i.i281577 = phi ptr [ %i.do, %bb.k ], [ %i.da, %.preheader527 ] ; 3 uses
  %.0.copyload.i129.i = load i64, ptr %.024.i.i282578, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.0.copyload.i128.i = load i64, ptr %.026.i.i281577, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.not30.i.i292 = icmp eq i64 %.0.copyload.i129.i, %.0.copyload.i128.i
  br i1 %.not30.i.i292, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph580
  %i.dg = xor i64 %.0.copyload.i128.i, %.0.copyload.i129.i
  %i.dh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dg, i1 true)
  %i.di = ptrtoint ptr %.026.i.i281577 to i64
  %i.dj = ptrtoint ptr %i.da to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = lshr i64 %i.dh, 3
  %i.dm = add i64 %i.dk, %i.dl
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290

bb.k:                                             ; preds = %.lr.ph580
  %i.dn = getelementptr inbounds nuw i8, ptr %.024.i.i282578, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.026.i.i281577, i64 8 ; 2 uses
  %i.dp = add i64 %.022.i.i283579, -8             ; 3 uses
  %i.dq = icmp ugt i64 %i.dp, 7
  br i1 %i.dq, label %.lr.ph580, label %.preheader526, !llvm.loop !62

.lr.ph588:                                        ; preds = %.lr.ph588.preheader, %bb.l
  %.123.i.i287587 = phi i64 [ %i.du, %bb.l ], [ %.022.i.i283.lcssa, %.lr.ph588.preheader ]
  %.125.i.i286586 = phi ptr [ %i.dv, %bb.l ], [ %.024.i.i282.lcssa, %.lr.ph588.preheader ] ; 2 uses
  %.228.i.i285585 = phi ptr [ %i.dw, %bb.l ], [ %.026.i.i281.lcssa, %.lr.ph588.preheader ] ; 3 uses
  %i.dr = load i8, ptr %.228.i.i285585, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.ds = load i8, ptr %.125.i.i286586, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.dt = icmp eq i8 %i.dr, %i.ds
  br i1 %i.dt, label %bb.l, label %.critedge.i.i289

bb.l:                                             ; preds = %.lr.ph588
  %i.du = add nsw i64 %.123.i.i287587, -1         ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.125.i.i286586, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.228.i.i285585, i64 1
  %.not.i.i288 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i288, label %.critedge.i.i289, label %.lr.ph588, !llvm.loop !64

.critedge.i.i289:                                 ; preds = %bb.l, %.lr.ph588, %.preheader526
  %.228.i.i285.lcssa = phi ptr [ %.026.i.i281.lcssa, %.preheader526 ], [ %.228.i.i285585, %.lr.ph588 ], [ %scevgep909, %bb.l ]
  %i.dx = ptrtoint ptr %.228.i.i285.lcssa to i64
  %i.dy = ptrtoint ptr %i.da to i64
  %i.dz = sub i64 %i.dx, %i.dy
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290: ; preds = %bb.j, %.critedge.i.i289
  %.2.i.i291 = phi i64 [ %i.dm, %bb.j ], [ %i.dz, %.critedge.i.i289 ] ; 4 uses
  %i.ea = icmp ugt i64 %.2.i.i291, 3
  br i1 %i.ea, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290
  %i.eb = mul i64 %.2.i.i291, 135
  %i.ec = trunc i64 %i.cy to i32
  %i.ed = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ec, i1 true)
  %i.ee = xor i32 %i.ed, 31
  %.neg = mul nsw i32 %i.ee, -30
  %narrow = add nsw i32 %.neg, 1920
  %i.ef = zext nneg i32 %narrow to i64
  %i.eg = add i64 %i.eb, %i.ef                    ; 2 uses
  %i.eh = icmp ult i64 %.sroa.29.7, %i.eg
  br i1 %i.eh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ei = getelementptr i8, ptr %i.az, i64 %.2.i.i291
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290, %bb.i, %bb.h
  %.sroa.29.9 = phi i64 [ %.sroa.29.7, %bb.i ], [ %i.eg, %bb.n ], [ %.sroa.29.7, %bb.m ], [ %.sroa.29.7, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290 ], [ %.sroa.29.7, %bb.h ] ; 5 uses
  %.sroa.18403.9 = phi i64 [ %.sroa.18403.7, %bb.i ], [ %i.cy, %bb.n ], [ %.sroa.18403.7, %bb.m ], [ %.sroa.18403.7, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290 ], [ %.sroa.18403.7, %bb.h ] ; 4 uses
  %.sroa.0394.9 = phi i64 [ %.sroa.0394.7, %bb.i ], [ %.2.i.i291, %bb.n ], [ %.sroa.0394.7, %bb.m ], [ %.sroa.0394.7, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290 ], [ %.sroa.0394.7, %bb.h ] ; 5 uses
  %.6103.i.in = phi i8 [ %.299.i.in, %bb.i ], [ %i.ej, %bb.n ], [ %.299.i.in, %bb.m ], [ %.299.i.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290 ], [ %.299.i.in, %bb.h ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cn
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !639
  %i.em = zext i32 %i.el to i64                   ; 3 uses
  %i.en = sub i64 %.0194822, %i.em                ; 3 uses
  %i.eo = and i64 %3, %i.em
  %i.ep = getelementptr i8, ptr %2, i64 %i.eo     ; 5 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 %.sroa.0394.9
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %.not.i280.1 = icmp eq i8 %.6103.i.in, %i.er
  br i1 %.not.i280.1, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.es = icmp eq i64 %.0194822, %i.em
  %i.et = icmp ugt i64 %i.en, %i.av
  %i.eu = or i1 %i.es, %i.et
  br i1 %i.eu, label %bb.v, label %.preheader527.1, !prof !72

.preheader527.1:                                  ; preds = %bb.p
  br i1 %i.cu, label %.lr.ph580.1, label %.preheader526.1

.lr.ph580.1:                                      ; preds = %.preheader527.1, %bb.r
  %.022.i.i283579.1 = phi i64 [ %i.fe, %bb.r ], [ %i.au, %.preheader527.1 ]
  %.024.i.i282578.1 = phi ptr [ %i.fc, %bb.r ], [ %i.az, %.preheader527.1 ] ; 2 uses
  %.026.i.i281577.1 = phi ptr [ %i.fd, %bb.r ], [ %i.ep, %.preheader527.1 ] ; 3 uses
  %.0.copyload.i129.i.1 = load i64, ptr %.024.i.i282578.1, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.0.copyload.i128.i.1 = load i64, ptr %.026.i.i281577.1, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.not30.i.i292.1 = icmp eq i64 %.0.copyload.i129.i.1, %.0.copyload.i128.i.1
  br i1 %.not30.i.i292.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph580.1
  %i.ev = xor i64 %.0.copyload.i128.i.1, %.0.copyload.i129.i.1
  %i.ew = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ev, i1 true)
  %i.ex = ptrtoint ptr %.026.i.i281577.1 to i64
  %i.ey = ptrtoint ptr %i.ep to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr i64 %i.ew, 3
  %i.fb = add i64 %i.ez, %i.fa
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.1

bb.r:                                             ; preds = %.lr.ph580.1
  %i.fc = getelementptr inbounds nuw i8, ptr %.024.i.i282578.1, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.026.i.i281577.1, i64 8 ; 2 uses
  %i.fe = add i64 %.022.i.i283579.1, -8           ; 3 uses
  %i.ff = icmp ugt i64 %i.fe, 7
  br i1 %i.ff, label %.lr.ph580.1, label %.preheader526.1, !llvm.loop !62

.preheader526.1:                                  ; preds = %bb.r, %.preheader527.1
  %.026.i.i281.lcssa.1 = phi ptr [ %i.ep, %.preheader527.1 ], [ %i.fd, %bb.r ] ; 3 uses
  %.024.i.i282.lcssa.1 = phi ptr [ %i.az, %.preheader527.1 ], [ %i.fc, %bb.r ]
  %.022.i.i283.lcssa.1 = phi i64 [ %i.au, %.preheader527.1 ], [ %i.fe, %bb.r ] ; 3 uses
  %.not.i.i288584.1 = icmp eq i64 %.022.i.i283.lcssa.1, 0
  br i1 %.not.i.i288584.1, label %.critedge.i.i289.1, label %.lr.ph588.preheader.1

.lr.ph588.preheader.1:                            ; preds = %.preheader526.1
  %scevgep909.1 = getelementptr i8, ptr %.026.i.i281.lcssa.1, i64 %.022.i.i283.lcssa.1
  br label %.lr.ph588.1

.lr.ph588.1:                                      ; preds = %bb.s, %.lr.ph588.preheader.1
  %.123.i.i287587.1 = phi i64 [ %i.fj, %bb.s ], [ %.022.i.i283.lcssa.1, %.lr.ph588.preheader.1 ]
  %.125.i.i286586.1 = phi ptr [ %i.fk, %bb.s ], [ %.024.i.i282.lcssa.1, %.lr.ph588.preheader.1 ] ; 2 uses
  %.228.i.i285585.1 = phi ptr [ %i.fl, %bb.s ], [ %.026.i.i281.lcssa.1, %.lr.ph588.preheader.1 ] ; 3 uses
  %i.fg = load i8, ptr %.228.i.i285585.1, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.fh = load i8, ptr %.125.i.i286586.1, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.fi = icmp eq i8 %i.fg, %i.fh
  br i1 %i.fi, label %bb.s, label %.critedge.i.i289.1

bb.s:                                             ; preds = %.lr.ph588.1
  %i.fj = add nsw i64 %.123.i.i287587.1, -1       ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.125.i.i286586.1, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.228.i.i285585.1, i64 1
  %.not.i.i288.1 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i288.1, label %.critedge.i.i289.1, label %.lr.ph588.1, !llvm.loop !64

.critedge.i.i289.1:                               ; preds = %.lr.ph588.1, %bb.s, %.preheader526.1
  %.228.i.i285.lcssa.1 = phi ptr [ %.026.i.i281.lcssa.1, %.preheader526.1 ], [ %.228.i.i285585.1, %.lr.ph588.1 ], [ %scevgep909.1, %bb.s ]
  %i.fm = ptrtoint ptr %.228.i.i285.lcssa.1 to i64
  %i.fn = ptrtoint ptr %i.ep to i64
  %i.fo = sub i64 %i.fm, %i.fn
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.1: ; preds = %.critedge.i.i289.1, %bb.q
  %.2.i.i291.1 = phi i64 [ %i.fb, %bb.q ], [ %i.fo, %.critedge.i.i289.1 ] ; 4 uses
  %i.fp = icmp ugt i64 %.2.i.i291.1, 3
  br i1 %i.fp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.1
  %i.fq = mul i64 %.2.i.i291.1, 135
  %i.fr = trunc i64 %i.en to i32
  %i.fs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fr, i1 true)
  %i.ft = xor i32 %i.fs, 31
  %.neg.1 = mul nsw i32 %i.ft, -30
  %narrow.1 = add nsw i32 %.neg.1, 1920
end_hunk_0
begin_hunk_1_@_ZL28CreateBackwardReferencesDH55mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.w:                                             ; preds = %bb.v
  %i.gh = icmp eq i64 %.0194822, %i.gb
  %i.gi = icmp ugt i64 %i.gc, %i.av
  %i.gj = or i1 %i.gh, %i.gi
  br i1 %i.gj, label %bb.ac, label %.preheader527.2, !prof !72

.preheader527.2:                                  ; preds = %bb.w
  br i1 %i.cu, label %.lr.ph580.2, label %.preheader526.2

.lr.ph580.2:                                      ; preds = %.preheader527.2, %bb.y
  %.022.i.i283579.2 = phi i64 [ %i.gt, %bb.y ], [ %i.au, %.preheader527.2 ]
  %.024.i.i282578.2 = phi ptr [ %i.gr, %bb.y ], [ %i.az, %.preheader527.2 ] ; 2 uses
  %.026.i.i281577.2 = phi ptr [ %i.gs, %bb.y ], [ %i.ge, %.preheader527.2 ] ; 3 uses
  %.0.copyload.i129.i.2 = load i64, ptr %.024.i.i282578.2, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.0.copyload.i128.i.2 = load i64, ptr %.026.i.i281577.2, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.not30.i.i292.2 = icmp eq i64 %.0.copyload.i129.i.2, %.0.copyload.i128.i.2
  br i1 %.not30.i.i292.2, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph580.2
  %i.gk = xor i64 %.0.copyload.i128.i.2, %.0.copyload.i129.i.2
  %i.gl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gk, i1 true)
  %i.gm = ptrtoint ptr %.026.i.i281577.2 to i64
  %i.gn = ptrtoint ptr %i.ge to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = add i64 %i.go, %i.gp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2

bb.y:                                             ; preds = %.lr.ph580.2
  %i.gr = getelementptr inbounds nuw i8, ptr %.024.i.i282578.2, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.026.i.i281577.2, i64 8 ; 2 uses
  %i.gt = add i64 %.022.i.i283579.2, -8           ; 3 uses
  %i.gu = icmp ugt i64 %i.gt, 7
  br i1 %i.gu, label %.lr.ph580.2, label %.preheader526.2, !llvm.loop !62

.preheader526.2:                                  ; preds = %bb.y, %.preheader527.2
  %.026.i.i281.lcssa.2 = phi ptr [ %i.ge, %.preheader527.2 ], [ %i.gs, %bb.y ] ; 3 uses
  %.024.i.i282.lcssa.2 = phi ptr [ %i.az, %.preheader527.2 ], [ %i.gr, %bb.y ]
  %.022.i.i283.lcssa.2 = phi i64 [ %i.au, %.preheader527.2 ], [ %i.gt, %bb.y ] ; 3 uses
  %.not.i.i288584.2 = icmp eq i64 %.022.i.i283.lcssa.2, 0
  br i1 %.not.i.i288584.2, label %.critedge.i.i289.2, label %.lr.ph588.preheader.2

.lr.ph588.preheader.2:                            ; preds = %.preheader526.2
  %scevgep909.2 = getelementptr i8, ptr %.026.i.i281.lcssa.2, i64 %.022.i.i283.lcssa.2
  br label %.lr.ph588.2

.lr.ph588.2:                                      ; preds = %bb.z, %.lr.ph588.preheader.2
  %.123.i.i287587.2 = phi i64 [ %i.gy, %bb.z ], [ %.022.i.i283.lcssa.2, %.lr.ph588.preheader.2 ]
  %.125.i.i286586.2 = phi ptr [ %i.gz, %bb.z ], [ %.024.i.i282.lcssa.2, %.lr.ph588.preheader.2 ] ; 2 uses
  %.228.i.i285585.2 = phi ptr [ %i.ha, %bb.z ], [ %.026.i.i281.lcssa.2, %.lr.ph588.preheader.2 ] ; 3 uses
  %i.gv = load i8, ptr %.228.i.i285585.2, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.gw = load i8, ptr %.125.i.i286586.2, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.gx = icmp eq i8 %i.gv, %i.gw
  br i1 %i.gx, label %bb.z, label %.critedge.i.i289.2

bb.z:                                             ; preds = %.lr.ph588.2
  %i.gy = add nsw i64 %.123.i.i287587.2, -1       ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.125.i.i286586.2, i64 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.228.i.i285585.2, i64 1
  %.not.i.i288.2 = icmp eq i64 %i.gy, 0
  br i1 %.not.i.i288.2, label %.critedge.i.i289.2, label %.lr.ph588.2, !llvm.loop !64

.critedge.i.i289.2:                               ; preds = %.lr.ph588.2, %bb.z, %.preheader526.2
  %.228.i.i285.lcssa.2 = phi ptr [ %.026.i.i281.lcssa.2, %.preheader526.2 ], [ %.228.i.i285585.2, %.lr.ph588.2 ], [ %scevgep909.2, %bb.z ]
  %i.hb = ptrtoint ptr %.228.i.i285.lcssa.2 to i64
  %i.hc = ptrtoint ptr %i.ge to i64
  %i.hd = sub i64 %i.hb, %i.hc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2: ; preds = %.critedge.i.i289.2, %bb.x
  %.2.i.i291.2 = phi i64 [ %i.gq, %bb.x ], [ %i.hd, %.critedge.i.i289.2 ] ; 4 uses
  %i.he = icmp ugt i64 %.2.i.i291.2, 3
  br i1 %i.he, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2
  %i.hf = mul i64 %.2.i.i291.2, 135
  %i.hg = trunc i64 %i.gc to i32
  %i.hh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hg, i1 true)
  %i.hi = xor i32 %i.hh, 31
  %.neg.2 = mul nsw i32 %i.hi, -30
  %narrow.2 = add nsw i32 %.neg.2, 1920
  %i.hj = zext nneg i32 %narrow.2 to i64
  %i.hk = add i64 %i.hf, %i.hj                    ; 2 uses
  %i.hl = icmp ult i64 %.sroa.29.9.1, %i.hk
  br i1 %i.hl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hm = getelementptr i8, ptr %i.az, i64 %.2.i.i291.2
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2, %bb.w, %bb.v
  %.sroa.29.9.2 = phi i64 [ %.sroa.29.9.1, %bb.w ], [ %i.hk, %bb.ab ], [ %.sroa.29.9.1, %bb.aa ], [ %.sroa.29.9.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2 ], [ %.sroa.29.9.1, %bb.v ] ; 5 uses
  %.sroa.18403.9.2 = phi i64 [ %.sroa.18403.9.1, %bb.w ], [ %i.gc, %bb.ab ], [ %.sroa.18403.9.1, %bb.aa ], [ %.sroa.18403.9.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2 ], [ %.sroa.18403.9.1, %bb.v ] ; 4 uses
  %.sroa.0394.9.2 = phi i64 [ %.sroa.0394.9.1, %bb.w ], [ %.2.i.i291.2, %bb.ab ], [ %.sroa.0394.9.1, %bb.aa ], [ %.sroa.0394.9.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2 ], [ %.sroa.0394.9.1, %bb.v ] ; 5 uses
  %.6103.i.2.in = phi i8 [ %.6103.i.1.in, %bb.w ], [ %i.hn, %bb.ab ], [ %.6103.i.1.in, %bb.aa ], [ %.6103.i.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.2 ], [ %.6103.i.1.in, %bb.v ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cr
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3, !noalias !639
  %i.hq = zext i32 %i.hp to i64                   ; 3 uses
  %i.hr = sub i64 %.0194822, %i.hq                ; 3 uses
  %i.hs = and i64 %3, %i.hq
  %i.ht = getelementptr i8, ptr %2, i64 %i.hs     ; 5 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 %.sroa.0394.9.2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %.not.i280.3 = icmp eq i8 %.6103.i.2.in, %i.hv
  br i1 %.not.i280.3, label %bb.ad, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.hw = icmp eq i64 %.0194822, %i.hq
  %i.hx = icmp ugt i64 %i.hr, %i.av
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %.preheader527.3, !prof !72

.preheader527.3:                                  ; preds = %bb.ad
  br i1 %i.cu, label %.lr.ph580.3, label %.preheader526.3

.lr.ph580.3:                                      ; preds = %.preheader527.3, %bb.af
  %.022.i.i283579.3 = phi i64 [ %i.ii, %bb.af ], [ %i.au, %.preheader527.3 ]
  %.024.i.i282578.3 = phi ptr [ %i.ig, %bb.af ], [ %i.az, %.preheader527.3 ] ; 2 uses
  %.026.i.i281577.3 = phi ptr [ %i.ih, %bb.af ], [ %i.ht, %.preheader527.3 ] ; 3 uses
  %.0.copyload.i129.i.3 = load i64, ptr %.024.i.i282578.3, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.0.copyload.i128.i.3 = load i64, ptr %.026.i.i281577.3, align 1, !alias.scope !637, !noalias !639 ; 2 uses
  %.not30.i.i292.3 = icmp eq i64 %.0.copyload.i129.i.3, %.0.copyload.i128.i.3
  br i1 %.not30.i.i292.3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph580.3
  %i.hz = xor i64 %.0.copyload.i128.i.3, %.0.copyload.i129.i.3
  %i.ia = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hz, i1 true)
  %i.ib = ptrtoint ptr %.026.i.i281577.3 to i64
  %i.ic = ptrtoint ptr %i.ht to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = lshr i64 %i.ia, 3
  %i.if = add i64 %i.id, %i.ie
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3

bb.af:                                            ; preds = %.lr.ph580.3
  %i.ig = getelementptr inbounds nuw i8, ptr %.024.i.i282578.3, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.026.i.i281577.3, i64 8 ; 2 uses
  %i.ii = add i64 %.022.i.i283579.3, -8           ; 3 uses
  %i.ij = icmp ugt i64 %i.ii, 7
  br i1 %i.ij, label %.lr.ph580.3, label %.preheader526.3, !llvm.loop !62

.preheader526.3:                                  ; preds = %bb.af, %.preheader527.3
  %.026.i.i281.lcssa.3 = phi ptr [ %i.ht, %.preheader527.3 ], [ %i.ih, %bb.af ] ; 3 uses
  %.024.i.i282.lcssa.3 = phi ptr [ %i.az, %.preheader527.3 ], [ %i.ig, %bb.af ]
  %.022.i.i283.lcssa.3 = phi i64 [ %i.au, %.preheader527.3 ], [ %i.ii, %bb.af ] ; 3 uses
  %.not.i.i288584.3 = icmp eq i64 %.022.i.i283.lcssa.3, 0
  br i1 %.not.i.i288584.3, label %.critedge.i.i289.3, label %.lr.ph588.preheader.3

.lr.ph588.preheader.3:                            ; preds = %.preheader526.3
  %scevgep909.3 = getelementptr i8, ptr %.026.i.i281.lcssa.3, i64 %.022.i.i283.lcssa.3
  br label %.lr.ph588.3

.lr.ph588.3:                                      ; preds = %bb.ag, %.lr.ph588.preheader.3
  %.123.i.i287587.3 = phi i64 [ %i.in, %bb.ag ], [ %.022.i.i283.lcssa.3, %.lr.ph588.preheader.3 ]
  %.125.i.i286586.3 = phi ptr [ %i.io, %bb.ag ], [ %.024.i.i282.lcssa.3, %.lr.ph588.preheader.3 ] ; 2 uses
  %.228.i.i285585.3 = phi ptr [ %i.ip, %bb.ag ], [ %.026.i.i281.lcssa.3, %.lr.ph588.preheader.3 ] ; 3 uses
  %i.ik = load i8, ptr %.228.i.i285585.3, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.il = load i8, ptr %.125.i.i286586.3, align 1, !tbaa !54, !alias.scope !637, !noalias !639
  %i.im = icmp eq i8 %i.ik, %i.il
  br i1 %i.im, label %bb.ag, label %.critedge.i.i289.3

bb.ag:                                            ; preds = %.lr.ph588.3
  %i.in = add nsw i64 %.123.i.i287587.3, -1       ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.125.i.i286586.3, i64 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.228.i.i285585.3, i64 1
  %.not.i.i288.3 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i288.3, label %.critedge.i.i289.3, label %.lr.ph588.3, !llvm.loop !64

.critedge.i.i289.3:                               ; preds = %.lr.ph588.3, %bb.ag, %.preheader526.3
  %.228.i.i285.lcssa.3 = phi ptr [ %.026.i.i281.lcssa.3, %.preheader526.3 ], [ %.228.i.i285585.3, %.lr.ph588.3 ], [ %scevgep909.3, %bb.ag ]
  %i.iq = ptrtoint ptr %.228.i.i285.lcssa.3 to i64
  %i.ir = ptrtoint ptr %i.ht to i64
  %i.is = sub i64 %i.iq, %i.ir
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3: ; preds = %.critedge.i.i289.3, %bb.ae
  %.2.i.i291.3 = phi i64 [ %i.if, %bb.ae ], [ %i.is, %.critedge.i.i289.3 ] ; 3 uses
  %i.it = icmp ugt i64 %.2.i.i291.3, 3
  br i1 %i.it, label %bb.ah, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3
  %i.iu = mul i64 %.2.i.i291.3, 135
  %i.iv = trunc i64 %i.hr to i32
  %i.iw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iv, i1 true)
  %i.ix = xor i32 %i.iw, 31
  %.neg.3 = mul nsw i32 %i.ix, -30
  %narrow.3 = add nsw i32 %.neg.3, 1920
  %i.iy = zext nneg i32 %narrow.3 to i64
  %i.iz = add i64 %i.iu, %i.iy                    ; 2 uses
  %i.ja = icmp ult i64 %.sroa.29.9.2, %i.iz
  br i1 %i.ja, label %bb.ai, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ai:                                            ; preds = %bb.ah
  br label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %bb.ai, %bb.ah, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3, %bb.ad, %bb.ac
  %.sroa.29.9.3 = phi i64 [ %.sroa.29.9.2, %bb.ad ], [ %i.iz, %bb.ai ], [ %.sroa.29.9.2, %bb.ah ], [ %.sroa.29.9.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3 ], [ %.sroa.29.9.2, %bb.ac ] ; 3 uses
  %.sroa.18403.9.3 = phi i64 [ %.sroa.18403.9.2, %bb.ad ], [ %i.hr, %bb.ai ], [ %.sroa.18403.9.2, %bb.ah ], [ %.sroa.18403.9.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3 ], [ %.sroa.18403.9.2, %bb.ac ] ; 3 uses
  %.sroa.0394.9.3 = phi i64 [ %.sroa.0394.9.2, %bb.ad ], [ %.2.i.i291.3, %bb.ai ], [ %.sroa.0394.9.2, %bb.ah ], [ %.sroa.0394.9.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i290.3 ], [ %.sroa.0394.9.2, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !641
  %i.jb = trunc i64 %.0194822 to i32              ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ct
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !3, !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.jd = and i64 %.0194822, 3
  %.not.i341 = icmp ne i64 %i.jd, 0
  %i.je = icmp ult i64 %i.au, 32
  %or.cond66.i = or i1 %.not.i341, %i.je
  br i1 %or.cond66.i, label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.jf = load i64, ptr %i.ad, align 8, !tbaa !647, !alias.scope !642, !noalias !649 ; 2 uses
  %.not64.i614 = icmp ugt i64 %i.jf, %.0194822
  br i1 %.not64.i614, label %bb.au, label %.lr.ph619

.lr.ph619:                                        ; preds = %bb.aj
  %i.jg = load i32, ptr %i.ae, align 4, !tbaa !651, !alias.scope !642, !noalias !649
  %i.jh = load i32, ptr %i.af, align 8, !tbaa !652, !alias.scope !642, !noalias !649
  %.promoted = load i32, ptr %i.ac, align 8, !tbaa !653, !alias.scope !642, !noalias !649
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph619, %bb.at
  %i.ji = phi i32 [ %.promoted, %.lr.ph619 ], [ %i.jw, %bb.at ] ; 2 uses
  %.0.i342618 = phi i64 [ %i.jf, %.lr.ph619 ], [ %i.lm, %bb.at ] ; 5 uses
  %.sroa.0394.10617 = phi i64 [ %.sroa.0394.9.3, %.lr.ph619 ], [ %.sroa.0394.11, %bb.at ] ; 6 uses
  %.sroa.18403.10616 = phi i64 [ %.sroa.18403.9.3, %.lr.ph619 ], [ %.sroa.18403.11, %bb.at ] ; 5 uses
  %.sroa.29.10615 = phi i64 [ %.sroa.29.9.3, %.lr.ph619 ], [ %.sroa.29.11, %bb.at ] ; 6 uses
  %i.jj = and i32 %i.ji, 1073741823               ; 2 uses
  %i.jk = and i64 %.0.i342618, %3
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !54, !alias.scope !645, !noalias !654
  %i.jn = add i64 %.0.i342618, 32
  %i.jo = and i64 %i.jn, %3
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !54, !alias.scope !645, !noalias !654
  %i.jr = mul i32 %i.jg, %i.ji
  %i.js = zext i8 %i.jq to i32
  %i.jt = add nuw nsw i32 %i.js, 1
  %i.ju = add i32 %i.jt, %i.jr
  %i.jv = zext i8 %i.jm to i32
  %.neg.i = xor i32 %i.jv, -1
  %.neg5.i = mul i32 %i.jh, %.neg.i
  %i.jw = add i32 %i.ju, %.neg5.i                 ; 2 uses
  %i.jx = icmp samesign ult i32 %i.jj, 16777216
  br i1 %i.jx, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.jy = load ptr, ptr %i.ag, align 8, !tbaa !655, !alias.scope !642, !noalias !649
  %i.jz = zext nneg i32 %i.jj to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !3, !noalias !654 ; 3 uses
  %i.kc = zext i32 %i.kb to i64
  %i.kd = trunc i64 %.0.i342618 to i32
  store i32 %i.kd, ptr %i.ka, align 4, !tbaa !3, !noalias !654
  %i.ke = icmp eq i64 %.0.i342618, %.0194822
  %i.kf = icmp ne i32 %i.kb, -1
  %or.cond.i343 = select i1 %i.ke, i1 %i.kf, i1 false
  br i1 %or.cond.i343, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.kg = sub i32 %i.jb, %i.kb                    ; 2 uses
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %.not65.i = icmp ult i64 %i.av, %i.kh
  br i1 %.not65.i, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ki = and i64 %3, %i.kc
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ki ; 4 uses
  br i1 %i.cu, label %.lr.ph602, label %.preheader525

.preheader525:                                    ; preds = %bb.ap, %bb.an
  %.026.i.i344.lcssa = phi ptr [ %i.kj, %bb.an ], [ %i.ks, %bb.ap ] ; 3 uses
  %.024.i.i345.lcssa = phi ptr [ %i.az, %bb.an ], [ %i.kr, %bb.ap ]
  %.022.i.i346.lcssa = phi i64 [ %i.au, %bb.an ], [ %i.kt, %bb.ap ] ; 3 uses
  %.not.i.i351606 = icmp eq i64 %.022.i.i346.lcssa, 0
  br i1 %.not.i.i351606, label %.critedge.i.i352, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %.preheader525
  %scevgep910 = getelementptr i8, ptr %.026.i.i344.lcssa, i64 %.022.i.i346.lcssa
  br label %.lr.ph610

.lr.ph602:                                        ; preds = %bb.an, %bb.ap
  %.022.i.i346601 = phi i64 [ %i.kt, %bb.ap ], [ %i.au, %bb.an ]
  %.024.i.i345600 = phi ptr [ %i.kr, %bb.ap ], [ %i.az, %bb.an ] ; 2 uses
  %.026.i.i344599 = phi ptr [ %i.ks, %bb.ap ], [ %i.kj, %bb.an ] ; 3 uses
  %.0.copyload.i67.i = load i64, ptr %.024.i.i345600, align 1, !alias.scope !645, !noalias !654 ; 2 uses
  %.0.copyload.i.i355 = load i64, ptr %.026.i.i344599, align 1, !alias.scope !645, !noalias !654 ; 2 uses
  %.not30.i.i356 = icmp eq i64 %.0.copyload.i67.i, %.0.copyload.i.i355
  br i1 %.not30.i.i356, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph602
  %i.kk = xor i64 %.0.copyload.i.i355, %.0.copyload.i67.i
  %i.kl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kk, i1 true)
  %i.km = ptrtoint ptr %.026.i.i344599 to i64
  %i.kn = ptrtoint ptr %i.kj to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = lshr i64 %i.kl, 3
  %i.kq = add i64 %i.ko, %i.kp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353

bb.ap:                                            ; preds = %.lr.ph602
  %i.kr = getelementptr inbounds nuw i8, ptr %.024.i.i345600, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.026.i.i344599, i64 8 ; 2 uses
  %i.kt = add i64 %.022.i.i346601, -8             ; 3 uses
  %i.ku = icmp ugt i64 %i.kt, 7
  br i1 %i.ku, label %.lr.ph602, label %.preheader525, !llvm.loop !62

.lr.ph610:                                        ; preds = %.lr.ph610.preheader, %bb.aq
  %.123.i.i350609 = phi i64 [ %i.ky, %bb.aq ], [ %.022.i.i346.lcssa, %.lr.ph610.preheader ]
  %.125.i.i349608 = phi ptr [ %i.kz, %bb.aq ], [ %.024.i.i345.lcssa, %.lr.ph610.preheader ] ; 2 uses
  %.228.i.i348607 = phi ptr [ %i.la, %bb.aq ], [ %.026.i.i344.lcssa, %.lr.ph610.preheader ] ; 3 uses
  %i.kv = load i8, ptr %.228.i.i348607, align 1, !tbaa !54, !alias.scope !645, !noalias !654
  %i.kw = load i8, ptr %.125.i.i349608, align 1, !tbaa !54, !alias.scope !645, !noalias !654
  %i.kx = icmp eq i8 %i.kv, %i.kw
  br i1 %i.kx, label %bb.aq, label %.critedge.i.i352

bb.aq:                                            ; preds = %.lr.ph610
  %i.ky = add nsw i64 %.123.i.i350609, -1         ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.125.i.i349608, i64 1
  %i.la = getelementptr inbounds nuw i8, ptr %.228.i.i348607, i64 1
  %.not.i.i351 = icmp eq i64 %i.ky, 0
  br i1 %.not.i.i351, label %.critedge.i.i352, label %.lr.ph610, !llvm.loop !64

.critedge.i.i352:                                 ; preds = %bb.aq, %.lr.ph610, %.preheader525
  %.228.i.i348.lcssa = phi ptr [ %.026.i.i344.lcssa, %.preheader525 ], [ %.228.i.i348607, %.lr.ph610 ], [ %scevgep910, %bb.aq ]
  %i.lb = ptrtoint ptr %.228.i.i348.lcssa to i64
  %i.lc = ptrtoint ptr %i.kj to i64
  %i.ld = sub i64 %i.lb, %i.lc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353: ; preds = %bb.ao, %.critedge.i.i352
  %.2.i.i354 = phi i64 [ %i.kq, %bb.ao ], [ %i.ld, %.critedge.i.i352 ] ; 4 uses
  %i.le = icmp ugt i64 %.2.i.i354, 3
  %i.lf = icmp ugt i64 %.2.i.i354, %.sroa.0394.10617
  %or.cond491 = select i1 %i.le, i1 %i.lf, i1 false
  br i1 %or.cond491, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353
  %i.lg = mul i64 %.2.i.i354, 135
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kg, i1 true)
  %i.li = xor i32 %i.lh, 31
  %.neg830 = mul nsw i32 %i.li, -30
  %narrow829 = add nsw i32 %.neg830, 1920
  %i.lj = zext nneg i32 %narrow829 to i64
  %i.lk = add i64 %i.lg, %i.lj                    ; 2 uses
  %i.ll = icmp ugt i64 %i.lk, %.sroa.29.10615
  br i1 %i.ll, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353, %bb.am, %bb.al, %bb.ak
  %.sroa.29.11 = phi i64 [ %.sroa.29.10615, %bb.am ], [ %i.lk, %bb.as ], [ %.sroa.29.10615, %bb.ar ], [ %.sroa.29.10615, %bb.ak ], [ %.sroa.29.10615, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353 ], [ %.sroa.29.10615, %bb.al ] ; 2 uses
  %.sroa.18403.11 = phi i64 [ %.sroa.18403.10616, %bb.am ], [ %i.kh, %bb.as ], [ %.sroa.18403.10616, %bb.ar ], [ %.sroa.18403.10616, %bb.ak ], [ %.sroa.18403.10616, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353 ], [ %.sroa.18403.10616, %bb.al ] ; 2 uses
  %.sroa.0394.11 = phi i64 [ %.sroa.0394.10617, %bb.am ], [ %.2.i.i354, %bb.as ], [ %.sroa.0394.10617, %bb.ar ], [ %.sroa.0394.10617, %bb.ak ], [ %.sroa.0394.10617, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i353 ], [ %.sroa.0394.10617, %bb.al ] ; 2 uses
  %i.lm = add i64 %.0.i342618, 4                  ; 2 uses
  %.not64.i = icmp ugt i64 %i.lm, %.0194822
  br i1 %.not64.i, label %._crit_edge, label %bb.ak, !llvm.loop !656

._crit_edge:                                      ; preds = %bb.at
  store i32 %i.jw, ptr %i.ac, align 8, !tbaa !653, !alias.scope !642, !noalias !649
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge, %bb.aj
  %.sroa.29.10.lcssa = phi i64 [ %.sroa.29.11, %._crit_edge ], [ %.sroa.29.9.3, %bb.aj ]
  %.sroa.18403.10.lcssa = phi i64 [ %.sroa.18403.11, %._crit_edge ], [ %.sroa.18403.9.3, %bb.aj ]
  %.sroa.0394.10.lcssa = phi i64 [ %.sroa.0394.11, %._crit_edge ], [ %.sroa.0394.9.3, %bb.aj ]
  %i.ln = add i64 %.0194822, 4
  store i64 %i.ln, ptr %i.ad, align 8, !tbaa !647, !alias.scope !642, !noalias !649
  br label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, %bb.au
  %.sroa.29.12 = phi i64 [ %.sroa.29.9.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.29.10.lcssa, %bb.au ] ; 2 uses
  %.sroa.18403.12 = phi i64 [ %.sroa.18403.9.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.18403.10.lcssa, %bb.au ] ; 2 uses
  %.sroa.0394.12 = phi i64 [ %.sroa.0394.9.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.0394.10.lcssa, %bb.au ] ; 2 uses
  %i.lo = load i64, ptr %i.y, align 8, !tbaa !56  ; 2 uses
  %i.lp = load i64, ptr %i.s, align 8, !tbaa !86, !noalias !657 ; 2 uses
  %i.lq = add i64 %i.lp, %i.ax
  %i.lr = load i64, ptr %i.r, align 8, !tbaa !91, !noalias !657 ; 3 uses
  %.not = icmp eq i64 %i.lr, 0                    ; 2 uses
  br i1 %.not, label %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214, label %.lr.ph677

.lr.ph677:                                        ; preds = %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %.0.copyload.i165.i = load i64, ptr %i.az, align 1, !alias.scope !661, !noalias !664
  %i.ls = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !667, !noalias !668
  %i.lt = sext i32 %i.ls to i64                   ; 4 uses
  %i.lu = load i32, ptr %i.ak, align 4, !tbaa !3, !alias.scope !667, !noalias !668
  %i.lv = sext i32 %i.lu to i64                   ; 4 uses
  %i.lw = load i32, ptr %i.al, align 4, !tbaa !3, !alias.scope !667, !noalias !668
  %i.lx = sext i32 %i.lw to i64                   ; 4 uses
  %i.ly = load i32, ptr %i.am, align 4, !tbaa !3, !alias.scope !667, !noalias !668
  %i.lz = sext i32 %i.ly to i64                   ; 4 uses
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph677, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit
  %.0.i213676 = phi i64 [ 0, %.lr.ph677 ], [ %i.uo, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit ] ; 3 uses
  %.sroa.0394.2675 = phi i64 [ %.sroa.0394.12, %.lr.ph677 ], [ %.sroa.0394.4.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit ] ; 7 uses
  %.sroa.18403.2674 = phi i64 [ %.sroa.18403.12, %.lr.ph677 ], [ %.sroa.18403.4.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit ] ; 3 uses
  %.sroa.29.2673 = phi i64 [ %.sroa.29.12, %.lr.ph677 ], [ %.sroa.29.4.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZL28CreateBackwardReferencesDH55mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.cg:                                            ; preds = %.lr.ph651
  %i.ts = getelementptr inbounds nuw i8, ptr %.024.i.i648, i64 8 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.026.i.i647, i64 8 ; 3 uses
  %i.tu = add i64 %.022.i.i649, -8                ; 4 uses
  %i.tv = icmp ugt i64 %i.tu, 7
  br i1 %i.tv, label %.lr.ph651, label %.preheader520, !llvm.loop !62

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %bb.ch
  %.123.i.i658 = phi i64 [ %i.tz, %bb.ch ], [ %.022.i.i.lcssa1112, %.lr.ph659.preheader ]
  %.125.i.i657 = phi ptr [ %i.ua, %bb.ch ], [ %.024.i.i.lcssa1111, %.lr.ph659.preheader ] ; 2 uses
  %.228.i.i656 = phi ptr [ %i.ub, %bb.ch ], [ %.026.i.i.lcssa1110, %.lr.ph659.preheader ] ; 3 uses
  %i.tw = load i8, ptr %.228.i.i656, align 1, !tbaa !54, !noalias !669
  %i.tx = load i8, ptr %.125.i.i657, align 1, !tbaa !54, !alias.scope !661, !noalias !664
  %i.ty = icmp eq i8 %i.tw, %i.tx
  br i1 %i.ty, label %bb.ch, label %.critedge.i.i

bb.ch:                                            ; preds = %.lr.ph659
  %i.tz = add nsw i64 %.123.i.i658, -1            ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.125.i.i657, i64 1
  %i.ub = getelementptr inbounds nuw i8, ptr %.228.i.i656, i64 1
  %.not.i.i = icmp eq i64 %i.tz, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph659, !llvm.loop !64

.critedge.i.i:                                    ; preds = %bb.ch, %.lr.ph659, %.preheader520
  %.228.i.i.lcssa = phi ptr [ %i.tt, %.preheader520 ], [ %.228.i.i656, %.lr.ph659 ], [ %scevgep912, %bb.ch ]
  %i.uc = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.ud = ptrtoint ptr %i.tj to i64
  %i.ue = sub i64 %i.uc, %i.ud
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i: ; preds = %bb.cf, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.tr, %bb.cf ], [ %i.ue, %.critedge.i.i ] ; 4 uses
  %i.uf = icmp ugt i64 %.2.i.i, 3
  br i1 %i.uf, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %i.ug = mul i64 %.2.i.i, 135
  %i.uh = trunc i64 %i.sy to i32
  %i.ui = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.uh, i1 true)
  %i.uj = xor i32 %i.ui, 31
  %.neg833 = mul nsw i32 %i.uj, -30
  %narrow832 = add nsw i32 %.neg833, 1920
  %i.uk = zext nneg i32 %narrow832 to i64
  %i.ul = add i64 %i.ug, %i.uk                    ; 3 uses
  %i.um = icmp ult i64 %.4130.i666, %i.ul
  br i1 %i.um, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i, %bb.cd, %bb.cc, %.lr.ph669
  %.sroa.29.5 = phi i64 [ %.sroa.29.4663, %.lr.ph669 ], [ %i.ul, %bb.cj ], [ %.sroa.29.4663, %bb.ci ], [ %.sroa.29.4663, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.29.4663, %bb.cd ], [ %.sroa.29.4663, %bb.cc ] ; 2 uses
  %.sroa.18403.5 = phi i64 [ %.sroa.18403.4664, %.lr.ph669 ], [ %i.sy, %bb.cj ], [ %.sroa.18403.4664, %bb.ci ], [ %.sroa.18403.4664, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.18403.4664, %bb.cd ], [ %.sroa.18403.4664, %bb.cc ] ; 2 uses
  %.sroa.0394.5 = phi i64 [ %.sroa.0394.4665, %.lr.ph669 ], [ %.2.i.i, %bb.cj ], [ %.sroa.0394.4665, %bb.ci ], [ %.sroa.0394.4665, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.0394.4665, %bb.cd ], [ %.sroa.0394.4665, %bb.cc ] ; 2 uses
  %.7133.i = phi i64 [ %.4130.i666, %.lr.ph669 ], [ %i.ul, %bb.cj ], [ %.4130.i666, %bb.ci ], [ %.4130.i666, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.4130.i666, %bb.cd ], [ %.4130.i666, %bb.cc ]
  %.8.i = phi i64 [ %.5.i667, %.lr.ph669 ], [ %.2.i.i, %bb.cj ], [ %.5.i667, %bb.ci ], [ %.5.i667, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.5.i667, %bb.cd ], [ %.5.i667, %bb.cc ]
  %i.un = icmp sgt i32 %i.su, -1
  br i1 %i.un, label %.lr.ph669, label %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit: ; preds = %bb.ck, %.preheader524
  %.sroa.29.4.lcssa = phi i64 [ %.sroa.29.6.3, %.preheader524 ], [ %.sroa.29.5, %bb.ck ] ; 2 uses
  %.sroa.18403.4.lcssa = phi i64 [ %.sroa.18403.6.3, %.preheader524 ], [ %.sroa.18403.5, %bb.ck ] ; 2 uses
  %.sroa.0394.4.lcssa = phi i64 [ %.sroa.0394.6.3, %.preheader524 ], [ %.sroa.0394.5, %bb.ck ] ; 2 uses
  %i.uo = add nuw i64 %.0.i213676, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.uo, %i.lr
  br i1 %exitcond.not, label %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214, label %bb.av, !llvm.loop !111

_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214: ; preds = %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %.sroa.29.2.lcssa = phi i64 [ %.sroa.29.12, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.29.4.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit ] ; 2 uses
  %.sroa.18403.2.lcssa = phi i64 [ %.sroa.18403.12, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.18403.4.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit ]
  %.sroa.0394.2.lcssa = phi i64 [ %.sroa.0394.12, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.0394.4.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit ]
  %i.up = icmp ugt i64 %.sroa.29.2.lcssa, 2020
  br i1 %i.up, label %.preheader528, label %bb.gv

.preheader528:                                    ; preds = %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214, %bb.fu
  %.sroa.29.0 = phi i64 [ %.sroa.18.0.lcssa, %bb.fu ], [ %.sroa.29.2.lcssa, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214 ]
  %.sroa.18403.0 = phi i64 [ %.sroa.12.0.lcssa, %bb.fu ], [ %.sroa.18403.2.lcssa, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214 ]
  %.sroa.0394.0 = phi i64 [ %.sroa.0.0.lcssa, %bb.fu ], [ %.sroa.0394.2.lcssa, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214 ] ; 2 uses
  %.1195 = phi i64 [ %i.uv, %bb.fu ], [ %.0194822, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214 ] ; 5 uses
  %.1192 = phi i64 [ %i.aoq, %bb.fu ], [ %.0191823, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214 ] ; 2 uses
  %.0188.in = phi i64 [ %.0188, %bb.fu ], [ %i.au, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214 ]
  %.0181 = phi i32 [ %i.aor, %bb.fu ], [ 0, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214 ] ; 2 uses
  %.0188 = add i64 %.0188.in, -1                  ; 21 uses
  %i.uq = load i32, ptr %i.n, align 4, !tbaa !31
  %i.ur = icmp slt i32 %i.uq, 5
  %i.us = add i64 %.sroa.0394.0, -1
  %i.ut = tail call i64 @llvm.umin.i64(i64 %i.us, i64 %.0188)
  %i.uu = select i1 %i.ur, i64 %i.ut, i64 0       ; 6 uses
  %i.uv = add i64 %.1195, 1                       ; 21 uses
  %i.uw = tail call noundef i64 @llvm.umin.i64(i64 %i.uv, i64 %i.g) ; 5 uses
  %i.ux = add i64 %i.uv, %i.i
  %i.uy = tail call noundef i64 @llvm.umin.i64(i64 %i.ux, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.uz = and i64 %i.uv, %3                       ; 2 uses
  %i.va = getelementptr i8, ptr %2, i64 %i.uz     ; 28 uses
  %i.vb = getelementptr i8, ptr %i.va, i64 %i.uu
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !54, !alias.scope !670, !noalias !675 ; 5 uses
  %.val385 = load i64, ptr %i.va, align 1
  %i.vd = mul i64 %.val385, -2064201331557805312
  %i.ve = lshr i64 %i.vd, 44                      ; 5 uses
  %i.vf = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !673, !noalias !678
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %i.vh = sub i64 %i.uv, %i.vg                    ; 2 uses
  %i.vi = icmp ult i64 %i.vh, %i.uv
  br i1 %i.vi, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %.preheader528
  %i.vj = and i64 %i.ab, %i.vh
  %i.vk = getelementptr i8, ptr %2, i64 %i.vj     ; 5 uses
  %i.vl = getelementptr i8, ptr %i.vk, i64 %i.uu
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.vn = icmp eq i8 %i.vc, %i.vm
  br i1 %i.vn, label %.preheader523, label %bb.cr

.preheader523:                                    ; preds = %bb.cl
  %i.vo = icmp ugt i64 %.0188, 7
  br i1 %i.vo, label %.lr.ph697, label %.preheader522

.preheader522:                                    ; preds = %bb.cn, %.preheader523
  %.026.i113.i324.lcssa = phi ptr [ %i.vk, %.preheader523 ], [ %i.vx, %bb.cn ] ; 3 uses
  %.024.i114.i325.lcssa = phi ptr [ %i.va, %.preheader523 ], [ %i.vw, %bb.cn ]
  %.022.i115.i326.lcssa = phi i64 [ %.0188, %.preheader523 ], [ %i.vy, %bb.cn ] ; 3 uses
  %.not.i120.i331701 = icmp eq i64 %.022.i115.i326.lcssa, 0
  br i1 %.not.i120.i331701, label %.critedge.i121.i332, label %.lr.ph705.preheader

.lr.ph705.preheader:                              ; preds = %.preheader522
  %scevgep913 = getelementptr i8, ptr %.026.i113.i324.lcssa, i64 %.022.i115.i326.lcssa
  br label %.lr.ph705

.lr.ph697:                                        ; preds = %.preheader523, %bb.cn
  %.022.i115.i326696 = phi i64 [ %i.vy, %bb.cn ], [ %.0188, %.preheader523 ]
  %.024.i114.i325695 = phi ptr [ %i.vw, %bb.cn ], [ %i.va, %.preheader523 ] ; 2 uses
  %.026.i113.i324694 = phi ptr [ %i.vx, %bb.cn ], [ %i.vk, %.preheader523 ] ; 3 uses
  %.0.copyload.i127.i335 = load i64, ptr %.024.i114.i325695, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.0.copyload.i.i336 = load i64, ptr %.026.i113.i324694, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.not30.i123.i337 = icmp eq i64 %.0.copyload.i127.i335, %.0.copyload.i.i336
  br i1 %.not30.i123.i337, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph697
  %i.vp = xor i64 %.0.copyload.i.i336, %.0.copyload.i127.i335
  %i.vq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vp, i1 true)
  %i.vr = ptrtoint ptr %.026.i113.i324694 to i64
  %i.vs = ptrtoint ptr %i.vk to i64
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = lshr i64 %i.vq, 3
  %i.vv = add i64 %i.vt, %i.vu
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333

bb.cn:                                            ; preds = %.lr.ph697
  %i.vw = getelementptr inbounds nuw i8, ptr %.024.i114.i325695, i64 8 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.026.i113.i324694, i64 8 ; 2 uses
  %i.vy = add i64 %.022.i115.i326696, -8          ; 3 uses
  %i.vz = icmp ugt i64 %i.vy, 7
  br i1 %i.vz, label %.lr.ph697, label %.preheader522, !llvm.loop !62

.lr.ph705:                                        ; preds = %.lr.ph705.preheader, %bb.co
  %.123.i119.i330704 = phi i64 [ %i.wd, %bb.co ], [ %.022.i115.i326.lcssa, %.lr.ph705.preheader ]
  %.125.i118.i329703 = phi ptr [ %i.we, %bb.co ], [ %.024.i114.i325.lcssa, %.lr.ph705.preheader ] ; 2 uses
  %.228.i117.i328702 = phi ptr [ %i.wf, %bb.co ], [ %.026.i113.i324.lcssa, %.lr.ph705.preheader ] ; 3 uses
  %i.wa = load i8, ptr %.228.i117.i328702, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.wb = load i8, ptr %.125.i118.i329703, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.wc = icmp eq i8 %i.wa, %i.wb
  br i1 %i.wc, label %bb.co, label %.critedge.i121.i332

bb.co:                                            ; preds = %.lr.ph705
  %i.wd = add nsw i64 %.123.i119.i330704, -1      ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.125.i118.i329703, i64 1
  %i.wf = getelementptr inbounds nuw i8, ptr %.228.i117.i328702, i64 1
  %.not.i120.i331 = icmp eq i64 %i.wd, 0
  br i1 %.not.i120.i331, label %.critedge.i121.i332, label %.lr.ph705, !llvm.loop !64

.critedge.i121.i332:                              ; preds = %bb.co, %.lr.ph705, %.preheader522
  %.228.i117.i328.lcssa = phi ptr [ %.026.i113.i324.lcssa, %.preheader522 ], [ %.228.i117.i328702, %.lr.ph705 ], [ %scevgep913, %bb.co ]
  %i.wg = ptrtoint ptr %.228.i117.i328.lcssa to i64
  %i.wh = ptrtoint ptr %i.vk to i64
  %i.wi = sub i64 %i.wg, %i.wh
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333: ; preds = %bb.cm, %.critedge.i121.i332
  %.2.i122.i334 = phi i64 [ %i.vv, %bb.cm ], [ %i.wi, %.critedge.i121.i332 ] ; 4 uses
  %i.wj = icmp ugt i64 %.2.i122.i334, 3
  br i1 %i.wj, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333
  %i.wk = mul i64 %.2.i122.i334, 135
  %i.wl = add i64 %i.wk, 1935                     ; 2 uses
  %i.wm = icmp ugt i64 %i.wl, 2020
  br i1 %i.wm, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.wn = getelementptr i8, ptr %i.va, i64 %.2.i122.i334
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333, %bb.cl, %.preheader528
  %.sroa.18.5 = phi i64 [ %i.wl, %bb.cq ], [ 2020, %bb.cp ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333 ], [ 2020, %bb.cl ], [ 2020, %.preheader528 ] ; 5 uses
  %.sroa.12.5 = phi i64 [ %i.vg, %bb.cq ], [ 0, %bb.cp ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333 ], [ 0, %bb.cl ], [ 0, %.preheader528 ] ; 4 uses
  %.sroa.0.5 = phi i64 [ %.2.i122.i334, %bb.cq ], [ %i.uu, %bb.cp ], [ %i.uu, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333 ], [ %i.uu, %bb.cl ], [ %i.uu, %.preheader528 ] ; 5 uses
  %.299.i296.in = phi i8 [ %i.wo, %bb.cq ], [ %i.vc, %bb.cp ], [ %i.vc, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i333 ], [ %i.vc, %bb.cl ], [ %i.vc, %.preheader528 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !679
  store i64 %i.ve, ptr %i.a, align 16, !tbaa !30, !noalias !679
  %i.wp = add nuw nsw i64 %i.ve, 8
  %i.wq = and i64 %i.wp, 1048575                  ; 2 uses
  store i64 %i.wq, ptr %i.ar, align 8, !tbaa !30, !noalias !679
  %i.wr = add nuw nsw i64 %i.ve, 16
  %i.ws = and i64 %i.wr, 1048575                  ; 2 uses
  store i64 %i.ws, ptr %i.as, align 16, !tbaa !30, !noalias !679
  %i.wt = add nuw nsw i64 %i.ve, 24
  %i.wu = and i64 %i.wt, 1048575                  ; 2 uses
  store i64 %i.wu, ptr %i.at, align 8, !tbaa !30, !noalias !679
  %13 = lshr i64 %i.uv, 3
  %i.wv = and i64 %13, 3
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.wv
  %i.ww = load i64, ptr %14, align 8, !tbaa !30, !noalias !679
  %i.wx = icmp ugt i64 %.0188, 7                  ; 4 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ve
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !3, !noalias !675
  %i.xa = zext i32 %i.wz to i64                   ; 3 uses
  %i.xb = sub i64 %i.uv, %i.xa                    ; 3 uses
  %i.xc = and i64 %3, %i.xa
  %i.xd = getelementptr i8, ptr %2, i64 %i.xc     ; 5 uses
  %i.xe = getelementptr i8, ptr %i.xd, i64 %.sroa.0.5
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %.not.i304 = icmp eq i8 %.299.i296.in, %i.xf
  br i1 %.not.i304, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.xg = icmp eq i64 %i.uv, %i.xa
  %i.xh = icmp ugt i64 %i.xb, %i.uw
  %i.xi = or i1 %i.xg, %i.xh
  br i1 %i.xi, label %bb.cy, label %.preheader519, !prof !72

.preheader519:                                    ; preds = %bb.cs
  br i1 %i.wx, label %.lr.ph713, label %.preheader518

.preheader518:                                    ; preds = %bb.cu, %.preheader519
  %.026.i.i308.lcssa = phi ptr [ %i.xd, %.preheader519 ], [ %i.xr, %bb.cu ] ; 3 uses
  %.024.i.i309.lcssa = phi ptr [ %i.va, %.preheader519 ], [ %i.xq, %bb.cu ]
  %.022.i.i310.lcssa = phi i64 [ %.0188, %.preheader519 ], [ %i.xs, %bb.cu ] ; 3 uses
  %.not.i.i315717 = icmp eq i64 %.022.i.i310.lcssa, 0
  br i1 %.not.i.i315717, label %.critedge.i.i316, label %.lr.ph721.preheader

.lr.ph721.preheader:                              ; preds = %.preheader518
  %scevgep915 = getelementptr i8, ptr %.026.i.i308.lcssa, i64 %.022.i.i310.lcssa
  br label %.lr.ph721

.lr.ph713:                                        ; preds = %.preheader519, %bb.cu
  %.022.i.i310712 = phi i64 [ %i.xs, %bb.cu ], [ %.0188, %.preheader519 ]
  %.024.i.i309711 = phi ptr [ %i.xq, %bb.cu ], [ %i.va, %.preheader519 ] ; 2 uses
  %.026.i.i308710 = phi ptr [ %i.xr, %bb.cu ], [ %i.xd, %.preheader519 ] ; 3 uses
  %.0.copyload.i129.i319 = load i64, ptr %.024.i.i309711, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.0.copyload.i128.i320 = load i64, ptr %.026.i.i308710, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.not30.i.i321 = icmp eq i64 %.0.copyload.i129.i319, %.0.copyload.i128.i320
  br i1 %.not30.i.i321, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph713
  %i.xj = xor i64 %.0.copyload.i128.i320, %.0.copyload.i129.i319
  %i.xk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.xj, i1 true)
  %i.xl = ptrtoint ptr %.026.i.i308710 to i64
  %i.xm = ptrtoint ptr %i.xd to i64
  %i.xn = sub i64 %i.xl, %i.xm
  %i.xo = lshr i64 %i.xk, 3
  %i.xp = add i64 %i.xn, %i.xo
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317

bb.cu:                                            ; preds = %.lr.ph713
  %i.xq = getelementptr inbounds nuw i8, ptr %.024.i.i309711, i64 8 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.026.i.i308710, i64 8 ; 2 uses
  %i.xs = add i64 %.022.i.i310712, -8             ; 3 uses
  %i.xt = icmp ugt i64 %i.xs, 7
  br i1 %i.xt, label %.lr.ph713, label %.preheader518, !llvm.loop !62

.lr.ph721:                                        ; preds = %.lr.ph721.preheader, %bb.cv
  %.123.i.i314720 = phi i64 [ %i.xx, %bb.cv ], [ %.022.i.i310.lcssa, %.lr.ph721.preheader ]
  %.125.i.i313719 = phi ptr [ %i.xy, %bb.cv ], [ %.024.i.i309.lcssa, %.lr.ph721.preheader ] ; 2 uses
  %.228.i.i312718 = phi ptr [ %i.xz, %bb.cv ], [ %.026.i.i308.lcssa, %.lr.ph721.preheader ] ; 3 uses
  %i.xu = load i8, ptr %.228.i.i312718, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.xv = load i8, ptr %.125.i.i313719, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.xw = icmp eq i8 %i.xu, %i.xv
  br i1 %i.xw, label %bb.cv, label %.critedge.i.i316

bb.cv:                                            ; preds = %.lr.ph721
  %i.xx = add nsw i64 %.123.i.i314720, -1         ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.125.i.i313719, i64 1
  %i.xz = getelementptr inbounds nuw i8, ptr %.228.i.i312718, i64 1
  %.not.i.i315 = icmp eq i64 %i.xx, 0
  br i1 %.not.i.i315, label %.critedge.i.i316, label %.lr.ph721, !llvm.loop !64

.critedge.i.i316:                                 ; preds = %bb.cv, %.lr.ph721, %.preheader518
  %.228.i.i312.lcssa = phi ptr [ %.026.i.i308.lcssa, %.preheader518 ], [ %.228.i.i312718, %.lr.ph721 ], [ %scevgep915, %bb.cv ]
  %i.ya = ptrtoint ptr %.228.i.i312.lcssa to i64
  %i.yb = ptrtoint ptr %i.xd to i64
  %i.yc = sub i64 %i.ya, %i.yb
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317: ; preds = %bb.ct, %.critedge.i.i316
  %.2.i.i318 = phi i64 [ %i.xp, %bb.ct ], [ %i.yc, %.critedge.i.i316 ] ; 4 uses
  %i.yd = icmp ugt i64 %.2.i.i318, 3
  br i1 %i.yd, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317
  %i.ye = mul i64 %.2.i.i318, 135
  %i.yf = trunc i64 %i.xb to i32
  %i.yg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yf, i1 true)
  %i.yh = xor i32 %i.yg, 31
  %.neg836 = mul nsw i32 %i.yh, -30
  %narrow835 = add nsw i32 %.neg836, 1920
  %i.yi = zext nneg i32 %narrow835 to i64
  %i.yj = add i64 %i.ye, %i.yi                    ; 2 uses
  %i.yk = icmp ult i64 %.sroa.18.5, %i.yj
  br i1 %i.yk, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.yl = getelementptr i8, ptr %i.va, i64 %.2.i.i318
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317, %bb.cs, %bb.cr
  %.sroa.18.7 = phi i64 [ %.sroa.18.5, %bb.cs ], [ %i.yj, %bb.cx ], [ %.sroa.18.5, %bb.cw ], [ %.sroa.18.5, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317 ], [ %.sroa.18.5, %bb.cr ] ; 5 uses
  %.sroa.12.7 = phi i64 [ %.sroa.12.5, %bb.cs ], [ %i.xb, %bb.cx ], [ %.sroa.12.5, %bb.cw ], [ %.sroa.12.5, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317 ], [ %.sroa.12.5, %bb.cr ] ; 4 uses
  %.sroa.0.7 = phi i64 [ %.sroa.0.5, %bb.cs ], [ %.2.i.i318, %bb.cx ], [ %.sroa.0.5, %bb.cw ], [ %.sroa.0.5, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317 ], [ %.sroa.0.5, %bb.cr ] ; 5 uses
  %.6103.i305.in = phi i8 [ %.299.i296.in, %bb.cs ], [ %i.ym, %bb.cx ], [ %.299.i296.in, %bb.cw ], [ %.299.i296.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317 ], [ %.299.i296.in, %bb.cr ] ; 5 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.wq
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !3, !noalias !675
  %i.yp = zext i32 %i.yo to i64                   ; 3 uses
  %i.yq = sub i64 %i.uv, %i.yp                    ; 3 uses
  %i.yr = and i64 %3, %i.yp
  %i.ys = getelementptr i8, ptr %2, i64 %i.yr     ; 5 uses
  %i.yt = getelementptr i8, ptr %i.ys, i64 %.sroa.0.7
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %.not.i304.1 = icmp eq i8 %.6103.i305.in, %i.yu
  br i1 %.not.i304.1, label %bb.cz, label %bb.df

bb.cz:                                            ; preds = %bb.cy
  %i.yv = icmp eq i64 %i.uv, %i.yp
  %i.yw = icmp ugt i64 %i.yq, %i.uw
  %i.yx = or i1 %i.yv, %i.yw
  br i1 %i.yx, label %bb.df, label %.preheader519.1, !prof !72

.preheader519.1:                                  ; preds = %bb.cz
  br i1 %i.wx, label %.lr.ph713.1, label %.preheader518.1

.lr.ph713.1:                                      ; preds = %.preheader519.1, %bb.db
  %.022.i.i310712.1 = phi i64 [ %i.zh, %bb.db ], [ %.0188, %.preheader519.1 ]
  %.024.i.i309711.1 = phi ptr [ %i.zf, %bb.db ], [ %i.va, %.preheader519.1 ] ; 2 uses
  %.026.i.i308710.1 = phi ptr [ %i.zg, %bb.db ], [ %i.ys, %.preheader519.1 ] ; 3 uses
  %.0.copyload.i129.i319.1 = load i64, ptr %.024.i.i309711.1, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.0.copyload.i128.i320.1 = load i64, ptr %.026.i.i308710.1, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.not30.i.i321.1 = icmp eq i64 %.0.copyload.i129.i319.1, %.0.copyload.i128.i320.1
  br i1 %.not30.i.i321.1, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph713.1
  %i.yy = xor i64 %.0.copyload.i128.i320.1, %.0.copyload.i129.i319.1
  %i.yz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yy, i1 true)
  %i.za = ptrtoint ptr %.026.i.i308710.1 to i64
  %i.zb = ptrtoint ptr %i.ys to i64
  %i.zc = sub i64 %i.za, %i.zb
  %i.zd = lshr i64 %i.yz, 3
  %i.ze = add i64 %i.zc, %i.zd
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.1

bb.db:                                            ; preds = %.lr.ph713.1
  %i.zf = getelementptr inbounds nuw i8, ptr %.024.i.i309711.1, i64 8 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.026.i.i308710.1, i64 8 ; 2 uses
  %i.zh = add i64 %.022.i.i310712.1, -8           ; 3 uses
  %i.zi = icmp ugt i64 %i.zh, 7
  br i1 %i.zi, label %.lr.ph713.1, label %.preheader518.1, !llvm.loop !62

.preheader518.1:                                  ; preds = %bb.db, %.preheader519.1
  %.026.i.i308.lcssa.1 = phi ptr [ %i.ys, %.preheader519.1 ], [ %i.zg, %bb.db ] ; 3 uses
  %.024.i.i309.lcssa.1 = phi ptr [ %i.va, %.preheader519.1 ], [ %i.zf, %bb.db ]
  %.022.i.i310.lcssa.1 = phi i64 [ %.0188, %.preheader519.1 ], [ %i.zh, %bb.db ] ; 3 uses
  %.not.i.i315717.1 = icmp eq i64 %.022.i.i310.lcssa.1, 0
  br i1 %.not.i.i315717.1, label %.critedge.i.i316.1, label %.lr.ph721.preheader.1

.lr.ph721.preheader.1:                            ; preds = %.preheader518.1
  %scevgep915.1 = getelementptr i8, ptr %.026.i.i308.lcssa.1, i64 %.022.i.i310.lcssa.1
  br label %.lr.ph721.1

.lr.ph721.1:                                      ; preds = %bb.dc, %.lr.ph721.preheader.1
  %.123.i.i314720.1 = phi i64 [ %i.zm, %bb.dc ], [ %.022.i.i310.lcssa.1, %.lr.ph721.preheader.1 ]
  %.125.i.i313719.1 = phi ptr [ %i.zn, %bb.dc ], [ %.024.i.i309.lcssa.1, %.lr.ph721.preheader.1 ] ; 2 uses
  %.228.i.i312718.1 = phi ptr [ %i.zo, %bb.dc ], [ %.026.i.i308.lcssa.1, %.lr.ph721.preheader.1 ] ; 3 uses
  %i.zj = load i8, ptr %.228.i.i312718.1, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.zk = load i8, ptr %.125.i.i313719.1, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.zl = icmp eq i8 %i.zj, %i.zk
  br i1 %i.zl, label %bb.dc, label %.critedge.i.i316.1

bb.dc:                                            ; preds = %.lr.ph721.1
  %i.zm = add nsw i64 %.123.i.i314720.1, -1       ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.125.i.i313719.1, i64 1
  %i.zo = getelementptr inbounds nuw i8, ptr %.228.i.i312718.1, i64 1
  %.not.i.i315.1 = icmp eq i64 %i.zm, 0
  br i1 %.not.i.i315.1, label %.critedge.i.i316.1, label %.lr.ph721.1, !llvm.loop !64

.critedge.i.i316.1:                               ; preds = %.lr.ph721.1, %bb.dc, %.preheader518.1
  %.228.i.i312.lcssa.1 = phi ptr [ %.026.i.i308.lcssa.1, %.preheader518.1 ], [ %.228.i.i312718.1, %.lr.ph721.1 ], [ %scevgep915.1, %bb.dc ]
  %i.zp = ptrtoint ptr %.228.i.i312.lcssa.1 to i64
  %i.zq = ptrtoint ptr %i.ys to i64
  %i.zr = sub i64 %i.zp, %i.zq
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.1: ; preds = %.critedge.i.i316.1, %bb.da
  %.2.i.i318.1 = phi i64 [ %i.ze, %bb.da ], [ %i.zr, %.critedge.i.i316.1 ] ; 4 uses
  %i.zs = icmp ugt i64 %.2.i.i318.1, 3
  br i1 %i.zs, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.1
  %i.zt = mul i64 %.2.i.i318.1, 135
  %i.zu = trunc i64 %i.yq to i32
  %i.zv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zu, i1 true)
  %i.zw = xor i32 %i.zv, 31
  %.neg836.1 = mul nsw i32 %i.zw, -30
  %narrow835.1 = add nsw i32 %.neg836.1, 1920
end_hunk_2
begin_hunk_3_@_ZL28CreateBackwardReferencesDH55mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.dg:                                            ; preds = %bb.df
  %i.aak = icmp eq i64 %i.uv, %i.aae
  %i.aal = icmp ugt i64 %i.aaf, %i.uw
  %i.aam = or i1 %i.aak, %i.aal
  br i1 %i.aam, label %bb.dm, label %.preheader519.2, !prof !72

.preheader519.2:                                  ; preds = %bb.dg
  br i1 %i.wx, label %.lr.ph713.2, label %.preheader518.2

.lr.ph713.2:                                      ; preds = %.preheader519.2, %bb.di
  %.022.i.i310712.2 = phi i64 [ %i.aaw, %bb.di ], [ %.0188, %.preheader519.2 ]
  %.024.i.i309711.2 = phi ptr [ %i.aau, %bb.di ], [ %i.va, %.preheader519.2 ] ; 2 uses
  %.026.i.i308710.2 = phi ptr [ %i.aav, %bb.di ], [ %i.aah, %.preheader519.2 ] ; 3 uses
  %.0.copyload.i129.i319.2 = load i64, ptr %.024.i.i309711.2, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.0.copyload.i128.i320.2 = load i64, ptr %.026.i.i308710.2, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.not30.i.i321.2 = icmp eq i64 %.0.copyload.i129.i319.2, %.0.copyload.i128.i320.2
  br i1 %.not30.i.i321.2, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph713.2
  %i.aan = xor i64 %.0.copyload.i128.i320.2, %.0.copyload.i129.i319.2
  %i.aao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aan, i1 true)
  %i.aap = ptrtoint ptr %.026.i.i308710.2 to i64
  %i.aaq = ptrtoint ptr %i.aah to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  %i.aas = lshr i64 %i.aao, 3
  %i.aat = add i64 %i.aar, %i.aas
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2

bb.di:                                            ; preds = %.lr.ph713.2
  %i.aau = getelementptr inbounds nuw i8, ptr %.024.i.i309711.2, i64 8 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.026.i.i308710.2, i64 8 ; 2 uses
  %i.aaw = add i64 %.022.i.i310712.2, -8          ; 3 uses
  %i.aax = icmp ugt i64 %i.aaw, 7
  br i1 %i.aax, label %.lr.ph713.2, label %.preheader518.2, !llvm.loop !62

.preheader518.2:                                  ; preds = %bb.di, %.preheader519.2
  %.026.i.i308.lcssa.2 = phi ptr [ %i.aah, %.preheader519.2 ], [ %i.aav, %bb.di ] ; 3 uses
  %.024.i.i309.lcssa.2 = phi ptr [ %i.va, %.preheader519.2 ], [ %i.aau, %bb.di ]
  %.022.i.i310.lcssa.2 = phi i64 [ %.0188, %.preheader519.2 ], [ %i.aaw, %bb.di ] ; 3 uses
  %.not.i.i315717.2 = icmp eq i64 %.022.i.i310.lcssa.2, 0
  br i1 %.not.i.i315717.2, label %.critedge.i.i316.2, label %.lr.ph721.preheader.2

.lr.ph721.preheader.2:                            ; preds = %.preheader518.2
  %scevgep915.2 = getelementptr i8, ptr %.026.i.i308.lcssa.2, i64 %.022.i.i310.lcssa.2
  br label %.lr.ph721.2

.lr.ph721.2:                                      ; preds = %bb.dj, %.lr.ph721.preheader.2
  %.123.i.i314720.2 = phi i64 [ %i.abb, %bb.dj ], [ %.022.i.i310.lcssa.2, %.lr.ph721.preheader.2 ]
  %.125.i.i313719.2 = phi ptr [ %i.abc, %bb.dj ], [ %.024.i.i309.lcssa.2, %.lr.ph721.preheader.2 ] ; 2 uses
  %.228.i.i312718.2 = phi ptr [ %i.abd, %bb.dj ], [ %.026.i.i308.lcssa.2, %.lr.ph721.preheader.2 ] ; 3 uses
  %i.aay = load i8, ptr %.228.i.i312718.2, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.aaz = load i8, ptr %.125.i.i313719.2, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.aba = icmp eq i8 %i.aay, %i.aaz
  br i1 %i.aba, label %bb.dj, label %.critedge.i.i316.2

bb.dj:                                            ; preds = %.lr.ph721.2
  %i.abb = add nsw i64 %.123.i.i314720.2, -1      ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.125.i.i313719.2, i64 1
  %i.abd = getelementptr inbounds nuw i8, ptr %.228.i.i312718.2, i64 1
  %.not.i.i315.2 = icmp eq i64 %i.abb, 0
  br i1 %.not.i.i315.2, label %.critedge.i.i316.2, label %.lr.ph721.2, !llvm.loop !64

.critedge.i.i316.2:                               ; preds = %.lr.ph721.2, %bb.dj, %.preheader518.2
  %.228.i.i312.lcssa.2 = phi ptr [ %.026.i.i308.lcssa.2, %.preheader518.2 ], [ %.228.i.i312718.2, %.lr.ph721.2 ], [ %scevgep915.2, %bb.dj ]
  %i.abe = ptrtoint ptr %.228.i.i312.lcssa.2 to i64
  %i.abf = ptrtoint ptr %i.aah to i64
  %i.abg = sub i64 %i.abe, %i.abf
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2: ; preds = %.critedge.i.i316.2, %bb.dh
  %.2.i.i318.2 = phi i64 [ %i.aat, %bb.dh ], [ %i.abg, %.critedge.i.i316.2 ] ; 4 uses
  %i.abh = icmp ugt i64 %.2.i.i318.2, 3
  br i1 %i.abh, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2
  %i.abi = mul i64 %.2.i.i318.2, 135
  %i.abj = trunc i64 %i.aaf to i32
  %i.abk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.abj, i1 true)
  %i.abl = xor i32 %i.abk, 31
  %.neg836.2 = mul nsw i32 %i.abl, -30
  %narrow835.2 = add nsw i32 %.neg836.2, 1920
  %i.abm = zext nneg i32 %narrow835.2 to i64
  %i.abn = add i64 %i.abi, %i.abm                 ; 2 uses
  %i.abo = icmp ult i64 %.sroa.18.7.1, %i.abn
  br i1 %i.abo, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.abp = getelementptr i8, ptr %i.va, i64 %.2.i.i318.2
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2, %bb.dg, %bb.df
  %.sroa.18.7.2 = phi i64 [ %.sroa.18.7.1, %bb.dg ], [ %i.abn, %bb.dl ], [ %.sroa.18.7.1, %bb.dk ], [ %.sroa.18.7.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2 ], [ %.sroa.18.7.1, %bb.df ] ; 5 uses
  %.sroa.12.7.2 = phi i64 [ %.sroa.12.7.1, %bb.dg ], [ %i.aaf, %bb.dl ], [ %.sroa.12.7.1, %bb.dk ], [ %.sroa.12.7.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2 ], [ %.sroa.12.7.1, %bb.df ] ; 4 uses
  %.sroa.0.7.2 = phi i64 [ %.sroa.0.7.1, %bb.dg ], [ %.2.i.i318.2, %bb.dl ], [ %.sroa.0.7.1, %bb.dk ], [ %.sroa.0.7.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2 ], [ %.sroa.0.7.1, %bb.df ] ; 5 uses
  %.6103.i305.2.in = phi i8 [ %.6103.i305.1.in, %bb.dg ], [ %i.abq, %bb.dl ], [ %.6103.i305.1.in, %bb.dk ], [ %.6103.i305.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.2 ], [ %.6103.i305.1.in, %bb.df ]
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.wu
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !3, !noalias !675
  %i.abt = zext i32 %i.abs to i64                 ; 3 uses
  %i.abu = sub i64 %i.uv, %i.abt                  ; 3 uses
  %i.abv = and i64 %3, %i.abt
  %i.abw = getelementptr i8, ptr %2, i64 %i.abv   ; 5 uses
  %i.abx = getelementptr i8, ptr %i.abw, i64 %.sroa.0.7.2
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %.not.i304.3 = icmp eq i8 %.6103.i305.2.in, %i.aby
  br i1 %.not.i304.3, label %bb.dn, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340

bb.dn:                                            ; preds = %bb.dm
  %i.abz = icmp eq i64 %i.uv, %i.abt
  %i.aca = icmp ugt i64 %i.abu, %i.uw
  %i.acb = or i1 %i.abz, %i.aca
  br i1 %i.acb, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340, label %.preheader519.3, !prof !72

.preheader519.3:                                  ; preds = %bb.dn
  br i1 %i.wx, label %.lr.ph713.3, label %.preheader518.3

.lr.ph713.3:                                      ; preds = %.preheader519.3, %bb.dp
  %.022.i.i310712.3 = phi i64 [ %i.acl, %bb.dp ], [ %.0188, %.preheader519.3 ]
  %.024.i.i309711.3 = phi ptr [ %i.acj, %bb.dp ], [ %i.va, %.preheader519.3 ] ; 2 uses
  %.026.i.i308710.3 = phi ptr [ %i.ack, %bb.dp ], [ %i.abw, %.preheader519.3 ] ; 3 uses
  %.0.copyload.i129.i319.3 = load i64, ptr %.024.i.i309711.3, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.0.copyload.i128.i320.3 = load i64, ptr %.026.i.i308710.3, align 1, !alias.scope !670, !noalias !675 ; 2 uses
  %.not30.i.i321.3 = icmp eq i64 %.0.copyload.i129.i319.3, %.0.copyload.i128.i320.3
  br i1 %.not30.i.i321.3, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.lr.ph713.3
  %i.acc = xor i64 %.0.copyload.i128.i320.3, %.0.copyload.i129.i319.3
  %i.acd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.acc, i1 true)
  %i.ace = ptrtoint ptr %.026.i.i308710.3 to i64
  %i.acf = ptrtoint ptr %i.abw to i64
  %i.acg = sub i64 %i.ace, %i.acf
  %i.ach = lshr i64 %i.acd, 3
  %i.aci = add i64 %i.acg, %i.ach
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3

bb.dp:                                            ; preds = %.lr.ph713.3
  %i.acj = getelementptr inbounds nuw i8, ptr %.024.i.i309711.3, i64 8 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.026.i.i308710.3, i64 8 ; 2 uses
  %i.acl = add i64 %.022.i.i310712.3, -8          ; 3 uses
  %i.acm = icmp ugt i64 %i.acl, 7
  br i1 %i.acm, label %.lr.ph713.3, label %.preheader518.3, !llvm.loop !62

.preheader518.3:                                  ; preds = %bb.dp, %.preheader519.3
  %.026.i.i308.lcssa.3 = phi ptr [ %i.abw, %.preheader519.3 ], [ %i.ack, %bb.dp ] ; 3 uses
  %.024.i.i309.lcssa.3 = phi ptr [ %i.va, %.preheader519.3 ], [ %i.acj, %bb.dp ]
  %.022.i.i310.lcssa.3 = phi i64 [ %.0188, %.preheader519.3 ], [ %i.acl, %bb.dp ] ; 3 uses
  %.not.i.i315717.3 = icmp eq i64 %.022.i.i310.lcssa.3, 0
  br i1 %.not.i.i315717.3, label %.critedge.i.i316.3, label %.lr.ph721.preheader.3

.lr.ph721.preheader.3:                            ; preds = %.preheader518.3
  %scevgep915.3 = getelementptr i8, ptr %.026.i.i308.lcssa.3, i64 %.022.i.i310.lcssa.3
  br label %.lr.ph721.3

.lr.ph721.3:                                      ; preds = %bb.dq, %.lr.ph721.preheader.3
  %.123.i.i314720.3 = phi i64 [ %i.acq, %bb.dq ], [ %.022.i.i310.lcssa.3, %.lr.ph721.preheader.3 ]
  %.125.i.i313719.3 = phi ptr [ %i.acr, %bb.dq ], [ %.024.i.i309.lcssa.3, %.lr.ph721.preheader.3 ] ; 2 uses
  %.228.i.i312718.3 = phi ptr [ %i.acs, %bb.dq ], [ %.026.i.i308.lcssa.3, %.lr.ph721.preheader.3 ] ; 3 uses
  %i.acn = load i8, ptr %.228.i.i312718.3, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.aco = load i8, ptr %.125.i.i313719.3, align 1, !tbaa !54, !alias.scope !670, !noalias !675
  %i.acp = icmp eq i8 %i.acn, %i.aco
  br i1 %i.acp, label %bb.dq, label %.critedge.i.i316.3

bb.dq:                                            ; preds = %.lr.ph721.3
  %i.acq = add nsw i64 %.123.i.i314720.3, -1      ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.125.i.i313719.3, i64 1
  %i.acs = getelementptr inbounds nuw i8, ptr %.228.i.i312718.3, i64 1
  %.not.i.i315.3 = icmp eq i64 %i.acq, 0
  br i1 %.not.i.i315.3, label %.critedge.i.i316.3, label %.lr.ph721.3, !llvm.loop !64

.critedge.i.i316.3:                               ; preds = %.lr.ph721.3, %bb.dq, %.preheader518.3
  %.228.i.i312.lcssa.3 = phi ptr [ %.026.i.i308.lcssa.3, %.preheader518.3 ], [ %.228.i.i312718.3, %.lr.ph721.3 ], [ %scevgep915.3, %bb.dq ]
  %i.act = ptrtoint ptr %.228.i.i312.lcssa.3 to i64
  %i.acu = ptrtoint ptr %i.abw to i64
  %i.acv = sub i64 %i.act, %i.acu
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3: ; preds = %.critedge.i.i316.3, %bb.do
  %.2.i.i318.3 = phi i64 [ %i.aci, %bb.do ], [ %i.acv, %.critedge.i.i316.3 ] ; 3 uses
  %i.acw = icmp ugt i64 %.2.i.i318.3, 3
  br i1 %i.acw, label %bb.dr, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340

bb.dr:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3
  %i.acx = mul i64 %.2.i.i318.3, 135
  %i.acy = trunc i64 %i.abu to i32
  %i.acz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acy, i1 true)
  %i.ada = xor i32 %i.acz, 31
  %.neg836.3 = mul nsw i32 %i.ada, -30
  %narrow835.3 = add nsw i32 %.neg836.3, 1920
  %i.adb = zext nneg i32 %narrow835.3 to i64
  %i.adc = add i64 %i.acx, %i.adb                 ; 2 uses
  %i.add = icmp ult i64 %.sroa.18.7.2, %i.adc
  br i1 %i.add, label %bb.ds, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340

bb.ds:                                            ; preds = %bb.dr
  br label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340

_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340: ; preds = %bb.ds, %bb.dr, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3, %bb.dn, %bb.dm
  %.sroa.18.7.3 = phi i64 [ %.sroa.18.7.2, %bb.dn ], [ %i.adc, %bb.ds ], [ %.sroa.18.7.2, %bb.dr ], [ %.sroa.18.7.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3 ], [ %.sroa.18.7.2, %bb.dm ] ; 3 uses
  %.sroa.12.7.3 = phi i64 [ %.sroa.12.7.2, %bb.dn ], [ %i.abu, %bb.ds ], [ %.sroa.12.7.2, %bb.dr ], [ %.sroa.12.7.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3 ], [ %.sroa.12.7.2, %bb.dm ] ; 3 uses
  %.sroa.0.7.3 = phi i64 [ %.sroa.0.7.2, %bb.dn ], [ %.2.i.i318.3, %bb.ds ], [ %.sroa.0.7.2, %bb.dr ], [ %.sroa.0.7.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i317.3 ], [ %.sroa.0.7.2, %bb.dm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6, !noalias !679
  %i.ade = trunc i64 %i.uv to i32                 ; 2 uses
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ww
  store i32 %i.ade, ptr %i.adf, align 4, !tbaa !3, !noalias !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.adg = and i64 %i.uv, 3
  %.not.i359 = icmp ne i64 %i.adg, 0
  %i.adh = icmp ult i64 %.0188, 32
  %or.cond66.i360 = or i1 %.not.i359, %i.adh
  br i1 %or.cond66.i360, label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit381, label %bb.dt

bb.dt:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340
  %i.adi = load i64, ptr %i.ad, align 8, !tbaa !647, !alias.scope !680, !noalias !685 ; 2 uses
  %.not64.i362748 = icmp ugt i64 %i.adi, %i.uv
  br i1 %.not64.i362748, label %bb.ed, label %.lr.ph754

.lr.ph754:                                        ; preds = %bb.dt
  %i.adj = load i32, ptr %i.ae, align 4, !tbaa !651, !alias.scope !680, !noalias !685
  %i.adk = load i32, ptr %i.af, align 8, !tbaa !652, !alias.scope !680, !noalias !685
  %.promoted759 = load i32, ptr %i.ac, align 8, !tbaa !653, !alias.scope !680, !noalias !685
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph754, %bb.ec
  %i.adl = phi i32 [ %.promoted759, %.lr.ph754 ], [ %i.adz, %bb.ec ] ; 2 uses
  %.0.i361752 = phi i64 [ %i.adi, %.lr.ph754 ], [ %i.afp, %bb.ec ] ; 5 uses
  %.sroa.0.8751 = phi i64 [ %.sroa.0.7.3, %.lr.ph754 ], [ %.sroa.0.9, %bb.ec ] ; 6 uses
  %.sroa.12.8750 = phi i64 [ %.sroa.12.7.3, %.lr.ph754 ], [ %.sroa.12.9, %bb.ec ] ; 5 uses
  %.sroa.18.8749 = phi i64 [ %.sroa.18.7.3, %.lr.ph754 ], [ %.sroa.18.9, %bb.ec ] ; 6 uses
  %i.adm = and i32 %i.adl, 1073741823             ; 2 uses
  %i.adn = and i64 %.0.i361752, %3
  %i.ado = getelementptr inbounds nuw i8, ptr %2, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !54, !alias.scope !683, !noalias !687
  %i.adq = add i64 %.0.i361752, 32
  %i.adr = and i64 %i.adq, %3
  %i.ads = getelementptr inbounds nuw i8, ptr %2, i64 %i.adr
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !54, !alias.scope !683, !noalias !687
  %i.adu = mul i32 %i.adj, %i.adl
  %i.adv = zext i8 %i.adt to i32
  %i.adw = add nuw nsw i32 %i.adv, 1
  %i.adx = add i32 %i.adw, %i.adu
  %i.ady = zext i8 %i.adp to i32
  %.neg.i387 = xor i32 %i.ady, -1
  %.neg5.i388 = mul i32 %i.adk, %.neg.i387
  %i.adz = add i32 %i.adx, %.neg5.i388            ; 2 uses
  %i.aea = icmp samesign ult i32 %i.adm, 16777216
  br i1 %i.aea, label %bb.dv, label %bb.ec

bb.dv:                                            ; preds = %bb.du
  %i.aeb = load ptr, ptr %i.ag, align 8, !tbaa !655, !alias.scope !680, !noalias !685
  %i.aec = zext nneg i32 %i.adm to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %i.aec ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !3, !noalias !687 ; 3 uses
  %i.aef = zext i32 %i.aee to i64
  %i.aeg = trunc i64 %.0.i361752 to i32
  store i32 %i.aeg, ptr %i.aed, align 4, !tbaa !3, !noalias !687
  %i.aeh = icmp eq i64 %.0.i361752, %i.uv
  %i.aei = icmp ne i32 %i.aee, -1
  %or.cond.i363 = select i1 %i.aeh, i1 %i.aei, i1 false
  br i1 %or.cond.i363, label %bb.dw, label %bb.ec

bb.dw:                                            ; preds = %bb.dv
  %i.aej = sub i32 %i.ade, %i.aee                 ; 2 uses
  %i.aek = zext i32 %i.aej to i64                 ; 2 uses
  %.not65.i364 = icmp ult i64 %i.uw, %i.aek
  br i1 %.not65.i364, label %bb.ec, label %.lr.ph736.preheader

.lr.ph736.preheader:                              ; preds = %bb.dw
  %i.ael = and i64 %3, %i.aef
  %i.aem = getelementptr inbounds nuw i8, ptr %2, i64 %i.ael ; 3 uses
  br label %.lr.ph736

.preheader517:                                    ; preds = %bb.dy
  %.not.i.i372740 = icmp eq i64 %i.aew, 0
  br i1 %.not.i.i372740, label %.critedge.i.i373, label %.lr.ph744.preheader

.lr.ph744.preheader:                              ; preds = %.preheader517
  %scevgep917 = getelementptr i8, ptr %.026.i.i365732, i64 %.022.i.i367734
  br label %.lr.ph744

.lr.ph736:                                        ; preds = %.lr.ph736.preheader, %bb.dy
  %.022.i.i367734 = phi i64 [ %i.aew, %bb.dy ], [ %.0188, %.lr.ph736.preheader ] ; 2 uses
  %.024.i.i366733 = phi ptr [ %i.aeu, %bb.dy ], [ %i.va, %.lr.ph736.preheader ] ; 2 uses
  %.026.i.i365732 = phi ptr [ %i.aev, %bb.dy ], [ %i.aem, %.lr.ph736.preheader ] ; 4 uses
  %.0.copyload.i67.i376 = load i64, ptr %.024.i.i366733, align 1, !alias.scope !683, !noalias !687 ; 2 uses
  %.0.copyload.i.i377 = load i64, ptr %.026.i.i365732, align 1, !alias.scope !683, !noalias !687 ; 2 uses
  %.not30.i.i378 = icmp eq i64 %.0.copyload.i67.i376, %.0.copyload.i.i377
  br i1 %.not30.i.i378, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph736
  %i.aen = xor i64 %.0.copyload.i.i377, %.0.copyload.i67.i376
  %i.aeo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aen, i1 true)
  %i.aep = ptrtoint ptr %.026.i.i365732 to i64
  %i.aeq = ptrtoint ptr %i.aem to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  %i.aes = lshr i64 %i.aeo, 3
  %i.aet = add i64 %i.aer, %i.aes
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374

bb.dy:                                            ; preds = %.lr.ph736
  %i.aeu = getelementptr inbounds nuw i8, ptr %.024.i.i366733, i64 8 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.026.i.i365732, i64 8 ; 3 uses
  %i.aew = add i64 %.022.i.i367734, -8            ; 4 uses
  %i.aex = icmp ugt i64 %i.aew, 7
  br i1 %i.aex, label %.lr.ph736, label %.preheader517, !llvm.loop !62

.lr.ph744:                                        ; preds = %.lr.ph744.preheader, %bb.dz
  %.123.i.i371743 = phi i64 [ %i.afb, %bb.dz ], [ %i.aew, %.lr.ph744.preheader ]
  %.125.i.i370742 = phi ptr [ %i.afc, %bb.dz ], [ %i.aeu, %.lr.ph744.preheader ] ; 2 uses
  %.228.i.i369741 = phi ptr [ %i.afd, %bb.dz ], [ %i.aev, %.lr.ph744.preheader ] ; 3 uses
  %i.aey = load i8, ptr %.228.i.i369741, align 1, !tbaa !54, !alias.scope !683, !noalias !687
  %i.aez = load i8, ptr %.125.i.i370742, align 1, !tbaa !54, !alias.scope !683, !noalias !687
  %i.afa = icmp eq i8 %i.aey, %i.aez
  br i1 %i.afa, label %bb.dz, label %.critedge.i.i373

bb.dz:                                            ; preds = %.lr.ph744
  %i.afb = add nsw i64 %.123.i.i371743, -1        ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %.125.i.i370742, i64 1
  %i.afd = getelementptr inbounds nuw i8, ptr %.228.i.i369741, i64 1
  %.not.i.i372 = icmp eq i64 %i.afb, 0
  br i1 %.not.i.i372, label %.critedge.i.i373, label %.lr.ph744, !llvm.loop !64

.critedge.i.i373:                                 ; preds = %bb.dz, %.lr.ph744, %.preheader517
  %.228.i.i369.lcssa = phi ptr [ %i.aev, %.preheader517 ], [ %.228.i.i369741, %.lr.ph744 ], [ %scevgep917, %bb.dz ]
  %i.afe = ptrtoint ptr %.228.i.i369.lcssa to i64
  %i.aff = ptrtoint ptr %i.aem to i64
  %i.afg = sub i64 %i.afe, %i.aff
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374: ; preds = %bb.dx, %.critedge.i.i373
  %.2.i.i375 = phi i64 [ %i.aet, %bb.dx ], [ %i.afg, %.critedge.i.i373 ] ; 4 uses
  %i.afh = icmp ugt i64 %.2.i.i375, 3
  %i.afi = icmp ugt i64 %.2.i.i375, %.sroa.0.8751
  %or.cond492 = select i1 %i.afh, i1 %i.afi, i1 false
  br i1 %or.cond492, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374
  %i.afj = mul i64 %.2.i.i375, 135
  %i.afk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aej, i1 true)
  %i.afl = xor i32 %i.afk, 31
  %.neg838 = mul nsw i32 %i.afl, -30
  %narrow837 = add nsw i32 %.neg838, 1920
  %i.afm = zext nneg i32 %narrow837 to i64
  %i.afn = add i64 %i.afj, %i.afm                 ; 2 uses
  %i.afo = icmp ugt i64 %i.afn, %.sroa.18.8749
  br i1 %i.afo, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374, %bb.dw, %bb.dv, %bb.du
  %.sroa.18.9 = phi i64 [ %.sroa.18.8749, %bb.dw ], [ %i.afn, %bb.eb ], [ %.sroa.18.8749, %bb.ea ], [ %.sroa.18.8749, %bb.du ], [ %.sroa.18.8749, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374 ], [ %.sroa.18.8749, %bb.dv ] ; 2 uses
  %.sroa.12.9 = phi i64 [ %.sroa.12.8750, %bb.dw ], [ %i.aek, %bb.eb ], [ %.sroa.12.8750, %bb.ea ], [ %.sroa.12.8750, %bb.du ], [ %.sroa.12.8750, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374 ], [ %.sroa.12.8750, %bb.dv ] ; 2 uses
  %.sroa.0.9 = phi i64 [ %.sroa.0.8751, %bb.dw ], [ %.2.i.i375, %bb.eb ], [ %.sroa.0.8751, %bb.ea ], [ %.sroa.0.8751, %bb.du ], [ %.sroa.0.8751, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i374 ], [ %.sroa.0.8751, %bb.dv ] ; 2 uses
  %i.afp = add i64 %.0.i361752, 4                 ; 2 uses
  %.not64.i362 = icmp ugt i64 %i.afp, %i.uv
  br i1 %.not64.i362, label %._crit_edge755, label %bb.du, !llvm.loop !656

._crit_edge755:                                   ; preds = %bb.ec
  store i32 %i.adz, ptr %i.ac, align 8, !tbaa !653, !alias.scope !680, !noalias !685
  br label %bb.ed

bb.ed:                                            ; preds = %._crit_edge755, %bb.dt
  %.sroa.18.8.lcssa = phi i64 [ %.sroa.18.9, %._crit_edge755 ], [ %.sroa.18.7.3, %bb.dt ]
  %.sroa.12.8.lcssa = phi i64 [ %.sroa.12.9, %._crit_edge755 ], [ %.sroa.12.7.3, %bb.dt ]
  %.sroa.0.8.lcssa = phi i64 [ %.sroa.0.9, %._crit_edge755 ], [ %.sroa.0.7.3, %bb.dt ]
  %i.afq = add i64 %.1195, 5
  store i64 %i.afq, ptr %i.ad, align 8, !tbaa !647, !alias.scope !680, !noalias !685
  br label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit381

_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit381: ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340, %bb.ed
  %.sroa.18.10 = phi i64 [ %.sroa.18.7.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340 ], [ %.sroa.18.8.lcssa, %bb.ed ] ; 2 uses
  %.sroa.12.10 = phi i64 [ %.sroa.12.7.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340 ], [ %.sroa.12.8.lcssa, %bb.ed ] ; 2 uses
  %.sroa.0.10 = phi i64 [ %.sroa.0.7.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit340 ], [ %.sroa.0.8.lcssa, %bb.ed ] ; 2 uses
  %i.afr = add i64 %i.uy, %i.lp
  br i1 %.not, label %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit, label %.lr.ph814

.lr.ph814:                                        ; preds = %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit381
  %.0.copyload.i165.i218 = load i64, ptr %i.va, align 1, !alias.scope !688, !noalias !691
  %i.afs = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !694, !noalias !695
  %i.aft = sext i32 %i.afs to i64                 ; 4 uses
  %i.afu = load i32, ptr %i.ak, align 4, !tbaa !3, !alias.scope !694, !noalias !695
  %i.afv = sext i32 %i.afu to i64                 ; 4 uses
  %i.afw = load i32, ptr %i.al, align 4, !tbaa !3, !alias.scope !694, !noalias !695
  %i.afx = sext i32 %i.afw to i64                 ; 4 uses
  %i.afy = load i32, ptr %i.am, align 4, !tbaa !3, !alias.scope !694, !noalias !695
  %i.afz = sext i32 %i.afy to i64                 ; 4 uses
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph814, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit272
  %.0.i813 = phi i64 [ 0, %.lr.ph814 ], [ %i.aoo, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit272 ] ; 3 uses
  %.sroa.0.0812 = phi i64 [ %.sroa.0.10, %.lr.ph814 ], [ %.sroa.0.2.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit272 ] ; 7 uses
  %.sroa.12.0811 = phi i64 [ %.sroa.12.10, %.lr.ph814 ], [ %.sroa.12.2.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit272 ] ; 3 uses
  %.sroa.18.0810 = phi i64 [ %.sroa.18.10, %.lr.ph814 ], [ %.sroa.18.2.lcssa, %_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit272 ] ; 4 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0.i813
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !100, !noalias !696 ; 7 uses
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0.i813
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !30, !noalias !696
  %i.age = sub i64 %i.afr, %i.agd                 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
end_hunk_3
begin_hunk_4_@_ZL27CreateBackwardReferencesNH2mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  br i1 %i.ww, label %.lr.ph457, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit

.lr.ph457:                                        ; preds = %bb.bx, %.lr.ph457
  %.5456 = phi i64 [ %i.xd, %.lr.ph457 ], [ %i.wd, %bb.bx ]
  %.5183455 = phi i64 [ %i.xe, %.lr.ph457 ], [ %i.we, %bb.bx ] ; 3 uses
  %i.wx = and i64 %.5183455, %3
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 %i.wx
  %.val265 = load i64, ptr %i.wy, align 1
  %i.wz = mul i64 %.val265, 8922571613522624512
  %i.xa = lshr i64 %i.wz, 48
  %i.xb = trunc i64 %.5183455 to i32
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.xa
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !3, !noalias !934
  %i.xd = add i64 %.5456, 2                       ; 2 uses
  %i.xe = add i64 %.5183455, 2                    ; 3 uses
  %i.xf = icmp ult i64 %i.xe, %i.wv
  br i1 %i.xf, label %.lr.ph457, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit, !llvm.loop !937

_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit: ; preds = %.lr.ph457, %.lr.ph462, %.lr.ph517.prol.loopexit, %.lr.ph517, %bb.bx, %bb.bw, %bb.bu, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread
  %.1186 = phi ptr [ %i.ra, %bb.bu ], [ %.0185518, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %.0185518, %bb.bw ], [ %.0185518, %bb.bx ], [ %.0185518, %.lr.ph462 ], [ %i.ra, %.lr.ph517.prol.loopexit ], [ %i.ra, %.lr.ph517 ], [ %.0185518, %.lr.ph457 ] ; 2 uses
  %.6184 = phi i64 [ %i.ux, %bb.bu ], [ %i.we, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %i.we, %bb.bw ], [ %i.we, %bb.bx ], [ %i.ws, %.lr.ph462 ], [ %i.ux, %.lr.ph517.prol.loopexit ], [ %i.ux, %.lr.ph517 ], [ %i.xe, %.lr.ph457 ] ; 3 uses
  %.6 = phi i64 [ 0, %bb.bu ], [ %i.wd, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %i.wd, %bb.bw ], [ %i.wd, %bb.bx ], [ %i.wr, %.lr.ph462 ], [ 0, %.lr.ph517.prol.loopexit ], [ 0, %.lr.ph517 ], [ %i.xd, %.lr.ph457 ] ; 2 uses
  %.1174 = phi i64 [ %i.pu, %bb.bu ], [ %.0173521, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %.0173521, %bb.bw ], [ %.0173521, %bb.bx ], [ %.0173521, %.lr.ph462 ], [ %i.pu, %.lr.ph517.prol.loopexit ], [ %i.pu, %.lr.ph517 ], [ %.0173521, %.lr.ph457 ]
  %i.xg = add i64 %.6184, 8
  %i.xh = icmp ult i64 %i.xg, %i.j
  br i1 %i.xh, label %bb.b, label %._crit_edge, !llvm.loop !938

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit, %bb.a
  %.0185.lcssa = phi ptr [ %9, %bb.a ], [ %.1186, %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit ]
  %.0175.lcssa = phi i64 [ %i.i, %bb.a ], [ %.6, %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit ]
  %i.xi = sub i64 %i.j, %.0178.lcssa
  %i.xj = add i64 %i.xi, %.0175.lcssa
  store i64 %i.xj, ptr %8, align 8, !tbaa !30
  %i.xk = ptrtoint ptr %.0185.lcssa to i64
  %i.xl = ptrtoint ptr %9 to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = ashr exact i64 %i.xm, 4
  %i.xo = load i64, ptr %10, align 8, !tbaa !30
  %i.xp = add i64 %i.xo, %i.xn
  store i64 %i.xp, ptr %10, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL27CreateBackwardReferencesNH3mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add i64 %i.f, -16                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.j = load i64, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.k = add i64 %1, %0                           ; 6 uses
  %i.l = icmp ugt i64 %0, 7
  %i.m = add i64 %i.k, -7                         ; 3 uses
  %spec.select = select i1 %i.l, i64 %i.m, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.o, 9
  %i.q = select i1 %i.p, i64 64, i64 512          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = add i64 %1, 8
  %i.u = icmp ult i64 %i.t, %i.k
  br i1 %i.u, label %.thread.lr.ph, label %._crit_edge

.thread.lr.ph:                                    ; preds = %bb.a
  %i.v = add i64 %i.q, %1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !939, !alias.scope !941, !noalias !944 ; 11 uses
  %i.z = and i64 %3, 4294967295                   ; 2 uses
  %i.aa = shl nuw nsw i64 %i.q, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.thread

.thread:                                          ; preds = %.thread.lr.ph, %_ZN13duckdb_brotliL12StoreRangeH3EPNS_2H3EPKhmmm.exit
  %.0173437 = phi i64 [ %i.v, %.thread.lr.ph ], [ %.1174, %_ZN13duckdb_brotliL12StoreRangeH3EPNS_2H3EPKhmmm.exit ] ; 7 uses
  %.0175436 = phi i64 [ %i.j, %.thread.lr.ph ], [ %.6, %_ZN13duckdb_brotliL12StoreRangeH3EPNS_2H3EPKhmmm.exit ] ; 2 uses
  %.0178435 = phi i64 [ %1, %.thread.lr.ph ], [ %.6184, %_ZN13duckdb_brotliL12StoreRangeH3EPNS_2H3EPKhmmm.exit ] ; 15 uses
  %.0185434 = phi ptr [ %8, %.thread.lr.ph ], [ %.1186, %_ZN13duckdb_brotliL12StoreRangeH3EPNS_2H3EPKhmmm.exit ] ; 13 uses
  %i.ah = sub i64 %i.k, %.0178435                 ; 9 uses
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %.0178435, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.aj = and i64 %.0178435, %3
  %i.ak = getelementptr i8, ptr %2, i64 %i.aj     ; 10 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !54, !alias.scope !948, !noalias !950 ; 5 uses
  %.val251 = load i64, ptr %i.ak, align 1
  %i.am = mul i64 %.val251, 8922571613522624512
  %i.an = lshr i64 %i.am, 48                      ; 3 uses
  %i.ao = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !949, !noalias !951
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = sub i64 %.0178435, %i.ap                ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.0178435
  br i1 %i.ar, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.thread
  %i.as = and i64 %i.z, %i.aq
  %i.at = getelementptr i8, ptr %2, i64 %i.as     ; 5 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %i.av = icmp eq i8 %i.al, %i.au
  br i1 %i.av, label %.preheader335, label %bb.h

.preheader335:                                    ; preds = %bb.b
  %i.aw = icmp ugt i64 %i.ah, 7
  br i1 %i.aw, label %.lr.ph, label %.preheader334

.preheader334:                                    ; preds = %bb.d, %.preheader335
  %.026.i113.i231.lcssa = phi ptr [ %i.at, %.preheader335 ], [ %i.bf, %bb.d ] ; 3 uses
  %.024.i114.i232.lcssa = phi ptr [ %i.ak, %.preheader335 ], [ %i.be, %bb.d ]
  %.022.i115.i233.lcssa = phi i64 [ %i.ah, %.preheader335 ], [ %i.bg, %bb.d ] ; 3 uses
  %.not.i120.i238353 = icmp eq i64 %.022.i115.i233.lcssa, 0
  br i1 %.not.i120.i238353, label %.critedge.i121.i239, label %.lr.ph357.preheader

.lr.ph357.preheader:                              ; preds = %.preheader334
  %scevgep = getelementptr i8, ptr %.026.i113.i231.lcssa, i64 %.022.i115.i233.lcssa
  br label %.lr.ph357

.lr.ph:                                           ; preds = %.preheader335, %bb.d
  %.022.i115.i233350 = phi i64 [ %i.bg, %bb.d ], [ %i.ah, %.preheader335 ]
  %.024.i114.i232349 = phi ptr [ %i.be, %bb.d ], [ %i.ak, %.preheader335 ] ; 2 uses
  %.026.i113.i231348 = phi ptr [ %i.bf, %bb.d ], [ %i.at, %.preheader335 ] ; 3 uses
  %.0.copyload.i127.i242 = load i64, ptr %.024.i114.i232349, align 1, !alias.scope !948, !noalias !950 ; 2 uses
  %.0.copyload.i.i243 = load i64, ptr %.026.i113.i231348, align 1, !alias.scope !948, !noalias !950 ; 2 uses
  %.not30.i123.i244 = icmp eq i64 %.0.copyload.i127.i242, %.0.copyload.i.i243
  br i1 %.not30.i123.i244, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ax = xor i64 %.0.copyload.i.i243, %.0.copyload.i127.i242
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 true)
  %i.az = ptrtoint ptr %.026.i113.i231348 to i64
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr i64 %i.ay, 3
  %i.bd = add i64 %i.bb, %i.bc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240

bb.d:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.024.i114.i232349, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.026.i113.i231348, i64 8 ; 2 uses
  %i.bg = add i64 %.022.i115.i233350, -8          ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 7
  br i1 %i.bh, label %.lr.ph, label %.preheader334, !llvm.loop !62

.lr.ph357:                                        ; preds = %.lr.ph357.preheader, %bb.e
  %.123.i119.i237356 = phi i64 [ %i.bl, %bb.e ], [ %.022.i115.i233.lcssa, %.lr.ph357.preheader ]
  %.125.i118.i236355 = phi ptr [ %i.bm, %bb.e ], [ %.024.i114.i232.lcssa, %.lr.ph357.preheader ] ; 2 uses
  %.228.i117.i235354 = phi ptr [ %i.bn, %bb.e ], [ %.026.i113.i231.lcssa, %.lr.ph357.preheader ] ; 3 uses
  %i.bi = load i8, ptr %.228.i117.i235354, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %i.bj = load i8, ptr %.125.i118.i236355, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %i.bk = icmp eq i8 %i.bi, %i.bj
  br i1 %i.bk, label %bb.e, label %.critedge.i121.i239

bb.e:                                             ; preds = %.lr.ph357
  %i.bl = add nsw i64 %.123.i119.i237356, -1      ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.125.i118.i236355, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.228.i117.i235354, i64 1
  %.not.i120.i238 = icmp eq i64 %i.bl, 0
  br i1 %.not.i120.i238, label %.critedge.i121.i239, label %.lr.ph357, !llvm.loop !64

.critedge.i121.i239:                              ; preds = %bb.e, %.lr.ph357, %.preheader334
  %.228.i117.i235.lcssa = phi ptr [ %.026.i113.i231.lcssa, %.preheader334 ], [ %.228.i117.i235354, %.lr.ph357 ], [ %scevgep, %bb.e ]
  %i.bo = ptrtoint ptr %.228.i117.i235.lcssa to i64
  %i.bp = ptrtoint ptr %i.at to i64
  %i.bq = sub i64 %i.bo, %i.bp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240: ; preds = %bb.c, %.critedge.i121.i239
  %.2.i122.i241 = phi i64 [ %i.bd, %bb.c ], [ %i.bq, %.critedge.i121.i239 ] ; 4 uses
  %i.br = icmp ugt i64 %.2.i122.i241, 3
  br i1 %i.br, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240
  %i.bs = mul i64 %.2.i122.i241, 135
  %i.bt = add i64 %i.bs, 1935                     ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, 2020
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr i8, ptr %i.ak, i64 %.2.i122.i241
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240, %bb.b, %.thread
  %.sroa.21.2 = phi i64 [ %i.bt, %bb.g ], [ 2020, %bb.f ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 2020, %bb.b ], [ 2020, %.thread ] ; 5 uses
  %.sroa.13.2 = phi i64 [ %i.ap, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 0, %bb.b ], [ 0, %.thread ] ; 4 uses
  %.sroa.0254.2 = phi i64 [ %.2.i122.i241, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 0, %bb.b ], [ 0, %.thread ] ; 5 uses
  %.299.i203.in = phi i8 [ %i.bw, %bb.g ], [ %i.al, %bb.f ], [ %i.al, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ %i.al, %bb.b ], [ %i.al, %.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !952
  store i64 %i.an, ptr %i.a, align 16, !tbaa !30, !noalias !952
  %i.bx = add nuw nsw i64 %i.an, 8
  %i.by = and i64 %i.bx, 65535                    ; 2 uses
  store i64 %i.by, ptr %i.af, align 8, !tbaa !30, !noalias !952
  %11 = lshr i64 %.0178435, 3
  %i.bz = and i64 %11, 1
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  %i.ca = load i64, ptr %12, align 8, !tbaa !30, !noalias !952
  %i.cb = icmp ugt i64 %i.ah, 7                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.an
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !950
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %i.cf = sub i64 %.0178435, %i.ce                ; 3 uses
  %i.cg = and i64 %3, %i.ce
  %i.ch = getelementptr i8, ptr %2, i64 %i.cg     ; 5 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.sroa.0254.2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %.not.i211 = icmp eq i8 %.299.i203.in, %i.cj
  br i1 %.not.i211, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ck = icmp eq i64 %.0178435, %i.ce
  %i.cl = icmp ugt i64 %i.cf, %i.ai
  %i.cm = or i1 %i.ck, %i.cl
  br i1 %i.cm, label %bb.o, label %.preheader330, !prof !72

.preheader330:                                    ; preds = %bb.i
  br i1 %i.cb, label %.lr.ph365, label %.preheader329

.preheader329:                                    ; preds = %bb.k, %.preheader330
  %.026.i.i215.lcssa = phi ptr [ %i.ch, %.preheader330 ], [ %i.cv, %bb.k ] ; 3 uses
  %.024.i.i216.lcssa = phi ptr [ %i.ak, %.preheader330 ], [ %i.cu, %bb.k ]
  %.022.i.i217.lcssa = phi i64 [ %i.ah, %.preheader330 ], [ %i.cw, %bb.k ] ; 3 uses
  %.not.i.i222369 = icmp eq i64 %.022.i.i217.lcssa, 0
  br i1 %.not.i.i222369, label %.critedge.i.i223, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %.preheader329
  %scevgep472 = getelementptr i8, ptr %.026.i.i215.lcssa, i64 %.022.i.i217.lcssa
  br label %.lr.ph373

.lr.ph365:                                        ; preds = %.preheader330, %bb.k
  %.022.i.i217364 = phi i64 [ %i.cw, %bb.k ], [ %i.ah, %.preheader330 ]
  %.024.i.i216363 = phi ptr [ %i.cu, %bb.k ], [ %i.ak, %.preheader330 ] ; 2 uses
  %.026.i.i215362 = phi ptr [ %i.cv, %bb.k ], [ %i.ch, %.preheader330 ] ; 3 uses
  %.0.copyload.i129.i226 = load i64, ptr %.024.i.i216363, align 1, !alias.scope !948, !noalias !950 ; 2 uses
  %.0.copyload.i128.i227 = load i64, ptr %.026.i.i215362, align 1, !alias.scope !948, !noalias !950 ; 2 uses
  %.not30.i.i228 = icmp eq i64 %.0.copyload.i129.i226, %.0.copyload.i128.i227
  br i1 %.not30.i.i228, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph365
  %i.cn = xor i64 %.0.copyload.i128.i227, %.0.copyload.i129.i226
  %i.co = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cn, i1 true)
  %i.cp = ptrtoint ptr %.026.i.i215362 to i64
  %i.cq = ptrtoint ptr %i.ch to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = lshr i64 %i.co, 3
  %i.ct = add i64 %i.cr, %i.cs
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224

bb.k:                                             ; preds = %.lr.ph365
  %i.cu = getelementptr inbounds nuw i8, ptr %.024.i.i216363, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.026.i.i215362, i64 8 ; 2 uses
  %i.cw = add i64 %.022.i.i217364, -8             ; 3 uses
  %i.cx = icmp ugt i64 %i.cw, 7
  br i1 %i.cx, label %.lr.ph365, label %.preheader329, !llvm.loop !62

.lr.ph373:                                        ; preds = %.lr.ph373.preheader, %bb.l
  %.123.i.i221372 = phi i64 [ %i.db, %bb.l ], [ %.022.i.i217.lcssa, %.lr.ph373.preheader ]
  %.125.i.i220371 = phi ptr [ %i.dc, %bb.l ], [ %.024.i.i216.lcssa, %.lr.ph373.preheader ] ; 2 uses
  %.228.i.i219370 = phi ptr [ %i.dd, %bb.l ], [ %.026.i.i215.lcssa, %.lr.ph373.preheader ] ; 3 uses
  %i.cy = load i8, ptr %.228.i.i219370, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %i.cz = load i8, ptr %.125.i.i220371, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %i.da = icmp eq i8 %i.cy, %i.cz
  br i1 %i.da, label %bb.l, label %.critedge.i.i223

bb.l:                                             ; preds = %.lr.ph373
  %i.db = add nsw i64 %.123.i.i221372, -1         ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.125.i.i220371, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.228.i.i219370, i64 1
  %.not.i.i222 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i222, label %.critedge.i.i223, label %.lr.ph373, !llvm.loop !64

.critedge.i.i223:                                 ; preds = %bb.l, %.lr.ph373, %.preheader329
  %.228.i.i219.lcssa = phi ptr [ %.026.i.i215.lcssa, %.preheader329 ], [ %.228.i.i219370, %.lr.ph373 ], [ %scevgep472, %bb.l ]
  %i.de = ptrtoint ptr %.228.i.i219.lcssa to i64
  %i.df = ptrtoint ptr %i.ch to i64
  %i.dg = sub i64 %i.de, %i.df
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224: ; preds = %bb.j, %.critedge.i.i223
  %.2.i.i225 = phi i64 [ %i.ct, %bb.j ], [ %i.dg, %.critedge.i.i223 ] ; 4 uses
  %i.dh = icmp ugt i64 %.2.i.i225, 3
  br i1 %i.dh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224
  %i.di = mul i64 %.2.i.i225, 135
  %i.dj = trunc i64 %i.cf to i32
  %i.dk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dj, i1 true)
  %i.dl = xor i32 %i.dk, 31
  %.neg = mul nsw i32 %i.dl, -30
  %narrow = add nsw i32 %.neg, 1920
  %i.dm = zext nneg i32 %narrow to i64
  %i.dn = add i64 %i.di, %i.dm                    ; 2 uses
  %i.do = icmp ult i64 %.sroa.21.2, %i.dn
  br i1 %i.do, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dp = getelementptr i8, ptr %i.ak, i64 %.2.i.i225
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224, %bb.i, %bb.h
  %.sroa.21.4 = phi i64 [ %.sroa.21.2, %bb.i ], [ %i.dn, %bb.n ], [ %.sroa.21.2, %bb.m ], [ %.sroa.21.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.21.2, %bb.h ] ; 5 uses
  %.sroa.13.4 = phi i64 [ %.sroa.13.2, %bb.i ], [ %i.cf, %bb.n ], [ %.sroa.13.2, %bb.m ], [ %.sroa.13.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.13.2, %bb.h ] ; 4 uses
  %.sroa.0254.4 = phi i64 [ %.sroa.0254.2, %bb.i ], [ %.2.i.i225, %bb.n ], [ %.sroa.0254.2, %bb.m ], [ %.sroa.0254.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.0254.2, %bb.h ] ; 5 uses
  %.6103.i212.in = phi i8 [ %.299.i203.in, %bb.i ], [ %i.dq, %bb.n ], [ %.299.i203.in, %bb.m ], [ %.299.i203.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.299.i203.in, %bb.h ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.by
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3, !noalias !950
  %i.dt = zext i32 %i.ds to i64                   ; 3 uses
  %i.du = sub i64 %.0178435, %i.dt                ; 3 uses
  %i.dv = and i64 %3, %i.dt
  %i.dw = getelementptr i8, ptr %2, i64 %i.dv     ; 5 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 %.sroa.0254.4
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %.not.i211.1 = icmp eq i8 %.6103.i212.in, %i.dy
  br i1 %.not.i211.1, label %bb.p, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.p:                                             ; preds = %bb.o
  %i.dz = icmp eq i64 %.0178435, %i.dt
  %i.ea = icmp ugt i64 %i.du, %i.ai
  %i.eb = or i1 %i.dz, %i.ea
  br i1 %i.eb, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247, label %.preheader330.1, !prof !72

.preheader330.1:                                  ; preds = %bb.p
  br i1 %i.cb, label %.lr.ph365.1, label %.preheader329.1

.lr.ph365.1:                                      ; preds = %.preheader330.1, %bb.r
  %.022.i.i217364.1 = phi i64 [ %i.el, %bb.r ], [ %i.ah, %.preheader330.1 ]
  %.024.i.i216363.1 = phi ptr [ %i.ej, %bb.r ], [ %i.ak, %.preheader330.1 ] ; 2 uses
  %.026.i.i215362.1 = phi ptr [ %i.ek, %bb.r ], [ %i.dw, %.preheader330.1 ] ; 3 uses
  %.0.copyload.i129.i226.1 = load i64, ptr %.024.i.i216363.1, align 1, !alias.scope !948, !noalias !950 ; 2 uses
  %.0.copyload.i128.i227.1 = load i64, ptr %.026.i.i215362.1, align 1, !alias.scope !948, !noalias !950 ; 2 uses
  %.not30.i.i228.1 = icmp eq i64 %.0.copyload.i129.i226.1, %.0.copyload.i128.i227.1
  br i1 %.not30.i.i228.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph365.1
  %i.ec = xor i64 %.0.copyload.i128.i227.1, %.0.copyload.i129.i226.1
  %i.ed = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ec, i1 true)
  %i.ee = ptrtoint ptr %.026.i.i215362.1 to i64
  %i.ef = ptrtoint ptr %i.dw to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = lshr i64 %i.ed, 3
  %i.ei = add i64 %i.eg, %i.eh
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1

bb.r:                                             ; preds = %.lr.ph365.1
  %i.ej = getelementptr inbounds nuw i8, ptr %.024.i.i216363.1, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.026.i.i215362.1, i64 8 ; 2 uses
  %i.el = add i64 %.022.i.i217364.1, -8           ; 3 uses
  %i.em = icmp ugt i64 %i.el, 7
  br i1 %i.em, label %.lr.ph365.1, label %.preheader329.1, !llvm.loop !62

.preheader329.1:                                  ; preds = %bb.r, %.preheader330.1
  %.026.i.i215.lcssa.1 = phi ptr [ %i.dw, %.preheader330.1 ], [ %i.ek, %bb.r ] ; 3 uses
  %.024.i.i216.lcssa.1 = phi ptr [ %i.ak, %.preheader330.1 ], [ %i.ej, %bb.r ]
  %.022.i.i217.lcssa.1 = phi i64 [ %i.ah, %.preheader330.1 ], [ %i.el, %bb.r ] ; 3 uses
  %.not.i.i222369.1 = icmp eq i64 %.022.i.i217.lcssa.1, 0
  br i1 %.not.i.i222369.1, label %.critedge.i.i223.1, label %.lr.ph373.preheader.1

.lr.ph373.preheader.1:                            ; preds = %.preheader329.1
  %scevgep472.1 = getelementptr i8, ptr %.026.i.i215.lcssa.1, i64 %.022.i.i217.lcssa.1
  br label %.lr.ph373.1

.lr.ph373.1:                                      ; preds = %bb.s, %.lr.ph373.preheader.1
  %.123.i.i221372.1 = phi i64 [ %i.eq, %bb.s ], [ %.022.i.i217.lcssa.1, %.lr.ph373.preheader.1 ]
  %.125.i.i220371.1 = phi ptr [ %i.er, %bb.s ], [ %.024.i.i216.lcssa.1, %.lr.ph373.preheader.1 ] ; 2 uses
  %.228.i.i219370.1 = phi ptr [ %i.es, %bb.s ], [ %.026.i.i215.lcssa.1, %.lr.ph373.preheader.1 ] ; 3 uses
  %i.en = load i8, ptr %.228.i.i219370.1, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %i.eo = load i8, ptr %.125.i.i220371.1, align 1, !tbaa !54, !alias.scope !948, !noalias !950
  %i.ep = icmp eq i8 %i.en, %i.eo
  br i1 %i.ep, label %bb.s, label %.critedge.i.i223.1

bb.s:                                             ; preds = %.lr.ph373.1
  %i.eq = add nsw i64 %.123.i.i221372.1, -1       ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.125.i.i220371.1, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %.228.i.i219370.1, i64 1
  %.not.i.i222.1 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i222.1, label %.critedge.i.i223.1, label %.lr.ph373.1, !llvm.loop !64

.critedge.i.i223.1:                               ; preds = %.lr.ph373.1, %bb.s, %.preheader329.1
  %.228.i.i219.lcssa.1 = phi ptr [ %.026.i.i215.lcssa.1, %.preheader329.1 ], [ %.228.i.i219370.1, %.lr.ph373.1 ], [ %scevgep472.1, %bb.s ]
  %i.et = ptrtoint ptr %.228.i.i219.lcssa.1 to i64
  %i.eu = ptrtoint ptr %i.dw to i64
  %i.ev = sub i64 %i.et, %i.eu
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1: ; preds = %.critedge.i.i223.1, %bb.q
  %.2.i.i225.1 = phi i64 [ %i.ei, %bb.q ], [ %i.ev, %.critedge.i.i223.1 ] ; 3 uses
  %i.ew = icmp ugt i64 %.2.i.i225.1, 3
  br i1 %i.ew, label %bb.t, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.t:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1
  %i.ex = mul i64 %.2.i.i225.1, 135
  %i.ey = trunc i64 %i.du to i32
  %i.ez = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ey, i1 true)
  %i.fa = xor i32 %i.ez, 31
  %.neg.1 = mul nsw i32 %i.fa, -30
  %narrow.1 = add nsw i32 %.neg.1, 1920
  %i.fb = zext nneg i32 %narrow.1 to i64
  %i.fc = add i64 %i.ex, %i.fb                    ; 2 uses
  %i.fd = icmp ult i64 %.sroa.21.4, %i.fc
  br i1 %i.fd, label %bb.u, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.u:                                             ; preds = %bb.t
  br label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247: ; preds = %bb.u, %bb.t, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1, %bb.p, %bb.o
  %.sroa.21.4.1 = phi i64 [ %.sroa.21.4, %bb.p ], [ %i.fc, %bb.u ], [ %.sroa.21.4, %bb.t ], [ %.sroa.21.4, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1 ], [ %.sroa.21.4, %bb.o ] ; 2 uses
  %.sroa.13.4.1 = phi i64 [ %.sroa.13.4, %bb.p ], [ %i.du, %bb.u ], [ %.sroa.13.4, %bb.t ], [ %.sroa.13.4, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1 ], [ %.sroa.13.4, %bb.o ]
  %.sroa.0254.4.1 = phi i64 [ %.sroa.0254.4, %bb.p ], [ %.2.i.i225.1, %bb.u ], [ %.sroa.0254.4, %bb.t ], [ %.sroa.0254.4, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1 ], [ %.sroa.0254.4, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6, !noalias !952
  %i.fe = trunc i64 %.0178435 to i32
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ca
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3, !noalias !950
  %i.fg = icmp ugt i64 %.sroa.21.4.1, 2020
  br i1 %i.fg, label %.preheader331, label %bb.bs

.preheader331:                                    ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247
  %i.fh = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !953, !noalias !956
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader331, %bb.aq
  %.sroa.21.0 = phi i64 [ %.sroa.10.2.1, %bb.aq ], [ %.sroa.21.4.1, %.preheader331 ]
  %.sroa.13.0 = phi i64 [ %.sroa.7.2.1, %bb.aq ], [ %.sroa.13.4.1, %.preheader331 ]
  %.sroa.0254.0 = phi i64 [ %.sroa.0.2.1, %bb.aq ], [ %.sroa.0254.4.1, %.preheader331 ] ; 2 uses
  %.1179 = phi i64 [ %i.fo, %bb.aq ], [ %.0178435, %.preheader331 ] ; 3 uses
  %.1176 = phi i64 [ %i.ko, %bb.aq ], [ %.0175436, %.preheader331 ] ; 2 uses
  %.0172.in = phi i64 [ %.0172, %bb.aq ], [ %i.ah, %.preheader331 ]
  %.0165 = phi i32 [ %i.kp, %bb.aq ], [ 0, %.preheader331 ] ; 2 uses
  %.0172 = add i64 %.0172.in, -1                  ; 10 uses
  %i.fj = load i32, ptr %i.n, align 4, !tbaa !31
  %i.fk = icmp slt i32 %i.fj, 5
  %i.fl = add i64 %.sroa.0254.0, -1
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 %.0172)
  %i.fn = select i1 %i.fk, i64 %i.fm, i64 0       ; 6 uses
  %i.fo = add i64 %.1179, 1                       ; 12 uses
  %i.fp = tail call noundef i64 @llvm.umin.i64(i64 %i.fo, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %i.fq = and i64 %i.fo, %3
  %i.fr = getelementptr i8, ptr %2, i64 %i.fq     ; 10 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fn
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !54, !alias.scope !960, !noalias !961 ; 5 uses
  %.val252 = load i64, ptr %i.fr, align 1
  %i.fu = mul i64 %.val252, 8922571613522624512
  %i.fv = lshr i64 %i.fu, 48                      ; 3 uses
  %i.fw = sub i64 %i.fo, %i.fi                    ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fo
  br i1 %i.fx, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.fy = and i64 %i.z, %i.fw
  %i.fz = getelementptr i8, ptr %2, i64 %i.fy     ; 5 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.fn
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %i.gc = icmp eq i8 %i.ft, %i.gb
  br i1 %i.gc, label %.preheader328, label %bb.ac

.preheader328:                                    ; preds = %bb.w
  %i.gd = icmp ugt i64 %.0172, 7
  br i1 %i.gd, label %.lr.ph397, label %.preheader327

.preheader327:                                    ; preds = %bb.y, %.preheader328
  %.026.i113.i.lcssa = phi ptr [ %i.fz, %.preheader328 ], [ %i.gm, %bb.y ] ; 3 uses
  %.024.i114.i.lcssa = phi ptr [ %i.fr, %.preheader328 ], [ %i.gl, %bb.y ]
  %.022.i115.i.lcssa = phi i64 [ %.0172, %.preheader328 ], [ %i.gn, %bb.y ] ; 3 uses
  %.not.i120.i401 = icmp eq i64 %.022.i115.i.lcssa, 0
  br i1 %.not.i120.i401, label %.critedge.i121.i, label %.lr.ph405.preheader

.lr.ph405.preheader:                              ; preds = %.preheader327
  %scevgep473 = getelementptr i8, ptr %.026.i113.i.lcssa, i64 %.022.i115.i.lcssa
  br label %.lr.ph405

.lr.ph397:                                        ; preds = %.preheader328, %bb.y
  %.022.i115.i396 = phi i64 [ %i.gn, %bb.y ], [ %.0172, %.preheader328 ]
  %.024.i114.i395 = phi ptr [ %i.gl, %bb.y ], [ %i.fr, %.preheader328 ] ; 2 uses
  %.026.i113.i394 = phi ptr [ %i.gm, %bb.y ], [ %i.fz, %.preheader328 ] ; 3 uses
  %.0.copyload.i127.i = load i64, ptr %.024.i114.i395, align 1, !alias.scope !960, !noalias !961 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i113.i394, align 1, !alias.scope !960, !noalias !961 ; 2 uses
  %.not30.i123.i = icmp eq i64 %.0.copyload.i127.i, %.0.copyload.i.i
  br i1 %.not30.i123.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph397
  %i.ge = xor i64 %.0.copyload.i.i, %.0.copyload.i127.i
  %i.gf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ge, i1 true)
  %i.gg = ptrtoint ptr %.026.i113.i394 to i64
  %i.gh = ptrtoint ptr %i.fz to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = lshr i64 %i.gf, 3
  %i.gk = add i64 %i.gi, %i.gj
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

bb.y:                                             ; preds = %.lr.ph397
  %i.gl = getelementptr inbounds nuw i8, ptr %.024.i114.i395, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.026.i113.i394, i64 8 ; 2 uses
  %i.gn = add i64 %.022.i115.i396, -8             ; 3 uses
  %i.go = icmp ugt i64 %i.gn, 7
  br i1 %i.go, label %.lr.ph397, label %.preheader327, !llvm.loop !62

.lr.ph405:                                        ; preds = %.lr.ph405.preheader, %bb.z
  %.123.i119.i404 = phi i64 [ %i.gs, %bb.z ], [ %.022.i115.i.lcssa, %.lr.ph405.preheader ]
  %.125.i118.i403 = phi ptr [ %i.gt, %bb.z ], [ %.024.i114.i.lcssa, %.lr.ph405.preheader ] ; 2 uses
  %.228.i117.i402 = phi ptr [ %i.gu, %bb.z ], [ %.026.i113.i.lcssa, %.lr.ph405.preheader ] ; 3 uses
  %i.gp = load i8, ptr %.228.i117.i402, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %i.gq = load i8, ptr %.125.i118.i403, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %i.gr = icmp eq i8 %i.gp, %i.gq
  br i1 %i.gr, label %bb.z, label %.critedge.i121.i

bb.z:                                             ; preds = %.lr.ph405
  %i.gs = add nsw i64 %.123.i119.i404, -1         ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.125.i118.i403, i64 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.228.i117.i402, i64 1
  %.not.i120.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i120.i, label %.critedge.i121.i, label %.lr.ph405, !llvm.loop !64

.critedge.i121.i:                                 ; preds = %bb.z, %.lr.ph405, %.preheader327
  %.228.i117.i.lcssa = phi ptr [ %.026.i113.i.lcssa, %.preheader327 ], [ %.228.i117.i402, %.lr.ph405 ], [ %scevgep473, %bb.z ]
  %i.gv = ptrtoint ptr %.228.i117.i.lcssa to i64
  %i.gw = ptrtoint ptr %i.fz to i64
  %i.gx = sub i64 %i.gv, %i.gw
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i: ; preds = %bb.x, %.critedge.i121.i
  %.2.i122.i = phi i64 [ %i.gk, %bb.x ], [ %i.gx, %.critedge.i121.i ] ; 4 uses
  %i.gy = icmp ugt i64 %.2.i122.i, 3
  br i1 %i.gy, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i
  %i.gz = mul i64 %.2.i122.i, 135
  %i.ha = add i64 %i.gz, 1935                     ; 2 uses
  %i.hb = icmp ugt i64 %i.ha, 2020
  br i1 %i.hb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hc = getelementptr i8, ptr %i.fr, i64 %.2.i122.i
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i, %bb.w, %bb.v
  %.sroa.10.0 = phi i64 [ %i.ha, %bb.ab ], [ 2020, %bb.aa ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 2020, %bb.w ], [ 2020, %bb.v ] ; 5 uses
  %.sroa.7.0 = phi i64 [ %i.fi, %bb.ab ], [ 0, %bb.aa ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 0, %bb.w ], [ 0, %bb.v ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.2.i122.i, %bb.ab ], [ %i.fn, %bb.aa ], [ %i.fn, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ %i.fn, %bb.w ], [ %i.fn, %bb.v ] ; 5 uses
  %.299.i.in = phi i8 [ %i.hd, %bb.ab ], [ %i.ft, %bb.aa ], [ %i.ft, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ %i.ft, %bb.w ], [ %i.ft, %bb.v ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !962
  store i64 %i.fv, ptr %i.b, align 16, !tbaa !30, !noalias !962
  %i.he = add nuw nsw i64 %i.fv, 8
  %i.hf = and i64 %i.he, 65535                    ; 2 uses
  store i64 %i.hf, ptr %i.ag, align 8, !tbaa !30, !noalias !962
  %13 = lshr i64 %i.fo, 3
  %i.hg = and i64 %13, 1
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hg
  %i.hh = load i64, ptr %14, align 8, !tbaa !30, !noalias !962
  %i.hi = icmp ugt i64 %.0172, 7                  ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.fv
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3, !noalias !961
  %i.hl = zext i32 %i.hk to i64                   ; 3 uses
  %i.hm = sub i64 %i.fo, %i.hl                    ; 3 uses
  %i.hn = and i64 %3, %i.hl
  %i.ho = getelementptr i8, ptr %2, i64 %i.hn     ; 5 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 %.sroa.0.0
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %.not.i202 = icmp eq i8 %.299.i.in, %i.hq
  br i1 %.not.i202, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.hr = icmp eq i64 %i.fo, %i.hl
  %i.hs = icmp ugt i64 %i.hm, %i.fp
  %i.ht = or i1 %i.hr, %i.hs
  br i1 %i.ht, label %bb.aj, label %.preheader326, !prof !72

.preheader326:                                    ; preds = %bb.ad
  br i1 %i.hi, label %.lr.ph413, label %.preheader

.preheader:                                       ; preds = %bb.af, %.preheader326
  %.026.i.i.lcssa = phi ptr [ %i.ho, %.preheader326 ], [ %i.ic, %bb.af ] ; 3 uses
  %.024.i.i.lcssa = phi ptr [ %i.fr, %.preheader326 ], [ %i.ib, %bb.af ]
  %.022.i.i.lcssa = phi i64 [ %.0172, %.preheader326 ], [ %i.id, %bb.af ] ; 3 uses
  %.not.i.i417 = icmp eq i64 %.022.i.i.lcssa, 0
  br i1 %.not.i.i417, label %.critedge.i.i, label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %.preheader
  %scevgep474 = getelementptr i8, ptr %.026.i.i.lcssa, i64 %.022.i.i.lcssa
  br label %.lr.ph421

.lr.ph413:                                        ; preds = %.preheader326, %bb.af
  %.022.i.i412 = phi i64 [ %i.id, %bb.af ], [ %.0172, %.preheader326 ]
  %.024.i.i411 = phi ptr [ %i.ib, %bb.af ], [ %i.fr, %.preheader326 ] ; 2 uses
  %.026.i.i410 = phi ptr [ %i.ic, %bb.af ], [ %i.ho, %.preheader326 ] ; 3 uses
  %.0.copyload.i129.i = load i64, ptr %.024.i.i411, align 1, !alias.scope !960, !noalias !961 ; 2 uses
  %.0.copyload.i128.i = load i64, ptr %.026.i.i410, align 1, !alias.scope !960, !noalias !961 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i129.i, %.0.copyload.i128.i
  br i1 %.not30.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph413
  %i.hu = xor i64 %.0.copyload.i128.i, %.0.copyload.i129.i
  %i.hv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hu, i1 true)
  %i.hw = ptrtoint ptr %.026.i.i410 to i64
  %i.hx = ptrtoint ptr %i.ho to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = lshr i64 %i.hv, 3
  %i.ia = add i64 %i.hy, %i.hz
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

bb.af:                                            ; preds = %.lr.ph413
  %i.ib = getelementptr inbounds nuw i8, ptr %.024.i.i411, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.026.i.i410, i64 8 ; 2 uses
  %i.id = add i64 %.022.i.i412, -8                ; 3 uses
  %i.ie = icmp ugt i64 %i.id, 7
  br i1 %i.ie, label %.lr.ph413, label %.preheader, !llvm.loop !62

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %bb.ag
  %.123.i.i420 = phi i64 [ %i.ii, %bb.ag ], [ %.022.i.i.lcssa, %.lr.ph421.preheader ]
  %.125.i.i419 = phi ptr [ %i.ij, %bb.ag ], [ %.024.i.i.lcssa, %.lr.ph421.preheader ] ; 2 uses
  %.228.i.i418 = phi ptr [ %i.ik, %bb.ag ], [ %.026.i.i.lcssa, %.lr.ph421.preheader ] ; 3 uses
  %i.if = load i8, ptr %.228.i.i418, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %i.ig = load i8, ptr %.125.i.i419, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %i.ih = icmp eq i8 %i.if, %i.ig
  br i1 %i.ih, label %bb.ag, label %.critedge.i.i

bb.ag:                                            ; preds = %.lr.ph421
  %i.ii = add nsw i64 %.123.i.i420, -1            ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.125.i.i419, i64 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.228.i.i418, i64 1
  %.not.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph421, !llvm.loop !64

.critedge.i.i:                                    ; preds = %bb.ag, %.lr.ph421, %.preheader
  %.228.i.i.lcssa = phi ptr [ %.026.i.i.lcssa, %.preheader ], [ %.228.i.i418, %.lr.ph421 ], [ %scevgep474, %bb.ag ]
  %i.il = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.im = ptrtoint ptr %i.ho to i64
  %i.in = sub i64 %i.il, %i.im
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i: ; preds = %bb.ae, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.ia, %bb.ae ], [ %i.in, %.critedge.i.i ] ; 4 uses
  %i.io = icmp ugt i64 %.2.i.i, 3
  br i1 %i.io, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %i.ip = mul i64 %.2.i.i, 135
  %i.iq = trunc i64 %i.hm to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %.neg442 = mul nsw i32 %i.is, -30
  %narrow441 = add nsw i32 %.neg442, 1920
  %i.it = zext nneg i32 %narrow441 to i64
  %i.iu = add i64 %i.ip, %i.it                    ; 2 uses
  %i.iv = icmp ult i64 %.sroa.10.0, %i.iu
  br i1 %i.iv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.iw = getelementptr i8, ptr %i.fr, i64 %.2.i.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i, %bb.ad, %bb.ac
  %.sroa.10.2 = phi i64 [ %.sroa.10.0, %bb.ad ], [ %i.iu, %bb.ai ], [ %.sroa.10.0, %bb.ah ], [ %.sroa.10.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.10.0, %bb.ac ] ; 5 uses
  %.sroa.7.2 = phi i64 [ %.sroa.7.0, %bb.ad ], [ %i.hm, %bb.ai ], [ %.sroa.7.0, %bb.ah ], [ %.sroa.7.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.7.0, %bb.ac ] ; 4 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.ad ], [ %.2.i.i, %bb.ai ], [ %.sroa.0.0, %bb.ah ], [ %.sroa.0.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.0.0, %bb.ac ] ; 5 uses
  %.6103.i.in = phi i8 [ %.299.i.in, %bb.ad ], [ %i.ix, %bb.ai ], [ %.299.i.in, %bb.ah ], [ %.299.i.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.299.i.in, %bb.ac ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.hf
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !3, !noalias !961
  %i.ja = zext i32 %i.iz to i64                   ; 3 uses
  %i.jb = sub i64 %i.fo, %i.ja                    ; 3 uses
  %i.jc = and i64 %3, %i.ja
  %i.jd = getelementptr i8, ptr %2, i64 %i.jc     ; 5 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 %.sroa.0.2
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %.not.i202.1 = icmp eq i8 %.6103.i.in, %i.jf
  br i1 %.not.i202.1, label %bb.ak, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ak:                                            ; preds = %bb.aj
  %i.jg = icmp eq i64 %i.fo, %i.ja
  %i.jh = icmp ugt i64 %i.jb, %i.fp
  %i.ji = or i1 %i.jg, %i.jh
  br i1 %i.ji, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %.preheader326.1, !prof !72

.preheader326.1:                                  ; preds = %bb.ak
  br i1 %i.hi, label %.lr.ph413.1, label %.preheader.1

.lr.ph413.1:                                      ; preds = %.preheader326.1, %bb.am
  %.022.i.i412.1 = phi i64 [ %i.js, %bb.am ], [ %.0172, %.preheader326.1 ]
  %.024.i.i411.1 = phi ptr [ %i.jq, %bb.am ], [ %i.fr, %.preheader326.1 ] ; 2 uses
  %.026.i.i410.1 = phi ptr [ %i.jr, %bb.am ], [ %i.jd, %.preheader326.1 ] ; 3 uses
  %.0.copyload.i129.i.1 = load i64, ptr %.024.i.i411.1, align 1, !alias.scope !960, !noalias !961 ; 2 uses
  %.0.copyload.i128.i.1 = load i64, ptr %.026.i.i410.1, align 1, !alias.scope !960, !noalias !961 ; 2 uses
  %.not30.i.i.1 = icmp eq i64 %.0.copyload.i129.i.1, %.0.copyload.i128.i.1
  br i1 %.not30.i.i.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph413.1
  %i.jj = xor i64 %.0.copyload.i128.i.1, %.0.copyload.i129.i.1
  %i.jk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jj, i1 true)
  %i.jl = ptrtoint ptr %.026.i.i410.1 to i64
  %i.jm = ptrtoint ptr %i.jd to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = lshr i64 %i.jk, 3
  %i.jp = add i64 %i.jn, %i.jo
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

bb.am:                                            ; preds = %.lr.ph413.1
  %i.jq = getelementptr inbounds nuw i8, ptr %.024.i.i411.1, i64 8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.026.i.i410.1, i64 8 ; 2 uses
  %i.js = add i64 %.022.i.i412.1, -8              ; 3 uses
  %i.jt = icmp ugt i64 %i.js, 7
  br i1 %i.jt, label %.lr.ph413.1, label %.preheader.1, !llvm.loop !62

.preheader.1:                                     ; preds = %bb.am, %.preheader326.1
  %.026.i.i.lcssa.1 = phi ptr [ %i.jd, %.preheader326.1 ], [ %i.jr, %bb.am ] ; 3 uses
  %.024.i.i.lcssa.1 = phi ptr [ %i.fr, %.preheader326.1 ], [ %i.jq, %bb.am ]
  %.022.i.i.lcssa.1 = phi i64 [ %.0172, %.preheader326.1 ], [ %i.js, %bb.am ] ; 3 uses
  %.not.i.i417.1 = icmp eq i64 %.022.i.i.lcssa.1, 0
  br i1 %.not.i.i417.1, label %.critedge.i.i.1, label %.lr.ph421.preheader.1

.lr.ph421.preheader.1:                            ; preds = %.preheader.1
  %scevgep474.1 = getelementptr i8, ptr %.026.i.i.lcssa.1, i64 %.022.i.i.lcssa.1
  br label %.lr.ph421.1

.lr.ph421.1:                                      ; preds = %bb.an, %.lr.ph421.preheader.1
  %.123.i.i420.1 = phi i64 [ %i.jx, %bb.an ], [ %.022.i.i.lcssa.1, %.lr.ph421.preheader.1 ]
  %.125.i.i419.1 = phi ptr [ %i.jy, %bb.an ], [ %.024.i.i.lcssa.1, %.lr.ph421.preheader.1 ] ; 2 uses
  %.228.i.i418.1 = phi ptr [ %i.jz, %bb.an ], [ %.026.i.i.lcssa.1, %.lr.ph421.preheader.1 ] ; 3 uses
  %i.ju = load i8, ptr %.228.i.i418.1, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %i.jv = load i8, ptr %.125.i.i419.1, align 1, !tbaa !54, !alias.scope !960, !noalias !961
  %i.jw = icmp eq i8 %i.ju, %i.jv
  br i1 %i.jw, label %bb.an, label %.critedge.i.i.1

bb.an:                                            ; preds = %.lr.ph421.1
  %i.jx = add nsw i64 %.123.i.i420.1, -1          ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.125.i.i419.1, i64 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.228.i.i418.1, i64 1
  %.not.i.i.1 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.1, label %.critedge.i.i.1, label %.lr.ph421.1, !llvm.loop !64

.critedge.i.i.1:                                  ; preds = %.lr.ph421.1, %bb.an, %.preheader.1
  %.228.i.i.lcssa.1 = phi ptr [ %.026.i.i.lcssa.1, %.preheader.1 ], [ %.228.i.i418.1, %.lr.ph421.1 ], [ %scevgep474.1, %bb.an ]
  %i.ka = ptrtoint ptr %.228.i.i.lcssa.1 to i64
  %i.kb = ptrtoint ptr %i.jd to i64
  %i.kc = sub i64 %i.ka, %i.kb
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1: ; preds = %.critedge.i.i.1, %bb.al
  %.2.i.i.1 = phi i64 [ %i.jp, %bb.al ], [ %i.kc, %.critedge.i.i.1 ] ; 3 uses
  %i.kd = icmp ugt i64 %.2.i.i.1, 3
  br i1 %i.kd, label %bb.ao, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1
  %i.ke = mul i64 %.2.i.i.1, 135
  %i.kf = trunc i64 %i.jb to i32
  %i.kg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kf, i1 true)
  %i.kh = xor i32 %i.kg, 31
  %.neg442.1 = mul nsw i32 %i.kh, -30
  %narrow441.1 = add nsw i32 %.neg442.1, 1920
  %i.ki = zext nneg i32 %narrow441.1 to i64
  %i.kj = add i64 %i.ke, %i.ki                    ; 2 uses
  %i.kk = icmp ult i64 %.sroa.10.2, %i.kj
  br i1 %i.kk, label %bb.ap, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ap:                                            ; preds = %bb.ao
  br label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %bb.ap, %bb.ao, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1, %bb.ak, %bb.aj
  %.sroa.10.2.1 = phi i64 [ %.sroa.10.2, %bb.ak ], [ %i.kj, %bb.ap ], [ %.sroa.10.2, %bb.ao ], [ %.sroa.10.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1 ], [ %.sroa.10.2, %bb.aj ] ; 2 uses
  %.sroa.7.2.1 = phi i64 [ %.sroa.7.2, %bb.ak ], [ %i.jb, %bb.ap ], [ %.sroa.7.2, %bb.ao ], [ %.sroa.7.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1 ], [ %.sroa.7.2, %bb.aj ] ; 2 uses
  %.sroa.0.2.1 = phi i64 [ %.sroa.0.2, %bb.ak ], [ %.2.i.i.1, %bb.ap ], [ %.sroa.0.2, %bb.ao ], [ %.sroa.0.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1 ], [ %.sroa.0.2, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !962
  %i.kl = trunc i64 %i.fo to i32
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.hh
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !3, !noalias !961
  %i.kn = add i64 %.sroa.21.0, 175
  %.not196 = icmp ult i64 %.sroa.10.2.1, %i.kn
  br i1 %.not196, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.ko = add i64 %.1176, 1                       ; 2 uses
  %i.kp = add nuw nsw i32 %.0165, 1
  %i.kq = icmp samesign ult i32 %.0165, 3
  %i.kr = add i64 %.1179, 9
  %i.ks = icmp ult i64 %i.kr, %i.k
  %or.cond317 = and i1 %i.kq, %i.ks
  br i1 %or.cond317, label %bb.v, label %bb.ar, !llvm.loop !963

bb.ar:                                            ; preds = %bb.aq, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %.sroa.13.1.ph = phi i64 [ %.sroa.7.2.1, %bb.aq ], [ %.sroa.13.0, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 11 uses
  %.sroa.0254.1.ph = phi i64 [ %.sroa.0.2.1, %bb.aq ], [ %.sroa.0254.0, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 7 uses
  %.3181.ph = phi i64 [ %i.fo, %bb.aq ], [ %.1179, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 4 uses
  %.3.ph = phi i64 [ %i.ko, %bb.aq ], [ %.1176, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 10 uses
  %i.kt = shl i64 %.sroa.0254.1.ph, 1
  %i.ku = add i64 %i.kt, %i.q
  %i.kv = add i64 %i.ku, %.3181.ph                ; 3 uses
  %i.kw = add i64 %.3181.ph, %i.i
  %i.kx = tail call noundef i64 @llvm.umin.i64(i64 %i.kw, i64 %i.g)
  %i.ky = add i64 %i.kx, %i.s                     ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.13.1.ph, %i.ky
  br i1 %.not.i, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kz = add i64 %.sroa.13.1.ph, 3               ; 2 uses
  %i.la = load i32, ptr %6, align 4, !tbaa !3
  %i.lb = sext i32 %i.la to i64                   ; 2 uses
  %i.lc = sub i64 %i.kz, %i.lb                    ; 2 uses
  %i.ld = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.le = sext i32 %i.ld to i64                   ; 2 uses
  %i.lf = sub i64 %i.kz, %i.le                    ; 2 uses
  %i.lg = icmp eq i64 %.sroa.13.1.ph, %i.lb
  br i1 %i.lg, label %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread, label %bb.at

_ZL19ComputeDistanceCodemmPKi.exit.thread.thread: ; preds = %bb.as
  %i.lh = trunc i64 %.3.ph to i32                 ; 2 uses
  store i32 %i.lh, ptr %.0185434, align 4, !tbaa !146
  %i.li = trunc i64 %.sroa.0254.1.ph to i32       ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0185434, i64 4
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !148
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

bb.at:                                            ; preds = %bb.as
  %i.lk = icmp eq i64 %.sroa.13.1.ph, %i.le
  br i1 %i.lk, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ll = icmp ult i64 %i.lc, 7
  br i1 %i.ll, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.tr25.i = trunc nuw nsw i64 %i.lc to i32
  %i.lm = shl nuw nsw i32 %.tr25.i, 2
  %i.ln = lshr i32 158663784, %i.lm
  %i.lo = and i32 %i.ln, 15
  %i.lp = zext nneg i32 %i.lo to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.aw:                                            ; preds = %bb.au
  %i.lq = icmp ult i64 %i.lf, 7
  br i1 %i.lq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.tr.i = trunc nuw nsw i64 %i.lf to i32
  %i.lr = shl nuw nsw i32 %.tr.i, 2
  %i.ls = lshr i32 266017486, %i.lr
  %i.lt = and i32 %i.ls, 15
  %i.lu = zext nneg i32 %i.lt to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.ay:                                            ; preds = %bb.aw
  %i.lv = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.lw = sext i32 %i.lv to i64
  %i.lx = icmp eq i64 %.sroa.13.1.ph, %i.lw
  br i1 %i.lx, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ly = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.lz = sext i32 %i.ly to i64
  %.not319 = icmp eq i64 %.sroa.13.1.ph, %i.lz
  br i1 %.not319, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ar
  %i.ma = add i64 %.sroa.13.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.at, %bb.ax, %bb.av, %bb.ay, %bb.az, %bb.ba
  %.1.i = phi i64 [ %i.ma, %bb.ba ], [ 3, %bb.az ], [ 1, %bb.at ], [ %i.lu, %bb.ax ], [ %i.lp, %bb.av ], [ 2, %bb.ay ] ; 4 uses
  %i.mb = icmp ule i64 %.sroa.13.1.ph, %i.ky
  %i.mc = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.mb, %i.mc
  br i1 %or.cond, label %bb.bb, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.bb:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.md = load i32, ptr %i.ac, align 4, !tbaa !3
  store i32 %i.md, ptr %i.ad, align 4, !tbaa !3
  %i.me = load <2 x i32>, ptr %6, align 4, !tbaa !3
  store <2 x i32> %i.me, ptr %i.ab, align 4, !tbaa !3
  %i.mf = trunc i64 %.sroa.13.1.ph to i32
  store i32 %i.mf, ptr %6, align 4, !tbaa !3
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.bb, %_ZL19ComputeDistanceCodemmPKi.exit
  %i.mg = trunc i64 %.3.ph to i32                 ; 3 uses
  store i32 %i.mg, ptr %.0185434, align 4, !tbaa !146
  %i.mh = trunc i64 %.sroa.0254.1.ph to i32       ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0185434, i64 4
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !148
  %i.mj = load i32, ptr %i.ae, align 4, !tbaa !149
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = add nuw nsw i64 %i.mk, 16               ; 2 uses
  %i.mm = icmp ult i64 %.1.i, %i.ml
  br i1 %i.mm, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.mn = load i32, ptr %i.w, align 8, !tbaa !150 ; 2 uses
  %i.mo = zext i32 %i.mn to i64                   ; 4 uses
  %i.mp = shl nuw i64 4, %i.mo
  %i.mq = add i64 %.1.i, -16
  %i.mr = sub i64 %i.mq, %i.mk
  %i.ms = add i64 %i.mr, %i.mp                    ; 4 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mt, i1 true)
  %i.mv = sub nsw i32 30, %i.mu
  %i.mw = zext i32 %i.mv to i64                   ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.mn
  %i.mx = xor i32 %notmask.i, -1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = and i64 %i.ms, %i.my
  %i.na = lshr i64 %i.ms, %i.mw                   ; 2 uses
  %i.nb = and i64 %i.na, 1
  %i.nc = or disjoint i64 %i.nb, 2
  %i.nd = shl i64 %i.nc, %i.mw
  %i.ne = sub nsw i64 %i.mw, %i.mo                ; 2 uses
  %i.nf = shl nsw i64 %i.ne, 10
  %i.ng = shl nsw i64 %i.ne, 1
  %i.nh = or i64 %i.na, 65534
  %i.ni = add i64 %i.ng, %i.nh
  %i.nj = shl i64 %i.ni, %i.mo
  %i.nk = add nuw nsw i64 %i.mz, %i.ml
  %i.nl = add i64 %i.nk, %i.nj
  %i.nm = or i64 %i.nl, %i.nf
  %i.nn = sub i64 %i.ms, %i.nd
  %i.no = lshr i64 %i.nn, %i.mo
  %i.np = trunc i64 %i.no to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread, %bb.bc
  %i.nq = phi i32 [ %i.mh, %bb.bc ], [ %i.li, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ %i.mh, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %i.nr = phi i32 [ %i.mg, %bb.bc ], [ %i.lh, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ %i.mg, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink.in = phi i64 [ %i.nm, %bb.bc ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.np, %bb.bc ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.0185434, i64 16 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0185434, i64 14
  %i.nu = getelementptr inbounds nuw i8, ptr %.0185434, i64 8
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.nt, align 2, !tbaa !68
  store i32 %storemerge.i, ptr %i.nu, align 4, !tbaa !3
  %sext = shl i64 %.sroa.0254.1.ph, 32
  %i.nv = ashr exact i64 %sext, 32                ; 4 uses
  %i.nw = and i16 %.sink, 1023
  %i.nx = icmp eq i16 %i.nw, 0
  %i.ny = getelementptr inbounds nuw i8, ptr %.0185434, i64 12
  %i.nz = icmp ult i64 %.3.ph, 6
  br i1 %i.nz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.oa = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.be:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.ob = icmp ult i64 %.3.ph, 130
  br i1 %i.ob, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.oc = add nsw i64 %.3.ph, -2                  ; 2 uses
  %i.od = trunc nuw nsw i64 %i.oc to i32
  %i.oe = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.od, i1 true)
  %i.of = sub nuw nsw i32 30, %i.oe               ; 2 uses
  %i.og = shl nuw nsw i32 %i.of, 1
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = zext nneg i32 %i.of to i64
  %i.oj = lshr i64 %i.oc, %i.oi
  %i.ok = add nuw nsw i64 %i.oj, %i.oh
  %i.ol = trunc nuw nsw i64 %i.ok to i16
  %i.om = add nuw nsw i16 %i.ol, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.bg:                                            ; preds = %bb.be
  %i.on = icmp ult i64 %.3.ph, 2114
  br i1 %i.on, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
end_hunk_4
begin_hunk_5_@_ZL27CreateBackwardReferencesNH4mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.m = icmp ugt i64 %0, 7
  %i.n = add i64 %i.l, -7                         ; 3 uses
  %spec.select = select i1 %i.m, i64 %i.n, i64 %1
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = icmp slt i32 %i.p, 9
  %i.r = select i1 %i.q, i64 64, i64 512          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = add i64 %1, 8
  %i.v = icmp ult i64 %i.u, %i.l
  br i1 %i.v, label %.lr.ph547, label %._crit_edge

.lr.ph547:                                        ; preds = %bb.a
  %i.w = add i64 %i.r, %1
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 624 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 629 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 696 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !977, !alias.scope !979, !noalias !982 ; 16 uses
  %i.af = and i64 %3, 4294967295                  ; 2 uses
  %i.ag = add i64 %i.t, 1                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.al = shl nuw nsw i64 %i.r, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph547, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit
  %.0173546 = phi i64 [ %i.w, %.lr.ph547 ], [ %.1174, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit ] ; 7 uses
  %.0175545 = phi i64 [ %i.k, %.lr.ph547 ], [ %.6, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit ] ; 2 uses
  %.0178544 = phi i64 [ %1, %.lr.ph547 ], [ %.6184, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit ] ; 25 uses
  %.0185543 = phi ptr [ %9, %.lr.ph547 ], [ %.1186, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit ] ; 11 uses
  %i.as = sub i64 %i.l, %.0178544                 ; 14 uses
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %.0178544, i64 %i.h) ; 4 uses
  %i.au = add i64 %.0178544, %i.j
  %i.av = tail call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.h)
  %i.aw = load i32, ptr %i.x, align 8, !tbaa !53
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not194 = icmp eq i64 %.0178544, 0
  br i1 %.not194, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = add i64 %.0178544, -1
  %i.ay = and i64 %i.ax, %3
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !54  ; 2 uses
  %.not374 = icmp eq i64 %.0178544, 1
  br i1 %.not374, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = add i64 %.0178544, -2
  %i.bc = and i64 %i.bb, %3
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !54
  %i.bf = zext i8 %i.be to i64
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %i.bg = phi i8 [ %i.ba, %bb.e ], [ %i.ba, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.bh = phi i64 [ %i.bf, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.bi = zext i8 %i.bg to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bh
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !54
  %i.bn = or i8 %i.bm, %i.bk
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !54
  %i.br = zext i8 %i.bq to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.b
  %.0169 = phi i32 [ %i.br, %.thread ], [ 0, %bb.b ] ; 2 uses
  %.0166 = phi i8 [ %i.bg, %.thread ], [ 0, %bb.b ]
  %i.bs = zext nneg i32 %.0169 to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !55 ; 5 uses
  %i.bv = load i64, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.bw = and i64 %.0178544, %3
  %i.bx = getelementptr i8, ptr %2, i64 %i.bw     ; 19 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !54, !alias.scope !986, !noalias !988 ; 5 uses
  %.val276 = load i64, ptr %i.bx, align 1         ; 2 uses
  %i.bz = mul i64 %.val276, 8922571613522624512
  %i.ca = lshr i64 %i.bz, 47                      ; 5 uses
  %i.cb = load i32, ptr %7, align 4, !tbaa !3, !alias.scope !987, !noalias !989
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = sub i64 %.0178544, %i.cc                ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %.0178544
  br i1 %i.ce, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.cf = and i64 %i.af, %i.cd
  %i.cg = getelementptr i8, ptr %2, i64 %i.cf     ; 5 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.ci = icmp eq i8 %i.by, %i.ch
  br i1 %i.ci, label %.preheader397, label %bb.m

.preheader397:                                    ; preds = %bb.g
  %i.cj = icmp ugt i64 %i.as, 7
  br i1 %i.cj, label %.lr.ph, label %.preheader396

.preheader396:                                    ; preds = %bb.i, %.preheader397
  %.026.i123.i256.lcssa = phi ptr [ %i.cg, %.preheader397 ], [ %i.cs, %bb.i ] ; 3 uses
  %.024.i124.i257.lcssa = phi ptr [ %i.bx, %.preheader397 ], [ %i.cr, %bb.i ]
  %.022.i125.i258.lcssa = phi i64 [ %i.as, %.preheader397 ], [ %i.ct, %bb.i ] ; 3 uses
  %.not.i130.i263421 = icmp eq i64 %.022.i125.i258.lcssa, 0
  br i1 %.not.i130.i263421, label %.critedge.i131.i264, label %.lr.ph425.preheader

.lr.ph425.preheader:                              ; preds = %.preheader396
  %scevgep = getelementptr i8, ptr %.026.i123.i256.lcssa, i64 %.022.i125.i258.lcssa
  br label %.lr.ph425

.lr.ph:                                           ; preds = %.preheader397, %bb.i
  %.022.i125.i258418 = phi i64 [ %i.ct, %bb.i ], [ %i.as, %.preheader397 ]
  %.024.i124.i257417 = phi ptr [ %i.cr, %bb.i ], [ %i.bx, %.preheader397 ] ; 2 uses
  %.026.i123.i256416 = phi ptr [ %i.cs, %bb.i ], [ %i.cg, %.preheader397 ] ; 3 uses
  %.0.copyload.i138.i267 = load i64, ptr %.024.i124.i257417, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.0.copyload.i.i268 = load i64, ptr %.026.i123.i256416, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.not30.i133.i269 = icmp eq i64 %.0.copyload.i138.i267, %.0.copyload.i.i268
  br i1 %.not30.i133.i269, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ck = xor i64 %.0.copyload.i.i268, %.0.copyload.i138.i267
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ck, i1 true)
  %i.cm = ptrtoint ptr %.026.i123.i256416 to i64
  %i.cn = ptrtoint ptr %i.cg to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = lshr i64 %i.cl, 3
  %i.cq = add i64 %i.co, %i.cp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265

bb.i:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.024.i124.i257417, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.026.i123.i256416, i64 8 ; 2 uses
  %i.ct = add i64 %.022.i125.i258418, -8          ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, 7
  br i1 %i.cu, label %.lr.ph, label %.preheader396, !llvm.loop !62

.lr.ph425:                                        ; preds = %.lr.ph425.preheader, %bb.j
  %.123.i129.i262424 = phi i64 [ %i.cy, %bb.j ], [ %.022.i125.i258.lcssa, %.lr.ph425.preheader ]
  %.125.i128.i261423 = phi ptr [ %i.cz, %bb.j ], [ %.024.i124.i257.lcssa, %.lr.ph425.preheader ] ; 2 uses
  %.228.i127.i260422 = phi ptr [ %i.da, %bb.j ], [ %.026.i123.i256.lcssa, %.lr.ph425.preheader ] ; 3 uses
  %i.cv = load i8, ptr %.228.i127.i260422, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.cw = load i8, ptr %.125.i128.i261423, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.cx = icmp eq i8 %i.cv, %i.cw
  br i1 %i.cx, label %bb.j, label %.critedge.i131.i264

bb.j:                                             ; preds = %.lr.ph425
  %i.cy = add nsw i64 %.123.i129.i262424, -1      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.125.i128.i261423, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %.228.i127.i260422, i64 1
  %.not.i130.i263 = icmp eq i64 %i.cy, 0
  br i1 %.not.i130.i263, label %.critedge.i131.i264, label %.lr.ph425, !llvm.loop !64

.critedge.i131.i264:                              ; preds = %bb.j, %.lr.ph425, %.preheader396
  %.228.i127.i260.lcssa = phi ptr [ %.026.i123.i256.lcssa, %.preheader396 ], [ %.228.i127.i260422, %.lr.ph425 ], [ %scevgep, %bb.j ]
  %i.db = ptrtoint ptr %.228.i127.i260.lcssa to i64
  %i.dc = ptrtoint ptr %i.cg to i64
  %i.dd = sub i64 %i.db, %i.dc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265: ; preds = %bb.h, %.critedge.i131.i264
  %.2.i132.i266 = phi i64 [ %i.cq, %bb.h ], [ %i.dd, %.critedge.i131.i264 ] ; 4 uses
  %i.de = icmp ugt i64 %.2.i132.i266, 3
  br i1 %i.de, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265
  %i.df = mul i64 %.2.i132.i266, 135
  %i.dg = add i64 %i.df, 1935                     ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, 2020
  br i1 %i.dh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.di = getelementptr i8, ptr %i.bx, i64 %.2.i132.i266
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265, %bb.g, %bb.f
  %.sroa.23291.2 = phi i64 [ %i.dg, %bb.l ], [ 2020, %bb.k ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265 ], [ 2020, %bb.g ], [ 2020, %bb.f ] ; 5 uses
  %.sroa.14.2 = phi i64 [ %i.cc, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265 ], [ 0, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %.sroa.0281.2 = phi i64 [ %.2.i132.i266, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265 ], [ 0, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %.2109.i203.in = phi i8 [ %i.dj, %bb.l ], [ %i.by, %bb.k ], [ %i.by, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i265 ], [ %i.by, %bb.g ], [ %i.by, %bb.f ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !990
  store i64 %i.ca, ptr %i.a, align 16, !tbaa !30, !noalias !990
  %i.dk = add nuw nsw i64 %i.ca, 8
  %i.dl = and i64 %i.dk, 131071                   ; 2 uses
  store i64 %i.dl, ptr %i.am, align 8, !tbaa !30, !noalias !990
  %i.dm = add nuw nsw i64 %i.ca, 16
  %i.dn = and i64 %i.dm, 131071                   ; 2 uses
  store i64 %i.dn, ptr %i.an, align 16, !tbaa !30, !noalias !990
  %i.do = add nuw nsw i64 %i.ca, 24
  %i.dp = and i64 %i.do, 131071                   ; 2 uses
  store i64 %i.dp, ptr %i.ao, align 8, !tbaa !30, !noalias !990
  %12 = lshr i64 %.0178544, 3
  %i.dq = and i64 %12, 3
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dq
  %i.dr = load i64, ptr %13, align 8, !tbaa !30, !noalias !990 ; 2 uses
  %i.ds = icmp ugt i64 %i.as, 7                   ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ca
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3, !noalias !988
  %i.dv = zext i32 %i.du to i64                   ; 3 uses
  %i.dw = sub i64 %.0178544, %i.dv                ; 3 uses
  %i.dx = and i64 %3, %i.dv
  %i.dy = getelementptr i8, ptr %2, i64 %i.dx     ; 5 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 %.sroa.0281.2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %.not.i236 = icmp eq i8 %.2109.i203.in, %i.ea
  br i1 %.not.i236, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.eb = icmp eq i64 %.0178544, %i.dv
  %i.ec = icmp ugt i64 %i.dw, %i.at
  %i.ed = or i1 %i.eb, %i.ec
  br i1 %i.ed, label %bb.t, label %.preheader392, !prof !72

.preheader392:                                    ; preds = %bb.n
  br i1 %i.ds, label %.lr.ph433, label %.preheader391

.preheader391:                                    ; preds = %bb.p, %.preheader392
  %.026.i.i240.lcssa = phi ptr [ %i.dy, %.preheader392 ], [ %i.em, %bb.p ] ; 3 uses
  %.024.i.i241.lcssa = phi ptr [ %i.bx, %.preheader392 ], [ %i.el, %bb.p ]
  %.022.i.i242.lcssa = phi i64 [ %i.as, %.preheader392 ], [ %i.en, %bb.p ] ; 3 uses
  %.not.i.i247437 = icmp eq i64 %.022.i.i242.lcssa, 0
  br i1 %.not.i.i247437, label %.critedge.i.i248, label %.lr.ph441.preheader

.lr.ph441.preheader:                              ; preds = %.preheader391
  %scevgep595 = getelementptr i8, ptr %.026.i.i240.lcssa, i64 %.022.i.i242.lcssa
  br label %.lr.ph441

.lr.ph433:                                        ; preds = %.preheader392, %bb.p
  %.022.i.i242432 = phi i64 [ %i.en, %bb.p ], [ %i.as, %.preheader392 ]
  %.024.i.i241431 = phi ptr [ %i.el, %bb.p ], [ %i.bx, %.preheader392 ] ; 2 uses
  %.026.i.i240430 = phi ptr [ %i.em, %bb.p ], [ %i.dy, %.preheader392 ] ; 3 uses
  %.0.copyload.i140.i251 = load i64, ptr %.024.i.i241431, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.0.copyload.i139.i252 = load i64, ptr %.026.i.i240430, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.not30.i.i253 = icmp eq i64 %.0.copyload.i140.i251, %.0.copyload.i139.i252
  br i1 %.not30.i.i253, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph433
  %i.ee = xor i64 %.0.copyload.i139.i252, %.0.copyload.i140.i251
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ee, i1 true)
  %i.eg = ptrtoint ptr %.026.i.i240430 to i64
  %i.eh = ptrtoint ptr %i.dy to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = lshr i64 %i.ef, 3
  %i.ek = add i64 %i.ei, %i.ej
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249

bb.p:                                             ; preds = %.lr.ph433
  %i.el = getelementptr inbounds nuw i8, ptr %.024.i.i241431, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.026.i.i240430, i64 8 ; 2 uses
  %i.en = add i64 %.022.i.i242432, -8             ; 3 uses
  %i.eo = icmp ugt i64 %i.en, 7
  br i1 %i.eo, label %.lr.ph433, label %.preheader391, !llvm.loop !62

.lr.ph441:                                        ; preds = %.lr.ph441.preheader, %bb.q
  %.123.i.i246440 = phi i64 [ %i.es, %bb.q ], [ %.022.i.i242.lcssa, %.lr.ph441.preheader ]
  %.125.i.i245439 = phi ptr [ %i.et, %bb.q ], [ %.024.i.i241.lcssa, %.lr.ph441.preheader ] ; 2 uses
  %.228.i.i244438 = phi ptr [ %i.eu, %bb.q ], [ %.026.i.i240.lcssa, %.lr.ph441.preheader ] ; 3 uses
  %i.ep = load i8, ptr %.228.i.i244438, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.eq = load i8, ptr %.125.i.i245439, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.er = icmp eq i8 %i.ep, %i.eq
  br i1 %i.er, label %bb.q, label %.critedge.i.i248

bb.q:                                             ; preds = %.lr.ph441
  %i.es = add nsw i64 %.123.i.i246440, -1         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.125.i.i245439, i64 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.228.i.i244438, i64 1
  %.not.i.i247 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i247, label %.critedge.i.i248, label %.lr.ph441, !llvm.loop !64

.critedge.i.i248:                                 ; preds = %bb.q, %.lr.ph441, %.preheader391
  %.228.i.i244.lcssa = phi ptr [ %.026.i.i240.lcssa, %.preheader391 ], [ %.228.i.i244438, %.lr.ph441 ], [ %scevgep595, %bb.q ]
  %i.ev = ptrtoint ptr %.228.i.i244.lcssa to i64
  %i.ew = ptrtoint ptr %i.dy to i64
  %i.ex = sub i64 %i.ev, %i.ew
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249: ; preds = %bb.o, %.critedge.i.i248
  %.2.i.i250 = phi i64 [ %i.ek, %bb.o ], [ %i.ex, %.critedge.i.i248 ] ; 4 uses
  %i.ey = icmp ugt i64 %.2.i.i250, 3
  br i1 %i.ey, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249
  %i.ez = mul i64 %.2.i.i250, 135
  %i.fa = trunc i64 %i.dw to i32
  %i.fb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fa, i1 true)
  %i.fc = xor i32 %i.fb, 31
  %.neg = mul nsw i32 %i.fc, -30
  %narrow551 = add nsw i32 %.neg, 1920
  %i.fd = zext nneg i32 %narrow551 to i64
  %i.fe = add i64 %i.ez, %i.fd                    ; 2 uses
  %i.ff = icmp ult i64 %.sroa.23291.2, %i.fe
  br i1 %i.ff, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fg = getelementptr i8, ptr %i.bx, i64 %.2.i.i250
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249, %bb.n, %bb.m
  %.sroa.23291.8 = phi i64 [ %.sroa.23291.2, %bb.n ], [ %i.fe, %bb.s ], [ %.sroa.23291.2, %bb.r ], [ %.sroa.23291.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249 ], [ %.sroa.23291.2, %bb.m ] ; 5 uses
  %.sroa.14.8 = phi i64 [ %.sroa.14.2, %bb.n ], [ %i.dw, %bb.s ], [ %.sroa.14.2, %bb.r ], [ %.sroa.14.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249 ], [ %.sroa.14.2, %bb.m ] ; 4 uses
  %.sroa.0281.8 = phi i64 [ %.sroa.0281.2, %bb.n ], [ %.2.i.i250, %bb.s ], [ %.sroa.0281.2, %bb.r ], [ %.sroa.0281.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249 ], [ %.sroa.0281.2, %bb.m ] ; 5 uses
  %.6113.i237.in = phi i8 [ %.2109.i203.in, %bb.n ], [ %i.fh, %bb.s ], [ %.2109.i203.in, %bb.r ], [ %.2109.i203.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249 ], [ %.2109.i203.in, %bb.m ] ; 5 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dl
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3, !noalias !988
  %i.fk = zext i32 %i.fj to i64                   ; 3 uses
  %i.fl = sub i64 %.0178544, %i.fk                ; 3 uses
  %i.fm = and i64 %3, %i.fk
  %i.fn = getelementptr i8, ptr %2, i64 %i.fm     ; 5 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 %.sroa.0281.8
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %.not.i236.1 = icmp eq i8 %.6113.i237.in, %i.fp
  br i1 %.not.i236.1, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.fq = icmp eq i64 %.0178544, %i.fk
  %i.fr = icmp ugt i64 %i.fl, %i.at
  %i.fs = or i1 %i.fq, %i.fr
  br i1 %i.fs, label %bb.aa, label %.preheader392.1, !prof !72

.preheader392.1:                                  ; preds = %bb.u
  br i1 %i.ds, label %.lr.ph433.1, label %.preheader391.1

.lr.ph433.1:                                      ; preds = %.preheader392.1, %bb.w
  %.022.i.i242432.1 = phi i64 [ %i.gc, %bb.w ], [ %i.as, %.preheader392.1 ]
  %.024.i.i241431.1 = phi ptr [ %i.ga, %bb.w ], [ %i.bx, %.preheader392.1 ] ; 2 uses
  %.026.i.i240430.1 = phi ptr [ %i.gb, %bb.w ], [ %i.fn, %.preheader392.1 ] ; 3 uses
  %.0.copyload.i140.i251.1 = load i64, ptr %.024.i.i241431.1, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.0.copyload.i139.i252.1 = load i64, ptr %.026.i.i240430.1, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.not30.i.i253.1 = icmp eq i64 %.0.copyload.i140.i251.1, %.0.copyload.i139.i252.1
  br i1 %.not30.i.i253.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph433.1
  %i.ft = xor i64 %.0.copyload.i139.i252.1, %.0.copyload.i140.i251.1
  %i.fu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ft, i1 true)
  %i.fv = ptrtoint ptr %.026.i.i240430.1 to i64
  %i.fw = ptrtoint ptr %i.fn to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr i64 %i.fu, 3
  %i.fz = add i64 %i.fx, %i.fy
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.1

bb.w:                                             ; preds = %.lr.ph433.1
  %i.ga = getelementptr inbounds nuw i8, ptr %.024.i.i241431.1, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.026.i.i240430.1, i64 8 ; 2 uses
  %i.gc = add i64 %.022.i.i242432.1, -8           ; 3 uses
  %i.gd = icmp ugt i64 %i.gc, 7
  br i1 %i.gd, label %.lr.ph433.1, label %.preheader391.1, !llvm.loop !62

.preheader391.1:                                  ; preds = %bb.w, %.preheader392.1
  %.026.i.i240.lcssa.1 = phi ptr [ %i.fn, %.preheader392.1 ], [ %i.gb, %bb.w ] ; 3 uses
  %.024.i.i241.lcssa.1 = phi ptr [ %i.bx, %.preheader392.1 ], [ %i.ga, %bb.w ]
  %.022.i.i242.lcssa.1 = phi i64 [ %i.as, %.preheader392.1 ], [ %i.gc, %bb.w ] ; 3 uses
  %.not.i.i247437.1 = icmp eq i64 %.022.i.i242.lcssa.1, 0
  br i1 %.not.i.i247437.1, label %.critedge.i.i248.1, label %.lr.ph441.preheader.1

.lr.ph441.preheader.1:                            ; preds = %.preheader391.1
  %scevgep595.1 = getelementptr i8, ptr %.026.i.i240.lcssa.1, i64 %.022.i.i242.lcssa.1
  br label %.lr.ph441.1

.lr.ph441.1:                                      ; preds = %bb.x, %.lr.ph441.preheader.1
  %.123.i.i246440.1 = phi i64 [ %i.gh, %bb.x ], [ %.022.i.i242.lcssa.1, %.lr.ph441.preheader.1 ]
  %.125.i.i245439.1 = phi ptr [ %i.gi, %bb.x ], [ %.024.i.i241.lcssa.1, %.lr.ph441.preheader.1 ] ; 2 uses
  %.228.i.i244438.1 = phi ptr [ %i.gj, %bb.x ], [ %.026.i.i240.lcssa.1, %.lr.ph441.preheader.1 ] ; 3 uses
  %i.ge = load i8, ptr %.228.i.i244438.1, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.gf = load i8, ptr %.125.i.i245439.1, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.gg = icmp eq i8 %i.ge, %i.gf
  br i1 %i.gg, label %bb.x, label %.critedge.i.i248.1

bb.x:                                             ; preds = %.lr.ph441.1
  %i.gh = add nsw i64 %.123.i.i246440.1, -1       ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.125.i.i245439.1, i64 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.228.i.i244438.1, i64 1
  %.not.i.i247.1 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i247.1, label %.critedge.i.i248.1, label %.lr.ph441.1, !llvm.loop !64

.critedge.i.i248.1:                               ; preds = %.lr.ph441.1, %bb.x, %.preheader391.1
  %.228.i.i244.lcssa.1 = phi ptr [ %.026.i.i240.lcssa.1, %.preheader391.1 ], [ %.228.i.i244438.1, %.lr.ph441.1 ], [ %scevgep595.1, %bb.x ]
  %i.gk = ptrtoint ptr %.228.i.i244.lcssa.1 to i64
  %i.gl = ptrtoint ptr %i.fn to i64
  %i.gm = sub i64 %i.gk, %i.gl
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.1: ; preds = %.critedge.i.i248.1, %bb.v
  %.2.i.i250.1 = phi i64 [ %i.fz, %bb.v ], [ %i.gm, %.critedge.i.i248.1 ] ; 4 uses
  %i.gn = icmp ugt i64 %.2.i.i250.1, 3
  br i1 %i.gn, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.1
  %i.go = mul i64 %.2.i.i250.1, 135
  %i.gp = trunc i64 %i.fl to i32
  %i.gq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gp, i1 true)
  %i.gr = xor i32 %i.gq, 31
  %.neg.1 = mul nsw i32 %i.gr, -30
  %narrow551.1 = add nsw i32 %.neg.1, 1920
end_hunk_5
begin_hunk_6_@_ZL27CreateBackwardReferencesNH4mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.hf = icmp eq i64 %.0178544, %i.gz
  %i.hg = icmp ugt i64 %i.ha, %i.at
  %i.hh = or i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ah, label %.preheader392.2, !prof !72

.preheader392.2:                                  ; preds = %bb.ab
  br i1 %i.ds, label %.lr.ph433.2, label %.preheader391.2

.lr.ph433.2:                                      ; preds = %.preheader392.2, %bb.ad
  %.022.i.i242432.2 = phi i64 [ %i.hr, %bb.ad ], [ %i.as, %.preheader392.2 ]
  %.024.i.i241431.2 = phi ptr [ %i.hp, %bb.ad ], [ %i.bx, %.preheader392.2 ] ; 2 uses
  %.026.i.i240430.2 = phi ptr [ %i.hq, %bb.ad ], [ %i.hc, %.preheader392.2 ] ; 3 uses
  %.0.copyload.i140.i251.2 = load i64, ptr %.024.i.i241431.2, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.0.copyload.i139.i252.2 = load i64, ptr %.026.i.i240430.2, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.not30.i.i253.2 = icmp eq i64 %.0.copyload.i140.i251.2, %.0.copyload.i139.i252.2
  br i1 %.not30.i.i253.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph433.2
  %i.hi = xor i64 %.0.copyload.i139.i252.2, %.0.copyload.i140.i251.2
  %i.hj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hi, i1 true)
  %i.hk = ptrtoint ptr %.026.i.i240430.2 to i64
  %i.hl = ptrtoint ptr %i.hc to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = lshr i64 %i.hj, 3
  %i.ho = add i64 %i.hm, %i.hn
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2

bb.ad:                                            ; preds = %.lr.ph433.2
  %i.hp = getelementptr inbounds nuw i8, ptr %.024.i.i241431.2, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.026.i.i240430.2, i64 8 ; 2 uses
  %i.hr = add i64 %.022.i.i242432.2, -8           ; 3 uses
  %i.hs = icmp ugt i64 %i.hr, 7
  br i1 %i.hs, label %.lr.ph433.2, label %.preheader391.2, !llvm.loop !62

.preheader391.2:                                  ; preds = %bb.ad, %.preheader392.2
  %.026.i.i240.lcssa.2 = phi ptr [ %i.hc, %.preheader392.2 ], [ %i.hq, %bb.ad ] ; 3 uses
  %.024.i.i241.lcssa.2 = phi ptr [ %i.bx, %.preheader392.2 ], [ %i.hp, %bb.ad ]
  %.022.i.i242.lcssa.2 = phi i64 [ %i.as, %.preheader392.2 ], [ %i.hr, %bb.ad ] ; 3 uses
  %.not.i.i247437.2 = icmp eq i64 %.022.i.i242.lcssa.2, 0
  br i1 %.not.i.i247437.2, label %.critedge.i.i248.2, label %.lr.ph441.preheader.2

.lr.ph441.preheader.2:                            ; preds = %.preheader391.2
  %scevgep595.2 = getelementptr i8, ptr %.026.i.i240.lcssa.2, i64 %.022.i.i242.lcssa.2
  br label %.lr.ph441.2

.lr.ph441.2:                                      ; preds = %bb.ae, %.lr.ph441.preheader.2
  %.123.i.i246440.2 = phi i64 [ %i.hw, %bb.ae ], [ %.022.i.i242.lcssa.2, %.lr.ph441.preheader.2 ]
  %.125.i.i245439.2 = phi ptr [ %i.hx, %bb.ae ], [ %.024.i.i241.lcssa.2, %.lr.ph441.preheader.2 ] ; 2 uses
  %.228.i.i244438.2 = phi ptr [ %i.hy, %bb.ae ], [ %.026.i.i240.lcssa.2, %.lr.ph441.preheader.2 ] ; 3 uses
  %i.ht = load i8, ptr %.228.i.i244438.2, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.hu = load i8, ptr %.125.i.i245439.2, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.hv = icmp eq i8 %i.ht, %i.hu
  br i1 %i.hv, label %bb.ae, label %.critedge.i.i248.2

bb.ae:                                            ; preds = %.lr.ph441.2
  %i.hw = add nsw i64 %.123.i.i246440.2, -1       ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.125.i.i245439.2, i64 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.228.i.i244438.2, i64 1
  %.not.i.i247.2 = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i247.2, label %.critedge.i.i248.2, label %.lr.ph441.2, !llvm.loop !64

.critedge.i.i248.2:                               ; preds = %.lr.ph441.2, %bb.ae, %.preheader391.2
  %.228.i.i244.lcssa.2 = phi ptr [ %.026.i.i240.lcssa.2, %.preheader391.2 ], [ %.228.i.i244438.2, %.lr.ph441.2 ], [ %scevgep595.2, %bb.ae ]
  %i.hz = ptrtoint ptr %.228.i.i244.lcssa.2 to i64
  %i.ia = ptrtoint ptr %i.hc to i64
  %i.ib = sub i64 %i.hz, %i.ia
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2: ; preds = %.critedge.i.i248.2, %bb.ac
  %.2.i.i250.2 = phi i64 [ %i.ho, %bb.ac ], [ %i.ib, %.critedge.i.i248.2 ] ; 4 uses
  %i.ic = icmp ugt i64 %.2.i.i250.2, 3
  br i1 %i.ic, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2
  %i.id = mul i64 %.2.i.i250.2, 135
  %i.ie = trunc i64 %i.ha to i32
  %i.if = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ie, i1 true)
  %i.ig = xor i32 %i.if, 31
  %.neg.2 = mul nsw i32 %i.ig, -30
  %narrow551.2 = add nsw i32 %.neg.2, 1920
  %i.ih = zext nneg i32 %narrow551.2 to i64
  %i.ii = add i64 %i.id, %i.ih                    ; 2 uses
  %i.ij = icmp ult i64 %.sroa.23291.8.1, %i.ii
  br i1 %i.ij, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ik = getelementptr i8, ptr %i.bx, i64 %.2.i.i250.2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2, %bb.ab, %bb.aa
  %.sroa.23291.8.2 = phi i64 [ %.sroa.23291.8.1, %bb.ab ], [ %i.ii, %bb.ag ], [ %.sroa.23291.8.1, %bb.af ], [ %.sroa.23291.8.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2 ], [ %.sroa.23291.8.1, %bb.aa ] ; 5 uses
  %.sroa.14.8.2 = phi i64 [ %.sroa.14.8.1, %bb.ab ], [ %i.ha, %bb.ag ], [ %.sroa.14.8.1, %bb.af ], [ %.sroa.14.8.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2 ], [ %.sroa.14.8.1, %bb.aa ] ; 4 uses
  %.sroa.0281.8.2 = phi i64 [ %.sroa.0281.8.1, %bb.ab ], [ %.2.i.i250.2, %bb.ag ], [ %.sroa.0281.8.1, %bb.af ], [ %.sroa.0281.8.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2 ], [ %.sroa.0281.8.1, %bb.aa ] ; 5 uses
  %.6113.i237.2.in = phi i8 [ %.6113.i237.1.in, %bb.ab ], [ %i.il, %bb.ag ], [ %.6113.i237.1.in, %bb.af ], [ %.6113.i237.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.2 ], [ %.6113.i237.1.in, %bb.aa ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dp
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3, !noalias !988
  %i.io = zext i32 %i.in to i64                   ; 3 uses
  %i.ip = sub i64 %.0178544, %i.io                ; 3 uses
  %i.iq = and i64 %3, %i.io
  %i.ir = getelementptr i8, ptr %2, i64 %i.iq     ; 5 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 %.sroa.0281.8.2
  %i.it = load i8, ptr %i.is, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %.not.i236.3 = icmp eq i8 %.6113.i237.2.in, %i.it
  br i1 %.not.i236.3, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.iu = icmp eq i64 %.0178544, %i.io
  %i.iv = icmp ugt i64 %i.ip, %i.at
  %i.iw = or i1 %i.iu, %i.iv
  br i1 %i.iw, label %bb.ao, label %.preheader392.3, !prof !72

.preheader392.3:                                  ; preds = %bb.ai
  br i1 %i.ds, label %.lr.ph433.3, label %.preheader391.3

.lr.ph433.3:                                      ; preds = %.preheader392.3, %bb.ak
  %.022.i.i242432.3 = phi i64 [ %i.jg, %bb.ak ], [ %i.as, %.preheader392.3 ]
  %.024.i.i241431.3 = phi ptr [ %i.je, %bb.ak ], [ %i.bx, %.preheader392.3 ] ; 2 uses
  %.026.i.i240430.3 = phi ptr [ %i.jf, %bb.ak ], [ %i.ir, %.preheader392.3 ] ; 3 uses
  %.0.copyload.i140.i251.3 = load i64, ptr %.024.i.i241431.3, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.0.copyload.i139.i252.3 = load i64, ptr %.026.i.i240430.3, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.not30.i.i253.3 = icmp eq i64 %.0.copyload.i140.i251.3, %.0.copyload.i139.i252.3
  br i1 %.not30.i.i253.3, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph433.3
  %i.ix = xor i64 %.0.copyload.i139.i252.3, %.0.copyload.i140.i251.3
  %i.iy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ix, i1 true)
  %i.iz = ptrtoint ptr %.026.i.i240430.3 to i64
  %i.ja = ptrtoint ptr %i.ir to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = lshr i64 %i.iy, 3
  %i.jd = add i64 %i.jb, %i.jc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3

bb.ak:                                            ; preds = %.lr.ph433.3
  %i.je = getelementptr inbounds nuw i8, ptr %.024.i.i241431.3, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.026.i.i240430.3, i64 8 ; 2 uses
  %i.jg = add i64 %.022.i.i242432.3, -8           ; 3 uses
  %i.jh = icmp ugt i64 %i.jg, 7
  br i1 %i.jh, label %.lr.ph433.3, label %.preheader391.3, !llvm.loop !62

.preheader391.3:                                  ; preds = %bb.ak, %.preheader392.3
  %.026.i.i240.lcssa.3 = phi ptr [ %i.ir, %.preheader392.3 ], [ %i.jf, %bb.ak ] ; 3 uses
  %.024.i.i241.lcssa.3 = phi ptr [ %i.bx, %.preheader392.3 ], [ %i.je, %bb.ak ]
  %.022.i.i242.lcssa.3 = phi i64 [ %i.as, %.preheader392.3 ], [ %i.jg, %bb.ak ] ; 3 uses
  %.not.i.i247437.3 = icmp eq i64 %.022.i.i242.lcssa.3, 0
  br i1 %.not.i.i247437.3, label %.critedge.i.i248.3, label %.lr.ph441.preheader.3

.lr.ph441.preheader.3:                            ; preds = %.preheader391.3
  %scevgep595.3 = getelementptr i8, ptr %.026.i.i240.lcssa.3, i64 %.022.i.i242.lcssa.3
  br label %.lr.ph441.3

.lr.ph441.3:                                      ; preds = %bb.al, %.lr.ph441.preheader.3
  %.123.i.i246440.3 = phi i64 [ %i.jl, %bb.al ], [ %.022.i.i242.lcssa.3, %.lr.ph441.preheader.3 ]
  %.125.i.i245439.3 = phi ptr [ %i.jm, %bb.al ], [ %.024.i.i241.lcssa.3, %.lr.ph441.preheader.3 ] ; 2 uses
  %.228.i.i244438.3 = phi ptr [ %i.jn, %bb.al ], [ %.026.i.i240.lcssa.3, %.lr.ph441.preheader.3 ] ; 3 uses
  %i.ji = load i8, ptr %.228.i.i244438.3, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.jj = load i8, ptr %.125.i.i245439.3, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.jk = icmp eq i8 %i.ji, %i.jj
  br i1 %i.jk, label %bb.al, label %.critedge.i.i248.3

bb.al:                                            ; preds = %.lr.ph441.3
  %i.jl = add nsw i64 %.123.i.i246440.3, -1       ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.125.i.i245439.3, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.228.i.i244438.3, i64 1
  %.not.i.i247.3 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i247.3, label %.critedge.i.i248.3, label %.lr.ph441.3, !llvm.loop !64

.critedge.i.i248.3:                               ; preds = %.lr.ph441.3, %bb.al, %.preheader391.3
  %.228.i.i244.lcssa.3 = phi ptr [ %.026.i.i240.lcssa.3, %.preheader391.3 ], [ %.228.i.i244438.3, %.lr.ph441.3 ], [ %scevgep595.3, %bb.al ]
  %i.jo = ptrtoint ptr %.228.i.i244.lcssa.3 to i64
  %i.jp = ptrtoint ptr %i.ir to i64
  %i.jq = sub i64 %i.jo, %i.jp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3: ; preds = %.critedge.i.i248.3, %bb.aj
  %.2.i.i250.3 = phi i64 [ %i.jd, %bb.aj ], [ %i.jq, %.critedge.i.i248.3 ] ; 3 uses
  %i.jr = icmp ugt i64 %.2.i.i250.3, 3
  br i1 %i.jr, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3
  %i.js = mul i64 %.2.i.i250.3, 135
  %i.jt = trunc i64 %i.ip to i32
  %i.ju = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jt, i1 true)
  %i.jv = xor i32 %i.ju, 31
  %.neg.3 = mul nsw i32 %i.jv, -30
  %narrow551.3 = add nsw i32 %.neg.3, 1920
  %i.jw = zext nneg i32 %narrow551.3 to i64
  %i.jx = add i64 %i.js, %i.jw                    ; 2 uses
  %i.jy = icmp ult i64 %.sroa.23291.8.2, %i.jx
  br i1 %i.jy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3, %bb.ai, %bb.ah
  %.sroa.23291.8.3 = phi i64 [ %.sroa.23291.8.2, %bb.ai ], [ %i.jx, %bb.an ], [ %.sroa.23291.8.2, %bb.am ], [ %.sroa.23291.8.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3 ], [ %.sroa.23291.8.2, %bb.ah ] ; 2 uses
  %.sroa.14.8.3 = phi i64 [ %.sroa.14.8.2, %bb.ai ], [ %i.ip, %bb.an ], [ %.sroa.14.8.2, %bb.am ], [ %.sroa.14.8.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3 ], [ %.sroa.14.8.2, %bb.ah ]
  %.sroa.0281.8.3 = phi i64 [ %.sroa.0281.8.2, %bb.ai ], [ %.2.i.i250.3, %bb.an ], [ %.sroa.0281.8.2, %bb.am ], [ %.sroa.0281.8.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i249.3 ], [ %.sroa.0281.8.2, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6, !noalias !990
  %i.jz = icmp eq i64 %.sroa.23291.8.3, 2020
  br i1 %i.jz, label %bb.ap, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit272

bb.ap:                                            ; preds = %bb.ao
  %i.ka = load ptr, ptr %i.c, align 8, !tbaa !991, !alias.scope !979, !noalias !982 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !75, !noalias !988 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 40 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !78, !noalias !988 ; 2 uses
  %i.kf = lshr i64 %i.ke, 7
  %i.kg = icmp ult i64 %i.kc, %i.kf
  br i1 %i.kg, label %.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kh = mul i64 %.val276, 506832829
  %i.ki = lshr i64 %i.kh, 17
  %i.kj = and i64 %i.ki, 32766                    ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !79, !noalias !990
  %i.km = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.kp = add i64 %i.ag, %i.av
  %i.kq = add i64 %i.ke, 1
  store i64 %i.kq, ptr %i.kd, align 8, !tbaa !78, !noalias !988
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kj
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !54, !noalias !988 ; 4 uses
  %.not22.i.i215 = icmp eq i8 %i.ks, 0
  br i1 %.not22.i.i215, label %.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kt = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ku = zext i8 %i.ks to i64                    ; 8 uses
  %i.kv = load ptr, ptr %i.kt, align 8, !tbaa !80, !noalias !990
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.kj
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !68, !noalias !988
  %i.ky = zext i16 %i.kx to i64                   ; 2 uses
  %i.kz = icmp ult i64 %i.as, %i.ku
  br i1 %i.kz, label %.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.la = load ptr, ptr %i.bu, align 8, !tbaa !81, !noalias !990 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.ku
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !3, !noalias !988
  %i.le = zext i32 %i.ld to i64
  %i.lf = mul nuw nsw i64 %i.ky, %i.ku
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 168
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !82, !noalias !988
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.le ; 2 uses
  %i.lk = icmp ugt i8 %i.ks, 7
  br i1 %i.lk, label %.lr.ph455, label %.lr.ph463.preheader

.preheader390:                                    ; preds = %bb.au
  %.not.i.i.i223459 = icmp eq i64 %i.lt, 0
  br i1 %.not.i.i.i223459, label %.critedge.i.i.i224, label %.lr.ph463.preheader

.lr.ph463.preheader:                              ; preds = %bb.as, %.preheader390
  %.022.i.i.i218.lcssa695 = phi i64 [ %i.lt, %.preheader390 ], [ %i.ku, %bb.as ] ; 2 uses
  %.024.i.i.i217.lcssa694 = phi ptr [ %i.lr, %.preheader390 ], [ %i.lj, %bb.as ]
  %.026.i.i.i216.lcssa693 = phi ptr [ %i.ls, %.preheader390 ], [ %i.bx, %bb.as ] ; 2 uses
  %scevgep596 = getelementptr i8, ptr %.026.i.i.i216.lcssa693, i64 %.022.i.i.i218.lcssa695
  br label %.lr.ph463

.lr.ph455:                                        ; preds = %bb.as, %bb.au
  %.022.i.i.i218454 = phi i64 [ %i.lt, %bb.au ], [ %i.ku, %bb.as ]
  %.024.i.i.i217453 = phi ptr [ %i.lr, %bb.au ], [ %i.lj, %bb.as ] ; 2 uses
  %.026.i.i.i216452 = phi ptr [ %i.ls, %bb.au ], [ %i.bx, %bb.as ] ; 3 uses
  %.0.copyload.i44.i.i231 = load i64, ptr %.024.i.i.i217453, align 1, !noalias !988 ; 2 uses
  %.0.copyload.i.i142.i232 = load i64, ptr %.026.i.i.i216452, align 1, !alias.scope !986, !noalias !988 ; 2 uses
  %.not30.i.i.i233 = icmp eq i64 %.0.copyload.i44.i.i231, %.0.copyload.i.i142.i232
  br i1 %.not30.i.i.i233, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph455
  %i.ll = xor i64 %.0.copyload.i.i142.i232, %.0.copyload.i44.i.i231
  %i.lm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ll, i1 true)
  %i.ln = ptrtoint ptr %.026.i.i.i216452 to i64
  %i.lo = sub i64 %i.ln, %i.km
  %i.lp = lshr i64 %i.lm, 3
  %i.lq = add i64 %i.lo, %i.lp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i225

bb.au:                                            ; preds = %.lr.ph455
  %i.lr = getelementptr inbounds nuw i8, ptr %.024.i.i.i217453, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.026.i.i.i216452, i64 8 ; 3 uses
  %i.lt = add i64 %.022.i.i.i218454, -8           ; 4 uses
  %i.lu = icmp ugt i64 %i.lt, 7
  br i1 %i.lu, label %.lr.ph455, label %.preheader390, !llvm.loop !62

.lr.ph463:                                        ; preds = %.lr.ph463.preheader, %bb.av
  %.123.i.i.i222462 = phi i64 [ %i.ly, %bb.av ], [ %.022.i.i.i218.lcssa695, %.lr.ph463.preheader ]
  %.125.i.i.i221461 = phi ptr [ %i.lz, %bb.av ], [ %.024.i.i.i217.lcssa694, %.lr.ph463.preheader ] ; 2 uses
  %.228.i.i.i220460 = phi ptr [ %i.ma, %bb.av ], [ %.026.i.i.i216.lcssa693, %.lr.ph463.preheader ] ; 3 uses
  %i.lv = load i8, ptr %.228.i.i.i220460, align 1, !tbaa !54, !alias.scope !986, !noalias !988
  %i.lw = load i8, ptr %.125.i.i.i221461, align 1, !tbaa !54, !noalias !988
  %i.lx = icmp eq i8 %i.lv, %i.lw
  br i1 %i.lx, label %bb.av, label %.critedge.i.i.i224

bb.av:                                            ; preds = %.lr.ph463
  %i.ly = add nsw i64 %.123.i.i.i222462, -1       ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.125.i.i.i221461, i64 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.228.i.i.i220460, i64 1
  %.not.i.i.i223 = icmp eq i64 %i.ly, 0
  br i1 %.not.i.i.i223, label %.critedge.i.i.i224, label %.lr.ph463, !llvm.loop !64

.critedge.i.i.i224:                               ; preds = %bb.av, %.lr.ph463, %.preheader390
  %.228.i.i.i220.lcssa = phi ptr [ %i.ls, %.preheader390 ], [ %.228.i.i.i220460, %.lr.ph463 ], [ %scevgep596, %bb.av ]
  %i.mb = ptrtoint ptr %.228.i.i.i220.lcssa to i64
  %i.mc = sub i64 %i.mb, %i.km
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i225

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i225: ; preds = %bb.at, %.critedge.i.i.i224
  %.2.i.i.i226 = phi i64 [ %i.lq, %bb.at ], [ %i.mc, %.critedge.i.i.i224 ] ; 6 uses
  %i.md = load i32, ptr %i.kn, align 4, !tbaa !84, !noalias !990
  %i.me = zext i32 %i.md to i64
  %i.mf = add i64 %.2.i.i.i226, %i.me
  %i.mg = icmp ule i64 %i.mf, %i.ku
  %i.mh = icmp eq i64 %.2.i.i.i226, 0
  %or.cond.i.i227 = or i1 %i.mh, %i.mg
  br i1 %or.cond.i.i227, label %.sink.split, label %bb.aw

bb.aw:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i225
  %i.mi = sub i64 %i.ku, %.2.i.i.i226             ; 2 uses
  %i.mj = shl i64 %i.mi, 2
  %i.mk = load i64, ptr %i.ko, align 8, !tbaa !85, !noalias !990
  %i.ml = mul i64 %i.mi, 6
  %i.mm = lshr i64 %i.mk, %i.ml
  %i.mn = and i64 %i.mm, 63
  %i.mo = add i64 %i.mn, %i.mj
  %i.mp = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ku
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !54, !noalias !988
  %i.mr = zext nneg i8 %i.mq to i64
  %i.ms = shl i64 %i.mo, %i.mr
  %i.mt = add i64 %i.kp, %i.ky
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, %i.bv
  br i1 %i.mv, label %.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mw = mul i64 %.2.i.i.i226, 135
  %i.mx = add i64 %i.mw, 1920
  %i.my = trunc i64 %i.mu to i32
  %i.mz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.my, i1 true)
  %i.na = xor i32 %i.mz, 31
  %i.nb = mul nuw nsw i32 %i.na, 30
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = sub i64 %i.mx, %i.nc                    ; 2 uses
  %i.ne = icmp ult i64 %i.nd, 2020
  br i1 %i.ne, label %.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nf = zext i8 %i.ks to i32
  %i.ng = trunc i64 %.2.i.i.i226 to i32
  %i.nh = sub nsw i32 %i.nf, %i.ng
  %i.ni = add i64 %i.kc, 1
  store i64 %i.ni, ptr %i.kb, align 8, !tbaa !75, !noalias !988
  br label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit272

_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit272: ; preds = %bb.ay, %bb.ao
  %.sroa.33.6 = phi i32 [ 0, %bb.ao ], [ %i.nh, %bb.ay ]
  %.sroa.23291.9 = phi i64 [ %.sroa.23291.8.3, %bb.ao ], [ %i.nd, %bb.ay ] ; 2 uses
  %.sroa.14.9 = phi i64 [ %.sroa.14.8.3, %bb.ao ], [ %i.mu, %bb.ay ]
  %.sroa.0281.9 = phi i64 [ %.sroa.0281.8.3, %bb.ao ], [ %.2.i.i.i226, %bb.ay ]
  %i.nj = trunc i64 %.0178544 to i32
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dr
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !3, !noalias !988
  %i.nl = icmp ugt i64 %.sroa.23291.9, 2020
  br i1 %i.nl, label %.preheader395, label %bb.du

.preheader395:                                    ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit272
  %i.nm = load i32, ptr %7, align 4, !tbaa !3, !alias.scope !992, !noalias !995
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.preheader395, %bb.cv
  %.sroa.33.0 = phi i32 [ %.sroa.20.4, %bb.cv ], [ %.sroa.33.6, %.preheader395 ]
  %.sroa.23291.0 = phi i64 [ %.sroa.12.7, %bb.cv ], [ %.sroa.23291.9, %.preheader395 ]
  %.sroa.14.0 = phi i64 [ %.sroa.8.7, %bb.cv ], [ %.sroa.14.9, %.preheader395 ]
  %.sroa.0281.0 = phi i64 [ %.sroa.0.7, %bb.cv ], [ %.sroa.0281.9, %.preheader395 ] ; 2 uses
  %.1179 = phi i64 [ %i.nt, %bb.cv ], [ %.0178544, %.preheader395 ] ; 5 uses
  %.1176 = phi i64 [ %i.aaf, %bb.cv ], [ %.0175545, %.preheader395 ] ; 2 uses
  %.0172.in = phi i64 [ %.0172, %bb.cv ], [ %i.as, %.preheader395 ]
  %.1170 = phi i32 [ %.2171, %bb.cv ], [ %.0169, %.preheader395 ]
  %.1167 = phi i8 [ %.2168, %bb.cv ], [ %.0166, %.preheader395 ] ; 2 uses
  %.0165 = phi i32 [ %i.aag, %bb.cv ], [ 0, %.preheader395 ] ; 2 uses
  %.0172 = add i64 %.0172.in, -1                  ; 15 uses
  %i.no = load i32, ptr %i.o, align 4, !tbaa !31
  %i.np = icmp slt i32 %i.no, 5
  %i.nq = add i64 %.sroa.0281.0, -1
  %i.nr = tail call i64 @llvm.umin.i64(i64 %i.nq, i64 %.0172)
  %i.ns = select i1 %i.np, i64 %i.nr, i64 0       ; 6 uses
  %i.nt = add i64 %.1179, 1                       ; 17 uses
  %i.nu = tail call noundef i64 @llvm.umin.i64(i64 %i.nt, i64 %i.h) ; 4 uses
  %i.nv = add i64 %i.nt, %i.j
  %i.nw = tail call noundef i64 @llvm.umin.i64(i64 %i.nv, i64 %i.h) ; 2 uses
  %i.nx = load i32, ptr %i.x, align 8, !tbaa !53
  %.not195 = icmp eq i32 %i.nx, 0
  br i1 %.not195, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ny = and i64 %.1179, %3
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !54  ; 2 uses
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !54
  %i.oe = zext i8 %.1167 to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !54
  %i.oh = or i8 %i.og, %i.od
  %i.oi = zext i8 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !54
  %i.ol = zext i8 %i.ok to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.2171 = phi i32 [ %i.ol, %bb.ba ], [ %.1170, %bb.az ] ; 2 uses
  %.2168 = phi i8 [ %i.oa, %bb.ba ], [ %.1167, %bb.az ]
  %i.om = zext nneg i32 %.2171 to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.om
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !55 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.op = and i64 %i.nt, %3
  %i.oq = getelementptr i8, ptr %2, i64 %i.op     ; 19 uses
  %i.or = getelementptr i8, ptr %i.oq, i64 %i.ns
  %i.os = load i8, ptr %i.or, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001 ; 5 uses
  %.val277 = load i64, ptr %i.oq, align 1         ; 2 uses
  %i.ot = mul i64 %.val277, 8922571613522624512
  %i.ou = lshr i64 %i.ot, 47                      ; 5 uses
  %i.ov = sub i64 %i.nt, %i.nn                    ; 2 uses
  %i.ow = icmp ult i64 %i.ov, %i.nt
  br i1 %i.ow, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.ox = and i64 %i.af, %i.ov
  %i.oy = getelementptr i8, ptr %2, i64 %i.ox     ; 5 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 %i.ns
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.pb = icmp eq i8 %i.os, %i.pa
  br i1 %i.pb, label %.preheader389, label %bb.bi

.preheader389:                                    ; preds = %bb.bc
  %i.pc = icmp ugt i64 %.0172, 7
  br i1 %i.pc, label %.lr.ph475, label %.preheader388

.preheader388:                                    ; preds = %bb.be, %.preheader389
  %.026.i123.i.lcssa = phi ptr [ %i.oy, %.preheader389 ], [ %i.pl, %bb.be ] ; 3 uses
  %.024.i124.i.lcssa = phi ptr [ %i.oq, %.preheader389 ], [ %i.pk, %bb.be ]
  %.022.i125.i.lcssa = phi i64 [ %.0172, %.preheader389 ], [ %i.pm, %bb.be ] ; 3 uses
  %.not.i130.i479 = icmp eq i64 %.022.i125.i.lcssa, 0
  br i1 %.not.i130.i479, label %.critedge.i131.i, label %.lr.ph483.preheader

.lr.ph483.preheader:                              ; preds = %.preheader388
  %scevgep597 = getelementptr i8, ptr %.026.i123.i.lcssa, i64 %.022.i125.i.lcssa
  br label %.lr.ph483

.lr.ph475:                                        ; preds = %.preheader389, %bb.be
  %.022.i125.i474 = phi i64 [ %i.pm, %bb.be ], [ %.0172, %.preheader389 ]
  %.024.i124.i473 = phi ptr [ %i.pk, %bb.be ], [ %i.oq, %.preheader389 ] ; 2 uses
  %.026.i123.i472 = phi ptr [ %i.pl, %bb.be ], [ %i.oy, %.preheader389 ] ; 3 uses
  %.0.copyload.i138.i = load i64, ptr %.024.i124.i473, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i123.i472, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.not30.i133.i = icmp eq i64 %.0.copyload.i138.i, %.0.copyload.i.i
  br i1 %.not30.i133.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph475
  %i.pd = xor i64 %.0.copyload.i.i, %.0.copyload.i138.i
  %i.pe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pd, i1 true)
  %i.pf = ptrtoint ptr %.026.i123.i472 to i64
  %i.pg = ptrtoint ptr %i.oy to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = lshr i64 %i.pe, 3
  %i.pj = add i64 %i.ph, %i.pi
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i

bb.be:                                            ; preds = %.lr.ph475
  %i.pk = getelementptr inbounds nuw i8, ptr %.024.i124.i473, i64 8 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.026.i123.i472, i64 8 ; 2 uses
  %i.pm = add i64 %.022.i125.i474, -8             ; 3 uses
  %i.pn = icmp ugt i64 %i.pm, 7
  br i1 %i.pn, label %.lr.ph475, label %.preheader388, !llvm.loop !62

.lr.ph483:                                        ; preds = %.lr.ph483.preheader, %bb.bf
  %.123.i129.i482 = phi i64 [ %i.pr, %bb.bf ], [ %.022.i125.i.lcssa, %.lr.ph483.preheader ]
  %.125.i128.i481 = phi ptr [ %i.ps, %bb.bf ], [ %.024.i124.i.lcssa, %.lr.ph483.preheader ] ; 2 uses
  %.228.i127.i480 = phi ptr [ %i.pt, %bb.bf ], [ %.026.i123.i.lcssa, %.lr.ph483.preheader ] ; 3 uses
  %i.po = load i8, ptr %.228.i127.i480, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.pp = load i8, ptr %.125.i128.i481, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.pq = icmp eq i8 %i.po, %i.pp
  br i1 %i.pq, label %bb.bf, label %.critedge.i131.i

bb.bf:                                            ; preds = %.lr.ph483
  %i.pr = add nsw i64 %.123.i129.i482, -1         ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.125.i128.i481, i64 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.228.i127.i480, i64 1
  %.not.i130.i = icmp eq i64 %i.pr, 0
  br i1 %.not.i130.i, label %.critedge.i131.i, label %.lr.ph483, !llvm.loop !64

.critedge.i131.i:                                 ; preds = %bb.bf, %.lr.ph483, %.preheader388
  %.228.i127.i.lcssa = phi ptr [ %.026.i123.i.lcssa, %.preheader388 ], [ %.228.i127.i480, %.lr.ph483 ], [ %scevgep597, %bb.bf ]
  %i.pu = ptrtoint ptr %.228.i127.i.lcssa to i64
  %i.pv = ptrtoint ptr %i.oy to i64
  %i.pw = sub i64 %i.pu, %i.pv
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i: ; preds = %bb.bd, %.critedge.i131.i
  %.2.i132.i = phi i64 [ %i.pj, %bb.bd ], [ %i.pw, %.critedge.i131.i ] ; 4 uses
  %i.px = icmp ugt i64 %.2.i132.i, 3
  br i1 %i.px, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i
  %i.py = mul i64 %.2.i132.i, 135
  %i.pz = add i64 %i.py, 1935                     ; 2 uses
  %i.qa = icmp ugt i64 %i.pz, 2020
  br i1 %i.qa, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.qb = getelementptr i8, ptr %i.oq, i64 %.2.i132.i
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i, %bb.bc, %bb.bb
  %.sroa.12.0 = phi i64 [ %i.pz, %bb.bh ], [ 2020, %bb.bg ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i ], [ 2020, %bb.bc ], [ 2020, %bb.bb ] ; 5 uses
  %.sroa.8.0 = phi i64 [ %i.nn, %bb.bh ], [ 0, %bb.bg ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i ], [ 0, %bb.bc ], [ 0, %bb.bb ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.2.i132.i, %bb.bh ], [ %i.ns, %bb.bg ], [ %i.ns, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i ], [ %i.ns, %bb.bc ], [ %i.ns, %bb.bb ] ; 5 uses
  %.2109.i.in = phi i8 [ %i.qc, %bb.bh ], [ %i.os, %bb.bg ], [ %i.os, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit136.i ], [ %i.os, %bb.bc ], [ %i.os, %bb.bb ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !1002
  store i64 %i.ou, ptr %i.b, align 16, !tbaa !30, !noalias !1002
  %i.qd = add nuw nsw i64 %i.ou, 8
  %i.qe = and i64 %i.qd, 131071                   ; 2 uses
  store i64 %i.qe, ptr %i.ap, align 8, !tbaa !30, !noalias !1002
  %i.qf = add nuw nsw i64 %i.ou, 16
  %i.qg = and i64 %i.qf, 131071                   ; 2 uses
  store i64 %i.qg, ptr %i.aq, align 16, !tbaa !30, !noalias !1002
  %i.qh = add nuw nsw i64 %i.ou, 24
  %i.qi = and i64 %i.qh, 131071                   ; 2 uses
  store i64 %i.qi, ptr %i.ar, align 8, !tbaa !30, !noalias !1002
  %14 = lshr i64 %i.nt, 3
  %i.qj = and i64 %14, 3
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.qj
  %i.qk = load i64, ptr %15, align 8, !tbaa !30, !noalias !1002
  %i.ql = icmp ugt i64 %.0172, 7                  ; 4 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ou
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !3, !noalias !1001
  %i.qo = zext i32 %i.qn to i64                   ; 3 uses
  %i.qp = sub i64 %i.nt, %i.qo                    ; 3 uses
  %i.qq = and i64 %3, %i.qo
  %i.qr = getelementptr i8, ptr %2, i64 %i.qq     ; 5 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 %.sroa.0.0
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %.not.i202 = icmp eq i8 %.2109.i.in, %i.qt
  br i1 %.not.i202, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.qu = icmp eq i64 %i.nt, %i.qo
  %i.qv = icmp ugt i64 %i.qp, %i.nu
  %i.qw = or i1 %i.qu, %i.qv
  br i1 %i.qw, label %bb.bp, label %.preheader387, !prof !72

.preheader387:                                    ; preds = %bb.bj
  br i1 %i.ql, label %.lr.ph491, label %.preheader386

.preheader386:                                    ; preds = %bb.bl, %.preheader387
  %.026.i.i.lcssa = phi ptr [ %i.qr, %.preheader387 ], [ %i.rf, %bb.bl ] ; 3 uses
  %.024.i.i.lcssa = phi ptr [ %i.oq, %.preheader387 ], [ %i.re, %bb.bl ]
  %.022.i.i.lcssa = phi i64 [ %.0172, %.preheader387 ], [ %i.rg, %bb.bl ] ; 3 uses
  %.not.i.i495 = icmp eq i64 %.022.i.i.lcssa, 0
  br i1 %.not.i.i495, label %.critedge.i.i, label %.lr.ph499.preheader

.lr.ph499.preheader:                              ; preds = %.preheader386
  %scevgep598 = getelementptr i8, ptr %.026.i.i.lcssa, i64 %.022.i.i.lcssa
  br label %.lr.ph499

.lr.ph491:                                        ; preds = %.preheader387, %bb.bl
  %.022.i.i490 = phi i64 [ %i.rg, %bb.bl ], [ %.0172, %.preheader387 ]
  %.024.i.i489 = phi ptr [ %i.re, %bb.bl ], [ %i.oq, %.preheader387 ] ; 2 uses
  %.026.i.i488 = phi ptr [ %i.rf, %bb.bl ], [ %i.qr, %.preheader387 ] ; 3 uses
  %.0.copyload.i140.i = load i64, ptr %.024.i.i489, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.0.copyload.i139.i = load i64, ptr %.026.i.i488, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i140.i, %.0.copyload.i139.i
  br i1 %.not30.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph491
  %i.qx = xor i64 %.0.copyload.i139.i, %.0.copyload.i140.i
  %i.qy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.qx, i1 true)
  %i.qz = ptrtoint ptr %.026.i.i488 to i64
  %i.ra = ptrtoint ptr %i.qr to i64
  %i.rb = sub i64 %i.qz, %i.ra
  %i.rc = lshr i64 %i.qy, 3
  %i.rd = add i64 %i.rb, %i.rc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

bb.bl:                                            ; preds = %.lr.ph491
  %i.re = getelementptr inbounds nuw i8, ptr %.024.i.i489, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.026.i.i488, i64 8 ; 2 uses
  %i.rg = add i64 %.022.i.i490, -8                ; 3 uses
  %i.rh = icmp ugt i64 %i.rg, 7
  br i1 %i.rh, label %.lr.ph491, label %.preheader386, !llvm.loop !62

.lr.ph499:                                        ; preds = %.lr.ph499.preheader, %bb.bm
  %.123.i.i498 = phi i64 [ %i.rl, %bb.bm ], [ %.022.i.i.lcssa, %.lr.ph499.preheader ]
  %.125.i.i497 = phi ptr [ %i.rm, %bb.bm ], [ %.024.i.i.lcssa, %.lr.ph499.preheader ] ; 2 uses
  %.228.i.i496 = phi ptr [ %i.rn, %bb.bm ], [ %.026.i.i.lcssa, %.lr.ph499.preheader ] ; 3 uses
  %i.ri = load i8, ptr %.228.i.i496, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.rj = load i8, ptr %.125.i.i497, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.rk = icmp eq i8 %i.ri, %i.rj
  br i1 %i.rk, label %bb.bm, label %.critedge.i.i

bb.bm:                                            ; preds = %.lr.ph499
  %i.rl = add nsw i64 %.123.i.i498, -1            ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.125.i.i497, i64 1
  %i.rn = getelementptr inbounds nuw i8, ptr %.228.i.i496, i64 1
  %.not.i.i = icmp eq i64 %i.rl, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph499, !llvm.loop !64

.critedge.i.i:                                    ; preds = %bb.bm, %.lr.ph499, %.preheader386
  %.228.i.i.lcssa = phi ptr [ %.026.i.i.lcssa, %.preheader386 ], [ %.228.i.i496, %.lr.ph499 ], [ %scevgep598, %bb.bm ]
  %i.ro = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.rp = ptrtoint ptr %i.qr to i64
  %i.rq = sub i64 %i.ro, %i.rp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i: ; preds = %bb.bk, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.rd, %bb.bk ], [ %i.rq, %.critedge.i.i ] ; 4 uses
  %i.rr = icmp ugt i64 %.2.i.i, 3
  br i1 %i.rr, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %i.rs = mul i64 %.2.i.i, 135
  %i.rt = trunc i64 %i.qp to i32
  %i.ru = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rt, i1 true)
  %i.rv = xor i32 %i.ru, 31
  %.neg553 = mul nsw i32 %i.rv, -30
  %narrow552 = add nsw i32 %.neg553, 1920
  %i.rw = zext nneg i32 %narrow552 to i64
  %i.rx = add i64 %i.rs, %i.rw                    ; 2 uses
  %i.ry = icmp ult i64 %.sroa.12.0, %i.rx
  br i1 %i.ry, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.rz = getelementptr i8, ptr %i.oq, i64 %.2.i.i
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i, %bb.bj, %bb.bi
  %.sroa.12.6 = phi i64 [ %.sroa.12.0, %bb.bj ], [ %i.rx, %bb.bo ], [ %.sroa.12.0, %bb.bn ], [ %.sroa.12.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.12.0, %bb.bi ] ; 5 uses
  %.sroa.8.6 = phi i64 [ %.sroa.8.0, %bb.bj ], [ %i.qp, %bb.bo ], [ %.sroa.8.0, %bb.bn ], [ %.sroa.8.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.8.0, %bb.bi ] ; 4 uses
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.bj ], [ %.2.i.i, %bb.bo ], [ %.sroa.0.0, %bb.bn ], [ %.sroa.0.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.0.0, %bb.bi ] ; 5 uses
  %.6113.i.in = phi i8 [ %.2109.i.in, %bb.bj ], [ %i.sa, %bb.bo ], [ %.2109.i.in, %bb.bn ], [ %.2109.i.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.2109.i.in, %bb.bi ] ; 5 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.qe
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !3, !noalias !1001
  %i.sd = zext i32 %i.sc to i64                   ; 3 uses
  %i.se = sub i64 %i.nt, %i.sd                    ; 3 uses
  %i.sf = and i64 %3, %i.sd
  %i.sg = getelementptr i8, ptr %2, i64 %i.sf     ; 5 uses
  %i.sh = getelementptr i8, ptr %i.sg, i64 %.sroa.0.6
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %.not.i202.1 = icmp eq i8 %.6113.i.in, %i.si
  br i1 %.not.i202.1, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.sj = icmp eq i64 %i.nt, %i.sd
  %i.sk = icmp ugt i64 %i.se, %i.nu
  %i.sl = or i1 %i.sj, %i.sk
  br i1 %i.sl, label %bb.bw, label %.preheader387.1, !prof !72

.preheader387.1:                                  ; preds = %bb.bq
  br i1 %i.ql, label %.lr.ph491.1, label %.preheader386.1

.lr.ph491.1:                                      ; preds = %.preheader387.1, %bb.bs
  %.022.i.i490.1 = phi i64 [ %i.sv, %bb.bs ], [ %.0172, %.preheader387.1 ]
  %.024.i.i489.1 = phi ptr [ %i.st, %bb.bs ], [ %i.oq, %.preheader387.1 ] ; 2 uses
  %.026.i.i488.1 = phi ptr [ %i.su, %bb.bs ], [ %i.sg, %.preheader387.1 ] ; 3 uses
  %.0.copyload.i140.i.1 = load i64, ptr %.024.i.i489.1, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.0.copyload.i139.i.1 = load i64, ptr %.026.i.i488.1, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.not30.i.i.1 = icmp eq i64 %.0.copyload.i140.i.1, %.0.copyload.i139.i.1
  br i1 %.not30.i.i.1, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph491.1
  %i.sm = xor i64 %.0.copyload.i139.i.1, %.0.copyload.i140.i.1
  %i.sn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sm, i1 true)
  %i.so = ptrtoint ptr %.026.i.i488.1 to i64
  %i.sp = ptrtoint ptr %i.sg to i64
  %i.sq = sub i64 %i.so, %i.sp
  %i.sr = lshr i64 %i.sn, 3
  %i.ss = add i64 %i.sq, %i.sr
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

bb.bs:                                            ; preds = %.lr.ph491.1
  %i.st = getelementptr inbounds nuw i8, ptr %.024.i.i489.1, i64 8 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.026.i.i488.1, i64 8 ; 2 uses
  %i.sv = add i64 %.022.i.i490.1, -8              ; 3 uses
  %i.sw = icmp ugt i64 %i.sv, 7
  br i1 %i.sw, label %.lr.ph491.1, label %.preheader386.1, !llvm.loop !62

.preheader386.1:                                  ; preds = %bb.bs, %.preheader387.1
  %.026.i.i.lcssa.1 = phi ptr [ %i.sg, %.preheader387.1 ], [ %i.su, %bb.bs ] ; 3 uses
  %.024.i.i.lcssa.1 = phi ptr [ %i.oq, %.preheader387.1 ], [ %i.st, %bb.bs ]
  %.022.i.i.lcssa.1 = phi i64 [ %.0172, %.preheader387.1 ], [ %i.sv, %bb.bs ] ; 3 uses
  %.not.i.i495.1 = icmp eq i64 %.022.i.i.lcssa.1, 0
  br i1 %.not.i.i495.1, label %.critedge.i.i.1, label %.lr.ph499.preheader.1

.lr.ph499.preheader.1:                            ; preds = %.preheader386.1
  %scevgep598.1 = getelementptr i8, ptr %.026.i.i.lcssa.1, i64 %.022.i.i.lcssa.1
  br label %.lr.ph499.1

.lr.ph499.1:                                      ; preds = %bb.bt, %.lr.ph499.preheader.1
  %.123.i.i498.1 = phi i64 [ %i.ta, %bb.bt ], [ %.022.i.i.lcssa.1, %.lr.ph499.preheader.1 ]
  %.125.i.i497.1 = phi ptr [ %i.tb, %bb.bt ], [ %.024.i.i.lcssa.1, %.lr.ph499.preheader.1 ] ; 2 uses
  %.228.i.i496.1 = phi ptr [ %i.tc, %bb.bt ], [ %.026.i.i.lcssa.1, %.lr.ph499.preheader.1 ] ; 3 uses
  %i.sx = load i8, ptr %.228.i.i496.1, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.sy = load i8, ptr %.125.i.i497.1, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.sz = icmp eq i8 %i.sx, %i.sy
  br i1 %i.sz, label %bb.bt, label %.critedge.i.i.1

bb.bt:                                            ; preds = %.lr.ph499.1
  %i.ta = add nsw i64 %.123.i.i498.1, -1          ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.125.i.i497.1, i64 1
  %i.tc = getelementptr inbounds nuw i8, ptr %.228.i.i496.1, i64 1
  %.not.i.i.1 = icmp eq i64 %i.ta, 0
  br i1 %.not.i.i.1, label %.critedge.i.i.1, label %.lr.ph499.1, !llvm.loop !64

.critedge.i.i.1:                                  ; preds = %.lr.ph499.1, %bb.bt, %.preheader386.1
  %.228.i.i.lcssa.1 = phi ptr [ %.026.i.i.lcssa.1, %.preheader386.1 ], [ %.228.i.i496.1, %.lr.ph499.1 ], [ %scevgep598.1, %bb.bt ]
  %i.td = ptrtoint ptr %.228.i.i.lcssa.1 to i64
  %i.te = ptrtoint ptr %i.sg to i64
  %i.tf = sub i64 %i.td, %i.te
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1: ; preds = %.critedge.i.i.1, %bb.br
  %.2.i.i.1 = phi i64 [ %i.ss, %bb.br ], [ %i.tf, %.critedge.i.i.1 ] ; 4 uses
  %i.tg = icmp ugt i64 %.2.i.i.1, 3
  br i1 %i.tg, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1
  %i.th = mul i64 %.2.i.i.1, 135
  %i.ti = trunc i64 %i.se to i32
  %i.tj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ti, i1 true)
  %i.tk = xor i32 %i.tj, 31
  %.neg553.1 = mul nsw i32 %i.tk, -30
  %narrow552.1 = add nsw i32 %.neg553.1, 1920
end_hunk_6
begin_hunk_7_@_ZL27CreateBackwardReferencesNH4mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.bx:                                            ; preds = %bb.bw
  %i.ty = icmp eq i64 %i.nt, %i.ts
  %i.tz = icmp ugt i64 %i.tt, %i.nu
  %i.ua = or i1 %i.ty, %i.tz
  br i1 %i.ua, label %bb.cd, label %.preheader387.2, !prof !72

.preheader387.2:                                  ; preds = %bb.bx
  br i1 %i.ql, label %.lr.ph491.2, label %.preheader386.2

.lr.ph491.2:                                      ; preds = %.preheader387.2, %bb.bz
  %.022.i.i490.2 = phi i64 [ %i.uk, %bb.bz ], [ %.0172, %.preheader387.2 ]
  %.024.i.i489.2 = phi ptr [ %i.ui, %bb.bz ], [ %i.oq, %.preheader387.2 ] ; 2 uses
  %.026.i.i488.2 = phi ptr [ %i.uj, %bb.bz ], [ %i.tv, %.preheader387.2 ] ; 3 uses
  %.0.copyload.i140.i.2 = load i64, ptr %.024.i.i489.2, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.0.copyload.i139.i.2 = load i64, ptr %.026.i.i488.2, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.not30.i.i.2 = icmp eq i64 %.0.copyload.i140.i.2, %.0.copyload.i139.i.2
  br i1 %.not30.i.i.2, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph491.2
  %i.ub = xor i64 %.0.copyload.i139.i.2, %.0.copyload.i140.i.2
  %i.uc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ub, i1 true)
  %i.ud = ptrtoint ptr %.026.i.i488.2 to i64
  %i.ue = ptrtoint ptr %i.tv to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %i.ug = lshr i64 %i.uc, 3
  %i.uh = add i64 %i.uf, %i.ug
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2

bb.bz:                                            ; preds = %.lr.ph491.2
  %i.ui = getelementptr inbounds nuw i8, ptr %.024.i.i489.2, i64 8 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.026.i.i488.2, i64 8 ; 2 uses
  %i.uk = add i64 %.022.i.i490.2, -8              ; 3 uses
  %i.ul = icmp ugt i64 %i.uk, 7
  br i1 %i.ul, label %.lr.ph491.2, label %.preheader386.2, !llvm.loop !62

.preheader386.2:                                  ; preds = %bb.bz, %.preheader387.2
  %.026.i.i.lcssa.2 = phi ptr [ %i.tv, %.preheader387.2 ], [ %i.uj, %bb.bz ] ; 3 uses
  %.024.i.i.lcssa.2 = phi ptr [ %i.oq, %.preheader387.2 ], [ %i.ui, %bb.bz ]
  %.022.i.i.lcssa.2 = phi i64 [ %.0172, %.preheader387.2 ], [ %i.uk, %bb.bz ] ; 3 uses
  %.not.i.i495.2 = icmp eq i64 %.022.i.i.lcssa.2, 0
  br i1 %.not.i.i495.2, label %.critedge.i.i.2, label %.lr.ph499.preheader.2

.lr.ph499.preheader.2:                            ; preds = %.preheader386.2
  %scevgep598.2 = getelementptr i8, ptr %.026.i.i.lcssa.2, i64 %.022.i.i.lcssa.2
  br label %.lr.ph499.2

.lr.ph499.2:                                      ; preds = %bb.ca, %.lr.ph499.preheader.2
  %.123.i.i498.2 = phi i64 [ %i.up, %bb.ca ], [ %.022.i.i.lcssa.2, %.lr.ph499.preheader.2 ]
  %.125.i.i497.2 = phi ptr [ %i.uq, %bb.ca ], [ %.024.i.i.lcssa.2, %.lr.ph499.preheader.2 ] ; 2 uses
  %.228.i.i496.2 = phi ptr [ %i.ur, %bb.ca ], [ %.026.i.i.lcssa.2, %.lr.ph499.preheader.2 ] ; 3 uses
  %i.um = load i8, ptr %.228.i.i496.2, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.un = load i8, ptr %.125.i.i497.2, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.uo = icmp eq i8 %i.um, %i.un
  br i1 %i.uo, label %bb.ca, label %.critedge.i.i.2

bb.ca:                                            ; preds = %.lr.ph499.2
  %i.up = add nsw i64 %.123.i.i498.2, -1          ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.125.i.i497.2, i64 1
  %i.ur = getelementptr inbounds nuw i8, ptr %.228.i.i496.2, i64 1
  %.not.i.i.2 = icmp eq i64 %i.up, 0
  br i1 %.not.i.i.2, label %.critedge.i.i.2, label %.lr.ph499.2, !llvm.loop !64

.critedge.i.i.2:                                  ; preds = %.lr.ph499.2, %bb.ca, %.preheader386.2
  %.228.i.i.lcssa.2 = phi ptr [ %.026.i.i.lcssa.2, %.preheader386.2 ], [ %.228.i.i496.2, %.lr.ph499.2 ], [ %scevgep598.2, %bb.ca ]
  %i.us = ptrtoint ptr %.228.i.i.lcssa.2 to i64
  %i.ut = ptrtoint ptr %i.tv to i64
  %i.uu = sub i64 %i.us, %i.ut
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2: ; preds = %.critedge.i.i.2, %bb.by
  %.2.i.i.2 = phi i64 [ %i.uh, %bb.by ], [ %i.uu, %.critedge.i.i.2 ] ; 4 uses
  %i.uv = icmp ugt i64 %.2.i.i.2, 3
  br i1 %i.uv, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2
  %i.uw = mul i64 %.2.i.i.2, 135
  %i.ux = trunc i64 %i.tt to i32
  %i.uy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ux, i1 true)
  %i.uz = xor i32 %i.uy, 31
  %.neg553.2 = mul nsw i32 %i.uz, -30
  %narrow552.2 = add nsw i32 %.neg553.2, 1920
  %i.va = zext nneg i32 %narrow552.2 to i64
  %i.vb = add i64 %i.uw, %i.va                    ; 2 uses
  %i.vc = icmp ult i64 %.sroa.12.6.1, %i.vb
  br i1 %i.vc, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.vd = getelementptr i8, ptr %i.oq, i64 %.2.i.i.2
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2, %bb.bx, %bb.bw
  %.sroa.12.6.2 = phi i64 [ %.sroa.12.6.1, %bb.bx ], [ %i.vb, %bb.cc ], [ %.sroa.12.6.1, %bb.cb ], [ %.sroa.12.6.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.12.6.1, %bb.bw ] ; 5 uses
  %.sroa.8.6.2 = phi i64 [ %.sroa.8.6.1, %bb.bx ], [ %i.tt, %bb.cc ], [ %.sroa.8.6.1, %bb.cb ], [ %.sroa.8.6.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.8.6.1, %bb.bw ] ; 4 uses
  %.sroa.0.6.2 = phi i64 [ %.sroa.0.6.1, %bb.bx ], [ %.2.i.i.2, %bb.cc ], [ %.sroa.0.6.1, %bb.cb ], [ %.sroa.0.6.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.0.6.1, %bb.bw ] ; 5 uses
  %.6113.i.2.in = phi i8 [ %.6113.i.1.in, %bb.bx ], [ %i.ve, %bb.cc ], [ %.6113.i.1.in, %bb.cb ], [ %.6113.i.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.6113.i.1.in, %bb.bw ]
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.qi
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !3, !noalias !1001
  %i.vh = zext i32 %i.vg to i64                   ; 3 uses
  %i.vi = sub i64 %i.nt, %i.vh                    ; 3 uses
  %i.vj = and i64 %3, %i.vh
  %i.vk = getelementptr i8, ptr %2, i64 %i.vj     ; 5 uses
  %i.vl = getelementptr i8, ptr %i.vk, i64 %.sroa.0.6.2
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %.not.i202.3 = icmp eq i8 %.6113.i.2.in, %i.vm
  br i1 %.not.i202.3, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.vn = icmp eq i64 %i.nt, %i.vh
  %i.vo = icmp ugt i64 %i.vi, %i.nu
  %i.vp = or i1 %i.vn, %i.vo
  br i1 %i.vp, label %bb.ck, label %.preheader387.3, !prof !72

.preheader387.3:                                  ; preds = %bb.ce
  br i1 %i.ql, label %.lr.ph491.3, label %.preheader386.3

.lr.ph491.3:                                      ; preds = %.preheader387.3, %bb.cg
  %.022.i.i490.3 = phi i64 [ %i.vz, %bb.cg ], [ %.0172, %.preheader387.3 ]
  %.024.i.i489.3 = phi ptr [ %i.vx, %bb.cg ], [ %i.oq, %.preheader387.3 ] ; 2 uses
  %.026.i.i488.3 = phi ptr [ %i.vy, %bb.cg ], [ %i.vk, %.preheader387.3 ] ; 3 uses
  %.0.copyload.i140.i.3 = load i64, ptr %.024.i.i489.3, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.0.copyload.i139.i.3 = load i64, ptr %.026.i.i488.3, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.not30.i.i.3 = icmp eq i64 %.0.copyload.i140.i.3, %.0.copyload.i139.i.3
  br i1 %.not30.i.i.3, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph491.3
  %i.vq = xor i64 %.0.copyload.i139.i.3, %.0.copyload.i140.i.3
  %i.vr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vq, i1 true)
  %i.vs = ptrtoint ptr %.026.i.i488.3 to i64
  %i.vt = ptrtoint ptr %i.vk to i64
  %i.vu = sub i64 %i.vs, %i.vt
  %i.vv = lshr i64 %i.vr, 3
  %i.vw = add i64 %i.vu, %i.vv
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3

bb.cg:                                            ; preds = %.lr.ph491.3
  %i.vx = getelementptr inbounds nuw i8, ptr %.024.i.i489.3, i64 8 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.026.i.i488.3, i64 8 ; 2 uses
  %i.vz = add i64 %.022.i.i490.3, -8              ; 3 uses
  %i.wa = icmp ugt i64 %i.vz, 7
  br i1 %i.wa, label %.lr.ph491.3, label %.preheader386.3, !llvm.loop !62

.preheader386.3:                                  ; preds = %bb.cg, %.preheader387.3
  %.026.i.i.lcssa.3 = phi ptr [ %i.vk, %.preheader387.3 ], [ %i.vy, %bb.cg ] ; 3 uses
  %.024.i.i.lcssa.3 = phi ptr [ %i.oq, %.preheader387.3 ], [ %i.vx, %bb.cg ]
  %.022.i.i.lcssa.3 = phi i64 [ %.0172, %.preheader387.3 ], [ %i.vz, %bb.cg ] ; 3 uses
  %.not.i.i495.3 = icmp eq i64 %.022.i.i.lcssa.3, 0
  br i1 %.not.i.i495.3, label %.critedge.i.i.3, label %.lr.ph499.preheader.3

.lr.ph499.preheader.3:                            ; preds = %.preheader386.3
  %scevgep598.3 = getelementptr i8, ptr %.026.i.i.lcssa.3, i64 %.022.i.i.lcssa.3
  br label %.lr.ph499.3

.lr.ph499.3:                                      ; preds = %bb.ch, %.lr.ph499.preheader.3
  %.123.i.i498.3 = phi i64 [ %i.we, %bb.ch ], [ %.022.i.i.lcssa.3, %.lr.ph499.preheader.3 ]
  %.125.i.i497.3 = phi ptr [ %i.wf, %bb.ch ], [ %.024.i.i.lcssa.3, %.lr.ph499.preheader.3 ] ; 2 uses
  %.228.i.i496.3 = phi ptr [ %i.wg, %bb.ch ], [ %.026.i.i.lcssa.3, %.lr.ph499.preheader.3 ] ; 3 uses
  %i.wb = load i8, ptr %.228.i.i496.3, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.wc = load i8, ptr %.125.i.i497.3, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.wd = icmp eq i8 %i.wb, %i.wc
  br i1 %i.wd, label %bb.ch, label %.critedge.i.i.3

bb.ch:                                            ; preds = %.lr.ph499.3
  %i.we = add nsw i64 %.123.i.i498.3, -1          ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.125.i.i497.3, i64 1
  %i.wg = getelementptr inbounds nuw i8, ptr %.228.i.i496.3, i64 1
  %.not.i.i.3 = icmp eq i64 %i.we, 0
  br i1 %.not.i.i.3, label %.critedge.i.i.3, label %.lr.ph499.3, !llvm.loop !64

.critedge.i.i.3:                                  ; preds = %.lr.ph499.3, %bb.ch, %.preheader386.3
  %.228.i.i.lcssa.3 = phi ptr [ %.026.i.i.lcssa.3, %.preheader386.3 ], [ %.228.i.i496.3, %.lr.ph499.3 ], [ %scevgep598.3, %bb.ch ]
  %i.wh = ptrtoint ptr %.228.i.i.lcssa.3 to i64
  %i.wi = ptrtoint ptr %i.vk to i64
  %i.wj = sub i64 %i.wh, %i.wi
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3: ; preds = %.critedge.i.i.3, %bb.cf
  %.2.i.i.3 = phi i64 [ %i.vw, %bb.cf ], [ %i.wj, %.critedge.i.i.3 ] ; 3 uses
  %i.wk = icmp ugt i64 %.2.i.i.3, 3
  br i1 %i.wk, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3
  %i.wl = mul i64 %.2.i.i.3, 135
  %i.wm = trunc i64 %i.vi to i32
  %i.wn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.wm, i1 true)
  %i.wo = xor i32 %i.wn, 31
  %.neg553.3 = mul nsw i32 %i.wo, -30
  %narrow552.3 = add nsw i32 %.neg553.3, 1920
  %i.wp = zext nneg i32 %narrow552.3 to i64
  %i.wq = add i64 %i.wl, %i.wp                    ; 2 uses
  %i.wr = icmp ult i64 %.sroa.12.6.2, %i.wq
  br i1 %i.wr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3, %bb.ce, %bb.cd
  %.sroa.12.6.3 = phi i64 [ %.sroa.12.6.2, %bb.ce ], [ %i.wq, %bb.cj ], [ %.sroa.12.6.2, %bb.ci ], [ %.sroa.12.6.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.12.6.2, %bb.cd ] ; 2 uses
  %.sroa.8.6.3 = phi i64 [ %.sroa.8.6.2, %bb.ce ], [ %i.vi, %bb.cj ], [ %.sroa.8.6.2, %bb.ci ], [ %.sroa.8.6.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.8.6.2, %bb.cd ] ; 7 uses
  %.sroa.0.6.3 = phi i64 [ %.sroa.0.6.2, %bb.ce ], [ %.2.i.i.3, %bb.cj ], [ %.sroa.0.6.2, %bb.ci ], [ %.sroa.0.6.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.0.6.2, %bb.cd ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !1002
  %i.ws = icmp eq i64 %.sroa.12.6.3, 2020
  br i1 %i.ws, label %bb.cl, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.cl:                                            ; preds = %bb.ck
  %i.wt = load ptr, ptr %i.c, align 8, !tbaa !991, !alias.scope !999, !noalias !1003 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 48 ; 2 uses
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !75, !noalias !1001 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 40 ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !78, !noalias !1001 ; 2 uses
  %i.wy = lshr i64 %i.wx, 7
  %i.wz = icmp ult i64 %i.wv, %i.wy
  br i1 %i.wz, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.xa = mul i64 %.val277, 506832829
  %i.xb = lshr i64 %i.xa, 17
  %i.xc = and i64 %i.xb, 32766                    ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !79, !noalias !1002
  %i.xf = ptrtoint ptr %i.oq to i64               ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  %i.xh = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.xi = add i64 %i.ag, %i.nw
  %i.xj = add i64 %i.wx, 1
  store i64 %i.xj, ptr %i.ww, align 8, !tbaa !78, !noalias !1001
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xc
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !54, !noalias !1001 ; 4 uses
  %.not22.i.i = icmp eq i8 %i.xl, 0
  br i1 %.not22.i.i, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xm = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.xn = zext i8 %i.xl to i64                    ; 8 uses
  %i.xo = load ptr, ptr %i.xm, align 8, !tbaa !80, !noalias !1002
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xo, i64 %i.xc
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !68, !noalias !1001
  %i.xr = zext i16 %i.xq to i64                   ; 2 uses
  %i.xs = icmp ult i64 %.0172, %i.xn
  br i1 %i.xs, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.xt = load ptr, ptr %i.oo, align 8, !tbaa !81, !noalias !1002 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %i.xn
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !3, !noalias !1001
  %i.xx = zext i32 %i.xw to i64
  %i.xy = mul nuw nsw i64 %i.xr, %i.xn
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xt, i64 168
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !82, !noalias !1001
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.xy
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.xx ; 2 uses
  %i.yd = icmp ugt i8 %i.xl, 7
  br i1 %i.yd, label %.lr.ph513, label %.lr.ph521.preheader

.preheader:                                       ; preds = %bb.cq
  %.not.i.i.i517 = icmp eq i64 %i.ym, 0
  br i1 %.not.i.i.i517, label %.critedge.i.i.i, label %.lr.ph521.preheader

.lr.ph521.preheader:                              ; preds = %bb.co, %.preheader
  %.022.i.i.i.lcssa707 = phi i64 [ %i.ym, %.preheader ], [ %i.xn, %bb.co ] ; 2 uses
  %.024.i.i.i.lcssa706 = phi ptr [ %i.yk, %.preheader ], [ %i.yc, %bb.co ]
  %.026.i.i.i.lcssa705 = phi ptr [ %i.yl, %.preheader ], [ %i.oq, %bb.co ] ; 2 uses
  %scevgep599 = getelementptr i8, ptr %.026.i.i.i.lcssa705, i64 %.022.i.i.i.lcssa707
  br label %.lr.ph521

.lr.ph513:                                        ; preds = %bb.co, %bb.cq
  %.022.i.i.i512 = phi i64 [ %i.ym, %bb.cq ], [ %i.xn, %bb.co ]
  %.024.i.i.i511 = phi ptr [ %i.yk, %bb.cq ], [ %i.yc, %bb.co ] ; 2 uses
  %.026.i.i.i510 = phi ptr [ %i.yl, %bb.cq ], [ %i.oq, %bb.co ] ; 3 uses
  %.0.copyload.i44.i.i = load i64, ptr %.024.i.i.i511, align 1, !noalias !1001 ; 2 uses
  %.0.copyload.i.i142.i = load i64, ptr %.026.i.i.i510, align 1, !alias.scope !1000, !noalias !1001 ; 2 uses
  %.not30.i.i.i = icmp eq i64 %.0.copyload.i44.i.i, %.0.copyload.i.i142.i
  br i1 %.not30.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph513
  %i.ye = xor i64 %.0.copyload.i.i142.i, %.0.copyload.i44.i.i
  %i.yf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ye, i1 true)
  %i.yg = ptrtoint ptr %.026.i.i.i510 to i64
  %i.yh = sub i64 %i.yg, %i.xf
  %i.yi = lshr i64 %i.yf, 3
  %i.yj = add i64 %i.yh, %i.yi
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i

bb.cq:                                            ; preds = %.lr.ph513
  %i.yk = getelementptr inbounds nuw i8, ptr %.024.i.i.i511, i64 8 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.026.i.i.i510, i64 8 ; 3 uses
  %i.ym = add i64 %.022.i.i.i512, -8              ; 4 uses
  %i.yn = icmp ugt i64 %i.ym, 7
  br i1 %i.yn, label %.lr.ph513, label %.preheader, !llvm.loop !62

.lr.ph521:                                        ; preds = %.lr.ph521.preheader, %bb.cr
  %.123.i.i.i520 = phi i64 [ %i.yr, %bb.cr ], [ %.022.i.i.i.lcssa707, %.lr.ph521.preheader ]
  %.125.i.i.i519 = phi ptr [ %i.ys, %bb.cr ], [ %.024.i.i.i.lcssa706, %.lr.ph521.preheader ] ; 2 uses
  %.228.i.i.i518 = phi ptr [ %i.yt, %bb.cr ], [ %.026.i.i.i.lcssa705, %.lr.ph521.preheader ] ; 3 uses
  %i.yo = load i8, ptr %.228.i.i.i518, align 1, !tbaa !54, !alias.scope !1000, !noalias !1001
  %i.yp = load i8, ptr %.125.i.i.i519, align 1, !tbaa !54, !noalias !1001
  %i.yq = icmp eq i8 %i.yo, %i.yp
  br i1 %i.yq, label %bb.cr, label %.critedge.i.i.i

bb.cr:                                            ; preds = %.lr.ph521
  %i.yr = add nsw i64 %.123.i.i.i520, -1          ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.125.i.i.i519, i64 1
  %i.yt = getelementptr inbounds nuw i8, ptr %.228.i.i.i518, i64 1
  %.not.i.i.i = icmp eq i64 %i.yr, 0
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph521, !llvm.loop !64

.critedge.i.i.i:                                  ; preds = %bb.cr, %.lr.ph521, %.preheader
  %.228.i.i.i.lcssa = phi ptr [ %i.yl, %.preheader ], [ %.228.i.i.i518, %.lr.ph521 ], [ %scevgep599, %bb.cr ]
  %i.yu = ptrtoint ptr %.228.i.i.i.lcssa to i64
  %i.yv = sub i64 %i.yu, %i.xf
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i: ; preds = %bb.cp, %.critedge.i.i.i
  %.2.i.i.i = phi i64 [ %i.yj, %bb.cp ], [ %i.yv, %.critedge.i.i.i ] ; 6 uses
  %i.yw = load i32, ptr %i.xg, align 4, !tbaa !84, !noalias !1002
  %i.yx = zext i32 %i.yw to i64
  %i.yy = add i64 %.2.i.i.i, %i.yx
  %i.yz = icmp ule i64 %i.yy, %i.xn
  %i.za = icmp eq i64 %.2.i.i.i, 0
  %or.cond.i.i = or i1 %i.za, %i.yz
  br i1 %or.cond.i.i, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i
  %i.zb = sub i64 %i.xn, %.2.i.i.i                ; 2 uses
  %i.zc = shl i64 %i.zb, 2
  %i.zd = load i64, ptr %i.xh, align 8, !tbaa !85, !noalias !1002
  %i.ze = mul i64 %i.zb, 6
  %i.zf = lshr i64 %i.zd, %i.ze
  %i.zg = and i64 %i.zf, 63
  %i.zh = add i64 %i.zg, %i.zc
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xn
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !54, !noalias !1001
  %i.zk = zext nneg i8 %i.zj to i64
  %i.zl = shl i64 %i.zh, %i.zk
  %i.zm = add i64 %i.xi, %i.xr
  %i.zn = add i64 %i.zm, %i.zl                    ; 3 uses
  %i.zo = icmp ugt i64 %i.zn, %i.bv
  br i1 %i.zo, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zp = mul i64 %.2.i.i.i, 135
  %i.zq = add i64 %i.zp, 1920
  %i.zr = trunc i64 %i.zn to i32
  %i.zs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zr, i1 true)
  %i.zt = xor i32 %i.zs, 31
  %i.zu = mul nuw nsw i32 %i.zt, 30
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = sub i64 %i.zq, %i.zv                    ; 2 uses
  %i.zx = icmp ult i64 %i.zw, 2020
  br i1 %i.zx, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zy = zext i8 %i.xl to i32
  %i.zz = trunc i64 %.2.i.i.i to i32
  %i.aaa = sub nsw i32 %i.zy, %i.zz
  %i.aab = add i64 %i.wv, 1
  store i64 %i.aab, ptr %i.wu, align 8, !tbaa !75, !noalias !1001
  br label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %bb.cm, %bb.cu, %bb.cn, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i, %bb.cs, %bb.ct, %bb.cl, %bb.ck
  %.sroa.20.4 = phi i32 [ 0, %bb.ck ], [ 0, %bb.cl ], [ 0, %bb.cm ], [ %i.aaa, %bb.cu ], [ 0, %bb.cn ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i ], [ 0, %bb.cs ], [ 0, %bb.ct ] ; 2 uses
  %.sroa.12.7 = phi i64 [ %.sroa.12.6.3, %bb.ck ], [ 2020, %bb.cl ], [ 2020, %bb.cm ], [ %i.zw, %bb.cu ], [ 2020, %bb.cn ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i ], [ 2020, %bb.cs ], [ 2020, %bb.ct ] ; 2 uses
  %.sroa.8.7 = phi i64 [ %.sroa.8.6.3, %bb.ck ], [ %.sroa.8.6.3, %bb.cl ], [ %.sroa.8.6.3, %bb.cm ], [ %i.zn, %bb.cu ], [ %.sroa.8.6.3, %bb.cn ], [ %.sroa.8.6.3, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i ], [ %.sroa.8.6.3, %bb.cs ], [ %.sroa.8.6.3, %bb.ct ] ; 2 uses
  %.sroa.0.7 = phi i64 [ %.sroa.0.6.3, %bb.ck ], [ %.sroa.0.6.3, %bb.cl ], [ %.sroa.0.6.3, %bb.cm ], [ %.2.i.i.i, %bb.cu ], [ %.sroa.0.6.3, %bb.cn ], [ %.sroa.0.6.3, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i ], [ %.sroa.0.6.3, %bb.cs ], [ %.sroa.0.6.3, %bb.ct ] ; 2 uses
  %i.aac = trunc i64 %i.nt to i32
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.qk
  store i32 %i.aac, ptr %i.aad, align 4, !tbaa !3, !noalias !1001
  %i.aae = add i64 %.sroa.23291.0, 175
  %.not196 = icmp ult i64 %.sroa.12.7, %i.aae
  br i1 %.not196, label %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge, label %bb.cv

_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge: ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %.pre = add i64 %.1179, %i.j
  %.pre600 = tail call noundef i64 @llvm.umin.i64(i64 %.pre, i64 %i.h)
  br label %split

bb.cv:                                            ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.aaf = add i64 %.1176, 1                      ; 2 uses
  %i.aag = add nuw nsw i32 %.0165, 1
  %i.aah = icmp samesign ult i32 %.0165, 3
  %i.aai = add i64 %.1179, 9
  %i.aaj = icmp ult i64 %i.aai, %i.l
  %or.cond373 = select i1 %i.aah, i1 %i.aaj, i1 false
  br i1 %or.cond373, label %bb.az, label %split, !llvm.loop !1004

split:                                            ; preds = %bb.cv, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge
  %.pre-phi601 = phi i64 [ %.pre600, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %i.nw, %bb.cv ]
  %.sroa.33.1.ph = phi i32 [ %.sroa.33.0, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %.sroa.20.4, %bb.cv ] ; 2 uses
  %.sroa.14.1.ph = phi i64 [ %.sroa.14.0, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %.sroa.8.7, %bb.cv ] ; 11 uses
  %.sroa.0281.1.ph = phi i64 [ %.sroa.0281.0, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %.sroa.0.7, %bb.cv ] ; 4 uses
  %.3181.ph = phi i64 [ %.1179, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %i.nt, %bb.cv ] ; 3 uses
  %.3.ph = phi i64 [ %.1176, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %i.aaf, %bb.cv ] ; 9 uses
  %i.aak = shl i64 %.sroa.0281.1.ph, 1
  %i.aal = add i64 %i.aak, %i.r
  %i.aam = add i64 %i.aal, %.3181.ph              ; 3 uses
  %i.aan = add i64 %.pre-phi601, %i.t             ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.14.1.ph, %i.aan
  br i1 %.not.i, label %bb.de, label %bb.cw

bb.cw:                                            ; preds = %split
end_hunk_7
begin_hunk_8_@_ZL28CreateBackwardReferencesNH42mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %i.aio ; 2 uses
  store i16 %i.aiw, ptr %i.aiy, align 2, !tbaa !535, !noalias !1381
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %i.aib, i64 %i.aii ; 2 uses
  %i.aja = load i16, ptr %i.aiz, align 2, !tbaa !68, !noalias !1381
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 2
  store i16 %i.aja, ptr %i.ajb, align 2, !tbaa !533, !noalias !1381
  %i.ajc = trunc i64 %.5183604 to i32
  store i32 %i.ajc, ptr %i.aip, align 4, !tbaa !3, !noalias !1381
  store i16 %i.ain, ptr %i.aiz, align 2, !tbaa !68, !noalias !1381
  %i.ajd = add i64 %.5605, 2                      ; 2 uses
  %i.aje = add i64 %.5183604, 2                   ; 3 uses
  %i.ajf = icmp ult i64 %i.aje, %i.ahy
  br i1 %i.ajf, label %bb.du, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, !llvm.loop !1389

_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit: ; preds = %bb.dp, %bb.du, %bb.ds, %bb.do, %bb.dt, %bb.dr, %_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread
  %.1186 = phi ptr [ %.0185614, %bb.dt ], [ %.0185614, %_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread ], [ %.0185614, %bb.dr ], [ %i.aaz, %bb.do ], [ %.0185614, %bb.du ], [ %.0185614, %bb.ds ], [ %i.aaz, %bb.dp ] ; 2 uses
  %.6184 = phi i64 [ %i.agk, %bb.dt ], [ %i.agk, %_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread ], [ %i.agk, %bb.dr ], [ %i.aew, %bb.do ], [ %i.aje, %bb.du ], [ %i.ahv, %bb.ds ], [ %i.aew, %bb.dp ] ; 3 uses
  %.6 = phi i64 [ %i.agj, %bb.dt ], [ %i.agj, %_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread ], [ %i.agj, %bb.dr ], [ 0, %bb.do ], [ %i.ajd, %bb.du ], [ %i.ahu, %bb.ds ], [ 0, %bb.dp ] ; 2 uses
  %.1174 = phi i64 [ %.0173617, %bb.dt ], [ %.0173617, %_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread ], [ %.0173617, %bb.dr ], [ %i.zi, %bb.do ], [ %.0173617, %bb.du ], [ %.0173617, %bb.ds ], [ %i.zi, %bb.dp ]
  %i.ajg = add i64 %.6184, 4
  %i.ajh = icmp ult i64 %i.ajg, %i.j
  br i1 %i.ajh, label %bb.b, label %._crit_edge, !llvm.loop !1390

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, %bb.a
  %.0185.lcssa = phi ptr [ %9, %bb.a ], [ %.1186, %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit ]
  %.0175.lcssa = phi i64 [ %i.i, %bb.a ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit ]
  %i.aji = sub i64 %i.j, %.0178.lcssa
  %i.ajj = add i64 %i.aji, %.0175.lcssa
  store i64 %i.ajj, ptr %8, align 8, !tbaa !30
  %i.ajk = ptrtoint ptr %.0185.lcssa to i64
  %i.ajl = ptrtoint ptr %9 to i64
  %i.ajm = sub i64 %i.ajk, %i.ajl
  %i.ajn = ashr exact i64 %i.ajm, 4
  %i.ajo = load i64, ptr %10, align 8, !tbaa !30
  %i.ajp = add i64 %i.ajo, %i.ajn
  store i64 %i.ajp, ptr %10, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL28CreateBackwardReferencesNH54mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add i64 %i.f, -16                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.j = load i64, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.k = add i64 %1, %0                           ; 6 uses
  %i.l = icmp ugt i64 %0, 7
  %i.m = add i64 %i.k, -7                         ; 3 uses
  %spec.select = select i1 %i.l, i64 %i.m, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.o, 9
  %i.q = select i1 %i.p, i64 64, i64 512          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = add i64 %1, 8
  %i.u = icmp ult i64 %i.t, %i.k
  br i1 %i.u, label %.thread.lr.ph, label %._crit_edge

.thread.lr.ph:                                    ; preds = %bb.a
  %i.v = add i64 %i.q, %1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !628, !alias.scope !1391, !noalias !1394 ; 15 uses
  %i.z = and i64 %3, 4294967295                   ; 2 uses
  %i.aa = shl nuw nsw i64 %i.q, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %.thread

.thread:                                          ; preds = %.thread.lr.ph, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit
  %.0173437 = phi i64 [ %i.v, %.thread.lr.ph ], [ %.1174, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 7 uses
  %.0175436 = phi i64 [ %i.j, %.thread.lr.ph ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 2 uses
  %.0178435 = phi i64 [ %1, %.thread.lr.ph ], [ %.6184, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 19 uses
  %.0185434 = phi ptr [ %8, %.thread.lr.ph ], [ %.1186, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 13 uses
  %i.al = sub i64 %i.k, %.0178435                 ; 13 uses
  %i.am = tail call noundef i64 @llvm.umin.i64(i64 %.0178435, i64 %i.g) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.an = and i64 %.0178435, %3
  %i.ao = getelementptr i8, ptr %2, i64 %i.an     ; 16 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400 ; 5 uses
  %.val251 = load i64, ptr %i.ao, align 1
  %i.aq = mul i64 %.val251, -2064201331557805312
  %i.ar = lshr i64 %i.aq, 44                      ; 5 uses
  %i.as = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !1399, !noalias !1401
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = sub i64 %.0178435, %i.at                ; 2 uses
  %i.av = icmp ult i64 %i.au, %.0178435
  br i1 %i.av, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.thread
  %i.aw = and i64 %i.z, %i.au
  %i.ax = getelementptr i8, ptr %2, i64 %i.aw     ; 5 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.az = icmp eq i8 %i.ap, %i.ay
  br i1 %i.az, label %.preheader335, label %bb.h

.preheader335:                                    ; preds = %bb.b
  %i.ba = icmp ugt i64 %i.al, 7
  br i1 %i.ba, label %.lr.ph, label %.preheader334

.preheader334:                                    ; preds = %bb.d, %.preheader335
  %.026.i113.i231.lcssa = phi ptr [ %i.ax, %.preheader335 ], [ %i.bj, %bb.d ] ; 3 uses
  %.024.i114.i232.lcssa = phi ptr [ %i.ao, %.preheader335 ], [ %i.bi, %bb.d ]
  %.022.i115.i233.lcssa = phi i64 [ %i.al, %.preheader335 ], [ %i.bk, %bb.d ] ; 3 uses
  %.not.i120.i238353 = icmp eq i64 %.022.i115.i233.lcssa, 0
  br i1 %.not.i120.i238353, label %.critedge.i121.i239, label %.lr.ph357.preheader

.lr.ph357.preheader:                              ; preds = %.preheader334
  %scevgep = getelementptr i8, ptr %.026.i113.i231.lcssa, i64 %.022.i115.i233.lcssa
  br label %.lr.ph357

.lr.ph:                                           ; preds = %.preheader335, %bb.d
  %.022.i115.i233350 = phi i64 [ %i.bk, %bb.d ], [ %i.al, %.preheader335 ]
  %.024.i114.i232349 = phi ptr [ %i.bi, %bb.d ], [ %i.ao, %.preheader335 ] ; 2 uses
  %.026.i113.i231348 = phi ptr [ %i.bj, %bb.d ], [ %i.ax, %.preheader335 ] ; 3 uses
  %.0.copyload.i127.i242 = load i64, ptr %.024.i114.i232349, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.0.copyload.i.i243 = load i64, ptr %.026.i113.i231348, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.not30.i123.i244 = icmp eq i64 %.0.copyload.i127.i242, %.0.copyload.i.i243
  br i1 %.not30.i123.i244, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bb = xor i64 %.0.copyload.i.i243, %.0.copyload.i127.i242
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bb, i1 true)
  %i.bd = ptrtoint ptr %.026.i113.i231348 to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.bc, 3
  %i.bh = add i64 %i.bf, %i.bg
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240

bb.d:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i114.i232349, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.026.i113.i231348, i64 8 ; 2 uses
  %i.bk = add i64 %.022.i115.i233350, -8          ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 7
  br i1 %i.bl, label %.lr.ph, label %.preheader334, !llvm.loop !62

.lr.ph357:                                        ; preds = %.lr.ph357.preheader, %bb.e
  %.123.i119.i237356 = phi i64 [ %i.bp, %bb.e ], [ %.022.i115.i233.lcssa, %.lr.ph357.preheader ]
  %.125.i118.i236355 = phi ptr [ %i.bq, %bb.e ], [ %.024.i114.i232.lcssa, %.lr.ph357.preheader ] ; 2 uses
  %.228.i117.i235354 = phi ptr [ %i.br, %bb.e ], [ %.026.i113.i231.lcssa, %.lr.ph357.preheader ] ; 3 uses
  %i.bm = load i8, ptr %.228.i117.i235354, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.bn = load i8, ptr %.125.i118.i236355, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.bo = icmp eq i8 %i.bm, %i.bn
  br i1 %i.bo, label %bb.e, label %.critedge.i121.i239

bb.e:                                             ; preds = %.lr.ph357
  %i.bp = add nsw i64 %.123.i119.i237356, -1      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.125.i118.i236355, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.228.i117.i235354, i64 1
  %.not.i120.i238 = icmp eq i64 %i.bp, 0
  br i1 %.not.i120.i238, label %.critedge.i121.i239, label %.lr.ph357, !llvm.loop !64

.critedge.i121.i239:                              ; preds = %bb.e, %.lr.ph357, %.preheader334
  %.228.i117.i235.lcssa = phi ptr [ %.026.i113.i231.lcssa, %.preheader334 ], [ %.228.i117.i235354, %.lr.ph357 ], [ %scevgep, %bb.e ]
  %i.bs = ptrtoint ptr %.228.i117.i235.lcssa to i64
  %i.bt = ptrtoint ptr %i.ax to i64
  %i.bu = sub i64 %i.bs, %i.bt
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240: ; preds = %bb.c, %.critedge.i121.i239
  %.2.i122.i241 = phi i64 [ %i.bh, %bb.c ], [ %i.bu, %.critedge.i121.i239 ] ; 4 uses
  %i.bv = icmp ugt i64 %.2.i122.i241, 3
  br i1 %i.bv, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240
  %i.bw = mul i64 %.2.i122.i241, 135
  %i.bx = add i64 %i.bw, 1935                     ; 2 uses
  %i.by = icmp ugt i64 %i.bx, 2020
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr i8, ptr %i.ao, i64 %.2.i122.i241
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240, %bb.b, %.thread
  %.sroa.21.2 = phi i64 [ %i.bx, %bb.g ], [ 2020, %bb.f ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 2020, %bb.b ], [ 2020, %.thread ] ; 5 uses
  %.sroa.13.2 = phi i64 [ %i.at, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 0, %bb.b ], [ 0, %.thread ] ; 4 uses
  %.sroa.0254.2 = phi i64 [ %.2.i122.i241, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 0, %bb.b ], [ 0, %.thread ] ; 5 uses
  %.299.i203.in = phi i8 [ %i.ca, %bb.g ], [ %i.ap, %bb.f ], [ %i.ap, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ %i.ap, %bb.b ], [ %i.ap, %.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !1402
  store i64 %i.ar, ptr %i.a, align 16, !tbaa !30, !noalias !1402
  %i.cb = add nuw nsw i64 %i.ar, 8
  %i.cc = and i64 %i.cb, 1048575                  ; 2 uses
  store i64 %i.cc, ptr %i.af, align 8, !tbaa !30, !noalias !1402
  %i.cd = add nuw nsw i64 %i.ar, 16
  %i.ce = and i64 %i.cd, 1048575                  ; 2 uses
  store i64 %i.ce, ptr %i.ag, align 16, !tbaa !30, !noalias !1402
  %i.cf = add nuw nsw i64 %i.ar, 24
  %i.cg = and i64 %i.cf, 1048575                  ; 2 uses
  store i64 %i.cg, ptr %i.ah, align 8, !tbaa !30, !noalias !1402
  %11 = lshr i64 %.0178435, 3
  %i.ch = and i64 %11, 3
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ch
  %i.ci = load i64, ptr %12, align 8, !tbaa !30, !noalias !1402
  %i.cj = icmp ugt i64 %i.al, 7                   ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ar
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !1400
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = sub i64 %.0178435, %i.cm                ; 3 uses
  %i.co = and i64 %3, %i.cm
  %i.cp = getelementptr i8, ptr %2, i64 %i.co     ; 5 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.sroa.0254.2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %.not.i211 = icmp eq i8 %.299.i203.in, %i.cr
  br i1 %.not.i211, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.cs = icmp eq i64 %.0178435, %i.cm
  %i.ct = icmp ugt i64 %i.cn, %i.am
  %i.cu = or i1 %i.cs, %i.ct
  br i1 %i.cu, label %bb.o, label %.preheader330, !prof !72

.preheader330:                                    ; preds = %bb.i
  br i1 %i.cj, label %.lr.ph365, label %.preheader329

.preheader329:                                    ; preds = %bb.k, %.preheader330
  %.026.i.i215.lcssa = phi ptr [ %i.cp, %.preheader330 ], [ %i.dd, %bb.k ] ; 3 uses
  %.024.i.i216.lcssa = phi ptr [ %i.ao, %.preheader330 ], [ %i.dc, %bb.k ]
  %.022.i.i217.lcssa = phi i64 [ %i.al, %.preheader330 ], [ %i.de, %bb.k ] ; 3 uses
  %.not.i.i222369 = icmp eq i64 %.022.i.i217.lcssa, 0
  br i1 %.not.i.i222369, label %.critedge.i.i223, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %.preheader329
  %scevgep472 = getelementptr i8, ptr %.026.i.i215.lcssa, i64 %.022.i.i217.lcssa
  br label %.lr.ph373

.lr.ph365:                                        ; preds = %.preheader330, %bb.k
  %.022.i.i217364 = phi i64 [ %i.de, %bb.k ], [ %i.al, %.preheader330 ]
  %.024.i.i216363 = phi ptr [ %i.dc, %bb.k ], [ %i.ao, %.preheader330 ] ; 2 uses
  %.026.i.i215362 = phi ptr [ %i.dd, %bb.k ], [ %i.cp, %.preheader330 ] ; 3 uses
  %.0.copyload.i129.i226 = load i64, ptr %.024.i.i216363, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.0.copyload.i128.i227 = load i64, ptr %.026.i.i215362, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.not30.i.i228 = icmp eq i64 %.0.copyload.i129.i226, %.0.copyload.i128.i227
  br i1 %.not30.i.i228, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph365
  %i.cv = xor i64 %.0.copyload.i128.i227, %.0.copyload.i129.i226
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.cx = ptrtoint ptr %.026.i.i215362 to i64
  %i.cy = ptrtoint ptr %i.cp to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = lshr i64 %i.cw, 3
  %i.db = add i64 %i.cz, %i.da
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224

bb.k:                                             ; preds = %.lr.ph365
  %i.dc = getelementptr inbounds nuw i8, ptr %.024.i.i216363, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.026.i.i215362, i64 8 ; 2 uses
  %i.de = add i64 %.022.i.i217364, -8             ; 3 uses
  %i.df = icmp ugt i64 %i.de, 7
  br i1 %i.df, label %.lr.ph365, label %.preheader329, !llvm.loop !62

.lr.ph373:                                        ; preds = %.lr.ph373.preheader, %bb.l
  %.123.i.i221372 = phi i64 [ %i.dj, %bb.l ], [ %.022.i.i217.lcssa, %.lr.ph373.preheader ]
  %.125.i.i220371 = phi ptr [ %i.dk, %bb.l ], [ %.024.i.i216.lcssa, %.lr.ph373.preheader ] ; 2 uses
  %.228.i.i219370 = phi ptr [ %i.dl, %bb.l ], [ %.026.i.i215.lcssa, %.lr.ph373.preheader ] ; 3 uses
  %i.dg = load i8, ptr %.228.i.i219370, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.dh = load i8, ptr %.125.i.i220371, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.di = icmp eq i8 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %.critedge.i.i223

bb.l:                                             ; preds = %.lr.ph373
  %i.dj = add nsw i64 %.123.i.i221372, -1         ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.125.i.i220371, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.228.i.i219370, i64 1
  %.not.i.i222 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i222, label %.critedge.i.i223, label %.lr.ph373, !llvm.loop !64

.critedge.i.i223:                                 ; preds = %bb.l, %.lr.ph373, %.preheader329
  %.228.i.i219.lcssa = phi ptr [ %.026.i.i215.lcssa, %.preheader329 ], [ %.228.i.i219370, %.lr.ph373 ], [ %scevgep472, %bb.l ]
  %i.dm = ptrtoint ptr %.228.i.i219.lcssa to i64
  %i.dn = ptrtoint ptr %i.cp to i64
  %i.do = sub i64 %i.dm, %i.dn
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224: ; preds = %bb.j, %.critedge.i.i223
  %.2.i.i225 = phi i64 [ %i.db, %bb.j ], [ %i.do, %.critedge.i.i223 ] ; 4 uses
  %i.dp = icmp ugt i64 %.2.i.i225, 3
  br i1 %i.dp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224
  %i.dq = mul i64 %.2.i.i225, 135
  %i.dr = trunc i64 %i.cn to i32
  %i.ds = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dr, i1 true)
  %i.dt = xor i32 %i.ds, 31
  %.neg = mul nsw i32 %i.dt, -30
  %narrow = add nsw i32 %.neg, 1920
  %i.du = zext nneg i32 %narrow to i64
  %i.dv = add i64 %i.dq, %i.du                    ; 2 uses
  %i.dw = icmp ult i64 %.sroa.21.2, %i.dv
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr i8, ptr %i.ao, i64 %.2.i.i225
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224, %bb.i, %bb.h
  %.sroa.21.4 = phi i64 [ %.sroa.21.2, %bb.i ], [ %i.dv, %bb.n ], [ %.sroa.21.2, %bb.m ], [ %.sroa.21.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.21.2, %bb.h ] ; 5 uses
  %.sroa.13.4 = phi i64 [ %.sroa.13.2, %bb.i ], [ %i.cn, %bb.n ], [ %.sroa.13.2, %bb.m ], [ %.sroa.13.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.13.2, %bb.h ] ; 4 uses
  %.sroa.0254.4 = phi i64 [ %.sroa.0254.2, %bb.i ], [ %.2.i.i225, %bb.n ], [ %.sroa.0254.2, %bb.m ], [ %.sroa.0254.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.0254.2, %bb.h ] ; 5 uses
  %.6103.i212.in = phi i8 [ %.299.i203.in, %bb.i ], [ %i.dy, %bb.n ], [ %.299.i203.in, %bb.m ], [ %.299.i203.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.299.i203.in, %bb.h ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cc
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3, !noalias !1400
  %i.eb = zext i32 %i.ea to i64                   ; 3 uses
  %i.ec = sub i64 %.0178435, %i.eb                ; 3 uses
  %i.ed = and i64 %3, %i.eb
  %i.ee = getelementptr i8, ptr %2, i64 %i.ed     ; 5 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 %.sroa.0254.4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %.not.i211.1 = icmp eq i8 %.6103.i212.in, %i.eg
  br i1 %.not.i211.1, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.eh = icmp eq i64 %.0178435, %i.eb
  %i.ei = icmp ugt i64 %i.ec, %i.am
  %i.ej = or i1 %i.eh, %i.ei
  br i1 %i.ej, label %bb.v, label %.preheader330.1, !prof !72

.preheader330.1:                                  ; preds = %bb.p
  br i1 %i.cj, label %.lr.ph365.1, label %.preheader329.1

.lr.ph365.1:                                      ; preds = %.preheader330.1, %bb.r
  %.022.i.i217364.1 = phi i64 [ %i.et, %bb.r ], [ %i.al, %.preheader330.1 ]
  %.024.i.i216363.1 = phi ptr [ %i.er, %bb.r ], [ %i.ao, %.preheader330.1 ] ; 2 uses
  %.026.i.i215362.1 = phi ptr [ %i.es, %bb.r ], [ %i.ee, %.preheader330.1 ] ; 3 uses
  %.0.copyload.i129.i226.1 = load i64, ptr %.024.i.i216363.1, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.0.copyload.i128.i227.1 = load i64, ptr %.026.i.i215362.1, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.not30.i.i228.1 = icmp eq i64 %.0.copyload.i129.i226.1, %.0.copyload.i128.i227.1
  br i1 %.not30.i.i228.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph365.1
  %i.ek = xor i64 %.0.copyload.i128.i227.1, %.0.copyload.i129.i226.1
  %i.el = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ek, i1 true)
  %i.em = ptrtoint ptr %.026.i.i215362.1 to i64
  %i.en = ptrtoint ptr %i.ee to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = lshr i64 %i.el, 3
  %i.eq = add i64 %i.eo, %i.ep
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1

bb.r:                                             ; preds = %.lr.ph365.1
  %i.er = getelementptr inbounds nuw i8, ptr %.024.i.i216363.1, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.026.i.i215362.1, i64 8 ; 2 uses
  %i.et = add i64 %.022.i.i217364.1, -8           ; 3 uses
  %i.eu = icmp ugt i64 %i.et, 7
  br i1 %i.eu, label %.lr.ph365.1, label %.preheader329.1, !llvm.loop !62

.preheader329.1:                                  ; preds = %bb.r, %.preheader330.1
  %.026.i.i215.lcssa.1 = phi ptr [ %i.ee, %.preheader330.1 ], [ %i.es, %bb.r ] ; 3 uses
  %.024.i.i216.lcssa.1 = phi ptr [ %i.ao, %.preheader330.1 ], [ %i.er, %bb.r ]
  %.022.i.i217.lcssa.1 = phi i64 [ %i.al, %.preheader330.1 ], [ %i.et, %bb.r ] ; 3 uses
  %.not.i.i222369.1 = icmp eq i64 %.022.i.i217.lcssa.1, 0
  br i1 %.not.i.i222369.1, label %.critedge.i.i223.1, label %.lr.ph373.preheader.1

.lr.ph373.preheader.1:                            ; preds = %.preheader329.1
  %scevgep472.1 = getelementptr i8, ptr %.026.i.i215.lcssa.1, i64 %.022.i.i217.lcssa.1
  br label %.lr.ph373.1

.lr.ph373.1:                                      ; preds = %bb.s, %.lr.ph373.preheader.1
  %.123.i.i221372.1 = phi i64 [ %i.ey, %bb.s ], [ %.022.i.i217.lcssa.1, %.lr.ph373.preheader.1 ]
  %.125.i.i220371.1 = phi ptr [ %i.ez, %bb.s ], [ %.024.i.i216.lcssa.1, %.lr.ph373.preheader.1 ] ; 2 uses
  %.228.i.i219370.1 = phi ptr [ %i.fa, %bb.s ], [ %.026.i.i215.lcssa.1, %.lr.ph373.preheader.1 ] ; 3 uses
  %i.ev = load i8, ptr %.228.i.i219370.1, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.ew = load i8, ptr %.125.i.i220371.1, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.ex = icmp eq i8 %i.ev, %i.ew
  br i1 %i.ex, label %bb.s, label %.critedge.i.i223.1

bb.s:                                             ; preds = %.lr.ph373.1
  %i.ey = add nsw i64 %.123.i.i221372.1, -1       ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.125.i.i220371.1, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.228.i.i219370.1, i64 1
  %.not.i.i222.1 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i222.1, label %.critedge.i.i223.1, label %.lr.ph373.1, !llvm.loop !64

.critedge.i.i223.1:                               ; preds = %.lr.ph373.1, %bb.s, %.preheader329.1
  %.228.i.i219.lcssa.1 = phi ptr [ %.026.i.i215.lcssa.1, %.preheader329.1 ], [ %.228.i.i219370.1, %.lr.ph373.1 ], [ %scevgep472.1, %bb.s ]
  %i.fb = ptrtoint ptr %.228.i.i219.lcssa.1 to i64
  %i.fc = ptrtoint ptr %i.ee to i64
  %i.fd = sub i64 %i.fb, %i.fc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1: ; preds = %.critedge.i.i223.1, %bb.q
  %.2.i.i225.1 = phi i64 [ %i.eq, %bb.q ], [ %i.fd, %.critedge.i.i223.1 ] ; 4 uses
  %i.fe = icmp ugt i64 %.2.i.i225.1, 3
  br i1 %i.fe, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1
  %i.ff = mul i64 %.2.i.i225.1, 135
  %i.fg = trunc i64 %i.ec to i32
  %i.fh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fg, i1 true)
  %i.fi = xor i32 %i.fh, 31
  %.neg.1 = mul nsw i32 %i.fi, -30
  %narrow.1 = add nsw i32 %.neg.1, 1920
end_hunk_8
begin_hunk_9_@_ZL28CreateBackwardReferencesNH54mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.w:                                             ; preds = %bb.v
  %i.fw = icmp eq i64 %.0178435, %i.fq
  %i.fx = icmp ugt i64 %i.fr, %i.am
  %i.fy = or i1 %i.fw, %i.fx
  br i1 %i.fy, label %bb.ac, label %.preheader330.2, !prof !72

.preheader330.2:                                  ; preds = %bb.w
  br i1 %i.cj, label %.lr.ph365.2, label %.preheader329.2

.lr.ph365.2:                                      ; preds = %.preheader330.2, %bb.y
  %.022.i.i217364.2 = phi i64 [ %i.gi, %bb.y ], [ %i.al, %.preheader330.2 ]
  %.024.i.i216363.2 = phi ptr [ %i.gg, %bb.y ], [ %i.ao, %.preheader330.2 ] ; 2 uses
  %.026.i.i215362.2 = phi ptr [ %i.gh, %bb.y ], [ %i.ft, %.preheader330.2 ] ; 3 uses
  %.0.copyload.i129.i226.2 = load i64, ptr %.024.i.i216363.2, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.0.copyload.i128.i227.2 = load i64, ptr %.026.i.i215362.2, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.not30.i.i228.2 = icmp eq i64 %.0.copyload.i129.i226.2, %.0.copyload.i128.i227.2
  br i1 %.not30.i.i228.2, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph365.2
  %i.fz = xor i64 %.0.copyload.i128.i227.2, %.0.copyload.i129.i226.2
  %i.ga = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fz, i1 true)
  %i.gb = ptrtoint ptr %.026.i.i215362.2 to i64
  %i.gc = ptrtoint ptr %i.ft to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = lshr i64 %i.ga, 3
  %i.gf = add i64 %i.gd, %i.ge
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2

bb.y:                                             ; preds = %.lr.ph365.2
  %i.gg = getelementptr inbounds nuw i8, ptr %.024.i.i216363.2, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.026.i.i215362.2, i64 8 ; 2 uses
  %i.gi = add i64 %.022.i.i217364.2, -8           ; 3 uses
  %i.gj = icmp ugt i64 %i.gi, 7
  br i1 %i.gj, label %.lr.ph365.2, label %.preheader329.2, !llvm.loop !62

.preheader329.2:                                  ; preds = %bb.y, %.preheader330.2
  %.026.i.i215.lcssa.2 = phi ptr [ %i.ft, %.preheader330.2 ], [ %i.gh, %bb.y ] ; 3 uses
  %.024.i.i216.lcssa.2 = phi ptr [ %i.ao, %.preheader330.2 ], [ %i.gg, %bb.y ]
  %.022.i.i217.lcssa.2 = phi i64 [ %i.al, %.preheader330.2 ], [ %i.gi, %bb.y ] ; 3 uses
  %.not.i.i222369.2 = icmp eq i64 %.022.i.i217.lcssa.2, 0
  br i1 %.not.i.i222369.2, label %.critedge.i.i223.2, label %.lr.ph373.preheader.2

.lr.ph373.preheader.2:                            ; preds = %.preheader329.2
  %scevgep472.2 = getelementptr i8, ptr %.026.i.i215.lcssa.2, i64 %.022.i.i217.lcssa.2
  br label %.lr.ph373.2

.lr.ph373.2:                                      ; preds = %bb.z, %.lr.ph373.preheader.2
  %.123.i.i221372.2 = phi i64 [ %i.gn, %bb.z ], [ %.022.i.i217.lcssa.2, %.lr.ph373.preheader.2 ]
  %.125.i.i220371.2 = phi ptr [ %i.go, %bb.z ], [ %.024.i.i216.lcssa.2, %.lr.ph373.preheader.2 ] ; 2 uses
  %.228.i.i219370.2 = phi ptr [ %i.gp, %bb.z ], [ %.026.i.i215.lcssa.2, %.lr.ph373.preheader.2 ] ; 3 uses
  %i.gk = load i8, ptr %.228.i.i219370.2, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.gl = load i8, ptr %.125.i.i220371.2, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.gm = icmp eq i8 %i.gk, %i.gl
  br i1 %i.gm, label %bb.z, label %.critedge.i.i223.2

bb.z:                                             ; preds = %.lr.ph373.2
  %i.gn = add nsw i64 %.123.i.i221372.2, -1       ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.125.i.i220371.2, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.228.i.i219370.2, i64 1
  %.not.i.i222.2 = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i222.2, label %.critedge.i.i223.2, label %.lr.ph373.2, !llvm.loop !64

.critedge.i.i223.2:                               ; preds = %.lr.ph373.2, %bb.z, %.preheader329.2
  %.228.i.i219.lcssa.2 = phi ptr [ %.026.i.i215.lcssa.2, %.preheader329.2 ], [ %.228.i.i219370.2, %.lr.ph373.2 ], [ %scevgep472.2, %bb.z ]
  %i.gq = ptrtoint ptr %.228.i.i219.lcssa.2 to i64
  %i.gr = ptrtoint ptr %i.ft to i64
  %i.gs = sub i64 %i.gq, %i.gr
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2: ; preds = %.critedge.i.i223.2, %bb.x
  %.2.i.i225.2 = phi i64 [ %i.gf, %bb.x ], [ %i.gs, %.critedge.i.i223.2 ] ; 4 uses
  %i.gt = icmp ugt i64 %.2.i.i225.2, 3
  br i1 %i.gt, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2
  %i.gu = mul i64 %.2.i.i225.2, 135
  %i.gv = trunc i64 %i.fr to i32
  %i.gw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gv, i1 true)
  %i.gx = xor i32 %i.gw, 31
  %.neg.2 = mul nsw i32 %i.gx, -30
  %narrow.2 = add nsw i32 %.neg.2, 1920
  %i.gy = zext nneg i32 %narrow.2 to i64
  %i.gz = add i64 %i.gu, %i.gy                    ; 2 uses
  %i.ha = icmp ult i64 %.sroa.21.4.1, %i.gz
  br i1 %i.ha, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hb = getelementptr i8, ptr %i.ao, i64 %.2.i.i225.2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2, %bb.w, %bb.v
  %.sroa.21.4.2 = phi i64 [ %.sroa.21.4.1, %bb.w ], [ %i.gz, %bb.ab ], [ %.sroa.21.4.1, %bb.aa ], [ %.sroa.21.4.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.sroa.21.4.1, %bb.v ] ; 5 uses
  %.sroa.13.4.2 = phi i64 [ %.sroa.13.4.1, %bb.w ], [ %i.fr, %bb.ab ], [ %.sroa.13.4.1, %bb.aa ], [ %.sroa.13.4.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.sroa.13.4.1, %bb.v ] ; 4 uses
  %.sroa.0254.4.2 = phi i64 [ %.sroa.0254.4.1, %bb.w ], [ %.2.i.i225.2, %bb.ab ], [ %.sroa.0254.4.1, %bb.aa ], [ %.sroa.0254.4.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.sroa.0254.4.1, %bb.v ] ; 5 uses
  %.6103.i212.2.in = phi i8 [ %.6103.i212.1.in, %bb.w ], [ %i.hc, %bb.ab ], [ %.6103.i212.1.in, %bb.aa ], [ %.6103.i212.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.6103.i212.1.in, %bb.v ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cg
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !1400
  %i.hf = zext i32 %i.he to i64                   ; 3 uses
  %i.hg = sub i64 %.0178435, %i.hf                ; 3 uses
  %i.hh = and i64 %3, %i.hf
  %i.hi = getelementptr i8, ptr %2, i64 %i.hh     ; 5 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 %.sroa.0254.4.2
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %.not.i211.3 = icmp eq i8 %.6103.i212.2.in, %i.hk
  br i1 %.not.i211.3, label %bb.ad, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.ad:                                            ; preds = %bb.ac
  %i.hl = icmp eq i64 %.0178435, %i.hf
  %i.hm = icmp ugt i64 %i.hg, %i.am
  %i.hn = or i1 %i.hl, %i.hm
  br i1 %i.hn, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247, label %.preheader330.3, !prof !72

.preheader330.3:                                  ; preds = %bb.ad
  br i1 %i.cj, label %.lr.ph365.3, label %.preheader329.3

.lr.ph365.3:                                      ; preds = %.preheader330.3, %bb.af
  %.022.i.i217364.3 = phi i64 [ %i.hx, %bb.af ], [ %i.al, %.preheader330.3 ]
  %.024.i.i216363.3 = phi ptr [ %i.hv, %bb.af ], [ %i.ao, %.preheader330.3 ] ; 2 uses
  %.026.i.i215362.3 = phi ptr [ %i.hw, %bb.af ], [ %i.hi, %.preheader330.3 ] ; 3 uses
  %.0.copyload.i129.i226.3 = load i64, ptr %.024.i.i216363.3, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.0.copyload.i128.i227.3 = load i64, ptr %.026.i.i215362.3, align 1, !alias.scope !1398, !noalias !1400 ; 2 uses
  %.not30.i.i228.3 = icmp eq i64 %.0.copyload.i129.i226.3, %.0.copyload.i128.i227.3
  br i1 %.not30.i.i228.3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph365.3
  %i.ho = xor i64 %.0.copyload.i128.i227.3, %.0.copyload.i129.i226.3
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ho, i1 true)
  %i.hq = ptrtoint ptr %.026.i.i215362.3 to i64
  %i.hr = ptrtoint ptr %i.hi to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = add i64 %i.hs, %i.ht
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3

bb.af:                                            ; preds = %.lr.ph365.3
  %i.hv = getelementptr inbounds nuw i8, ptr %.024.i.i216363.3, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.026.i.i215362.3, i64 8 ; 2 uses
  %i.hx = add i64 %.022.i.i217364.3, -8           ; 3 uses
  %i.hy = icmp ugt i64 %i.hx, 7
  br i1 %i.hy, label %.lr.ph365.3, label %.preheader329.3, !llvm.loop !62

.preheader329.3:                                  ; preds = %bb.af, %.preheader330.3
  %.026.i.i215.lcssa.3 = phi ptr [ %i.hi, %.preheader330.3 ], [ %i.hw, %bb.af ] ; 3 uses
  %.024.i.i216.lcssa.3 = phi ptr [ %i.ao, %.preheader330.3 ], [ %i.hv, %bb.af ]
  %.022.i.i217.lcssa.3 = phi i64 [ %i.al, %.preheader330.3 ], [ %i.hx, %bb.af ] ; 3 uses
  %.not.i.i222369.3 = icmp eq i64 %.022.i.i217.lcssa.3, 0
  br i1 %.not.i.i222369.3, label %.critedge.i.i223.3, label %.lr.ph373.preheader.3

.lr.ph373.preheader.3:                            ; preds = %.preheader329.3
  %scevgep472.3 = getelementptr i8, ptr %.026.i.i215.lcssa.3, i64 %.022.i.i217.lcssa.3
  br label %.lr.ph373.3

.lr.ph373.3:                                      ; preds = %bb.ag, %.lr.ph373.preheader.3
  %.123.i.i221372.3 = phi i64 [ %i.ic, %bb.ag ], [ %.022.i.i217.lcssa.3, %.lr.ph373.preheader.3 ]
  %.125.i.i220371.3 = phi ptr [ %i.id, %bb.ag ], [ %.024.i.i216.lcssa.3, %.lr.ph373.preheader.3 ] ; 2 uses
  %.228.i.i219370.3 = phi ptr [ %i.ie, %bb.ag ], [ %.026.i.i215.lcssa.3, %.lr.ph373.preheader.3 ] ; 3 uses
  %i.hz = load i8, ptr %.228.i.i219370.3, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.ia = load i8, ptr %.125.i.i220371.3, align 1, !tbaa !54, !alias.scope !1398, !noalias !1400
  %i.ib = icmp eq i8 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ag, label %.critedge.i.i223.3

bb.ag:                                            ; preds = %.lr.ph373.3
  %i.ic = add nsw i64 %.123.i.i221372.3, -1       ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.125.i.i220371.3, i64 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.228.i.i219370.3, i64 1
  %.not.i.i222.3 = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i222.3, label %.critedge.i.i223.3, label %.lr.ph373.3, !llvm.loop !64

.critedge.i.i223.3:                               ; preds = %.lr.ph373.3, %bb.ag, %.preheader329.3
  %.228.i.i219.lcssa.3 = phi ptr [ %.026.i.i215.lcssa.3, %.preheader329.3 ], [ %.228.i.i219370.3, %.lr.ph373.3 ], [ %scevgep472.3, %bb.ag ]
  %i.if = ptrtoint ptr %.228.i.i219.lcssa.3 to i64
  %i.ig = ptrtoint ptr %i.hi to i64
  %i.ih = sub i64 %i.if, %i.ig
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3: ; preds = %.critedge.i.i223.3, %bb.ae
  %.2.i.i225.3 = phi i64 [ %i.hu, %bb.ae ], [ %i.ih, %.critedge.i.i223.3 ] ; 3 uses
  %i.ii = icmp ugt i64 %.2.i.i225.3, 3
  br i1 %i.ii, label %bb.ah, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3
  %i.ij = mul i64 %.2.i.i225.3, 135
  %i.ik = trunc i64 %i.hg to i32
  %i.il = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ik, i1 true)
  %i.im = xor i32 %i.il, 31
  %.neg.3 = mul nsw i32 %i.im, -30
  %narrow.3 = add nsw i32 %.neg.3, 1920
  %i.in = zext nneg i32 %narrow.3 to i64
  %i.io = add i64 %i.ij, %i.in                    ; 2 uses
  %i.ip = icmp ult i64 %.sroa.21.4.2, %i.io
  br i1 %i.ip, label %bb.ai, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.ai:                                            ; preds = %bb.ah
  br label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247: ; preds = %bb.ai, %bb.ah, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3, %bb.ad, %bb.ac
  %.sroa.21.4.3 = phi i64 [ %.sroa.21.4.2, %bb.ad ], [ %i.io, %bb.ai ], [ %.sroa.21.4.2, %bb.ah ], [ %.sroa.21.4.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3 ], [ %.sroa.21.4.2, %bb.ac ] ; 2 uses
  %.sroa.13.4.3 = phi i64 [ %.sroa.13.4.2, %bb.ad ], [ %i.hg, %bb.ai ], [ %.sroa.13.4.2, %bb.ah ], [ %.sroa.13.4.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3 ], [ %.sroa.13.4.2, %bb.ac ]
  %.sroa.0254.4.3 = phi i64 [ %.sroa.0254.4.2, %bb.ad ], [ %.2.i.i225.3, %bb.ai ], [ %.sroa.0254.4.2, %bb.ah ], [ %.sroa.0254.4.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3 ], [ %.sroa.0254.4.2, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6, !noalias !1402
  %i.iq = trunc i64 %.0178435 to i32
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ci
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !3, !noalias !1400
  %i.is = icmp ugt i64 %.sroa.21.4.3, 2020
  br i1 %i.is, label %.preheader331, label %bb.cu

.preheader331:                                    ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247
  %i.it = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !1403, !noalias !1406
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader331, %bb.bs
  %.sroa.21.0 = phi i64 [ %.sroa.10.2.3, %bb.bs ], [ %.sroa.21.4.3, %.preheader331 ]
  %.sroa.13.0 = phi i64 [ %.sroa.7.2.3, %bb.bs ], [ %.sroa.13.4.3, %.preheader331 ]
  %.sroa.0254.0 = phi i64 [ %.sroa.0.2.3, %bb.bs ], [ %.sroa.0254.4.3, %.preheader331 ] ; 2 uses
  %.1179 = phi i64 [ %i.ja, %bb.bs ], [ %.0178435, %.preheader331 ] ; 3 uses
  %.1176 = phi i64 [ %i.ri, %bb.bs ], [ %.0175436, %.preheader331 ] ; 2 uses
  %.0172.in = phi i64 [ %.0172, %bb.bs ], [ %i.al, %.preheader331 ]
  %.0165 = phi i32 [ %i.rj, %bb.bs ], [ 0, %.preheader331 ] ; 2 uses
  %.0172 = add i64 %.0172.in, -1                  ; 14 uses
  %i.iv = load i32, ptr %i.n, align 4, !tbaa !31
  %i.iw = icmp slt i32 %i.iv, 5
  %i.ix = add i64 %.sroa.0254.0, -1
  %i.iy = tail call i64 @llvm.umin.i64(i64 %i.ix, i64 %.0172)
  %i.iz = select i1 %i.iw, i64 %i.iy, i64 0       ; 6 uses
  %i.ja = add i64 %.1179, 1                       ; 16 uses
  %i.jb = tail call noundef i64 @llvm.umin.i64(i64 %i.ja, i64 %i.g) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.jc = and i64 %i.ja, %3
  %i.jd = getelementptr i8, ptr %2, i64 %i.jc     ; 16 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.iz
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411 ; 5 uses
  %.val252 = load i64, ptr %i.jd, align 1
  %i.jg = mul i64 %.val252, -2064201331557805312
  %i.jh = lshr i64 %i.jg, 44                      ; 5 uses
  %i.ji = sub i64 %i.ja, %i.iu                    ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.ja
  br i1 %i.jj, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.jk = and i64 %i.z, %i.ji
  %i.jl = getelementptr i8, ptr %2, i64 %i.jk     ; 5 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 %i.iz
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.jo = icmp eq i8 %i.jf, %i.jn
  br i1 %i.jo, label %.preheader328, label %bb.aq

.preheader328:                                    ; preds = %bb.ak
  %i.jp = icmp ugt i64 %.0172, 7
  br i1 %i.jp, label %.lr.ph397, label %.preheader327

.preheader327:                                    ; preds = %bb.am, %.preheader328
  %.026.i113.i.lcssa = phi ptr [ %i.jl, %.preheader328 ], [ %i.jy, %bb.am ] ; 3 uses
  %.024.i114.i.lcssa = phi ptr [ %i.jd, %.preheader328 ], [ %i.jx, %bb.am ]
  %.022.i115.i.lcssa = phi i64 [ %.0172, %.preheader328 ], [ %i.jz, %bb.am ] ; 3 uses
  %.not.i120.i401 = icmp eq i64 %.022.i115.i.lcssa, 0
  br i1 %.not.i120.i401, label %.critedge.i121.i, label %.lr.ph405.preheader

.lr.ph405.preheader:                              ; preds = %.preheader327
  %scevgep473 = getelementptr i8, ptr %.026.i113.i.lcssa, i64 %.022.i115.i.lcssa
  br label %.lr.ph405

.lr.ph397:                                        ; preds = %.preheader328, %bb.am
  %.022.i115.i396 = phi i64 [ %i.jz, %bb.am ], [ %.0172, %.preheader328 ]
  %.024.i114.i395 = phi ptr [ %i.jx, %bb.am ], [ %i.jd, %.preheader328 ] ; 2 uses
  %.026.i113.i394 = phi ptr [ %i.jy, %bb.am ], [ %i.jl, %.preheader328 ] ; 3 uses
  %.0.copyload.i127.i = load i64, ptr %.024.i114.i395, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i113.i394, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.not30.i123.i = icmp eq i64 %.0.copyload.i127.i, %.0.copyload.i.i
  br i1 %.not30.i123.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph397
  %i.jq = xor i64 %.0.copyload.i.i, %.0.copyload.i127.i
  %i.jr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jq, i1 true)
  %i.js = ptrtoint ptr %.026.i113.i394 to i64
  %i.jt = ptrtoint ptr %i.jl to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = lshr i64 %i.jr, 3
  %i.jw = add i64 %i.ju, %i.jv
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

bb.am:                                            ; preds = %.lr.ph397
  %i.jx = getelementptr inbounds nuw i8, ptr %.024.i114.i395, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.026.i113.i394, i64 8 ; 2 uses
  %i.jz = add i64 %.022.i115.i396, -8             ; 3 uses
  %i.ka = icmp ugt i64 %i.jz, 7
  br i1 %i.ka, label %.lr.ph397, label %.preheader327, !llvm.loop !62

.lr.ph405:                                        ; preds = %.lr.ph405.preheader, %bb.an
  %.123.i119.i404 = phi i64 [ %i.ke, %bb.an ], [ %.022.i115.i.lcssa, %.lr.ph405.preheader ]
  %.125.i118.i403 = phi ptr [ %i.kf, %bb.an ], [ %.024.i114.i.lcssa, %.lr.ph405.preheader ] ; 2 uses
  %.228.i117.i402 = phi ptr [ %i.kg, %bb.an ], [ %.026.i113.i.lcssa, %.lr.ph405.preheader ] ; 3 uses
  %i.kb = load i8, ptr %.228.i117.i402, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.kc = load i8, ptr %.125.i118.i403, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.kd = icmp eq i8 %i.kb, %i.kc
  br i1 %i.kd, label %bb.an, label %.critedge.i121.i

bb.an:                                            ; preds = %.lr.ph405
  %i.ke = add nsw i64 %.123.i119.i404, -1         ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.125.i118.i403, i64 1
  %i.kg = getelementptr inbounds nuw i8, ptr %.228.i117.i402, i64 1
  %.not.i120.i = icmp eq i64 %i.ke, 0
  br i1 %.not.i120.i, label %.critedge.i121.i, label %.lr.ph405, !llvm.loop !64

.critedge.i121.i:                                 ; preds = %bb.an, %.lr.ph405, %.preheader327
  %.228.i117.i.lcssa = phi ptr [ %.026.i113.i.lcssa, %.preheader327 ], [ %.228.i117.i402, %.lr.ph405 ], [ %scevgep473, %bb.an ]
  %i.kh = ptrtoint ptr %.228.i117.i.lcssa to i64
  %i.ki = ptrtoint ptr %i.jl to i64
  %i.kj = sub i64 %i.kh, %i.ki
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i: ; preds = %bb.al, %.critedge.i121.i
  %.2.i122.i = phi i64 [ %i.jw, %bb.al ], [ %i.kj, %.critedge.i121.i ] ; 4 uses
  %i.kk = icmp ugt i64 %.2.i122.i, 3
  br i1 %i.kk, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i
  %i.kl = mul i64 %.2.i122.i, 135
  %i.km = add i64 %i.kl, 1935                     ; 2 uses
  %i.kn = icmp ugt i64 %i.km, 2020
  br i1 %i.kn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ko = getelementptr i8, ptr %i.jd, i64 %.2.i122.i
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i, %bb.ak, %bb.aj
  %.sroa.10.0 = phi i64 [ %i.km, %bb.ap ], [ 2020, %bb.ao ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 2020, %bb.ak ], [ 2020, %bb.aj ] ; 5 uses
  %.sroa.7.0 = phi i64 [ %i.iu, %bb.ap ], [ 0, %bb.ao ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 0, %bb.ak ], [ 0, %bb.aj ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.2.i122.i, %bb.ap ], [ %i.iz, %bb.ao ], [ %i.iz, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ %i.iz, %bb.ak ], [ %i.iz, %bb.aj ] ; 5 uses
  %.299.i.in = phi i8 [ %i.kp, %bb.ap ], [ %i.jf, %bb.ao ], [ %i.jf, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ %i.jf, %bb.ak ], [ %i.jf, %bb.aj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !1412
  store i64 %i.jh, ptr %i.b, align 16, !tbaa !30, !noalias !1412
  %i.kq = add nuw nsw i64 %i.jh, 8
  %i.kr = and i64 %i.kq, 1048575                  ; 2 uses
  store i64 %i.kr, ptr %i.ai, align 8, !tbaa !30, !noalias !1412
  %i.ks = add nuw nsw i64 %i.jh, 16
  %i.kt = and i64 %i.ks, 1048575                  ; 2 uses
  store i64 %i.kt, ptr %i.aj, align 16, !tbaa !30, !noalias !1412
  %i.ku = add nuw nsw i64 %i.jh, 24
  %i.kv = and i64 %i.ku, 1048575                  ; 2 uses
  store i64 %i.kv, ptr %i.ak, align 8, !tbaa !30, !noalias !1412
  %13 = lshr i64 %i.ja, 3
  %i.kw = and i64 %13, 3
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kw
  %i.kx = load i64, ptr %14, align 8, !tbaa !30, !noalias !1412
  %i.ky = icmp ugt i64 %.0172, 7                  ; 4 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.jh
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3, !noalias !1411
  %i.lb = zext i32 %i.la to i64                   ; 3 uses
  %i.lc = sub i64 %i.ja, %i.lb                    ; 3 uses
  %i.ld = and i64 %3, %i.lb
  %i.le = getelementptr i8, ptr %2, i64 %i.ld     ; 5 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 %.sroa.0.0
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %.not.i202 = icmp eq i8 %.299.i.in, %i.lg
  br i1 %.not.i202, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.lh = icmp eq i64 %i.ja, %i.lb
  %i.li = icmp ugt i64 %i.lc, %i.jb
  %i.lj = or i1 %i.lh, %i.li
  br i1 %i.lj, label %bb.ax, label %.preheader326, !prof !72

.preheader326:                                    ; preds = %bb.ar
  br i1 %i.ky, label %.lr.ph413, label %.preheader

.preheader:                                       ; preds = %bb.at, %.preheader326
  %.026.i.i.lcssa = phi ptr [ %i.le, %.preheader326 ], [ %i.ls, %bb.at ] ; 3 uses
  %.024.i.i.lcssa = phi ptr [ %i.jd, %.preheader326 ], [ %i.lr, %bb.at ]
  %.022.i.i.lcssa = phi i64 [ %.0172, %.preheader326 ], [ %i.lt, %bb.at ] ; 3 uses
  %.not.i.i417 = icmp eq i64 %.022.i.i.lcssa, 0
  br i1 %.not.i.i417, label %.critedge.i.i, label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %.preheader
  %scevgep474 = getelementptr i8, ptr %.026.i.i.lcssa, i64 %.022.i.i.lcssa
  br label %.lr.ph421

.lr.ph413:                                        ; preds = %.preheader326, %bb.at
  %.022.i.i412 = phi i64 [ %i.lt, %bb.at ], [ %.0172, %.preheader326 ]
  %.024.i.i411 = phi ptr [ %i.lr, %bb.at ], [ %i.jd, %.preheader326 ] ; 2 uses
  %.026.i.i410 = phi ptr [ %i.ls, %bb.at ], [ %i.le, %.preheader326 ] ; 3 uses
  %.0.copyload.i129.i = load i64, ptr %.024.i.i411, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.0.copyload.i128.i = load i64, ptr %.026.i.i410, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i129.i, %.0.copyload.i128.i
  br i1 %.not30.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph413
  %i.lk = xor i64 %.0.copyload.i128.i, %.0.copyload.i129.i
  %i.ll = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lk, i1 true)
  %i.lm = ptrtoint ptr %.026.i.i410 to i64
  %i.ln = ptrtoint ptr %i.le to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = lshr i64 %i.ll, 3
  %i.lq = add i64 %i.lo, %i.lp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

bb.at:                                            ; preds = %.lr.ph413
  %i.lr = getelementptr inbounds nuw i8, ptr %.024.i.i411, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.026.i.i410, i64 8 ; 2 uses
  %i.lt = add i64 %.022.i.i412, -8                ; 3 uses
  %i.lu = icmp ugt i64 %i.lt, 7
  br i1 %i.lu, label %.lr.ph413, label %.preheader, !llvm.loop !62

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %bb.au
  %.123.i.i420 = phi i64 [ %i.ly, %bb.au ], [ %.022.i.i.lcssa, %.lr.ph421.preheader ]
  %.125.i.i419 = phi ptr [ %i.lz, %bb.au ], [ %.024.i.i.lcssa, %.lr.ph421.preheader ] ; 2 uses
  %.228.i.i418 = phi ptr [ %i.ma, %bb.au ], [ %.026.i.i.lcssa, %.lr.ph421.preheader ] ; 3 uses
  %i.lv = load i8, ptr %.228.i.i418, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.lw = load i8, ptr %.125.i.i419, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.lx = icmp eq i8 %i.lv, %i.lw
  br i1 %i.lx, label %bb.au, label %.critedge.i.i

bb.au:                                            ; preds = %.lr.ph421
  %i.ly = add nsw i64 %.123.i.i420, -1            ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.125.i.i419, i64 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.228.i.i418, i64 1
  %.not.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph421, !llvm.loop !64

.critedge.i.i:                                    ; preds = %bb.au, %.lr.ph421, %.preheader
  %.228.i.i.lcssa = phi ptr [ %.026.i.i.lcssa, %.preheader ], [ %.228.i.i418, %.lr.ph421 ], [ %scevgep474, %bb.au ]
  %i.mb = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.mc = ptrtoint ptr %i.le to i64
  %i.md = sub i64 %i.mb, %i.mc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i: ; preds = %bb.as, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.lq, %bb.as ], [ %i.md, %.critedge.i.i ] ; 4 uses
  %i.me = icmp ugt i64 %.2.i.i, 3
  br i1 %i.me, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %i.mf = mul i64 %.2.i.i, 135
  %i.mg = trunc i64 %i.lc to i32
  %i.mh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mg, i1 true)
  %i.mi = xor i32 %i.mh, 31
  %.neg442 = mul nsw i32 %i.mi, -30
  %narrow441 = add nsw i32 %.neg442, 1920
  %i.mj = zext nneg i32 %narrow441 to i64
  %i.mk = add i64 %i.mf, %i.mj                    ; 2 uses
  %i.ml = icmp ult i64 %.sroa.10.0, %i.mk
  br i1 %i.ml, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mm = getelementptr i8, ptr %i.jd, i64 %.2.i.i
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i, %bb.ar, %bb.aq
  %.sroa.10.2 = phi i64 [ %.sroa.10.0, %bb.ar ], [ %i.mk, %bb.aw ], [ %.sroa.10.0, %bb.av ], [ %.sroa.10.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.10.0, %bb.aq ] ; 5 uses
  %.sroa.7.2 = phi i64 [ %.sroa.7.0, %bb.ar ], [ %i.lc, %bb.aw ], [ %.sroa.7.0, %bb.av ], [ %.sroa.7.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.7.0, %bb.aq ] ; 4 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.ar ], [ %.2.i.i, %bb.aw ], [ %.sroa.0.0, %bb.av ], [ %.sroa.0.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.0.0, %bb.aq ] ; 5 uses
  %.6103.i.in = phi i8 [ %.299.i.in, %bb.ar ], [ %i.mn, %bb.aw ], [ %.299.i.in, %bb.av ], [ %.299.i.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.299.i.in, %bb.aq ] ; 5 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.kr
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3, !noalias !1411
  %i.mq = zext i32 %i.mp to i64                   ; 3 uses
  %i.mr = sub i64 %i.ja, %i.mq                    ; 3 uses
  %i.ms = and i64 %3, %i.mq
  %i.mt = getelementptr i8, ptr %2, i64 %i.ms     ; 5 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 %.sroa.0.2
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %.not.i202.1 = icmp eq i8 %.6103.i.in, %i.mv
  br i1 %.not.i202.1, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.mw = icmp eq i64 %i.ja, %i.mq
  %i.mx = icmp ugt i64 %i.mr, %i.jb
  %i.my = or i1 %i.mw, %i.mx
  br i1 %i.my, label %bb.be, label %.preheader326.1, !prof !72

.preheader326.1:                                  ; preds = %bb.ay
  br i1 %i.ky, label %.lr.ph413.1, label %.preheader.1

.lr.ph413.1:                                      ; preds = %.preheader326.1, %bb.ba
  %.022.i.i412.1 = phi i64 [ %i.ni, %bb.ba ], [ %.0172, %.preheader326.1 ]
  %.024.i.i411.1 = phi ptr [ %i.ng, %bb.ba ], [ %i.jd, %.preheader326.1 ] ; 2 uses
  %.026.i.i410.1 = phi ptr [ %i.nh, %bb.ba ], [ %i.mt, %.preheader326.1 ] ; 3 uses
  %.0.copyload.i129.i.1 = load i64, ptr %.024.i.i411.1, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.0.copyload.i128.i.1 = load i64, ptr %.026.i.i410.1, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.not30.i.i.1 = icmp eq i64 %.0.copyload.i129.i.1, %.0.copyload.i128.i.1
  br i1 %.not30.i.i.1, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph413.1
  %i.mz = xor i64 %.0.copyload.i128.i.1, %.0.copyload.i129.i.1
  %i.na = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mz, i1 true)
  %i.nb = ptrtoint ptr %.026.i.i410.1 to i64
  %i.nc = ptrtoint ptr %i.mt to i64
  %i.nd = sub i64 %i.nb, %i.nc
  %i.ne = lshr i64 %i.na, 3
  %i.nf = add i64 %i.nd, %i.ne
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

bb.ba:                                            ; preds = %.lr.ph413.1
  %i.ng = getelementptr inbounds nuw i8, ptr %.024.i.i411.1, i64 8 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.026.i.i410.1, i64 8 ; 2 uses
  %i.ni = add i64 %.022.i.i412.1, -8              ; 3 uses
  %i.nj = icmp ugt i64 %i.ni, 7
  br i1 %i.nj, label %.lr.ph413.1, label %.preheader.1, !llvm.loop !62

.preheader.1:                                     ; preds = %bb.ba, %.preheader326.1
  %.026.i.i.lcssa.1 = phi ptr [ %i.mt, %.preheader326.1 ], [ %i.nh, %bb.ba ] ; 3 uses
  %.024.i.i.lcssa.1 = phi ptr [ %i.jd, %.preheader326.1 ], [ %i.ng, %bb.ba ]
  %.022.i.i.lcssa.1 = phi i64 [ %.0172, %.preheader326.1 ], [ %i.ni, %bb.ba ] ; 3 uses
  %.not.i.i417.1 = icmp eq i64 %.022.i.i.lcssa.1, 0
  br i1 %.not.i.i417.1, label %.critedge.i.i.1, label %.lr.ph421.preheader.1

.lr.ph421.preheader.1:                            ; preds = %.preheader.1
  %scevgep474.1 = getelementptr i8, ptr %.026.i.i.lcssa.1, i64 %.022.i.i.lcssa.1
  br label %.lr.ph421.1

.lr.ph421.1:                                      ; preds = %bb.bb, %.lr.ph421.preheader.1
  %.123.i.i420.1 = phi i64 [ %i.nn, %bb.bb ], [ %.022.i.i.lcssa.1, %.lr.ph421.preheader.1 ]
  %.125.i.i419.1 = phi ptr [ %i.no, %bb.bb ], [ %.024.i.i.lcssa.1, %.lr.ph421.preheader.1 ] ; 2 uses
  %.228.i.i418.1 = phi ptr [ %i.np, %bb.bb ], [ %.026.i.i.lcssa.1, %.lr.ph421.preheader.1 ] ; 3 uses
  %i.nk = load i8, ptr %.228.i.i418.1, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.nl = load i8, ptr %.125.i.i419.1, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.nm = icmp eq i8 %i.nk, %i.nl
  br i1 %i.nm, label %bb.bb, label %.critedge.i.i.1

bb.bb:                                            ; preds = %.lr.ph421.1
  %i.nn = add nsw i64 %.123.i.i420.1, -1          ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.125.i.i419.1, i64 1
  %i.np = getelementptr inbounds nuw i8, ptr %.228.i.i418.1, i64 1
  %.not.i.i.1 = icmp eq i64 %i.nn, 0
  br i1 %.not.i.i.1, label %.critedge.i.i.1, label %.lr.ph421.1, !llvm.loop !64

.critedge.i.i.1:                                  ; preds = %.lr.ph421.1, %bb.bb, %.preheader.1
  %.228.i.i.lcssa.1 = phi ptr [ %.026.i.i.lcssa.1, %.preheader.1 ], [ %.228.i.i418.1, %.lr.ph421.1 ], [ %scevgep474.1, %bb.bb ]
  %i.nq = ptrtoint ptr %.228.i.i.lcssa.1 to i64
  %i.nr = ptrtoint ptr %i.mt to i64
  %i.ns = sub i64 %i.nq, %i.nr
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1: ; preds = %.critedge.i.i.1, %bb.az
  %.2.i.i.1 = phi i64 [ %i.nf, %bb.az ], [ %i.ns, %.critedge.i.i.1 ] ; 4 uses
  %i.nt = icmp ugt i64 %.2.i.i.1, 3
  br i1 %i.nt, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1
  %i.nu = mul i64 %.2.i.i.1, 135
  %i.nv = trunc i64 %i.mr to i32
  %i.nw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nv, i1 true)
  %i.nx = xor i32 %i.nw, 31
  %.neg442.1 = mul nsw i32 %i.nx, -30
  %narrow441.1 = add nsw i32 %.neg442.1, 1920
end_hunk_9
begin_hunk_10_@_ZL28CreateBackwardReferencesNH54mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.bf:                                            ; preds = %bb.be
  %i.ol = icmp eq i64 %i.ja, %i.of
  %i.om = icmp ugt i64 %i.og, %i.jb
  %i.on = or i1 %i.ol, %i.om
  br i1 %i.on, label %bb.bl, label %.preheader326.2, !prof !72

.preheader326.2:                                  ; preds = %bb.bf
  br i1 %i.ky, label %.lr.ph413.2, label %.preheader.2

.lr.ph413.2:                                      ; preds = %.preheader326.2, %bb.bh
  %.022.i.i412.2 = phi i64 [ %i.ox, %bb.bh ], [ %.0172, %.preheader326.2 ]
  %.024.i.i411.2 = phi ptr [ %i.ov, %bb.bh ], [ %i.jd, %.preheader326.2 ] ; 2 uses
  %.026.i.i410.2 = phi ptr [ %i.ow, %bb.bh ], [ %i.oi, %.preheader326.2 ] ; 3 uses
  %.0.copyload.i129.i.2 = load i64, ptr %.024.i.i411.2, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.0.copyload.i128.i.2 = load i64, ptr %.026.i.i410.2, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.not30.i.i.2 = icmp eq i64 %.0.copyload.i129.i.2, %.0.copyload.i128.i.2
  br i1 %.not30.i.i.2, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph413.2
  %i.oo = xor i64 %.0.copyload.i128.i.2, %.0.copyload.i129.i.2
  %i.op = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.oo, i1 true)
  %i.oq = ptrtoint ptr %.026.i.i410.2 to i64
  %i.or = ptrtoint ptr %i.oi to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = lshr i64 %i.op, 3
  %i.ou = add i64 %i.os, %i.ot
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2

bb.bh:                                            ; preds = %.lr.ph413.2
  %i.ov = getelementptr inbounds nuw i8, ptr %.024.i.i411.2, i64 8 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.026.i.i410.2, i64 8 ; 2 uses
  %i.ox = add i64 %.022.i.i412.2, -8              ; 3 uses
  %i.oy = icmp ugt i64 %i.ox, 7
  br i1 %i.oy, label %.lr.ph413.2, label %.preheader.2, !llvm.loop !62

.preheader.2:                                     ; preds = %bb.bh, %.preheader326.2
  %.026.i.i.lcssa.2 = phi ptr [ %i.oi, %.preheader326.2 ], [ %i.ow, %bb.bh ] ; 3 uses
  %.024.i.i.lcssa.2 = phi ptr [ %i.jd, %.preheader326.2 ], [ %i.ov, %bb.bh ]
  %.022.i.i.lcssa.2 = phi i64 [ %.0172, %.preheader326.2 ], [ %i.ox, %bb.bh ] ; 3 uses
  %.not.i.i417.2 = icmp eq i64 %.022.i.i.lcssa.2, 0
  br i1 %.not.i.i417.2, label %.critedge.i.i.2, label %.lr.ph421.preheader.2

.lr.ph421.preheader.2:                            ; preds = %.preheader.2
  %scevgep474.2 = getelementptr i8, ptr %.026.i.i.lcssa.2, i64 %.022.i.i.lcssa.2
  br label %.lr.ph421.2

.lr.ph421.2:                                      ; preds = %bb.bi, %.lr.ph421.preheader.2
  %.123.i.i420.2 = phi i64 [ %i.pc, %bb.bi ], [ %.022.i.i.lcssa.2, %.lr.ph421.preheader.2 ]
  %.125.i.i419.2 = phi ptr [ %i.pd, %bb.bi ], [ %.024.i.i.lcssa.2, %.lr.ph421.preheader.2 ] ; 2 uses
  %.228.i.i418.2 = phi ptr [ %i.pe, %bb.bi ], [ %.026.i.i.lcssa.2, %.lr.ph421.preheader.2 ] ; 3 uses
  %i.oz = load i8, ptr %.228.i.i418.2, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.pa = load i8, ptr %.125.i.i419.2, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.pb = icmp eq i8 %i.oz, %i.pa
  br i1 %i.pb, label %bb.bi, label %.critedge.i.i.2

bb.bi:                                            ; preds = %.lr.ph421.2
  %i.pc = add nsw i64 %.123.i.i420.2, -1          ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.125.i.i419.2, i64 1
  %i.pe = getelementptr inbounds nuw i8, ptr %.228.i.i418.2, i64 1
  %.not.i.i.2 = icmp eq i64 %i.pc, 0
  br i1 %.not.i.i.2, label %.critedge.i.i.2, label %.lr.ph421.2, !llvm.loop !64

.critedge.i.i.2:                                  ; preds = %.lr.ph421.2, %bb.bi, %.preheader.2
  %.228.i.i.lcssa.2 = phi ptr [ %.026.i.i.lcssa.2, %.preheader.2 ], [ %.228.i.i418.2, %.lr.ph421.2 ], [ %scevgep474.2, %bb.bi ]
  %i.pf = ptrtoint ptr %.228.i.i.lcssa.2 to i64
  %i.pg = ptrtoint ptr %i.oi to i64
  %i.ph = sub i64 %i.pf, %i.pg
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2: ; preds = %.critedge.i.i.2, %bb.bg
  %.2.i.i.2 = phi i64 [ %i.ou, %bb.bg ], [ %i.ph, %.critedge.i.i.2 ] ; 4 uses
  %i.pi = icmp ugt i64 %.2.i.i.2, 3
  br i1 %i.pi, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2
  %i.pj = mul i64 %.2.i.i.2, 135
  %i.pk = trunc i64 %i.og to i32
  %i.pl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pk, i1 true)
  %i.pm = xor i32 %i.pl, 31
  %.neg442.2 = mul nsw i32 %i.pm, -30
  %narrow441.2 = add nsw i32 %.neg442.2, 1920
  %i.pn = zext nneg i32 %narrow441.2 to i64
  %i.po = add i64 %i.pj, %i.pn                    ; 2 uses
  %i.pp = icmp ult i64 %.sroa.10.2.1, %i.po
  br i1 %i.pp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.pq = getelementptr i8, ptr %i.jd, i64 %.2.i.i.2
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2, %bb.bf, %bb.be
  %.sroa.10.2.2 = phi i64 [ %.sroa.10.2.1, %bb.bf ], [ %i.po, %bb.bk ], [ %.sroa.10.2.1, %bb.bj ], [ %.sroa.10.2.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.10.2.1, %bb.be ] ; 5 uses
  %.sroa.7.2.2 = phi i64 [ %.sroa.7.2.1, %bb.bf ], [ %i.og, %bb.bk ], [ %.sroa.7.2.1, %bb.bj ], [ %.sroa.7.2.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.7.2.1, %bb.be ] ; 4 uses
  %.sroa.0.2.2 = phi i64 [ %.sroa.0.2.1, %bb.bf ], [ %.2.i.i.2, %bb.bk ], [ %.sroa.0.2.1, %bb.bj ], [ %.sroa.0.2.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.0.2.1, %bb.be ] ; 5 uses
  %.6103.i.2.in = phi i8 [ %.6103.i.1.in, %bb.bf ], [ %i.pr, %bb.bk ], [ %.6103.i.1.in, %bb.bj ], [ %.6103.i.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.6103.i.1.in, %bb.be ]
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.kv
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !3, !noalias !1411
  %i.pu = zext i32 %i.pt to i64                   ; 3 uses
  %i.pv = sub i64 %i.ja, %i.pu                    ; 3 uses
  %i.pw = and i64 %3, %i.pu
  %i.px = getelementptr i8, ptr %2, i64 %i.pw     ; 5 uses
  %i.py = getelementptr i8, ptr %i.px, i64 %.sroa.0.2.2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %.not.i202.3 = icmp eq i8 %.6103.i.2.in, %i.pz
  br i1 %.not.i202.3, label %bb.bm, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.bm:                                            ; preds = %bb.bl
  %i.qa = icmp eq i64 %i.ja, %i.pu
  %i.qb = icmp ugt i64 %i.pv, %i.jb
  %i.qc = or i1 %i.qa, %i.qb
  br i1 %i.qc, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %.preheader326.3, !prof !72

.preheader326.3:                                  ; preds = %bb.bm
  br i1 %i.ky, label %.lr.ph413.3, label %.preheader.3

.lr.ph413.3:                                      ; preds = %.preheader326.3, %bb.bo
  %.022.i.i412.3 = phi i64 [ %i.qm, %bb.bo ], [ %.0172, %.preheader326.3 ]
  %.024.i.i411.3 = phi ptr [ %i.qk, %bb.bo ], [ %i.jd, %.preheader326.3 ] ; 2 uses
  %.026.i.i410.3 = phi ptr [ %i.ql, %bb.bo ], [ %i.px, %.preheader326.3 ] ; 3 uses
  %.0.copyload.i129.i.3 = load i64, ptr %.024.i.i411.3, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.0.copyload.i128.i.3 = load i64, ptr %.026.i.i410.3, align 1, !alias.scope !1410, !noalias !1411 ; 2 uses
  %.not30.i.i.3 = icmp eq i64 %.0.copyload.i129.i.3, %.0.copyload.i128.i.3
  br i1 %.not30.i.i.3, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph413.3
  %i.qd = xor i64 %.0.copyload.i128.i.3, %.0.copyload.i129.i.3
  %i.qe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.qd, i1 true)
  %i.qf = ptrtoint ptr %.026.i.i410.3 to i64
  %i.qg = ptrtoint ptr %i.px to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = lshr i64 %i.qe, 3
  %i.qj = add i64 %i.qh, %i.qi
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3

bb.bo:                                            ; preds = %.lr.ph413.3
  %i.qk = getelementptr inbounds nuw i8, ptr %.024.i.i411.3, i64 8 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.026.i.i410.3, i64 8 ; 2 uses
  %i.qm = add i64 %.022.i.i412.3, -8              ; 3 uses
  %i.qn = icmp ugt i64 %i.qm, 7
  br i1 %i.qn, label %.lr.ph413.3, label %.preheader.3, !llvm.loop !62

.preheader.3:                                     ; preds = %bb.bo, %.preheader326.3
  %.026.i.i.lcssa.3 = phi ptr [ %i.px, %.preheader326.3 ], [ %i.ql, %bb.bo ] ; 3 uses
  %.024.i.i.lcssa.3 = phi ptr [ %i.jd, %.preheader326.3 ], [ %i.qk, %bb.bo ]
  %.022.i.i.lcssa.3 = phi i64 [ %.0172, %.preheader326.3 ], [ %i.qm, %bb.bo ] ; 3 uses
  %.not.i.i417.3 = icmp eq i64 %.022.i.i.lcssa.3, 0
  br i1 %.not.i.i417.3, label %.critedge.i.i.3, label %.lr.ph421.preheader.3

.lr.ph421.preheader.3:                            ; preds = %.preheader.3
  %scevgep474.3 = getelementptr i8, ptr %.026.i.i.lcssa.3, i64 %.022.i.i.lcssa.3
  br label %.lr.ph421.3

.lr.ph421.3:                                      ; preds = %bb.bp, %.lr.ph421.preheader.3
  %.123.i.i420.3 = phi i64 [ %i.qr, %bb.bp ], [ %.022.i.i.lcssa.3, %.lr.ph421.preheader.3 ]
  %.125.i.i419.3 = phi ptr [ %i.qs, %bb.bp ], [ %.024.i.i.lcssa.3, %.lr.ph421.preheader.3 ] ; 2 uses
  %.228.i.i418.3 = phi ptr [ %i.qt, %bb.bp ], [ %.026.i.i.lcssa.3, %.lr.ph421.preheader.3 ] ; 3 uses
  %i.qo = load i8, ptr %.228.i.i418.3, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.qp = load i8, ptr %.125.i.i419.3, align 1, !tbaa !54, !alias.scope !1410, !noalias !1411
  %i.qq = icmp eq i8 %i.qo, %i.qp
  br i1 %i.qq, label %bb.bp, label %.critedge.i.i.3

bb.bp:                                            ; preds = %.lr.ph421.3
  %i.qr = add nsw i64 %.123.i.i420.3, -1          ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.125.i.i419.3, i64 1
  %i.qt = getelementptr inbounds nuw i8, ptr %.228.i.i418.3, i64 1
  %.not.i.i.3 = icmp eq i64 %i.qr, 0
  br i1 %.not.i.i.3, label %.critedge.i.i.3, label %.lr.ph421.3, !llvm.loop !64

.critedge.i.i.3:                                  ; preds = %.lr.ph421.3, %bb.bp, %.preheader.3
  %.228.i.i.lcssa.3 = phi ptr [ %.026.i.i.lcssa.3, %.preheader.3 ], [ %.228.i.i418.3, %.lr.ph421.3 ], [ %scevgep474.3, %bb.bp ]
  %i.qu = ptrtoint ptr %.228.i.i.lcssa.3 to i64
  %i.qv = ptrtoint ptr %i.px to i64
  %i.qw = sub i64 %i.qu, %i.qv
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3: ; preds = %.critedge.i.i.3, %bb.bn
  %.2.i.i.3 = phi i64 [ %i.qj, %bb.bn ], [ %i.qw, %.critedge.i.i.3 ] ; 3 uses
  %i.qx = icmp ugt i64 %.2.i.i.3, 3
  br i1 %i.qx, label %bb.bq, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.bq:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3
  %i.qy = mul i64 %.2.i.i.3, 135
  %i.qz = trunc i64 %i.pv to i32
  %i.ra = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qz, i1 true)
  %i.rb = xor i32 %i.ra, 31
  %.neg442.3 = mul nsw i32 %i.rb, -30
  %narrow441.3 = add nsw i32 %.neg442.3, 1920
  %i.rc = zext nneg i32 %narrow441.3 to i64
  %i.rd = add i64 %i.qy, %i.rc                    ; 2 uses
  %i.re = icmp ult i64 %.sroa.10.2.2, %i.rd
  br i1 %i.re, label %bb.br, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.br:                                            ; preds = %bb.bq
  br label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %bb.br, %bb.bq, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3, %bb.bm, %bb.bl
  %.sroa.10.2.3 = phi i64 [ %.sroa.10.2.2, %bb.bm ], [ %i.rd, %bb.br ], [ %.sroa.10.2.2, %bb.bq ], [ %.sroa.10.2.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.10.2.2, %bb.bl ] ; 2 uses
  %.sroa.7.2.3 = phi i64 [ %.sroa.7.2.2, %bb.bm ], [ %i.pv, %bb.br ], [ %.sroa.7.2.2, %bb.bq ], [ %.sroa.7.2.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.7.2.2, %bb.bl ] ; 2 uses
  %.sroa.0.2.3 = phi i64 [ %.sroa.0.2.2, %bb.bm ], [ %.2.i.i.3, %bb.br ], [ %.sroa.0.2.2, %bb.bq ], [ %.sroa.0.2.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.0.2.2, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !1412
  %i.rf = trunc i64 %i.ja to i32
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.kx
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !3, !noalias !1411
  %i.rh = add i64 %.sroa.21.0, 175
  %.not196 = icmp ult i64 %.sroa.10.2.3, %i.rh
  br i1 %.not196, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.ri = add i64 %.1176, 1                       ; 2 uses
  %i.rj = add nuw nsw i32 %.0165, 1
  %i.rk = icmp samesign ult i32 %.0165, 3
  %i.rl = add i64 %.1179, 9
  %i.rm = icmp ult i64 %i.rl, %i.k
  %or.cond317 = and i1 %i.rk, %i.rm
  br i1 %or.cond317, label %bb.aj, label %bb.bt, !llvm.loop !1413

bb.bt:                                            ; preds = %bb.bs, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %.sroa.13.1.ph = phi i64 [ %.sroa.7.2.3, %bb.bs ], [ %.sroa.13.0, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 11 uses
  %.sroa.0254.1.ph = phi i64 [ %.sroa.0.2.3, %bb.bs ], [ %.sroa.0254.0, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 7 uses
  %.3181.ph = phi i64 [ %i.ja, %bb.bs ], [ %.1179, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 4 uses
  %.3.ph = phi i64 [ %i.ri, %bb.bs ], [ %.1176, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 10 uses
  %i.rn = shl i64 %.sroa.0254.1.ph, 1
  %i.ro = add i64 %i.rn, %i.q
  %i.rp = add i64 %i.ro, %.3181.ph                ; 3 uses
  %i.rq = add i64 %.3181.ph, %i.i
  %i.rr = tail call noundef i64 @llvm.umin.i64(i64 %i.rq, i64 %i.g)
  %i.rs = add i64 %i.rr, %i.s                     ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.13.1.ph, %i.rs
  br i1 %.not.i, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rt = add i64 %.sroa.13.1.ph, 3               ; 2 uses
  %i.ru = load i32, ptr %6, align 4, !tbaa !3
  %i.rv = sext i32 %i.ru to i64                   ; 2 uses
  %i.rw = sub i64 %i.rt, %i.rv                    ; 2 uses
  %i.rx = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ry = sext i32 %i.rx to i64                   ; 2 uses
  %i.rz = sub i64 %i.rt, %i.ry                    ; 2 uses
  %i.sa = icmp eq i64 %.sroa.13.1.ph, %i.rv
  br i1 %i.sa, label %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread, label %bb.bv

_ZL19ComputeDistanceCodemmPKi.exit.thread.thread: ; preds = %bb.bu
  %i.sb = trunc i64 %.3.ph to i32                 ; 2 uses
  store i32 %i.sb, ptr %.0185434, align 4, !tbaa !146
  %i.sc = trunc i64 %.sroa.0254.1.ph to i32       ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0185434, i64 4
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !148
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

bb.bv:                                            ; preds = %bb.bu
  %i.se = icmp eq i64 %.sroa.13.1.ph, %i.ry
  br i1 %i.se, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sf = icmp ult i64 %i.rw, 7
  br i1 %i.sf, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.tr25.i = trunc nuw nsw i64 %i.rw to i32
  %i.sg = shl nuw nsw i32 %.tr25.i, 2
  %i.sh = lshr i32 158663784, %i.sg
  %i.si = and i32 %i.sh, 15
  %i.sj = zext nneg i32 %i.si to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.by:                                            ; preds = %bb.bw
  %i.sk = icmp ult i64 %i.rz, 7
  br i1 %i.sk, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.tr.i = trunc nuw nsw i64 %i.rz to i32
  %i.sl = shl nuw nsw i32 %.tr.i, 2
  %i.sm = lshr i32 266017486, %i.sl
  %i.sn = and i32 %i.sm, 15
  %i.so = zext nneg i32 %i.sn to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.ca:                                            ; preds = %bb.by
  %i.sp = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.sq = sext i32 %i.sp to i64
  %i.sr = icmp eq i64 %.sroa.13.1.ph, %i.sq
  br i1 %i.sr, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ss = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.st = sext i32 %i.ss to i64
  %.not319 = icmp eq i64 %.sroa.13.1.ph, %i.st
  br i1 %.not319, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bt
  %i.su = add i64 %.sroa.13.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.bv, %bb.bz, %bb.bx, %bb.ca, %bb.cb, %bb.cc
  %.1.i = phi i64 [ %i.su, %bb.cc ], [ 3, %bb.cb ], [ 1, %bb.bv ], [ %i.so, %bb.bz ], [ %i.sj, %bb.bx ], [ 2, %bb.ca ] ; 4 uses
  %i.sv = icmp ule i64 %.sroa.13.1.ph, %i.rs
  %i.sw = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.sv, %i.sw
  br i1 %or.cond, label %bb.cd, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.cd:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.sx = load i32, ptr %i.ac, align 4, !tbaa !3
  store i32 %i.sx, ptr %i.ad, align 4, !tbaa !3
  %i.sy = load <2 x i32>, ptr %6, align 4, !tbaa !3
  store <2 x i32> %i.sy, ptr %i.ab, align 4, !tbaa !3
  %i.sz = trunc i64 %.sroa.13.1.ph to i32
  store i32 %i.sz, ptr %6, align 4, !tbaa !3
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.cd, %_ZL19ComputeDistanceCodemmPKi.exit
  %i.ta = trunc i64 %.3.ph to i32                 ; 3 uses
  store i32 %i.ta, ptr %.0185434, align 4, !tbaa !146
  %i.tb = trunc i64 %.sroa.0254.1.ph to i32       ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.0185434, i64 4
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !148
  %i.td = load i32, ptr %i.ae, align 4, !tbaa !149
  %i.te = zext i32 %i.td to i64                   ; 2 uses
  %i.tf = add nuw nsw i64 %i.te, 16               ; 2 uses
  %i.tg = icmp ult i64 %.1.i, %i.tf
  br i1 %i.tg, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.th = load i32, ptr %i.w, align 8, !tbaa !150 ; 2 uses
  %i.ti = zext i32 %i.th to i64                   ; 4 uses
  %i.tj = shl nuw i64 4, %i.ti
  %i.tk = add i64 %.1.i, -16
  %i.tl = sub i64 %i.tk, %i.te
  %i.tm = add i64 %i.tl, %i.tj                    ; 4 uses
  %i.tn = trunc i64 %i.tm to i32
  %i.to = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.tn, i1 true)
  %i.tp = sub nsw i32 30, %i.to
  %i.tq = zext i32 %i.tp to i64                   ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.th
  %i.tr = xor i32 %notmask.i, -1
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = and i64 %i.tm, %i.ts
  %i.tu = lshr i64 %i.tm, %i.tq                   ; 2 uses
  %i.tv = and i64 %i.tu, 1
  %i.tw = or disjoint i64 %i.tv, 2
  %i.tx = shl i64 %i.tw, %i.tq
  %i.ty = sub nsw i64 %i.tq, %i.ti                ; 2 uses
  %i.tz = shl nsw i64 %i.ty, 10
  %i.ua = shl nsw i64 %i.ty, 1
  %i.ub = or i64 %i.tu, 65534
  %i.uc = add i64 %i.ua, %i.ub
  %i.ud = shl i64 %i.uc, %i.ti
  %i.ue = add nuw nsw i64 %i.tt, %i.tf
  %i.uf = add i64 %i.ue, %i.ud
  %i.ug = or i64 %i.uf, %i.tz
  %i.uh = sub i64 %i.tm, %i.tx
  %i.ui = lshr i64 %i.uh, %i.ti
  %i.uj = trunc i64 %i.ui to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread, %bb.ce
  %i.uk = phi i32 [ %i.tb, %bb.ce ], [ %i.sc, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ %i.tb, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %i.ul = phi i32 [ %i.ta, %bb.ce ], [ %i.sb, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ %i.ta, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink.in = phi i64 [ %i.ug, %bb.ce ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.uj, %bb.ce ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread.thread ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %i.um = getelementptr inbounds nuw i8, ptr %.0185434, i64 16 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.0185434, i64 14
  %i.uo = getelementptr inbounds nuw i8, ptr %.0185434, i64 8
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.un, align 2, !tbaa !68
  store i32 %storemerge.i, ptr %i.uo, align 4, !tbaa !3
  %sext = shl i64 %.sroa.0254.1.ph, 32
  %i.up = ashr exact i64 %sext, 32                ; 4 uses
  %i.uq = and i16 %.sink, 1023
  %i.ur = icmp eq i16 %i.uq, 0
  %i.us = getelementptr inbounds nuw i8, ptr %.0185434, i64 12
  %i.ut = icmp ult i64 %.3.ph, 6
  br i1 %i.ut, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.uu = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.cg:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.uv = icmp ult i64 %.3.ph, 130
  br i1 %i.uv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.uw = add nsw i64 %.3.ph, -2                  ; 2 uses
  %i.ux = trunc nuw nsw i64 %i.uw to i32
  %i.uy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ux, i1 true)
  %i.uz = sub nuw nsw i32 30, %i.uy               ; 2 uses
  %i.va = shl nuw nsw i32 %i.uz, 1
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = zext nneg i32 %i.uz to i64
  %i.vd = lshr i64 %i.uw, %i.vc
  %i.ve = add nuw nsw i64 %i.vd, %i.vb
  %i.vf = trunc nuw nsw i64 %i.ve to i16
  %i.vg = add nuw nsw i16 %i.vf, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ci:                                            ; preds = %bb.cg
  %i.vh = icmp ult i64 %.3.ph, 2114
  br i1 %i.vh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
end_hunk_10
begin_hunk_11_@_ZL28CreateBackwardReferencesNH54mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.zu = and i64 %.5183384, 24
  %i.zv = add nuw nsw i64 %i.zs, %i.zu
  %i.zw = and i64 %i.zv, 1048575
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.zw
  store i32 %i.zt, ptr %i.zx, align 4, !tbaa !3, !noalias !1421
  %i.zy = add i64 %.5385, 2                       ; 2 uses
  %i.zz = add i64 %.5183384, 2                    ; 3 uses
  %i.aaa = icmp ult i64 %i.zz, %i.zn
  br i1 %i.aaa, label %.lr.ph386, label %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit, !llvm.loop !1424

_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit: ; preds = %.lr.ph386, %.lr.ph391, %.lr.ph433.prol.loopexit, %.lr.ph433, %bb.cx, %bb.cw, %bb.ct, %bb.cu
  %.1186 = phi ptr [ %i.um, %bb.ct ], [ %.0185434, %bb.cu ], [ %.0185434, %bb.cw ], [ %.0185434, %bb.cx ], [ %.0185434, %.lr.ph391 ], [ %i.um, %.lr.ph433.prol.loopexit ], [ %i.um, %.lr.ph433 ], [ %.0185434, %.lr.ph386 ] ; 2 uses
  %.6184 = phi i64 [ %i.xd, %bb.ct ], [ %i.yt, %bb.cu ], [ %i.yt, %bb.cw ], [ %i.yt, %bb.cx ], [ %i.zk, %.lr.ph391 ], [ %i.xd, %.lr.ph433.prol.loopexit ], [ %i.xd, %.lr.ph433 ], [ %i.zz, %.lr.ph386 ] ; 3 uses
  %.6 = phi i64 [ 0, %bb.ct ], [ %i.ys, %bb.cu ], [ %i.ys, %bb.cw ], [ %i.ys, %bb.cx ], [ %i.zj, %.lr.ph391 ], [ 0, %.lr.ph433.prol.loopexit ], [ 0, %.lr.ph433 ], [ %i.zy, %.lr.ph386 ] ; 2 uses
  %.1174 = phi i64 [ %i.rp, %bb.ct ], [ %.0173437, %bb.cu ], [ %.0173437, %bb.cw ], [ %.0173437, %bb.cx ], [ %.0173437, %.lr.ph391 ], [ %i.rp, %.lr.ph433.prol.loopexit ], [ %i.rp, %.lr.ph433 ], [ %.0173437, %.lr.ph386 ]
  %i.aab = add i64 %.6184, 8
  %i.aac = icmp ult i64 %i.aab, %i.k
  br i1 %i.aac, label %.thread, label %._crit_edge, !llvm.loop !1425

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit, %bb.a
  %.0185.lcssa = phi ptr [ %8, %bb.a ], [ %.1186, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ]
  %.0175.lcssa = phi i64 [ %i.j, %bb.a ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ]
  %i.aad = sub i64 %i.k, %.0178.lcssa
  %i.aae = add i64 %i.aad, %.0175.lcssa
  store i64 %i.aae, ptr %7, align 8, !tbaa !30
  %i.aaf = ptrtoint ptr %.0185.lcssa to i64
  %i.aag = ptrtoint ptr %8 to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  %i.aai = ashr exact i64 %i.aah, 4
  %i.aaj = load i64, ptr %9, align 8, !tbaa !30
  %i.aak = add i64 %i.aaj, %i.aai
  store i64 %i.aak, ptr %9, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL28CreateBackwardReferencesNH35mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add i64 %i.f, -16                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.j = load i64, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.k = add i64 %1, %0                           ; 6 uses
  %i.l = icmp ugt i64 %0, 7
  %i.m = add i64 %i.k, -7                         ; 3 uses
  %spec.select = select i1 %i.l, i64 %i.m, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.o, 9
  %i.q = select i1 %i.p, i64 64, i64 512          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = add i64 %1, 8
  %i.u = icmp ult i64 %i.t, %i.k
  br i1 %i.u, label %.thread.lr.ph, label %._crit_edge544

.thread.lr.ph:                                    ; preds = %bb.a
  %i.v = add i64 %i.q, %1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !939, !alias.scope !1426, !noalias !1431 ; 11 uses
  %i.z = and i64 %3, 4294967295                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.af = shl nuw nsw i64 %i.q, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.thread

.thread:                                          ; preds = %.thread.lr.ph, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit
  %.0173543 = phi i64 [ %i.v, %.thread.lr.ph ], [ %.1174, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit ] ; 7 uses
  %.0175542 = phi i64 [ %i.j, %.thread.lr.ph ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit ] ; 2 uses
  %.0178541 = phi i64 [ %1, %.thread.lr.ph ], [ %.6184, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit ] ; 20 uses
  %.0185540 = phi ptr [ %8, %.thread.lr.ph ], [ %.1186, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit ] ; 13 uses
  %i.am = sub i64 %i.k, %.0178541                 ; 12 uses
  %i.an = tail call noundef i64 @llvm.umin.i64(i64 %.0178541, i64 %i.g) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.ao = and i64 %.0178541, %3
  %i.ap = getelementptr i8, ptr %2, i64 %i.ao     ; 12 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445 ; 5 uses
  %.val271 = load i64, ptr %i.ap, align 1
  %i.ar = mul i64 %.val271, 8922571613522624512
  %i.as = lshr i64 %i.ar, 48                      ; 3 uses
  %i.at = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !1446, !noalias !1447
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = sub i64 %.0178541, %i.au                ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.0178541
  br i1 %i.aw, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.thread
  %i.ax = and i64 %i.z, %i.av
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax     ; 5 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %i.ba = icmp eq i8 %i.aq, %i.az
  br i1 %i.ba, label %.preheader379, label %bb.h

.preheader379:                                    ; preds = %bb.b
  %i.bb = icmp ugt i64 %i.am, 7
  br i1 %i.bb, label %.lr.ph, label %.preheader378

.preheader378:                                    ; preds = %bb.d, %.preheader379
  %.026.i113.i.i251.lcssa = phi ptr [ %i.ay, %.preheader379 ], [ %i.bk, %bb.d ] ; 3 uses
  %.024.i114.i.i252.lcssa = phi ptr [ %i.ap, %.preheader379 ], [ %i.bj, %bb.d ]
  %.022.i115.i.i253.lcssa = phi i64 [ %i.am, %.preheader379 ], [ %i.bl, %bb.d ] ; 3 uses
  %.not.i120.i.i258403 = icmp eq i64 %.022.i115.i.i253.lcssa, 0
  br i1 %.not.i120.i.i258403, label %.critedge.i121.i.i259, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %.preheader378
  %scevgep = getelementptr i8, ptr %.026.i113.i.i251.lcssa, i64 %.022.i115.i.i253.lcssa
  br label %.lr.ph407

.lr.ph:                                           ; preds = %.preheader379, %bb.d
  %.022.i115.i.i253400 = phi i64 [ %i.bl, %bb.d ], [ %i.am, %.preheader379 ]
  %.024.i114.i.i252399 = phi ptr [ %i.bj, %bb.d ], [ %i.ap, %.preheader379 ] ; 2 uses
  %.026.i113.i.i251398 = phi ptr [ %i.bk, %bb.d ], [ %i.ay, %.preheader379 ] ; 3 uses
  %.0.copyload.i127.i.i262 = load i64, ptr %.024.i114.i.i252399, align 1, !alias.scope !1444, !noalias !1445 ; 2 uses
  %.0.copyload.i.i37.i263 = load i64, ptr %.026.i113.i.i251398, align 1, !alias.scope !1444, !noalias !1445 ; 2 uses
  %.not30.i123.i.i264 = icmp eq i64 %.0.copyload.i127.i.i262, %.0.copyload.i.i37.i263
  br i1 %.not30.i123.i.i264, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bc = xor i64 %.0.copyload.i.i37.i263, %.0.copyload.i127.i.i262
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bc, i1 true)
  %i.be = ptrtoint ptr %.026.i113.i.i251398 to i64
  %i.bf = ptrtoint ptr %i.ay to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr i64 %i.bd, 3
  %i.bi = add i64 %i.bg, %i.bh
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260

bb.d:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.024.i114.i.i252399, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.026.i113.i.i251398, i64 8 ; 2 uses
  %i.bl = add i64 %.022.i115.i.i253400, -8        ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, 7
  br i1 %i.bm, label %.lr.ph, label %.preheader378, !llvm.loop !62

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %bb.e
  %.123.i119.i.i257406 = phi i64 [ %i.bq, %bb.e ], [ %.022.i115.i.i253.lcssa, %.lr.ph407.preheader ]
  %.125.i118.i.i256405 = phi ptr [ %i.br, %bb.e ], [ %.024.i114.i.i252.lcssa, %.lr.ph407.preheader ] ; 2 uses
  %.228.i117.i.i255404 = phi ptr [ %i.bs, %bb.e ], [ %.026.i113.i.i251.lcssa, %.lr.ph407.preheader ] ; 3 uses
  %i.bn = load i8, ptr %.228.i117.i.i255404, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %i.bo = load i8, ptr %.125.i118.i.i256405, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %i.bp = icmp eq i8 %i.bn, %i.bo
  br i1 %i.bp, label %bb.e, label %.critedge.i121.i.i259

bb.e:                                             ; preds = %.lr.ph407
  %i.bq = add nsw i64 %.123.i119.i.i257406, -1    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.125.i118.i.i256405, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.228.i117.i.i255404, i64 1
  %.not.i120.i.i258 = icmp eq i64 %i.bq, 0
  br i1 %.not.i120.i.i258, label %.critedge.i121.i.i259, label %.lr.ph407, !llvm.loop !64

.critedge.i121.i.i259:                            ; preds = %bb.e, %.lr.ph407, %.preheader378
  %.228.i117.i.i255.lcssa = phi ptr [ %.026.i113.i.i251.lcssa, %.preheader378 ], [ %.228.i117.i.i255404, %.lr.ph407 ], [ %scevgep, %bb.e ]
  %i.bt = ptrtoint ptr %.228.i117.i.i255.lcssa to i64
  %i.bu = ptrtoint ptr %i.ay to i64
  %i.bv = sub i64 %i.bt, %i.bu
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260: ; preds = %bb.c, %.critedge.i121.i.i259
  %.2.i122.i.i261 = phi i64 [ %i.bi, %bb.c ], [ %i.bv, %.critedge.i121.i.i259 ] ; 4 uses
  %i.bw = icmp ugt i64 %.2.i122.i.i261, 3
  br i1 %i.bw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260
  %i.bx = mul i64 %.2.i122.i.i261, 135
  %i.by = add i64 %i.bx, 1935                     ; 2 uses
  %i.bz = icmp ugt i64 %i.by, 2020
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr i8, ptr %i.ap, i64 %.2.i122.i.i261
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260, %bb.b, %.thread
  %.sroa.24.2 = phi i64 [ %i.by, %bb.g ], [ 2020, %bb.f ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260 ], [ 2020, %bb.b ], [ 2020, %.thread ] ; 5 uses
  %.sroa.15.2 = phi i64 [ %i.au, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260 ], [ 0, %bb.b ], [ 0, %.thread ] ; 4 uses
  %.sroa.0278.2 = phi i64 [ %.2.i122.i.i261, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260 ], [ 0, %bb.b ], [ 0, %.thread ] ; 5 uses
  %.299.i.i200.in = phi i8 [ %i.cb, %bb.g ], [ %i.aq, %bb.f ], [ %i.aq, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i260 ], [ %i.aq, %bb.b ], [ %i.aq, %.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !1448
  store i64 %i.as, ptr %i.a, align 16, !tbaa !30, !noalias !1448
  %i.cc = add nuw nsw i64 %i.as, 8
  %i.cd = and i64 %i.cc, 65535                    ; 2 uses
  store i64 %i.cd, ptr %i.ak, align 8, !tbaa !30, !noalias !1448
  %11 = lshr i64 %.0178541, 3
  %i.ce = and i64 %11, 1
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ce
  %i.cf = load i64, ptr %12, align 8, !tbaa !30, !noalias !1448
  %i.cg = icmp ugt i64 %i.am, 7                   ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.as
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3, !noalias !1445
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = sub i64 %.0178541, %i.cj                ; 3 uses
  %i.cl = and i64 %3, %i.cj
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl     ; 5 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 %.sroa.0278.2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %.not.i22.i231 = icmp eq i8 %.299.i.i200.in, %i.co
  br i1 %.not.i22.i231, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.cp = icmp eq i64 %.0178541, %i.cj
  %i.cq = icmp ugt i64 %i.ck, %i.an
  %i.cr = or i1 %i.cp, %i.cq
  br i1 %i.cr, label %bb.o, label %.preheader374, !prof !72

.preheader374:                                    ; preds = %bb.i
  br i1 %i.cg, label %.lr.ph415, label %.preheader373

.preheader373:                                    ; preds = %bb.k, %.preheader374
  %.026.i.i23.i235.lcssa = phi ptr [ %i.cm, %.preheader374 ], [ %i.da, %bb.k ] ; 3 uses
  %.024.i.i24.i236.lcssa = phi ptr [ %i.ap, %.preheader374 ], [ %i.cz, %bb.k ]
  %.022.i.i25.i237.lcssa = phi i64 [ %i.am, %.preheader374 ], [ %i.db, %bb.k ] ; 3 uses
  %.not.i.i30.i242419 = icmp eq i64 %.022.i.i25.i237.lcssa, 0
  br i1 %.not.i.i30.i242419, label %.critedge.i.i31.i243, label %.lr.ph423.preheader

.lr.ph423.preheader:                              ; preds = %.preheader373
  %scevgep597 = getelementptr i8, ptr %.026.i.i23.i235.lcssa, i64 %.022.i.i25.i237.lcssa
  br label %.lr.ph423

.lr.ph415:                                        ; preds = %.preheader374, %bb.k
  %.022.i.i25.i237414 = phi i64 [ %i.db, %bb.k ], [ %i.am, %.preheader374 ]
  %.024.i.i24.i236413 = phi ptr [ %i.cz, %bb.k ], [ %i.ap, %.preheader374 ] ; 2 uses
  %.026.i.i23.i235412 = phi ptr [ %i.da, %bb.k ], [ %i.cm, %.preheader374 ] ; 3 uses
  %.0.copyload.i129.i.i246 = load i64, ptr %.024.i.i24.i236413, align 1, !alias.scope !1444, !noalias !1445 ; 2 uses
  %.0.copyload.i128.i.i247 = load i64, ptr %.026.i.i23.i235412, align 1, !alias.scope !1444, !noalias !1445 ; 2 uses
  %.not30.i.i34.i248 = icmp eq i64 %.0.copyload.i129.i.i246, %.0.copyload.i128.i.i247
  br i1 %.not30.i.i34.i248, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph415
  %i.cs = xor i64 %.0.copyload.i128.i.i247, %.0.copyload.i129.i.i246
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cs, i1 true)
  %i.cu = ptrtoint ptr %.026.i.i23.i235412 to i64
  %i.cv = ptrtoint ptr %i.cm to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = lshr i64 %i.ct, 3
  %i.cy = add i64 %i.cw, %i.cx
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244

bb.k:                                             ; preds = %.lr.ph415
  %i.cz = getelementptr inbounds nuw i8, ptr %.024.i.i24.i236413, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.026.i.i23.i235412, i64 8 ; 2 uses
  %i.db = add i64 %.022.i.i25.i237414, -8         ; 3 uses
  %i.dc = icmp ugt i64 %i.db, 7
  br i1 %i.dc, label %.lr.ph415, label %.preheader373, !llvm.loop !62

.lr.ph423:                                        ; preds = %.lr.ph423.preheader, %bb.l
  %.123.i.i29.i241422 = phi i64 [ %i.dg, %bb.l ], [ %.022.i.i25.i237.lcssa, %.lr.ph423.preheader ]
  %.125.i.i28.i240421 = phi ptr [ %i.dh, %bb.l ], [ %.024.i.i24.i236.lcssa, %.lr.ph423.preheader ] ; 2 uses
  %.228.i.i27.i239420 = phi ptr [ %i.di, %bb.l ], [ %.026.i.i23.i235.lcssa, %.lr.ph423.preheader ] ; 3 uses
  %i.dd = load i8, ptr %.228.i.i27.i239420, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %i.de = load i8, ptr %.125.i.i28.i240421, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %i.df = icmp eq i8 %i.dd, %i.de
  br i1 %i.df, label %bb.l, label %.critedge.i.i31.i243

bb.l:                                             ; preds = %.lr.ph423
  %i.dg = add nsw i64 %.123.i.i29.i241422, -1     ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.125.i.i28.i240421, i64 1
  %i.di = getelementptr inbounds nuw i8, ptr %.228.i.i27.i239420, i64 1
  %.not.i.i30.i242 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i30.i242, label %.critedge.i.i31.i243, label %.lr.ph423, !llvm.loop !64

.critedge.i.i31.i243:                             ; preds = %bb.l, %.lr.ph423, %.preheader373
  %.228.i.i27.i239.lcssa = phi ptr [ %.026.i.i23.i235.lcssa, %.preheader373 ], [ %.228.i.i27.i239420, %.lr.ph423 ], [ %scevgep597, %bb.l ]
  %i.dj = ptrtoint ptr %.228.i.i27.i239.lcssa to i64
  %i.dk = ptrtoint ptr %i.cm to i64
  %i.dl = sub i64 %i.dj, %i.dk
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244: ; preds = %bb.j, %.critedge.i.i31.i243
  %.2.i.i33.i245 = phi i64 [ %i.cy, %bb.j ], [ %i.dl, %.critedge.i.i31.i243 ] ; 4 uses
  %i.dm = icmp ugt i64 %.2.i.i33.i245, 3
  br i1 %i.dm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244
  %i.dn = mul i64 %.2.i.i33.i245, 135
  %i.do = trunc i64 %i.ck to i32
  %i.dp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.do, i1 true)
  %i.dq = xor i32 %i.dp, 31
  %.neg = mul nsw i32 %i.dq, -30
  %narrow = add nsw i32 %.neg, 1920
  %i.dr = zext nneg i32 %narrow to i64
  %i.ds = add i64 %i.dn, %i.dr                    ; 2 uses
  %i.dt = icmp ult i64 %.sroa.24.2, %i.ds
  br i1 %i.dt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.du = getelementptr i8, ptr %i.ap, i64 %.2.i.i33.i245
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244, %bb.i, %bb.h
  %.sroa.24.6 = phi i64 [ %.sroa.24.2, %bb.i ], [ %i.ds, %bb.n ], [ %.sroa.24.2, %bb.m ], [ %.sroa.24.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244 ], [ %.sroa.24.2, %bb.h ] ; 5 uses
  %.sroa.15.6 = phi i64 [ %.sroa.15.2, %bb.i ], [ %i.ck, %bb.n ], [ %.sroa.15.2, %bb.m ], [ %.sroa.15.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244 ], [ %.sroa.15.2, %bb.h ] ; 4 uses
  %.sroa.0278.6 = phi i64 [ %.sroa.0278.2, %bb.i ], [ %.2.i.i33.i245, %bb.n ], [ %.sroa.0278.2, %bb.m ], [ %.sroa.0278.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244 ], [ %.sroa.0278.2, %bb.h ] ; 5 uses
  %.6103.i.i232.in = phi i8 [ %.299.i.i200.in, %bb.i ], [ %i.dv, %bb.n ], [ %.299.i.i200.in, %bb.m ], [ %.299.i.i200.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244 ], [ %.299.i.i200.in, %bb.h ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cd
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3, !noalias !1445
  %i.dy = zext i32 %i.dx to i64                   ; 3 uses
  %i.dz = sub i64 %.0178541, %i.dy                ; 3 uses
  %i.ea = and i64 %3, %i.dy
  %i.eb = getelementptr i8, ptr %2, i64 %i.ea     ; 5 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 %.sroa.0278.6
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %.not.i22.i231.1 = icmp eq i8 %.6103.i.i232.in, %i.ed
  br i1 %.not.i22.i231.1, label %bb.p, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208

bb.p:                                             ; preds = %bb.o
  %i.ee = icmp eq i64 %.0178541, %i.dy
  %i.ef = icmp ugt i64 %i.dz, %i.an
  %i.eg = or i1 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208, label %.preheader374.1, !prof !72

.preheader374.1:                                  ; preds = %bb.p
  br i1 %i.cg, label %.lr.ph415.1, label %.preheader373.1

.lr.ph415.1:                                      ; preds = %.preheader374.1, %bb.r
  %.022.i.i25.i237414.1 = phi i64 [ %i.eq, %bb.r ], [ %i.am, %.preheader374.1 ]
  %.024.i.i24.i236413.1 = phi ptr [ %i.eo, %bb.r ], [ %i.ap, %.preheader374.1 ] ; 2 uses
  %.026.i.i23.i235412.1 = phi ptr [ %i.ep, %bb.r ], [ %i.eb, %.preheader374.1 ] ; 3 uses
  %.0.copyload.i129.i.i246.1 = load i64, ptr %.024.i.i24.i236413.1, align 1, !alias.scope !1444, !noalias !1445 ; 2 uses
  %.0.copyload.i128.i.i247.1 = load i64, ptr %.026.i.i23.i235412.1, align 1, !alias.scope !1444, !noalias !1445 ; 2 uses
  %.not30.i.i34.i248.1 = icmp eq i64 %.0.copyload.i129.i.i246.1, %.0.copyload.i128.i.i247.1
  br i1 %.not30.i.i34.i248.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph415.1
  %i.eh = xor i64 %.0.copyload.i128.i.i247.1, %.0.copyload.i129.i.i246.1
  %i.ei = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.eh, i1 true)
  %i.ej = ptrtoint ptr %.026.i.i23.i235412.1 to i64
  %i.ek = ptrtoint ptr %i.eb to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = lshr i64 %i.ei, 3
  %i.en = add i64 %i.el, %i.em
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1

bb.r:                                             ; preds = %.lr.ph415.1
  %i.eo = getelementptr inbounds nuw i8, ptr %.024.i.i24.i236413.1, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.026.i.i23.i235412.1, i64 8 ; 2 uses
  %i.eq = add i64 %.022.i.i25.i237414.1, -8       ; 3 uses
  %i.er = icmp ugt i64 %i.eq, 7
  br i1 %i.er, label %.lr.ph415.1, label %.preheader373.1, !llvm.loop !62

.preheader373.1:                                  ; preds = %bb.r, %.preheader374.1
  %.026.i.i23.i235.lcssa.1 = phi ptr [ %i.eb, %.preheader374.1 ], [ %i.ep, %bb.r ] ; 3 uses
  %.024.i.i24.i236.lcssa.1 = phi ptr [ %i.ap, %.preheader374.1 ], [ %i.eo, %bb.r ]
  %.022.i.i25.i237.lcssa.1 = phi i64 [ %i.am, %.preheader374.1 ], [ %i.eq, %bb.r ] ; 3 uses
  %.not.i.i30.i242419.1 = icmp eq i64 %.022.i.i25.i237.lcssa.1, 0
  br i1 %.not.i.i30.i242419.1, label %.critedge.i.i31.i243.1, label %.lr.ph423.preheader.1

.lr.ph423.preheader.1:                            ; preds = %.preheader373.1
  %scevgep597.1 = getelementptr i8, ptr %.026.i.i23.i235.lcssa.1, i64 %.022.i.i25.i237.lcssa.1
  br label %.lr.ph423.1

.lr.ph423.1:                                      ; preds = %bb.s, %.lr.ph423.preheader.1
  %.123.i.i29.i241422.1 = phi i64 [ %i.ev, %bb.s ], [ %.022.i.i25.i237.lcssa.1, %.lr.ph423.preheader.1 ]
  %.125.i.i28.i240421.1 = phi ptr [ %i.ew, %bb.s ], [ %.024.i.i24.i236.lcssa.1, %.lr.ph423.preheader.1 ] ; 2 uses
  %.228.i.i27.i239420.1 = phi ptr [ %i.ex, %bb.s ], [ %.026.i.i23.i235.lcssa.1, %.lr.ph423.preheader.1 ] ; 3 uses
  %i.es = load i8, ptr %.228.i.i27.i239420.1, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %i.et = load i8, ptr %.125.i.i28.i240421.1, align 1, !tbaa !54, !alias.scope !1444, !noalias !1445
  %i.eu = icmp eq i8 %i.es, %i.et
  br i1 %i.eu, label %bb.s, label %.critedge.i.i31.i243.1

bb.s:                                             ; preds = %.lr.ph423.1
  %i.ev = add nsw i64 %.123.i.i29.i241422.1, -1   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.125.i.i28.i240421.1, i64 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.228.i.i27.i239420.1, i64 1
  %.not.i.i30.i242.1 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i30.i242.1, label %.critedge.i.i31.i243.1, label %.lr.ph423.1, !llvm.loop !64

.critedge.i.i31.i243.1:                           ; preds = %.lr.ph423.1, %bb.s, %.preheader373.1
  %.228.i.i27.i239.lcssa.1 = phi ptr [ %.026.i.i23.i235.lcssa.1, %.preheader373.1 ], [ %.228.i.i27.i239420.1, %.lr.ph423.1 ], [ %scevgep597.1, %bb.s ]
  %i.ey = ptrtoint ptr %.228.i.i27.i239.lcssa.1 to i64
  %i.ez = ptrtoint ptr %i.eb to i64
  %i.fa = sub i64 %i.ey, %i.ez
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1: ; preds = %.critedge.i.i31.i243.1, %bb.q
  %.2.i.i33.i245.1 = phi i64 [ %i.en, %bb.q ], [ %i.fa, %.critedge.i.i31.i243.1 ] ; 3 uses
  %i.fb = icmp ugt i64 %.2.i.i33.i245.1, 3
  br i1 %i.fb, label %bb.t, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208

bb.t:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1
  %i.fc = mul i64 %.2.i.i33.i245.1, 135
  %i.fd = trunc i64 %i.dz to i32
  %i.fe = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fd, i1 true)
  %i.ff = xor i32 %i.fe, 31
  %.neg.1 = mul nsw i32 %i.ff, -30
  %narrow.1 = add nsw i32 %.neg.1, 1920
  %i.fg = zext nneg i32 %narrow.1 to i64
  %i.fh = add i64 %i.fc, %i.fg                    ; 2 uses
  %i.fi = icmp ult i64 %.sroa.24.6, %i.fh
  br i1 %i.fi, label %bb.u, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208

bb.u:                                             ; preds = %bb.t
  br label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208

_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208: ; preds = %bb.u, %bb.t, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1, %bb.p, %bb.o
  %.sroa.24.6.1 = phi i64 [ %.sroa.24.6, %bb.p ], [ %i.fh, %bb.u ], [ %.sroa.24.6, %bb.t ], [ %.sroa.24.6, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1 ], [ %.sroa.24.6, %bb.o ] ; 3 uses
  %.sroa.15.6.1 = phi i64 [ %.sroa.15.6, %bb.p ], [ %i.dz, %bb.u ], [ %.sroa.15.6, %bb.t ], [ %.sroa.15.6, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1 ], [ %.sroa.15.6, %bb.o ] ; 3 uses
  %.sroa.0278.6.1 = phi i64 [ %.sroa.0278.6, %bb.p ], [ %.2.i.i33.i245.1, %bb.u ], [ %.sroa.0278.6, %bb.t ], [ %.sroa.0278.6, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i244.1 ], [ %.sroa.0278.6, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6, !noalias !1448
  %i.fj = trunc i64 %.0178541 to i32              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cf
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3, !noalias !1445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %i.fl = and i64 %.0178541, 3
  %.not.i.i209 = icmp ne i64 %i.fl, 0
  %i.fm = icmp ult i64 %i.am, 32
  %or.cond66.i.i210 = or i1 %.not.i.i209, %i.fm
  br i1 %or.cond66.i.i210, label %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit267, label %bb.v

bb.v:                                             ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208
  %i.fn = load i64, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1454, !noalias !1455 ; 2 uses
  %.not64.i.i212449 = icmp ugt i64 %i.fn, %.0178541
  br i1 %.not64.i.i212449, label %bb.ag, label %.lr.ph454

.lr.ph454:                                        ; preds = %bb.v
  %i.fo = load i32, ptr %i.ac, align 4, !tbaa !651, !alias.scope !1454, !noalias !1455
  %i.fp = load i32, ptr %i.ad, align 8, !tbaa !652, !alias.scope !1454, !noalias !1455
  %.promoted = load i32, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1454, !noalias !1455
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph454, %bb.af
  %i.fq = phi i32 [ %.promoted, %.lr.ph454 ], [ %i.ge, %bb.af ] ; 2 uses
  %.0.i.i211453 = phi i64 [ %i.fn, %.lr.ph454 ], [ %i.hu, %bb.af ] ; 5 uses
  %.sroa.0278.4452 = phi i64 [ %.sroa.0278.6.1, %.lr.ph454 ], [ %.sroa.0278.5, %bb.af ] ; 6 uses
  %.sroa.15.4451 = phi i64 [ %.sroa.15.6.1, %.lr.ph454 ], [ %.sroa.15.5, %bb.af ] ; 5 uses
  %.sroa.24.4450 = phi i64 [ %.sroa.24.6.1, %.lr.ph454 ], [ %.sroa.24.5, %bb.af ] ; 6 uses
  %i.fr = and i32 %i.fq, 1073741823               ; 2 uses
  %i.fs = and i64 %.0.i.i211453, %3
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !54, !alias.scope !1457, !noalias !1458
  %i.fv = add i64 %.0.i.i211453, 32
  %i.fw = and i64 %i.fv, %3
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !54, !alias.scope !1457, !noalias !1458
  %i.fz = mul i32 %i.fo, %i.fq
  %i.ga = zext i8 %i.fy to i32
  %i.gb = add nuw nsw i32 %i.ga, 1
  %i.gc = add i32 %i.gb, %i.fz
  %i.gd = zext i8 %i.fu to i32
  %.neg.i = xor i32 %i.gd, -1
  %.neg5.i = mul i32 %i.fp, %.neg.i
  %i.ge = add i32 %i.gc, %.neg5.i                 ; 2 uses
  %i.gf = icmp samesign ult i32 %i.fr, 16777216
  br i1 %i.gf, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.gg = load ptr, ptr %i.ae, align 8, !tbaa !655, !alias.scope !1454, !noalias !1455
  %i.gh = zext nneg i32 %i.fr to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3, !noalias !1458 ; 3 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = trunc i64 %.0.i.i211453 to i32
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !3, !noalias !1458
  %i.gm = icmp eq i64 %.0.i.i211453, %.0178541
  %i.gn = icmp ne i32 %i.gj, -1
  %or.cond.i.i213 = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond.i.i213, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.go = sub i32 %i.fj, %i.gj                    ; 2 uses
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  %.not65.i.i214 = icmp ult i64 %i.an, %i.gp
  br i1 %.not65.i.i214, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gq = and i64 %3, %i.gk
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 %i.gq ; 4 uses
  br i1 %i.cg, label %.lr.ph437, label %.preheader372

.preheader372:                                    ; preds = %bb.ab, %bb.z
  %.026.i.i.i215.lcssa = phi ptr [ %i.gr, %bb.z ], [ %i.ha, %bb.ab ] ; 3 uses
  %.024.i.i.i216.lcssa = phi ptr [ %i.ap, %bb.z ], [ %i.gz, %bb.ab ]
  %.022.i.i.i217.lcssa = phi i64 [ %i.am, %bb.z ], [ %i.hb, %bb.ab ] ; 3 uses
  %.not.i.i.i222441 = icmp eq i64 %.022.i.i.i217.lcssa, 0
  br i1 %.not.i.i.i222441, label %.critedge.i.i.i223, label %.lr.ph445.preheader

.lr.ph445.preheader:                              ; preds = %.preheader372
  %scevgep598 = getelementptr i8, ptr %.026.i.i.i215.lcssa, i64 %.022.i.i.i217.lcssa
  br label %.lr.ph445

.lr.ph437:                                        ; preds = %bb.z, %bb.ab
  %.022.i.i.i217436 = phi i64 [ %i.hb, %bb.ab ], [ %i.am, %bb.z ]
  %.024.i.i.i216435 = phi ptr [ %i.gz, %bb.ab ], [ %i.ap, %bb.z ] ; 2 uses
  %.026.i.i.i215434 = phi ptr [ %i.ha, %bb.ab ], [ %i.gr, %bb.z ] ; 3 uses
  %.0.copyload.i67.i.i226 = load i64, ptr %.024.i.i.i216435, align 1, !alias.scope !1457, !noalias !1458 ; 2 uses
  %.0.copyload.i.i.i227 = load i64, ptr %.026.i.i.i215434, align 1, !alias.scope !1457, !noalias !1458 ; 2 uses
  %.not30.i.i.i228 = icmp eq i64 %.0.copyload.i67.i.i226, %.0.copyload.i.i.i227
  br i1 %.not30.i.i.i228, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph437
  %i.gs = xor i64 %.0.copyload.i.i.i227, %.0.copyload.i67.i.i226
  %i.gt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gs, i1 true)
  %i.gu = ptrtoint ptr %.026.i.i.i215434 to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = lshr i64 %i.gt, 3
  %i.gy = add i64 %i.gw, %i.gx
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224

bb.ab:                                            ; preds = %.lr.ph437
  %i.gz = getelementptr inbounds nuw i8, ptr %.024.i.i.i216435, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.026.i.i.i215434, i64 8 ; 2 uses
  %i.hb = add i64 %.022.i.i.i217436, -8           ; 3 uses
  %i.hc = icmp ugt i64 %i.hb, 7
  br i1 %i.hc, label %.lr.ph437, label %.preheader372, !llvm.loop !62

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %bb.ac
  %.123.i.i.i221444 = phi i64 [ %i.hg, %bb.ac ], [ %.022.i.i.i217.lcssa, %.lr.ph445.preheader ]
  %.125.i.i.i220443 = phi ptr [ %i.hh, %bb.ac ], [ %.024.i.i.i216.lcssa, %.lr.ph445.preheader ] ; 2 uses
  %.228.i.i.i219442 = phi ptr [ %i.hi, %bb.ac ], [ %.026.i.i.i215.lcssa, %.lr.ph445.preheader ] ; 3 uses
  %i.hd = load i8, ptr %.228.i.i.i219442, align 1, !tbaa !54, !alias.scope !1457, !noalias !1458
  %i.he = load i8, ptr %.125.i.i.i220443, align 1, !tbaa !54, !alias.scope !1457, !noalias !1458
  %i.hf = icmp eq i8 %i.hd, %i.he
  br i1 %i.hf, label %bb.ac, label %.critedge.i.i.i223

bb.ac:                                            ; preds = %.lr.ph445
  %i.hg = add nsw i64 %.123.i.i.i221444, -1       ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.125.i.i.i220443, i64 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.228.i.i.i219442, i64 1
  %.not.i.i.i222 = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i.i222, label %.critedge.i.i.i223, label %.lr.ph445, !llvm.loop !64

.critedge.i.i.i223:                               ; preds = %bb.ac, %.lr.ph445, %.preheader372
  %.228.i.i.i219.lcssa = phi ptr [ %.026.i.i.i215.lcssa, %.preheader372 ], [ %.228.i.i.i219442, %.lr.ph445 ], [ %scevgep598, %bb.ac ]
  %i.hj = ptrtoint ptr %.228.i.i.i219.lcssa to i64
  %i.hk = ptrtoint ptr %i.gr to i64
  %i.hl = sub i64 %i.hj, %i.hk
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224: ; preds = %bb.aa, %.critedge.i.i.i223
  %.2.i.i.i225 = phi i64 [ %i.gy, %bb.aa ], [ %i.hl, %.critedge.i.i.i223 ] ; 4 uses
  %i.hm = icmp ugt i64 %.2.i.i.i225, 3
  %i.hn = icmp ugt i64 %.2.i.i.i225, %.sroa.0278.4452
  %or.cond352 = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond352, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224
  %i.ho = mul i64 %.2.i.i.i225, 135
  %i.hp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.go, i1 true)
  %i.hq = xor i32 %i.hp, 31
  %.neg549 = mul nsw i32 %i.hq, -30
  %narrow548 = add nsw i32 %.neg549, 1920
  %i.hr = zext nneg i32 %narrow548 to i64
  %i.hs = add i64 %i.ho, %i.hr                    ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, %.sroa.24.4450
  br i1 %i.ht, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224, %bb.y, %bb.x, %bb.w
  %.sroa.24.5 = phi i64 [ %.sroa.24.4450, %bb.y ], [ %i.hs, %bb.ae ], [ %.sroa.24.4450, %bb.ad ], [ %.sroa.24.4450, %bb.w ], [ %.sroa.24.4450, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224 ], [ %.sroa.24.4450, %bb.x ] ; 2 uses
  %.sroa.15.5 = phi i64 [ %.sroa.15.4451, %bb.y ], [ %i.gp, %bb.ae ], [ %.sroa.15.4451, %bb.ad ], [ %.sroa.15.4451, %bb.w ], [ %.sroa.15.4451, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224 ], [ %.sroa.15.4451, %bb.x ] ; 2 uses
  %.sroa.0278.5 = phi i64 [ %.sroa.0278.4452, %bb.y ], [ %.2.i.i.i225, %bb.ae ], [ %.sroa.0278.4452, %bb.ad ], [ %.sroa.0278.4452, %bb.w ], [ %.sroa.0278.4452, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i224 ], [ %.sroa.0278.4452, %bb.x ] ; 2 uses
  %i.hu = add i64 %.0.i.i211453, 4                ; 2 uses
  %.not64.i.i212 = icmp ugt i64 %i.hu, %.0178541
  br i1 %.not64.i.i212, label %._crit_edge, label %bb.w, !llvm.loop !656

._crit_edge:                                      ; preds = %bb.af
  store i32 %i.ge, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1454, !noalias !1455
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge, %bb.v
  %.sroa.24.4.lcssa = phi i64 [ %.sroa.24.5, %._crit_edge ], [ %.sroa.24.6.1, %bb.v ]
  %.sroa.15.4.lcssa = phi i64 [ %.sroa.15.5, %._crit_edge ], [ %.sroa.15.6.1, %bb.v ]
  %.sroa.0278.4.lcssa = phi i64 [ %.sroa.0278.5, %._crit_edge ], [ %.sroa.0278.6.1, %bb.v ]
  %i.hv = add i64 %.0178541, 4
  store i64 %i.hv, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1454, !noalias !1455
  br label %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit267

_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit267: ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208, %bb.ag
  %.sroa.24.7 = phi i64 [ %.sroa.24.6.1, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208 ], [ %.sroa.24.4.lcssa, %bb.ag ] ; 2 uses
  %.sroa.15.7 = phi i64 [ %.sroa.15.6.1, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208 ], [ %.sroa.15.4.lcssa, %bb.ag ]
  %.sroa.0278.7 = phi i64 [ %.sroa.0278.6.1, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i208 ], [ %.sroa.0278.4.lcssa, %bb.ag ]
  %i.hw = icmp ugt i64 %.sroa.24.7, 2020
  br i1 %i.hw, label %.preheader375, label %bb.cp

.preheader375:                                    ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit267
  %i.hx = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !1459, !noalias !1464
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader375, %bb.bn
  %.sroa.24.0 = phi i64 [ %.sroa.13.5, %bb.bn ], [ %.sroa.24.7, %.preheader375 ]
  %.sroa.15.0 = phi i64 [ %.sroa.9.5, %bb.bn ], [ %.sroa.15.7, %.preheader375 ]
  %.sroa.0278.0 = phi i64 [ %.sroa.0.5, %bb.bn ], [ %.sroa.0278.7, %.preheader375 ] ; 2 uses
  %.1179 = phi i64 [ %i.ie, %bb.bn ], [ %.0178541, %.preheader375 ] ; 4 uses
  %.1176 = phi i64 [ %i.pp, %bb.bn ], [ %.0175542, %.preheader375 ] ; 2 uses
  %.0172.in = phi i64 [ %.0172, %bb.bn ], [ %i.am, %.preheader375 ]
  %.0165 = phi i32 [ %i.pq, %bb.bn ], [ 0, %.preheader375 ] ; 2 uses
  %.0172 = add i64 %.0172.in, -1                  ; 12 uses
  %i.hz = load i32, ptr %i.n, align 4, !tbaa !31
  %i.ia = icmp slt i32 %i.hz, 5
  %i.ib = add i64 %.sroa.0278.0, -1
  %i.ic = tail call i64 @llvm.umin.i64(i64 %i.ib, i64 %.0172)
  %i.id = select i1 %i.ia, i64 %i.ic, i64 0       ; 6 uses
  %i.ie = add i64 %.1179, 1                       ; 16 uses
  %i.if = tail call noundef i64 @llvm.umin.i64(i64 %i.ie, i64 %i.g) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.ig = and i64 %i.ie, %3
  %i.ih = getelementptr i8, ptr %2, i64 %i.ig     ; 11 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.id
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477 ; 5 uses
  %.val272 = load i64, ptr %i.ih, align 1
  %i.ik = mul i64 %.val272, 8922571613522624512
  %i.il = lshr i64 %i.ik, 48                      ; 3 uses
  %i.im = sub i64 %i.ie, %i.hy                    ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ie
  br i1 %i.in, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.io = and i64 %i.z, %i.im
  %i.ip = getelementptr i8, ptr %2, i64 %i.io     ; 5 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 %i.id
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %i.is = icmp eq i8 %i.ij, %i.ir
  br i1 %i.is, label %.preheader371, label %bb.ao

.preheader371:                                    ; preds = %bb.ai
  %i.it = icmp ugt i64 %.0172, 7
  br i1 %i.it, label %.lr.ph473, label %.preheader370

.preheader370:                                    ; preds = %bb.ak, %.preheader371
  %.026.i113.i.i.lcssa = phi ptr [ %i.ip, %.preheader371 ], [ %i.jc, %bb.ak ] ; 3 uses
  %.024.i114.i.i.lcssa = phi ptr [ %i.ih, %.preheader371 ], [ %i.jb, %bb.ak ]
  %.022.i115.i.i.lcssa = phi i64 [ %.0172, %.preheader371 ], [ %i.jd, %bb.ak ] ; 3 uses
  %.not.i120.i.i477 = icmp eq i64 %.022.i115.i.i.lcssa, 0
  br i1 %.not.i120.i.i477, label %.critedge.i121.i.i, label %.lr.ph481.preheader

.lr.ph481.preheader:                              ; preds = %.preheader370
  %scevgep599 = getelementptr i8, ptr %.026.i113.i.i.lcssa, i64 %.022.i115.i.i.lcssa
  br label %.lr.ph481

.lr.ph473:                                        ; preds = %.preheader371, %bb.ak
  %.022.i115.i.i472 = phi i64 [ %i.jd, %bb.ak ], [ %.0172, %.preheader371 ]
  %.024.i114.i.i471 = phi ptr [ %i.jb, %bb.ak ], [ %i.ih, %.preheader371 ] ; 2 uses
  %.026.i113.i.i470 = phi ptr [ %i.jc, %bb.ak ], [ %i.ip, %.preheader371 ] ; 3 uses
  %.0.copyload.i127.i.i = load i64, ptr %.024.i114.i.i471, align 1, !alias.scope !1476, !noalias !1477 ; 2 uses
  %.0.copyload.i.i37.i = load i64, ptr %.026.i113.i.i470, align 1, !alias.scope !1476, !noalias !1477 ; 2 uses
  %.not30.i123.i.i = icmp eq i64 %.0.copyload.i127.i.i, %.0.copyload.i.i37.i
  br i1 %.not30.i123.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph473
  %i.iu = xor i64 %.0.copyload.i.i37.i, %.0.copyload.i127.i.i
  %i.iv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iu, i1 true)
  %i.iw = ptrtoint ptr %.026.i113.i.i470 to i64
  %i.ix = ptrtoint ptr %i.ip to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = lshr i64 %i.iv, 3
  %i.ja = add i64 %i.iy, %i.iz
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i

bb.ak:                                            ; preds = %.lr.ph473
  %i.jb = getelementptr inbounds nuw i8, ptr %.024.i114.i.i471, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.026.i113.i.i470, i64 8 ; 2 uses
  %i.jd = add i64 %.022.i115.i.i472, -8           ; 3 uses
  %i.je = icmp ugt i64 %i.jd, 7
  br i1 %i.je, label %.lr.ph473, label %.preheader370, !llvm.loop !62

.lr.ph481:                                        ; preds = %.lr.ph481.preheader, %bb.al
  %.123.i119.i.i480 = phi i64 [ %i.ji, %bb.al ], [ %.022.i115.i.i.lcssa, %.lr.ph481.preheader ]
  %.125.i118.i.i479 = phi ptr [ %i.jj, %bb.al ], [ %.024.i114.i.i.lcssa, %.lr.ph481.preheader ] ; 2 uses
  %.228.i117.i.i478 = phi ptr [ %i.jk, %bb.al ], [ %.026.i113.i.i.lcssa, %.lr.ph481.preheader ] ; 3 uses
  %i.jf = load i8, ptr %.228.i117.i.i478, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %i.jg = load i8, ptr %.125.i118.i.i479, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %i.jh = icmp eq i8 %i.jf, %i.jg
  br i1 %i.jh, label %bb.al, label %.critedge.i121.i.i

bb.al:                                            ; preds = %.lr.ph481
  %i.ji = add nsw i64 %.123.i119.i.i480, -1       ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.125.i118.i.i479, i64 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.228.i117.i.i478, i64 1
  %.not.i120.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not.i120.i.i, label %.critedge.i121.i.i, label %.lr.ph481, !llvm.loop !64

.critedge.i121.i.i:                               ; preds = %bb.al, %.lr.ph481, %.preheader370
  %.228.i117.i.i.lcssa = phi ptr [ %.026.i113.i.i.lcssa, %.preheader370 ], [ %.228.i117.i.i478, %.lr.ph481 ], [ %scevgep599, %bb.al ]
  %i.jl = ptrtoint ptr %.228.i117.i.i.lcssa to i64
  %i.jm = ptrtoint ptr %i.ip to i64
  %i.jn = sub i64 %i.jl, %i.jm
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i: ; preds = %bb.aj, %.critedge.i121.i.i
  %.2.i122.i.i = phi i64 [ %i.ja, %bb.aj ], [ %i.jn, %.critedge.i121.i.i ] ; 4 uses
  %i.jo = icmp ugt i64 %.2.i122.i.i, 3
  br i1 %i.jo, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i
  %i.jp = mul i64 %.2.i122.i.i, 135
  %i.jq = add i64 %i.jp, 1935                     ; 2 uses
  %i.jr = icmp ugt i64 %i.jq, 2020
  br i1 %i.jr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.js = getelementptr i8, ptr %i.ih, i64 %.2.i122.i.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i, %bb.ai, %bb.ah
  %.sroa.13.0 = phi i64 [ %i.jq, %bb.an ], [ 2020, %bb.am ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i ], [ 2020, %bb.ai ], [ 2020, %bb.ah ] ; 5 uses
  %.sroa.9.0 = phi i64 [ %i.hy, %bb.an ], [ 0, %bb.am ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i ], [ 0, %bb.ai ], [ 0, %bb.ah ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.2.i122.i.i, %bb.an ], [ %i.id, %bb.am ], [ %i.id, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i ], [ %i.id, %bb.ai ], [ %i.id, %bb.ah ] ; 5 uses
  %.299.i.i.in = phi i8 [ %i.jt, %bb.an ], [ %i.ij, %bb.am ], [ %i.ij, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i.i ], [ %i.ij, %bb.ai ], [ %i.ij, %bb.ah ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !1478
  store i64 %i.il, ptr %i.b, align 16, !tbaa !30, !noalias !1478
  %i.ju = add nuw nsw i64 %i.il, 8
  %i.jv = and i64 %i.ju, 65535                    ; 2 uses
  store i64 %i.jv, ptr %i.al, align 8, !tbaa !30, !noalias !1478
  %13 = lshr i64 %i.ie, 3
  %i.jw = and i64 %13, 1
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jw
  %i.jx = load i64, ptr %14, align 8, !tbaa !30, !noalias !1478
  %i.jy = icmp ugt i64 %.0172, 7                  ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.il
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3, !noalias !1477
  %i.kb = zext i32 %i.ka to i64                   ; 3 uses
  %i.kc = sub i64 %i.ie, %i.kb                    ; 3 uses
  %i.kd = and i64 %3, %i.kb
  %i.ke = getelementptr i8, ptr %2, i64 %i.kd     ; 5 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 %.sroa.0.0
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %.not.i22.i = icmp eq i8 %.299.i.i.in, %i.kg
  br i1 %.not.i22.i, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.kh = icmp eq i64 %i.ie, %i.kb
  %i.ki = icmp ugt i64 %i.kc, %i.if
  %i.kj = or i1 %i.kh, %i.ki
  br i1 %i.kj, label %bb.av, label %.preheader369, !prof !72

.preheader369:                                    ; preds = %bb.ap
  br i1 %i.jy, label %.lr.ph489, label %.preheader368

.preheader368:                                    ; preds = %bb.ar, %.preheader369
  %.026.i.i23.i.lcssa = phi ptr [ %i.ke, %.preheader369 ], [ %i.ks, %bb.ar ] ; 3 uses
  %.024.i.i24.i.lcssa = phi ptr [ %i.ih, %.preheader369 ], [ %i.kr, %bb.ar ]
  %.022.i.i25.i.lcssa = phi i64 [ %.0172, %.preheader369 ], [ %i.kt, %bb.ar ] ; 3 uses
  %.not.i.i30.i493 = icmp eq i64 %.022.i.i25.i.lcssa, 0
  br i1 %.not.i.i30.i493, label %.critedge.i.i31.i, label %.lr.ph497.preheader

.lr.ph497.preheader:                              ; preds = %.preheader368
  %scevgep600 = getelementptr i8, ptr %.026.i.i23.i.lcssa, i64 %.022.i.i25.i.lcssa
  br label %.lr.ph497

.lr.ph489:                                        ; preds = %.preheader369, %bb.ar
  %.022.i.i25.i488 = phi i64 [ %i.kt, %bb.ar ], [ %.0172, %.preheader369 ]
  %.024.i.i24.i487 = phi ptr [ %i.kr, %bb.ar ], [ %i.ih, %.preheader369 ] ; 2 uses
  %.026.i.i23.i486 = phi ptr [ %i.ks, %bb.ar ], [ %i.ke, %.preheader369 ] ; 3 uses
  %.0.copyload.i129.i.i = load i64, ptr %.024.i.i24.i487, align 1, !alias.scope !1476, !noalias !1477 ; 2 uses
  %.0.copyload.i128.i.i = load i64, ptr %.026.i.i23.i486, align 1, !alias.scope !1476, !noalias !1477 ; 2 uses
  %.not30.i.i34.i = icmp eq i64 %.0.copyload.i129.i.i, %.0.copyload.i128.i.i
  br i1 %.not30.i.i34.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph489
  %i.kk = xor i64 %.0.copyload.i128.i.i, %.0.copyload.i129.i.i
  %i.kl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kk, i1 true)
  %i.km = ptrtoint ptr %.026.i.i23.i486 to i64
  %i.kn = ptrtoint ptr %i.ke to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = lshr i64 %i.kl, 3
  %i.kq = add i64 %i.ko, %i.kp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i

bb.ar:                                            ; preds = %.lr.ph489
  %i.kr = getelementptr inbounds nuw i8, ptr %.024.i.i24.i487, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.026.i.i23.i486, i64 8 ; 2 uses
  %i.kt = add i64 %.022.i.i25.i488, -8            ; 3 uses
  %i.ku = icmp ugt i64 %i.kt, 7
  br i1 %i.ku, label %.lr.ph489, label %.preheader368, !llvm.loop !62

.lr.ph497:                                        ; preds = %.lr.ph497.preheader, %bb.as
  %.123.i.i29.i496 = phi i64 [ %i.ky, %bb.as ], [ %.022.i.i25.i.lcssa, %.lr.ph497.preheader ]
  %.125.i.i28.i495 = phi ptr [ %i.kz, %bb.as ], [ %.024.i.i24.i.lcssa, %.lr.ph497.preheader ] ; 2 uses
  %.228.i.i27.i494 = phi ptr [ %i.la, %bb.as ], [ %.026.i.i23.i.lcssa, %.lr.ph497.preheader ] ; 3 uses
  %i.kv = load i8, ptr %.228.i.i27.i494, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %i.kw = load i8, ptr %.125.i.i28.i495, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %i.kx = icmp eq i8 %i.kv, %i.kw
  br i1 %i.kx, label %bb.as, label %.critedge.i.i31.i

bb.as:                                            ; preds = %.lr.ph497
  %i.ky = add nsw i64 %.123.i.i29.i496, -1        ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.125.i.i28.i495, i64 1
  %i.la = getelementptr inbounds nuw i8, ptr %.228.i.i27.i494, i64 1
  %.not.i.i30.i = icmp eq i64 %i.ky, 0
  br i1 %.not.i.i30.i, label %.critedge.i.i31.i, label %.lr.ph497, !llvm.loop !64

.critedge.i.i31.i:                                ; preds = %bb.as, %.lr.ph497, %.preheader368
  %.228.i.i27.i.lcssa = phi ptr [ %.026.i.i23.i.lcssa, %.preheader368 ], [ %.228.i.i27.i494, %.lr.ph497 ], [ %scevgep600, %bb.as ]
  %i.lb = ptrtoint ptr %.228.i.i27.i.lcssa to i64
  %i.lc = ptrtoint ptr %i.ke to i64
  %i.ld = sub i64 %i.lb, %i.lc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i: ; preds = %bb.aq, %.critedge.i.i31.i
  %.2.i.i33.i = phi i64 [ %i.kq, %bb.aq ], [ %i.ld, %.critedge.i.i31.i ] ; 4 uses
  %i.le = icmp ugt i64 %.2.i.i33.i, 3
  br i1 %i.le, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i
  %i.lf = mul i64 %.2.i.i33.i, 135
  %i.lg = trunc i64 %i.kc to i32
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lg, i1 true)
  %i.li = xor i32 %i.lh, 31
  %.neg551 = mul nsw i32 %i.li, -30
  %narrow550 = add nsw i32 %.neg551, 1920
  %i.lj = zext nneg i32 %narrow550 to i64
  %i.lk = add i64 %i.lf, %i.lj                    ; 2 uses
  %i.ll = icmp ult i64 %.sroa.13.0, %i.lk
  br i1 %i.ll, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lm = getelementptr i8, ptr %i.ih, i64 %.2.i.i33.i
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i, %bb.ap, %bb.ao
  %.sroa.13.4 = phi i64 [ %.sroa.13.0, %bb.ap ], [ %i.lk, %bb.au ], [ %.sroa.13.0, %bb.at ], [ %.sroa.13.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i ], [ %.sroa.13.0, %bb.ao ] ; 5 uses
  %.sroa.9.4 = phi i64 [ %.sroa.9.0, %bb.ap ], [ %i.kc, %bb.au ], [ %.sroa.9.0, %bb.at ], [ %.sroa.9.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i ], [ %.sroa.9.0, %bb.ao ] ; 4 uses
  %.sroa.0.4 = phi i64 [ %.sroa.0.0, %bb.ap ], [ %.2.i.i33.i, %bb.au ], [ %.sroa.0.0, %bb.at ], [ %.sroa.0.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i ], [ %.sroa.0.0, %bb.ao ] ; 5 uses
  %.6103.i.i.in = phi i8 [ %.299.i.i.in, %bb.ap ], [ %i.ln, %bb.au ], [ %.299.i.i.in, %bb.at ], [ %.299.i.i.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i ], [ %.299.i.i.in, %bb.ao ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.jv
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !3, !noalias !1477
  %i.lq = zext i32 %i.lp to i64                   ; 3 uses
  %i.lr = sub i64 %i.ie, %i.lq                    ; 3 uses
  %i.ls = and i64 %3, %i.lq
  %i.lt = getelementptr i8, ptr %2, i64 %i.ls     ; 5 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 %.sroa.0.4
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %.not.i22.i.1 = icmp eq i8 %.6103.i.i.in, %i.lv
  br i1 %.not.i22.i.1, label %bb.aw, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.lw = icmp eq i64 %i.ie, %i.lq
  %i.lx = icmp ugt i64 %i.lr, %i.if
  %i.ly = or i1 %i.lw, %i.lx
  br i1 %i.ly, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i, label %.preheader369.1, !prof !72

.preheader369.1:                                  ; preds = %bb.aw
  br i1 %i.jy, label %.lr.ph489.1, label %.preheader368.1

.lr.ph489.1:                                      ; preds = %.preheader369.1, %bb.ay
  %.022.i.i25.i488.1 = phi i64 [ %i.mi, %bb.ay ], [ %.0172, %.preheader369.1 ]
  %.024.i.i24.i487.1 = phi ptr [ %i.mg, %bb.ay ], [ %i.ih, %.preheader369.1 ] ; 2 uses
  %.026.i.i23.i486.1 = phi ptr [ %i.mh, %bb.ay ], [ %i.lt, %.preheader369.1 ] ; 3 uses
  %.0.copyload.i129.i.i.1 = load i64, ptr %.024.i.i24.i487.1, align 1, !alias.scope !1476, !noalias !1477 ; 2 uses
  %.0.copyload.i128.i.i.1 = load i64, ptr %.026.i.i23.i486.1, align 1, !alias.scope !1476, !noalias !1477 ; 2 uses
  %.not30.i.i34.i.1 = icmp eq i64 %.0.copyload.i129.i.i.1, %.0.copyload.i128.i.i.1
  br i1 %.not30.i.i34.i.1, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph489.1
  %i.lz = xor i64 %.0.copyload.i128.i.i.1, %.0.copyload.i129.i.i.1
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lz, i1 true)
  %i.mb = ptrtoint ptr %.026.i.i23.i486.1 to i64
  %i.mc = ptrtoint ptr %i.lt to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = lshr i64 %i.ma, 3
  %i.mf = add i64 %i.md, %i.me
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1

bb.ay:                                            ; preds = %.lr.ph489.1
  %i.mg = getelementptr inbounds nuw i8, ptr %.024.i.i24.i487.1, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.026.i.i23.i486.1, i64 8 ; 2 uses
  %i.mi = add i64 %.022.i.i25.i488.1, -8          ; 3 uses
  %i.mj = icmp ugt i64 %i.mi, 7
  br i1 %i.mj, label %.lr.ph489.1, label %.preheader368.1, !llvm.loop !62

.preheader368.1:                                  ; preds = %bb.ay, %.preheader369.1
  %.026.i.i23.i.lcssa.1 = phi ptr [ %i.lt, %.preheader369.1 ], [ %i.mh, %bb.ay ] ; 3 uses
  %.024.i.i24.i.lcssa.1 = phi ptr [ %i.ih, %.preheader369.1 ], [ %i.mg, %bb.ay ]
  %.022.i.i25.i.lcssa.1 = phi i64 [ %.0172, %.preheader369.1 ], [ %i.mi, %bb.ay ] ; 3 uses
  %.not.i.i30.i493.1 = icmp eq i64 %.022.i.i25.i.lcssa.1, 0
  br i1 %.not.i.i30.i493.1, label %.critedge.i.i31.i.1, label %.lr.ph497.preheader.1

.lr.ph497.preheader.1:                            ; preds = %.preheader368.1
  %scevgep600.1 = getelementptr i8, ptr %.026.i.i23.i.lcssa.1, i64 %.022.i.i25.i.lcssa.1
  br label %.lr.ph497.1

.lr.ph497.1:                                      ; preds = %bb.az, %.lr.ph497.preheader.1
  %.123.i.i29.i496.1 = phi i64 [ %i.mn, %bb.az ], [ %.022.i.i25.i.lcssa.1, %.lr.ph497.preheader.1 ]
  %.125.i.i28.i495.1 = phi ptr [ %i.mo, %bb.az ], [ %.024.i.i24.i.lcssa.1, %.lr.ph497.preheader.1 ] ; 2 uses
  %.228.i.i27.i494.1 = phi ptr [ %i.mp, %bb.az ], [ %.026.i.i23.i.lcssa.1, %.lr.ph497.preheader.1 ] ; 3 uses
  %i.mk = load i8, ptr %.228.i.i27.i494.1, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %i.ml = load i8, ptr %.125.i.i28.i495.1, align 1, !tbaa !54, !alias.scope !1476, !noalias !1477
  %i.mm = icmp eq i8 %i.mk, %i.ml
  br i1 %i.mm, label %bb.az, label %.critedge.i.i31.i.1

bb.az:                                            ; preds = %.lr.ph497.1
  %i.mn = add nsw i64 %.123.i.i29.i496.1, -1      ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.125.i.i28.i495.1, i64 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.228.i.i27.i494.1, i64 1
  %.not.i.i30.i.1 = icmp eq i64 %i.mn, 0
  br i1 %.not.i.i30.i.1, label %.critedge.i.i31.i.1, label %.lr.ph497.1, !llvm.loop !64

.critedge.i.i31.i.1:                              ; preds = %.lr.ph497.1, %bb.az, %.preheader368.1
  %.228.i.i27.i.lcssa.1 = phi ptr [ %.026.i.i23.i.lcssa.1, %.preheader368.1 ], [ %.228.i.i27.i494.1, %.lr.ph497.1 ], [ %scevgep600.1, %bb.az ]
  %i.mq = ptrtoint ptr %.228.i.i27.i.lcssa.1 to i64
  %i.mr = ptrtoint ptr %i.lt to i64
  %i.ms = sub i64 %i.mq, %i.mr
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1: ; preds = %.critedge.i.i31.i.1, %bb.ax
  %.2.i.i33.i.1 = phi i64 [ %i.mf, %bb.ax ], [ %i.ms, %.critedge.i.i31.i.1 ] ; 3 uses
  %i.mt = icmp ugt i64 %.2.i.i33.i.1, 3
  br i1 %i.mt, label %bb.ba, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i

bb.ba:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1
  %i.mu = mul i64 %.2.i.i33.i.1, 135
  %i.mv = trunc i64 %i.lr to i32
  %i.mw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mv, i1 true)
  %i.mx = xor i32 %i.mw, 31
  %.neg551.1 = mul nsw i32 %i.mx, -30
  %narrow550.1 = add nsw i32 %.neg551.1, 1920
  %i.my = zext nneg i32 %narrow550.1 to i64
  %i.mz = add i64 %i.mu, %i.my                    ; 2 uses
  %i.na = icmp ult i64 %.sroa.13.4, %i.mz
  br i1 %i.na, label %bb.bb, label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i

bb.bb:                                            ; preds = %bb.ba
  br label %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i

_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i: ; preds = %bb.bb, %bb.ba, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1, %bb.aw, %bb.av
  %.sroa.13.4.1 = phi i64 [ %.sroa.13.4, %bb.aw ], [ %i.mz, %bb.bb ], [ %.sroa.13.4, %bb.ba ], [ %.sroa.13.4, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1 ], [ %.sroa.13.4, %bb.av ] ; 3 uses
  %.sroa.9.4.1 = phi i64 [ %.sroa.9.4, %bb.aw ], [ %i.lr, %bb.bb ], [ %.sroa.9.4, %bb.ba ], [ %.sroa.9.4, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1 ], [ %.sroa.9.4, %bb.av ] ; 3 uses
  %.sroa.0.4.1 = phi i64 [ %.sroa.0.4, %bb.aw ], [ %.2.i.i33.i.1, %bb.bb ], [ %.sroa.0.4, %bb.ba ], [ %.sroa.0.4, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i32.i.1 ], [ %.sroa.0.4, %bb.av ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !1478
  %i.nb = trunc i64 %i.ie to i32                  ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.jx
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !3, !noalias !1477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.nd = and i64 %i.ie, 3
  %.not.i.i = icmp ne i64 %i.nd, 0
  %i.ne = icmp ult i64 %.0172, 32
  %or.cond66.i.i = or i1 %.not.i.i, %i.ne
  br i1 %or.cond66.i.i, label %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i
  %i.nf = load i64, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1484, !noalias !1485 ; 2 uses
  %.not64.i.i524 = icmp ugt i64 %i.nf, %i.ie
  br i1 %.not64.i.i524, label %bb.bm, label %.lr.ph530

.lr.ph530:                                        ; preds = %bb.bc
  %i.ng = load i32, ptr %i.ac, align 4, !tbaa !651, !alias.scope !1484, !noalias !1485
  %i.nh = load i32, ptr %i.ad, align 8, !tbaa !652, !alias.scope !1484, !noalias !1485
  %.promoted535 = load i32, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1484, !noalias !1485
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph530, %bb.bl
  %i.ni = phi i32 [ %.promoted535, %.lr.ph530 ], [ %i.nw, %bb.bl ] ; 2 uses
  %.0.i.i528 = phi i64 [ %i.nf, %.lr.ph530 ], [ %i.pm, %bb.bl ] ; 5 uses
  %.sroa.0.2527 = phi i64 [ %.sroa.0.4.1, %.lr.ph530 ], [ %.sroa.0.3, %bb.bl ] ; 6 uses
  %.sroa.9.2526 = phi i64 [ %.sroa.9.4.1, %.lr.ph530 ], [ %.sroa.9.3, %bb.bl ] ; 5 uses
  %.sroa.13.2525 = phi i64 [ %.sroa.13.4.1, %.lr.ph530 ], [ %.sroa.13.3, %bb.bl ] ; 6 uses
  %i.nj = and i32 %i.ni, 1073741823               ; 2 uses
  %i.nk = and i64 %.0.i.i528, %3
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !54, !alias.scope !1487, !noalias !1488
  %i.nn = add i64 %.0.i.i528, 32
  %i.no = and i64 %i.nn, %3
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !54, !alias.scope !1487, !noalias !1488
  %i.nr = mul i32 %i.ng, %i.ni
  %i.ns = zext i8 %i.nq to i32
  %i.nt = add nuw nsw i32 %i.ns, 1
  %i.nu = add i32 %i.nt, %i.nr
  %i.nv = zext i8 %i.nm to i32
  %.neg.i273 = xor i32 %i.nv, -1
  %.neg5.i274 = mul i32 %i.nh, %.neg.i273
  %i.nw = add i32 %i.nu, %.neg5.i274              ; 2 uses
  %i.nx = icmp samesign ult i32 %i.nj, 16777216
  br i1 %i.nx, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ny = load ptr, ptr %i.ae, align 8, !tbaa !655, !alias.scope !1484, !noalias !1485
  %i.nz = zext nneg i32 %i.nj to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nz ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3, !noalias !1488 ; 3 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = trunc i64 %.0.i.i528 to i32
  store i32 %i.od, ptr %i.oa, align 4, !tbaa !3, !noalias !1488
  %i.oe = icmp eq i64 %.0.i.i528, %i.ie
  %i.of = icmp ne i32 %i.ob, -1
  %or.cond.i.i = select i1 %i.oe, i1 %i.of, i1 false
  br i1 %or.cond.i.i, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.og = sub i32 %i.nb, %i.ob                    ; 2 uses
  %i.oh = zext i32 %i.og to i64                   ; 2 uses
  %.not65.i.i = icmp ult i64 %i.if, %i.oh
  br i1 %.not65.i.i, label %bb.bl, label %.lr.ph512.preheader

.lr.ph512.preheader:                              ; preds = %bb.bf
  %i.oi = and i64 %3, %i.oc
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 %i.oi ; 3 uses
  br label %.lr.ph512

.preheader:                                       ; preds = %bb.bh
  %.not.i.i.i516 = icmp eq i64 %i.ot, 0
  br i1 %.not.i.i.i516, label %.critedge.i.i.i, label %.lr.ph520.preheader

.lr.ph520.preheader:                              ; preds = %.preheader
  %scevgep601 = getelementptr i8, ptr %.026.i.i.i508, i64 %.022.i.i.i510
  br label %.lr.ph520

.lr.ph512:                                        ; preds = %.lr.ph512.preheader, %bb.bh
  %.022.i.i.i510 = phi i64 [ %i.ot, %bb.bh ], [ %.0172, %.lr.ph512.preheader ] ; 2 uses
  %.024.i.i.i509 = phi ptr [ %i.or, %bb.bh ], [ %i.ih, %.lr.ph512.preheader ] ; 2 uses
  %.026.i.i.i508 = phi ptr [ %i.os, %bb.bh ], [ %i.oj, %.lr.ph512.preheader ] ; 4 uses
  %.0.copyload.i67.i.i = load i64, ptr %.024.i.i.i509, align 1, !alias.scope !1487, !noalias !1488 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %.026.i.i.i508, align 1, !alias.scope !1487, !noalias !1488 ; 2 uses
  %.not30.i.i.i = icmp eq i64 %.0.copyload.i67.i.i, %.0.copyload.i.i.i
  br i1 %.not30.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph512
  %i.ok = xor i64 %.0.copyload.i.i.i, %.0.copyload.i67.i.i
  %i.ol = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ok, i1 true)
  %i.om = ptrtoint ptr %.026.i.i.i508 to i64
  %i.on = ptrtoint ptr %i.oj to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = lshr i64 %i.ol, 3
  %i.oq = add i64 %i.oo, %i.op
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i

bb.bh:                                            ; preds = %.lr.ph512
  %i.or = getelementptr inbounds nuw i8, ptr %.024.i.i.i509, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.026.i.i.i508, i64 8 ; 3 uses
  %i.ot = add i64 %.022.i.i.i510, -8              ; 4 uses
  %i.ou = icmp ugt i64 %i.ot, 7
  br i1 %i.ou, label %.lr.ph512, label %.preheader, !llvm.loop !62

.lr.ph520:                                        ; preds = %.lr.ph520.preheader, %bb.bi
  %.123.i.i.i519 = phi i64 [ %i.oy, %bb.bi ], [ %i.ot, %.lr.ph520.preheader ]
  %.125.i.i.i518 = phi ptr [ %i.oz, %bb.bi ], [ %i.or, %.lr.ph520.preheader ] ; 2 uses
  %.228.i.i.i517 = phi ptr [ %i.pa, %bb.bi ], [ %i.os, %.lr.ph520.preheader ] ; 3 uses
  %i.ov = load i8, ptr %.228.i.i.i517, align 1, !tbaa !54, !alias.scope !1487, !noalias !1488
  %i.ow = load i8, ptr %.125.i.i.i518, align 1, !tbaa !54, !alias.scope !1487, !noalias !1488
  %i.ox = icmp eq i8 %i.ov, %i.ow
  br i1 %i.ox, label %bb.bi, label %.critedge.i.i.i

bb.bi:                                            ; preds = %.lr.ph520
  %i.oy = add nsw i64 %.123.i.i.i519, -1          ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.125.i.i.i518, i64 1
  %i.pa = getelementptr inbounds nuw i8, ptr %.228.i.i.i517, i64 1
  %.not.i.i.i = icmp eq i64 %i.oy, 0
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph520, !llvm.loop !64

.critedge.i.i.i:                                  ; preds = %bb.bi, %.lr.ph520, %.preheader
  %.228.i.i.i.lcssa = phi ptr [ %i.os, %.preheader ], [ %.228.i.i.i517, %.lr.ph520 ], [ %scevgep601, %bb.bi ]
  %i.pb = ptrtoint ptr %.228.i.i.i.lcssa to i64
  %i.pc = ptrtoint ptr %i.oj to i64
  %i.pd = sub i64 %i.pb, %i.pc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i: ; preds = %bb.bg, %.critedge.i.i.i
  %.2.i.i.i = phi i64 [ %i.oq, %bb.bg ], [ %i.pd, %.critedge.i.i.i ] ; 4 uses
  %i.pe = icmp ugt i64 %.2.i.i.i, 3
  %i.pf = icmp ugt i64 %.2.i.i.i, %.sroa.0.2527
  %or.cond353 = select i1 %i.pe, i1 %i.pf, i1 false
  br i1 %or.cond353, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i
  %i.pg = mul i64 %.2.i.i.i, 135
  %i.ph = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.og, i1 true)
  %i.pi = xor i32 %i.ph, 31
  %.neg553 = mul nsw i32 %i.pi, -30
  %narrow552 = add nsw i32 %.neg553, 1920
  %i.pj = zext nneg i32 %narrow552 to i64
  %i.pk = add i64 %i.pg, %i.pj                    ; 2 uses
  %i.pl = icmp ugt i64 %i.pk, %.sroa.13.2525
  br i1 %i.pl, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i, %bb.bf, %bb.be, %bb.bd
  %.sroa.13.3 = phi i64 [ %.sroa.13.2525, %bb.bf ], [ %i.pk, %bb.bk ], [ %.sroa.13.2525, %bb.bj ], [ %.sroa.13.2525, %bb.bd ], [ %.sroa.13.2525, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i ], [ %.sroa.13.2525, %bb.be ] ; 2 uses
  %.sroa.9.3 = phi i64 [ %.sroa.9.2526, %bb.bf ], [ %i.oh, %bb.bk ], [ %.sroa.9.2526, %bb.bj ], [ %.sroa.9.2526, %bb.bd ], [ %.sroa.9.2526, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i ], [ %.sroa.9.2526, %bb.be ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.2527, %bb.bf ], [ %.2.i.i.i, %bb.bk ], [ %.sroa.0.2527, %bb.bj ], [ %.sroa.0.2527, %bb.bd ], [ %.sroa.0.2527, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i ], [ %.sroa.0.2527, %bb.be ] ; 2 uses
  %i.pm = add i64 %.0.i.i528, 4                   ; 2 uses
  %.not64.i.i = icmp ugt i64 %i.pm, %i.ie
  br i1 %.not64.i.i, label %._crit_edge531, label %bb.bd, !llvm.loop !656

._crit_edge531:                                   ; preds = %bb.bl
  store i32 %i.nw, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1484, !noalias !1485
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge531, %bb.bc
  %.sroa.13.2.lcssa = phi i64 [ %.sroa.13.3, %._crit_edge531 ], [ %.sroa.13.4.1, %bb.bc ]
  %.sroa.9.2.lcssa = phi i64 [ %.sroa.9.3, %._crit_edge531 ], [ %.sroa.9.4.1, %bb.bc ]
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.3, %._crit_edge531 ], [ %.sroa.0.4.1, %bb.bc ]
  %i.pn = add i64 %.1179, 5
  store i64 %i.pn, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1484, !noalias !1485
  br label %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i, %bb.bm
  %.sroa.13.5 = phi i64 [ %.sroa.13.4.1, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i ], [ %.sroa.13.2.lcssa, %bb.bm ] ; 2 uses
  %.sroa.9.5 = phi i64 [ %.sroa.9.4.1, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i ], [ %.sroa.9.2.lcssa, %bb.bm ] ; 2 uses
  %.sroa.0.5 = phi i64 [ %.sroa.0.4.1, %_ZN13duckdb_brotliL18FindLongestMatchH3EPNS_2H3EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit.i ], [ %.sroa.0.2.lcssa, %bb.bm ] ; 2 uses
  %i.po = add i64 %.sroa.24.0, 175
  %.not196 = icmp ult i64 %.sroa.13.5, %i.po
  br i1 %.not196, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.pp = add i64 %.1176, 1                       ; 2 uses
  %i.pq = add nuw nsw i32 %.0165, 1
  %i.pr = icmp samesign ult i32 %.0165, 3
  %i.ps = add i64 %.1179, 9
  %i.pt = icmp ult i64 %i.ps, %i.k
  %or.cond355 = and i1 %i.pr, %i.pt
  br i1 %or.cond355, label %bb.ah, label %bb.bo, !llvm.loop !1489

bb.bo:                                            ; preds = %bb.bn, %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %.sroa.15.1.ph = phi i64 [ %.sroa.9.5, %bb.bn ], [ %.sroa.15.0, %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 11 uses
  %.sroa.0278.1.ph = phi i64 [ %.sroa.0.5, %bb.bn ], [ %.sroa.0278.0, %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 7 uses
  %.3181.ph = phi i64 [ %i.ie, %bb.bn ], [ %.1179, %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 4 uses
  %.3.ph = phi i64 [ %i.pp, %bb.bn ], [ %.1176, %_ZN13duckdb_brotliL19FindLongestMatchH35EPNS_3H35EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 10 uses
  %i.pu = shl i64 %.sroa.0278.1.ph, 1
  %i.pv = add i64 %i.pu, %i.q
  %i.pw = add i64 %i.pv, %.3181.ph                ; 3 uses
  %i.px = add i64 %.3181.ph, %i.i
  %i.py = tail call noundef i64 @llvm.umin.i64(i64 %i.px, i64 %i.g)
  %i.pz = add i64 %i.py, %i.s                     ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.15.1.ph, %i.pz
  br i1 %.not.i, label %bb.bx, label %bb.bp

end_hunk_11
begin_hunk_12_@_ZL28CreateBackwardReferencesNH35mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.yc = add nuw nsw i64 %i.xz, %i.yb
  %i.yd = and i64 %i.yc, 65535
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.yd
  store i32 %i.ya, ptr %i.ye, align 4, !tbaa !3, !noalias !1501
  %i.yf = add i64 %.5459, 2                       ; 2 uses
  %i.yg = add i64 %.5183458, 2                    ; 3 uses
  %i.yh = icmp ult i64 %i.yg, %i.xu
  br i1 %i.yh, label %.lr.ph461, label %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit, !llvm.loop !1506

_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit: ; preds = %.lr.ph461, %.lr.ph467, %.lr.ph539.prol.loopexit, %.lr.ph539, %bb.cs, %bb.cr, %bb.co, %bb.cp
  %.1186 = phi ptr [ %i.st, %bb.co ], [ %.0185540, %bb.cp ], [ %.0185540, %bb.cr ], [ %.0185540, %bb.cs ], [ %.0185540, %.lr.ph467 ], [ %i.st, %.lr.ph539.prol.loopexit ], [ %i.st, %.lr.ph539 ], [ %.0185540, %.lr.ph461 ] ; 2 uses
  %.6184 = phi i64 [ %i.vk, %bb.co ], [ %i.xa, %bb.cp ], [ %i.xa, %bb.cr ], [ %i.xa, %bb.cs ], [ %i.xr, %.lr.ph467 ], [ %i.vk, %.lr.ph539.prol.loopexit ], [ %i.vk, %.lr.ph539 ], [ %i.yg, %.lr.ph461 ] ; 3 uses
  %.6 = phi i64 [ 0, %bb.co ], [ %i.wz, %bb.cp ], [ %i.wz, %bb.cr ], [ %i.wz, %bb.cs ], [ %i.xq, %.lr.ph467 ], [ 0, %.lr.ph539.prol.loopexit ], [ 0, %.lr.ph539 ], [ %i.yf, %.lr.ph461 ] ; 2 uses
  %.1174 = phi i64 [ %i.pw, %bb.co ], [ %.0173543, %bb.cp ], [ %.0173543, %bb.cr ], [ %.0173543, %bb.cs ], [ %.0173543, %.lr.ph467 ], [ %i.pw, %.lr.ph539.prol.loopexit ], [ %i.pw, %.lr.ph539 ], [ %.0173543, %.lr.ph461 ]
  %i.yi = add i64 %.6184, 8
  %i.yj = icmp ult i64 %i.yi, %i.k
  br i1 %i.yj, label %.thread, label %._crit_edge544, !llvm.loop !1507

._crit_edge544:                                   ; preds = %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit, %bb.a
  %.0185.lcssa = phi ptr [ %8, %bb.a ], [ %.1186, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit ]
  %.0175.lcssa = phi i64 [ %i.j, %bb.a ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH35EPNS_3H35EPKhmmm.exit ]
  %i.yk = sub i64 %i.k, %.0178.lcssa
  %i.yl = add i64 %i.yk, %.0175.lcssa
  store i64 %i.yl, ptr %7, align 8, !tbaa !30
  %i.ym = ptrtoint ptr %.0185.lcssa to i64
  %i.yn = ptrtoint ptr %8 to i64
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = ashr exact i64 %i.yo, 4
  %i.yq = load i64, ptr %9, align 8, !tbaa !30
  %i.yr = add i64 %i.yq, %i.yp
  store i64 %i.yr, ptr %9, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL28CreateBackwardReferencesNH55mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add i64 %i.f, -16                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.j = load i64, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.k = add i64 %1, %0                           ; 6 uses
  %i.l = icmp ugt i64 %0, 7
  %i.m = add i64 %i.k, -7                         ; 3 uses
  %spec.select = select i1 %i.l, i64 %i.m, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.o, 9
  %i.q = select i1 %i.p, i64 64, i64 512          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = add i64 %1, 8
  %i.u = icmp ult i64 %i.t, %i.k
  br i1 %i.u, label %.thread.lr.ph, label %._crit_edge565

.thread.lr.ph:                                    ; preds = %bb.a
  %i.v = add i64 %i.q, %1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !628, !alias.scope !1508, !noalias !1511 ; 15 uses
  %i.z = and i64 %3, 4294967295                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.af = shl nuw nsw i64 %i.q, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %.thread

.thread:                                          ; preds = %.thread.lr.ph, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit
  %.0173564 = phi i64 [ %i.v, %.thread.lr.ph ], [ %.1174, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 7 uses
  %.0175563 = phi i64 [ %i.j, %.thread.lr.ph ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 2 uses
  %.0178562 = phi i64 [ %1, %.thread.lr.ph ], [ %.6184, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 24 uses
  %.0185561 = phi ptr [ %8, %.thread.lr.ph ], [ %.1186, %_ZN13duckdb_brotliL13StoreRangeH54EPNS_3H54EPKhmmm.exit ] ; 13 uses
  %i.aq = sub i64 %i.k, %.0178562                 ; 16 uses
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %.0178562, i64 %i.g) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.as = and i64 %.0178562, %3
  %i.at = getelementptr i8, ptr %2, i64 %i.as     ; 18 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517 ; 5 uses
  %.val293 = load i64, ptr %i.at, align 1
  %i.av = mul i64 %.val293, -2064201331557805312
  %i.aw = lshr i64 %i.av, 44                      ; 5 uses
  %i.ax = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !1516, !noalias !1518
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = sub i64 %.0178562, %i.ay                ; 2 uses
  %i.ba = icmp ult i64 %i.az, %.0178562
  br i1 %i.ba, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.thread
  %i.bb = and i64 %i.z, %i.az
  %i.bc = getelementptr i8, ptr %2, i64 %i.bb     ; 5 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.be = icmp eq i8 %i.au, %i.bd
  br i1 %i.be, label %.preheader400, label %bb.h

.preheader400:                                    ; preds = %bb.b
  %i.bf = icmp ugt i64 %i.aq, 7
  br i1 %i.bf, label %.lr.ph, label %.preheader399

.preheader399:                                    ; preds = %bb.d, %.preheader400
  %.026.i113.i.lcssa = phi ptr [ %i.bc, %.preheader400 ], [ %i.bo, %bb.d ] ; 3 uses
  %.024.i114.i.lcssa = phi ptr [ %i.at, %.preheader400 ], [ %i.bn, %bb.d ]
  %.022.i115.i.lcssa = phi i64 [ %i.aq, %.preheader400 ], [ %i.bp, %bb.d ] ; 3 uses
  %.not.i120.i424 = icmp eq i64 %.022.i115.i.lcssa, 0
  br i1 %.not.i120.i424, label %.critedge.i121.i, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %.preheader399
  %scevgep = getelementptr i8, ptr %.026.i113.i.lcssa, i64 %.022.i115.i.lcssa
  br label %.lr.ph428

.lr.ph:                                           ; preds = %.preheader400, %bb.d
  %.022.i115.i421 = phi i64 [ %i.bp, %bb.d ], [ %i.aq, %.preheader400 ]
  %.024.i114.i420 = phi ptr [ %i.bn, %bb.d ], [ %i.at, %.preheader400 ] ; 2 uses
  %.026.i113.i419 = phi ptr [ %i.bo, %bb.d ], [ %i.bc, %.preheader400 ] ; 3 uses
  %.0.copyload.i127.i = load i64, ptr %.024.i114.i420, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i113.i419, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.not30.i123.i = icmp eq i64 %.0.copyload.i127.i, %.0.copyload.i.i
  br i1 %.not30.i123.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bg = xor i64 %.0.copyload.i.i, %.0.copyload.i127.i
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bg, i1 true)
  %i.bi = ptrtoint ptr %.026.i113.i419 to i64
  %i.bj = ptrtoint ptr %i.bc to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = lshr i64 %i.bh, 3
  %i.bm = add i64 %i.bk, %i.bl
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

bb.d:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.024.i114.i420, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.i113.i419, i64 8 ; 2 uses
  %i.bp = add i64 %.022.i115.i421, -8             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 7
  br i1 %i.bq, label %.lr.ph, label %.preheader399, !llvm.loop !62

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %bb.e
  %.123.i119.i427 = phi i64 [ %i.bu, %bb.e ], [ %.022.i115.i.lcssa, %.lr.ph428.preheader ]
  %.125.i118.i426 = phi ptr [ %i.bv, %bb.e ], [ %.024.i114.i.lcssa, %.lr.ph428.preheader ] ; 2 uses
  %.228.i117.i425 = phi ptr [ %i.bw, %bb.e ], [ %.026.i113.i.lcssa, %.lr.ph428.preheader ] ; 3 uses
  %i.br = load i8, ptr %.228.i117.i425, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.bs = load i8, ptr %.125.i118.i426, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.bt = icmp eq i8 %i.br, %i.bs
  br i1 %i.bt, label %bb.e, label %.critedge.i121.i

bb.e:                                             ; preds = %.lr.ph428
  %i.bu = add nsw i64 %.123.i119.i427, -1         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.125.i118.i426, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.228.i117.i425, i64 1
  %.not.i120.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i120.i, label %.critedge.i121.i, label %.lr.ph428, !llvm.loop !64

.critedge.i121.i:                                 ; preds = %bb.e, %.lr.ph428, %.preheader399
  %.228.i117.i.lcssa = phi ptr [ %.026.i113.i.lcssa, %.preheader399 ], [ %.228.i117.i425, %.lr.ph428 ], [ %scevgep, %bb.e ]
  %i.bx = ptrtoint ptr %.228.i117.i.lcssa to i64
  %i.by = ptrtoint ptr %i.bc to i64
  %i.bz = sub i64 %i.bx, %i.by
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i: ; preds = %bb.c, %.critedge.i121.i
  %.2.i122.i = phi i64 [ %i.bm, %bb.c ], [ %i.bz, %.critedge.i121.i ] ; 4 uses
  %i.ca = icmp ugt i64 %.2.i122.i, 3
  br i1 %i.ca, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i
  %i.cb = mul i64 %.2.i122.i, 135
  %i.cc = add i64 %i.cb, 1935                     ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 2020
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ce = getelementptr i8, ptr %i.at, i64 %.2.i122.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i, %bb.b, %.thread
  %.sroa.24.2 = phi i64 [ %i.cc, %bb.g ], [ 2020, %bb.f ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 2020, %bb.b ], [ 2020, %.thread ] ; 5 uses
  %.sroa.15.2 = phi i64 [ %i.ay, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 0, %bb.b ], [ 0, %.thread ] ; 4 uses
  %.sroa.0299.2 = phi i64 [ %.2.i122.i, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ 0, %bb.b ], [ 0, %.thread ] ; 5 uses
  %.299.i.in = phi i8 [ %i.cf, %bb.g ], [ %i.au, %bb.f ], [ %i.au, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i ], [ %i.au, %bb.b ], [ %i.au, %.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !1519
  store i64 %i.aw, ptr %i.b, align 16, !tbaa !30, !noalias !1519
  %i.cg = add nuw nsw i64 %i.aw, 8
  %i.ch = and i64 %i.cg, 1048575                  ; 2 uses
  store i64 %i.ch, ptr %i.ak, align 8, !tbaa !30, !noalias !1519
  %i.ci = add nuw nsw i64 %i.aw, 16
  %i.cj = and i64 %i.ci, 1048575                  ; 2 uses
  store i64 %i.cj, ptr %i.al, align 16, !tbaa !30, !noalias !1519
  %i.ck = add nuw nsw i64 %i.aw, 24
  %i.cl = and i64 %i.ck, 1048575                  ; 2 uses
  store i64 %i.cl, ptr %i.am, align 8, !tbaa !30, !noalias !1519
  %11 = lshr i64 %.0178562, 3
  %i.cm = and i64 %11, 3
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cm
  %i.cn = load i64, ptr %12, align 8, !tbaa !30, !noalias !1519
  %i.co = icmp ugt i64 %i.aq, 7                   ; 5 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aw
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3, !noalias !1517
  %i.cr = zext i32 %i.cq to i64                   ; 3 uses
  %i.cs = sub i64 %.0178562, %i.cr                ; 3 uses
  %i.ct = and i64 %3, %i.cr
  %i.cu = getelementptr i8, ptr %2, i64 %i.ct     ; 5 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.sroa.0299.2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %.not.i202 = icmp eq i8 %.299.i.in, %i.cw
  br i1 %.not.i202, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.cx = icmp eq i64 %.0178562, %i.cr
  %i.cy = icmp ugt i64 %i.cs, %i.ar
  %i.cz = or i1 %i.cx, %i.cy
  br i1 %i.cz, label %bb.o, label %.preheader395, !prof !72

.preheader395:                                    ; preds = %bb.i
  br i1 %i.co, label %.lr.ph436, label %.preheader394

.preheader394:                                    ; preds = %bb.k, %.preheader395
  %.026.i.i.lcssa = phi ptr [ %i.cu, %.preheader395 ], [ %i.di, %bb.k ] ; 3 uses
  %.024.i.i.lcssa = phi ptr [ %i.at, %.preheader395 ], [ %i.dh, %bb.k ]
  %.022.i.i.lcssa = phi i64 [ %i.aq, %.preheader395 ], [ %i.dj, %bb.k ] ; 3 uses
  %.not.i.i440 = icmp eq i64 %.022.i.i.lcssa, 0
  br i1 %.not.i.i440, label %.critedge.i.i, label %.lr.ph444.preheader

.lr.ph444.preheader:                              ; preds = %.preheader394
  %scevgep618 = getelementptr i8, ptr %.026.i.i.lcssa, i64 %.022.i.i.lcssa
  br label %.lr.ph444

.lr.ph436:                                        ; preds = %.preheader395, %bb.k
  %.022.i.i435 = phi i64 [ %i.dj, %bb.k ], [ %i.aq, %.preheader395 ]
  %.024.i.i434 = phi ptr [ %i.dh, %bb.k ], [ %i.at, %.preheader395 ] ; 2 uses
  %.026.i.i433 = phi ptr [ %i.di, %bb.k ], [ %i.cu, %.preheader395 ] ; 3 uses
  %.0.copyload.i129.i = load i64, ptr %.024.i.i434, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.0.copyload.i128.i = load i64, ptr %.026.i.i433, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i129.i, %.0.copyload.i128.i
  br i1 %.not30.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph436
  %i.da = xor i64 %.0.copyload.i128.i, %.0.copyload.i129.i
  %i.db = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.da, i1 true)
  %i.dc = ptrtoint ptr %.026.i.i433 to i64
  %i.dd = ptrtoint ptr %i.cu to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr i64 %i.db, 3
  %i.dg = add i64 %i.de, %i.df
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

bb.k:                                             ; preds = %.lr.ph436
  %i.dh = getelementptr inbounds nuw i8, ptr %.024.i.i434, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.026.i.i433, i64 8 ; 2 uses
  %i.dj = add i64 %.022.i.i435, -8                ; 3 uses
  %i.dk = icmp ugt i64 %i.dj, 7
  br i1 %i.dk, label %.lr.ph436, label %.preheader394, !llvm.loop !62

.lr.ph444:                                        ; preds = %.lr.ph444.preheader, %bb.l
  %.123.i.i443 = phi i64 [ %i.do, %bb.l ], [ %.022.i.i.lcssa, %.lr.ph444.preheader ]
  %.125.i.i442 = phi ptr [ %i.dp, %bb.l ], [ %.024.i.i.lcssa, %.lr.ph444.preheader ] ; 2 uses
  %.228.i.i441 = phi ptr [ %i.dq, %bb.l ], [ %.026.i.i.lcssa, %.lr.ph444.preheader ] ; 3 uses
  %i.dl = load i8, ptr %.228.i.i441, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.dm = load i8, ptr %.125.i.i442, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.dn = icmp eq i8 %i.dl, %i.dm
  br i1 %i.dn, label %bb.l, label %.critedge.i.i

bb.l:                                             ; preds = %.lr.ph444
  %i.do = add nsw i64 %.123.i.i443, -1            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.125.i.i442, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.228.i.i441, i64 1
  %.not.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph444, !llvm.loop !64

.critedge.i.i:                                    ; preds = %bb.l, %.lr.ph444, %.preheader394
  %.228.i.i.lcssa = phi ptr [ %.026.i.i.lcssa, %.preheader394 ], [ %.228.i.i441, %.lr.ph444 ], [ %scevgep618, %bb.l ]
  %i.dr = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.ds = ptrtoint ptr %i.cu to i64
  %i.dt = sub i64 %i.dr, %i.ds
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i: ; preds = %bb.j, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.dg, %bb.j ], [ %i.dt, %.critedge.i.i ] ; 4 uses
  %i.du = icmp ugt i64 %.2.i.i, 3
  br i1 %i.du, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %i.dv = mul i64 %.2.i.i, 135
  %i.dw = trunc i64 %i.cs to i32
  %i.dx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dw, i1 true)
  %i.dy = xor i32 %i.dx, 31
  %.neg = mul nsw i32 %i.dy, -30
  %narrow = add nsw i32 %.neg, 1920
  %i.dz = zext nneg i32 %narrow to i64
  %i.ea = add i64 %i.dv, %i.dz                    ; 2 uses
  %i.eb = icmp ult i64 %.sroa.24.2, %i.ea
  br i1 %i.eb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ec = getelementptr i8, ptr %i.at, i64 %.2.i.i
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i, %bb.i, %bb.h
  %.sroa.24.4 = phi i64 [ %.sroa.24.2, %bb.i ], [ %i.ea, %bb.n ], [ %.sroa.24.2, %bb.m ], [ %.sroa.24.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.24.2, %bb.h ] ; 5 uses
  %.sroa.15.4 = phi i64 [ %.sroa.15.2, %bb.i ], [ %i.cs, %bb.n ], [ %.sroa.15.2, %bb.m ], [ %.sroa.15.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.15.2, %bb.h ] ; 4 uses
  %.sroa.0299.4 = phi i64 [ %.sroa.0299.2, %bb.i ], [ %.2.i.i, %bb.n ], [ %.sroa.0299.2, %bb.m ], [ %.sroa.0299.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.sroa.0299.2, %bb.h ] ; 5 uses
  %.6103.i.in = phi i8 [ %.299.i.in, %bb.i ], [ %i.ed, %bb.n ], [ %.299.i.in, %bb.m ], [ %.299.i.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %.299.i.in, %bb.h ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ch
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !1517
  %i.eg = zext i32 %i.ef to i64                   ; 3 uses
  %i.eh = sub i64 %.0178562, %i.eg                ; 3 uses
  %i.ei = and i64 %3, %i.eg
  %i.ej = getelementptr i8, ptr %2, i64 %i.ei     ; 5 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 %.sroa.0299.4
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %.not.i202.1 = icmp eq i8 %.6103.i.in, %i.el
  br i1 %.not.i202.1, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.em = icmp eq i64 %.0178562, %i.eg
  %i.en = icmp ugt i64 %i.eh, %i.ar
  %i.eo = or i1 %i.em, %i.en
  br i1 %i.eo, label %bb.v, label %.preheader395.1, !prof !72

.preheader395.1:                                  ; preds = %bb.p
  br i1 %i.co, label %.lr.ph436.1, label %.preheader394.1

.lr.ph436.1:                                      ; preds = %.preheader395.1, %bb.r
  %.022.i.i435.1 = phi i64 [ %i.ey, %bb.r ], [ %i.aq, %.preheader395.1 ]
  %.024.i.i434.1 = phi ptr [ %i.ew, %bb.r ], [ %i.at, %.preheader395.1 ] ; 2 uses
  %.026.i.i433.1 = phi ptr [ %i.ex, %bb.r ], [ %i.ej, %.preheader395.1 ] ; 3 uses
  %.0.copyload.i129.i.1 = load i64, ptr %.024.i.i434.1, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.0.copyload.i128.i.1 = load i64, ptr %.026.i.i433.1, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.not30.i.i.1 = icmp eq i64 %.0.copyload.i129.i.1, %.0.copyload.i128.i.1
  br i1 %.not30.i.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph436.1
  %i.ep = xor i64 %.0.copyload.i128.i.1, %.0.copyload.i129.i.1
  %i.eq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ep, i1 true)
  %i.er = ptrtoint ptr %.026.i.i433.1 to i64
  %i.es = ptrtoint ptr %i.ej to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = lshr i64 %i.eq, 3
  %i.ev = add i64 %i.et, %i.eu
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

bb.r:                                             ; preds = %.lr.ph436.1
  %i.ew = getelementptr inbounds nuw i8, ptr %.024.i.i434.1, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.026.i.i433.1, i64 8 ; 2 uses
  %i.ey = add i64 %.022.i.i435.1, -8              ; 3 uses
  %i.ez = icmp ugt i64 %i.ey, 7
  br i1 %i.ez, label %.lr.ph436.1, label %.preheader394.1, !llvm.loop !62

.preheader394.1:                                  ; preds = %bb.r, %.preheader395.1
  %.026.i.i.lcssa.1 = phi ptr [ %i.ej, %.preheader395.1 ], [ %i.ex, %bb.r ] ; 3 uses
  %.024.i.i.lcssa.1 = phi ptr [ %i.at, %.preheader395.1 ], [ %i.ew, %bb.r ]
  %.022.i.i.lcssa.1 = phi i64 [ %i.aq, %.preheader395.1 ], [ %i.ey, %bb.r ] ; 3 uses
  %.not.i.i440.1 = icmp eq i64 %.022.i.i.lcssa.1, 0
  br i1 %.not.i.i440.1, label %.critedge.i.i.1, label %.lr.ph444.preheader.1

.lr.ph444.preheader.1:                            ; preds = %.preheader394.1
  %scevgep618.1 = getelementptr i8, ptr %.026.i.i.lcssa.1, i64 %.022.i.i.lcssa.1
  br label %.lr.ph444.1

.lr.ph444.1:                                      ; preds = %bb.s, %.lr.ph444.preheader.1
  %.123.i.i443.1 = phi i64 [ %i.fd, %bb.s ], [ %.022.i.i.lcssa.1, %.lr.ph444.preheader.1 ]
  %.125.i.i442.1 = phi ptr [ %i.fe, %bb.s ], [ %.024.i.i.lcssa.1, %.lr.ph444.preheader.1 ] ; 2 uses
  %.228.i.i441.1 = phi ptr [ %i.ff, %bb.s ], [ %.026.i.i.lcssa.1, %.lr.ph444.preheader.1 ] ; 3 uses
  %i.fa = load i8, ptr %.228.i.i441.1, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.fb = load i8, ptr %.125.i.i442.1, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.fc = icmp eq i8 %i.fa, %i.fb
  br i1 %i.fc, label %bb.s, label %.critedge.i.i.1

bb.s:                                             ; preds = %.lr.ph444.1
  %i.fd = add nsw i64 %.123.i.i443.1, -1          ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.125.i.i442.1, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.228.i.i441.1, i64 1
  %.not.i.i.1 = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.1, label %.critedge.i.i.1, label %.lr.ph444.1, !llvm.loop !64

.critedge.i.i.1:                                  ; preds = %.lr.ph444.1, %bb.s, %.preheader394.1
  %.228.i.i.lcssa.1 = phi ptr [ %.026.i.i.lcssa.1, %.preheader394.1 ], [ %.228.i.i441.1, %.lr.ph444.1 ], [ %scevgep618.1, %bb.s ]
  %i.fg = ptrtoint ptr %.228.i.i.lcssa.1 to i64
  %i.fh = ptrtoint ptr %i.ej to i64
  %i.fi = sub i64 %i.fg, %i.fh
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1: ; preds = %.critedge.i.i.1, %bb.q
  %.2.i.i.1 = phi i64 [ %i.ev, %bb.q ], [ %i.fi, %.critedge.i.i.1 ] ; 4 uses
  %i.fj = icmp ugt i64 %.2.i.i.1, 3
  br i1 %i.fj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.1
  %i.fk = mul i64 %.2.i.i.1, 135
  %i.fl = trunc i64 %i.eh to i32
  %i.fm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fl, i1 true)
  %i.fn = xor i32 %i.fm, 31
  %.neg.1 = mul nsw i32 %i.fn, -30
  %narrow.1 = add nsw i32 %.neg.1, 1920
end_hunk_12
begin_hunk_13_@_ZL28CreateBackwardReferencesNH55mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.w:                                             ; preds = %bb.v
  %i.gb = icmp eq i64 %.0178562, %i.fv
  %i.gc = icmp ugt i64 %i.fw, %i.ar
  %i.gd = or i1 %i.gb, %i.gc
  br i1 %i.gd, label %bb.ac, label %.preheader395.2, !prof !72

.preheader395.2:                                  ; preds = %bb.w
  br i1 %i.co, label %.lr.ph436.2, label %.preheader394.2

.lr.ph436.2:                                      ; preds = %.preheader395.2, %bb.y
  %.022.i.i435.2 = phi i64 [ %i.gn, %bb.y ], [ %i.aq, %.preheader395.2 ]
  %.024.i.i434.2 = phi ptr [ %i.gl, %bb.y ], [ %i.at, %.preheader395.2 ] ; 2 uses
  %.026.i.i433.2 = phi ptr [ %i.gm, %bb.y ], [ %i.fy, %.preheader395.2 ] ; 3 uses
  %.0.copyload.i129.i.2 = load i64, ptr %.024.i.i434.2, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.0.copyload.i128.i.2 = load i64, ptr %.026.i.i433.2, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.not30.i.i.2 = icmp eq i64 %.0.copyload.i129.i.2, %.0.copyload.i128.i.2
  br i1 %.not30.i.i.2, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph436.2
  %i.ge = xor i64 %.0.copyload.i128.i.2, %.0.copyload.i129.i.2
  %i.gf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ge, i1 true)
  %i.gg = ptrtoint ptr %.026.i.i433.2 to i64
  %i.gh = ptrtoint ptr %i.fy to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = lshr i64 %i.gf, 3
  %i.gk = add i64 %i.gi, %i.gj
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2

bb.y:                                             ; preds = %.lr.ph436.2
  %i.gl = getelementptr inbounds nuw i8, ptr %.024.i.i434.2, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.026.i.i433.2, i64 8 ; 2 uses
  %i.gn = add i64 %.022.i.i435.2, -8              ; 3 uses
  %i.go = icmp ugt i64 %i.gn, 7
  br i1 %i.go, label %.lr.ph436.2, label %.preheader394.2, !llvm.loop !62

.preheader394.2:                                  ; preds = %bb.y, %.preheader395.2
  %.026.i.i.lcssa.2 = phi ptr [ %i.fy, %.preheader395.2 ], [ %i.gm, %bb.y ] ; 3 uses
  %.024.i.i.lcssa.2 = phi ptr [ %i.at, %.preheader395.2 ], [ %i.gl, %bb.y ]
  %.022.i.i.lcssa.2 = phi i64 [ %i.aq, %.preheader395.2 ], [ %i.gn, %bb.y ] ; 3 uses
  %.not.i.i440.2 = icmp eq i64 %.022.i.i.lcssa.2, 0
  br i1 %.not.i.i440.2, label %.critedge.i.i.2, label %.lr.ph444.preheader.2

.lr.ph444.preheader.2:                            ; preds = %.preheader394.2
  %scevgep618.2 = getelementptr i8, ptr %.026.i.i.lcssa.2, i64 %.022.i.i.lcssa.2
  br label %.lr.ph444.2

.lr.ph444.2:                                      ; preds = %bb.z, %.lr.ph444.preheader.2
  %.123.i.i443.2 = phi i64 [ %i.gs, %bb.z ], [ %.022.i.i.lcssa.2, %.lr.ph444.preheader.2 ]
  %.125.i.i442.2 = phi ptr [ %i.gt, %bb.z ], [ %.024.i.i.lcssa.2, %.lr.ph444.preheader.2 ] ; 2 uses
  %.228.i.i441.2 = phi ptr [ %i.gu, %bb.z ], [ %.026.i.i.lcssa.2, %.lr.ph444.preheader.2 ] ; 3 uses
  %i.gp = load i8, ptr %.228.i.i441.2, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.gq = load i8, ptr %.125.i.i442.2, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.gr = icmp eq i8 %i.gp, %i.gq
  br i1 %i.gr, label %bb.z, label %.critedge.i.i.2

bb.z:                                             ; preds = %.lr.ph444.2
  %i.gs = add nsw i64 %.123.i.i443.2, -1          ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.125.i.i442.2, i64 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.228.i.i441.2, i64 1
  %.not.i.i.2 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.2, label %.critedge.i.i.2, label %.lr.ph444.2, !llvm.loop !64

.critedge.i.i.2:                                  ; preds = %.lr.ph444.2, %bb.z, %.preheader394.2
  %.228.i.i.lcssa.2 = phi ptr [ %.026.i.i.lcssa.2, %.preheader394.2 ], [ %.228.i.i441.2, %.lr.ph444.2 ], [ %scevgep618.2, %bb.z ]
  %i.gv = ptrtoint ptr %.228.i.i.lcssa.2 to i64
  %i.gw = ptrtoint ptr %i.fy to i64
  %i.gx = sub i64 %i.gv, %i.gw
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2: ; preds = %.critedge.i.i.2, %bb.x
  %.2.i.i.2 = phi i64 [ %i.gk, %bb.x ], [ %i.gx, %.critedge.i.i.2 ] ; 4 uses
  %i.gy = icmp ugt i64 %.2.i.i.2, 3
  br i1 %i.gy, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2
  %i.gz = mul i64 %.2.i.i.2, 135
  %i.ha = trunc i64 %i.fw to i32
  %i.hb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ha, i1 true)
  %i.hc = xor i32 %i.hb, 31
  %.neg.2 = mul nsw i32 %i.hc, -30
  %narrow.2 = add nsw i32 %.neg.2, 1920
  %i.hd = zext nneg i32 %narrow.2 to i64
  %i.he = add i64 %i.gz, %i.hd                    ; 2 uses
  %i.hf = icmp ult i64 %.sroa.24.4.1, %i.he
  br i1 %i.hf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr i8, ptr %i.at, i64 %.2.i.i.2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2, %bb.w, %bb.v
  %.sroa.24.4.2 = phi i64 [ %.sroa.24.4.1, %bb.w ], [ %i.he, %bb.ab ], [ %.sroa.24.4.1, %bb.aa ], [ %.sroa.24.4.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.24.4.1, %bb.v ] ; 5 uses
  %.sroa.15.4.2 = phi i64 [ %.sroa.15.4.1, %bb.w ], [ %i.fw, %bb.ab ], [ %.sroa.15.4.1, %bb.aa ], [ %.sroa.15.4.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.15.4.1, %bb.v ] ; 4 uses
  %.sroa.0299.4.2 = phi i64 [ %.sroa.0299.4.1, %bb.w ], [ %.2.i.i.2, %bb.ab ], [ %.sroa.0299.4.1, %bb.aa ], [ %.sroa.0299.4.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.sroa.0299.4.1, %bb.v ] ; 5 uses
  %.6103.i.2.in = phi i8 [ %.6103.i.1.in, %bb.w ], [ %i.hh, %bb.ab ], [ %.6103.i.1.in, %bb.aa ], [ %.6103.i.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.2 ], [ %.6103.i.1.in, %bb.v ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cl
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3, !noalias !1517
  %i.hk = zext i32 %i.hj to i64                   ; 3 uses
  %i.hl = sub i64 %.0178562, %i.hk                ; 3 uses
  %i.hm = and i64 %3, %i.hk
  %i.hn = getelementptr i8, ptr %2, i64 %i.hm     ; 5 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 %.sroa.0299.4.2
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %.not.i202.3 = icmp eq i8 %.6103.i.2.in, %i.hp
  br i1 %.not.i202.3, label %bb.ad, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.hq = icmp eq i64 %.0178562, %i.hk
  %i.hr = icmp ugt i64 %i.hl, %i.ar
  %i.hs = or i1 %i.hq, %i.hr
  br i1 %i.hs, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %.preheader395.3, !prof !72

.preheader395.3:                                  ; preds = %bb.ad
  br i1 %i.co, label %.lr.ph436.3, label %.preheader394.3

.lr.ph436.3:                                      ; preds = %.preheader395.3, %bb.af
  %.022.i.i435.3 = phi i64 [ %i.ic, %bb.af ], [ %i.aq, %.preheader395.3 ]
  %.024.i.i434.3 = phi ptr [ %i.ia, %bb.af ], [ %i.at, %.preheader395.3 ] ; 2 uses
  %.026.i.i433.3 = phi ptr [ %i.ib, %bb.af ], [ %i.hn, %.preheader395.3 ] ; 3 uses
  %.0.copyload.i129.i.3 = load i64, ptr %.024.i.i434.3, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.0.copyload.i128.i.3 = load i64, ptr %.026.i.i433.3, align 1, !alias.scope !1515, !noalias !1517 ; 2 uses
  %.not30.i.i.3 = icmp eq i64 %.0.copyload.i129.i.3, %.0.copyload.i128.i.3
  br i1 %.not30.i.i.3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph436.3
  %i.ht = xor i64 %.0.copyload.i128.i.3, %.0.copyload.i129.i.3
  %i.hu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ht, i1 true)
  %i.hv = ptrtoint ptr %.026.i.i433.3 to i64
  %i.hw = ptrtoint ptr %i.hn to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = lshr i64 %i.hu, 3
  %i.hz = add i64 %i.hx, %i.hy
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3

bb.af:                                            ; preds = %.lr.ph436.3
  %i.ia = getelementptr inbounds nuw i8, ptr %.024.i.i434.3, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.026.i.i433.3, i64 8 ; 2 uses
  %i.ic = add i64 %.022.i.i435.3, -8              ; 3 uses
  %i.id = icmp ugt i64 %i.ic, 7
  br i1 %i.id, label %.lr.ph436.3, label %.preheader394.3, !llvm.loop !62

.preheader394.3:                                  ; preds = %bb.af, %.preheader395.3
  %.026.i.i.lcssa.3 = phi ptr [ %i.hn, %.preheader395.3 ], [ %i.ib, %bb.af ] ; 3 uses
  %.024.i.i.lcssa.3 = phi ptr [ %i.at, %.preheader395.3 ], [ %i.ia, %bb.af ]
  %.022.i.i.lcssa.3 = phi i64 [ %i.aq, %.preheader395.3 ], [ %i.ic, %bb.af ] ; 3 uses
  %.not.i.i440.3 = icmp eq i64 %.022.i.i.lcssa.3, 0
  br i1 %.not.i.i440.3, label %.critedge.i.i.3, label %.lr.ph444.preheader.3

.lr.ph444.preheader.3:                            ; preds = %.preheader394.3
  %scevgep618.3 = getelementptr i8, ptr %.026.i.i.lcssa.3, i64 %.022.i.i.lcssa.3
  br label %.lr.ph444.3

.lr.ph444.3:                                      ; preds = %bb.ag, %.lr.ph444.preheader.3
  %.123.i.i443.3 = phi i64 [ %i.ih, %bb.ag ], [ %.022.i.i.lcssa.3, %.lr.ph444.preheader.3 ]
  %.125.i.i442.3 = phi ptr [ %i.ii, %bb.ag ], [ %.024.i.i.lcssa.3, %.lr.ph444.preheader.3 ] ; 2 uses
  %.228.i.i441.3 = phi ptr [ %i.ij, %bb.ag ], [ %.026.i.i.lcssa.3, %.lr.ph444.preheader.3 ] ; 3 uses
  %i.ie = load i8, ptr %.228.i.i441.3, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.if = load i8, ptr %.125.i.i442.3, align 1, !tbaa !54, !alias.scope !1515, !noalias !1517
  %i.ig = icmp eq i8 %i.ie, %i.if
  br i1 %i.ig, label %bb.ag, label %.critedge.i.i.3

bb.ag:                                            ; preds = %.lr.ph444.3
  %i.ih = add nsw i64 %.123.i.i443.3, -1          ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.125.i.i442.3, i64 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.228.i.i441.3, i64 1
  %.not.i.i.3 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.3, label %.critedge.i.i.3, label %.lr.ph444.3, !llvm.loop !64

.critedge.i.i.3:                                  ; preds = %.lr.ph444.3, %bb.ag, %.preheader394.3
  %.228.i.i.lcssa.3 = phi ptr [ %.026.i.i.lcssa.3, %.preheader394.3 ], [ %.228.i.i441.3, %.lr.ph444.3 ], [ %scevgep618.3, %bb.ag ]
  %i.ik = ptrtoint ptr %.228.i.i.lcssa.3 to i64
  %i.il = ptrtoint ptr %i.hn to i64
  %i.im = sub i64 %i.ik, %i.il
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3: ; preds = %.critedge.i.i.3, %bb.ae
  %.2.i.i.3 = phi i64 [ %i.hz, %bb.ae ], [ %i.im, %.critedge.i.i.3 ] ; 3 uses
  %i.in = icmp ugt i64 %.2.i.i.3, 3
  br i1 %i.in, label %bb.ah, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3
  %i.io = mul i64 %.2.i.i.3, 135
  %i.ip = trunc i64 %i.hl to i32
  %i.iq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ip, i1 true)
  %i.ir = xor i32 %i.iq, 31
  %.neg.3 = mul nsw i32 %i.ir, -30
  %narrow.3 = add nsw i32 %.neg.3, 1920
  %i.is = zext nneg i32 %narrow.3 to i64
  %i.it = add i64 %i.io, %i.is                    ; 2 uses
  %i.iu = icmp ult i64 %.sroa.24.4.2, %i.it
  br i1 %i.iu, label %bb.ai, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

bb.ai:                                            ; preds = %bb.ah
  br label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %bb.ai, %bb.ah, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3, %bb.ad, %bb.ac
  %.sroa.24.4.3 = phi i64 [ %.sroa.24.4.2, %bb.ad ], [ %i.it, %bb.ai ], [ %.sroa.24.4.2, %bb.ah ], [ %.sroa.24.4.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.24.4.2, %bb.ac ] ; 3 uses
  %.sroa.15.4.3 = phi i64 [ %.sroa.15.4.2, %bb.ad ], [ %i.hl, %bb.ai ], [ %.sroa.15.4.2, %bb.ah ], [ %.sroa.15.4.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.15.4.2, %bb.ac ] ; 3 uses
  %.sroa.0299.4.3 = phi i64 [ %.sroa.0299.4.2, %bb.ad ], [ %.2.i.i.3, %bb.ai ], [ %.sroa.0299.4.2, %bb.ah ], [ %.sroa.0299.4.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.3 ], [ %.sroa.0299.4.2, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !1519
  %i.iv = trunc i64 %.0178562 to i32              ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cn
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !3, !noalias !1517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  %i.ix = and i64 %.0178562, 3
  %.not.i248 = icmp ne i64 %i.ix, 0
  %i.iy = icmp ult i64 %i.aq, 32
  %or.cond66.i = or i1 %.not.i248, %i.iy
  br i1 %or.cond66.i, label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.iz = load i64, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1520, !noalias !1525 ; 2 uses
  %.not64.i470 = icmp ugt i64 %i.iz, %.0178562
  br i1 %.not64.i470, label %bb.au, label %.lr.ph475

.lr.ph475:                                        ; preds = %bb.aj
  %i.ja = load i32, ptr %i.ac, align 4, !tbaa !651, !alias.scope !1520, !noalias !1525
  %i.jb = load i32, ptr %i.ad, align 8, !tbaa !652, !alias.scope !1520, !noalias !1525
  %.promoted = load i32, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1520, !noalias !1525
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph475, %bb.at
  %i.jc = phi i32 [ %.promoted, %.lr.ph475 ], [ %i.jq, %bb.at ] ; 2 uses
  %.0.i249474 = phi i64 [ %i.iz, %.lr.ph475 ], [ %i.lg, %bb.at ] ; 5 uses
  %.sroa.0299.5473 = phi i64 [ %.sroa.0299.4.3, %.lr.ph475 ], [ %.sroa.0299.6, %bb.at ] ; 6 uses
  %.sroa.15.5472 = phi i64 [ %.sroa.15.4.3, %.lr.ph475 ], [ %.sroa.15.6, %bb.at ] ; 5 uses
  %.sroa.24.5471 = phi i64 [ %.sroa.24.4.3, %.lr.ph475 ], [ %.sroa.24.6, %bb.at ] ; 6 uses
  %i.jd = and i32 %i.jc, 1073741823               ; 2 uses
  %i.je = and i64 %.0.i249474, %3
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !54, !alias.scope !1523, !noalias !1527
  %i.jh = add i64 %.0.i249474, 32
  %i.ji = and i64 %i.jh, %3
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !54, !alias.scope !1523, !noalias !1527
  %i.jl = mul i32 %i.ja, %i.jc
  %i.jm = zext i8 %i.jk to i32
  %i.jn = add nuw nsw i32 %i.jm, 1
  %i.jo = add i32 %i.jn, %i.jl
  %i.jp = zext i8 %i.jg to i32
  %.neg.i = xor i32 %i.jp, -1
  %.neg5.i = mul i32 %i.jb, %.neg.i
  %i.jq = add i32 %i.jo, %.neg5.i                 ; 2 uses
  %i.jr = icmp samesign ult i32 %i.jd, 16777216
  br i1 %i.jr, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.js = load ptr, ptr %i.ae, align 8, !tbaa !655, !alias.scope !1520, !noalias !1525
  %i.jt = zext nneg i32 %i.jd to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3, !noalias !1527 ; 3 uses
  %i.jw = zext i32 %i.jv to i64
  %i.jx = trunc i64 %.0.i249474 to i32
  store i32 %i.jx, ptr %i.ju, align 4, !tbaa !3, !noalias !1527
  %i.jy = icmp eq i64 %.0.i249474, %.0178562
  %i.jz = icmp ne i32 %i.jv, -1
  %or.cond.i250 = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond.i250, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.ka = sub i32 %i.iv, %i.jv                    ; 2 uses
  %i.kb = zext i32 %i.ka to i64                   ; 2 uses
  %.not65.i = icmp ult i64 %i.ar, %i.kb
  br i1 %.not65.i, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kc = and i64 %3, %i.jw
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 %i.kc ; 4 uses
  br i1 %i.co, label %.lr.ph458, label %.preheader393

.preheader393:                                    ; preds = %bb.ap, %bb.an
  %.026.i.i251.lcssa = phi ptr [ %i.kd, %bb.an ], [ %i.km, %bb.ap ] ; 3 uses
  %.024.i.i252.lcssa = phi ptr [ %i.at, %bb.an ], [ %i.kl, %bb.ap ]
  %.022.i.i253.lcssa = phi i64 [ %i.aq, %bb.an ], [ %i.kn, %bb.ap ] ; 3 uses
  %.not.i.i258462 = icmp eq i64 %.022.i.i253.lcssa, 0
  br i1 %.not.i.i258462, label %.critedge.i.i259, label %.lr.ph466.preheader

.lr.ph466.preheader:                              ; preds = %.preheader393
  %scevgep619 = getelementptr i8, ptr %.026.i.i251.lcssa, i64 %.022.i.i253.lcssa
  br label %.lr.ph466

.lr.ph458:                                        ; preds = %bb.an, %bb.ap
  %.022.i.i253457 = phi i64 [ %i.kn, %bb.ap ], [ %i.aq, %bb.an ]
  %.024.i.i252456 = phi ptr [ %i.kl, %bb.ap ], [ %i.at, %bb.an ] ; 2 uses
  %.026.i.i251455 = phi ptr [ %i.km, %bb.ap ], [ %i.kd, %bb.an ] ; 3 uses
  %.0.copyload.i67.i = load i64, ptr %.024.i.i252456, align 1, !alias.scope !1523, !noalias !1527 ; 2 uses
  %.0.copyload.i.i262 = load i64, ptr %.026.i.i251455, align 1, !alias.scope !1523, !noalias !1527 ; 2 uses
  %.not30.i.i263 = icmp eq i64 %.0.copyload.i67.i, %.0.copyload.i.i262
  br i1 %.not30.i.i263, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph458
  %i.ke = xor i64 %.0.copyload.i.i262, %.0.copyload.i67.i
  %i.kf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ke, i1 true)
  %i.kg = ptrtoint ptr %.026.i.i251455 to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = lshr i64 %i.kf, 3
  %i.kk = add i64 %i.ki, %i.kj
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260

bb.ap:                                            ; preds = %.lr.ph458
  %i.kl = getelementptr inbounds nuw i8, ptr %.024.i.i252456, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.026.i.i251455, i64 8 ; 2 uses
  %i.kn = add i64 %.022.i.i253457, -8             ; 3 uses
  %i.ko = icmp ugt i64 %i.kn, 7
  br i1 %i.ko, label %.lr.ph458, label %.preheader393, !llvm.loop !62

.lr.ph466:                                        ; preds = %.lr.ph466.preheader, %bb.aq
  %.123.i.i257465 = phi i64 [ %i.ks, %bb.aq ], [ %.022.i.i253.lcssa, %.lr.ph466.preheader ]
  %.125.i.i256464 = phi ptr [ %i.kt, %bb.aq ], [ %.024.i.i252.lcssa, %.lr.ph466.preheader ] ; 2 uses
  %.228.i.i255463 = phi ptr [ %i.ku, %bb.aq ], [ %.026.i.i251.lcssa, %.lr.ph466.preheader ] ; 3 uses
  %i.kp = load i8, ptr %.228.i.i255463, align 1, !tbaa !54, !alias.scope !1523, !noalias !1527
  %i.kq = load i8, ptr %.125.i.i256464, align 1, !tbaa !54, !alias.scope !1523, !noalias !1527
  %i.kr = icmp eq i8 %i.kp, %i.kq
  br i1 %i.kr, label %bb.aq, label %.critedge.i.i259

bb.aq:                                            ; preds = %.lr.ph466
  %i.ks = add nsw i64 %.123.i.i257465, -1         ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.125.i.i256464, i64 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.228.i.i255463, i64 1
  %.not.i.i258 = icmp eq i64 %i.ks, 0
  br i1 %.not.i.i258, label %.critedge.i.i259, label %.lr.ph466, !llvm.loop !64

.critedge.i.i259:                                 ; preds = %bb.aq, %.lr.ph466, %.preheader393
  %.228.i.i255.lcssa = phi ptr [ %.026.i.i251.lcssa, %.preheader393 ], [ %.228.i.i255463, %.lr.ph466 ], [ %scevgep619, %bb.aq ]
  %i.kv = ptrtoint ptr %.228.i.i255.lcssa to i64
  %i.kw = ptrtoint ptr %i.kd to i64
  %i.kx = sub i64 %i.kv, %i.kw
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260: ; preds = %bb.ao, %.critedge.i.i259
  %.2.i.i261 = phi i64 [ %i.kk, %bb.ao ], [ %i.kx, %.critedge.i.i259 ] ; 4 uses
  %i.ky = icmp ugt i64 %.2.i.i261, 3
  %i.kz = icmp ugt i64 %.2.i.i261, %.sroa.0299.5473
  %or.cond373 = select i1 %i.ky, i1 %i.kz, i1 false
  br i1 %or.cond373, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260
  %i.la = mul i64 %.2.i.i261, 135
  %i.lb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ka, i1 true)
  %i.lc = xor i32 %i.lb, 31
  %.neg570 = mul nsw i32 %i.lc, -30
  %narrow569 = add nsw i32 %.neg570, 1920
  %i.ld = zext nneg i32 %narrow569 to i64
  %i.le = add i64 %i.la, %i.ld                    ; 2 uses
  %i.lf = icmp ugt i64 %i.le, %.sroa.24.5471
  br i1 %i.lf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260, %bb.am, %bb.al, %bb.ak
  %.sroa.24.6 = phi i64 [ %.sroa.24.5471, %bb.am ], [ %i.le, %bb.as ], [ %.sroa.24.5471, %bb.ar ], [ %.sroa.24.5471, %bb.ak ], [ %.sroa.24.5471, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260 ], [ %.sroa.24.5471, %bb.al ] ; 2 uses
  %.sroa.15.6 = phi i64 [ %.sroa.15.5472, %bb.am ], [ %i.kb, %bb.as ], [ %.sroa.15.5472, %bb.ar ], [ %.sroa.15.5472, %bb.ak ], [ %.sroa.15.5472, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260 ], [ %.sroa.15.5472, %bb.al ] ; 2 uses
  %.sroa.0299.6 = phi i64 [ %.sroa.0299.5473, %bb.am ], [ %.2.i.i261, %bb.as ], [ %.sroa.0299.5473, %bb.ar ], [ %.sroa.0299.5473, %bb.ak ], [ %.sroa.0299.5473, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i260 ], [ %.sroa.0299.5473, %bb.al ] ; 2 uses
  %i.lg = add i64 %.0.i249474, 4                  ; 2 uses
  %.not64.i = icmp ugt i64 %i.lg, %.0178562
  br i1 %.not64.i, label %._crit_edge, label %bb.ak, !llvm.loop !656

._crit_edge:                                      ; preds = %bb.at
  store i32 %i.jq, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1520, !noalias !1525
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge, %bb.aj
  %.sroa.24.5.lcssa = phi i64 [ %.sroa.24.6, %._crit_edge ], [ %.sroa.24.4.3, %bb.aj ]
  %.sroa.15.5.lcssa = phi i64 [ %.sroa.15.6, %._crit_edge ], [ %.sroa.15.4.3, %bb.aj ]
  %.sroa.0299.5.lcssa = phi i64 [ %.sroa.0299.6, %._crit_edge ], [ %.sroa.0299.4.3, %bb.aj ]
  %i.lh = add i64 %.0178562, 4
  store i64 %i.lh, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1520, !noalias !1525
  br label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit

_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit: ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, %bb.au
  %.sroa.24.7 = phi i64 [ %.sroa.24.4.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.24.5.lcssa, %bb.au ] ; 2 uses
  %.sroa.15.7 = phi i64 [ %.sroa.15.4.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.15.5.lcssa, %bb.au ]
  %.sroa.0299.7 = phi i64 [ %.sroa.0299.4.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ], [ %.sroa.0299.5.lcssa, %bb.au ]
  %i.li = icmp ugt i64 %.sroa.24.7, 2020
  br i1 %i.li, label %.preheader396, label %bb.dq

.preheader396:                                    ; preds = %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit, %bb.co
  %.sroa.24.0 = phi i64 [ %.sroa.13.5, %bb.co ], [ %.sroa.24.7, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ]
  %.sroa.15.0 = phi i64 [ %.sroa.9.5, %bb.co ], [ %.sroa.15.7, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ]
  %.sroa.0299.0 = phi i64 [ %.sroa.0.5, %bb.co ], [ %.sroa.0299.7, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 2 uses
  %.1179 = phi i64 [ %i.lo, %bb.co ], [ %.0178562, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 4 uses
  %.1176 = phi i64 [ %i.wj, %bb.co ], [ %.0175563, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 2 uses
  %.0172.in = phi i64 [ %.0172, %bb.co ], [ %i.aq, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ]
  %.0165 = phi i32 [ %i.wk, %bb.co ], [ 0, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit ] ; 2 uses
  %.0172 = add i64 %.0172.in, -1                  ; 16 uses
  %i.lj = load i32, ptr %i.n, align 4, !tbaa !31
  %i.lk = icmp slt i32 %i.lj, 5
  %i.ll = add i64 %.sroa.0299.0, -1
  %i.lm = tail call i64 @llvm.umin.i64(i64 %i.ll, i64 %.0172)
  %i.ln = select i1 %i.lk, i64 %i.lm, i64 0       ; 6 uses
  %i.lo = add i64 %.1179, 1                       ; 20 uses
  %i.lp = tail call noundef i64 @llvm.umin.i64(i64 %i.lo, i64 %i.g) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.lq = and i64 %i.lo, %3
  %i.lr = getelementptr i8, ptr %2, i64 %i.lq     ; 17 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 %i.ln
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533 ; 5 uses
  %.val292 = load i64, ptr %i.lr, align 1
  %i.lu = mul i64 %.val292, -2064201331557805312
  %i.lv = lshr i64 %i.lu, 44                      ; 5 uses
  %i.lw = load i32, ptr %6, align 4, !tbaa !3, !alias.scope !1531, !noalias !1536
  %i.lx = sext i32 %i.lw to i64                   ; 2 uses
  %i.ly = sub i64 %i.lo, %i.lx                    ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.lo
  br i1 %i.lz, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %.preheader396
  %i.ma = and i64 %i.z, %i.ly
  %i.mb = getelementptr i8, ptr %2, i64 %i.ma     ; 5 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 %i.ln
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.me = icmp eq i8 %i.lt, %i.md
  br i1 %i.me, label %.preheader392, label %bb.bb

.preheader392:                                    ; preds = %bb.av
  %i.mf = icmp ugt i64 %.0172, 7
  br i1 %i.mf, label %.lr.ph494, label %.preheader391

.preheader391:                                    ; preds = %bb.ax, %.preheader392
  %.026.i113.i231.lcssa = phi ptr [ %i.mb, %.preheader392 ], [ %i.mo, %bb.ax ] ; 3 uses
  %.024.i114.i232.lcssa = phi ptr [ %i.lr, %.preheader392 ], [ %i.mn, %bb.ax ]
  %.022.i115.i233.lcssa = phi i64 [ %.0172, %.preheader392 ], [ %i.mp, %bb.ax ] ; 3 uses
  %.not.i120.i238498 = icmp eq i64 %.022.i115.i233.lcssa, 0
  br i1 %.not.i120.i238498, label %.critedge.i121.i239, label %.lr.ph502.preheader

.lr.ph502.preheader:                              ; preds = %.preheader391
  %scevgep620 = getelementptr i8, ptr %.026.i113.i231.lcssa, i64 %.022.i115.i233.lcssa
  br label %.lr.ph502

.lr.ph494:                                        ; preds = %.preheader392, %bb.ax
  %.022.i115.i233493 = phi i64 [ %i.mp, %bb.ax ], [ %.0172, %.preheader392 ]
  %.024.i114.i232492 = phi ptr [ %i.mn, %bb.ax ], [ %i.lr, %.preheader392 ] ; 2 uses
  %.026.i113.i231491 = phi ptr [ %i.mo, %bb.ax ], [ %i.mb, %.preheader392 ] ; 3 uses
  %.0.copyload.i127.i242 = load i64, ptr %.024.i114.i232492, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.0.copyload.i.i243 = load i64, ptr %.026.i113.i231491, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.not30.i123.i244 = icmp eq i64 %.0.copyload.i127.i242, %.0.copyload.i.i243
  br i1 %.not30.i123.i244, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph494
  %i.mg = xor i64 %.0.copyload.i.i243, %.0.copyload.i127.i242
  %i.mh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mg, i1 true)
  %i.mi = ptrtoint ptr %.026.i113.i231491 to i64
  %i.mj = ptrtoint ptr %i.mb to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = lshr i64 %i.mh, 3
  %i.mm = add i64 %i.mk, %i.ml
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240

bb.ax:                                            ; preds = %.lr.ph494
  %i.mn = getelementptr inbounds nuw i8, ptr %.024.i114.i232492, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.026.i113.i231491, i64 8 ; 2 uses
  %i.mp = add i64 %.022.i115.i233493, -8          ; 3 uses
  %i.mq = icmp ugt i64 %i.mp, 7
  br i1 %i.mq, label %.lr.ph494, label %.preheader391, !llvm.loop !62

.lr.ph502:                                        ; preds = %.lr.ph502.preheader, %bb.ay
  %.123.i119.i237501 = phi i64 [ %i.mu, %bb.ay ], [ %.022.i115.i233.lcssa, %.lr.ph502.preheader ]
  %.125.i118.i236500 = phi ptr [ %i.mv, %bb.ay ], [ %.024.i114.i232.lcssa, %.lr.ph502.preheader ] ; 2 uses
  %.228.i117.i235499 = phi ptr [ %i.mw, %bb.ay ], [ %.026.i113.i231.lcssa, %.lr.ph502.preheader ] ; 3 uses
  %i.mr = load i8, ptr %.228.i117.i235499, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.ms = load i8, ptr %.125.i118.i236500, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.mt = icmp eq i8 %i.mr, %i.ms
  br i1 %i.mt, label %bb.ay, label %.critedge.i121.i239

bb.ay:                                            ; preds = %.lr.ph502
  %i.mu = add nsw i64 %.123.i119.i237501, -1      ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.125.i118.i236500, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.228.i117.i235499, i64 1
  %.not.i120.i238 = icmp eq i64 %i.mu, 0
  br i1 %.not.i120.i238, label %.critedge.i121.i239, label %.lr.ph502, !llvm.loop !64

.critedge.i121.i239:                              ; preds = %bb.ay, %.lr.ph502, %.preheader391
  %.228.i117.i235.lcssa = phi ptr [ %.026.i113.i231.lcssa, %.preheader391 ], [ %.228.i117.i235499, %.lr.ph502 ], [ %scevgep620, %bb.ay ]
  %i.mx = ptrtoint ptr %.228.i117.i235.lcssa to i64
  %i.my = ptrtoint ptr %i.mb to i64
  %i.mz = sub i64 %i.mx, %i.my
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240: ; preds = %bb.aw, %.critedge.i121.i239
  %.2.i122.i241 = phi i64 [ %i.mm, %bb.aw ], [ %i.mz, %.critedge.i121.i239 ] ; 4 uses
  %i.na = icmp ugt i64 %.2.i122.i241, 3
  br i1 %i.na, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240
  %i.nb = mul i64 %.2.i122.i241, 135
  %i.nc = add i64 %i.nb, 1935                     ; 2 uses
  %i.nd = icmp ugt i64 %i.nc, 2020
  br i1 %i.nd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ne = getelementptr i8, ptr %i.lr, i64 %.2.i122.i241
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240, %bb.av, %.preheader396
  %.sroa.13.0 = phi i64 [ %i.nc, %bb.ba ], [ 2020, %bb.az ], [ 2020, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 2020, %bb.av ], [ 2020, %.preheader396 ] ; 5 uses
  %.sroa.9.0 = phi i64 [ %i.lx, %bb.ba ], [ 0, %bb.az ], [ 0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ 0, %bb.av ], [ 0, %.preheader396 ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.2.i122.i241, %bb.ba ], [ %i.ln, %bb.az ], [ %i.ln, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ %i.ln, %bb.av ], [ %i.ln, %.preheader396 ] ; 5 uses
  %.299.i203.in = phi i8 [ %i.nf, %bb.ba ], [ %i.lt, %bb.az ], [ %i.lt, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit126.i240 ], [ %i.lt, %bb.av ], [ %i.lt, %.preheader396 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !1537
  store i64 %i.lv, ptr %i.a, align 16, !tbaa !30, !noalias !1537
  %i.ng = add nuw nsw i64 %i.lv, 8
  %i.nh = and i64 %i.ng, 1048575                  ; 2 uses
  store i64 %i.nh, ptr %i.an, align 8, !tbaa !30, !noalias !1537
  %i.ni = add nuw nsw i64 %i.lv, 16
  %i.nj = and i64 %i.ni, 1048575                  ; 2 uses
  store i64 %i.nj, ptr %i.ao, align 16, !tbaa !30, !noalias !1537
  %i.nk = add nuw nsw i64 %i.lv, 24
  %i.nl = and i64 %i.nk, 1048575                  ; 2 uses
  store i64 %i.nl, ptr %i.ap, align 8, !tbaa !30, !noalias !1537
  %13 = lshr i64 %i.lo, 3
  %i.nm = and i64 %13, 3
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.nm
  %i.nn = load i64, ptr %14, align 8, !tbaa !30, !noalias !1537
  %i.no = icmp ugt i64 %.0172, 7                  ; 4 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.lv
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !3, !noalias !1533
  %i.nr = zext i32 %i.nq to i64                   ; 3 uses
  %i.ns = sub i64 %i.lo, %i.nr                    ; 3 uses
  %i.nt = and i64 %3, %i.nr
  %i.nu = getelementptr i8, ptr %2, i64 %i.nt     ; 5 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 %.sroa.0.0
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %.not.i211 = icmp eq i8 %.299.i203.in, %i.nw
  br i1 %.not.i211, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.nx = icmp eq i64 %i.lo, %i.nr
  %i.ny = icmp ugt i64 %i.ns, %i.lp
  %i.nz = or i1 %i.nx, %i.ny
  br i1 %i.nz, label %bb.bi, label %.preheader390, !prof !72

.preheader390:                                    ; preds = %bb.bc
  br i1 %i.no, label %.lr.ph510, label %.preheader389

.preheader389:                                    ; preds = %bb.be, %.preheader390
  %.026.i.i215.lcssa = phi ptr [ %i.nu, %.preheader390 ], [ %i.oi, %bb.be ] ; 3 uses
  %.024.i.i216.lcssa = phi ptr [ %i.lr, %.preheader390 ], [ %i.oh, %bb.be ]
  %.022.i.i217.lcssa = phi i64 [ %.0172, %.preheader390 ], [ %i.oj, %bb.be ] ; 3 uses
  %.not.i.i222514 = icmp eq i64 %.022.i.i217.lcssa, 0
  br i1 %.not.i.i222514, label %.critedge.i.i223, label %.lr.ph518.preheader

.lr.ph518.preheader:                              ; preds = %.preheader389
  %scevgep621 = getelementptr i8, ptr %.026.i.i215.lcssa, i64 %.022.i.i217.lcssa
  br label %.lr.ph518

.lr.ph510:                                        ; preds = %.preheader390, %bb.be
  %.022.i.i217509 = phi i64 [ %i.oj, %bb.be ], [ %.0172, %.preheader390 ]
  %.024.i.i216508 = phi ptr [ %i.oh, %bb.be ], [ %i.lr, %.preheader390 ] ; 2 uses
  %.026.i.i215507 = phi ptr [ %i.oi, %bb.be ], [ %i.nu, %.preheader390 ] ; 3 uses
  %.0.copyload.i129.i226 = load i64, ptr %.024.i.i216508, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.0.copyload.i128.i227 = load i64, ptr %.026.i.i215507, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.not30.i.i228 = icmp eq i64 %.0.copyload.i129.i226, %.0.copyload.i128.i227
  br i1 %.not30.i.i228, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph510
  %i.oa = xor i64 %.0.copyload.i128.i227, %.0.copyload.i129.i226
  %i.ob = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.oa, i1 true)
  %i.oc = ptrtoint ptr %.026.i.i215507 to i64
  %i.od = ptrtoint ptr %i.nu to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = lshr i64 %i.ob, 3
  %i.og = add i64 %i.oe, %i.of
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224

bb.be:                                            ; preds = %.lr.ph510
  %i.oh = getelementptr inbounds nuw i8, ptr %.024.i.i216508, i64 8 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.026.i.i215507, i64 8 ; 2 uses
  %i.oj = add i64 %.022.i.i217509, -8             ; 3 uses
  %i.ok = icmp ugt i64 %i.oj, 7
  br i1 %i.ok, label %.lr.ph510, label %.preheader389, !llvm.loop !62

.lr.ph518:                                        ; preds = %.lr.ph518.preheader, %bb.bf
  %.123.i.i221517 = phi i64 [ %i.oo, %bb.bf ], [ %.022.i.i217.lcssa, %.lr.ph518.preheader ]
  %.125.i.i220516 = phi ptr [ %i.op, %bb.bf ], [ %.024.i.i216.lcssa, %.lr.ph518.preheader ] ; 2 uses
  %.228.i.i219515 = phi ptr [ %i.oq, %bb.bf ], [ %.026.i.i215.lcssa, %.lr.ph518.preheader ] ; 3 uses
  %i.ol = load i8, ptr %.228.i.i219515, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.om = load i8, ptr %.125.i.i220516, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.on = icmp eq i8 %i.ol, %i.om
  br i1 %i.on, label %bb.bf, label %.critedge.i.i223

bb.bf:                                            ; preds = %.lr.ph518
  %i.oo = add nsw i64 %.123.i.i221517, -1         ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.125.i.i220516, i64 1
  %i.oq = getelementptr inbounds nuw i8, ptr %.228.i.i219515, i64 1
  %.not.i.i222 = icmp eq i64 %i.oo, 0
  br i1 %.not.i.i222, label %.critedge.i.i223, label %.lr.ph518, !llvm.loop !64

.critedge.i.i223:                                 ; preds = %bb.bf, %.lr.ph518, %.preheader389
  %.228.i.i219.lcssa = phi ptr [ %.026.i.i215.lcssa, %.preheader389 ], [ %.228.i.i219515, %.lr.ph518 ], [ %scevgep621, %bb.bf ]
  %i.or = ptrtoint ptr %.228.i.i219.lcssa to i64
  %i.os = ptrtoint ptr %i.nu to i64
  %i.ot = sub i64 %i.or, %i.os
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224: ; preds = %bb.bd, %.critedge.i.i223
  %.2.i.i225 = phi i64 [ %i.og, %bb.bd ], [ %i.ot, %.critedge.i.i223 ] ; 4 uses
  %i.ou = icmp ugt i64 %.2.i.i225, 3
  br i1 %i.ou, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224
  %i.ov = mul i64 %.2.i.i225, 135
  %i.ow = trunc i64 %i.ns to i32
  %i.ox = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ow, i1 true)
  %i.oy = xor i32 %i.ox, 31
  %.neg572 = mul nsw i32 %i.oy, -30
  %narrow571 = add nsw i32 %.neg572, 1920
  %i.oz = zext nneg i32 %narrow571 to i64
  %i.pa = add i64 %i.ov, %i.oz                    ; 2 uses
  %i.pb = icmp ult i64 %.sroa.13.0, %i.pa
  br i1 %i.pb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.pc = getelementptr i8, ptr %i.lr, i64 %.2.i.i225
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224, %bb.bc, %bb.bb
  %.sroa.13.2 = phi i64 [ %.sroa.13.0, %bb.bc ], [ %i.pa, %bb.bh ], [ %.sroa.13.0, %bb.bg ], [ %.sroa.13.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.13.0, %bb.bb ] ; 5 uses
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.bc ], [ %i.ns, %bb.bh ], [ %.sroa.9.0, %bb.bg ], [ %.sroa.9.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.9.0, %bb.bb ] ; 4 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.bc ], [ %.2.i.i225, %bb.bh ], [ %.sroa.0.0, %bb.bg ], [ %.sroa.0.0, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.sroa.0.0, %bb.bb ] ; 5 uses
  %.6103.i212.in = phi i8 [ %.299.i203.in, %bb.bc ], [ %i.pd, %bb.bh ], [ %.299.i203.in, %bb.bg ], [ %.299.i203.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224 ], [ %.299.i203.in, %bb.bb ] ; 5 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.nh
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3, !noalias !1533
  %i.pg = zext i32 %i.pf to i64                   ; 3 uses
  %i.ph = sub i64 %i.lo, %i.pg                    ; 3 uses
  %i.pi = and i64 %3, %i.pg
  %i.pj = getelementptr i8, ptr %2, i64 %i.pi     ; 5 uses
  %i.pk = getelementptr i8, ptr %i.pj, i64 %.sroa.0.2
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %.not.i211.1 = icmp eq i8 %.6103.i212.in, %i.pl
  br i1 %.not.i211.1, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.pm = icmp eq i64 %i.lo, %i.pg
  %i.pn = icmp ugt i64 %i.ph, %i.lp
  %i.po = or i1 %i.pm, %i.pn
  br i1 %i.po, label %bb.bp, label %.preheader390.1, !prof !72

.preheader390.1:                                  ; preds = %bb.bj
  br i1 %i.no, label %.lr.ph510.1, label %.preheader389.1

.lr.ph510.1:                                      ; preds = %.preheader390.1, %bb.bl
  %.022.i.i217509.1 = phi i64 [ %i.py, %bb.bl ], [ %.0172, %.preheader390.1 ]
  %.024.i.i216508.1 = phi ptr [ %i.pw, %bb.bl ], [ %i.lr, %.preheader390.1 ] ; 2 uses
  %.026.i.i215507.1 = phi ptr [ %i.px, %bb.bl ], [ %i.pj, %.preheader390.1 ] ; 3 uses
  %.0.copyload.i129.i226.1 = load i64, ptr %.024.i.i216508.1, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.0.copyload.i128.i227.1 = load i64, ptr %.026.i.i215507.1, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.not30.i.i228.1 = icmp eq i64 %.0.copyload.i129.i226.1, %.0.copyload.i128.i227.1
  br i1 %.not30.i.i228.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph510.1
  %i.pp = xor i64 %.0.copyload.i128.i227.1, %.0.copyload.i129.i226.1
  %i.pq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pp, i1 true)
  %i.pr = ptrtoint ptr %.026.i.i215507.1 to i64
  %i.ps = ptrtoint ptr %i.pj to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = lshr i64 %i.pq, 3
  %i.pv = add i64 %i.pt, %i.pu
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1

bb.bl:                                            ; preds = %.lr.ph510.1
  %i.pw = getelementptr inbounds nuw i8, ptr %.024.i.i216508.1, i64 8 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.026.i.i215507.1, i64 8 ; 2 uses
  %i.py = add i64 %.022.i.i217509.1, -8           ; 3 uses
  %i.pz = icmp ugt i64 %i.py, 7
  br i1 %i.pz, label %.lr.ph510.1, label %.preheader389.1, !llvm.loop !62

.preheader389.1:                                  ; preds = %bb.bl, %.preheader390.1
  %.026.i.i215.lcssa.1 = phi ptr [ %i.pj, %.preheader390.1 ], [ %i.px, %bb.bl ] ; 3 uses
  %.024.i.i216.lcssa.1 = phi ptr [ %i.lr, %.preheader390.1 ], [ %i.pw, %bb.bl ]
  %.022.i.i217.lcssa.1 = phi i64 [ %.0172, %.preheader390.1 ], [ %i.py, %bb.bl ] ; 3 uses
  %.not.i.i222514.1 = icmp eq i64 %.022.i.i217.lcssa.1, 0
  br i1 %.not.i.i222514.1, label %.critedge.i.i223.1, label %.lr.ph518.preheader.1

.lr.ph518.preheader.1:                            ; preds = %.preheader389.1
  %scevgep621.1 = getelementptr i8, ptr %.026.i.i215.lcssa.1, i64 %.022.i.i217.lcssa.1
  br label %.lr.ph518.1

.lr.ph518.1:                                      ; preds = %bb.bm, %.lr.ph518.preheader.1
  %.123.i.i221517.1 = phi i64 [ %i.qd, %bb.bm ], [ %.022.i.i217.lcssa.1, %.lr.ph518.preheader.1 ]
  %.125.i.i220516.1 = phi ptr [ %i.qe, %bb.bm ], [ %.024.i.i216.lcssa.1, %.lr.ph518.preheader.1 ] ; 2 uses
  %.228.i.i219515.1 = phi ptr [ %i.qf, %bb.bm ], [ %.026.i.i215.lcssa.1, %.lr.ph518.preheader.1 ] ; 3 uses
  %i.qa = load i8, ptr %.228.i.i219515.1, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.qb = load i8, ptr %.125.i.i220516.1, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.qc = icmp eq i8 %i.qa, %i.qb
  br i1 %i.qc, label %bb.bm, label %.critedge.i.i223.1

bb.bm:                                            ; preds = %.lr.ph518.1
  %i.qd = add nsw i64 %.123.i.i221517.1, -1       ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.125.i.i220516.1, i64 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.228.i.i219515.1, i64 1
  %.not.i.i222.1 = icmp eq i64 %i.qd, 0
  br i1 %.not.i.i222.1, label %.critedge.i.i223.1, label %.lr.ph518.1, !llvm.loop !64

.critedge.i.i223.1:                               ; preds = %.lr.ph518.1, %bb.bm, %.preheader389.1
  %.228.i.i219.lcssa.1 = phi ptr [ %.026.i.i215.lcssa.1, %.preheader389.1 ], [ %.228.i.i219515.1, %.lr.ph518.1 ], [ %scevgep621.1, %bb.bm ]
  %i.qg = ptrtoint ptr %.228.i.i219.lcssa.1 to i64
  %i.qh = ptrtoint ptr %i.pj to i64
  %i.qi = sub i64 %i.qg, %i.qh
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1: ; preds = %.critedge.i.i223.1, %bb.bk
  %.2.i.i225.1 = phi i64 [ %i.pv, %bb.bk ], [ %i.qi, %.critedge.i.i223.1 ] ; 4 uses
  %i.qj = icmp ugt i64 %.2.i.i225.1, 3
  br i1 %i.qj, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.1
  %i.qk = mul i64 %.2.i.i225.1, 135
  %i.ql = trunc i64 %i.ph to i32
  %i.qm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ql, i1 true)
  %i.qn = xor i32 %i.qm, 31
  %.neg572.1 = mul nsw i32 %i.qn, -30
  %narrow571.1 = add nsw i32 %.neg572.1, 1920
end_hunk_13
begin_hunk_14_@_ZL28CreateBackwardReferencesNH55mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.bq:                                            ; preds = %bb.bp
  %i.rb = icmp eq i64 %i.lo, %i.qv
  %i.rc = icmp ugt i64 %i.qw, %i.lp
  %i.rd = or i1 %i.rb, %i.rc
  br i1 %i.rd, label %bb.bw, label %.preheader390.2, !prof !72

.preheader390.2:                                  ; preds = %bb.bq
  br i1 %i.no, label %.lr.ph510.2, label %.preheader389.2

.lr.ph510.2:                                      ; preds = %.preheader390.2, %bb.bs
  %.022.i.i217509.2 = phi i64 [ %i.rn, %bb.bs ], [ %.0172, %.preheader390.2 ]
  %.024.i.i216508.2 = phi ptr [ %i.rl, %bb.bs ], [ %i.lr, %.preheader390.2 ] ; 2 uses
  %.026.i.i215507.2 = phi ptr [ %i.rm, %bb.bs ], [ %i.qy, %.preheader390.2 ] ; 3 uses
  %.0.copyload.i129.i226.2 = load i64, ptr %.024.i.i216508.2, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.0.copyload.i128.i227.2 = load i64, ptr %.026.i.i215507.2, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.not30.i.i228.2 = icmp eq i64 %.0.copyload.i129.i226.2, %.0.copyload.i128.i227.2
  br i1 %.not30.i.i228.2, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph510.2
  %i.re = xor i64 %.0.copyload.i128.i227.2, %.0.copyload.i129.i226.2
  %i.rf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.re, i1 true)
  %i.rg = ptrtoint ptr %.026.i.i215507.2 to i64
  %i.rh = ptrtoint ptr %i.qy to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = lshr i64 %i.rf, 3
  %i.rk = add i64 %i.ri, %i.rj
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2

bb.bs:                                            ; preds = %.lr.ph510.2
  %i.rl = getelementptr inbounds nuw i8, ptr %.024.i.i216508.2, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.026.i.i215507.2, i64 8 ; 2 uses
  %i.rn = add i64 %.022.i.i217509.2, -8           ; 3 uses
  %i.ro = icmp ugt i64 %i.rn, 7
  br i1 %i.ro, label %.lr.ph510.2, label %.preheader389.2, !llvm.loop !62

.preheader389.2:                                  ; preds = %bb.bs, %.preheader390.2
  %.026.i.i215.lcssa.2 = phi ptr [ %i.qy, %.preheader390.2 ], [ %i.rm, %bb.bs ] ; 3 uses
  %.024.i.i216.lcssa.2 = phi ptr [ %i.lr, %.preheader390.2 ], [ %i.rl, %bb.bs ]
  %.022.i.i217.lcssa.2 = phi i64 [ %.0172, %.preheader390.2 ], [ %i.rn, %bb.bs ] ; 3 uses
  %.not.i.i222514.2 = icmp eq i64 %.022.i.i217.lcssa.2, 0
  br i1 %.not.i.i222514.2, label %.critedge.i.i223.2, label %.lr.ph518.preheader.2

.lr.ph518.preheader.2:                            ; preds = %.preheader389.2
  %scevgep621.2 = getelementptr i8, ptr %.026.i.i215.lcssa.2, i64 %.022.i.i217.lcssa.2
  br label %.lr.ph518.2

.lr.ph518.2:                                      ; preds = %bb.bt, %.lr.ph518.preheader.2
  %.123.i.i221517.2 = phi i64 [ %i.rs, %bb.bt ], [ %.022.i.i217.lcssa.2, %.lr.ph518.preheader.2 ]
  %.125.i.i220516.2 = phi ptr [ %i.rt, %bb.bt ], [ %.024.i.i216.lcssa.2, %.lr.ph518.preheader.2 ] ; 2 uses
  %.228.i.i219515.2 = phi ptr [ %i.ru, %bb.bt ], [ %.026.i.i215.lcssa.2, %.lr.ph518.preheader.2 ] ; 3 uses
  %i.rp = load i8, ptr %.228.i.i219515.2, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.rq = load i8, ptr %.125.i.i220516.2, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.rr = icmp eq i8 %i.rp, %i.rq
  br i1 %i.rr, label %bb.bt, label %.critedge.i.i223.2

bb.bt:                                            ; preds = %.lr.ph518.2
  %i.rs = add nsw i64 %.123.i.i221517.2, -1       ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.125.i.i220516.2, i64 1
  %i.ru = getelementptr inbounds nuw i8, ptr %.228.i.i219515.2, i64 1
  %.not.i.i222.2 = icmp eq i64 %i.rs, 0
  br i1 %.not.i.i222.2, label %.critedge.i.i223.2, label %.lr.ph518.2, !llvm.loop !64

.critedge.i.i223.2:                               ; preds = %.lr.ph518.2, %bb.bt, %.preheader389.2
  %.228.i.i219.lcssa.2 = phi ptr [ %.026.i.i215.lcssa.2, %.preheader389.2 ], [ %.228.i.i219515.2, %.lr.ph518.2 ], [ %scevgep621.2, %bb.bt ]
  %i.rv = ptrtoint ptr %.228.i.i219.lcssa.2 to i64
  %i.rw = ptrtoint ptr %i.qy to i64
  %i.rx = sub i64 %i.rv, %i.rw
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2: ; preds = %.critedge.i.i223.2, %bb.br
  %.2.i.i225.2 = phi i64 [ %i.rk, %bb.br ], [ %i.rx, %.critedge.i.i223.2 ] ; 4 uses
  %i.ry = icmp ugt i64 %.2.i.i225.2, 3
  br i1 %i.ry, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2
  %i.rz = mul i64 %.2.i.i225.2, 135
  %i.sa = trunc i64 %i.qw to i32
  %i.sb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sa, i1 true)
  %i.sc = xor i32 %i.sb, 31
  %.neg572.2 = mul nsw i32 %i.sc, -30
  %narrow571.2 = add nsw i32 %.neg572.2, 1920
  %i.sd = zext nneg i32 %narrow571.2 to i64
  %i.se = add i64 %i.rz, %i.sd                    ; 2 uses
  %i.sf = icmp ult i64 %.sroa.13.2.1, %i.se
  br i1 %i.sf, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.sg = getelementptr i8, ptr %i.lr, i64 %.2.i.i225.2
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2, %bb.bq, %bb.bp
  %.sroa.13.2.2 = phi i64 [ %.sroa.13.2.1, %bb.bq ], [ %i.se, %bb.bv ], [ %.sroa.13.2.1, %bb.bu ], [ %.sroa.13.2.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.sroa.13.2.1, %bb.bp ] ; 5 uses
  %.sroa.9.2.2 = phi i64 [ %.sroa.9.2.1, %bb.bq ], [ %i.qw, %bb.bv ], [ %.sroa.9.2.1, %bb.bu ], [ %.sroa.9.2.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.sroa.9.2.1, %bb.bp ] ; 4 uses
  %.sroa.0.2.2 = phi i64 [ %.sroa.0.2.1, %bb.bq ], [ %.2.i.i225.2, %bb.bv ], [ %.sroa.0.2.1, %bb.bu ], [ %.sroa.0.2.1, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.sroa.0.2.1, %bb.bp ] ; 5 uses
  %.6103.i212.2.in = phi i8 [ %.6103.i212.1.in, %bb.bq ], [ %i.sh, %bb.bv ], [ %.6103.i212.1.in, %bb.bu ], [ %.6103.i212.1.in, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.2 ], [ %.6103.i212.1.in, %bb.bp ]
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.nl
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !3, !noalias !1533
  %i.sk = zext i32 %i.sj to i64                   ; 3 uses
  %i.sl = sub i64 %i.lo, %i.sk                    ; 3 uses
  %i.sm = and i64 %3, %i.sk
  %i.sn = getelementptr i8, ptr %2, i64 %i.sm     ; 5 uses
  %i.so = getelementptr i8, ptr %i.sn, i64 %.sroa.0.2.2
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %.not.i211.3 = icmp eq i8 %.6103.i212.2.in, %i.sp
  br i1 %.not.i211.3, label %bb.bx, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.bx:                                            ; preds = %bb.bw
  %i.sq = icmp eq i64 %i.lo, %i.sk
  %i.sr = icmp ugt i64 %i.sl, %i.lp
  %i.ss = or i1 %i.sq, %i.sr
  br i1 %i.ss, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247, label %.preheader390.3, !prof !72

.preheader390.3:                                  ; preds = %bb.bx
  br i1 %i.no, label %.lr.ph510.3, label %.preheader389.3

.lr.ph510.3:                                      ; preds = %.preheader390.3, %bb.bz
  %.022.i.i217509.3 = phi i64 [ %i.tc, %bb.bz ], [ %.0172, %.preheader390.3 ]
  %.024.i.i216508.3 = phi ptr [ %i.ta, %bb.bz ], [ %i.lr, %.preheader390.3 ] ; 2 uses
  %.026.i.i215507.3 = phi ptr [ %i.tb, %bb.bz ], [ %i.sn, %.preheader390.3 ] ; 3 uses
  %.0.copyload.i129.i226.3 = load i64, ptr %.024.i.i216508.3, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.0.copyload.i128.i227.3 = load i64, ptr %.026.i.i215507.3, align 1, !alias.scope !1528, !noalias !1533 ; 2 uses
  %.not30.i.i228.3 = icmp eq i64 %.0.copyload.i129.i226.3, %.0.copyload.i128.i227.3
  br i1 %.not30.i.i228.3, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph510.3
  %i.st = xor i64 %.0.copyload.i128.i227.3, %.0.copyload.i129.i226.3
  %i.su = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.st, i1 true)
  %i.sv = ptrtoint ptr %.026.i.i215507.3 to i64
  %i.sw = ptrtoint ptr %i.sn to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = lshr i64 %i.su, 3
  %i.sz = add i64 %i.sx, %i.sy
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3

bb.bz:                                            ; preds = %.lr.ph510.3
  %i.ta = getelementptr inbounds nuw i8, ptr %.024.i.i216508.3, i64 8 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.026.i.i215507.3, i64 8 ; 2 uses
  %i.tc = add i64 %.022.i.i217509.3, -8           ; 3 uses
  %i.td = icmp ugt i64 %i.tc, 7
  br i1 %i.td, label %.lr.ph510.3, label %.preheader389.3, !llvm.loop !62

.preheader389.3:                                  ; preds = %bb.bz, %.preheader390.3
  %.026.i.i215.lcssa.3 = phi ptr [ %i.sn, %.preheader390.3 ], [ %i.tb, %bb.bz ] ; 3 uses
  %.024.i.i216.lcssa.3 = phi ptr [ %i.lr, %.preheader390.3 ], [ %i.ta, %bb.bz ]
  %.022.i.i217.lcssa.3 = phi i64 [ %.0172, %.preheader390.3 ], [ %i.tc, %bb.bz ] ; 3 uses
  %.not.i.i222514.3 = icmp eq i64 %.022.i.i217.lcssa.3, 0
  br i1 %.not.i.i222514.3, label %.critedge.i.i223.3, label %.lr.ph518.preheader.3

.lr.ph518.preheader.3:                            ; preds = %.preheader389.3
  %scevgep621.3 = getelementptr i8, ptr %.026.i.i215.lcssa.3, i64 %.022.i.i217.lcssa.3
  br label %.lr.ph518.3

.lr.ph518.3:                                      ; preds = %bb.ca, %.lr.ph518.preheader.3
  %.123.i.i221517.3 = phi i64 [ %i.th, %bb.ca ], [ %.022.i.i217.lcssa.3, %.lr.ph518.preheader.3 ]
  %.125.i.i220516.3 = phi ptr [ %i.ti, %bb.ca ], [ %.024.i.i216.lcssa.3, %.lr.ph518.preheader.3 ] ; 2 uses
  %.228.i.i219515.3 = phi ptr [ %i.tj, %bb.ca ], [ %.026.i.i215.lcssa.3, %.lr.ph518.preheader.3 ] ; 3 uses
  %i.te = load i8, ptr %.228.i.i219515.3, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.tf = load i8, ptr %.125.i.i220516.3, align 1, !tbaa !54, !alias.scope !1528, !noalias !1533
  %i.tg = icmp eq i8 %i.te, %i.tf
  br i1 %i.tg, label %bb.ca, label %.critedge.i.i223.3

bb.ca:                                            ; preds = %.lr.ph518.3
  %i.th = add nsw i64 %.123.i.i221517.3, -1       ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.125.i.i220516.3, i64 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.228.i.i219515.3, i64 1
  %.not.i.i222.3 = icmp eq i64 %i.th, 0
  br i1 %.not.i.i222.3, label %.critedge.i.i223.3, label %.lr.ph518.3, !llvm.loop !64

.critedge.i.i223.3:                               ; preds = %.lr.ph518.3, %bb.ca, %.preheader389.3
  %.228.i.i219.lcssa.3 = phi ptr [ %.026.i.i215.lcssa.3, %.preheader389.3 ], [ %.228.i.i219515.3, %.lr.ph518.3 ], [ %scevgep621.3, %bb.ca ]
  %i.tk = ptrtoint ptr %.228.i.i219.lcssa.3 to i64
  %i.tl = ptrtoint ptr %i.sn to i64
  %i.tm = sub i64 %i.tk, %i.tl
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3: ; preds = %.critedge.i.i223.3, %bb.by
  %.2.i.i225.3 = phi i64 [ %i.sz, %bb.by ], [ %i.tm, %.critedge.i.i223.3 ] ; 3 uses
  %i.tn = icmp ugt i64 %.2.i.i225.3, 3
  br i1 %i.tn, label %bb.cb, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.cb:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3
  %i.to = mul i64 %.2.i.i225.3, 135
  %i.tp = trunc i64 %i.sl to i32
  %i.tq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.tp, i1 true)
  %i.tr = xor i32 %i.tq, 31
  %.neg572.3 = mul nsw i32 %i.tr, -30
  %narrow571.3 = add nsw i32 %.neg572.3, 1920
  %i.ts = zext nneg i32 %narrow571.3 to i64
  %i.tt = add i64 %i.to, %i.ts                    ; 2 uses
  %i.tu = icmp ult i64 %.sroa.13.2.2, %i.tt
  br i1 %i.tu, label %bb.cc, label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

bb.cc:                                            ; preds = %bb.cb
  br label %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247

_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247: ; preds = %bb.cc, %bb.cb, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3, %bb.bx, %bb.bw
  %.sroa.13.2.3 = phi i64 [ %.sroa.13.2.2, %bb.bx ], [ %i.tt, %bb.cc ], [ %.sroa.13.2.2, %bb.cb ], [ %.sroa.13.2.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3 ], [ %.sroa.13.2.2, %bb.bw ] ; 3 uses
  %.sroa.9.2.3 = phi i64 [ %.sroa.9.2.2, %bb.bx ], [ %i.sl, %bb.cc ], [ %.sroa.9.2.2, %bb.cb ], [ %.sroa.9.2.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3 ], [ %.sroa.9.2.2, %bb.bw ] ; 3 uses
  %.sroa.0.2.3 = phi i64 [ %.sroa.0.2.2, %bb.bx ], [ %.2.i.i225.3, %bb.cc ], [ %.sroa.0.2.2, %bb.cb ], [ %.sroa.0.2.2, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i224.3 ], [ %.sroa.0.2.2, %bb.bw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6, !noalias !1537
  %i.tv = trunc i64 %i.lo to i32                  ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.nn
  store i32 %i.tv, ptr %i.tw, align 4, !tbaa !3, !noalias !1533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.tx = and i64 %i.lo, 3
  %.not.i266 = icmp ne i64 %i.tx, 0
  %i.ty = icmp ult i64 %.0172, 32
  %or.cond66.i267 = or i1 %.not.i266, %i.ty
  br i1 %or.cond66.i267, label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288, label %bb.cd

bb.cd:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247
  %i.tz = load i64, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1538, !noalias !1543 ; 2 uses
  %.not64.i269545 = icmp ugt i64 %i.tz, %i.lo
  br i1 %.not64.i269545, label %bb.cn, label %.lr.ph551

.lr.ph551:                                        ; preds = %bb.cd
  %i.ua = load i32, ptr %i.ac, align 4, !tbaa !651, !alias.scope !1538, !noalias !1543
  %i.ub = load i32, ptr %i.ad, align 8, !tbaa !652, !alias.scope !1538, !noalias !1543
  %.promoted556 = load i32, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1538, !noalias !1543
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph551, %bb.cm
  %i.uc = phi i32 [ %.promoted556, %.lr.ph551 ], [ %i.uq, %bb.cm ] ; 2 uses
  %.0.i268549 = phi i64 [ %i.tz, %.lr.ph551 ], [ %i.wg, %bb.cm ] ; 5 uses
  %.sroa.0.3548 = phi i64 [ %.sroa.0.2.3, %.lr.ph551 ], [ %.sroa.0.4, %bb.cm ] ; 6 uses
  %.sroa.9.3547 = phi i64 [ %.sroa.9.2.3, %.lr.ph551 ], [ %.sroa.9.4, %bb.cm ] ; 5 uses
  %.sroa.13.3546 = phi i64 [ %.sroa.13.2.3, %.lr.ph551 ], [ %.sroa.13.4, %bb.cm ] ; 6 uses
  %i.ud = and i32 %i.uc, 1073741823               ; 2 uses
  %i.ue = and i64 %.0.i268549, %3
  %i.uf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !54, !alias.scope !1541, !noalias !1545
  %i.uh = add i64 %.0.i268549, 32
  %i.ui = and i64 %i.uh, %3
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !54, !alias.scope !1541, !noalias !1545
  %i.ul = mul i32 %i.ua, %i.uc
  %i.um = zext i8 %i.uk to i32
  %i.un = add nuw nsw i32 %i.um, 1
  %i.uo = add i32 %i.un, %i.ul
  %i.up = zext i8 %i.ug to i32
  %.neg.i294 = xor i32 %i.up, -1
  %.neg5.i295 = mul i32 %i.ub, %.neg.i294
  %i.uq = add i32 %i.uo, %.neg5.i295              ; 2 uses
  %i.ur = icmp samesign ult i32 %i.ud, 16777216
  br i1 %i.ur, label %bb.cf, label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  %i.us = load ptr, ptr %i.ae, align 8, !tbaa !655, !alias.scope !1538, !noalias !1543
  %i.ut = zext nneg i32 %i.ud to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.ut ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !3, !noalias !1545 ; 3 uses
  %i.uw = zext i32 %i.uv to i64
  %i.ux = trunc i64 %.0.i268549 to i32
  store i32 %i.ux, ptr %i.uu, align 4, !tbaa !3, !noalias !1545
  %i.uy = icmp eq i64 %.0.i268549, %i.lo
  %i.uz = icmp ne i32 %i.uv, -1
  %or.cond.i270 = select i1 %i.uy, i1 %i.uz, i1 false
  br i1 %or.cond.i270, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.va = sub i32 %i.tv, %i.uv                    ; 2 uses
  %i.vb = zext i32 %i.va to i64                   ; 2 uses
  %.not65.i271 = icmp ult i64 %i.lp, %i.vb
  br i1 %.not65.i271, label %bb.cm, label %.lr.ph533.preheader

.lr.ph533.preheader:                              ; preds = %bb.cg
  %i.vc = and i64 %3, %i.uw
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 %i.vc ; 3 uses
  br label %.lr.ph533

.preheader:                                       ; preds = %bb.ci
  %.not.i.i279537 = icmp eq i64 %i.vn, 0
  br i1 %.not.i.i279537, label %.critedge.i.i280, label %.lr.ph541.preheader

.lr.ph541.preheader:                              ; preds = %.preheader
  %scevgep622 = getelementptr i8, ptr %.026.i.i272529, i64 %.022.i.i274531
  br label %.lr.ph541

.lr.ph533:                                        ; preds = %.lr.ph533.preheader, %bb.ci
  %.022.i.i274531 = phi i64 [ %i.vn, %bb.ci ], [ %.0172, %.lr.ph533.preheader ] ; 2 uses
  %.024.i.i273530 = phi ptr [ %i.vl, %bb.ci ], [ %i.lr, %.lr.ph533.preheader ] ; 2 uses
  %.026.i.i272529 = phi ptr [ %i.vm, %bb.ci ], [ %i.vd, %.lr.ph533.preheader ] ; 4 uses
  %.0.copyload.i67.i283 = load i64, ptr %.024.i.i273530, align 1, !alias.scope !1541, !noalias !1545 ; 2 uses
  %.0.copyload.i.i284 = load i64, ptr %.026.i.i272529, align 1, !alias.scope !1541, !noalias !1545 ; 2 uses
  %.not30.i.i285 = icmp eq i64 %.0.copyload.i67.i283, %.0.copyload.i.i284
  br i1 %.not30.i.i285, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph533
  %i.ve = xor i64 %.0.copyload.i.i284, %.0.copyload.i67.i283
  %i.vf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ve, i1 true)
  %i.vg = ptrtoint ptr %.026.i.i272529 to i64
  %i.vh = ptrtoint ptr %i.vd to i64
  %i.vi = sub i64 %i.vg, %i.vh
  %i.vj = lshr i64 %i.vf, 3
  %i.vk = add i64 %i.vi, %i.vj
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281

bb.ci:                                            ; preds = %.lr.ph533
  %i.vl = getelementptr inbounds nuw i8, ptr %.024.i.i273530, i64 8 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.026.i.i272529, i64 8 ; 3 uses
  %i.vn = add i64 %.022.i.i274531, -8             ; 4 uses
  %i.vo = icmp ugt i64 %i.vn, 7
  br i1 %i.vo, label %.lr.ph533, label %.preheader, !llvm.loop !62

.lr.ph541:                                        ; preds = %.lr.ph541.preheader, %bb.cj
  %.123.i.i278540 = phi i64 [ %i.vs, %bb.cj ], [ %i.vn, %.lr.ph541.preheader ]
  %.125.i.i277539 = phi ptr [ %i.vt, %bb.cj ], [ %i.vl, %.lr.ph541.preheader ] ; 2 uses
  %.228.i.i276538 = phi ptr [ %i.vu, %bb.cj ], [ %i.vm, %.lr.ph541.preheader ] ; 3 uses
  %i.vp = load i8, ptr %.228.i.i276538, align 1, !tbaa !54, !alias.scope !1541, !noalias !1545
  %i.vq = load i8, ptr %.125.i.i277539, align 1, !tbaa !54, !alias.scope !1541, !noalias !1545
  %i.vr = icmp eq i8 %i.vp, %i.vq
  br i1 %i.vr, label %bb.cj, label %.critedge.i.i280

bb.cj:                                            ; preds = %.lr.ph541
  %i.vs = add nsw i64 %.123.i.i278540, -1         ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.125.i.i277539, i64 1
  %i.vu = getelementptr inbounds nuw i8, ptr %.228.i.i276538, i64 1
  %.not.i.i279 = icmp eq i64 %i.vs, 0
  br i1 %.not.i.i279, label %.critedge.i.i280, label %.lr.ph541, !llvm.loop !64

.critedge.i.i280:                                 ; preds = %bb.cj, %.lr.ph541, %.preheader
  %.228.i.i276.lcssa = phi ptr [ %i.vm, %.preheader ], [ %.228.i.i276538, %.lr.ph541 ], [ %scevgep622, %bb.cj ]
  %i.vv = ptrtoint ptr %.228.i.i276.lcssa to i64
  %i.vw = ptrtoint ptr %i.vd to i64
  %i.vx = sub i64 %i.vv, %i.vw
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281: ; preds = %bb.ch, %.critedge.i.i280
  %.2.i.i282 = phi i64 [ %i.vk, %bb.ch ], [ %i.vx, %.critedge.i.i280 ] ; 4 uses
  %i.vy = icmp ugt i64 %.2.i.i282, 3
  %i.vz = icmp ugt i64 %.2.i.i282, %.sroa.0.3548
  %or.cond374 = select i1 %i.vy, i1 %i.vz, i1 false
  br i1 %or.cond374, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281
  %i.wa = mul i64 %.2.i.i282, 135
  %i.wb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.va, i1 true)
  %i.wc = xor i32 %i.wb, 31
  %.neg574 = mul nsw i32 %i.wc, -30
  %narrow573 = add nsw i32 %.neg574, 1920
  %i.wd = zext nneg i32 %narrow573 to i64
  %i.we = add i64 %i.wa, %i.wd                    ; 2 uses
  %i.wf = icmp ugt i64 %i.we, %.sroa.13.3546
  br i1 %i.wf, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281, %bb.cg, %bb.cf, %bb.ce
  %.sroa.13.4 = phi i64 [ %.sroa.13.3546, %bb.cg ], [ %i.we, %bb.cl ], [ %.sroa.13.3546, %bb.ck ], [ %.sroa.13.3546, %bb.ce ], [ %.sroa.13.3546, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281 ], [ %.sroa.13.3546, %bb.cf ] ; 2 uses
  %.sroa.9.4 = phi i64 [ %.sroa.9.3547, %bb.cg ], [ %i.vb, %bb.cl ], [ %.sroa.9.3547, %bb.ck ], [ %.sroa.9.3547, %bb.ce ], [ %.sroa.9.3547, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281 ], [ %.sroa.9.3547, %bb.cf ] ; 2 uses
  %.sroa.0.4 = phi i64 [ %.sroa.0.3548, %bb.cg ], [ %.2.i.i282, %bb.cl ], [ %.sroa.0.3548, %bb.ck ], [ %.sroa.0.3548, %bb.ce ], [ %.sroa.0.3548, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i281 ], [ %.sroa.0.3548, %bb.cf ] ; 2 uses
  %i.wg = add i64 %.0.i268549, 4                  ; 2 uses
  %.not64.i269 = icmp ugt i64 %i.wg, %i.lo
  br i1 %.not64.i269, label %._crit_edge552, label %bb.ce, !llvm.loop !656

._crit_edge552:                                   ; preds = %bb.cm
  store i32 %i.uq, ptr %i.aa, align 8, !tbaa !653, !alias.scope !1538, !noalias !1543
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge552, %bb.cd
  %.sroa.13.3.lcssa = phi i64 [ %.sroa.13.4, %._crit_edge552 ], [ %.sroa.13.2.3, %bb.cd ]
  %.sroa.9.3.lcssa = phi i64 [ %.sroa.9.4, %._crit_edge552 ], [ %.sroa.9.2.3, %bb.cd ]
  %.sroa.0.3.lcssa = phi i64 [ %.sroa.0.4, %._crit_edge552 ], [ %.sroa.0.2.3, %bb.cd ]
  %i.wh = add i64 %.1179, 5
  store i64 %i.wh, ptr %i.ab, align 8, !tbaa !647, !alias.scope !1538, !noalias !1543
  br label %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288

_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288: ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247, %bb.cn
  %.sroa.13.5 = phi i64 [ %.sroa.13.2.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247 ], [ %.sroa.13.3.lcssa, %bb.cn ] ; 2 uses
  %.sroa.9.5 = phi i64 [ %.sroa.9.2.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247 ], [ %.sroa.9.3.lcssa, %bb.cn ] ; 2 uses
  %.sroa.0.5 = phi i64 [ %.sroa.0.2.3, %_ZN13duckdb_brotliL19FindLongestMatchH54EPNS_3H54EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit247 ], [ %.sroa.0.3.lcssa, %bb.cn ] ; 2 uses
  %i.wi = add i64 %.sroa.24.0, 175
  %.not196 = icmp ult i64 %.sroa.13.5, %i.wi
  br i1 %.not196, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288
  %i.wj = add i64 %.1176, 1                       ; 2 uses
  %i.wk = add nuw nsw i32 %.0165, 1
  %i.wl = icmp samesign ult i32 %.0165, 3
  %i.wm = add i64 %.1179, 9
  %i.wn = icmp ult i64 %i.wm, %i.k
  %or.cond376 = and i1 %i.wl, %i.wn
  br i1 %or.cond376, label %.preheader396, label %bb.cp, !llvm.loop !1546

bb.cp:                                            ; preds = %bb.co, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288
  %.sroa.15.1.ph = phi i64 [ %.sroa.9.5, %bb.co ], [ %.sroa.15.0, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288 ] ; 11 uses
  %.sroa.0299.1.ph = phi i64 [ %.sroa.0.5, %bb.co ], [ %.sroa.0299.0, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288 ] ; 7 uses
  %.3181.ph = phi i64 [ %i.lo, %bb.co ], [ %.1179, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288 ] ; 4 uses
  %.3.ph = phi i64 [ %i.wj, %bb.co ], [ %.1176, %_ZN13duckdb_brotliL29FindLongestMatchHROLLING_FASTEPNS_13HROLLING_FASTEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit288 ] ; 10 uses
  %i.wo = shl i64 %.sroa.0299.1.ph, 1
  %i.wp = add i64 %i.wo, %i.q
  %i.wq = add i64 %i.wp, %.3181.ph                ; 3 uses
  %i.wr = add i64 %.3181.ph, %i.i
  %i.ws = tail call noundef i64 @llvm.umin.i64(i64 %i.wr, i64 %i.g)
  %i.wt = add i64 %i.ws, %i.s                     ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.15.1.ph, %i.wt
  br i1 %.not.i, label %bb.cy, label %bb.cq

end_hunk_14
begin_hunk_15_@_ZL28CreateBackwardReferencesNH65mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.alr = getelementptr [4 x i8], ptr %i.ba, i64 %i.alo
  %i.als = getelementptr [4 x i8], ptr %i.alr, i64 %i.aln
  store i32 %i.alq, ptr %i.als, align 4, !tbaa !3, !noalias !1672
  %i.alt = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph725
  %.0.i.i283723.unr = phi i64 [ %.0, %.lr.ph725 ], [ %i.alt, %.prol.loopexit.unr-lcssa ]
  %i.alu = icmp eq i64 %i.aks, %.neg1201
  br i1 %i.alu, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, label %.lr.ph725.new

.lr.ph725.new:                                    ; preds = %.prol.loopexit, %.lr.ph725.new
  %.0.i.i283723 = phi i64 [ %i.amy, %.lr.ph725.new ], [ %.0.i.i283723.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.alv = and i64 %.0.i.i283723, %3
  %i.alw = getelementptr inbounds nuw i8, ptr %2, i64 %i.alv
  %.0.copyload.i.i.i284 = load i64, ptr %i.alw, align 1, !alias.scope !1669, !noalias !1663
  %i.alx = mul i64 %.0.copyload.i.i.i284, %i.ala
  %i.aly = lshr i64 %i.alx, 49                    ; 2 uses
  %i.alz = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.aly ; 2 uses
  %i.ama = load i16, ptr %i.alz, align 2, !tbaa !68, !noalias !1672 ; 2 uses
  %i.amb = zext i16 %i.ama to i32
  %i.amc = and i32 %i.alb, %i.amb
  %i.amd = zext nneg i32 %i.amc to i64
  %i.ame = shl i64 %i.aly, %i.ald
  %i.amf = add i16 %i.ama, 1
  store i16 %i.amf, ptr %i.alz, align 2, !tbaa !68, !noalias !1672
  %i.amg = trunc i64 %.0.i.i283723 to i32
  %i.amh = getelementptr [4 x i8], ptr %i.ba, i64 %i.ame
  %i.ami = getelementptr [4 x i8], ptr %i.amh, i64 %i.amd
  store i32 %i.amg, ptr %i.ami, align 4, !tbaa !3, !noalias !1672
  %i.amj = add nuw i64 %.0.i.i283723, 1           ; 2 uses
  %i.amk = and i64 %i.amj, %3
  %i.aml = getelementptr inbounds nuw i8, ptr %2, i64 %i.amk
  %.0.copyload.i.i.i284.1 = load i64, ptr %i.aml, align 1, !alias.scope !1669, !noalias !1673
  %i.amm = mul i64 %.0.copyload.i.i.i284.1, %i.ala
  %i.amn = lshr i64 %i.amm, 49                    ; 2 uses
  %i.amo = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.amn ; 2 uses
  %i.amp = load i16, ptr %i.amo, align 2, !tbaa !68, !noalias !1675 ; 2 uses
  %i.amq = zext i16 %i.amp to i32
  %i.amr = and i32 %i.alb, %i.amq
  %i.ams = zext nneg i32 %i.amr to i64
  %i.amt = shl i64 %i.amn, %i.ald
  %i.amu = add i16 %i.amp, 1
  store i16 %i.amu, ptr %i.amo, align 2, !tbaa !68, !noalias !1675
  %i.amv = trunc i64 %i.amj to i32
  %i.amw = getelementptr [4 x i8], ptr %i.ba, i64 %i.amt
  %i.amx = getelementptr [4 x i8], ptr %i.amw, i64 %i.ams
  store i32 %i.amv, ptr %i.amx, align 4, !tbaa !3, !noalias !1675
  %i.amy = add nuw i64 %.0.i.i283723, 2           ; 2 uses
  %exitcond807.not.1 = icmp eq i64 %i.amy, %i.aks
  br i1 %exitcond807.not.1, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, label %.lr.ph725.new, !llvm.loop !266

bb.er:                                            ; preds = %_ZN13duckdb_brotliL24FindLongestMatchHROLLINGEPNS_8HROLLINGEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.amz = add i64 %.0175728, 1                   ; 5 uses
  %i.ana = add i64 %.0178727, 1                   ; 9 uses
  %i.anb = icmp ugt i64 %i.ana, %.0173729
  br i1 %i.anb, label %bb.es, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

bb.es:                                            ; preds = %bb.er
  %i.anc = add i64 %.0173729, %i.bm
  %i.and = icmp ugt i64 %i.ana, %i.anc
  br i1 %i.and, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ane = add i64 %.0178727, 17
  %i.anf = tail call noundef i64 @llvm.umin.i64(i64 %i.ane, i64 %i.k) ; 2 uses
  %i.ang = icmp ult i64 %i.ana, %i.anf
  br i1 %i.ang, label %.lr.ph604, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph604:                                        ; preds = %bb.et
  %i.anh = load i32, ptr %i.be, align 8, !tbaa !202, !alias.scope !1676, !noalias !1681
  %i.ani = load i32, ptr %i.bc, align 4, !tbaa !200, !alias.scope !1676, !noalias !1681
  %i.anj = zext nneg i32 %i.ani to i64
  br label %bb.eu

bb.eu:                                            ; preds = %.lr.ph604, %bb.eu
  %.4602 = phi i64 [ %i.amz, %.lr.ph604 ], [ %i.any, %bb.eu ]
  %.4182601 = phi i64 [ %i.ana, %.lr.ph604 ], [ %i.anz, %bb.eu ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %i.ank = and i64 %.4182601, %3
  %i.anl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ank
  %.0.copyload.i.i.i286 = load i64, ptr %i.anl, align 1, !alias.scope !1687, !noalias !1676
  %i.anm = mul i64 %.0.copyload.i.i.i286, %i.fd
  %i.ann = lshr i64 %i.anm, 49                    ; 2 uses
  %i.ano = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ann ; 2 uses
  %i.anp = load i16, ptr %i.ano, align 2, !tbaa !68, !noalias !1690 ; 2 uses
  %i.anq = zext i16 %i.anp to i32
  %i.anr = and i32 %i.anh, %i.anq
  %i.ans = zext nneg i32 %i.anr to i64
  %i.ant = shl i64 %i.ann, %i.anj
  %i.anu = add i16 %i.anp, 1
  store i16 %i.anu, ptr %i.ano, align 2, !tbaa !68, !noalias !1690
  %i.anv = trunc i64 %.4182601 to i32
  %i.anw = getelementptr [4 x i8], ptr %i.ba, i64 %i.ant
  %i.anx = getelementptr [4 x i8], ptr %i.anw, i64 %i.ans
  store i32 %i.anv, ptr %i.anx, align 4, !tbaa !3, !noalias !1690
  %i.any = add i64 %.4602, 4                      ; 2 uses
  %i.anz = add i64 %.4182601, 4                   ; 3 uses
  %i.aoa = icmp ult i64 %i.anz, %i.anf
  br i1 %i.aoa, label %bb.eu, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, !llvm.loop !1691

bb.ev:                                            ; preds = %bb.es
  %i.aob = add i64 %.0178727, 9
  %i.aoc = tail call noundef i64 @llvm.umin.i64(i64 %i.aob, i64 %i.k) ; 2 uses
  %i.aod = icmp ult i64 %i.ana, %i.aoc
  br i1 %i.aod, label %.lr.ph598, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph598:                                        ; preds = %bb.ev
  %i.aoe = load i32, ptr %i.be, align 8, !tbaa !202, !alias.scope !1692, !noalias !1697
  %i.aof = load i32, ptr %i.bc, align 4, !tbaa !200, !alias.scope !1692, !noalias !1697
  %i.aog = zext nneg i32 %i.aof to i64
  br label %bb.ew

bb.ew:                                            ; preds = %.lr.ph598, %bb.ew
  %.5596 = phi i64 [ %i.amz, %.lr.ph598 ], [ %i.aov, %bb.ew ]
  %.5183595 = phi i64 [ %i.ana, %.lr.ph598 ], [ %i.aow, %bb.ew ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.aoh = and i64 %.5183595, %3
  %i.aoi = getelementptr inbounds nuw i8, ptr %2, i64 %i.aoh
  %.0.copyload.i.i.i285 = load i64, ptr %i.aoi, align 1, !alias.scope !1703, !noalias !1692
  %i.aoj = mul i64 %.0.copyload.i.i.i285, %i.fd
  %i.aok = lshr i64 %i.aoj, 49                    ; 2 uses
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.aok ; 2 uses
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !68, !noalias !1706 ; 2 uses
  %i.aon = zext i16 %i.aom to i32
  %i.aoo = and i32 %i.aoe, %i.aon
  %i.aop = zext nneg i32 %i.aoo to i64
  %i.aoq = shl i64 %i.aok, %i.aog
  %i.aor = add i16 %i.aom, 1
  store i16 %i.aor, ptr %i.aol, align 2, !tbaa !68, !noalias !1706
  %i.aos = trunc i64 %.5183595 to i32
  %i.aot = getelementptr [4 x i8], ptr %i.ba, i64 %i.aoq
  %i.aou = getelementptr [4 x i8], ptr %i.aot, i64 %i.aop
  store i32 %i.aos, ptr %i.aou, align 4, !tbaa !3, !noalias !1706
  %i.aov = add i64 %.5596, 2                      ; 2 uses
  %i.aow = add i64 %.5183595, 2                   ; 3 uses
  %i.aox = icmp ult i64 %i.aow, %i.aoc
  br i1 %i.aox, label %bb.ew, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, !llvm.loop !1707

_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit: ; preds = %bb.ew, %bb.eu, %.prol.loopexit, %.lr.ph725.new, %bb.ev, %bb.et, %bb.eq, %bb.er
  %.1186 = phi ptr [ %i.agu, %bb.eq ], [ %.0185726, %bb.er ], [ %.0185726, %bb.et ], [ %.0185726, %bb.ev ], [ %.0185726, %bb.eu ], [ %i.agu, %.prol.loopexit ], [ %i.agu, %.lr.ph725.new ], [ %.0185726, %bb.ew ] ; 2 uses
  %.6184 = phi i64 [ %i.akr, %bb.eq ], [ %i.ana, %bb.er ], [ %i.ana, %bb.et ], [ %i.ana, %bb.ev ], [ %i.anz, %bb.eu ], [ %i.akr, %.prol.loopexit ], [ %i.akr, %.lr.ph725.new ], [ %i.aow, %bb.ew ] ; 3 uses
  %.6 = phi i64 [ 0, %bb.eq ], [ %i.amz, %bb.er ], [ %i.amz, %bb.et ], [ %i.amz, %bb.ev ], [ %i.any, %bb.eu ], [ 0, %.prol.loopexit ], [ 0, %.lr.ph725.new ], [ %i.aov, %bb.ew ] ; 2 uses
  %.1174 = phi i64 [ %i.afc, %bb.eq ], [ %.0173729, %bb.er ], [ %.0173729, %bb.et ], [ %.0173729, %bb.ev ], [ %.0173729, %bb.eu ], [ %i.afc, %.prol.loopexit ], [ %i.afc, %.lr.ph725.new ], [ %.0173729, %bb.ew ]
  %i.aoy = add i64 %.6184, 8
  %i.aoz = icmp ult i64 %i.aoy, %i.i
  br i1 %i.aoz, label %bb.d, label %._crit_edge731, !llvm.loop !1708

._crit_edge731:                                   ; preds = %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit200
  %.0185.lcssa = phi ptr [ %9, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit200 ], [ %.1186, %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit ]
  %.0178.lcssa = phi i64 [ %1, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit200 ], [ %.6184, %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit ]
  %.0175.lcssa = phi i64 [ %i.h, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit200 ], [ %.6, %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit ]
  %i.apa = sub i64 %i.i, %.0178.lcssa
  %i.apb = add i64 %i.apa, %.0175.lcssa
  store i64 %i.apb, ptr %8, align 8, !tbaa !30
  %i.apc = ptrtoint ptr %.0185.lcssa to i64
  %i.apd = ptrtoint ptr %9 to i64
  %i.ape = sub i64 %i.apc, %i.apd
  %i.apf = ashr exact i64 %i.ape, 4
  %i.apg = load i64, ptr %10, align 8, !tbaa !30
  %i.aph = add i64 %i.apg, %i.apf
  store i64 %i.aph, ptr %10, align 8, !tbaa !30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 88}
!8 = !{!"_ZTS19BrotliEncoderParams", !9, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !10, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !11, i64 40, !12, i64 56, !13, i64 80}
!9 = !{!"_ZTS17BrotliEncoderMode", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"_ZTS18BrotliHasherParams", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!12 = !{!"_ZTS20BrotliDistanceParams", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !10, i64 16}
!13 = !{!"_ZTSN13duckdb_brotli23SharedEncoderDictionaryE", !4, i64 0, !14, i64 8, !15, i64 544, !4, i64 1312}
!14 = !{!"_ZTSN13duckdb_brotli18CompoundDictionaryE", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 144, !5, i64 272, !10, i64 400, !5, i64 408}
!15 = !{!"_ZTSN13duckdb_brotli27ContextualEncoderDictionaryE", !4, i64 0, !5, i64 4, !5, i64 5, !5, i64 72, !10, i64 584, !16, i64 592, !26, i64 760}
!16 = !{!"_ZTSN13duckdb_brotli23BrotliEncoderDictionaryE", !17, i64 0, !4, i64 8, !4, i64 12, !10, i64 16, !19, i64 24, !20, i64 32, !19, i64 40, !21, i64 48, !22, i64 56, !4, i64 96, !25, i64 104, !19, i64 112, !20, i64 120, !10, i64 128, !19, i64 136, !10, i64 144, !21, i64 152, !17, i64 160}
!17 = !{!"p1 _ZTSN13duckdb_brotli16BrotliDictionaryE", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 short", !18, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!"p1 _ZTSN13duckdb_brotli8DictWordE", !18, i64 0}
!22 = !{!"_ZTSN13duckdb_brotli10BrotliTrieE", !23, i64 0, !10, i64 8, !10, i64 16, !24, i64 24}
!23 = !{!"p1 _ZTSN13duckdb_brotli14BrotliTrieNodeE", !18, i64 0}
!24 = !{!"_ZTSN13duckdb_brotli14BrotliTrieNodeE", !5, i64 0, !5, i64 1, !5, i64 2, !4, i64 4, !4, i64 8}
!25 = !{!"p1 _ZTSN13duckdb_brotli27ContextualEncoderDictionaryE", !18, i64 0}
!26 = !{!"p1 _ZTSN13duckdb_brotli23BrotliEncoderDictionaryE", !18, i64 0}
!27 = !{!8, !4, i64 40}
!28 = !{!8, !4, i64 8}
!29 = !{!8, !10, i64 16}
!30 = !{!10, !10, i64 0}
!31 = !{!8, !4, i64 4}
!32 = !{!8, !10, i64 96}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH5EPNS_2H5EPi: argument 0"}
!35 = distinct !{!35, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH5EPNS_2H5EPi"}
!36 = !{!37, !4, i64 28}
!37 = !{!"_ZTSN13duckdb_brotli2H5E", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !18, i64 32, !19, i64 40, !38, i64 48}
!38 = !{!"p1 int", !18, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !35, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH5EPNS_2H5EPi: argument 1"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN13duckdb_brotliL20PrepareDistanceCacheEPii: argument 0"}
!43 = distinct !{!43, !"_ZN13duckdb_brotliL20PrepareDistanceCacheEPii"}
!44 = !{!37, !19, i64 40}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 0"}
!47 = distinct !{!47, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE"}
!48 = !{!49, !50, !51}
!49 = distinct !{!49, !47, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 1"}
!50 = distinct !{!50, !47, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 2"}
!51 = distinct !{!51, !47, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 3"}
!52 = !{!37, !38, i64 48}
!53 = !{!8, !4, i64 624}
!54 = !{!5, !5, i64 0}
!55 = !{!26, !26, i64 0}
!56 = !{!8, !10, i64 72}
!57 = !{!49}
!58 = !{!50}
!59 = !{!46, !49, !51}
!60 = !{!"branch_weights", i32 2002, i32 2000}
!61 = !{!46, !50, !51}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = !{!37, !4, i64 16}
!67 = !{!37, !4, i64 24}
!68 = !{!69, !69, i64 0}
!69 = !{!"short", !5, i64 0}
!70 = !{!37, !10, i64 8}
!71 = !{!37, !4, i64 20}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = distinct !{!73, !63}
!74 = !{!37, !18, i64 32}
!75 = !{!76, !10, i64 48}
!76 = !{!"_ZTSN13duckdb_brotli12HasherCommonE", !5, i64 0, !4, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !4, i64 72}
!77 = !{!46, !50}
!78 = !{!76, !10, i64 40}
!79 = !{!16, !20, i64 32}
!80 = !{!16, !19, i64 24}
!81 = !{!16, !17, i64 0}
!82 = !{!83, !20, i64 168}
!83 = !{!"_ZTSN13duckdb_brotli16BrotliDictionaryE", !5, i64 0, !5, i64 32, !10, i64 160, !20, i64 168}
!84 = !{!16, !4, i64 12}
!85 = !{!16, !10, i64 16}
!86 = !{!14, !10, i64 8}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 0"}
!89 = distinct !{!89, !"_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE"}
!90 = distinct !{!90, !89, !"_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 1"}
!91 = !{!14, !10, i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 0"}
!94 = distinct !{!94, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 1"}
!97 = distinct !{!97, !94, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 2"}
!98 = !{!96}
!99 = !{!93, !97}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 _ZTSN13duckdb_brotli18PreparedDictionaryE", !18, i64 0}
!102 = !{!103, !4, i64 8}
!103 = !{!"_ZTSN13duckdb_brotli18PreparedDictionaryE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!104 = !{!93, !96, !97}
!105 = !{!103, !4, i64 12}
!106 = !{!103, !4, i64 16}
!107 = !{!103, !4, i64 20}
!108 = !{!103, !4, i64 4}
!109 = !{!103, !4, i64 0}
!110 = distinct !{!110, !63}
!111 = distinct !{!111, !63}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 0"}
!114 = distinct !{!114, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE"}
!115 = !{!116, !117, !118}
!116 = distinct !{!116, !114, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 1"}
!117 = distinct !{!117, !114, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 2"}
!118 = distinct !{!118, !114, !"_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 3"}
!119 = !{!116}
!120 = !{!117}
!121 = !{!113, !116, !118}
!122 = !{!113, !117, !118}
!123 = !{!113, !117}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 0"}
!126 = distinct !{!126, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE"}
!127 = !{!128, !129}
!128 = distinct !{!128, !126, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 1"}
!129 = distinct !{!129, !126, !"_ZN13duckdb_brotliL27FindCompoundDictionaryMatchEPKNS_18PreparedDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 2"}
!130 = !{!128}
!131 = !{!125, !129}
!132 = !{!133, !135}
!133 = distinct !{!133, !134, !"_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 0"}
!134 = distinct !{!134, !"_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE"}
!135 = distinct !{!135, !134, !"_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE: argument 1"}
!136 = !{!125, !128, !129}
!137 = distinct !{!137, !63}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH5EPNS_2H5EPi: argument 0"}
!140 = distinct !{!140, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH5EPNS_2H5EPi"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH5EPNS_2H5EPi: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN13duckdb_brotliL20PrepareDistanceCacheEPii: argument 0"}
!145 = distinct !{!145, !"_ZN13duckdb_brotliL20PrepareDistanceCacheEPii"}
!146 = !{!147, !4, i64 0}
!147 = !{!"_ZTSN13duckdb_brotli7CommandE", !4, i64 0, !4, i64 4, !4, i64 8, !69, i64 12, !69, i64 14}
!148 = !{!147, !4, i64 4}
!149 = !{!12, !4, i64 4}
!150 = !{!12, !4, i64 0}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm: argument 0"}
!153 = distinct !{!153, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm: argument 1"}
!156 = !{!157}
!157 = distinct !{!157, !153, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm: argument 0:It1"}
!158 = distinct !{!158, !63}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm: argument 0"}
!161 = distinct !{!161, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm"}
!162 = !{!163}
!163 = distinct !{!163, !161, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm: argument 1"}
!164 = distinct !{!164, !63}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm: argument 0"}
!167 = distinct !{!167, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"_ZN13duckdb_brotliL7StoreH5EPNS_2H5EPKhmm: argument 1"}
!170 = distinct !{!170, !63}
!171 = distinct !{!171, !63}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi: argument 0"}
!174 = distinct !{!174, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi: argument 1"}
!177 = !{!178, !4, i64 32}
!178 = !{!"_ZTSN13duckdb_brotli2H6E", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !18, i64 40, !19, i64 48, !38, i64 56}
!179 = !{!180, !176}
!180 = distinct !{!180, !181, !"_ZN13duckdb_brotliL20PrepareDistanceCacheEPii: argument 0"}
!181 = distinct !{!181, !"_ZN13duckdb_brotliL20PrepareDistanceCacheEPii"}
!182 = !{!178, !19, i64 48}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 0"}
!185 = distinct !{!185, !"_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE"}
!186 = !{!187, !188, !189}
!187 = distinct !{!187, !185, !"_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 1"}
!188 = distinct !{!188, !185, !"_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 2"}
!189 = distinct !{!189, !185, !"_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE: argument 3"}
!190 = !{!178, !38, i64 56}
!191 = !{!187}
!192 = !{!188}
!193 = !{!184, !187, !189}
!194 = !{!184, !188, !189}
end_hunk_15
