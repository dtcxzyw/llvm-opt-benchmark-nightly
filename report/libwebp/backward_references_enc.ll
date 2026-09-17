Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/backward_references_enc?download=true
inline.NumInlined: 78
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@VP8LGetBackwardReferences:bb.a
  %i.yg = load i32, ptr %i.xz, align 4, !tbaa !34
  %.not186.i.i = icmp eq i32 %i.yf, %i.yg
  br i1 %.not186.i.i, label %.preheader.i.i, label %bb.es

.preheader.i.i:                                   ; preds = %bb.eo, %bb.eq
  %.0145.i.i = phi i32 [ %.1146.i.i, %bb.eq ], [ 0, %bb.eo ] ; 2 uses
  %.0143.i.i = phi i32 [ %i.yq, %bb.eq ], [ %i.ya, %bb.eo ] ; 2 uses
  %.0.i131.i = phi i32 [ %i.yt, %bb.eq ], [ %i.yb, %bb.eo ] ; 2 uses
  %i.yh = zext nneg i32 %.0.i131.i to i64
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.yh
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !88 ; 3 uses
  %i.yk = zext nneg i32 %.0143.i.i to i64
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.yk
  %i.ym = load i16, ptr %i.yl, align 2, !tbaa !88 ; 2 uses
  %.not187.i.i = icmp eq i16 %i.yj, %i.ym
  br i1 %.not187.i.i, label %bb.ep, label %.thread198.i.i

.thread198.i.i:                                   ; preds = %.preheader.i.i
  %i.yn = call i16 @llvm.umin.i16(i16 %i.yj, i16 %i.ym)
  %i.yo = zext i16 %i.yn to i32
  %.1146203.i.i = add nuw nsw i32 %.0145.i.i, %i.yo
  br label %.critedge2.i.i

bb.ep:                                            ; preds = %.preheader.i.i
  %i.yp = zext i16 %i.yj to i32                   ; 3 uses
  %i.yq = add nuw nsw i32 %.0143.i.i, %i.yp       ; 3 uses
  %.1146.i.i = add nuw nsw i32 %.0145.i.i, %i.yp  ; 4 uses
  %i.yr = icmp samesign ult i32 %.1146.i.i, 4096
  %i.ys = icmp slt i32 %i.yq, %i.bj
  %or.cond192.i.i = select i1 %i.yr, i1 %i.ys, i1 false
  br i1 %or.cond192.i.i, label %bb.eq, label %.critedge2.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.yt = add nuw nsw i32 %.0.i131.i, %i.yp       ; 2 uses
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !34
  %i.yx = zext nneg i32 %i.yq to i64
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yx
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !34
  %i.za = icmp eq i32 %i.yw, %i.yz
  br i1 %i.za, label %.preheader.i.i, label %.critedge2.i.i, !llvm.loop !55

.critedge2.i.i:                                   ; preds = %bb.eq, %bb.ep, %.thread198.i.i
  %.1146206.i.i = phi i32 [ %.1146203.i.i, %.thread198.i.i ], [ %.1146.i.i, %bb.ep ], [ %.1146.i.i, %bb.eq ] ; 3 uses
  %i.zb = icmp slt i32 %.0150241.i.i, %.1146206.i.i
  br i1 %i.zb, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.critedge2.i.i
  %i.zc = icmp samesign ugt i32 %.1146206.i.i, 4094
  br i1 %i.zc, label %.loopexit.thread.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er, %.critedge2.i.i, %bb.eo, %bb.en
  %.2152.ph.i.i = phi i32 [ %.0150241.i.i, %.critedge2.i.i ], [ %.0150241.i.i, %bb.eo ], [ %.0150241.i.i, %bb.en ], [ %.1146206.i.i, %bb.er ] ; 2 uses
  %.3.ph.i.i = phi i32 [ %.1149242.i.i, %.critedge2.i.i ], [ %.1149242.i.i, %bb.eo ], [ %.1149242.i.i, %bb.en ], [ %.pn.i130.i, %bb.er ] ; 2 uses
  %indvars.iv.next348.i.i = add nuw nsw i64 %indvars.iv347.i.i, 1 ; 2 uses
  %exitcond351.not.i.i = icmp eq i64 %indvars.iv.next348.i.i, %wide.trip.count350.i.i
  br i1 %exitcond351.not.i.i, label %.loopexit.i.i, label %bb.en, !llvm.loop !56

.loopexit.i.i:                                    ; preds = %bb.es, %.loopexit216.i.i
  %.4154.i.i = phi i32 [ %i.xw, %.loopexit216.i.i ], [ %.2152.ph.i.i, %bb.es ] ; 2 uses
  %.5.i.i = phi i32 [ %i.xx, %.loopexit216.i.i ], [ %.3.ph.i.i, %bb.es ]
  %i.zd = icmp slt i32 %.4154.i.i, 5
  br i1 %i.zd, label %bb.et, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.lr.ph239.i.i, %bb.er, %.loopexit.i.i
  %.5446.i.i = phi i32 [ %.5.i.i, %.loopexit.i.i ], [ %.pn.i130.i, %bb.er ], [ %i.xo, %.lr.ph239.i.i ] ; 2 uses
  %.4154445.i.i = phi i32 [ %.4154.i.i, %.loopexit.i.i ], [ 4095, %bb.er ], [ 4095, %.lr.ph239.i.i ] ; 2 uses
  %i.ze = shl i32 %.5446.i.i, 12
  %i.zf = or i32 %i.ze, %.4154445.i.i
  br label %bb.et

bb.et:                                            ; preds = %.loopexit.thread.i.i, %.loopexit.i.i
  %.sink357.i.i = phi i32 [ %i.zf, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1166.i.i = phi i32 [ %.5446.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1164.i.i = phi i32 [ %.4154445.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %indvars.iv352.i.i
  store i32 %.sink357.i.i, ptr %i.zg, align 4, !tbaa !34
  %indvars.iv.next353.i.i = add nuw nsw i64 %indvars.iv352.i.i, 1 ; 2 uses
  %exitcond356.not.i.i = icmp eq i64 %indvars.iv.next353.i.i, %wide.trip.count355.i.i
  br i1 %exitcond356.not.i.i, label %._crit_edge255.i.i, label %bb.ek, !llvm.loop !57

._crit_edge255.i.i:                               ; preds = %bb.et, %._crit_edge.i.i
  store i32 0, ptr %i.xj, align 4, !tbaa !34
  call void @WebPSafeFree(ptr noundef nonnull %i.jr) #11
  %i.zh = call fastcc i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef nonnull readonly %18, ptr noundef nonnull %i.bg)
  br label %BackwardReferencesLz77Box.exit.i

BackwardReferencesLz77Box.exit.i:                 ; preds = %._crit_edge255.i.i, %bb.ay
  %.0175.i.i = phi i32 [ %i.zh, %._crit_edge255.i.i ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.eu

bb.eu:                                            ; preds = %BackwardReferencesLz77Box.exit.i, %bb.aw, %BackwardReferencesRle.exit.i
  %.0110.i = phi i32 [ %.0175.i.i, %BackwardReferencesLz77Box.exit.i ], [ %i.jn, %BackwardReferencesRle.exit.i ], [ %i.jo, %bb.aw ]
  %.not123.i = icmp eq i32 %.0110.i, 0
  br i1 %.not123.i, label %.critedge, label %.preheader237.i

.preheader237.i:                                  ; preds = %bb.eu, %bb.gj
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gj ], [ 1, %bb.eu ] ; 7 uses
  %.0107249.i = phi i64 [ %.2109.ph.i, %bb.gj ], [ 0, %bb.eu ] ; 2 uses
  %i.zi = icmp eq i64 %indvars.iv.i, 1            ; 2 uses
  %i.zj = select i1 %i.zi, i32 0, i32 %6          ; 5 uses
  %i.zk = icmp ne i64 %indvars.iv.i, 1
  %or.cond.i = or i1 %i.be, %i.zk
  br i1 %or.cond.i, label %bb.ev, label %bb.gj

bb.ev:                                            ; preds = %.preheader237.i
  %i.zl = icmp eq i64 %indvars.iv.i, 0            ; 2 uses
  br i1 %i.zl, label %bb.ew, label %.thread211.i

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.zm = load ptr, ptr %i.dd, align 8, !tbaa !17, !noalias !89 ; 4 uses
  %.not.i.i134.i = icmp eq ptr %i.zm, null
  br i1 %.not.i.i134.i, label %VP8LRefsCursorInit.exit.i.i43, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !25, !noalias !89 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !26, !noalias !89
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %i.zr
  br label %VP8LRefsCursorInit.exit.i.i43

VP8LRefsCursorInit.exit.i.i43:                    ; preds = %bb.ex, %bb.ew
  %.sink2.i.i.i = phi ptr [ %i.zo, %bb.ex ], [ null, %bb.ew ] ; 2 uses
  %.sink.i.i.i = phi ptr [ %i.zs, %bb.ex ], [ null, %bb.ew ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  br i1 %i.dj, label %CalculateBestCacheSize.exit.thread.i, label %.preheader127.i.i

.preheader127.i.i:                                ; preds = %VP8LRefsCursorInit.exit.i.i43
  br i1 %.not129.i.i, label %.preheader126.i.i, label %.lr.ph.preheader.i135.i

.lr.ph.preheader.i135.i:                          ; preds = %.preheader127.i.i
  %i.zt = call ptr @VP8LAllocateHistogram(i32 noundef 0) #11 ; 4 uses
  store ptr %i.zt, ptr %i.b, align 16, !tbaa !35
  %i.zu = icmp eq ptr %i.zt, null
  br i1 %i.zu, label %.lr.ph152.preheader.i.i, label %.lr.ph.peel.next.i.i

.lr.ph.peel.next.i.i:                             ; preds = %.lr.ph.preheader.i135.i
  call void @VP8LHistogramInit(ptr noundef nonnull %i.zt, i32 noundef 0, i32 noundef 1) #11
  br label %.lr.ph.i136.i

.preheader126.i.i:                                ; preds = %bb.ez, %.preheader127.i.i
  %i.zv = phi ptr [ null, %.preheader127.i.i ], [ %i.zt, %bb.ez ] ; 5 uses
  %.not120140.i.i = icmp eq ptr %.sink2.i.i.i, null
  br i1 %.not120140.i.i, label %.preheader.i140.i, label %.lr.ph145.i.i

.lr.ph145.i.i:                                    ; preds = %.preheader126.i.i
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 1032
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 2056
  br label %bb.fa

.lr.ph.i136.i:                                    ; preds = %bb.ez, %.lr.ph.peel.next.i.i
  %indvars.iv.i137.i = phi i64 [ 1, %.lr.ph.peel.next.i.i ], [ %indvars.iv.next.i138.i, %bb.ez ] ; 5 uses
  %i.zz = trunc nuw nsw i64 %indvars.iv.i137.i to i32 ; 3 uses
  %i.aaa = call ptr @VP8LAllocateHistogram(i32 noundef %i.zz) #11 ; 3 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i137.i
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !35
  %i.aac = icmp eq ptr %i.aaa, null
  br i1 %i.aac, label %.lr.ph152.preheader.i.i, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i136.i
  call void @VP8LHistogramInit(ptr noundef nonnull %i.aaa, i32 noundef %i.zz, i32 noundef 1) #11
  %i.aad = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv.i137.i
  %i.aae = call i32 @VP8LColorCacheInit(ptr noundef nonnull %i.aad, i32 noundef %i.zz) #11 ; 2 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i137.i
  store i32 %i.aae, ptr %i.aaf, align 4, !tbaa !34
  %.not111.i.i = icmp eq i32 %i.aae, 0
  br i1 %.not111.i.i, label %.lr.ph152.preheader.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %indvars.iv.next.i138.i = add nuw nsw i64 %indvars.iv.i137.i, 1 ; 2 uses
  %exitcond.not.i139.i = icmp eq i64 %indvars.iv.next.i138.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i139.i, label %.preheader126.i.i, label %.lr.ph.i136.i, !llvm.loop !60

.preheader.i140.i:                                ; preds = %VP8LRefsCursorNext.exit.i.i44, %bb.fj, %.preheader126.i.i
  br i1 %.not129.i.i, label %CalculateBestCacheSize.exit.thread.i, label %.lr.ph149.peel.next.i.i

.lr.ph149.peel.next.i.i:                          ; preds = %.preheader.i140.i
  %i.aag = call i64 @VP8LHistogramEstimateBits(ptr noundef %i.zv) #11
  br label %.lr.ph149.i.i

bb.fa:                                            ; preds = %VP8LRefsCursorNext.exit.i.i44, %.lr.ph145.i.i
  %.097144.i.i = phi ptr [ %2, %.lr.ph145.i.i ], [ %.299.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 5 uses
  %.sroa.0.0143.i.i = phi ptr [ %.sink2.i.i.i, %.lr.ph145.i.i ], [ %.sroa.0.1.i.i45, %VP8LRefsCursorNext.exit.i.i44 ] ; 3 uses
  %.sroa.8.0142.i.i = phi ptr [ %i.zm, %.lr.ph145.i.i ], [ %.sroa.8.1.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 2 uses
  %.sroa.11.0141.i.i = phi ptr [ %.sink.i.i.i, %.lr.ph145.i.i ], [ %.sroa.11.1.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 2 uses
  %.val114.i.i = load i8, ptr %.sroa.0.0143.i.i, align 4, !tbaa !86
  %.not121.i.i = icmp eq i8 %.val114.i.i, 0
  br i1 %.not121.i.i, label %bb.fb, label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  %i.aah = load i32, ptr %.097144.i.i, align 4, !tbaa !34 ; 7 uses
  %i.aai = lshr i32 %i.aah, 24
  %i.aaj = lshr i32 %i.aah, 16
  %i.aak = and i32 %i.aaj, 255
  %i.aal = lshr i32 %i.aah, 8
  %i.aam = and i32 %i.aal, 255
  %i.aan = and i32 %i.aah, 255
  %i.aao = zext nneg i32 %i.aan to i64            ; 2 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.aao ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !34
  %i.aar = add i32 %i.aaq, 1
  store i32 %i.aar, ptr %i.aap, align 4, !tbaa !34
  %i.aas = load ptr, ptr %i.zv, align 8, !tbaa !93
  %i.aat = zext nneg i32 %i.aam to i64            ; 2 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %i.aat ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !34
  %i.aaw = add i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.aau, align 4, !tbaa !34
  %i.aax = zext nneg i32 %i.aak to i64            ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %i.aax ; 2 uses
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !34
  %i.aba = add i32 %i.aaz, 1
  store i32 %i.aba, ptr %i.aay, align 4, !tbaa !34
  %i.abb = zext nneg i32 %i.aai to i64            ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.abb ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !34
  %i.abe = add i32 %i.abd, 1
  store i32 %i.abe, ptr %i.abc, align 4, !tbaa !34
  br i1 %i.dm, label %.lr.ph139.preheader.i.i, label %.loopexit123.i.i

.lr.ph139.preheader.i.i:                          ; preds = %bb.fb
  %i.abf = mul i32 %i.aah, 506832829
  %i.abg = lshr i32 %i.abf, %i.dl
  br label %.lr.ph139.i.i

.lr.ph139.i.i:                                    ; preds = %bb.fe, %.lr.ph139.preheader.i.i
  %indvars.iv169.i.i = phi i64 [ %i.dn, %.lr.ph139.preheader.i.i ], [ %indvars.iv.next170.i.i, %bb.fe ] ; 5 uses
  %.090138.i.i = phi i32 [ %i.abg, %.lr.ph139.preheader.i.i ], [ %i.acm, %bb.fe ] ; 3 uses
  %i.abh = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv169.i.i
  %.val115.i.i = load ptr, ptr %i.abh, align 16, !tbaa !95
  %i.abi = zext i32 %.090138.i.i to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.val115.i.i, i64 %i.abi ; 2 uses
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !34
  %i.abl = icmp eq i32 %i.abk, %i.aah
  br i1 %i.abl, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph139.i.i
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv169.i.i
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !35
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !93
  %i.abp = sext i32 %.090138.i.i to i64
  %i.abq = getelementptr [4 x i8], ptr %i.abo, i64 %i.abp
  %i.abr = getelementptr i8, ptr %i.abq, i64 1120 ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !34
  %i.abt = add i32 %i.abs, 1
  store i32 %i.abt, ptr %i.abr, align 4, !tbaa !34
  br label %bb.fe

bb.fd:                                            ; preds = %.lr.ph139.i.i
  store i32 %i.aah, ptr %i.abj, align 4, !tbaa !34
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv169.i.i
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !35 ; 4 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 1032
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abw, i64 %i.aao ; 2 uses
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !34
  %i.abz = add i32 %i.aby, 1
  store i32 %i.abz, ptr %i.abx, align 4, !tbaa !34
  %i.aca = load ptr, ptr %i.abv, align 8, !tbaa !93
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.aat ; 2 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !34
  %i.acd = add i32 %i.acc, 1
  store i32 %i.acd, ptr %i.acb, align 4, !tbaa !34
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.aax ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !34
  %i.ach = add i32 %i.acg, 1
  store i32 %i.ach, ptr %i.acf, align 4, !tbaa !34
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abv, i64 2056
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.abb ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !34
  %i.acl = add i32 %i.ack, 1
  store i32 %i.acl, ptr %i.acj, align 4, !tbaa !34
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %indvars.iv.next170.i.i = add nsw i64 %indvars.iv169.i.i, -1
  %i.acm = ashr i32 %.090138.i.i, 1
  %i.acn = icmp sgt i64 %indvars.iv169.i.i, 1
  br i1 %i.acn, label %.lr.ph139.i.i, label %.loopexit123.i.i, !llvm.loop !61

bb.ff:                                            ; preds = %bb.fa
  %i.aco = getelementptr i8, ptr %.sroa.0.0143.i.i, i64 2
  %.val117.i.i = load i16, ptr %i.aco, align 2, !tbaa !96 ; 3 uses
  %i.acp = zext i16 %.val117.i.i to i32           ; 3 uses
  %i.acq = load i32, ptr %.097144.i.i, align 4, !tbaa !34
  %i.acr = xor i32 %i.acq, -1
  %i.acs = icmp ult i16 %.val117.i.i, 512
  br i1 %i.acs, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.act = zext nneg i16 %.val117.i.i to i64
  %i.acu = getelementptr inbounds nuw [2 x i8], ptr @kPrefixEncodeCode, i64 %i.act
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.acu, align 2, !tbaa !8
  %i.acv = sext i8 %.sroa.0.0.copyload.i.i.i to i32
  br label %VP8LPrefixEncode.exit.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.acw = add nsw i32 %i.acp, -1                 ; 2 uses
  %i.acx = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.acw, i1 true) ; 2 uses
  %i.acy = sub nuw nsw i32 30, %i.acx
  %i.acz = lshr i32 %i.acw, %i.acy
  %i.ada = and i32 %i.acz, 1
  %i.adb = shl nuw nsw i32 %i.acx, 1
  %i.adc = or disjoint i32 %i.ada, %i.adb
  %i.add = xor i32 %i.adc, 62
  br label %VP8LPrefixEncode.exit.i.i

VP8LPrefixEncode.exit.i.i:                        ; preds = %bb.fh, %bb.fg
  %.0119.i.i = phi i32 [ %i.acv, %bb.fg ], [ %i.add, %bb.fh ]
  br i1 %.not129.i.i, label %.preheader124.split.preheader.i.i, label %.lr.ph133.i.i

.lr.ph133.i.i:                                    ; preds = %VP8LPrefixEncode.exit.i.i
  %i.ade = sext i32 %.0119.i.i to i64             ; 5 uses
  br i1 %i.em, label %.epil.preheader, label %.lr.ph133.i.i.new

.preheader124.i.i.unr-lcssa:                      ; preds = %.lr.ph133.i.i.new
  br i1 %lcmp.mod256.not, label %.preheader124.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader124.i.i.unr-lcssa, %.lr.ph133.i.i
  %indvars.iv160.i.i.epil.init = phi i64 [ 0, %.lr.ph133.i.i ], [ %indvars.iv.next161.i.i.3, %.preheader124.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %.epil.preheader
  %indvars.iv160.i.i.epil = phi i64 [ %indvars.iv160.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next161.i.i.epil, %bb.fi ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fi ]
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i.epil
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !35
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !93
  %i.adi = getelementptr [4 x i8], ptr %i.adh, i64 %i.ade
  %i.adj = getelementptr i8, ptr %i.adi, i64 1024 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !34
  %i.adl = add i32 %i.adk, 1
  store i32 %i.adl, ptr %i.adj, align 4, !tbaa !34
  %indvars.iv.next161.i.i.epil = add nuw nsw i64 %indvars.iv160.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter255
  br i1 %epil.iter.cmp.not, label %.preheader124.i.i, label %bb.fi, !llvm.loop !62

.preheader124.i.i:                                ; preds = %bb.fi, %.preheader124.i.i.unr-lcssa
  br i1 %i.dm, label %.preheader124.split.us.i.i, label %.preheader124.split.preheader.i.i

.preheader124.split.preheader.i.i:                ; preds = %.preheader124.i.i, %VP8LPrefixEncode.exit.i.i
  %scevgep.i.i = getelementptr i8, ptr %.097144.i.i, i64 4
  %i.adm = add nsw i32 %i.acp, -1
  %i.adn = zext i32 %i.adm to i64
  %i.ado = shl nuw nsw i64 %i.adn, 2
  %scevgep165.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.ado
  br label %.loopexit123.i.i.a

.preheader124.split.us.i.i:                       ; preds = %.preheader124.i.i, %._crit_edge.us.i.i
  %.198.us.i.i = phi ptr [ %i.aei, %._crit_edge.us.i.i ], [ %.097144.i.i, %.preheader124.i.i ] ; 2 uses
  %.089.us.i.i = phi i32 [ %i.aej, %._crit_edge.us.i.i ], [ %i.acp, %.preheader124.i.i ]
  %.088.us.i.i = phi i32 [ %.1.us.i.i, %._crit_edge.us.i.i ], [ %i.acr, %.preheader124.i.i ] ; 2 uses
  %i.adp = load i32, ptr %.198.us.i.i, align 4, !tbaa !34 ; 7 uses
  %.not109.us.i.i = icmp eq i32 %i.adp, %.088.us.i.i
  br i1 %.not109.us.i.i, label %._crit_edge.us.i.i, label %.lr.ph136.us.i.i

.lr.ph136.us.i.i:                                 ; preds = %.preheader124.split.us.i.i
  %i.adq = mul i32 %i.adp, 506832829
  %i.adr = lshr i32 %i.adq, %i.dl                 ; 3 uses
  br i1 %lcmp.mod259.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph136.us.i.i
  %i.ads = load ptr, ptr %i.en, align 16, !tbaa !95
  %i.adt = sext i32 %i.adr to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.adt
  store i32 %i.adp, ptr %i.adu, align 4, !tbaa !34
  %i.adv = ashr i32 %i.adr, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph136.us.i.i
  %indvars.iv166.i.i.unr = phi i64 [ %i.dn, %.lr.ph136.us.i.i ], [ %indvars.iv.next167.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0135.us.i.i.unr = phi i32 [ %i.adr, %.lr.ph136.us.i.i ], [ %i.adv, %.prol.loopexit.unr-lcssa ]
  br i1 %i.eo, label %._crit_edge.us.i.i, label %.lr.ph136.us.i.i.new

.lr.ph136.us.i.i.new:                             ; preds = %.prol.loopexit, %.lr.ph136.us.i.i.new
  %indvars.iv166.i.i = phi i64 [ %indvars.iv.next167.i.i.1, %.lr.ph136.us.i.i.new ], [ %indvars.iv166.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.0135.us.i.i = phi i32 [ %i.aeg, %.lr.ph136.us.i.i.new ], [ %.0135.us.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv166.i.i
  %i.adx = load ptr, ptr %i.adw, align 16, !tbaa !95
  %i.ady = sext i32 %.0135.us.i.i to i64
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.ady
  store i32 %i.adp, ptr %i.adz, align 4, !tbaa !34
  %i.aea = ashr i32 %.0135.us.i.i, 1
  %i.aeb = getelementptr [16 x i8], ptr %17, i64 %indvars.iv166.i.i
  %i.aec = getelementptr i8, ptr %i.aeb, i64 -16
  %i.aed = load ptr, ptr %i.aec, align 16, !tbaa !95
  %i.aee = sext i32 %i.aea to i64
  %i.aef = getelementptr inbounds [4 x i8], ptr %i.aed, i64 %i.aee
  store i32 %i.adp, ptr %i.aef, align 4, !tbaa !34
  %indvars.iv.next167.i.i.1 = add nsw i64 %indvars.iv166.i.i, -2
  %i.aeg = ashr i32 %.0135.us.i.i, 2
  %i.aeh = icmp sgt i64 %indvars.iv166.i.i, 2
  br i1 %i.aeh, label %.lr.ph136.us.i.i.new, label %._crit_edge.us.i.i, !llvm.loop !63

._crit_edge.us.i.i:                               ; preds = %.prol.loopexit, %.lr.ph136.us.i.i.new, %.preheader124.split.us.i.i
  %.1.us.i.i = phi i32 [ %.088.us.i.i, %.preheader124.split.us.i.i ], [ %i.adp, %.lr.ph136.us.i.i.new ], [ %i.adp, %.prol.loopexit ]
  %i.aei = getelementptr inbounds nuw i8, ptr %.198.us.i.i, i64 4 ; 2 uses
  %i.aej = add nsw i32 %.089.us.i.i, -1           ; 2 uses
  %.not110.us.i.i = icmp eq i32 %i.aej, 0
  br i1 %.not110.us.i.i, label %.loopexit123.i.i.a, label %.preheader124.split.us.i.i, !llvm.loop !64

.lr.ph133.i.i.new:                                ; preds = %.lr.ph133.i.i, %.lr.ph133.i.i.new
  %indvars.iv160.i.i = phi i64 [ %indvars.iv.next161.i.i.3, %.lr.ph133.i.i.new ], [ 0, %.lr.ph133.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph133.i.i.new ], [ 0, %.lr.ph133.i.i ]
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.ael = load ptr, ptr %i.aek, align 16, !tbaa !35
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !93
  %i.aen = getelementptr [4 x i8], ptr %i.aem, i64 %i.ade
  %i.aeo = getelementptr i8, ptr %i.aen, i64 1024 ; 2 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !34
  %i.aeq = add i32 %i.aep, 1
  store i32 %i.aeq, ptr %i.aeo, align 4, !tbaa !34
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !35
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !93
  %i.aev = getelementptr [4 x i8], ptr %i.aeu, i64 %i.ade
  %i.aew = getelementptr i8, ptr %i.aev, i64 1024 ; 2 uses
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !34
  %i.aey = add i32 %i.aex, 1
  store i32 %i.aey, ptr %i.aew, align 4, !tbaa !34
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afb = load ptr, ptr %i.afa, align 16, !tbaa !35
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !93
  %i.afd = getelementptr [4 x i8], ptr %i.afc, i64 %i.ade
  %i.afe = getelementptr i8, ptr %i.afd, i64 1024 ; 2 uses
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !34
  %i.afg = add i32 %i.aff, 1
  store i32 %i.afg, ptr %i.afe, align 4, !tbaa !34
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 24
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !35
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !93
  %i.afl = getelementptr [4 x i8], ptr %i.afk, i64 %i.ade
  %i.afm = getelementptr i8, ptr %i.afl, i64 1024 ; 2 uses
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !34
  %i.afo = add i32 %i.afn, 1
  store i32 %i.afo, ptr %i.afm, align 4, !tbaa !34
  %indvars.iv.next161.i.i.3 = add nuw nsw i64 %indvars.iv160.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader124.i.i.unr-lcssa, label %.lr.ph133.i.i.new, !llvm.loop !65

.loopexit123.i.i:                                 ; preds = %bb.fe, %bb.fb
  %19 = getelementptr inbounds nuw i8, ptr %.097144.i.i, i64 4
  br label %.loopexit123.i.i.a

.loopexit123.i.i.a:                               ; preds = %._crit_edge.us.i.i, %.loopexit123.i.i, %.preheader124.split.preheader.i.i
  %.299.i.i = phi ptr [ %19, %.loopexit123.i.i ], [ %scevgep165.i.i, %.preheader124.split.preheader.i.i ], [ %i.aei, %._crit_edge.us.i.i ]
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.0143.i.i, i64 8 ; 2 uses
  %i.afq = icmp eq ptr %i.afp, %.sroa.11.0141.i.i
  br i1 %i.afq, label %bb.fj, label %VP8LRefsCursorNext.exit.i.i44

bb.fj:                                            ; preds = %.loopexit123.i.i.a
  %i.afr = load ptr, ptr %.sroa.8.0142.i.i, align 8, !tbaa !20 ; 4 uses
  %i.afs = icmp eq ptr %i.afr, null
  br i1 %i.afs, label %.preheader.i140.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !25 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.afw = load i32, ptr %i.afv, align 8, !tbaa !26
  %i.afx = sext i32 %i.afw to i64
  %i.afy = getelementptr inbounds [8 x i8], ptr %i.afu, i64 %i.afx
  br label %VP8LRefsCursorNext.exit.i.i44

VP8LRefsCursorNext.exit.i.i44:                    ; preds = %bb.fk, %.loopexit123.i.i.a
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.0141.i.i, %.loopexit123.i.i.a ], [ %i.afy, %bb.fk ]
  %.sroa.8.1.i.i = phi ptr [ %.sroa.8.0142.i.i, %.loopexit123.i.i.a ], [ %i.afr, %bb.fk ]
  %.sroa.0.1.i.i45 = phi ptr [ %i.afp, %.loopexit123.i.i.a ], [ %i.afu, %bb.fk ] ; 2 uses
  %.not120.i.i = icmp eq ptr %.sroa.0.1.i.i45, null
  br i1 %.not120.i.i, label %.preheader.i140.i, label %bb.fa, !llvm.loop !66

.lr.ph149.i.i:                                    ; preds = %.lr.ph149.i.i, %.lr.ph149.peel.next.i.i
  %.1199.i = phi i32 [ 0, %.lr.ph149.peel.next.i.i ], [ %spec.select231.i, %.lr.ph149.i.i ]
  %indvars.iv172.i.i = phi i64 [ 1, %.lr.ph149.peel.next.i.i ], [ %indvars.iv.next173.i.i, %.lr.ph149.i.i ] ; 3 uses
  %.092148.i.i = phi i64 [ %i.aag, %.lr.ph149.peel.next.i.i ], [ %spec.select232.i, %.lr.ph149.i.i ] ; 2 uses
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv172.i.i
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !35
  %i.agb = call i64 @VP8LHistogramEstimateBits(ptr noundef %i.aga) #11 ; 2 uses
  %i.agc = icmp ult i64 %i.agb, %.092148.i.i
  %i.agd = trunc nuw nsw i64 %indvars.iv172.i.i to i32
  %spec.select231.i = select i1 %i.agc, i32 %i.agd, i32 %.1199.i ; 2 uses
  %spec.select232.i = call i64 @llvm.umin.i64(i64 %i.agb, i64 %.092148.i.i)
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %exitcond176.not.i.i = icmp eq i64 %indvars.iv.next173.i.i, %wide.trip.count.i.i
  br i1 %exitcond176.not.i.i, label %.lr.ph152.preheader.i.i, label %.lr.ph149.i.i, !llvm.loop !67

.lr.ph152.preheader.i.i:                          ; preds = %.lr.ph.i136.i, %bb.ey, %.lr.ph149.i.i, %.lr.ph.preheader.i135.i
  %.4.i = phi i32 [ %spec.select231.i, %.lr.ph149.i.i ], [ %i.zj, %.lr.ph.preheader.i135.i ], [ %i.zj, %bb.ey ], [ %i.zj, %.lr.ph.i136.i ]
  %.not124.i = phi i1 [ false, %.lr.ph149.i.i ], [ true, %.lr.ph.preheader.i135.i ], [ true, %bb.ey ], [ true, %.lr.ph.i136.i ]
  br label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %bb.fm, %.lr.ph152.preheader.i.i
  %indvars.iv178.i.i = phi i64 [ 0, %.lr.ph152.preheader.i.i ], [ %indvars.iv.next179.i.i, %bb.fm ] ; 4 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv178.i.i
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !34
  %.not113.i.i = icmp eq i32 %i.agf, 0
  br i1 %.not113.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph152.i.i
  %i.agg = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv178.i.i
  call void @VP8LColorCacheClear(ptr noundef nonnull %i.agg) #11
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.lr.ph152.i.i
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv178.i.i
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !35
  call void @VP8LFreeHistogram(ptr noundef %i.agi) #11
  %indvars.iv.next179.i.i = add nuw nsw i64 %indvars.iv178.i.i, 1 ; 2 uses
  %exitcond182.not.i.i = icmp eq i64 %indvars.iv.next179.i.i, %wide.trip.count.i.i
  br i1 %exitcond182.not.i.i, label %CalculateBestCacheSize.exit.i, label %.lr.ph152.i.i, !llvm.loop !68

CalculateBestCacheSize.exit.thread.i:             ; preds = %.preheader.i140.i, %VP8LRefsCursorInit.exit.i.i43
  %.5.ph.i = phi i32 [ 0, %VP8LRefsCursorInit.exit.i.i43 ], [ %i.zj, %.preheader.i140.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.fn

CalculateBestCacheSize.exit.i:                    ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not124.i, label %.critedge, label %bb.fn

bb.fn:                                            ; preds = %CalculateBestCacheSize.exit.i, %CalculateBestCacheSize.exit.thread.i
  %.5208.i = phi i32 [ %.5.ph.i, %CalculateBestCacheSize.exit.thread.i ], [ %.4.i, %CalculateBestCacheSize.exit.i ] ; 5 uses
  %i.agj = icmp sgt i32 %.5208.i, 0
  br i1 %i.agj, label %bb.fo, label %bb.fw

bb.fo:                                            ; preds = %bb.fn
  %.val127.i = load ptr, ptr %i.dd, align 8, !tbaa !17, !noalias !98 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %.not.i.i142.i = icmp eq ptr %.val127.i, null
  br i1 %.not.i.i142.i, label %VP8LRefsCursorInit.exit.thread.i.i, label %VP8LRefsCursorInit.exit.i143.i

VP8LRefsCursorInit.exit.i143.i:                   ; preds = %bb.fo
  %i.agk = getelementptr inbounds nuw i8, ptr %.val127.i, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !25, !noalias !99 ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.val127.i, i64 16
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !26, !noalias !99
  %i.ago = call i32 @VP8LColorCacheInit(ptr noundef nonnull %16, i32 noundef range(i32 1, -2147483648) %.5208.i) #11
  %.not.i144.i = icmp eq i32 %i.ago, 0
  br i1 %.not.i144.i, label %BackwardRefsWithLocalCache.exit.thread.i, label %.preheader4.i.i

VP8LRefsCursorInit.exit.thread.i.i:               ; preds = %bb.fo
  %i.agp = call i32 @VP8LColorCacheInit(ptr noundef nonnull %16, i32 noundef range(i32 1, -2147483648) %.5208.i) #11
  %.not20.i.i = icmp eq i32 %i.agp, 0
  br i1 %.not20.i.i, label %BackwardRefsWithLocalCache.exit.thread.i, label %BackwardRefsWithLocalCache.exit.i

.preheader4.i.i:                                  ; preds = %VP8LRefsCursorInit.exit.i143.i
  %.not27.i.i = icmp eq ptr %i.agl, null
  br i1 %.not27.i.i, label %BackwardRefsWithLocalCache.exit.i, label %.lr.ph12.i.preheader.i

.lr.ph12.i.preheader.i:                           ; preds = %.preheader4.i.i
  %i.agq = sext i32 %i.agn to i64
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.agl, i64 %i.agq
  br label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %VP8LRefsCursorNext.exit.i151.i, %.lr.ph12.i.preheader.i
  %.01611.i.i = phi i32 [ %.2.i.i, %VP8LRefsCursorNext.exit.i151.i ], [ 0, %.lr.ph12.i.preheader.i ] ; 3 uses
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.1.i154.i, %VP8LRefsCursorNext.exit.i151.i ], [ %i.agl, %.lr.ph12.i.preheader.i ] ; 5 uses
  %.sroa.8.09.i.i = phi ptr [ %.sroa.8.1.i153.i, %VP8LRefsCursorNext.exit.i151.i ], [ %.val127.i, %.lr.ph12.i.preheader.i ] ; 2 uses
  %.sroa.11.08.i.i = phi ptr [ %.sroa.11.1.i152.i, %VP8LRefsCursorNext.exit.i151.i ], [ %i.agr, %.lr.ph12.i.preheader.i ] ; 2 uses
  %.val20.i.i = load i8, ptr %.sroa.0.010.i.i, align 4, !tbaa !86
  %.not3.i.i = icmp eq i8 %.val20.i.i, 0
  br i1 %.not3.i.i, label %bb.fp, label %.preheader.i145.i

.preheader.i145.i:                                ; preds = %.lr.ph12.i.i
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 2
  %i.agt = load i16, ptr %i.ags, align 2, !tbaa !96 ; 4 uses
  %i.agu = zext i16 %i.agt to i32                 ; 2 uses
  %.not13.i.i = icmp eq i16 %i.agt, 0
  br i1 %.not13.i.i, label %.loopexit.i150.i, label %.lr.ph.i146.i

.lr.ph.i146.i:                                    ; preds = %.preheader.i145.i
  %.val23.i.i = load ptr, ptr %16, align 8, !tbaa !95 ; 3 uses
  %i.agv = sext i32 %.01611.i.i to i64            ; 2 uses
  %xtraiter261 = and i32 %i.agu, 1
  %i.agw = icmp eq i16 %i.agt, 1
  br i1 %i.agw, label %.epil.preheader260, label %.lr.ph.i146.i.new

.lr.ph.i146.i.new:                                ; preds = %.lr.ph.i146.i
  %unroll_iter266 = and i32 %i.agu, 65534
  br label %bb.ft

bb.fp:                                            ; preds = %.lr.ph12.i.i
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 4
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !87 ; 3 uses
  %.val21.i.i = load ptr, ptr %16, align 8, !tbaa !95
  %.val22.i.i = load i32, ptr %i.do, align 8, !tbaa !100
  %i.agz = mul i32 %i.agy, 506832829
  %i.aha = lshr i32 %i.agz, %.val22.i.i           ; 2 uses
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds [4 x i8], ptr %.val21.i.i, i64 %i.ahb ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !34
  %i.ahe = icmp eq i32 %i.ahd, %i.agy
  %i.ahf = select i1 %i.ahe, i32 %i.aha, i32 -1   ; 2 uses
  %i.ahg = icmp sgt i32 %i.ahf, -1
  br i1 %i.ahg, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %.sroa.3.0.insert.ext.i.i156.i = zext nneg i32 %i.ahf to i64
  %.sroa.3.0.insert.shift.i.i157.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i156.i, 32
  %.sroa.0.0.insert.insert.i.i158.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i157.i, 65537
  store i64 %.sroa.0.0.insert.insert.i.i158.i, ptr %.sroa.0.010.i.i, align 4
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  store i32 %i.agy, ptr %i.ahc, align 4, !tbaa !34
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.ahh = add nsw i32 %.01611.i.i, 1
  br label %.loopexit.i150.i

bb.ft:                                            ; preds = %bb.ft, %.lr.ph.i146.i.new
  %indvars.iv.i147.i = phi i64 [ %i.agv, %.lr.ph.i146.i.new ], [ %indvars.iv.next.i148.i.1, %bb.ft ] ; 3 uses
  %niter267 = phi i32 [ 0, %.lr.ph.i146.i.new ], [ %niter267.next.1, %bb.ft ]
  %i.ahi = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.i147.i
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !34 ; 2 uses
  %.val24.i.i = load i32, ptr %i.do, align 8, !tbaa !100
  %i.ahk = mul i32 %i.ahj, 506832829
  %i.ahl = lshr i32 %i.ahk, %.val24.i.i
  %i.ahm = sext i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds [4 x i8], ptr %.val23.i.i, i64 %i.ahm
  store i32 %i.ahj, ptr %i.ahn, align 4, !tbaa !34
  %indvars.iv.next.i148.i.1 = add nsw i64 %indvars.iv.i147.i, 2 ; 3 uses
  %i.aho = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i147.i
  %i.ahp = getelementptr i8, ptr %i.aho, i64 4
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !34 ; 2 uses
  %.val24.i.i.1 = load i32, ptr %i.do, align 8, !tbaa !100
  %i.ahr = mul i32 %i.ahq, 506832829
  %i.ahs = lshr i32 %i.ahr, %.val24.i.i.1
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds [4 x i8], ptr %.val23.i.i, i64 %i.aht
  store i32 %i.ahq, ptr %i.ahu, align 4, !tbaa !34
  %niter267.next.1 = add i32 %niter267, 2         ; 2 uses
  %niter267.ncmp.1 = icmp eq i32 %niter267.next.1, %unroll_iter266
  br i1 %niter267.ncmp.1, label %.loopexit.loopexit.i.i.unr-lcssa, label %bb.ft, !llvm.loop !73

.loopexit.loopexit.i.i.unr-lcssa:                 ; preds = %bb.ft
  %lcmp.mod263.not = icmp eq i32 %xtraiter261, 0
  br i1 %lcmp.mod263.not, label %.loopexit.loopexit.i.i, label %.epil.preheader260

.epil.preheader260:                               ; preds = %.loopexit.loopexit.i.i.unr-lcssa, %.lr.ph.i146.i
  %indvars.iv.i147.i.epil.init = phi i64 [ %i.agv, %.lr.ph.i146.i ], [ %indvars.iv.next.i148.i.1, %.loopexit.loopexit.i.i.unr-lcssa ] ; 2 uses
end_hunk_0
