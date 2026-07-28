inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a

bb.ar:                                            ; preds = %_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit414
  %notmask.i422 = shl nsw i64 -1, %i.hl
  %i.hn = xor i64 %notmask.i422, -1
  %i.ho = load i64, ptr %i.c, align 8, !tbaa !54
  %i.hp = and i64 %i.ho, %i.hn
  store i64 %i.hp, ptr %i.c, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit: ; preds = %_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit414, %bb.ar
  br i1 %.0489, label %.backedge.backedge, label %bb.as

bb.as:                                            ; preds = %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit
  br i1 %.not383, label %.thread510, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 12, ptr %0, align 8, !tbaa !7
  %i.hq = load ptr, ptr %i.bv, align 8, !tbaa !60 ; 2 uses
  %.not392 = icmp eq ptr %i.hq, null
  br i1 %.not392, label %.backedge.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hr = load ptr, ptr %i.bw, align 8, !tbaa !61
  %i.hs = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.ht = sext i32 %i.hs to i64
  call void %i.hq(ptr noundef %i.hr, i64 noundef %i.ht)
  br label %.backedge.backedge

.thread510:                                       ; preds = %bb.ap, %bb.as
  %i.hu = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread510
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.aw:                                            ; preds = %.thread510
  call fastcc void @_ZN13duckdb_brotliL29BrotliCalculateRingBufferSizeEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %i.hw = load i32, ptr %i.aj, align 4
  %i.hx = and i32 %i.hw, 2
  %.not387 = icmp eq i32 %i.hx, 0
  br i1 %.not387, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 11, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.aw, %bb.v
  store i32 0, ptr %i.aq, align 4, !tbaa !56
  store i64 0, ptr %i.bx, align 8, !tbaa !63
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !68
  store i32 0, ptr %i.ca, align 8, !tbaa !69
  store i32 0, ptr %i.bh, align 8, !tbaa !70
  store i32 0, ptr %i.cb, align 4, !tbaa !71
  store i32 18, ptr %0, align 8, !tbaa !7
  br label %bb.ba

bb.ay:                                            ; preds = %bb.v
  %.pre658 = load i32, ptr %i.aq, align 4, !tbaa !56 ; 2 uses
  %i.hy = icmp sgt i32 %.pre658, 2
  br i1 %i.hy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 5, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.ba:                                            ; preds = %.thread, %bb.ay
  %i.hz = phi i32 [ 0, %.thread ], [ %.pre658, %bb.ay ]
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ia
  %i.ic = call fastcc noundef i32 @_ZN13duckdb_brotliL17DecodeVarLenUint8EPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPm(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ib) ; 2 uses
  %.not388 = icmp eq i32 %i.ic, 1
  br i1 %.not388, label %bb.bb, label %.backedge.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.id = load i32, ptr %i.aq, align 4, !tbaa !56 ; 3 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ih = add i64 %i.ig, 1                        ; 3 uses
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !32
  %i.ii = icmp ult i64 %i.ih, 2
  br i1 %i.ii, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ij = add nsw i32 %i.id, 1
  store i32 %i.ij, ptr %i.aq, align 4, !tbaa !56
  br label %.backedge.backedge

bb.bd:                                            ; preds = %bb.bb
  store i32 19, ptr %0, align 8, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge659, %bb.bd
  %i.ik = phi i64 [ %.pre662, %._crit_edge659 ], [ %i.ih, %bb.bd ]
  %i.il = phi i32 [ %.pre660, %._crit_edge659 ], [ %i.id, %bb.bd ]
  %i.im = add i64 %i.ik, 2                        ; 2 uses
  %i.in = mul nsw i32 %i.il, 632
  %i.io = load ptr, ptr %i.bt, align 8, !tbaa !58
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ip
  %i.ir = call fastcc noundef i32 @_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE(i64 noundef %i.im, i64 noundef %i.im, ptr noundef %i.iq, ptr noundef null, ptr noundef nonnull %0) ; 2 uses
  %.not389 = icmp eq i32 %i.ir, 1
  br i1 %.not389, label %.thread511, label %.backedge.backedge

.thread511:                                       ; preds = %bb.be
  store i32 20, ptr %0, align 8, !tbaa !7
  br label %bb.bf

bb.bf:                                            ; preds = %.thread511, %bb.v
  %i.is = load i32, ptr %i.aq, align 4, !tbaa !56
  %i.it = mul nsw i32 %i.is, 396
  %i.iu = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.iv = sext i32 %i.it to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = call fastcc noundef i32 @_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE(i64 noundef 26, i64 noundef 26, ptr noundef %i.iw, ptr noundef null, ptr noundef nonnull %0) ; 2 uses
  %.not390 = icmp eq i32 %i.ix, 1
  br i1 %.not390, label %.thread513, label %.backedge.backedge

.thread513:                                       ; preds = %bb.bf
  store i32 21, ptr %0, align 8, !tbaa !7
  br label %bb.bg

bb.bg:                                            ; preds = %.thread513, %bb.v
  %i.iy = load i32, ptr %i.aq, align 4, !tbaa !56 ; 2 uses
  %i.iz = mul nsw i32 %i.iy, 396
  %i.ja = sext i32 %i.iy to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ja
  %i.jc = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.jd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.jf = load i32, ptr %i.cd, align 4, !tbaa !72
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %.preheader, label %bb.bi

.preheader:                                       ; preds = %bb.bg
  %.promoted618 = load i64, ptr %i.ak, align 8, !tbaa !53 ; 6 uses
  %i.jh = icmp ult i64 %.promoted618, 15
  br i1 %i.jh, label %.lr.ph619, label %.preheader.._crit_edge620_crit_edge

.preheader.._crit_edge620_crit_edge:              ; preds = %.preheader
  %.pre663 = load i64, ptr %i.c, align 8, !tbaa !54
  br label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader
  %i.ji = load ptr, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %.promoted622 = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 4 uses
  %i.jj = icmp eq ptr %.promoted622, %i.ji
  br i1 %i.jj, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i: ; preds = %.lr.ph619
  %i.jk = load i64, ptr %i.c, align 8, !tbaa !54
  %i.jl = load i8, ptr %.promoted622, align 1, !tbaa !51
  %i.jm = zext i8 %i.jl to i64
  %i.jn = shl nuw nsw i64 %i.jm, %.promoted618
  %i.jo = or i64 %i.jn, %i.jk                     ; 2 uses
  store i64 %i.jo, ptr %i.c, align 8, !tbaa !54
  %i.jp = add nuw nsw i64 %.promoted618, 8        ; 3 uses
  store i64 %i.jp, ptr %i.ak, align 8, !tbaa !53
  %i.jq = getelementptr inbounds nuw i8, ptr %.promoted622, i64 1 ; 3 uses
  store ptr %i.jq, ptr %i.ae, align 8, !tbaa !47
  %i.jr = icmp ult i64 %.promoted618, 7
  br i1 %i.jr, label %bb.bh, label %._crit_edge620

bb.bh:                                            ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i
  %i.js = icmp eq ptr %i.jq, %i.ji
  br i1 %i.js, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1: ; preds = %bb.bh
  %i.jt = load i64, ptr %i.c, align 8, !tbaa !54
  %i.ju = load i8, ptr %i.jq, align 1, !tbaa !51
  %i.jv = zext i8 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, %i.jp
  %i.jx = or i64 %i.jw, %i.jt                     ; 2 uses
  store i64 %i.jx, ptr %i.c, align 8, !tbaa !54
  %i.jy = or disjoint i64 %.promoted618, 16       ; 2 uses
  store i64 %i.jy, ptr %i.ak, align 8, !tbaa !53
  %i.jz = getelementptr inbounds nuw i8, ptr %.promoted622, i64 2
  store ptr %i.jz, ptr %i.ae, align 8, !tbaa !47
  br label %._crit_edge620

._crit_edge620:                                   ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1, %.preheader.._crit_edge620_crit_edge
  %i.ka = phi i64 [ %.promoted618, %.preheader.._crit_edge620_crit_edge ], [ %i.jp, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ], [ %i.jy, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1 ] ; 2 uses
  %i.kb = phi i64 [ %.pre663, %.preheader.._crit_edge620_crit_edge ], [ %i.jo, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ], [ %i.jx, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1 ] ; 3 uses
  %i.kc = and i64 %i.kb, 255
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.kc ; 4 uses
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !73  ; 3 uses
  %i.kf = icmp ugt i8 %i.ke, 8
  br i1 %i.kf, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i:             ; preds = %._crit_edge620
  %i.kg = add i64 %i.ka, -8
  %i.kh = lshr i64 %i.kb, 8                       ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !75
  %i.kk = zext i16 %i.kj to i64
  %i.kl = and i64 %i.kh, 127
  %i.km = zext i8 %i.ke to i64
  %6 = add nuw nsw i64 %i.km, 4294967288
  %7 = and i64 %6, 4294967295
  %8 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %7
  %i.kn = load i64, ptr %8, align 8, !tbaa !32
  %i.ko = and i64 %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kk ; 2 uses
  %.pre664 = load i8, ptr %i.kq, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i, %._crit_edge620
  %i.kr = phi i64 [ %i.kh, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.kb, %._crit_edge620 ]
  %i.ks = phi i64 [ %i.kg, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.ka, %._crit_edge620 ]
  %i.kt = phi i8 [ %.pre664, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.ke, %._crit_edge620 ]
  %.0.i445 = phi ptr [ %i.kq, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.kd, %._crit_edge620 ]
  %i.ku = zext i8 %i.kt to i64                    ; 2 uses
  %i.kv = sub i64 %i.ks, %i.ku
  store i64 %i.kv, ptr %i.ak, align 8, !tbaa !53
  %i.kw = lshr i64 %i.kr, %i.ku
  store i64 %i.kw, ptr %i.c, align 8, !tbaa !54
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i445, i64 2
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !75
  %i.kz = zext i16 %i.ky to i64
  br label %bb.bj

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit: ; preds = %bb.bh, %.lr.ph619
  %i.la = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef %i.je, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  %.not.i416 = icmp eq i32 %i.la, 0
  br i1 %.not.i416, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit._crit_edge

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit._crit_edge: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit
  %.pre665 = load i64, ptr %i.b, align 8, !tbaa !32
  br label %bb.bj

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.backedge.backedge

bb.bi:                                            ; preds = %bb.bg
  %i.lb = load i64, ptr %i.ce, align 8, !tbaa !76
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit._crit_edge, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread, %bb.bi
  %i.lc = phi i64 [ %.pre665, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit._crit_edge ], [ %i.kz, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread ], [ %i.lb, %bb.bi ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lf = load i8, ptr %i.le, align 2, !tbaa !77
  %i.lg = zext i8 %i.lf to i64                    ; 5 uses
  %i.lh = load i16, ptr %i.ld, align 4, !tbaa !79
  %.promoted623 = load i64, ptr %i.ak, align 8, !tbaa !53 ; 3 uses
  %i.li = icmp ult i64 %.promoted623, %i.lg
  br i1 %i.li, label %.lr.ph625, label %.._crit_edge626_crit_edge

.._crit_edge626_crit_edge:                        ; preds = %bb.bj
  %.pre666 = load i64, ptr %i.c, align 8, !tbaa !54
  br label %._crit_edge626

.lr.ph625:                                        ; preds = %bb.bj
  %i.lj = load ptr, ptr %i.af, align 8, !tbaa !48
  %.promoted629 = load ptr, ptr %i.ae, align 8, !tbaa !47
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph625, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit
  %i.lk = phi ptr [ %.promoted629, %.lr.ph625 ], [ %i.lt, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit ] ; 3 uses
  %i.ll = phi i64 [ %.promoted623, %.lr.ph625 ], [ %i.ls, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit ] ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.lj
  br i1 %i.lm, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread536, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit: ; preds = %bb.bk
  %i.ln = load i64, ptr %i.c, align 8, !tbaa !54
  %i.lo = load i8, ptr %i.lk, align 1, !tbaa !51
  %i.lp = zext i8 %i.lo to i64
  %i.lq = shl i64 %i.lp, %i.ll
  %i.lr = or i64 %i.lq, %i.ln                     ; 2 uses
  store i64 %i.lr, ptr %i.c, align 8, !tbaa !54
  %i.ls = add nuw nsw i64 %i.ll, 8                ; 4 uses
  store i64 %i.ls, ptr %i.ak, align 8, !tbaa !53
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 2 uses
  store ptr %i.lt, ptr %i.ae, align 8, !tbaa !47
  %i.lu = icmp ult i64 %i.ls, %i.lg
  br i1 %i.lu, label %bb.bk, label %._crit_edge626, !llvm.loop !80

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread536: ; preds = %bb.bk
  store i64 %i.lc, ptr %i.ce, align 8, !tbaa !76
  store i32 1, ptr %i.cd, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.backedge.backedge

._crit_edge626:                                   ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit, %.._crit_edge626_crit_edge
  %i.lv = phi i64 [ %.pre666, %.._crit_edge626_crit_edge ], [ %i.lr, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit ] ; 2 uses
  %.lcssa596 = phi i64 [ %.promoted623, %.._crit_edge626_crit_edge ], [ %i.ls, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit ]
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.lg
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !32
  %i.ly = and i64 %i.lx, %i.lv
  %i.lz = sub i64 %.lcssa596, %i.lg
  store i64 %i.lz, ptr %i.ak, align 8, !tbaa !53
  %i.ma = lshr i64 %i.lv, %i.lg
  store i64 %i.ma, ptr %i.c, align 8, !tbaa !54
  %i.mb = zext i16 %i.lh to i64
  %i.mc = add i64 %i.ly, %i.mb
  store i64 %i.mc, ptr %i.jb, align 8, !tbaa !32
  store i32 0, ptr %i.cd, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.md = load i32, ptr %i.aq, align 4, !tbaa !56
  %i.me = add nsw i32 %i.md, 1
  store i32 %i.me, ptr %i.aq, align 4, !tbaa !56
  store i32 18, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.bl:                                            ; preds = %bb.v
  %i.mf = call fastcc noundef i32 @_ZN13duckdb_brotliL29CopyUncompressedBlockToOutputEPmPPhS0_PNS_24BrotliDecoderStateStructE(ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, ptr noundef nonnull %0) ; 2 uses
  %.not380 = icmp eq i32 %i.mf, 1
  br i1 %.not380, label %bb.bm, label %.backedge.backedge

bb.bm:                                            ; preds = %bb.bl
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.bn:                                            ; preds = %bb.v
  %i.mg = call fastcc noundef i32 @_ZN13duckdb_brotliL17SkipMetadataBlockEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %.not379 = icmp eq i32 %i.mg, 1
  br i1 %.not379, label %bb.bo, label %.backedge.backedge

bb.bo:                                            ; preds = %bb.bn
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit440: ; preds = %.lr.ph
  %i.mh = load i64, ptr %i.c, align 8, !tbaa !54
  %i.mi = load i8, ptr %.promoted606, align 1, !tbaa !51
  %i.mj = zext i8 %i.mi to i64
  %i.mk = shl nuw nsw i64 %i.mj, %.promoted
  %i.ml = or i64 %i.mk, %i.mh
  %i.mm = or disjoint i64 %.promoted, 8
  %i.mn = getelementptr inbounds nuw i8, ptr %.promoted606, i64 1
  store ptr %i.mn, ptr %i.ae, align 8, !tbaa !47
  br label %bb.bp

bb.bp:                                            ; preds = %.preheader579._crit_edge, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit440
  %i.mo = phi i64 [ %i.ml, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit440 ], [ %.pre, %.preheader579._crit_edge ] ; 3 uses
  %.lcssa = phi i64 [ %i.mm, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit440 ], [ %.promoted, %.preheader579._crit_edge ]
  %i.mp = add i64 %.lcssa, -6
  store i64 %i.mp, ptr %i.ak, align 8, !tbaa !53
  %i.mq = lshr i64 %i.mo, 6
  store i64 %i.mq, ptr %i.c, align 8, !tbaa !54
  %i.mr = and i64 %i.mo, 3                        ; 2 uses
  store i64 %i.mr, ptr %i.ar, align 8, !tbaa !81
  %i.ms = lshr i64 %i.mo, 2
  %i.mt = and i64 %i.ms, 15
  %i.mu = shl nuw nsw i64 %i.mt, %i.mr
  store i64 %i.mu, ptr %i.as, align 8, !tbaa !82
  %i.mv = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.mw = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.mx = load i64, ptr %i.av, align 8, !tbaa !32
  %i.my = call noundef ptr %i.mv(ptr noundef %i.mw, i64 noundef %i.mx) ; 2 uses
  store ptr %i.my, ptr %i.aw, align 8, !tbaa !83
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %.backedge.backedge, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.aq, align 4, !tbaa !56
  store i32 6, ptr %0, align 8, !tbaa !7
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge, %bb.bq
  %i.na = phi i32 [ %.pre648, %._crit_edge ], [ 0, %bb.bq ] ; 2 uses
  %i.nb = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = icmp slt i32 %i.na, %i.nc
  br i1 %i.nd, label %.preheader.lr.ph.i, label %.loopexit578

.preheader.lr.ph.i:                               ; preds = %bb.br
  %i.ne = sext i32 %i.na to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bs, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ne, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %bb.bs ] ; 3 uses
  %.promoted.i = load i64, ptr %i.ak, align 8, !tbaa !53 ; 4 uses
  %i.nf = icmp ult i64 %.promoted.i, 2
  br i1 %i.nf, label %.lr.ph.i, label %.preheader._crit_edge.i

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !54
  br label %bb.bs

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ng = load ptr, ptr %i.af, align 8, !tbaa !48
  %.promoted33.i = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  %i.nh = icmp eq ptr %.promoted33.i, %i.ng
  br i1 %i.nh, label %_ZN13duckdb_brotliL16ReadContextModesEPNS_24BrotliDecoderStateStructE.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i: ; preds = %.lr.ph.i
  %i.ni = load i64, ptr %i.c, align 8, !tbaa !54
  %i.nj = load i8, ptr %.promoted33.i, align 1, !tbaa !51
  %i.nk = zext i8 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, %.promoted.i
  %i.nm = or i64 %i.nl, %i.ni
  %i.nn = or disjoint i64 %.promoted.i, 8
  %i.no = getelementptr inbounds nuw i8, ptr %.promoted33.i, i64 1
  store ptr %i.no, ptr %i.ae, align 8, !tbaa !47
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i, %.preheader._crit_edge.i
  %i.np = phi i64 [ %i.nm, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ], [ %.pre.i, %.preheader._crit_edge.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotliL16DecodeContextMapEmPmPPhPNS_24BrotliDecoderStateStructE:bb.a
  %.pre215 = load i64, ptr %.phi.trans.insert214, align 8, !tbaa !161
  br label %bb.i

._crit_edge211:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 2688
  %.pre212 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !162
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i32 @_ZN13duckdb_brotliL17DecodeVarLenUint8EPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPm(ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %1, align 8, !tbaa !32
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %1, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2680
  store i64 0, ptr %i.h, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = tail call noundef ptr %i.j(ptr noundef %i.l, i64 noundef %0) ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !31
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !32
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %0, i1 false)
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %i.c, align 4, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.q, align 8, !tbaa !53 ; 4 uses
  %i.r = icmp ult i64 %.promoted, 5
  br i1 %i.r, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %.pre = load i64, ptr %i.b, align 8, !tbaa !54
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  %.promoted177 = load ptr, ptr %i.s, align 8, !tbaa !47 ; 3 uses
  %i.v = icmp eq ptr %.promoted177, %i.u
  br i1 %i.v, label %.critedge, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i: ; preds = %.lr.ph
  %i.w = load i64, ptr %i.b, align 8, !tbaa !54
  %i.x = load i8, ptr %.promoted177, align 1, !tbaa !51
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, %.promoted
  %i.aa = or i64 %i.z, %i.w
  %i.ab = or disjoint i64 %.promoted, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted177, i64 1
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i
  %i.ad = phi i64 [ %.promoted, %.._crit_edge_crit_edge ], [ %i.ab, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ]
  %i.ae = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.aa, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 3 uses
  %i.af = and i64 %i.ae, 1
  %.not90 = icmp eq i64 %i.af, 0                  ; 3 uses
  %i.ag = lshr i64 %i.ae, 1
  %i.ah = and i64 %i.ag, 15
  %i.ai = add nuw nsw i64 %i.ah, 1
  %.sink245 = select i1 %.not90, i64 -1, i64 -5
  %.sink244 = select i1 %.not90, i64 1, i64 5
  %.sink210 = select i1 %.not90, i64 0, i64 %i.ai ; 2 uses
  %i.aj = add i64 %i.ad, %.sink245
  %i.ak = lshr i64 %i.ae, %.sink244
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2688
  store i64 %.sink210, ptr %i.al, align 8, !tbaa !162
  store i64 %i.aj, ptr %i.q, align 8, !tbaa !53
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !54
  store i32 2, ptr %i.c, align 4, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge211, %._crit_edge
  %i.am = phi i64 [ %.pre212, %._crit_edge211 ], [ %.sink210, %._crit_edge ]
  %i.an = load i64, ptr %1, align 8, !tbaa !32
  %i.ao = add i64 %i.am, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2704
  %i.aq = tail call fastcc noundef i32 @_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE(i64 noundef %i.ao, i64 noundef %i.ao, ptr noundef nonnull %i.ap, ptr noundef null, ptr noundef nonnull %3) ; 2 uses
  %.not91 = icmp eq i32 %i.aq, 1
  br i1 %.not91, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 2696
  store i64 65535, ptr %i.ar, align 8, !tbaa !161
  store i32 3, ptr %i.c, align 4, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge213, %.thread
  %i.as = phi i64 [ %.pre215, %._crit_edge213 ], [ 65535, %.thread ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2680 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !163 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 2688
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !162 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !31    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 2696
  store i64 %i.as, ptr %i.a, align 8, !tbaa !32
  %i.az = icmp ne i64 %i.as, 65535                ; 2 uses
  %i.ba = icmp ult i64 %i.au, %0
  %i.bb = select i1 %i.ba, i1 true, i1 %i.az
  br i1 %i.bb, label %.lr.ph194, label %.thread152

.lr.ph194:                                        ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 2704 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %bb.j

.thread152:                                       ; preds = %.backedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.s

bb.j:                                             ; preds = %.lr.ph194, %.backedge
  %i.bg = phi i64 [ %i.as, %.lr.ph194 ], [ %i.df, %.backedge ]
  %.0192 = phi i1 [ %i.az, %.lr.ph194 ], [ false, %.backedge ]
  %.077191 = phi i64 [ %i.au, %.lr.ph194 ], [ %.077.be, %.backedge ] ; 7 uses
  %.promoted184.pre219 = load i64, ptr %i.bd, align 8, !tbaa !53 ; 7 uses
  br i1 %.0192, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp ult i64 %.promoted184.pre219, 15
  br i1 %i.bh, label %.lr.ph180, label %.._crit_edge181_crit_edge

.._crit_edge181_crit_edge:                        ; preds = %bb.k
  %.pre216 = load i64, ptr %i.b, align 8, !tbaa !54
  br label %._crit_edge181

.lr.ph180:                                        ; preds = %bb.k
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !48 ; 2 uses
  %.promoted183 = load ptr, ptr %i.be, align 8, !tbaa !47 ; 4 uses
  %i.bj = icmp eq ptr %.promoted183, %i.bi
  br i1 %i.bj, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i: ; preds = %.lr.ph180
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !54
  %i.bl = load i8, ptr %.promoted183, align 1, !tbaa !51
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, %.promoted184.pre219
  %i.bo = or i64 %i.bn, %i.bk                     ; 2 uses
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !54
  %i.bp = add nuw nsw i64 %.promoted184.pre219, 8 ; 3 uses
  store i64 %i.bp, ptr %i.bd, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %.promoted183, i64 1 ; 3 uses
  store ptr %i.bq, ptr %i.be, align 8, !tbaa !47
  %i.br = icmp ult i64 %.promoted184.pre219, 7
  br i1 %i.br, label %bb.l, label %._crit_edge181

bb.l:                                             ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i
  %i.bs = icmp eq ptr %i.bq, %i.bi
  br i1 %i.bs, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1: ; preds = %bb.l
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !54
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !51
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, %i.bp
  %i.bx = or i64 %i.bw, %i.bt                     ; 2 uses
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !54
  %i.by = or disjoint i64 %.promoted184.pre219, 16 ; 2 uses
  store i64 %i.by, ptr %i.bd, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %.promoted183, i64 2
  store ptr %i.bz, ptr %i.be, align 8, !tbaa !47
  br label %._crit_edge181

._crit_edge181:                                   ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1, %.._crit_edge181_crit_edge
  %i.ca = phi i64 [ %.promoted184.pre219, %.._crit_edge181_crit_edge ], [ %i.bp, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ], [ %i.by, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1 ] ; 2 uses
  %i.cb = phi i64 [ %.pre216, %.._crit_edge181_crit_edge ], [ %i.bo, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ], [ %i.bx, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.1 ] ; 3 uses
  %i.cc = and i64 %i.cb, 255
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cc ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !73  ; 3 uses
  %i.cf = icmp ugt i8 %i.ce, 8
  br i1 %i.cf, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i:             ; preds = %._crit_edge181
  %i.cg = add i64 %i.ca, -8
  %i.ch = lshr i64 %i.cb, 8                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !75
  %i.ck = zext i16 %i.cj to i64
  %i.cl = and i64 %i.ch, 127
  %i.cm = zext i8 %i.ce to i64
  %4 = add nuw nsw i64 %i.cm, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.cn = load i64, ptr %6, align 8, !tbaa !32
  %i.co = and i64 %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ck ; 2 uses
  %.pre217 = load i8, ptr %i.cq, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i, %._crit_edge181
  %i.cr = phi i64 [ %i.ch, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.cb, %._crit_edge181 ]
  %i.cs = phi i64 [ %i.cg, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.ca, %._crit_edge181 ]
  %i.ct = phi i8 [ %.pre217, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.ce, %._crit_edge181 ]
  %.0.i110 = phi ptr [ %i.cq, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ], [ %i.cd, %._crit_edge181 ]
  %i.cu = zext i8 %i.ct to i64                    ; 2 uses
  %i.cv = sub i64 %i.cs, %i.cu
  store i64 %i.cv, ptr %i.bd, align 8, !tbaa !53
  %i.cw = lshr i64 %i.cr, %i.cu
  store i64 %i.cw, ptr %i.b, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i110, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !75
  %i.cz = zext i16 %i.cy to i64                   ; 2 uses
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !32
  br label %bb.m

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit: ; preds = %bb.l, %.lr.ph180
  %i.da = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not92 = icmp eq i32 %i.da, 0
  br i1 %.not92, label %.thread147.sink.split, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit
  %.pr = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread
  %i.db = phi i64 [ %.pr, %thread-pre-split ], [ %i.cz, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.thread ] ; 5 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dd = add i64 %.077191, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.077191
  store i8 0, ptr %i.de, align 1, !tbaa !51
  br label %.backedge

.backedge:                                        ; preds = %.preheader.preheader, %bb.n, %bb.p
  %i.df = phi i64 [ %i.db, %bb.p ], [ 0, %bb.n ], [ %i.dm, %.preheader.preheader ]
  %.077.be = phi i64 [ %i.dk, %bb.p ], [ %i.dd, %bb.n ], [ %i.el, %.preheader.preheader ] ; 2 uses
  %i.dg = icmp ult i64 %.077.be, %0
  br i1 %i.dg, label %bb.j, label %.thread152, !llvm.loop !164

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ugt i64 %i.db, %i.aw
  br i1 %i.dh, label %bb.p, label %._crit_edge218

._crit_edge218:                                   ; preds = %bb.o
  %.promoted184.pre = load i64, ptr %i.bd, align 8, !tbaa !53
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.di = sub nuw i64 %i.db, %i.aw
  %i.dj = trunc i64 %i.di to i8
  %i.dk = add i64 %.077191, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.077191
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !51
  br label %.backedge

bb.q:                                             ; preds = %._crit_edge218, %bb.j
  %.promoted184 = phi i64 [ %.promoted184.pre219, %bb.j ], [ %.promoted184.pre, %._crit_edge218 ] ; 3 uses
  %i.dm = phi i64 [ %i.bg, %bb.j ], [ %i.db, %._crit_edge218 ] ; 9 uses
  %i.dn = icmp ult i64 %.promoted184, %i.dm
  br i1 %i.dn, label %.lr.ph186, label %.._crit_edge187_crit_edge

.._crit_edge187_crit_edge:                        ; preds = %bb.q
  %.pre221 = load i64, ptr %i.b, align 8, !tbaa !54
  br label %._crit_edge187

.lr.ph186:                                        ; preds = %bb.q
  %i.do = load ptr, ptr %i.bf, align 8, !tbaa !48 ; 2 uses
  %.promoted190 = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %i.dp = icmp eq ptr %.promoted190, %i.do
  br i1 %i.dp, label %.thread147.sink.split, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.preheader

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.preheader: ; preds = %.lr.ph186
  %.promoted283 = load i64, ptr %i.b, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit

bb.r:                                             ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit
  %i.dq = icmp eq ptr %i.dz, %i.do
  br i1 %i.dq, label %.thread147.sink.split, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit, !llvm.loop !80

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit: ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.preheader, %bb.r
  %i.dr = phi i64 [ %i.dx, %bb.r ], [ %.promoted283, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.preheader ]
  %i.ds = phi i64 [ %i.dy, %bb.r ], [ %.promoted184, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.preheader ] ; 2 uses
  %i.dt = phi ptr [ %i.dz, %bb.r ], [ %.promoted190, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.preheader ] ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !51
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl i64 %i.dv, %i.ds
  %i.dx = or i64 %i.dw, %i.dr                     ; 3 uses
  store i64 %i.dx, ptr %i.b, align 8, !tbaa !54
  %i.dy = add i64 %i.ds, 8                        ; 4 uses
  store i64 %i.dy, ptr %i.bd, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 3 uses
  store ptr %i.dz, ptr %i.be, align 8, !tbaa !47
  %i.ea = icmp ult i64 %i.dy, %i.dm
  br i1 %i.ea, label %bb.r, label %._crit_edge187, !llvm.loop !80

._crit_edge187:                                   ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit, %.._crit_edge187_crit_edge
  %i.eb = phi i64 [ %.pre221, %.._crit_edge187_crit_edge ], [ %i.dx, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit ] ; 2 uses
  %.lcssa165 = phi i64 [ %.promoted184, %.._crit_edge187_crit_edge ], [ %i.dy, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.dm
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !32
  %i.ee = and i64 %i.ed, %i.eb
  %i.ef = sub i64 %.lcssa165, %i.dm
  store i64 %i.ef, ptr %i.bd, align 8, !tbaa !53
  %i.eg = lshr i64 %i.eb, %i.dm
  store i64 %i.eg, ptr %i.b, align 8, !tbaa !54
  %i.eh = trunc i64 %i.dm to i32
  %i.ei = shl nuw i32 1, %i.eh
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add i64 %i.ee, %i.ej                    ; 2 uses
  %i.el = add i64 %i.ek, %.077191                 ; 2 uses
  %i.em = icmp ugt i64 %i.el, %0
  br i1 %i.em, label %.thread147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge187
  %scevgep = getelementptr i8, ptr %i.ax, i64 %.077191
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ek, i1 false), !tbaa !51
  br label %.backedge

.thread147.sink.split:                            ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit, %.lr.ph186, %bb.r
  %.lcssa239.sink = phi i64 [ %i.dm, %bb.r ], [ 65535, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit ], [ %i.dm, %.lr.ph186 ]
  store i64 %.lcssa239.sink, ptr %i.ay, align 8, !tbaa !161
  store i64 %.077191, ptr %i.at, align 8, !tbaa !163
  br label %.thread147

.thread147:                                       ; preds = %._crit_edge187, %.thread147.sink.split
  %.6 = phi i32 [ 2, %.thread147.sink.split ], [ -8, %._crit_edge187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

bb.s:                                             ; preds = %.thread152, %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted195 = load i64, ptr %i.en, align 8, !tbaa !53 ; 2 uses
  %i.eo = icmp eq i64 %.promoted195, 0
  br i1 %i.eo, label %.lr.ph197.split, label %._crit_edge222

._crit_edge222:                                   ; preds = %bb.s
  %.pre223 = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ep = add i64 %.promoted195, -1
  br label %bb.t

.lr.ph197.split:                                  ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.promoted201 = load ptr, ptr %i.eq, align 8, !tbaa !47 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !48
  %i.et = icmp eq ptr %.promoted201, %i.es
  br i1 %i.et, label %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit.thread, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit103

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit103: ; preds = %.lr.ph197.split
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ev = load i8, ptr %.promoted201, align 1, !tbaa !51
  %i.ew = zext i8 %i.ev to i64
  %i.ex = or i64 %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.promoted201, i64 1
  store ptr %i.ey, ptr %i.eq, align 8, !tbaa !47
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge222, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit103
  %i.ez = phi i64 [ %i.ex, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit103 ], [ %.pre223, %._crit_edge222 ] ; 2 uses
  %.lcssa = phi i64 [ 7, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit103 ], [ %i.ep, %._crit_edge222 ]
  %i.fa = and i64 %i.ez, 1
  store i64 %.lcssa, ptr %i.en, align 8, !tbaa !53
  %i.fb = lshr i64 %i.ez, 1
  store i64 %i.fb, ptr %i.b, align 8, !tbaa !54
  %.not96 = icmp eq i64 %i.fa, 0
  br i1 %.not96, label %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = load ptr, ptr %2, align 8, !tbaa !31
  tail call fastcc void @_ZN13duckdb_brotliL27InverseMoveToFrontTransformEPhmPNS_24BrotliDecoderStateStructE(ptr noundef %i.fc, i64 noundef %0, ptr noundef nonnull %3)
  br label %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit.thread

_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit.thread: ; preds = %.lr.ph197.split, %bb.t, %bb.u
  %storemerge = phi i32 [ 0, %bb.t ], [ 0, %bb.u ], [ 4, %.lr.ph197.split ]
  %.7 = phi i32 [ 1, %bb.t ], [ 1, %bb.u ], [ 2, %.lr.ph197.split ]
  store i32 %storemerge, ptr %i.c, align 4, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.thread147, %bb.h, %bb.a, %bb.c, %bb.b, %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit.thread, %bb.e
  %.8 = phi i32 [ %i.aq, %bb.h ], [ -31, %bb.a ], [ %i.e, %bb.b ], [ 1, %bb.e ], [ %.7, %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit.thread ], [ %.6, %.thread147 ], [ -25, %bb.c ], [ 2, %.lr.ph ]
  ret i32 %.8
}

declare noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN13duckdb_brotliL22BrotliEnsureRingBufferEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !141  ; 2 uses
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = sext i32 %i.f to i64
  %i.m = add nsw i64 %i.l, 542
  %i.n = tail call noundef ptr %i.i(ptr noundef %i.k, i64 noundef %i.m) ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !50
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !50
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.e, align 8, !tbaa !141
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  store i8 0, ptr %i.s, align 1, !tbaa !51
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.u = load i32, ptr %i.e, align 8, !tbaa !141
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  store i8 0, ptr %i.x, align 1, !tbaa !51
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !129
  %i.ab = sext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %i.b, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !24
  tail call void %i.ad(ptr noundef %i.ae, ptr noundef nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = load i32, ptr %i.e, align 8, !tbaa !141 ; 3 uses
  store i32 %i.af, ptr %i.c, align 4, !tbaa !127
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !135
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !165
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 -31, 3) i32 @_ZN13duckdb_brotliL15ProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.f = getelementptr i8, ptr %0, i64 808        ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %.not.i25 = icmp eq ptr %.val, null
  br i1 %.not.i25, label %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  br label %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 17 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not = icmp ult ptr %i.k, %i.m
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit
  %i.n = tail call noundef i32 @_ZN13duckdb_brotli21BrotliWarmupBitReaderEPNS_15BrotliBitReaderE(ptr noundef nonnull %i.e) ; 0 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !7
  switch i32 %i.o, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit [
    i32 7, label %.preheader166
    i32 8, label %.preheader
    i32 9, label %bb.ae
    i32 10, label %._crit_edge246
  ]

._crit_edge246:                                   ; preds = %bb.c
  %.pre247 = sext i32 %i.b to i64
  br label %bb.cd

.preheader166:                                    ; preds = %bb.c, %.thread98, %bb.ch
  %.3.ph = phi i32 [ %i.yn, %bb.ch ], [ %i.oh, %.thread98 ], [ %i.d, %bb.c ]
  %.0289.i.ph = phi i32 [ %i.zc, %bb.ch ], [ %.12.i, %.thread98 ], [ %i.b, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not157195 = icmp ult ptr %i.p, %i.q
  br i1 %.not157195, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader166
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.lr.ph412, label %._crit_edge413, !prof !166

._crit_edge:                                      ; preds = %.lr.ph412, %.preheader166
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %.thread

bb.d:                                             ; preds = %.lr.ph412
  %i.u = load i64, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.lr.ph412, label %._crit_edge413, !prof !167

.lr.ph412:                                        ; preds = %.lr.ph, %bb.d
  tail call fastcc void @_ZN13duckdb_brotliL24DecodeCommandBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not157 = icmp ult ptr %i.w, %i.x
  br i1 %.not157, label %bb.d, label %._crit_edge

._crit_edge413:                                   ; preds = %bb.d, %.lr.ph
  %.lcssa410 = phi ptr [ %i.p, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %.lcssa408 = phi i64 [ %i.s, %.lr.ph ], [ %i.u, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !53 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, 17
  %.pre = load i64, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  br i1 %i.ac, label %bb.e, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit

bb.e:                                             ; preds = %._crit_edge413
  %.0.copyload.i.i12 = load i64, ptr %.lcssa410, align 1
  %i.ad = shl i64 %.0.copyload.i.i12, %i.ab
  %i.ae = or i64 %i.ad, %.pre
  %i.af = add nuw nsw i64 %i.ab, 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa410, i64 6 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit: ; preds = %._crit_edge413, %bb.e
  %i.ah = phi ptr [ %.lcssa410, %._crit_edge413 ], [ %i.ag, %bb.e ] ; 4 uses
  %i.ai = phi i64 [ %i.ab, %._crit_edge413 ], [ %i.af, %bb.e ] ; 2 uses
  %i.aj = phi i64 [ %.pre, %._crit_edge413 ], [ %i.ae, %bb.e ] ; 3 uses
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ak ; 4 uses
  %i.am = load i8, ptr %i.al, align 2, !tbaa !73  ; 3 uses
  %i.an = icmp ugt i8 %i.am, 8
  br i1 %i.an, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i, label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i:         ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit
  %i.ao = add i64 %i.ai, -8
  %i.ap = lshr i64 %i.aj, 8                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !75
  %i.as = zext i16 %i.ar to i64
  %i.at = zext i8 %i.am to i64
  %1 = add nuw nsw i64 %i.at, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.au = load i64, ptr %3, align 8, !tbaa !32
  %i.av = and i64 %i.au, %i.ap
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.as ; 2 uses
  %.pre237 = load i8, ptr %i.ax, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit
  %i.ay = phi i64 [ %i.ap, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.aj, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %i.az = phi i64 [ %i.ao, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.ai, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %i.ba = phi i8 [ %.pre237, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.am, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %.0.i.i30.i = phi ptr [ %i.ax, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.al, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = sub i64 %i.az, %i.bb                    ; 6 uses
  store i64 %i.bc, ptr %i.aa, align 8, !tbaa !53
  %i.bd = lshr i64 %i.ay, %i.bb                   ; 4 uses
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i30.i, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !75
  %i.bg = zext i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @_ZL7kCmdLut, i64 %i.bg ; 6 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 2, !tbaa !51
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1, !tbaa !51 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.sroa.10.0.copyload.i = load i16, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !144
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %.sroa.11.0.copyload.i = load i16, ptr %.sroa.11.0..sroa_idx.i, align 2, !tbaa !144
  %i.bi = sext i8 %.sroa.8.0.copyload.i to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !168
  %i.bk = zext i8 %.sroa.9.0.copyload.i to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !169
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  %i.bo = zext i8 %.sroa.9.0.copyload.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !170
  %i.bs = zext i16 %.sroa.10.0.copyload.i to i32
  %.not25.i = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %.not25.i, label %bb.g, label %bb.f, !prof !171

bb.f:                                             ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i
  %i.bt = zext i8 %.sroa.0.0.copyload.i to i64    ; 3 uses
  %i.bu = icmp ult i64 %i.bc, 33
  br i1 %i.bu, label %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i34.i.sink.split, label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i

_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i34.i.sink.split: ; preds = %bb.f
  %.0.copyload.i4.i36.i = load i32, ptr %i.ah, align 1
  %i.bv = zext i32 %.0.copyload.i4.i36.i to i64
  %i.bw = shl i64 %i.bv, %i.bc
  %i.bx = or i64 %i.bw, %i.bd
  %i.by = add nuw nsw i64 %i.bc, 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store ptr %i.bz, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i

_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i: ; preds = %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i34.i.sink.split, %bb.f
  %i.ca = phi ptr [ %i.bz, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i34.i.sink.split ], [ %i.ah, %bb.f ]
  %i.cb = phi i64 [ %i.by, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i34.i.sink.split ], [ %i.bc, %bb.f ]
  %i.cc = phi i64 [ %i.bx, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i34.i.sink.split ], [ %i.bd, %bb.f ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.bt
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !32
  %i.cf = and i64 %i.ce, %i.cc
  %i.cg = sub i64 %i.cb, %i.bt                    ; 2 uses
  store i64 %i.cg, ptr %i.aa, align 8, !tbaa !53
  %i.ch = lshr i64 %i.cc, %i.bt                   ; 2 uses
  store i64 %i.ch, ptr %i.e, align 8, !tbaa !54
  %i.ci = trunc i64 %i.cf to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i
  %i.cj = phi ptr [ %i.ah, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ], [ %i.ca, %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i ] ; 2 uses
  %i.ck = phi i64 [ %i.bd, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ], [ %i.ch, %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i ] ; 2 uses
  %i.cl = phi i64 [ %i.bc, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ], [ %i.cg, %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i ] ; 4 uses
  %.060 = phi i32 [ 0, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ], [ %i.ci, %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit39.i ]
  %i.cm = zext i8 %.sroa.6.0.copyload.i to i64    ; 3 uses
  %i.cn = icmp ult i64 %i.cl, 33
  br i1 %i.cn, label %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.i.sink.split, label %_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit

_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.i.sink.split: ; preds = %bb.g
  %.0.copyload.i4.i.i = load i32, ptr %i.cj, align 1
  %i.co = zext i32 %.0.copyload.i4.i.i to i64
  %i.cp = shl i64 %i.co, %i.cl
  %i.cq = or i64 %i.cp, %i.ck
  %i.cr = add nuw nsw i64 %i.cl, 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store ptr %i.cs, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit

_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit: ; preds = %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.i.sink.split, %bb.g
  %i.ct = phi i64 [ %i.cr, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.i.sink.split ], [ %i.cl, %bb.g ]
  %i.cu = phi i64 [ %i.cq, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.i.sink.split ], [ %i.ck, %bb.g ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.cm
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !32
  %i.cx = and i64 %i.cw, %i.cu
  %i.cy = sub i64 %i.ct, %i.cm
  store i64 %i.cy, ptr %i.aa, align 8, !tbaa !53
  %i.cz = lshr i64 %i.cu, %i.cm
  store i64 %i.cz, ptr %i.e, align 8, !tbaa !54
  %i.da = trunc i64 %i.cx to i32
  %i.db = zext i16 %.sroa.11.0.copyload.i to i32
  %i.dc = add nsw i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !172
  %i.de = add i64 %.lcssa408, -1
  store i64 %i.de, ptr %i.r, align 8, !tbaa !32
  %i.df = add nsw i32 %.060, %i.bs                ; 3 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !62
  %i.dj = sub nsw i32 %i.di, %i.df
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !62
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.h
  %.4.ph = phi i32 [ %i.d, %bb.c ], [ %i.df, %bb.h ]
  %.1290.i.ph = phi i32 [ %i.b, %bb.c ], [ %.0289.i.ph, %bb.h ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %.loopexit163
  %.4 = phi i32 [ %.7, %.loopexit163 ], [ %.4.ph, %.preheader ] ; 2 uses
  %.1290.i = phi i32 [ %.16.i, %.loopexit163 ], [ %.1290.i.ph, %.preheader ] ; 4 uses
  %i.du = load i32, ptr %i.dk, align 8, !tbaa !99
  %.not396.i = icmp eq i32 %i.du, 0
  br i1 %.not396.i, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !101
  %i.dw = load i64, ptr %i.dm, align 8, !tbaa !53 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 9
  %.pre238 = load i64, ptr %i.e, align 8, !tbaa !54 ; 2 uses
  br i1 %i.dx, label %bb.k, label %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11

bb.k:                                             ; preds = %bb.j
  %i.dy = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %.0.copyload.i.i10 = load i64, ptr %i.dy, align 1
  %i.dz = shl i64 %.0.copyload.i.i10, %i.dw
  %i.ea = or i64 %i.dz, %.pre238                  ; 2 uses
  store i64 %i.ea, ptr %i.e, align 8, !tbaa !54
  %i.eb = add nuw nsw i64 %i.dw, 56
  store i64 %i.eb, ptr %i.dm, align 8, !tbaa !53
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 7
  store ptr %i.ec, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11

_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11: ; preds = %bb.j, %bb.k
  %i.ed = phi i64 [ %.pre238, %bb.j ], [ %i.ea, %bb.k ]
  %i.ee = and i64 %i.ed, 255
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !73
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !75
  %i.ej = sext i32 %.1290.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ %i.ej, %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11 ] ; 4 uses
  %.5 = phi i32 [ %i.gq, %bb.u ], [ %.4, %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11 ] ; 4 uses
  %.058.in = phi i8 [ %i.ge, %bb.u ], [ %i.eg, %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11 ] ; 2 uses
  %.0.in = phi i16 [ %i.gg, %bb.u ], [ %i.ei, %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit11 ] ; 2 uses
  %.0 = zext i16 %.0.in to i64
  %.058 = zext i8 %.058.in to i64                 ; 3 uses
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !47  ; 5 uses
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not158 = icmp ult ptr %i.ek, %i.el
  br i1 %.not158, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.em = trunc nsw i64 %indvars.iv to i32
  store i32 8, ptr %0, align 8, !tbaa !7
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.en = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.loopexit163, label %bb.o, !prof !173

bb.o:                                             ; preds = %bb.n
  %i.ep = load ptr, ptr %i.dl, align 8, !tbaa !101 ; 2 uses
  %i.eq = icmp ugt i8 %.058.in, 8
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !53 ; 5 uses
  br i1 %i.eq, label %bb.p, label %bb.r, !prof !173

bb.p:                                             ; preds = %bb.o
  %i.es = icmp ult i64 %i.er, 17
  %.pre239 = load i64, ptr %i.e, align 8, !tbaa !54 ; 2 uses
  br i1 %i.es, label %bb.q, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i.i15 = load i64, ptr %i.ek, align 1
  %i.et = shl i64 %.0.copyload.i.i15, %i.er
  %i.eu = or i64 %i.et, %.pre239
  %i.ev = add nuw nsw i64 %i.er, 48
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 6 ; 2 uses
  store ptr %i.ew, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16: ; preds = %bb.p, %bb.q
  %i.ex = phi ptr [ %i.ek, %bb.p ], [ %i.ew, %bb.q ]
  %i.ey = phi i64 [ %i.er, %bb.p ], [ %i.ev, %bb.q ]
  %i.ez = phi i64 [ %.pre239, %bb.p ], [ %i.eu, %bb.q ] ; 2 uses
  %i.fa = and i64 %i.ez, 255
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0
  %i.fd = getelementptr [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %.058
  %i.fe = getelementptr i8, ptr %i.fd, i64 -64
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !32
  %i.fg = add i64 %i.ey, -8
  %i.fh = lshr i64 %i.ez, 8                       ; 2 uses
  %i.fi = and i64 %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fi ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !73
  %i.fl = zext i8 %i.fk to i64                    ; 2 uses
  %i.fm = sub i64 %i.fg, %i.fl                    ; 2 uses
  store i64 %i.fm, ptr %i.dm, align 8, !tbaa !53
  %i.fn = lshr i64 %i.fh, %i.fl                   ; 2 uses
  store i64 %i.fn, ptr %i.e, align 8, !tbaa !54
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !75
  br label %_ZN13duckdb_brotliL19ReadPreloadedSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPmS5_.exit

bb.r:                                             ; preds = %bb.o
  %i.fq = sub i64 %i.er, %.058                    ; 2 uses
  store i64 %i.fq, ptr %i.dm, align 8, !tbaa !53
  %i.fr = load i64, ptr %i.e, align 8, !tbaa !54
  %i.fs = lshr i64 %i.fr, %.058                   ; 2 uses
  store i64 %i.fs, ptr %i.e, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL19ReadPreloadedSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPmS5_.exit

_ZN13duckdb_brotliL19ReadPreloadedSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPmS5_.exit: ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16, %bb.r
  %i.ft = phi ptr [ %i.ex, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16 ], [ %i.ek, %bb.r ] ; 2 uses
  %i.fu = phi i64 [ %i.fn, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16 ], [ %i.fs, %bb.r ] ; 2 uses
  %i.fv = phi i64 [ %i.fm, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16 ], [ %i.fq, %bb.r ] ; 3 uses
  %.0.i5 = phi i16 [ %i.fp, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit16 ], [ %.0.in, %bb.r ]
  %i.fw = icmp ult i64 %i.fv, 9
  br i1 %i.fw, label %bb.s, label %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit

bb.s:                                             ; preds = %_ZN13duckdb_brotliL19ReadPreloadedSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPmS5_.exit
  %.0.copyload.i.i = load i64, ptr %i.ft, align 1
  %i.fx = shl i64 %.0.copyload.i.i, %i.fv
  %i.fy = or i64 %i.fx, %i.fu                     ; 2 uses
  store i64 %i.fy, ptr %i.e, align 8, !tbaa !54
  %i.fz = add nuw nsw i64 %i.fv, 56
  store i64 %i.fz, ptr %i.dm, align 8, !tbaa !53
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 7
  store ptr %i.ga, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit

_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit: ; preds = %_ZN13duckdb_brotliL19ReadPreloadedSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPmS5_.exit, %bb.s
  %i.gb = phi i64 [ %i.fu, %_ZN13duckdb_brotliL19ReadPreloadedSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPmS5_.exit ], [ %i.fy, %bb.s ]
  %i.gc = and i64 %i.gb, 255
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.gc ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !73
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !75
  %i.gh = trunc i16 %.0.i5 to i8
  %i.gi = load ptr, ptr %i.do, align 8, !tbaa !50
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %indvars.iv
  store i8 %i.gh, ptr %i.gj, align 1, !tbaa !51
  %i.gk = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.gl = add i64 %i.gk, -1
  store i64 %i.gl, ptr %i.dn, align 8, !tbaa !32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gm = load i32, ptr %i.dp, align 4, !tbaa !127 ; 2 uses
  %i.gn = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.go = icmp eq i32 %i.gm, %i.gn
  br i1 %i.go, label %bb.t, label %bb.u, !prof !173

bb.t:                                             ; preds = %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit
  store i32 13, ptr %0, align 8, !tbaa !7
  %i.gp = add nsw i32 %.5, -1
  br label %.thread

bb.u:                                             ; preds = %_ZN13duckdb_brotliL13BrotliGetBitsEPNS_15BrotliBitReaderEm.exit
  %i.gq = add nsw i32 %.5, -1                     ; 2 uses
  %.not402.i = icmp eq i32 %i.gq, 0
  br i1 %.not402.i, label %.thread65, label %bb.l, !llvm.loop !174

bb.v:                                             ; preds = %bb.i
  %i.gr = load ptr, ptr %i.do, align 8, !tbaa !50 ; 2 uses
  %i.gs = add nsw i32 %.1290.i, -1
  %i.gt = load i32, ptr %i.dq, align 8, !tbaa !135 ; 2 uses
  %i.gu = and i32 %i.gt, %i.gs
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gr, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !51
  %i.gy = add nsw i32 %.1290.i, -2
  %i.gz = and i32 %i.gt, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %i.gr, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !51
  %i.hd = sext i32 %.1290.i to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.v
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %bb.ac ], [ %i.hd, %bb.v ] ; 4 uses
  %.9 = phi i32 [ %i.jn, %bb.ac ], [ %.4, %bb.v ] ; 4 uses
  %.0330.i = phi i8 [ %.0325.i, %bb.ac ], [ %i.hc, %bb.v ]
  %.0325.i = phi i8 [ %i.je, %bb.ac ], [ %i.gx, %bb.v ] ; 2 uses
  %i.he = load ptr, ptr %i.j, align 8, !tbaa !47  ; 3 uses
  %i.hf = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not159 = icmp ult ptr %i.he, %i.hf
  br i1 %.not159, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hg = trunc nsw i64 %indvars.iv229 to i32
  store i32 8, ptr %0, align 8, !tbaa !7
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.hh = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.loopexit163, label %bb.z, !prof !173

bb.z:                                             ; preds = %bb.y
  %i.hj = load ptr, ptr %i.dr, align 8, !tbaa !102 ; 2 uses
  %i.hk = zext i8 %.0325.i to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !51
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 256
  %i.ho = zext i8 %.0330.i to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.hr = or i8 %i.hq, %i.hm
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !100
  %i.ht = load ptr, ptr %i.dt, align 8, !tbaa !98
  %i.hu = zext i8 %i.hr to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !51
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !96
  %i.ia = load i64, ptr %i.dm, align 8, !tbaa !53 ; 4 uses
  %i.ib = icmp ult i64 %i.ia, 17
  %.pre240 = load i64, ptr %i.e, align 8, !tbaa !54 ; 2 uses
  br i1 %i.ib, label %bb.aa, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14

bb.aa:                                            ; preds = %bb.z
  %.0.copyload.i.i13 = load i64, ptr %i.he, align 1
  %i.ic = shl i64 %.0.copyload.i.i13, %i.ia
  %i.id = or i64 %i.ic, %.pre240
  %i.ie = add nuw nsw i64 %i.ia, 48
  %i.if = getelementptr inbounds nuw i8, ptr %i.he, i64 6
  store ptr %i.if, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14: ; preds = %bb.z, %bb.aa
  %i.ig = phi i64 [ %i.ia, %bb.z ], [ %i.ie, %bb.aa ] ; 2 uses
  %i.ih = phi i64 [ %.pre240, %bb.z ], [ %i.id, %bb.aa ] ; 3 uses
  %i.ii = and i64 %i.ih, 255
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ii ; 4 uses
  %i.ik = load i8, ptr %i.ij, align 2, !tbaa !73  ; 3 uses
  %i.il = icmp ugt i8 %i.ik, 8
  br i1 %i.il, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i, label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i:           ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14
  %i.im = add i64 %i.ig, -8
  %i.in = lshr i64 %i.ih, 8                       ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !75
  %i.iq = zext i16 %i.ip to i64
  %i.ir = zext i8 %i.ik to i64
  %4 = add nuw nsw i64 %i.ir, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.is = load i64, ptr %6, align 8, !tbaa !32
  %i.it = and i64 %i.is, %i.in
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.it
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.iq ; 2 uses
  %.pre241 = load i8, ptr %i.iv, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit: ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i
  %i.iw = phi i64 [ %i.in, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ih, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14 ]
  %i.ix = phi i64 [ %i.im, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ig, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14 ]
  %i.iy = phi i8 [ %.pre241, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ik, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14 ]
  %.0.i.i8 = phi ptr [ %i.iv, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ij, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit14 ]
  %i.iz = zext i8 %i.iy to i64                    ; 2 uses
  %i.ja = sub i64 %i.ix, %i.iz
  store i64 %i.ja, ptr %i.dm, align 8, !tbaa !53
  %i.jb = lshr i64 %i.iw, %i.iz
  store i64 %i.jb, ptr %i.e, align 8, !tbaa !54
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 2
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !75
  %i.je = trunc i16 %i.jd to i8                   ; 2 uses
  %i.jf = load ptr, ptr %i.do, align 8, !tbaa !50
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %indvars.iv229
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !51
  %i.jh = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.ji = add i64 %i.jh, -1
  store i64 %i.ji, ptr %i.dn, align 8, !tbaa !32
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.jj = load i32, ptr %i.dp, align 4, !tbaa !127 ; 2 uses
  %i.jk = trunc nsw i64 %indvars.iv.next230 to i32 ; 2 uses
  %i.jl = icmp eq i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.ab, label %bb.ac, !prof !173

bb.ab:                                            ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit
  store i32 13, ptr %0, align 8, !tbaa !7
  %i.jm = add nsw i32 %.9, -1
  br label %.thread

bb.ac:                                            ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit
  %i.jn = add nsw i32 %.9, -1                     ; 2 uses
  %.not399.i = icmp eq i32 %i.jn, 0
  br i1 %.not399.i, label %.thread65, label %bb.w, !llvm.loop !175

.thread65:                                        ; preds = %bb.u, %bb.ac
  %.6295.i = phi i32 [ %i.jk, %bb.ac ], [ %i.gn, %bb.u ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !62
  %i.jq = icmp slt i32 %i.jp, 1
  br i1 %i.jq, label %bb.ad, label %bb.ae, !prof !173

bb.ad:                                            ; preds = %.thread65
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.thread

bb.ae:                                            ; preds = %.thread65, %_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit, %bb.c
  %.7296.i = phi i32 [ %.0289.i.ph, %_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit ], [ %.6295.i, %.thread65 ], [ %i.b, %bb.c ] ; 12 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !168 ; 2 uses
  %i.jt = icmp sgt i32 %i.js, -1
  br i1 %i.jt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.not406.i = icmp eq i32 %i.js, 0
  %i.ju = zext i1 %.not406.i to i32               ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !169
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !176
  %i.jy = add nsw i32 %i.jx, -1                   ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !176
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ka = and i32 %i.jy, 3
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3  ; 2 uses
  store i32 %i.kd, ptr %i.jr, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !32
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %bb.ah, label %bb.ai, !prof !173

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_ZN13duckdb_brotliL25DecodeDistanceBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !177
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.kl = load i8, ptr %i.kk, align 4, !tbaa !170
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !96
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !53 ; 4 uses
  %i.kr = icmp ult i64 %i.kq, 17
  %.pre242 = load i64, ptr %i.e, align 8, !tbaa !54 ; 2 uses
  br i1 %i.kr, label %bb.aj, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ks = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %.0.copyload.i.i.i21 = load i64, ptr %i.ks, align 1
  %i.kt = shl i64 %.0.copyload.i.i.i21, %i.kq
  %i.ku = or i64 %i.kt, %.pre242
  %i.kv = add nuw nsw i64 %i.kq, 48
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 6
  store ptr %i.kw, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i: ; preds = %bb.aj, %bb.ai
  %i.kx = phi i64 [ %i.kv, %bb.aj ], [ %i.kq, %bb.ai ] ; 2 uses
  %i.ky = phi i64 [ %i.ku, %bb.aj ], [ %.pre242, %bb.ai ] ; 3 uses
  %i.kz = and i64 %i.ky, 255
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kz ; 4 uses
  %i.lb = load i8, ptr %i.la, align 2, !tbaa !73  ; 3 uses
  %i.lc = icmp ugt i8 %i.lb, 8
  br i1 %i.lc, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19, label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19:       ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.ld = add i64 %i.kx, -8
  %i.le = lshr i64 %i.ky, 8                       ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !75
  %i.lh = zext i16 %i.lg to i64
  %i.li = zext i8 %i.lb to i64
  %7 = add nuw nsw i64 %i.li, 4294967288
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %8
  %i.lj = load i64, ptr %9, align 8, !tbaa !32
  %i.lk = and i64 %i.lj, %i.le
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lh ; 2 uses
  %.pre243 = load i8, ptr %i.lm, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17

_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.ln = phi i64 [ %i.le, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.ky, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.lo = phi i64 [ %i.ld, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.kx, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.lp = phi i8 [ %.pre243, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.lb, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %.0.i.i27.i = phi ptr [ %i.lm, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.la, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.lq = zext i8 %i.lp to i64                    ; 2 uses
  %i.lr = sub i64 %i.lo, %i.lq                    ; 5 uses
  store i64 %i.lr, ptr %i.kp, align 8, !tbaa !53
  %i.ls = lshr i64 %i.ln, %i.lq                   ; 3 uses
  store i64 %i.ls, ptr %i.e, align 8, !tbaa !54
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i.i27.i, i64 2
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !75 ; 6 uses
  %i.lv = zext i16 %i.lu to i64                   ; 2 uses
  %i.lw = load i64, ptr %i.ke, align 8, !tbaa !32
  %i.lx = add i64 %i.lw, -1
  store i64 %i.lx, ptr %i.ke, align 8, !tbaa !32
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  store i32 0, ptr %i.ly, align 4, !tbaa !169
  %i.lz = icmp ult i16 %i.lu, 16
  br i1 %i.lz, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17
  %i.ma = zext nneg i16 %i.lu to i32              ; 3 uses
  store i32 %i.ma, ptr %i.jr, align 8, !tbaa !168
  %i.mb = icmp samesign ult i16 %i.lu, 4
  br i1 %i.mb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.neg.i = xor i32 %i.ma, -1
  %i.mc = icmp eq i16 %i.lu, 0
  %i.md = zext i1 %i.mc to i32                    ; 3 uses
  store i32 %i.md, ptr %i.ly, align 4, !tbaa !169
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !176 ; 2 uses
  %i.mh = add i32 %i.mg, %.neg.i
  %i.mi = and i32 %i.mh, 3
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !3  ; 2 uses
  store i32 %i.ml, ptr %i.jr, align 8, !tbaa !168
  %i.mm = sub nsw i32 %i.mg, %i.md
  store i32 %i.mm, ptr %i.mf, align 4, !tbaa !176
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.am:                                            ; preds = %bb.ak
  %i.mn = icmp samesign ult i16 %i.lu, 10         ; 2 uses
  %.020.i = select i1 %i.mn, i32 3, i32 2
  %.0.i22.v = select i1 %i.mn, i32 -4, i32 -10
  %.0.i22 = add nsw i32 %.0.i22.v, %i.ma
  %i.mo = shl nsw i32 %.0.i22, 2
  %i.mp = lshr i32 6312258, %i.mo
  %i.mq = and i32 %i.mp, 7
  %i.mr = add nsw i32 %i.mq, -3
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !176
  %i.mv = add nsw i32 %i.mu, %.020.i
  %i.mw = and i32 %i.mv, 3
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !3
  %i.na = add nsw i32 %i.mr, %i.mz                ; 2 uses
  %i.nb = icmp slt i32 %i.na, 1
  %storemerge.i = select i1 %i.nb, i32 2147483647, i32 %i.na ; 2 uses
  store i32 %storemerge.i, ptr %i.jr, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.an:                                            ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.lv
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !51
  %i.ne = zext i8 %i.nd to i64                    ; 3 uses
  %i.nf = icmp ult i64 %i.lr, 33
  br i1 %i.nf, label %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split, label %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit

_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split: ; preds = %bb.an
  %i.ng = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ni = add nuw nsw i64 %i.lr, 32
  %.0.copyload.i4.i = load i32, ptr %i.ng, align 1
  %i.nj = zext i32 %.0.copyload.i4.i to i64
  %.pn = shl i64 %i.nj, %i.lr
  %.ph373 = or i64 %.pn, %i.ls
  store ptr %i.nh, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit

_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit: ; preds = %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split, %bb.an
  %i.nk = phi i64 [ %i.ni, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split ], [ %i.lr, %bb.an ]
  %i.nl = phi i64 [ %.ph373, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split ], [ %i.ls, %bb.an ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.ne
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !32
  %i.no = and i64 %i.nn, %i.nl
  %i.np = sub i64 %i.nk, %i.ne
  store i64 %i.np, ptr %i.kp, align 8, !tbaa !53
  %i.nq = lshr i64 %i.nl, %i.ne
  store i64 %i.nq, ptr %i.e, align 8, !tbaa !54
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.lv
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !32
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !81
  %i.nw = shl i64 %i.no, %i.nv
  %i.nx = add i64 %i.nw, %i.nt
  %i.ny = trunc i64 %i.nx to i32                  ; 2 uses
  store i32 %i.ny, ptr %i.jr, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit: ; preds = %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit, %bb.al, %bb.am, %bb.af
  %i.nz = phi i32 [ 0, %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit ], [ %i.md, %bb.al ], [ 0, %bb.am ], [ %i.ju, %bb.af ]
  %i.oa = phi i32 [ %i.ny, %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit ], [ %i.ml, %bb.al ], [ %storemerge.i, %bb.am ], [ %i.kd, %bb.af ] ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !128 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !57 ; 2 uses
  %.not407.i = icmp eq i32 %i.oc, %i.oe
  br i1 %.not407.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit
  %.7296..i = tail call i32 @llvm.smin.i32(i32 %.7296.i, i32 %i.oe) ; 2 uses
  store i32 %.7296..i, ptr %i.ob, align 8, !tbaa !128
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit
  %i.of = phi i32 [ %.7296..i, %bb.ao ], [ %i.oc, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !172 ; 21 uses
  %i.oi = icmp sgt i32 %i.oa, %i.of
  br i1 %i.oi, label %bb.aq, label %bb.bw

bb.aq:                                            ; preds = %bb.ap
  %i.oj = icmp sgt i32 %i.oa, 2147483644
  br i1 %i.oj, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ok = sub nsw i32 %i.oa, %i.of                ; 2 uses
  %.not410.i = icmp sgt i32 %i.ok, %i.i
  br i1 %.not410.i, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ol = sub nsw i32 %i.i, %i.ok                 ; 4 uses
  %i.om = load ptr, ptr %i.f, align 8, !tbaa !33  ; 11 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 216 ; 3 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq i32 %i.oo, -1
  br i1 %.not.i.i, label %.preheader1.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

.preheader1.i.i:                                  ; preds = %bb.as
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 4 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !38 ; 2 uses
  %i.or = add nsw i32 %i.oq, -1
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.preheader1.i.i
  %.020.i.i = phi i32 [ %i.ot, %bb.at ], [ 8, %.preheader1.i.i ] ; 3 uses
  %i.os = ashr i32 %i.or, %.020.i.i
  %.not21.i.i = icmp eq i32 %i.os, 0
  %i.ot = add nuw nsw i32 %.020.i.i, 1
  br i1 %.not21.i.i, label %bb.au, label %bb.at, !llvm.loop !178

bb.au:                                            ; preds = %bb.at
  %i.ou = add nsw i32 %.020.i.i, -8               ; 4 uses
  store i32 %i.ou, ptr %i.on, align 8, !tbaa !41
  %i.ov = icmp sgt i32 %i.oq, 0
  br i1 %i.ov, label %.preheader.lr.ph.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.au
  %i.ow = getelementptr inbounds nuw i8, ptr %i.om, i64 152
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 220
  %i.oy = shl nuw i32 1, %i.ou
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aw, %.preheader.lr.ph.i.i
  %.03.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.i.i, %bb.aw ]
  %.0192.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.pg, %bb.aw ] ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %.03.i.i, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.av ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %indvars.iv.next.i.i
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !3
  %i.pb = icmp slt i32 %i.pa, %.0192.i.i
  br i1 %i.pb, label %bb.av, label %bb.aw, !llvm.loop !179

bb.aw:                                            ; preds = %bb.av
  %i.pc = trunc i64 %indvars.iv.i.i to i8
  %i.pd = ashr i32 %.0192.i.i, %i.ou
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds i8, ptr %i.ox, i64 %i.pe
  store i8 %i.pc, ptr %i.pf, align 1, !tbaa !51
  %i.pg = add nsw i32 %.0192.i.i, %i.oy           ; 2 uses
  %i.ph = load i32, ptr %i.op, align 4, !tbaa !38
  %i.pi = icmp slt i32 %i.pg, %i.ph
  br i1 %i.pi, label %.preheader.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i, !llvm.loop !180
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotliL15ProcessCommandsEPNS_24BrotliDecoderStateStructE:bb.a
  %i.yg = icmp slt i32 %i.yf, 1
  br i1 %i.yg, label %bb.cc, label %.preheader166

bb.cc:                                            ; preds = %.thread98
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.thread

bb.cd:                                            ; preds = %._crit_edge246, %bb.bw, %bb.bx
  %.pre-phi = phi i64 [ %.pre247, %._crit_edge246 ], [ %i.xe, %bb.bw ], [ %i.xe, %bb.bx ]
  %.059 = phi i32 [ %i.d, %._crit_edge246 ], [ %i.oh, %bb.bw ], [ %i.oh, %bb.bx ]
  %.13.i = phi i32 [ %i.b, %._crit_edge246 ], [ %.7296.i, %bb.bw ], [ %.7296.i, %bb.bx ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !127
  %i.yj = sub nsw i32 %i.yi, %.13.i
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.cf ], [ %.pre-phi, %bb.cd ] ; 4 uses
  %.1 = phi i32 [ %i.yn, %bb.cf ], [ %.059, %bb.cd ] ; 2 uses
  %.0.i = phi i32 [ %i.yz, %bb.cf ], [ %i.yj, %bb.cd ]
  %i.yn = add nsw i32 %.1, -1                     ; 4 uses
  %i.yo = icmp sgt i32 %.1, 0
  br i1 %i.yo, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.yp = load ptr, ptr %i.yk, align 8, !tbaa !50 ; 2 uses
  %i.yq = load i32, ptr %i.yl, align 8, !tbaa !168
  %i.yr = trunc nsw i64 %indvars.iv231 to i32
  %i.ys = sub nsw i32 %i.yr, %i.yq
  %i.yt = load i32, ptr %i.ym, align 8, !tbaa !135
  %i.yu = and i32 %i.ys, %i.yt
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds i8, ptr %i.yp, i64 %i.yv
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !51
  %i.yy = getelementptr inbounds i8, ptr %i.yp, i64 %indvars.iv231
  store i8 %i.yx, ptr %i.yy, align 1, !tbaa !51
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.yz = add nsw i32 %.0.i, -1                   ; 2 uses
  %i.za = icmp eq i32 %i.yz, 0
  br i1 %i.za, label %bb.cg, label %bb.ce, !prof !173, !llvm.loop !191

bb.cg:                                            ; preds = %bb.cf
  %i.zb = trunc nsw i64 %indvars.iv.next232 to i32
  store i32 16, ptr %0, align 8, !tbaa !7
  br label %.thread

bb.ch:                                            ; preds = %bb.ce
  %i.zc = trunc nsw i64 %indvars.iv231 to i32     ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !62
  %i.zf = icmp slt i32 %i.ze, 1
  br i1 %i.zf, label %bb.ci, label %.preheader166

bb.ci:                                            ; preds = %bb.ch
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.thread

.loopexit163:                                     ; preds = %bb.n, %bb.y
  %.7 = phi i32 [ %.9, %bb.y ], [ %.5, %bb.n ]
  %.16.i.in = phi i64 [ %indvars.iv229, %bb.y ], [ %indvars.iv, %bb.n ]
  %.16.i = trunc i64 %.16.i.in to i32
  tail call fastcc void @_ZN13duckdb_brotliL24DecodeLiteralBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  br label %bb.i

.thread:                                          ; preds = %bb.x, %bb.ab, %bb.t, %bb.m, %bb.cg, %bb.bv, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread, %bb.ci, %bb.cc, %bb.ad, %._crit_edge, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit
  %.2 = phi i32 [ %i.d, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ], [ %.3.ph, %._crit_edge ], [ %i.oh, %bb.cc ], [ %i.oh, %bb.bv ], [ %i.oh, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread ], [ %i.yn, %bb.ci ], [ %i.yn, %bb.cg ], [ 0, %bb.ad ], [ %.5, %bb.m ], [ %i.gp, %bb.t ], [ %.9, %bb.x ], [ %i.jm, %bb.ab ]
  %.14312.i = phi i32 [ 2, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ], [ 2, %._crit_edge ], [ 1, %bb.cc ], [ 1, %bb.bv ], [ 1, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread ], [ 1, %bb.ci ], [ 1, %bb.cg ], [ 1, %bb.ad ], [ 2, %bb.m ], [ 1, %bb.t ], [ 2, %bb.x ], [ 1, %bb.ab ]
  %.17.i = phi i32 [ %i.b, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ], [ %.0289.i.ph, %._crit_edge ], [ %.12.i, %bb.cc ], [ %i.ws, %bb.bv ], [ %.143.i324, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread ], [ %i.zc, %bb.ci ], [ %i.zb, %bb.cg ], [ %.6295.i, %bb.ad ], [ %i.em, %bb.m ], [ %i.gm, %bb.t ], [ %i.hg, %bb.x ], [ %i.jj, %bb.ab ]
  store i32 %.17.i, ptr %i.a, align 8, !tbaa !129
  store i32 %.2, ptr %i.c, align 4, !tbaa !56
  br label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.bp, %bb.bt, %bb.bo, %.loopexit, %bb.ay, %bb.c, %bb.aq, %bb.be, %.thread
  %.8.i = phi i32 [ %.14312.i, %.thread ], [ -31, %bb.c ], [ -12, %bb.be ], [ -18, %bb.ay ], [ -16, %bb.aq ], [ -11, %bb.bp ], [ -11, %bb.bt ], [ -19, %bb.bo ], [ -12, %.loopexit ]
  ret i32 %.8.i
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 -31, 3) i32 @_ZN13duckdb_brotliL19SafeProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr nofree noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !129  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 38 uses
  %i.j = getelementptr i8, ptr %0, i64 808        ; 3 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !33  ; 2 uses
  %.not.i53 = icmp eq ptr %.val, null
  br i1 %.not.i53, label %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  br label %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !7
  switch i32 %i.n, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit [
    i32 7, label %.preheader350
    i32 8, label %.preheader345
    i32 9, label %bb.y
    i32 10, label %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit._crit_edge
  ]

_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit._crit_edge: ; preds = %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit
  %.pre478 = sext i32 %i.f to i64
  br label %bb.ca

.preheader350:                                    ; preds = %bb.ce, %.thread269, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit
  %.394.ph = phi i32 [ %i.qz, %.thread269 ], [ %i.abf, %bb.ce ], [ %i.h, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ] ; 2 uses
  %.0289.i.ph = phi i32 [ %.12.i, %.thread269 ], [ %i.abu, %bb.ce ], [ %i.f, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader350, %bb.d
  store i32 7, ptr %0, align 8, !tbaa !7
  %i.p = load i64, ptr %i.o, align 8, !tbaa !32
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e, !prof !173

bb.d:                                             ; preds = %bb.c
  %i.r = tail call fastcc noundef i32 @_ZN13duckdb_brotliL28SafeDecodeCommandBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %.not420.i = icmp eq i32 %i.r, 0
  br i1 %.not420.i, label %.thread179, label %bb.c

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.s = load i64, ptr %i.i, align 8, !tbaa !54   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106 ; 2 uses
  %i.ae = icmp ult i64 %i.u, 15
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.af = icmp eq ptr %i.w, %i.y
  br i1 %i.af, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13: ; preds = %.lr.ph
  %i.ag = load i8, ptr %i.w, align 1, !tbaa !51
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, %i.u
  %i.aj = or i64 %i.ai, %i.s                      ; 3 uses
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !54
  %i.ak = add nuw nsw i64 %i.u, 8                 ; 3 uses
  store i64 %i.ak, ptr %i.t, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  store ptr %i.al, ptr %i.v, align 8, !tbaa !47
  %i.am = icmp ult i64 %i.u, 7
  br i1 %i.am, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13
  %i.an = icmp eq ptr %i.al, %i.y
  br i1 %i.an, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13.1: ; preds = %.lr.ph.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !51
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, %i.ak
  %i.ar = or i64 %i.aq, %i.aj                     ; 2 uses
  store i64 %i.ar, ptr %i.i, align 8, !tbaa !54
  %i.as = or disjoint i64 %i.u, 16                ; 2 uses
  store i64 %i.as, ptr %i.t, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store ptr %i.at, ptr %i.v, align 8, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13.1, %bb.e
  %i.au = phi i64 [ %i.u, %bb.e ], [ %i.ak, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13 ], [ %i.as, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13.1 ] ; 2 uses
  %i.av = phi i64 [ %i.s, %bb.e ], [ %i.aj, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13 ], [ %i.ar, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i13.1 ] ; 3 uses
  %i.aw = and i64 %i.av, 255
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aw ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !73  ; 3 uses
  %i.az = icmp ugt i8 %i.ay, 8
  br i1 %i.az, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i12, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i12:         ; preds = %._crit_edge
  %i.ba = add i64 %i.au, -8
  %i.bb = lshr i64 %i.av, 8                       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !75
  %i.be = zext i16 %i.bd to i64
  %i.bf = and i64 %i.bb, 127
  %i.bg = zext i8 %i.ay to i64
  %1 = add nuw nsw i64 %i.bg, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.bh = load i64, ptr %3, align 8, !tbaa !32
  %i.bi = and i64 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.be ; 2 uses
  %.pre = load i8, ptr %i.bk, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9.thread: ; preds = %._crit_edge, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i12
  %i.bl = phi i64 [ %i.bb, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i12 ], [ %i.av, %._crit_edge ]
  %i.bm = phi i64 [ %i.ba, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i12 ], [ %i.au, %._crit_edge ]
  %i.bn = phi i8 [ %.pre, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i12 ], [ %i.ay, %._crit_edge ]
  %.0.i28.i = phi ptr [ %i.bk, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i12 ], [ %i.ax, %._crit_edge ]
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = sub i64 %i.bm, %i.bo
  store i64 %i.bp, ptr %i.t, align 8, !tbaa !53
  %i.bq = lshr i64 %i.bl, %i.bo
  store i64 %i.bq, ptr %i.i, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i28.i, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !75
  %i.bt = zext i16 %i.bs to i64                   ; 2 uses
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !32
  br label %bb.f

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9: ; preds = %.lr.ph.1, %.lr.ph
  %i.bu = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef %i.ad, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b)
  %.not24.i = icmp eq i32 %i.bu, 0
  br i1 %.not24.i, label %_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit.thread, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9._crit_edge

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9._crit_edge: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9
  %.pre463 = load i64, ptr %i.b, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9._crit_edge, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9.thread
  %i.bv = phi i64 [ %.pre463, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9._crit_edge ], [ %i.bt, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9.thread ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @_ZL7kCmdLut, i64 %i.bv ; 6 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !51 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 2, !tbaa !51
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1, !tbaa !51 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %.sroa.10.0.copyload.i = load i16, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !144
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %.sroa.11.0.copyload.i = load i16, ptr %.sroa.11.0..sroa_idx.i, align 2, !tbaa !144
  %i.bx = sext i8 %.sroa.8.0.copyload.i to i32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !168
  %i.bz = zext i8 %.sroa.9.0.copyload.i to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !169
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !104
  %i.cd = zext i8 %.sroa.9.0.copyload.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i8 %i.cf, ptr %i.cg, align 4, !tbaa !170
  %i.ch = zext i16 %.sroa.10.0.copyload.i to i32  ; 2 uses
  %i.ci = zext i8 %.sroa.0.0.copyload.i to i64    ; 5 uses
  %.not.i21 = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i21, label %bb.h, label %.preheader348

.preheader348:                                    ; preds = %bb.f
  %.promoted388 = load i64, ptr %i.t, align 8, !tbaa !53 ; 3 uses
  %i.cj = icmp ult i64 %.promoted388, %i.ci
  br i1 %i.cj, label %.lr.ph389, label %.preheader348.._crit_edge390_crit_edge

.preheader348.._crit_edge390_crit_edge:           ; preds = %.preheader348
  %.pre464 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i22

.lr.ph389:                                        ; preds = %.preheader348
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !48
  %.promoted391 = load ptr, ptr %i.v, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph389, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27
  %i.cl = phi ptr [ %.promoted391, %.lr.ph389 ], [ %i.cu, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27 ] ; 3 uses
  %i.cm = phi i64 [ %.promoted388, %.lr.ph389 ], [ %i.ct, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27 ] ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.ck
  br i1 %i.cn, label %_ZN13duckdb_brotliL12SafeReadBitsEPNS_15BrotliBitReaderEmPm.exit30, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27: ; preds = %bb.g
  %i.co = load i64, ptr %i.i, align 8, !tbaa !54
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !51
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl i64 %i.cq, %i.cm
  %i.cs = or i64 %i.cr, %i.co                     ; 2 uses
  store i64 %i.cs, ptr %i.i, align 8, !tbaa !54
  %i.ct = add nuw nsw i64 %i.cm, 8                ; 4 uses
  store i64 %i.ct, ptr %i.t, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  store ptr %i.cu, ptr %i.v, align 8, !tbaa !47
  %i.cv = icmp ult i64 %i.ct, %i.ci
  br i1 %i.cv, label %bb.g, label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i22, !llvm.loop !80

_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i22: ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27, %.preheader348.._crit_edge390_crit_edge
  %i.cw = phi i64 [ %.pre464, %.preheader348.._crit_edge390_crit_edge ], [ %i.cs, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27 ] ; 2 uses
  %.lcssa384 = phi i64 [ %.promoted388, %.preheader348.._crit_edge390_crit_edge ], [ %i.ct, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i27 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.ci
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !32
  %i.cz = and i64 %i.cy, %i.cw
  %i.da = sub i64 %.lcssa384, %i.ci
  store i64 %i.da, ptr %i.t, align 8, !tbaa !53
  %i.db = lshr i64 %i.cw, %i.ci
  store i64 %i.db, ptr %i.i, align 8, !tbaa !54
  %i.dc = trunc i64 %i.cz to i32
  br label %bb.h

bb.h:                                             ; preds = %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i22, %bb.f
  %.1123.ph = phi i32 [ 0, %bb.f ], [ %i.dc, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i22 ]
  %i.dd = zext i8 %.sroa.6.0.copyload.i to i64    ; 5 uses
  %.not.i16 = icmp eq i8 %.sroa.6.0.copyload.i, 0
  br i1 %.not.i16, label %bb.j, label %.preheader347

.preheader347:                                    ; preds = %bb.h
  %.promoted392 = load i64, ptr %i.t, align 8, !tbaa !53 ; 3 uses
  %i.de = icmp ult i64 %.promoted392, %i.dd
  br i1 %i.de, label %.lr.ph393, label %.preheader347.._crit_edge394_crit_edge

.preheader347.._crit_edge394_crit_edge:           ; preds = %.preheader347
  %.pre465 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i

.lr.ph393:                                        ; preds = %.preheader347
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !48
  %.promoted396 = load ptr, ptr %i.v, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph393, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i
  %i.dg = phi ptr [ %.promoted396, %.lr.ph393 ], [ %i.dp, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 3 uses
  %i.dh = phi i64 [ %.promoted392, %.lr.ph393 ], [ %i.do, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.df
  br i1 %i.di, label %_ZN13duckdb_brotliL12SafeReadBitsEPNS_15BrotliBitReaderEmPm.exit30, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i: ; preds = %bb.i
  %i.dj = load i64, ptr %i.i, align 8, !tbaa !54
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !51
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl i64 %i.dl, %i.dh
  %i.dn = or i64 %i.dm, %i.dj                     ; 2 uses
  store i64 %i.dn, ptr %i.i, align 8, !tbaa !54
  %i.do = add nuw nsw i64 %i.dh, 8                ; 4 uses
  store i64 %i.do, ptr %i.t, align 8, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  store ptr %i.dp, ptr %i.v, align 8, !tbaa !47
  %i.dq = icmp ult i64 %i.do, %i.dd
  br i1 %i.dq, label %bb.i, label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i, !llvm.loop !80

_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i: ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i, %.preheader347.._crit_edge394_crit_edge
  %i.dr = phi i64 [ %.pre465, %.preheader347.._crit_edge394_crit_edge ], [ %i.dn, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 2 uses
  %.lcssa382 = phi i64 [ %.promoted392, %.preheader347.._crit_edge394_crit_edge ], [ %i.do, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.dd
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !32
  %i.du = and i64 %i.dt, %i.dr
  %i.dv = sub i64 %.lcssa382, %i.dd
  store i64 %i.dv, ptr %i.t, align 8, !tbaa !53
  %i.dw = lshr i64 %i.dr, %i.dd
  store i64 %i.dw, ptr %i.i, align 8, !tbaa !54
  %i.dx = trunc i64 %i.du to i32
  br label %bb.j

_ZN13duckdb_brotliL12SafeReadBitsEPNS_15BrotliBitReaderEmPm.exit30: ; preds = %bb.g, %bb.i
  store i64 %i.s, ptr %i.i, align 8, !tbaa !54
  store i64 %i.u, ptr %i.t, align 8, !tbaa !53
  store ptr %i.w, ptr %i.v, align 8, !tbaa !47
  %i.dy = getelementptr i8, ptr %i.w, i64 %i.ab   ; 2 uses
  store ptr %i.dy, ptr %i.x, align 8, !tbaa !48
  %i.dz = add i64 %i.ab, -28
  %i.ea = icmp ult i64 %i.dz, -29
  %i.eb = getelementptr i8, ptr %i.dy, i64 -27
  %.sink = select i1 %i.ea, ptr %i.eb, ptr %i.w
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink, ptr %i.ec, align 8, !tbaa !49
  br label %_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit.thread

_ZN13duckdb_brotliL19ReadCommandInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderEPi.exit.thread: ; preds = %_ZN13duckdb_brotliL12SafeReadBitsEPNS_15BrotliBitReaderEmPm.exit30, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9
  %.13.ph = phi i32 [ %.394.ph, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i9 ], [ %i.ch, %_ZN13duckdb_brotliL12SafeReadBitsEPNS_15BrotliBitReaderEmPm.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread179

bb.j:                                             ; preds = %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i, %bb.h
  %.7131.ph = phi i32 [ 0, %bb.h ], [ %i.dx, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i ]
  %i.ed = zext i16 %.sroa.11.0.copyload.i to i32
  %i.ee = add nsw i32 %.7131.ph, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !172
  %i.eg = load i64, ptr %i.o, align 8, !tbaa !32
  %i.eh = add i64 %i.eg, -1
  store i64 %i.eh, ptr %i.o, align 8, !tbaa !32
  %i.ei = add nsw i32 %.1123.ph, %i.ch            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !62
  %i.em = sub nsw i32 %i.el, %i.ei
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !62
  br label %.preheader345

.preheader345:                                    ; preds = %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit, %bb.k
  %.495.ph = phi i32 [ %i.h, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ], [ %i.ei, %bb.k ]
  %.1290.i.ph = phi i32 [ %i.f, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ], [ %.0289.i.ph, %bb.k ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.l

bb.l:                                             ; preds = %.preheader345, %.thread208.thread
  %.495 = phi i32 [ %.798, %.thread208.thread ], [ %.495.ph, %.preheader345 ] ; 2 uses
  %.1290.i = phi i32 [ %.16.i, %.thread208.thread ], [ %.1290.i.ph, %.preheader345 ] ; 4 uses
  store i32 8, ptr %0, align 8, !tbaa !7
  %i.ez = load i32, ptr %i.en, align 8, !tbaa !99
  %.not396.i = icmp eq i32 %i.ez, 0
  br i1 %.not396.i, label %bb.s, label %.preheader420

.preheader420:                                    ; preds = %bb.l
  %i.fa = sext i32 %.1290.i to i64
  %.pre466 = load i64, ptr %i.ep, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %.preheader420, %bb.r
  %i.fb = phi i64 [ %.pre466, %.preheader420 ], [ %i.he, %bb.r ]
  %indvars.iv = phi i64 [ %i.fa, %.preheader420 ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %.596 = phi i32 [ %.495, %.preheader420 ], [ %i.hj, %bb.r ] ; 4 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.thread208.thread, label %bb.n, !prof !173

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.fd = load ptr, ptr %i.eo, align 8, !tbaa !101 ; 2 uses
  %.promoted397 = load i64, ptr %i.eq, align 8, !tbaa !53 ; 6 uses
  %i.fe = icmp ult i64 %.promoted397, 15
  br i1 %i.fe, label %.lr.ph399, label %.._crit_edge400_crit_edge

.._crit_edge400_crit_edge:                        ; preds = %bb.n
  %.pre467 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %._crit_edge400

.lr.ph399:                                        ; preds = %bb.n
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !48 ; 2 uses
  %.promoted402 = load ptr, ptr %i.er, align 8, !tbaa !47 ; 4 uses
  %i.fg = icmp eq ptr %.promoted402, %i.ff
  br i1 %i.fg, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i: ; preds = %.lr.ph399
  %i.fh = load i64, ptr %i.i, align 8, !tbaa !54
  %i.fi = load i8, ptr %.promoted402, align 1, !tbaa !51
  %i.fj = zext i8 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, %.promoted397
  %i.fl = or i64 %i.fk, %i.fh                     ; 2 uses
  store i64 %i.fl, ptr %i.i, align 8, !tbaa !54
  %i.fm = add nuw nsw i64 %.promoted397, 8        ; 3 uses
  store i64 %i.fm, ptr %i.eq, align 8, !tbaa !53
  %i.fn = getelementptr inbounds nuw i8, ptr %.promoted402, i64 1 ; 3 uses
  store ptr %i.fn, ptr %i.er, align 8, !tbaa !47
  %i.fo = icmp ult i64 %.promoted397, 7
  br i1 %i.fo, label %bb.o, label %._crit_edge400

bb.o:                                             ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i
  %i.fp = icmp eq ptr %i.fn, %i.ff
  br i1 %i.fp, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i.1: ; preds = %bb.o
  %i.fq = load i64, ptr %i.i, align 8, !tbaa !54
  %i.fr = load i8, ptr %i.fn, align 1, !tbaa !51
  %i.fs = zext i8 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, %i.fm
  %i.fu = or i64 %i.ft, %i.fq                     ; 2 uses
  store i64 %i.fu, ptr %i.i, align 8, !tbaa !54
  %i.fv = or disjoint i64 %.promoted397, 16       ; 2 uses
  store i64 %i.fv, ptr %i.eq, align 8, !tbaa !53
  %i.fw = getelementptr inbounds nuw i8, ptr %.promoted402, i64 2
  store ptr %i.fw, ptr %i.er, align 8, !tbaa !47
  br label %._crit_edge400

._crit_edge400:                                   ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i.1, %.._crit_edge400_crit_edge
  %i.fx = phi i64 [ %.promoted397, %.._crit_edge400_crit_edge ], [ %i.fm, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i ], [ %i.fv, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i.1 ] ; 2 uses
  %i.fy = phi i64 [ %.pre467, %.._crit_edge400_crit_edge ], [ %i.fl, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i ], [ %i.fu, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i433.i.1 ] ; 3 uses
  %i.fz = and i64 %i.fy, 255
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fz ; 4 uses
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !73  ; 3 uses
  %i.gc = icmp ugt i8 %i.gb, 8
  br i1 %i.gc, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i:           ; preds = %._crit_edge400
  %i.gd = add i64 %i.fx, -8
  %i.ge = lshr i64 %i.fy, 8                       ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !75
  %i.gh = zext i16 %i.gg to i64
  %i.gi = and i64 %i.ge, 127
  %i.gj = zext i8 %i.gb to i64
  %4 = add nuw nsw i64 %i.gj, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.gk = load i64, ptr %6, align 8, !tbaa !32
  %i.gl = and i64 %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gh ; 2 uses
  %.pre468 = load i8, ptr %i.gn, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i.thread: ; preds = %._crit_edge400, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i
  %i.go = phi i64 [ %i.ge, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.fy, %._crit_edge400 ]
  %i.gp = phi i64 [ %i.gd, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.fx, %._crit_edge400 ]
  %i.gq = phi i8 [ %.pre468, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.gb, %._crit_edge400 ]
  %.0.i437.i = phi ptr [ %i.gn, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ga, %._crit_edge400 ]
  %i.gr = zext i8 %i.gq to i64                    ; 2 uses
  %i.gs = sub i64 %i.gp, %i.gr
  store i64 %i.gs, ptr %i.eq, align 8, !tbaa !53
  %i.gt = lshr i64 %i.go, %i.gr
  store i64 %i.gt, ptr %i.i, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i437.i, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !75
  %i.gw = zext i16 %i.gv to i64
  br label %bb.p

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i: ; preds = %bb.o, %.lr.ph399
  %i.gx = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef %i.fd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c)
  %.not401.not.i = icmp eq i32 %i.gx, 0
  br i1 %.not401.not.i, label %.thread, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i._crit_edge

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i._crit_edge: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i
  %.pre469 = load i64, ptr %i.c, align 8, !tbaa !32
  br label %bb.p

.thread:                                          ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i
  %i.gy = trunc nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.thread179

bb.p:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i._crit_edge, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i.thread
  %i.gz = phi i64 [ %.pre469, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i._crit_edge ], [ %i.gw, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit436.i.thread ]
  %i.ha = trunc i64 %i.gz to i8
  %i.hb = load ptr, ptr %i.et, align 8, !tbaa !50
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %indvars.iv
  store i8 %i.ha, ptr %i.hc, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.hd = load i64, ptr %i.ep, align 8, !tbaa !32
  %i.he = add i64 %i.hd, -1                       ; 2 uses
  store i64 %i.he, ptr %i.ep, align 8, !tbaa !32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hf = load i32, ptr %i.eu, align 4, !tbaa !127 ; 2 uses
  %i.hg = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.hh = icmp eq i32 %i.hf, %i.hg
  br i1 %i.hh, label %bb.q, label %bb.r, !prof !173

bb.q:                                             ; preds = %bb.p
  store i32 13, ptr %0, align 8, !tbaa !7
  %i.hi = add nsw i32 %.596, -1
  br label %.thread179

bb.r:                                             ; preds = %bb.p
  %i.hj = add nsw i32 %.596, -1                   ; 2 uses
  %.not402.i = icmp eq i32 %i.hj, 0
  br i1 %.not402.i, label %.thread185, label %bb.m, !llvm.loop !174

bb.s:                                             ; preds = %bb.l
  %i.hk = load ptr, ptr %i.et, align 8, !tbaa !50 ; 2 uses
  %i.hl = add nsw i32 %.1290.i, -1
  %i.hm = load i32, ptr %i.ev, align 8, !tbaa !135 ; 2 uses
  %i.hn = and i32 %i.hm, %i.hl
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hk, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.hr = add nsw i32 %.1290.i, -2
  %i.hs = and i32 %i.hm, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %i.hk, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !51
  %i.hw = sext i32 %.1290.i to i64
  %.pre470 = load i64, ptr %i.ep, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread220
  %i.hx = phi i64 [ %.pre470, %bb.s ], [ %i.kp, %.thread220 ]
  %indvars.iv455 = phi i64 [ %i.hw, %bb.s ], [ %indvars.iv.next456, %.thread220 ] ; 4 uses
  %.10 = phi i32 [ %.495, %bb.s ], [ %i.ku, %.thread220 ] ; 4 uses
  %.0330.i = phi i8 [ %i.hv, %bb.s ], [ %.0325.i, %.thread220 ]
  %.0325.i = phi i8 [ %i.hq, %bb.s ], [ %.1326.i205, %.thread220 ] ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %.thread208.thread, label %bb.u, !prof !173

bb.u:                                             ; preds = %bb.t
  %i.hz = load ptr, ptr %i.ew, align 8, !tbaa !102 ; 2 uses
  %i.ia = zext i8 %.0325.i to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 256
  %i.ie = zext i8 %.0330.i to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !51
  %i.ih = or i8 %i.ig, %i.ic
  %i.ii = load ptr, ptr %i.ex, align 8, !tbaa !100
  %i.ij = load ptr, ptr %i.ey, align 8, !tbaa !98
  %i.ik = zext i8 %i.ih to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !51
  %i.in = zext i8 %i.im to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %.promoted403 = load i64, ptr %i.eq, align 8, !tbaa !53 ; 6 uses
  %i.iq = icmp ult i64 %.promoted403, 15
  br i1 %i.iq, label %.lr.ph405, label %.._crit_edge406_crit_edge

.._crit_edge406_crit_edge:                        ; preds = %bb.u
  %.pre471 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %._crit_edge406

.lr.ph405:                                        ; preds = %bb.u
  %i.ir = load ptr, ptr %i.es, align 8, !tbaa !48 ; 2 uses
  %.promoted408 = load ptr, ptr %i.er, align 8, !tbaa !47 ; 4 uses
  %i.is = icmp eq ptr %.promoted408, %i.ir
  br i1 %i.is, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i: ; preds = %.lr.ph405
  %i.it = load i64, ptr %i.i, align 8, !tbaa !54
  %i.iu = load i8, ptr %.promoted408, align 1, !tbaa !51
  %i.iv = zext i8 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, %.promoted403
  %i.ix = or i64 %i.iw, %i.it                     ; 2 uses
  store i64 %i.ix, ptr %i.i, align 8, !tbaa !54
  %i.iy = add nuw nsw i64 %.promoted403, 8        ; 3 uses
  store i64 %i.iy, ptr %i.eq, align 8, !tbaa !53
  %i.iz = getelementptr inbounds nuw i8, ptr %.promoted408, i64 1 ; 3 uses
  store ptr %i.iz, ptr %i.er, align 8, !tbaa !47
  %i.ja = icmp ult i64 %.promoted403, 7
  br i1 %i.ja, label %bb.v, label %._crit_edge406

bb.v:                                             ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i
  %i.jb = icmp eq ptr %i.iz, %i.ir
  br i1 %i.jb, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1: ; preds = %bb.v
  %i.jc = load i64, ptr %i.i, align 8, !tbaa !54
  %i.jd = load i8, ptr %i.iz, align 1, !tbaa !51
  %i.je = zext i8 %i.jd to i64
  %i.jf = shl nuw nsw i64 %i.je, %i.iy
  %i.jg = or i64 %i.jf, %i.jc                     ; 2 uses
  store i64 %i.jg, ptr %i.i, align 8, !tbaa !54
  %i.jh = or disjoint i64 %.promoted403, 16       ; 2 uses
  store i64 %i.jh, ptr %i.eq, align 8, !tbaa !53
  %i.ji = getelementptr inbounds nuw i8, ptr %.promoted408, i64 2
  store ptr %i.ji, ptr %i.er, align 8, !tbaa !47
  br label %._crit_edge406

._crit_edge406:                                   ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1, %.._crit_edge406_crit_edge
  %i.jj = phi i64 [ %.promoted403, %.._crit_edge406_crit_edge ], [ %i.iy, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i ], [ %i.jh, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1 ] ; 2 uses
  %i.jk = phi i64 [ %.pre471, %.._crit_edge406_crit_edge ], [ %i.ix, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i ], [ %i.jg, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1 ] ; 3 uses
  %i.jl = and i64 %i.jk, 255
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jl ; 4 uses
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !73  ; 3 uses
  %i.jo = icmp ugt i8 %i.jn, 8
  br i1 %i.jo, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i440.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i440.i:        ; preds = %._crit_edge406
  %i.jp = add i64 %i.jj, -8
  %i.jq = lshr i64 %i.jk, 8                       ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !75
  %i.jt = zext i16 %i.js to i64
  %i.ju = and i64 %i.jq, 127
  %i.jv = zext i8 %i.jn to i64
  %7 = add nuw nsw i64 %i.jv, 4294967288
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %8
  %i.jw = load i64, ptr %9, align 8, !tbaa !32
  %i.jx = and i64 %i.ju, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jt ; 2 uses
  %.pre472 = load i8, ptr %i.jz, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread: ; preds = %._crit_edge406, %_ZN13duckdb_brotliL7BitMaskEm.exit.i440.i
  %i.ka = phi i64 [ %i.jq, %_ZN13duckdb_brotliL7BitMaskEm.exit.i440.i ], [ %i.jk, %._crit_edge406 ]
  %i.kb = phi i64 [ %i.jp, %_ZN13duckdb_brotliL7BitMaskEm.exit.i440.i ], [ %i.jj, %._crit_edge406 ]
  %i.kc = phi i8 [ %.pre472, %_ZN13duckdb_brotliL7BitMaskEm.exit.i440.i ], [ %i.jn, %._crit_edge406 ]
  %.0.i439.i = phi ptr [ %i.jz, %_ZN13duckdb_brotliL7BitMaskEm.exit.i440.i ], [ %i.jm, %._crit_edge406 ]
  %i.kd = zext i8 %i.kc to i64                    ; 2 uses
  %i.ke = sub i64 %i.kb, %i.kd
  store i64 %i.ke, ptr %i.eq, align 8, !tbaa !53
  %i.kf = lshr i64 %i.ka, %i.kd
  store i64 %i.kf, ptr %i.i, align 8, !tbaa !54
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i439.i, i64 2
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !75
  %i.ki = trunc i16 %i.kh to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.w

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i: ; preds = %bb.v, %.lr.ph405
  %i.kj = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef %i.ip, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d)
  %.not398.not.i = icmp eq i32 %i.kj, 0
  %i.kk = load i64, ptr %i.d, align 8
  %i.kl = trunc i64 %i.kk to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br i1 %.not398.not.i, label %.thread179.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i
  %.1326.i205 = phi i8 [ %i.ki, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread ], [ %i.kl, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i ] ; 2 uses
  %i.km = load ptr, ptr %i.et, align 8, !tbaa !50
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %indvars.iv455
  store i8 %.1326.i205, ptr %i.kn, align 1, !tbaa !51
  %i.ko = load i64, ptr %i.ep, align 8, !tbaa !32
  %i.kp = add i64 %i.ko, -1                       ; 2 uses
  store i64 %i.kp, ptr %i.ep, align 8, !tbaa !32
  %indvars.iv.next456 = add nsw i64 %indvars.iv455, 1 ; 2 uses
  %i.kq = load i32, ptr %i.eu, align 4, !tbaa !127 ; 2 uses
  %i.kr = trunc nsw i64 %indvars.iv.next456 to i32 ; 2 uses
  %i.ks = icmp eq i32 %i.kq, %i.kr
  br i1 %i.ks, label %.thread208.thread333, label %.thread220, !prof !173

.thread208.thread333:                             ; preds = %bb.w
  store i32 13, ptr %0, align 8, !tbaa !7
  %i.kt = add nsw i32 %.10, -1
  br label %.thread179

.thread220:                                       ; preds = %bb.w
  %i.ku = add nsw i32 %.10, -1                    ; 2 uses
  %.not399.i = icmp eq i32 %i.ku, 0
  br i1 %.not399.i, label %.thread185, label %bb.t, !llvm.loop !175

.thread185:                                       ; preds = %bb.r, %.thread220
  %.6295.i = phi i32 [ %i.kr, %.thread220 ], [ %i.hg, %bb.r ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !62
  %i.kx = icmp slt i32 %i.kw, 1
  br i1 %i.kx, label %bb.x, label %bb.y, !prof !173

bb.x:                                             ; preds = %.thread185
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.thread179

bb.y:                                             ; preds = %.thread185, %bb.j, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit
  %.9 = phi i32 [ 0, %bb.j ], [ 0, %.thread185 ], [ %i.h, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ] ; 2 uses
  %.7296.i = phi i32 [ %.0289.i.ph, %bb.j ], [ %.6295.i, %.thread185 ], [ %i.f, %_ZN13duckdb_brotliL25GetCompoundDictionarySizeEPNS_24BrotliDecoderStateStructE.exit ] ; 14 uses
  store i32 9, ptr %0, align 8, !tbaa !7
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !168 ; 2 uses
  %i.la = icmp sgt i32 %i.kz, -1
  br i1 %i.la, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.not406.i = icmp eq i32 %i.kz, 0
  %i.lb = zext i1 %.not406.i to i32               ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !169
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !176
  %i.lf = add nsw i32 %i.le, -1                   ; 2 uses
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !176
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lh = and i32 %i.lf, 3
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !3  ; 2 uses
  store i32 %i.lk, ptr %i.ky, align 8, !tbaa !168
  br label %bb.ak

bb.aa:                                            ; preds = %bb.y
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !32
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.ab, label %bb.ac, !prof !173

bb.ab:                                            ; preds = %bb.aa
  %i.lo = tail call fastcc noundef i32 @_ZN13duckdb_brotliL29SafeDecodeDistanceBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %.not404.i = icmp eq i32 %i.lo, 0
  br i1 %.not404.i, label %.thread179, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !177
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.lt = load i8, ptr %i.ls, align 4, !tbaa !170
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !96 ; 2 uses
  %i.lx = load i64, ptr %i.i, align 8, !tbaa !54  ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !53 ; 7 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !47 ; 8 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !48 ; 3 uses
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.mb to i64
  %i.mg = sub i64 %i.me, %i.mf                    ; 2 uses
  %i.mh = icmp ult i64 %i.lz, 15
  br i1 %i.mh, label %.lr.ph410, label %._crit_edge411

.lr.ph410:                                        ; preds = %bb.ac
  %i.mi = icmp eq ptr %i.mb, %i.md
  br i1 %i.mi, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41: ; preds = %.lr.ph410
  %i.mj = load i8, ptr %i.mb, align 1, !tbaa !51
  %i.mk = zext i8 %i.mj to i64
  %i.ml = shl nuw nsw i64 %i.mk, %i.lz
  %i.mm = or i64 %i.ml, %i.lx                     ; 3 uses
  store i64 %i.mm, ptr %i.i, align 8, !tbaa !54
  %i.mn = add nuw nsw i64 %i.lz, 8                ; 3 uses
  store i64 %i.mn, ptr %i.ly, align 8, !tbaa !53
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mb, i64 1 ; 3 uses
  store ptr %i.mo, ptr %i.ma, align 8, !tbaa !47
  %i.mp = icmp ult i64 %i.lz, 7
  br i1 %i.mp, label %.lr.ph410.1, label %._crit_edge411

.lr.ph410.1:                                      ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41
  %i.mq = icmp eq ptr %i.mo, %i.md
  br i1 %i.mq, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41.1: ; preds = %.lr.ph410.1
  %i.mr = load i8, ptr %i.mo, align 1, !tbaa !51
  %i.ms = zext i8 %i.mr to i64
  %i.mt = shl nuw nsw i64 %i.ms, %i.mn
  %i.mu = or i64 %i.mt, %i.mm                     ; 2 uses
  store i64 %i.mu, ptr %i.i, align 8, !tbaa !54
  %i.mv = or disjoint i64 %i.lz, 16               ; 2 uses
  store i64 %i.mv, ptr %i.ly, align 8, !tbaa !53
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mb, i64 2
  store ptr %i.mw, ptr %i.ma, align 8, !tbaa !47
  br label %._crit_edge411

._crit_edge411:                                   ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41.1, %bb.ac
  %i.mx = phi i64 [ %i.lz, %bb.ac ], [ %i.mn, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41 ], [ %i.mv, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41.1 ] ; 2 uses
  %i.my = phi i64 [ %i.lx, %bb.ac ], [ %i.mm, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41 ], [ %i.mu, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i41.1 ] ; 3 uses
  %i.mz = and i64 %i.my, 255
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.mz ; 4 uses
  %i.nb = load i8, ptr %i.na, align 2, !tbaa !73  ; 3 uses
  %i.nc = icmp ugt i8 %i.nb, 8
  br i1 %i.nc, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i40, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i40:         ; preds = %._crit_edge411
  %i.nd = add i64 %i.mx, -8
  %i.ne = lshr i64 %i.my, 8                       ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !75
  %i.nh = zext i16 %i.ng to i64
  %i.ni = and i64 %i.ne, 127
  %i.nj = zext i8 %i.nb to i64
  %10 = add nuw nsw i64 %i.nj, 4294967288
  %11 = and i64 %10, 4294967295
  %12 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %11
  %i.nk = load i64, ptr %12, align 8, !tbaa !32
  %i.nl = and i64 %i.ni, %i.nk
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.nh ; 2 uses
  %.pre473 = load i8, ptr %i.nn, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35.thread: ; preds = %._crit_edge411, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i40
  %i.no = phi i64 [ %i.ne, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i40 ], [ %i.my, %._crit_edge411 ]
  %i.np = phi i64 [ %i.nd, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i40 ], [ %i.mx, %._crit_edge411 ]
  %i.nq = phi i8 [ %.pre473, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i40 ], [ %i.nb, %._crit_edge411 ]
  %.0.i25.i = phi ptr [ %i.nn, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i40 ], [ %i.na, %._crit_edge411 ]
  %i.nr = zext i8 %i.nq to i64                    ; 2 uses
  %i.ns = sub i64 %i.np, %i.nr
  store i64 %i.ns, ptr %i.ly, align 8, !tbaa !53
  %i.nt = lshr i64 %i.no, %i.nr
  store i64 %i.nt, ptr %i.i, align 8, !tbaa !54
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 2
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !75
  %i.nw = zext i16 %i.nv to i64
  br label %bb.ad

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35: ; preds = %.lr.ph410.1, %.lr.ph410
  %i.nx = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef %i.lw, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a)
  %.not23.i = icmp eq i32 %i.nx, 0
  br i1 %.not23.i, label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit.thread, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35._crit_edge

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35._crit_edge: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35
  %.pre474 = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35._crit_edge, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35.thread
  %i.ny = phi i64 [ %.pre474, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35._crit_edge ], [ %i.nw, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35.thread ] ; 4 uses
  %i.nz = load i64, ptr %i.ll, align 8, !tbaa !32 ; 2 uses
  %i.oa = add i64 %i.nz, -1
  store i64 %i.oa, ptr %i.ll, align 8, !tbaa !32
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  store i32 0, ptr %i.ob, align 4, !tbaa !169
  %i.oc = and i64 %i.ny, 4294967280
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.oe = trunc i64 %i.ny to i32                  ; 6 uses
  store i32 %i.oe, ptr %i.ky, align 8, !tbaa !168
  %i.of = icmp slt i32 %i.oe, 4
  br i1 %i.of, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.neg.i = xor i32 %i.oe, -1
  %i.og = icmp eq i32 %i.oe, 0
  %i.oh = zext i1 %i.og to i32                    ; 3 uses
  store i32 %i.oh, ptr %i.ob, align 4, !tbaa !169
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !176 ; 2 uses
  %i.ol = add i32 %i.ok, %.neg.i
  %i.om = and i32 %i.ol, 3
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !3  ; 2 uses
  store i32 %i.op, ptr %i.ky, align 8, !tbaa !168
  %i.oq = sub nsw i32 %i.ok, %i.oh
  store i32 %i.oq, ptr %i.oj, align 4, !tbaa !176
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.ag:                                            ; preds = %bb.ae
  %i.or = icmp samesign ult i32 %i.oe, 10         ; 2 uses
  %.020.i = select i1 %i.or, i32 3, i32 10
  %.0.i44.v = select i1 %i.or, i32 -4, i32 -10
  %.0.i44 = add nsw i32 %.0.i44.v, %i.oe
  %i.os = shl nsw i32 %.0.i44, 2
  %i.ot = lshr i32 6312258, %i.os
  %i.ou = and i32 %i.ot, 7
  %i.ov = add nsw i32 %i.ou, -3
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !176
  %i.oz = add i32 %i.oy, %.020.i
  %i.pa = and i32 %i.oz, 3
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !3
  %i.pe = add nsw i32 %i.ov, %i.pd                ; 2 uses
  %i.pf = icmp slt i32 %i.pe, 1
  %storemerge.i = select i1 %i.pf, i32 2147483647, i32 %i.pe ; 2 uses
  store i32 %storemerge.i, ptr %i.ky, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.ah:                                            ; preds = %bb.ad
  %i.pg = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ny
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !51  ; 2 uses
  %i.pi = zext i8 %i.ph to i64                    ; 5 uses
  %.not.i45 = icmp eq i8 %i.ph, 0
  br i1 %.not.i45, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.ah
  %.promoted413 = load i64, ptr %i.ly, align 8, !tbaa !53 ; 3 uses
  %i.pj = icmp ult i64 %.promoted413, %i.pi
  br i1 %i.pj, label %.lr.ph414, label %.preheader.._crit_edge415_crit_edge

.preheader.._crit_edge415_crit_edge:              ; preds = %.preheader
  %.pre475 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47

.lr.ph414:                                        ; preds = %.preheader
  %i.pk = load ptr, ptr %i.mc, align 8, !tbaa !48
  %.promoted417 = load ptr, ptr %i.ma, align 8, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph414, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50
  %i.pl = phi ptr [ %.promoted417, %.lr.ph414 ], [ %i.pu, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ] ; 3 uses
  %i.pm = phi i64 [ %.promoted413, %.lr.ph414 ], [ %i.pt, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ] ; 2 uses
  %i.pn = icmp eq ptr %i.pl, %i.pk
  br i1 %i.pn, label %_ZN13duckdb_brotliL14SafeReadBits32EPNS_15BrotliBitReaderEmPm.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50: ; preds = %bb.ai
  %i.po = load i64, ptr %i.i, align 8, !tbaa !54
  %i.pp = load i8, ptr %i.pl, align 1, !tbaa !51
  %i.pq = zext i8 %i.pp to i64
  %i.pr = shl i64 %i.pq, %i.pm
  %i.ps = or i64 %i.pr, %i.po                     ; 2 uses
  store i64 %i.ps, ptr %i.i, align 8, !tbaa !54
  %i.pt = add nuw nsw i64 %i.pm, 8                ; 4 uses
  store i64 %i.pt, ptr %i.ly, align 8, !tbaa !53
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pl, i64 1 ; 2 uses
  store ptr %i.pu, ptr %i.ma, align 8, !tbaa !47
  %i.pv = icmp ult i64 %i.pt, %i.pi
  br i1 %i.pv, label %bb.ai, label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47, !llvm.loop !192

_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47: ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50, %.preheader.._crit_edge415_crit_edge
  %i.pw = phi i64 [ %.pre475, %.preheader.._crit_edge415_crit_edge ], [ %i.ps, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ] ; 2 uses
  %.lcssa360 = phi i64 [ %.promoted413, %.preheader.._crit_edge415_crit_edge ], [ %i.pt, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ]
  %i.px = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.pi
  %i.py = load i64, ptr %i.px, align 8, !tbaa !32
  %i.pz = and i64 %i.py, %i.pw
  %i.qa = sub i64 %.lcssa360, %i.pi
  store i64 %i.qa, ptr %i.ly, align 8, !tbaa !53
  %i.qb = lshr i64 %i.pw, %i.pi
  store i64 %i.qb, ptr %i.i, align 8, !tbaa !54
  br label %bb.aj

_ZN13duckdb_brotliL14SafeReadBits32EPNS_15BrotliBitReaderEmPm.exit: ; preds = %bb.ai
  store i64 %i.nz, ptr %i.ll, align 8, !tbaa !32
  store i64 %i.lx, ptr %i.i, align 8, !tbaa !54
  store i64 %i.lz, ptr %i.ly, align 8, !tbaa !53
  store ptr %i.mb, ptr %i.ma, align 8, !tbaa !47
  %i.qc = getelementptr i8, ptr %i.mb, i64 %i.mg  ; 2 uses
  store ptr %i.qc, ptr %i.mc, align 8, !tbaa !48
  %i.qd = add i64 %i.mg, -28
  %i.qe = icmp ult i64 %i.qd, -29
  %i.qf = getelementptr i8, ptr %i.qc, i64 -27
  %.sink595 = select i1 %i.qe, ptr %i.qf, ptr %i.mb
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink595, ptr %i.qg, align 8, !tbaa !49
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit.thread

bb.aj:                                            ; preds = %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47, %bb.ah
  %.6.ph = phi i64 [ 0, %bb.ah ], [ %i.pz, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47 ]
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.ny
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !32
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !81
  %i.qm = shl i64 %.6.ph, %i.ql
  %i.qn = add i64 %i.qm, %i.qj
  %i.qo = trunc i64 %i.qn to i32                  ; 2 uses
  store i32 %i.qo, ptr %i.ky, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit.thread: ; preds = %_ZN13duckdb_brotliL14SafeReadBits32EPNS_15BrotliBitReaderEmPm.exit, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.thread179

_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit: ; preds = %bb.ag, %bb.af, %bb.aj
  %i.qp = phi i32 [ 0, %bb.ag ], [ %i.oh, %bb.af ], [ 0, %bb.aj ]
  %i.qq = phi i32 [ %storemerge.i, %bb.ag ], [ %i.op, %bb.af ], [ %i.qo, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit, %bb.z
  %i.qr = phi i32 [ %i.qp, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit ], [ %i.lb, %bb.z ]
  %i.qs = phi i32 [ %i.qq, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit ], [ %i.lk, %bb.z ] ; 6 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !128 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !57 ; 2 uses
  %.not407.i = icmp eq i32 %i.qu, %i.qw
  br i1 %.not407.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.7296..i = tail call i32 @llvm.smin.i32(i32 %.7296.i, i32 %i.qw) ; 2 uses
  store i32 %.7296..i, ptr %i.qt, align 8, !tbaa !128
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.qx = phi i32 [ %.7296..i, %bb.al ], [ %i.qu, %bb.ak ] ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !172 ; 21 uses
  %i.ra = icmp sgt i32 %i.qs, %i.qx
  br i1 %i.ra, label %bb.an, label %bb.bt
end_hunk_2
begin_hunk_3_@_ZN13duckdb_brotliL27InverseMoveToFrontTransformEPhmPNS_24BrotliDecoderStateStructE:bb.a
  %n.vec = and i64 %i.e, -8                       ; 4 uses
  %i.f = trunc i64 %n.vec to i32
  %i.g = mul i32 %i.f, 67372036
  %i.h = add i32 %i.g, 50462976
  %i.i = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.j = add <4 x i32> %vec.ind, splat (i32 67372036)
  %i.k = add <4 x i32> %vec.ind, splat (i32 336860180)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store <4 x i32> %i.j, ptr %i.m, align 4, !tbaa !3
  store <4 x i32> %i.k, ptr %i.n, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 538976288)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.035.ph = phi i32 [ 50462976, %bb.a ], [ %i.h, %middle.block ]
  %.0.ph = phi i64 [ 1, %bb.a ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.035 = phi i32 [ %i.p, %scalar.ph ], [ %.035.ph, %scalar.ph.preheader ]
  %.0 = phi i64 [ %i.r, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = add i32 %.035, 67372036                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  %i.r = add nuw i64 %.0, 1                       ; 2 uses
  %exitcond = icmp eq i64 %i.r, %umax
  br i1 %exitcond, label %.preheader, label %scalar.ph, !llvm.loop !195

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr i8, ptr %2, i64 451        ; 6 uses
  %xtraiter = and i64 %1, 1
  %i.t = icmp eq i64 %1, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.139 = phi i64 [ 0, %.lr.ph.new ], [ %i.aj, %bb.b ] ; 3 uses
  %.03638 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.139 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !51
  %i.w = zext i8 %i.v to i64                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51    ; 2 uses
  store i8 %i.y, ptr %i.u, align 1, !tbaa !51
  store i8 %i.y, ptr %i.s, align 1, !tbaa !51
  %i.z = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.z, i1 false), !tbaa !51
  %i.aa = or i64 %.03638, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.139
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !51
  %i.ae = zext i8 %i.ad to i64                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !51  ; 2 uses
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !51
  store i8 %i.ag, ptr %i.s, align 1, !tbaa !51
  %i.ah = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.ah, i1 false), !tbaa !51
  %i.ai = or i64 %i.aa, %i.ae                     ; 3 uses
  %i.aj = add nuw i64 %.139, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !196

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.139.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %.03638.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.139.epil.init ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51
  %i.am = zext i8 %i.al to i64                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !51  ; 2 uses
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !51
  store i8 %i.ao, ptr %i.s, align 1, !tbaa !51
  %i.ap = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.ap, i1 false), !tbaa !51
  %i.aq = or i64 %.03638.epil.init, %i.am
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.aq, %.epil.preheader ]
  %i.ar = lshr i64 %.lcssa, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.036.lcssa = phi i64 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit ]
  store i64 %.036.lcssa, ptr %i.a, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN13duckdb_brotliL28SafeDecodeCommandBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2528 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1584 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.m = icmp ult i64 %i.d, 2
  br i1 %i.m, label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.k, align 8, !tbaa !54   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp ult i64 %i.p, 15
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.y = icmp eq ptr %i.r, %i.t
  br i1 %i.y, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i: ; preds = %.lr.ph
  %i.z = load i8, ptr %i.r, align 1, !tbaa !51
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, %i.p
  %i.ac = or i64 %i.ab, %i.n                      ; 3 uses
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !54
  %i.ad = add nuw nsw i64 %i.p, 8                 ; 3 uses
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !47
  %i.af = icmp ult i64 %i.p, 7
  br i1 %i.af, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i
  %i.ag = icmp eq ptr %i.ae, %i.t
  br i1 %i.ag, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1: ; preds = %.lr.ph.1
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !51
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, %i.ad
  %i.ak = or i64 %i.aj, %i.ac                     ; 2 uses
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !54
  %i.al = or disjoint i64 %i.p, 16                ; 2 uses
  store i64 %i.al, ptr %i.o, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.am, ptr %i.q, align 8, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1, %bb.b
  %i.an = phi i64 [ %i.p, %bb.b ], [ %i.ad, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i ], [ %i.al, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1 ] ; 2 uses
  %i.ao = phi i64 [ %i.n, %bb.b ], [ %i.ac, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i ], [ %i.ak, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1 ] ; 3 uses
  %i.ap = and i64 %i.ao, 255
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !73  ; 3 uses
  %i.as = icmp ugt i8 %i.ar, 8
  br i1 %i.as, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i:           ; preds = %._crit_edge
  %i.at = add i64 %i.an, -8
  %i.au = lshr i64 %i.ao, 8                       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !75
  %i.ax = zext i16 %i.aw to i64
  %i.ay = and i64 %i.au, 127
  %i.az = zext i8 %i.ar to i64
  %1 = add nuw nsw i64 %i.az, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.ba = load i64, ptr %3, align 8, !tbaa !32
  %i.bb = and i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ax ; 2 uses
  %.pre = load i8, ptr %i.bd, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.thread: ; preds = %._crit_edge, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i
  %i.be = phi i64 [ %i.au, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ao, %._crit_edge ]
  %i.bf = phi i64 [ %i.at, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.an, %._crit_edge ]
  %i.bg = phi i8 [ %.pre, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ar, %._crit_edge ]
  %.0.i56.i = phi ptr [ %i.bd, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.aq, %._crit_edge ]
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = sub i64 %i.bf, %i.bh
  store i64 %i.bi, ptr %i.o, align 8, !tbaa !53
  %i.bj = lshr i64 %i.be, %i.bh
  store i64 %i.bj, ptr %i.k, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i56.i, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !75
  %i.bm = zext i16 %i.bl to i64
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i: ; preds = %.lr.ph.1, %.lr.ph
  %i.bn = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef nonnull %i.g, ptr noundef nonnull %i.k, ptr noundef nonnull %i.b)
  %.not39.i = icmp eq i32 %i.bn, 0
  br i1 %.not39.i, label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.thread, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !72
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.pr32 = load i64, ptr %i.o, align 8, !tbaa !53 ; 6 uses
  %i.bs = icmp ult i64 %.pr32, 15
  br i1 %i.bs, label %.lr.ph35, label %.._crit_edge36_crit_edge

.._crit_edge36_crit_edge:                         ; preds = %bb.d
  %.pre44 = load i64, ptr %i.k, align 8, !tbaa !54
  br label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.d
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !48  ; 2 uses
  %.promoted37 = load ptr, ptr %i.q, align 8, !tbaa !47 ; 4 uses
  %i.bu = icmp eq ptr %.promoted37, %i.bt
  br i1 %i.bu, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i: ; preds = %.lr.ph35
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !54
  %i.bw = load i8, ptr %.promoted37, align 1, !tbaa !51
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, %.pr32
  %i.bz = or i64 %i.by, %i.bv                     ; 2 uses
  store i64 %i.bz, ptr %i.k, align 8, !tbaa !54
  %i.ca = add nuw nsw i64 %.pr32, 8               ; 3 uses
  store i64 %i.ca, ptr %i.o, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %.promoted37, i64 1 ; 3 uses
  store ptr %i.cb, ptr %i.q, align 8, !tbaa !47
  %i.cc = icmp ult i64 %.pr32, 7
  br i1 %i.cc, label %bb.e, label %._crit_edge36

bb.e:                                             ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i
  %i.cd = icmp eq ptr %i.cb, %i.bt
  br i1 %i.cd, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1: ; preds = %bb.e
  %i.ce = load i64, ptr %i.k, align 8, !tbaa !54
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !51
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, %i.ca
  %i.ci = or i64 %i.ch, %i.ce                     ; 2 uses
  store i64 %i.ci, ptr %i.k, align 8, !tbaa !54
  %i.cj = or disjoint i64 %.pr32, 16              ; 2 uses
  store i64 %i.cj, ptr %i.o, align 8, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %.promoted37, i64 2
  store ptr %i.ck, ptr %i.q, align 8, !tbaa !47
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1, %.._crit_edge36_crit_edge
  %i.cl = phi i64 [ %.pr32, %.._crit_edge36_crit_edge ], [ %i.ca, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i ], [ %i.cj, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1 ] ; 2 uses
  %i.cm = phi i64 [ %.pre44, %.._crit_edge36_crit_edge ], [ %i.bz, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i ], [ %i.ci, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.1 ] ; 3 uses
  %i.cn = and i64 %i.cm, 255
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cn ; 4 uses
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !73  ; 3 uses
  %i.cq = icmp ugt i8 %i.cp, 8
  br i1 %i.cq, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i:         ; preds = %._crit_edge36
  %i.cr = add i64 %i.cl, -8
  %i.cs = lshr i64 %i.cm, 8                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !75
  %i.cv = zext i16 %i.cu to i64
  %i.cw = and i64 %i.cs, 127
  %i.cx = zext i8 %i.cp to i64
  %4 = add nuw nsw i64 %i.cx, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.cy = load i64, ptr %6, align 8, !tbaa !32
  %i.cz = and i64 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cv ; 2 uses
  %.pre45 = load i8, ptr %i.db, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread: ; preds = %._crit_edge36, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i
  %i.dc = phi i64 [ %i.cs, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i ], [ %i.cm, %._crit_edge36 ]
  %i.dd = phi i64 [ %i.cr, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i ], [ %i.cl, %._crit_edge36 ]
  %i.de = phi i8 [ %.pre45, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i ], [ %i.cp, %._crit_edge36 ]
  %.0.i58.i = phi ptr [ %i.db, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i ], [ %i.co, %._crit_edge36 ]
  %i.df = zext i8 %i.de to i64                    ; 2 uses
  %i.dg = sub i64 %i.dd, %i.df
  store i64 %i.dg, ptr %i.o, align 8, !tbaa !53
  %i.dh = lshr i64 %i.dc, %i.df
  store i64 %i.dh, ptr %i.k, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i58.i, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !75
  %i.dk = zext i16 %i.dj to i64
  br label %bb.g

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i: ; preds = %bb.e, %.lr.ph35
  %i.dl = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.thread, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i._crit_edge

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i._crit_edge: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i
  %.pre46 = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i._crit_edge, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread, %bb.f
  %i.do = phi i64 [ %.pre46, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i._crit_edge ], [ %i.dk, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.thread ], [ %i.dn, %bb.f ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !77
  %i.ds = zext i8 %i.dr to i64                    ; 5 uses
  %i.dt = load i16, ptr %i.dp, align 4, !tbaa !79
  %.promoted38 = load i64, ptr %i.o, align 8, !tbaa !53 ; 3 uses
  %i.du = icmp ult i64 %.promoted38, %i.ds
  br i1 %i.du, label %.lr.ph40, label %.._crit_edge41_crit_edge

.._crit_edge41_crit_edge:                         ; preds = %bb.g
  %.pre47 = load i64, ptr %i.k, align 8, !tbaa !54
  br label %._crit_edge41

.lr.ph40:                                         ; preds = %bb.g
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !48
  %.promoted42 = load ptr, ptr %i.q, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph40, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i
  %i.dw = phi ptr [ %.promoted42, %.lr.ph40 ], [ %i.ef, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 3 uses
  %i.dx = phi i64 [ %.promoted38, %.lr.ph40 ], [ %i.ee, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dv
  br i1 %i.dy, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.thread26, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i: ; preds = %bb.h
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !54
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !51
  %i.eb = zext i8 %i.ea to i64
  %i.ec = shl i64 %i.eb, %i.dx
  %i.ed = or i64 %i.ec, %i.dz                     ; 2 uses
  store i64 %i.ed, ptr %i.k, align 8, !tbaa !54
  %i.ee = add nuw nsw i64 %i.dx, 8                ; 4 uses
  store i64 %i.ee, ptr %i.o, align 8, !tbaa !53
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  store ptr %i.ef, ptr %i.q, align 8, !tbaa !47
  %i.eg = icmp ult i64 %i.ee, %i.ds
  br i1 %i.eg, label %bb.h, label %._crit_edge41, !llvm.loop !80

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.thread26: ; preds = %bb.h
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.do, ptr %i.eh, align 8, !tbaa !76
  br label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.thread

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.thread: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.thread26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.bp, align 4, !tbaa !72
  store i64 %i.n, ptr %i.k, align 8, !tbaa !54
  store i64 %i.p, ptr %i.o, align 8, !tbaa !53
  store ptr %i.r, ptr %i.q, align 8, !tbaa !47
  %i.ei = getelementptr i8, ptr %i.r, i64 %i.w    ; 2 uses
  store ptr %i.ei, ptr %i.s, align 8, !tbaa !48
  %i.ej = add i64 %i.w, -28
  %i.ek = icmp ult i64 %i.ej, -29
  %i.el = getelementptr i8, ptr %i.ei, i64 -27
  %.sink = select i1 %i.ek, ptr %i.el, ptr %i.r
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink, ptr %i.em, align 8, !tbaa !49
  br label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.thread

._crit_edge41:                                    ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i, %.._crit_edge41_crit_edge
  %i.en = phi i64 [ %.pre47, %.._crit_edge41_crit_edge ], [ %i.ed, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 2 uses
  %.lcssa = phi i64 [ %.promoted38, %.._crit_edge41_crit_edge ], [ %i.ee, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.ds
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !32
  %i.eq = and i64 %i.ep, %i.en
  %i.er = sub i64 %.lcssa, %i.ds
  store i64 %i.er, ptr %i.o, align 8, !tbaa !53
  %i.es = lshr i64 %i.en, %i.ds
  store i64 %i.es, ptr %i.k, align 8, !tbaa !54
  %i.et = zext i16 %i.dt to i64
  %i.eu = add i64 %i.eq, %i.et
  store i64 %i.eu, ptr %i.bo, align 8, !tbaa !32
  store i32 0, ptr %i.bp, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  switch i64 %i.ev, label %bb.k [
    i64 1, label %bb.i
    i64 0, label %bb.j
  ]

bb.i:                                             ; preds = %._crit_edge41
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !32
  %i.ey = add i64 %i.ex, 1
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge41
  %i.ez = load i64, ptr %i.l, align 8, !tbaa !32
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge41
  %i.fa = add i64 %i.ev, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.fb = phi i64 [ %i.fa, %bb.k ], [ %i.ez, %bb.j ], [ %i.ey, %bb.i ] ; 2 uses
  %.not41.i = icmp ult i64 %i.fb, %i.d
  %i.fc = select i1 %.not41.i, i64 0, i64 %i.d
  %spec.select = sub nuw i64 %i.fb, %i.fc         ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !32
  store i64 %i.fe, ptr %i.l, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.fd, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !105
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %spec.select
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !96
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !106
  br label %_ZN13duckdb_brotliL32DecodeCommandBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.thread: ; preds = %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.thread, %bb.a, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN13duckdb_brotliL32DecodeCommandBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL32DecodeCommandBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit: ; preds = %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.thread, %bb.l
  %.0.i = phi i32 [ 1, %bb.l ], [ 0, %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.thread ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN13duckdb_brotliL24DecodeCommandBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2528
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1584
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.k = icmp ult i64 %i.b, 2
  br i1 %i.k, label %_ZN13duckdb_brotliL32DecodeCommandBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53   ; 4 uses
  %i.n = icmp ult i64 %i.m, 17
  %.pre = load i64, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  br i1 %i.n, label %bb.c, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.0.copyload.i.i8 = load i64, ptr %i.p, align 1
  %i.q = shl i64 %.0.copyload.i.i8, %i.m
  %i.r = or i64 %i.q, %.pre
  %i.s = add nuw nsw i64 %i.m, 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  store ptr %i.t, ptr %i.o, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9: ; preds = %bb.b, %bb.c
  %i.u = phi i64 [ %i.m, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.pre, %bb.b ], [ %i.r, %bb.c ] ; 3 uses
  %i.w = and i64 %i.v, 255
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.w ; 4 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !73    ; 3 uses
  %i.z = icmp ugt i8 %i.y, 8
  br i1 %i.z, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i, label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i:         ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9
  %i.aa = add i64 %i.u, -8
  %i.ab = lshr i64 %i.v, 8                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !75
  %i.ae = zext i16 %i.ad to i64
  %i.af = zext i8 %i.y to i64
  %1 = add nuw nsw i64 %i.af, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.ag = load i64, ptr %3, align 8, !tbaa !32
  %i.ah = and i64 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %.pre15 = load i8, ptr %i.aj, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9
  %i.ak = phi i64 [ %i.ab, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.v, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9 ]
  %i.al = phi i64 [ %i.aa, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.u, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9 ]
  %i.am = phi i8 [ %.pre15, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.y, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9 ]
  %.0.i.i62.i = phi ptr [ %i.aj, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.x, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit9 ]
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %i.ao = sub i64 %i.al, %i.an                    ; 5 uses
  store i64 %i.ao, ptr %i.l, align 8, !tbaa !53
  %i.ap = lshr i64 %i.ak, %i.an                   ; 3 uses
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i62.i, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !75 ; 2 uses
  %i.as = zext i16 %i.ar to i64
  %i.at = icmp ult i64 %i.ao, 17
  br i1 %i.at, label %bb.d, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit

bb.d:                                             ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %.0.copyload.i.i6 = load i64, ptr %i.av, align 1
  %i.aw = shl i64 %.0.copyload.i.i6, %i.ao
  %i.ax = or i64 %i.aw, %i.ap
  %i.ay = add nuw nsw i64 %i.ao, 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store ptr %i.az, ptr %i.au, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit: ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i, %bb.d
  %i.ba = phi i64 [ %i.ao, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ], [ %i.ay, %bb.d ] ; 2 uses
  %i.bb = phi i64 [ %i.ap, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ], [ %i.ax, %bb.d ] ; 3 uses
  %i.bc = and i64 %i.bb, 255
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bc ; 4 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !73  ; 3 uses
  %i.bf = icmp ugt i8 %i.be, 8
  br i1 %i.bf, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i2, label %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i2:        ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit
  %i.bg = add i64 %i.ba, -8
  %i.bh = lshr i64 %i.bb, 8                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !75
  %i.bk = zext i16 %i.bj to i64
  %i.bl = zext i8 %i.be to i64
  %4 = add nuw nsw i64 %i.bl, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.bm = load i64, ptr %6, align 8, !tbaa !32
  %i.bn = and i64 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 2 uses
  %.pre16 = load i8, ptr %i.bp, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit: ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i2
  %i.bq = phi i64 [ %i.bh, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i2 ], [ %i.bb, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %i.br = phi i64 [ %i.bg, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i2 ], [ %i.ba, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %i.bs = phi i8 [ %.pre16, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i2 ], [ %i.be, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %.0.i.i.i = phi ptr [ %i.bp, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i2 ], [ %i.bd, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit ]
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %i.bu = sub i64 %i.br, %i.bt                    ; 5 uses
  store i64 %i.bu, ptr %i.l, align 8, !tbaa !53
  %i.bv = lshr i64 %i.bq, %i.bt                   ; 3 uses
  store i64 %i.bv, ptr %i.i, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !75
  %i.by = zext i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !77
  %i.cc = zext i8 %i.cb to i64                    ; 3 uses
  %i.cd = load i16, ptr %i.bz, align 4, !tbaa !79
  %i.ce = zext i16 %i.cd to i64
  %i.cf = icmp ult i64 %i.bu, 33
  br i1 %i.cf, label %bb.e, label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit

bb.e:                                             ; preds = %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %.0.copyload.i4.i = load i32, ptr %i.ch, align 1
  %i.ci = zext i32 %.0.copyload.i4.i to i64
  %i.cj = shl nuw i64 %i.ci, %i.bu
  %i.ck = or i64 %i.cj, %i.bv
  %i.cl = add nuw nsw i64 %i.bu, 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit

_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit: ; preds = %bb.e, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit
  %i.cn = phi i64 [ %i.cl, %bb.e ], [ %i.bu, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit ]
  %i.co = phi i64 [ %i.ck, %bb.e ], [ %i.bv, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.cc
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !32
  %i.cr = and i64 %i.cq, %i.co
  %i.cs = sub i64 %i.cn, %i.cc
  store i64 %i.cs, ptr %i.l, align 8, !tbaa !53
  %i.ct = lshr i64 %i.co, %i.cc
  store i64 %i.ct, ptr %i.i, align 8, !tbaa !54
  %i.cu = add i64 %i.cr, %i.ce
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !32
  switch i16 %i.ar, label %bb.h [
    i16 1, label %bb.f
    i16 0, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !32
  %i.cy = add i64 %i.cx, 1
  br label %bb.i

bb.g:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !32
  br label %bb.i

bb.h:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit
  %i.da = add nsw i64 %i.as, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.da, %bb.h ], [ %i.cy, %bb.f ], [ %i.cz, %bb.g ] ; 2 uses
  %.not41.i = icmp ult i64 %.0, %i.b
  %i.db = select i1 %.not41.i, i64 0, i64 %i.b
  %spec.select = sub nuw i64 %.0, %i.db           ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !32
  store i64 %i.dd, ptr %i.j, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.dc, align 8, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !105
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %spec.select
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !96
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !106
  br label %_ZN13duckdb_brotliL32DecodeCommandBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL32DecodeCommandBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN13duckdb_brotliL29SafeDecodeDistanceBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5056 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 3168 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.m = icmp ult i64 %i.d, 2
  br i1 %i.m, label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.k, align 8, !tbaa !54   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp ult i64 %i.p, 15
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.y = icmp eq ptr %i.r, %i.t
  br i1 %i.y, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i: ; preds = %.lr.ph
  %i.z = load i8, ptr %i.r, align 1, !tbaa !51
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, %i.p
  %i.ac = or i64 %i.ab, %i.n                      ; 3 uses
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !54
  %i.ad = add nuw nsw i64 %i.p, 8                 ; 3 uses
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !47
  %i.af = icmp ult i64 %i.p, 7
  br i1 %i.af, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i
  %i.ag = icmp eq ptr %i.ae, %i.t
  br i1 %i.ag, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1: ; preds = %.lr.ph.1
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !51
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, %i.ad
  %i.ak = or i64 %i.aj, %i.ac                     ; 2 uses
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !54
  %i.al = or disjoint i64 %i.p, 16                ; 2 uses
  store i64 %i.al, ptr %i.o, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.am, ptr %i.q, align 8, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1, %bb.b
  %i.an = phi i64 [ %i.p, %bb.b ], [ %i.ad, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i ], [ %i.al, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1 ] ; 2 uses
  %i.ao = phi i64 [ %i.n, %bb.b ], [ %i.ac, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i ], [ %i.ak, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1 ] ; 3 uses
  %i.ap = and i64 %i.ao, 255
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !73  ; 3 uses
  %i.as = icmp ugt i8 %i.ar, 8
  br i1 %i.as, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i:         ; preds = %._crit_edge
  %i.at = add i64 %i.an, -8
  %i.au = lshr i64 %i.ao, 8                       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !75
  %i.ax = zext i16 %i.aw to i64
  %i.ay = and i64 %i.au, 127
  %i.az = zext i8 %i.ar to i64
  %1 = add nuw nsw i64 %i.az, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.ba = load i64, ptr %3, align 8, !tbaa !32
  %i.bb = and i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ax ; 2 uses
  %.pre = load i8, ptr %i.bd, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread: ; preds = %._crit_edge, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i
  %i.be = phi i64 [ %i.au, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.ao, %._crit_edge ]
  %i.bf = phi i64 [ %i.at, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.an, %._crit_edge ]
  %i.bg = phi i8 [ %.pre, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.ar, %._crit_edge ]
  %.0.i56.i.i = phi ptr [ %i.bd, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.aq, %._crit_edge ]
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = sub i64 %i.bf, %i.bh
  store i64 %i.bi, ptr %i.o, align 8, !tbaa !53
  %i.bj = lshr i64 %i.be, %i.bh
  store i64 %i.bj, ptr %i.k, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i56.i.i, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !75
  %i.bm = zext i16 %i.bl to i64
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i: ; preds = %.lr.ph.1, %.lr.ph
  %i.bn = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef nonnull %i.g, ptr noundef nonnull %i.k, ptr noundef nonnull %i.b)
  %.not39.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not39.i.i, label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !72
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.pr32 = load i64, ptr %i.o, align 8, !tbaa !53 ; 6 uses
  %i.bs = icmp ult i64 %.pr32, 15
  br i1 %i.bs, label %.lr.ph35, label %.._crit_edge36_crit_edge

.._crit_edge36_crit_edge:                         ; preds = %bb.d
  %.pre44 = load i64, ptr %i.k, align 8, !tbaa !54
  br label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.d
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !48  ; 2 uses
  %.promoted37 = load ptr, ptr %i.q, align 8, !tbaa !47 ; 4 uses
  %i.bu = icmp eq ptr %.promoted37, %i.bt
  br i1 %i.bu, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i: ; preds = %.lr.ph35
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !54
  %i.bw = load i8, ptr %.promoted37, align 1, !tbaa !51
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, %.pr32
  %i.bz = or i64 %i.by, %i.bv                     ; 2 uses
  store i64 %i.bz, ptr %i.k, align 8, !tbaa !54
  %i.ca = add nuw nsw i64 %.pr32, 8               ; 3 uses
  store i64 %i.ca, ptr %i.o, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %.promoted37, i64 1 ; 3 uses
  store ptr %i.cb, ptr %i.q, align 8, !tbaa !47
  %i.cc = icmp ult i64 %.pr32, 7
  br i1 %i.cc, label %bb.e, label %._crit_edge36

bb.e:                                             ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i
  %i.cd = icmp eq ptr %i.cb, %i.bt
  br i1 %i.cd, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1: ; preds = %bb.e
  %i.ce = load i64, ptr %i.k, align 8, !tbaa !54
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !51
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, %i.ca
  %i.ci = or i64 %i.ch, %i.ce                     ; 2 uses
  store i64 %i.ci, ptr %i.k, align 8, !tbaa !54
  %i.cj = or disjoint i64 %.pr32, 16              ; 2 uses
  store i64 %i.cj, ptr %i.o, align 8, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %.promoted37, i64 2
  store ptr %i.ck, ptr %i.q, align 8, !tbaa !47
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1, %.._crit_edge36_crit_edge
  %i.cl = phi i64 [ %.pr32, %.._crit_edge36_crit_edge ], [ %i.ca, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i ], [ %i.cj, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1 ] ; 2 uses
  %i.cm = phi i64 [ %.pre44, %.._crit_edge36_crit_edge ], [ %i.bz, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i ], [ %i.ci, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1 ] ; 3 uses
  %i.cn = and i64 %i.cm, 255
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cn ; 4 uses
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !73  ; 3 uses
  %i.cq = icmp ugt i8 %i.cp, 8
  br i1 %i.cq, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i:       ; preds = %._crit_edge36
  %i.cr = add i64 %i.cl, -8
  %i.cs = lshr i64 %i.cm, 8                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !75
  %i.cv = zext i16 %i.cu to i64
  %i.cw = and i64 %i.cs, 127
  %i.cx = zext i8 %i.cp to i64
  %4 = add nuw nsw i64 %i.cx, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.cy = load i64, ptr %6, align 8, !tbaa !32
  %i.cz = and i64 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cv ; 2 uses
  %.pre45 = load i8, ptr %i.db, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread: ; preds = %._crit_edge36, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i
  %i.dc = phi i64 [ %i.cs, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.cm, %._crit_edge36 ]
  %i.dd = phi i64 [ %i.cr, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.cl, %._crit_edge36 ]
  %i.de = phi i8 [ %.pre45, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.cp, %._crit_edge36 ]
  %.0.i58.i.i = phi ptr [ %i.db, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.co, %._crit_edge36 ]
  %i.df = zext i8 %i.de to i64                    ; 2 uses
  %i.dg = sub i64 %i.dd, %i.df
  store i64 %i.dg, ptr %i.o, align 8, !tbaa !53
  %i.dh = lshr i64 %i.dc, %i.df
  store i64 %i.dh, ptr %i.k, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i58.i.i, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !75
  %i.dk = zext i16 %i.dj to i64
  br label %bb.g

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i: ; preds = %bb.e, %.lr.ph35
  %i.dl = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a)
  %.not.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i
  %.pre46 = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread, %bb.f
  %i.do = phi i64 [ %.pre46, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge ], [ %i.dk, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread ], [ %i.dn, %bb.f ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !77
  %i.ds = zext i8 %i.dr to i64                    ; 5 uses
  %i.dt = load i16, ptr %i.dp, align 4, !tbaa !79
  %.promoted38 = load i64, ptr %i.o, align 8, !tbaa !53 ; 3 uses
  %i.du = icmp ult i64 %.promoted38, %i.ds
  br i1 %i.du, label %.lr.ph40, label %.._crit_edge41_crit_edge

.._crit_edge41_crit_edge:                         ; preds = %bb.g
  %.pre47 = load i64, ptr %i.k, align 8, !tbaa !54
  br label %._crit_edge41

.lr.ph40:                                         ; preds = %bb.g
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !48
  %.promoted42 = load ptr, ptr %i.q, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph40, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i
  %i.dw = phi ptr [ %.promoted42, %.lr.ph40 ], [ %i.ef, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ] ; 3 uses
  %i.dx = phi i64 [ %.promoted38, %.lr.ph40 ], [ %i.ee, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ] ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dv
  br i1 %i.dy, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread26, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i: ; preds = %bb.h
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !54
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !51
  %i.eb = zext i8 %i.ea to i64
  %i.ec = shl i64 %i.eb, %i.dx
  %i.ed = or i64 %i.ec, %i.dz                     ; 2 uses
  store i64 %i.ed, ptr %i.k, align 8, !tbaa !54
  %i.ee = add nuw nsw i64 %i.dx, 8                ; 4 uses
  store i64 %i.ee, ptr %i.o, align 8, !tbaa !53
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  store ptr %i.ef, ptr %i.q, align 8, !tbaa !47
  %i.eg = icmp ult i64 %i.ee, %i.ds
  br i1 %i.eg, label %bb.h, label %._crit_edge41, !llvm.loop !80

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread26: ; preds = %bb.h
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.do, ptr %i.eh, align 8, !tbaa !76
  br label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.bp, align 4, !tbaa !72
  store i64 %i.n, ptr %i.k, align 8, !tbaa !54
  store i64 %i.p, ptr %i.o, align 8, !tbaa !53
  store ptr %i.r, ptr %i.q, align 8, !tbaa !47
  %i.ei = getelementptr i8, ptr %i.r, i64 %i.w    ; 2 uses
  store ptr %i.ei, ptr %i.s, align 8, !tbaa !48
  %i.ej = add i64 %i.w, -28
  %i.ek = icmp ult i64 %i.ej, -29
  %i.el = getelementptr i8, ptr %i.ei, i64 -27
  %.sink = select i1 %i.ek, ptr %i.el, ptr %i.r
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink, ptr %i.em, align 8, !tbaa !49
  br label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread

._crit_edge41:                                    ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i, %.._crit_edge41_crit_edge
  %i.en = phi i64 [ %.pre47, %.._crit_edge41_crit_edge ], [ %i.ed, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ] ; 2 uses
  %.lcssa = phi i64 [ %.promoted38, %.._crit_edge41_crit_edge ], [ %i.ee, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.ds
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !32
  %i.eq = and i64 %i.ep, %i.en
  %i.er = sub i64 %.lcssa, %i.ds
  store i64 %i.er, ptr %i.o, align 8, !tbaa !53
  %i.es = lshr i64 %i.en, %i.ds
  store i64 %i.es, ptr %i.k, align 8, !tbaa !54
  %i.et = zext i16 %i.dt to i64
  %i.eu = add i64 %i.eq, %i.et
  store i64 %i.eu, ptr %i.bo, align 8, !tbaa !32
  store i32 0, ptr %i.bp, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  switch i64 %i.ev, label %bb.k [
    i64 1, label %bb.i
    i64 0, label %bb.j
  ]

bb.i:                                             ; preds = %._crit_edge41
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !32
  %i.ey = add i64 %i.ex, 1
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge41
  %i.ez = load i64, ptr %i.l, align 8, !tbaa !32
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge41
  %i.fa = add i64 %i.ev, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.fb = phi i64 [ %i.fa, %bb.k ], [ %i.ez, %bb.j ], [ %i.ey, %bb.i ] ; 2 uses
  %.not41.i.i = icmp ult i64 %i.fb, %i.d
  %i.fc = select i1 %.not41.i.i, i64 0, i64 %i.d
  %spec.select = sub nuw i64 %i.fb, %i.fc         ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !32
  store i64 %i.fe, ptr %i.l, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.fd, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !103
  %i.fh = shl i64 %spec.select, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !104
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !169
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !51
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i8 %i.fo, ptr %i.fp, align 4, !tbaa !170
  br label %_ZN13duckdb_brotliL33DecodeDistanceBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread: ; preds = %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread, %bb.a, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN13duckdb_brotliL33DecodeDistanceBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL33DecodeDistanceBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit: ; preds = %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread, %bb.l
  %.0.i = phi i32 [ 1, %bb.l ], [ 0, %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN13duckdb_brotliL25DecodeDistanceBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5056
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.k = icmp ult i64 %i.b, 2
  br i1 %i.k, label %_ZN13duckdb_brotliL33DecodeDistanceBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53   ; 4 uses
  %i.n = icmp ult i64 %i.m, 17
  %.pre = load i64, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  br i1 %i.n, label %bb.c, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.0.copyload.i.i17.i = load i64, ptr %i.p, align 1
  %i.q = shl i64 %.0.copyload.i.i17.i, %i.m
  %i.r = or i64 %i.q, %.pre
  %i.s = add nuw nsw i64 %i.m, 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  store ptr %i.t, ptr %i.o, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i: ; preds = %bb.c, %bb.b
  %i.u = phi i64 [ %i.s, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.v = phi i64 [ %i.r, %bb.c ], [ %.pre, %bb.b ] ; 3 uses
  %i.w = and i64 %i.v, 255
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.w ; 4 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !73    ; 3 uses
  %i.z = icmp ugt i8 %i.y, 8
  br i1 %i.z, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i, label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i:       ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i
  %i.aa = add i64 %i.u, -8
  %i.ab = lshr i64 %i.v, 8                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !75
  %i.ae = zext i16 %i.ad to i64
  %i.af = zext i8 %i.y to i64
  %1 = add nuw nsw i64 %i.af, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.ag = load i64, ptr %3, align 8, !tbaa !32
  %i.ah = and i64 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %.pre6 = load i8, ptr %i.aj, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i
  %i.ak = phi i64 [ %i.ab, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.v, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i ]
  %i.al = phi i64 [ %i.aa, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.u, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i ]
  %i.am = phi i8 [ %.pre6, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.y, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i ]
  %.0.i.i62.i.i = phi ptr [ %i.aj, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.x, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit18.i ]
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %i.ao = sub i64 %i.al, %i.an                    ; 5 uses
  store i64 %i.ao, ptr %i.l, align 8, !tbaa !53
  %i.ap = lshr i64 %i.ak, %i.an                   ; 3 uses
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i62.i.i, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !75 ; 2 uses
  %i.as = zext i16 %i.ar to i64
  %i.at = icmp ult i64 %i.ao, 17
  br i1 %i.at, label %bb.d, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i

bb.d:                                             ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %.0.copyload.i.i15.i = load i64, ptr %i.av, align 1
  %i.aw = shl i64 %.0.copyload.i.i15.i, %i.ao
  %i.ax = or i64 %i.aw, %i.ap
  %i.ay = add nuw nsw i64 %i.ao, 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store ptr %i.az, ptr %i.au, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i: ; preds = %bb.d, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i
  %i.ba = phi i64 [ %i.ay, %bb.d ], [ %i.ao, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.ax, %bb.d ], [ %i.ap, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i ] ; 3 uses
  %i.bc = and i64 %i.bb, 255
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bc ; 4 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !73  ; 3 uses
  %i.bf = icmp ugt i8 %i.be, 8
  br i1 %i.bf, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i10.i, label %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i10.i:     ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.bg = add i64 %i.ba, -8
  %i.bh = lshr i64 %i.bb, 8                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !75
  %i.bk = zext i16 %i.bj to i64
  %i.bl = zext i8 %i.be to i64
  %4 = add nuw nsw i64 %i.bl, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.bm = load i64, ptr %6, align 8, !tbaa !32
  %i.bn = and i64 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 2 uses
  %.pre7 = load i8, ptr %i.bp, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i10.i, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.bq = phi i64 [ %i.bh, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i10.i ], [ %i.bb, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.br = phi i64 [ %i.bg, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i10.i ], [ %i.ba, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.bs = phi i8 [ %.pre7, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i10.i ], [ %i.be, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %.0.i.i.i9.i = phi ptr [ %i.bp, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i10.i ], [ %i.bd, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %i.bu = sub i64 %i.br, %i.bt                    ; 5 uses
  store i64 %i.bu, ptr %i.l, align 8, !tbaa !53
  %i.bv = lshr i64 %i.bq, %i.bt                   ; 3 uses
  store i64 %i.bv, ptr %i.i, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i9.i, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !75
  %i.by = zext i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !77
  %i.cc = zext i8 %i.cb to i64                    ; 3 uses
  %i.cd = load i16, ptr %i.bz, align 4, !tbaa !79
  %i.ce = zext i16 %i.cd to i64
  %i.cf = icmp ult i64 %i.bu, 33
  br i1 %i.cf, label %bb.e, label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i

bb.e:                                             ; preds = %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %.0.copyload.i4.i.i = load i32, ptr %i.ch, align 1
  %i.ci = zext i32 %.0.copyload.i4.i.i to i64
  %i.cj = shl nuw i64 %i.ci, %i.bu
  %i.ck = or i64 %i.cj, %i.bv
  %i.cl = add nuw nsw i64 %i.bu, 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i

_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i: ; preds = %bb.e, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i
  %i.cn = phi i64 [ %i.cl, %bb.e ], [ %i.bu, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ]
  %i.co = phi i64 [ %i.ck, %bb.e ], [ %i.bv, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.cc
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !32
  %i.cr = and i64 %i.cq, %i.co
  %i.cs = sub i64 %i.cn, %i.cc
  store i64 %i.cs, ptr %i.l, align 8, !tbaa !53
  %i.ct = lshr i64 %i.co, %i.cc
  store i64 %i.ct, ptr %i.i, align 8, !tbaa !54
  %i.cu = add i64 %i.cr, %i.ce
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !32
  switch i16 %i.ar, label %bb.h [
    i16 1, label %bb.f
    i16 0, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !32
  %i.cy = add i64 %i.cx, 1
  br label %bb.i

bb.g:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !32
  br label %bb.i

bb.h:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i
  %i.da = add nsw i64 %i.as, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.da, %bb.h ], [ %i.cy, %bb.f ], [ %i.cz, %bb.g ] ; 2 uses
  %.not41.i.i = icmp ult i64 %.0, %i.b
  %i.db = select i1 %.not41.i.i, i64 0, i64 %i.b
  %spec.select = sub nuw i64 %.0, %i.db           ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !32
  store i64 %i.dd, ptr %i.j, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.dc, align 8, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !103
  %i.dg = shl i64 %spec.select, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !104
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !169
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i8 %i.dn, ptr %i.do, align 4, !tbaa !170
  br label %_ZN13duckdb_brotliL33DecodeDistanceBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL33DecodeDistanceBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.a, %bb.i
  ret void
}

declare noundef i32 @_ZN13duckdb_brotli29BrotliTransformDictionaryWordEPhPKhiPKNS_16BrotliTransformsEi(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN13duckdb_brotliL28SafeDecodeLiteralBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.k = icmp ult i64 %i.d, 2
  br i1 %i.k, label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.i, align 8, !tbaa !54   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp ult i64 %i.n, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.w = icmp eq ptr %i.p, %i.r
  br i1 %i.w, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i: ; preds = %.lr.ph
  %i.x = load i8, ptr %i.p, align 1, !tbaa !51
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, %i.n
  %i.aa = or i64 %i.z, %i.l                       ; 3 uses
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !54
  %i.ab = add nuw nsw i64 %i.n, 8                 ; 3 uses
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.ac, ptr %i.o, align 8, !tbaa !47
  %i.ad = icmp ult i64 %i.n, 7
  br i1 %i.ad, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i
  %i.ae = icmp eq ptr %i.ac, %i.r
  br i1 %i.ae, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1: ; preds = %.lr.ph.1
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !51
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, %i.ab
  %i.ai = or i64 %i.ah, %i.aa                     ; 2 uses
  store i64 %i.ai, ptr %i.i, align 8, !tbaa !54
  %i.aj = or disjoint i64 %i.n, 16                ; 2 uses
  store i64 %i.aj, ptr %i.m, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1, %bb.b
  %i.al = phi i64 [ %i.n, %bb.b ], [ %i.ab, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i ], [ %i.aj, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1 ] ; 2 uses
  %i.am = phi i64 [ %i.l, %bb.b ], [ %i.aa, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i ], [ %i.ai, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.i.1 ] ; 3 uses
  %i.an = and i64 %i.am, 255
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.an ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !73  ; 3 uses
  %i.aq = icmp ugt i8 %i.ap, 8
  br i1 %i.aq, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i:         ; preds = %._crit_edge
  %i.ar = add i64 %i.al, -8
  %i.as = lshr i64 %i.am, 8                       ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !75
  %i.av = zext i16 %i.au to i64
  %i.aw = and i64 %i.as, 127
  %i.ax = zext i8 %i.ap to i64
  %1 = add nuw nsw i64 %i.ax, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.ay = load i64, ptr %3, align 8, !tbaa !32
  %i.az = and i64 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.av ; 2 uses
  %.pre = load i8, ptr %i.bb, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread: ; preds = %._crit_edge, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i
  %i.bc = phi i64 [ %i.as, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.am, %._crit_edge ]
  %i.bd = phi i64 [ %i.ar, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.al, %._crit_edge ]
  %i.be = phi i8 [ %.pre, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.ap, %._crit_edge ]
  %.0.i56.i.i = phi ptr [ %i.bb, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i ], [ %i.ao, %._crit_edge ]
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = sub i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.m, align 8, !tbaa !53
  %i.bh = lshr i64 %i.bc, %i.bf
  store i64 %i.bh, ptr %i.i, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i56.i.i, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !75
  %i.bk = zext i16 %i.bj to i64
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i: ; preds = %.lr.ph.1, %.lr.ph
  %i.bl = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef %i.f, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b)
  %.not39.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not39.i.i, label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i.thread, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.pr32 = load i64, ptr %i.m, align 8, !tbaa !53 ; 6 uses
  %i.bq = icmp ult i64 %.pr32, 15
  br i1 %i.bq, label %.lr.ph35, label %.._crit_edge36_crit_edge

.._crit_edge36_crit_edge:                         ; preds = %bb.d
  %.pre44 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.d
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !48  ; 2 uses
  %.promoted37 = load ptr, ptr %i.o, align 8, !tbaa !47 ; 4 uses
  %i.bs = icmp eq ptr %.promoted37, %i.br
  br i1 %i.bs, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i: ; preds = %.lr.ph35
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !54
  %i.bu = load i8, ptr %.promoted37, align 1, !tbaa !51
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, %.pr32
  %i.bx = or i64 %i.bw, %i.bt                     ; 2 uses
  store i64 %i.bx, ptr %i.i, align 8, !tbaa !54
  %i.by = add nuw nsw i64 %.pr32, 8               ; 3 uses
  store i64 %i.by, ptr %i.m, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %.promoted37, i64 1 ; 3 uses
  store ptr %i.bz, ptr %i.o, align 8, !tbaa !47
  %i.ca = icmp ult i64 %.pr32, 7
  br i1 %i.ca, label %bb.e, label %._crit_edge36

bb.e:                                             ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i
  %i.cb = icmp eq ptr %i.bz, %i.br
  br i1 %i.cb, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1: ; preds = %bb.e
  %i.cc = load i64, ptr %i.i, align 8, !tbaa !54
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !51
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, %i.by
  %i.cg = or i64 %i.cf, %i.cc                     ; 2 uses
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !54
  %i.ch = or disjoint i64 %.pr32, 16              ; 2 uses
  store i64 %i.ch, ptr %i.m, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %.promoted37, i64 2
  store ptr %i.ci, ptr %i.o, align 8, !tbaa !47
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1, %.._crit_edge36_crit_edge
  %i.cj = phi i64 [ %.pr32, %.._crit_edge36_crit_edge ], [ %i.by, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i ], [ %i.ch, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1 ] ; 2 uses
  %i.ck = phi i64 [ %.pre44, %.._crit_edge36_crit_edge ], [ %i.bx, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i ], [ %i.cg, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i.i.i.1 ] ; 3 uses
  %i.cl = and i64 %i.ck, 255
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cl ; 4 uses
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !73  ; 3 uses
  %i.co = icmp ugt i8 %i.cn, 8
  br i1 %i.co, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i:       ; preds = %._crit_edge36
  %i.cp = add i64 %i.cj, -8
  %i.cq = lshr i64 %i.ck, 8                       ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !75
  %i.ct = zext i16 %i.cs to i64
  %i.cu = and i64 %i.cq, 127
  %i.cv = zext i8 %i.cn to i64
  %4 = add nuw nsw i64 %i.cv, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.cw = load i64, ptr %6, align 8, !tbaa !32
  %i.cx = and i64 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.ct ; 2 uses
  %.pre45 = load i8, ptr %i.cz, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread: ; preds = %._crit_edge36, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i
  %i.da = phi i64 [ %i.cq, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.ck, %._crit_edge36 ]
  %i.db = phi i64 [ %i.cp, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.cj, %._crit_edge36 ]
  %i.dc = phi i8 [ %.pre45, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.cn, %._crit_edge36 ]
  %.0.i58.i.i = phi ptr [ %i.cz, %_ZN13duckdb_brotliL7BitMaskEm.exit.i59.i.i ], [ %i.cm, %._crit_edge36 ]
  %i.dd = zext i8 %i.dc to i64                    ; 2 uses
  %i.de = sub i64 %i.db, %i.dd
  store i64 %i.de, ptr %i.m, align 8, !tbaa !53
  %i.df = lshr i64 %i.da, %i.dd
  store i64 %i.df, ptr %i.i, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i58.i.i, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !75
  %i.di = zext i16 %i.dh to i64
  br label %bb.g

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i: ; preds = %bb.e, %.lr.ph35
  %i.dj = call fastcc noundef i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a)
  %.not.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i
  %.pre46 = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread, %bb.f
  %i.dm = phi i64 [ %.pre46, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i._crit_edge ], [ %i.di, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i.thread ], [ %i.dl, %bb.f ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !77
  %i.dq = zext i8 %i.dp to i64                    ; 5 uses
  %i.dr = load i16, ptr %i.dn, align 4, !tbaa !79
  %.promoted38 = load i64, ptr %i.m, align 8, !tbaa !53 ; 3 uses
  %i.ds = icmp ult i64 %.promoted38, %i.dq
  br i1 %i.ds, label %.lr.ph40, label %.._crit_edge41_crit_edge

.._crit_edge41_crit_edge:                         ; preds = %bb.g
  %.pre47 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %._crit_edge41

.lr.ph40:                                         ; preds = %bb.g
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !48
  %.promoted42 = load ptr, ptr %i.o, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph40, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i
  %i.du = phi ptr [ %.promoted42, %.lr.ph40 ], [ %i.ed, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ] ; 3 uses
  %i.dv = phi i64 [ %.promoted38, %.lr.ph40 ], [ %i.ec, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ] ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dt
  br i1 %i.dw, label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread26, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i: ; preds = %bb.h
  %i.dx = load i64, ptr %i.i, align 8, !tbaa !54
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !51
  %i.dz = zext i8 %i.dy to i64
  %i.ea = shl i64 %i.dz, %i.dv
  %i.eb = or i64 %i.ea, %i.dx                     ; 2 uses
  store i64 %i.eb, ptr %i.i, align 8, !tbaa !54
  %i.ec = add nuw nsw i64 %i.dv, 8                ; 4 uses
  store i64 %i.ec, ptr %i.m, align 8, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 2 uses
  store ptr %i.ed, ptr %i.o, align 8, !tbaa !47
  %i.ee = icmp ult i64 %i.ec, %i.dq
  br i1 %i.ee, label %bb.h, label %._crit_edge41, !llvm.loop !80

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread26: ; preds = %bb.h
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.dm, ptr %i.ef, align 8, !tbaa !76
  br label %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread

_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread: ; preds = %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i.i, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.bn, align 4, !tbaa !72
  store i64 %i.l, ptr %i.i, align 8, !tbaa !54
  store i64 %i.n, ptr %i.m, align 8, !tbaa !53
  store ptr %i.p, ptr %i.o, align 8, !tbaa !47
  %i.eg = getelementptr i8, ptr %i.p, i64 %i.u    ; 2 uses
  store ptr %i.eg, ptr %i.q, align 8, !tbaa !48
  %i.eh = add i64 %i.u, -28
  %i.ei = icmp ult i64 %i.eh, -29
  %i.ej = getelementptr i8, ptr %i.eg, i64 -27
  %.sink = select i1 %i.ei, ptr %i.ej, ptr %i.p
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink, ptr %i.ek, align 8, !tbaa !49
  br label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread

._crit_edge41:                                    ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i, %.._crit_edge41_crit_edge
  %i.el = phi i64 [ %.pre47, %.._crit_edge41_crit_edge ], [ %i.eb, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ] ; 2 uses
  %.lcssa = phi i64 [ %.promoted38, %.._crit_edge41_crit_edge ], [ %i.ec, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.dq
  %i.en = load i64, ptr %i.em, align 8, !tbaa !32
  %i.eo = and i64 %i.en, %i.el
  %i.ep = sub i64 %.lcssa, %i.dq
  store i64 %i.ep, ptr %i.m, align 8, !tbaa !53
  %i.eq = lshr i64 %i.el, %i.dq
  store i64 %i.eq, ptr %i.i, align 8, !tbaa !54
  %i.er = zext i16 %i.dr to i64
  %i.es = add i64 %i.eo, %i.er
  store i64 %i.es, ptr %i.bm, align 8, !tbaa !32
  store i32 0, ptr %i.bn, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.et = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  switch i64 %i.et, label %bb.k [
    i64 1, label %bb.i
    i64 0, label %bb.j
  ]

bb.i:                                             ; preds = %._crit_edge41
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !32
  %i.ew = add i64 %i.ev, 1
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge41
  %i.ex = load i64, ptr %i.j, align 8, !tbaa !32
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge41
  %i.ey = add i64 %i.et, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ez = phi i64 [ %i.ey, %bb.k ], [ %i.ex, %bb.j ], [ %i.ew, %bb.i ] ; 2 uses
  %.not41.i.i = icmp ult i64 %i.ez, %i.d
  %i.fa = select i1 %.not41.i.i, i64 0, i64 %i.d
  %spec.select = sub nuw i64 %i.ez, %i.fa         ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !32
  store i64 %i.fc, ptr %i.j, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.fb, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.fd = shl i64 %spec.select, 6
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !85
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !98
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.fj = lshr i64 %spec.select, 5
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64
  %i.fn = and i64 %spec.select, 31
  %i.fo = lshr i64 %i.fm, %i.fn
  %i.fp = trunc nuw i64 %i.fo to i32
  %i.fq = and i32 %i.fp, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !99
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !100
  %i.fu = load i8, ptr %i.fg, align 1, !tbaa !51
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !96
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !101
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !83
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %spec.select
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !51
  %i.gd = and i8 %i.gc, 3
  %i.ge = zext nneg i8 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 9
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotli26_kBrotliContextLookupTableE, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !102
  br label %_ZN13duckdb_brotliL32DecodeLiteralBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread: ; preds = %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i.thread, %bb.a, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN13duckdb_brotliL32DecodeLiteralBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL32DecodeLiteralBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit: ; preds = %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread, %bb.l
  %.0.i = phi i32 [ 1, %bb.l ], [ 0, %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.i.thread ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN13duckdb_brotliL24DecodeLiteralBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.i = icmp ult i64 %i.b, 2
  br i1 %i.i, label %_ZN13duckdb_brotliL32DecodeLiteralBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = icmp ult i64 %i.k, 17
  %.pre = load i64, ptr %i.g, align 8, !tbaa !54  ; 2 uses
  br i1 %i.l, label %bb.c, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.0.copyload.i.i12.i = load i64, ptr %i.n, align 1
  %i.o = shl i64 %.0.copyload.i.i12.i, %i.k
  %i.p = or i64 %i.o, %.pre
  %i.q = add nuw nsw i64 %i.k, 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  store ptr %i.r, ptr %i.m, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i: ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %i.q, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %bb.b ] ; 3 uses
  %i.u = and i64 %i.t, 255
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.u ; 4 uses
  %i.w = load i8, ptr %i.v, align 2, !tbaa !73    ; 3 uses
  %i.x = icmp ugt i8 %i.w, 8
  br i1 %i.x, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i, label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i:       ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i
  %i.y = add i64 %i.s, -8
  %i.z = lshr i64 %i.t, 8                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !75
  %i.ac = zext i16 %i.ab to i64
  %i.ad = zext i8 %i.w to i64
  %1 = add nuw nsw i64 %i.ad, 4294967288
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %2
  %i.ae = load i64, ptr %3, align 8, !tbaa !32
  %i.af = and i64 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ac ; 2 uses
  %.pre6 = load i8, ptr %i.ah, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i
  %i.ai = phi i64 [ %i.z, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.t, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i ]
  %i.aj = phi i64 [ %i.y, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.s, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i ]
  %i.ak = phi i8 [ %.pre6, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.w, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i ]
  %.0.i.i62.i.i = phi ptr [ %i.ah, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i.i ], [ %i.v, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit13.i ]
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = sub i64 %i.aj, %i.al                    ; 5 uses
  store i64 %i.am, ptr %i.j, align 8, !tbaa !53
  %i.an = lshr i64 %i.ai, %i.al                   ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i62.i.i, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !75 ; 2 uses
  %i.aq = zext i16 %i.ap to i64
  %i.ar = icmp ult i64 %i.am, 17
  br i1 %i.ar, label %bb.d, label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i

bb.d:                                             ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47 ; 2 uses
  %.0.copyload.i.i10.i = load i64, ptr %i.at, align 1
  %i.au = shl i64 %.0.copyload.i.i10.i, %i.am
  %i.av = or i64 %i.au, %i.an
  %i.aw = add nuw nsw i64 %i.am, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i: ; preds = %bb.d, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i
  %i.ay = phi i64 [ %i.aw, %bb.d ], [ %i.am, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i ] ; 2 uses
  %i.az = phi i64 [ %i.av, %bb.d ], [ %i.an, %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i.i ] ; 3 uses
  %i.ba = and i64 %i.az, 255
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !73  ; 3 uses
  %i.bd = icmp ugt i8 %i.bc, 8
  br i1 %i.bd, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i5.i, label %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i5.i:      ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.be = add i64 %i.ay, -8
  %i.bf = lshr i64 %i.az, 8                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !75
  %i.bi = zext i16 %i.bh to i64
  %i.bj = zext i8 %i.bc to i64
  %4 = add nuw nsw i64 %i.bj, 4294967288
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %5
  %i.bk = load i64, ptr %6, align 8, !tbaa !32
  %i.bl = and i64 %i.bk, %i.bf
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bi ; 2 uses
  %.pre7 = load i8, ptr %i.bn, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i5.i, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.bo = phi i64 [ %i.bf, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i5.i ], [ %i.az, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.bp = phi i64 [ %i.be, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i5.i ], [ %i.ay, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.bq = phi i8 [ %.pre7, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i5.i ], [ %i.bc, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %.0.i.i.i4.i = phi ptr [ %i.bn, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i5.i ], [ %i.bb, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = sub i64 %i.bp, %i.br                    ; 5 uses
  store i64 %i.bs, ptr %i.j, align 8, !tbaa !53
  %i.bt = lshr i64 %i.bo, %i.br                   ; 3 uses
  store i64 %i.bt, ptr %i.g, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i4.i, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !75
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !77
  %i.ca = zext i8 %i.bz to i64                    ; 3 uses
  %i.cb = load i16, ptr %i.bx, align 4, !tbaa !79
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %i.bs, 33
  br i1 %i.cd, label %bb.e, label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i

bb.e:                                             ; preds = %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !47 ; 2 uses
  %.0.copyload.i4.i.i = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i4.i.i to i64
  %i.ch = shl nuw i64 %i.cg, %i.bs
  %i.ci = or i64 %i.ch, %i.bt
  %i.cj = add nuw nsw i64 %i.bs, 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i

_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i: ; preds = %bb.e, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i
  %i.cl = phi i64 [ %i.cj, %bb.e ], [ %i.bs, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ]
  %i.cm = phi i64 [ %i.ci, %bb.e ], [ %i.bt, %_ZN13duckdb_brotliL15ReadBlockLengthEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.ca
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !32
  %i.cp = and i64 %i.co, %i.cm
  %i.cq = sub i64 %i.cl, %i.ca
  store i64 %i.cq, ptr %i.j, align 8, !tbaa !53
  %i.cr = lshr i64 %i.cm, %i.ca
  store i64 %i.cr, ptr %i.g, align 8, !tbaa !54
  %i.cs = add i64 %i.cp, %i.cc
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !32
  switch i16 %i.ap, label %bb.h [
    i16 1, label %bb.f
    i16 0, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !32
  %i.cw = add i64 %i.cv, 1
  br label %bb.i

bb.g:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !32
  br label %bb.i

bb.h:                                             ; preds = %_ZN13duckdb_brotliL16BrotliReadBits24EPNS_15BrotliBitReaderEm.exit.i
  %i.cy = add nsw i64 %i.aq, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.cy, %bb.h ], [ %i.cw, %bb.f ], [ %i.cx, %bb.g ] ; 2 uses
  %.not41.i.i = icmp ult i64 %.0, %i.b
  %i.cz = select i1 %.not41.i.i, i64 0, i64 %i.b
  %spec.select = sub nuw i64 %.0, %i.cz           ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  store i64 %i.db, ptr %i.h, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.da, align 8, !tbaa !32
  %i.dc = shl i64 %spec.select, 6
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !85
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.di = lshr i64 %spec.select, 5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = and i64 %spec.select, 31
  %i.dn = lshr i64 %i.dl, %i.dm
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = and i32 %i.do, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !99
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !100
  %i.dt = load i8, ptr %i.df, align 1, !tbaa !51
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !96
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !101
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !83
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %spec.select
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !51
  %i.ec = and i8 %i.eb, 3
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 9
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotli26_kBrotliContextLookupTableE, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !102
  br label %_ZN13duckdb_brotliL32DecodeLiteralBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL32DecodeLiteralBlockSwitchInternalEiPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN13duckdb_brotli24BrotliDecoderStateStructE", !9, i64 0, !4, i64 4, !10, i64 8, !13, i64 48, !13, i64 56, !13, i64 64, !5, i64 72, !11, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !5, i64 112, !4, i64 128, !4, i64 132, !12, i64 136, !12, i64 144, !13, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !14, i64 184, !14, i64 208, !14, i64 232, !13, i64 256, !13, i64 264, !4, i64 272, !4, i64 276, !5, i64 280, !11, i64 304, !5, i64 312, !5, i64 336, !11, i64 384, !11, i64 392, !11, i64 400, !12, i64 408, !13, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !5, i64 448, !4, i64 708, !4, i64 712, !5, i64 716, !13, i64 720, !13, i64 728, !13, i64 736, !11, i64 744, !17, i64 752, !18, i64 756, !19, i64 760, !20, i64 764, !4, i64 768, !4, i64 772, !4, i64 772, !4, i64 772, !4, i64 772, !4, i64 772, !4, i64 772, !4, i64 772, !4, i64 773, !11, i64 776, !12, i64 784, !12, i64 792, !21, i64 800, !22, i64 808, !5, i64 816, !5, i64 848}
!9 = !{!"_ZTSN13duckdb_brotli18BrotliRunningStateE", !5, i64 0}
!10 = !{!"_ZTSN13duckdb_brotli15BrotliBitReaderE", !11, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSN13duckdb_brotli16HuffmanTreeGroupE", !15, i64 0, !13, i64 8, !16, i64 16, !16, i64 18, !16, i64 20}
!15 = !{!"any p2 pointer", !13, i64 0}
!16 = !{!"short", !5, i64 0}
!17 = !{!"_ZTSN13duckdb_brotli33BrotliRunningMetablockHeaderStateE", !5, i64 0}
!18 = !{!"_ZTSN13duckdb_brotli30BrotliRunningUncompressedStateE", !5, i64 0}
!19 = !{!"_ZTSN13duckdb_brotli29BrotliRunningDecodeUint8StateE", !5, i64 0}
!20 = !{!"_ZTSN13duckdb_brotli33BrotliRunningReadBlockLengthStateE", !5, i64 0}
!21 = !{!"p1 _ZTSN13duckdb_brotli28BrotliSharedDictionaryStructE", !13, i64 0}
!22 = !{!"p1 _ZTSN13duckdb_brotli31BrotliDecoderCompoundDictionaryE", !13, i64 0}
!23 = !{!8, !13, i64 56}
!24 = !{!8, !13, i64 64}
!25 = !{!8, !21, i64 800}
end_hunk_3
