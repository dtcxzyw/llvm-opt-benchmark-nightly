Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/histogram_enc?download=true
inline.NumInlined: 116
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@VP8LGetHistoImageSymbols:bb.a
  %.sroa.13.3145.i = phi i32 [ %.sroa.13.4.i, %bb.bq ], [ %.sroa.13.2178.i, %HistoQueuePush.exit._crit_edge.thread.i ] ; 5 uses
  %i.ys = sext i32 %.188146.i to i64
  %i.yt = getelementptr inbounds [64 x i8], ptr %i.uu, i64 %i.ys ; 15 uses
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !80 ; 4 uses
  %i.yv = icmp eq i32 %i.yu, %i.xo
  %i.yw = icmp eq i32 %i.yu, %i.xp                ; 2 uses
  %spec.select101.i = or i1 %i.yv, %i.yw          ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yt, i64 4 ; 6 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !81 ; 3 uses
  %i.yz = icmp eq i32 %i.yy, %i.xo
  %i.za = icmp eq i32 %i.yy, %i.xp                ; 2 uses
  %i.zb = or i1 %i.yz, %i.za                      ; 2 uses
  %or.cond.i89 = and i1 %spec.select101.i, %i.zb
  br i1 %or.cond.i89, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph148.i
  %i.zc = sext i32 %.sroa.13.3145.i to i64
  %i.zd = getelementptr [64 x i8], ptr %i.uu, i64 %i.zc
  %i.ze = getelementptr i8, ptr %i.zd, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yt, ptr noundef nonnull align 8 dereferenceable(64) %i.ze, i64 64, i1 false), !tbaa.struct !83
  %i.zf = add nsw i32 %.sroa.13.3145.i, -1
  br label %bb.bq, !llvm.loop !58

bb.bb:                                            ; preds = %.lr.ph148.i
  %or.cond3.i = or i1 %spec.select101.i, %i.zb
  br i1 %or.cond3.i, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.yw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.xo, ptr %i.yt, align 8, !tbaa !80
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.zg = phi i32 [ %i.xo, %bb.bd ], [ %i.yu, %bb.bc ] ; 4 uses
  br i1 %i.za, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 %i.xo, ptr %i.yx, align 4, !tbaa !81
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.zh = phi i32 [ %i.xo, %bb.bf ], [ %i.yy, %bb.be ] ; 4 uses
  %i.zi = icmp sgt i32 %i.zg, %i.zh
  br i1 %i.zi, label %bb.bh, label %HistoQueueFixPair.exit.i

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.zh, ptr %i.yt, align 8, !tbaa !80
  store i32 %i.zg, ptr %i.yx, align 4, !tbaa !81
  br label %HistoQueueFixPair.exit.i

HistoQueueFixPair.exit.i:                         ; preds = %bb.bh, %bb.bg
  %i.zj = phi i32 [ %i.zh, %bb.bg ], [ %i.zg, %bb.bh ]
  %i.zk = phi i32 [ %i.zg, %bb.bg ], [ %i.zh, %bb.bh ]
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.zl
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !32 ; 2 uses
  %i.zo = sext i32 %i.zj to i64
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.zo
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !32 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 3256
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !71
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 3256
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !71
  %i.zv = add i64 %i.zu, %i.zs                    ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yt, i64 16 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yt, i64 24
  %i.zy = call fastcc i32 @GetCombinedHistogramEntropy(ptr noundef %i.zn, ptr noundef %i.zq, i64 noundef %i.zv, ptr noundef nonnull %i.zw, ptr noundef nonnull %i.zx)
  %.not.i.i90 = icmp eq i32 %i.zy, 0
  br i1 %.not.i.i90, label %bb.bi, label %HistoQueueUpdatePair.exit.i

HistoQueueUpdatePair.exit.i:                      ; preds = %HistoQueueFixPair.exit.i
  %i.zz = load i64, ptr %i.zw, align 8, !tbaa !82
  %i.aaa = sub nsw i64 %i.zz, %i.zv
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store i64 %i.aaa, ptr %i.aab, align 8, !tbaa !79
  %.pre.i91 = load i32, ptr %i.yt, align 8, !tbaa !80
  br label %bb.bj

bb.bi:                                            ; preds = %HistoQueueFixPair.exit.i
  %i.aac = sext i32 %.sroa.13.3145.i to i64
  %i.aad = getelementptr [64 x i8], ptr %i.uu, i64 %i.aac
  %i.aae = getelementptr i8, ptr %i.aad, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yt, ptr noundef nonnull align 8 dereferenceable(64) %i.aae, i64 64, i1 false), !tbaa.struct !83
  %i.aaf = add nsw i32 %.sroa.13.3145.i, -1
  br label %bb.bq, !llvm.loop !58

bb.bj:                                            ; preds = %HistoQueueUpdatePair.exit.i, %bb.bb
  %i.aag = phi i32 [ %.pre.i91, %HistoQueueUpdatePair.exit.i ], [ %i.yu, %bb.bb ] ; 2 uses
  %i.aah = load i32, ptr %7, align 8, !tbaa !31   ; 2 uses
  %i.aai = icmp eq i32 %i.aag, %i.aah
  br i1 %i.aai, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.xp, ptr %i.yt, align 8, !tbaa !80
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.aaj = phi i32 [ %i.xp, %bb.bk ], [ %i.aag, %bb.bj ] ; 2 uses
  %i.aak = load i32, ptr %i.yx, align 4, !tbaa !81 ; 2 uses
  %i.aal = icmp eq i32 %i.aak, %i.aah
  br i1 %i.aal, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.xp, ptr %i.yx, align 4, !tbaa !81
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.aam = phi i32 [ %i.xp, %bb.bm ], [ %i.aak, %bb.bl ] ; 2 uses
  %i.aan = icmp sgt i32 %i.aaj, %i.aam
  br i1 %i.aan, label %bb.bo, label %HistoQueueFixPair.exit105.i

bb.bo:                                            ; preds = %bb.bn
  store i32 %i.aam, ptr %i.yt, align 8, !tbaa !80
  store i32 %i.aaj, ptr %i.yx, align 4, !tbaa !81
  br label %HistoQueueFixPair.exit105.i

HistoQueueFixPair.exit105.i:                      ; preds = %bb.bo, %bb.bn
  %i.aao = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !79
  %i.aaq = load i64, ptr %i.uw, align 8, !tbaa !79
  %i.aar = icmp slt i64 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.bp, label %HistoQueueUpdateHead.exit.i

bb.bp:                                            ; preds = %HistoQueueFixPair.exit105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %i.uu, i64 64, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.uu, ptr noundef nonnull align 8 dereferenceable(64) %i.yt, i64 64, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yt, ptr noundef nonnull align 8 dereferenceable(64) %24, i64 64, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %HistoQueueUpdateHead.exit.i

HistoQueueUpdateHead.exit.i:                      ; preds = %bb.bp, %HistoQueueFixPair.exit105.i
  %i.aas = add nsw i32 %.188146.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %HistoQueueUpdateHead.exit.i, %bb.bi, %bb.ba
  %.sroa.13.4.i = phi i32 [ %i.zf, %bb.ba ], [ %i.aaf, %bb.bi ], [ %.sroa.13.3145.i, %HistoQueueUpdateHead.exit.i ] ; 3 uses
  %.289.i = phi i32 [ %.188146.i, %bb.ba ], [ %.188146.i, %bb.bi ], [ %i.aas, %HistoQueueUpdateHead.exit.i ] ; 2 uses
  %i.aat = icmp slt i32 %.289.i, %.sroa.13.4.i
  br i1 %i.aat, label %.lr.ph148.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bq, %HistoQueuePush.exit._crit_edge.thread.i, %HistoQueuePush.exit._crit_edge.i
  %.2125177.i = phi i32 [ %.2125.i, %HistoQueuePush.exit._crit_edge.i ], [ %.2125176.i, %HistoQueuePush.exit._crit_edge.thread.i ], [ %.2125176.i, %bb.bq ]
  %.sroa.13.5.i = phi i32 [ 0, %HistoQueuePush.exit._crit_edge.i ], [ %.sroa.13.2178.i, %HistoQueuePush.exit._crit_edge.thread.i ], [ %.sroa.13.4.i, %bb.bq ]
  %.185.i = phi i32 [ %i.vj, %HistoQueuePush.exit._crit_edge.i ], [ 0, %HistoQueuePush.exit._crit_edge.thread.i ], [ 0, %bb.bq ]
  %i.aau = add nuw nsw i32 %.086152.i, 1          ; 2 uses
  %exitcond.not.i88 = icmp eq i32 %i.aau, %i.uj
  br i1 %exitcond.not.i88, label %.loopexit, label %bb.ar, !llvm.loop !59

bb.br:                                            ; preds = %bb.aq
  call void @WebPSafeFree(ptr noundef null) #10
  %i.aav = call i32 @WebPEncodingSetError(ptr noundef %10, i32 noundef 1) #10 ; 0 uses
  br label %bb.ev

.loopexit:                                        ; preds = %.loopexit.i, %bb.as, %bb.ar, %.preheader.i
  %i.aaw = load i32, ptr %7, align 8, !tbaa !31
  %.not160 = icmp sgt i32 %i.aaw, %i.ur
  call void @WebPSafeFree(ptr noundef nonnull %i.uu) #10
  %.pre202 = load i32, ptr %7, align 8, !tbaa !31 ; 2 uses
  br i1 %.not160, label %.thread154, label %.thread149thread-pre-split

.thread149thread-pre-split:                       ; preds = %.loopexit
  %.pre200 = load ptr, ptr %i.gk, align 8, !tbaa !29
  br label %.thread149

.thread149:                                       ; preds = %.thread149thread-pre-split, %DivRound.exit
  %i.aax = phi ptr [ %.pre200, %.thread149thread-pre-split ], [ %i.ut, %DivRound.exit ] ; 4 uses
  %i.aay = phi i32 [ %.pre202, %.thread149thread-pre-split ], [ %i.uj, %DivRound.exit ] ; 4 uses
  %i.aaz = mul nsw i32 %i.aay, %i.aay             ; 5 uses
  %i.aba = add nuw nsw i32 %i.aaz, 1
  %i.abb = zext nneg i32 %i.aba to i64
  %i.abc = call ptr @WebPSafeMalloc(i64 noundef %i.abb, i64 noundef 64) #10 ; 23 uses
  %.not114.i = icmp eq ptr %i.abc, null
  br i1 %.not114.i, label %bb.dw, label %.preheader118.i

.preheader118.i:                                  ; preds = %.thread149
  %i.abd = icmp sgt i32 %i.aay, 0
  br i1 %i.abd, label %.lr.ph129.i, label %HistogramCombineGreedy.exit.thread

.lr.ph129.i:                                      ; preds = %.preheader118.i
  %i.abe = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.abf = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.abg = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.abh = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.abi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.abk = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.abl = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.abm = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.abn = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.abo = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.abp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abc, i64 8 ; 3 uses
  %i.abr = zext nneg i32 %i.aay to i64            ; 3 uses
  br label %bb.bs

.loopexit117.i:                                   ; preds = %HistoQueuePush.exit.i110, %bb.bs
  %.sroa.13.1.lcssa.i = phi i32 [ %.sroa.13.0127.i, %bb.bs ], [ %.sroa.13.7.i, %HistoQueuePush.exit.i110 ] ; 3 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, %i.abr
  br i1 %exitcond155.not.i, label %.preheader115.i, label %bb.bs, !llvm.loop !60

.preheader115.i:                                  ; preds = %.loopexit117.i
  %i.abs = icmp sgt i32 %.sroa.13.1.lcssa.i, 0
  br i1 %i.abs, label %.lr.ph144.i, label %HistogramCombineGreedy.exit.thread

.lr.ph144.i:                                      ; preds = %.preheader115.i
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abc, i64 24
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abc, i64 40
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abc, i64 48
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abc, i64 56
  %i.aca = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.acb = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.acc = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.acd = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ace = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.acg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ach = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.aci = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.acj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.acl = getelementptr inbounds nuw i8, ptr %20, i64 8
  br label %bb.co

bb.bs:                                            ; preds = %.loopexit117.i, %.lr.ph129.i
  %indvars.iv.i97 = phi i64 [ 0, %.lr.ph129.i ], [ %indvars.iv.next152.i, %.loopexit117.i ] ; 3 uses
  %.sroa.13.0127.i = phi i32 [ 0, %.lr.ph129.i ], [ %.sroa.13.1.lcssa.i, %.loopexit117.i ] ; 2 uses
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv.i97, 1 ; 4 uses
  %i.acm = icmp samesign ult i64 %indvars.iv.next152.i, %i.abr
  br i1 %i.acm, label %.lr.ph.i107, label %.loopexit117.i

.lr.ph.i107:                                      ; preds = %bb.bs
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %indvars.iv.i97
  %i.aco = trunc nuw nsw i64 %indvars.iv.i97 to i32
  br label %bb.bt

bb.bt:                                            ; preds = %HistoQueuePush.exit.i110, %.lr.ph.i107
  %indvars.iv148.i = phi i64 [ %indvars.iv.next152.i, %.lr.ph.i107 ], [ %indvars.iv.next149.i, %HistoQueuePush.exit.i110 ] ; 3 uses
  %.sroa.13.1125.i = phi i32 [ %.sroa.13.0127.i, %.lr.ph.i107 ], [ %.sroa.13.7.i, %HistoQueuePush.exit.i110 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  %i.acp = icmp eq i32 %.sroa.13.1125.i, %i.aaz
  br i1 %i.acp, label %HistoQueuePush.exit.i110, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.aco, ptr %23, align 8, !tbaa !80
  %i.acq = trunc nuw nsw i64 %indvars.iv148.i to i32
  store i32 %i.acq, ptr %i.abe, align 4, !tbaa !81
  %i.acr = load ptr, ptr %i.acn, align 8, !tbaa !32 ; 9 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %indvars.iv148.i
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !32 ; 10 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 3256
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !71
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 3256
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !71
  %i.acy = add i64 %i.acx, %i.acv                 ; 3 uses
  %i.acz = icmp slt i64 %i.acy, 1
  br i1 %i.acz, label %HistoQueuePush.exit.i110, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acr, i64 3304
  %i.adb = getelementptr inbounds nuw i8, ptr %i.act, i64 3304
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acr, i64 3244
  %i.add = getelementptr inbounds nuw i8, ptr %i.act, i64 3244
  %i.ade = getelementptr inbounds nuw i8, ptr %i.act, i64 3264
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acr, i64 3264
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acr, i64 3080
  %i.adh = getelementptr inbounds nuw i8, ptr %i.act, i64 3080
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acr, i64 2056
  %i.adj = getelementptr inbounds nuw i8, ptr %i.act, i64 2056
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acr, i64 1032
  %i.adl = getelementptr inbounds nuw i8, ptr %i.act, i64 1032
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.ado = getelementptr inbounds nuw i8, ptr %i.act, i64 3240
  br label %bb.bx

bb.bw:                                            ; preds = %GetCombinedEntropy.exit.i.i
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %exitcond.not.i.i113 = icmp eq i64 %indvars.iv.next.i.i112, 5
  br i1 %exitcond.not.i.i113, label %GetCombinedHistogramEntropy.exit.i, label %bb.bx, !llvm.loop !4

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.adp = phi i64 [ 0, %bb.bv ], [ %i.agn, %bb.bw ]
  %indvars.iv.i.i108 = phi i64 [ 0, %bb.bv ], [ %indvars.iv.next.i.i112, %bb.bw ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ada, i64 %indvars.iv.i.i108
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !21
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adb, i64 %indvars.iv.i.i108
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !21
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %indvars.iv.i.i108
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !20 ; 2 uses
  %.not.i.i62.i = icmp eq i16 %i.adv, -1
  br i1 %.not.i.i62.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %i.add, i64 %indvars.iv.i.i108
  %i.adx = load i16, ptr %i.adw, align 2, !tbaa !20
  %i.ady = icmp ne i16 %i.adv, %i.adx
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.adz = phi i1 [ true, %bb.bx ], [ %i.ady, %bb.by ]
  %i.aea = icmp ne i8 %i.adr, 0                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.adz, i1 %i.aea, i1 false
  %i.aeb = icmp ne i8 %i.adt, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.aeb, i1 false
  br i1 %or.cond3.i.i.i, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.aea, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %indvars.iv.i.i108
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !42
  br label %GetCombinedEntropy.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %indvars.iv.i.i108
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !42
  br label %GetCombinedEntropy.exit.i.i

bb.cd:                                            ; preds = %bb.bz
  %i.aeg = trunc nuw nsw i64 %indvars.iv.i.i108 to i32
  switch i32 %i.aeg, label %unreachable.i.i.i [
    i32 0, label %GetPopulationInfo.exit.thread.i.i.i
    i32 1, label %GetPopulationInfo.exit28.i.i.i
    i32 2, label %GetPopulationInfo.exit.thread44.i.i.i
    i32 3, label %GetPopulationInfo.exit.thread48.i.i.i
    i32 4, label %GetPopulationInfo.exit.thread52.i.i.i
  ]

GetPopulationInfo.exit.thread.i.i.i:              ; preds = %bb.cd
  %i.aeh = load ptr, ptr %i.acr, align 8, !tbaa !19
  %i.aei = load ptr, ptr %i.act, align 8, !tbaa !19
  %i.aej = load i32, ptr %i.ado, align 8, !tbaa !18 ; 2 uses
  %i.aek = icmp sgt i32 %i.aej, 0
  %i.ael = shl nuw i32 1, %i.aej
  %i.aem = add nuw nsw i32 %i.ael, 280
  %i.aen = select i1 %i.aek, i32 %i.aem, i32 280
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread44.i.i.i:            ; preds = %bb.cd
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread48.i.i.i:            ; preds = %bb.cd
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread52.i.i.i:            ; preds = %bb.cd
  br label %GetPopulationInfo.exit28.i.i.i

unreachable.i.i.i:                                ; preds = %bb.cd
  unreachable

GetPopulationInfo.exit28.i.i.i:                   ; preds = %GetPopulationInfo.exit.thread52.i.i.i, %GetPopulationInfo.exit.thread48.i.i.i, %GetPopulationInfo.exit.thread44.i.i.i, %GetPopulationInfo.exit.thread.i.i.i, %bb.cd
  %.13439.i.i.i = phi ptr [ %i.adg, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aeh, %GetPopulationInfo.exit.thread.i.i.i ], [ %i.adi, %GetPopulationInfo.exit.thread48.i.i.i ], [ %i.adk, %GetPopulationInfo.exit.thread44.i.i.i ], [ %i.adm, %bb.cd ]
  %.132.i.i.i = phi ptr [ %i.adh, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aei, %GetPopulationInfo.exit.thread.i.i.i ], [ %i.adj, %GetPopulationInfo.exit.thread48.i.i.i ], [ %i.adl, %GetPopulationInfo.exit.thread44.i.i.i ], [ %i.adn, %bb.cd ]
  %.1.i.i.i = phi i32 [ 40, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aen, %GetPopulationInfo.exit.thread.i.i.i ], [ 256, %GetPopulationInfo.exit.thread48.i.i.i ], [ 256, %GetPopulationInfo.exit.thread44.i.i.i ], [ 256, %bb.cd ]
  %i.aeo = load ptr, ptr @VP8LGetCombinedEntropyUnrefined, align 8, !tbaa !32
  call void %i.aeo(ptr noundef %.13439.i.i.i, ptr noundef %.132.i.i.i, i32 noundef %.1.i.i.i, ptr noundef nonnull %18, ptr noundef nonnull %17) #10, !inline_history !61
  %i.aep = load i32, ptr %i.abh, align 4, !tbaa !38 ; 3 uses
  %i.aeq = icmp slt i32 %i.aep, 5
  br i1 %i.aeq, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %GetPopulationInfo.exit28.i.i.i
  %i.aer = icmp slt i32 %i.aep, 2
  br i1 %i.aer, label %BitsEntropyRefine.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  switch i32 %i.aep, label %bb.cj [
    i32 2, label %bb.cg
    i32 3, label %bb.ck
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.aes = load i32, ptr %i.abi, align 8, !tbaa !39
  %i.aet = zext i32 %i.aes to i64
  %i.aeu = mul nuw nsw i64 %i.aet, 830472192
  %i.aev = load i64, ptr %18, align 8, !tbaa !40
  %i.aew = add i64 %i.aeu, %i.aev                 ; 3 uses
  %i.aex = icmp sgt i64 %i.aew, -1
  br i1 %i.aex, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.aey = add nuw nsw i64 %i.aew, 50
  %i.aez = udiv i64 %i.aey, 100
  br label %BitsEntropyRefine.exit.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %.neg8.i.i.i.i.i = sub i64 50, %i.aew
  %i.afa = udiv i64 %.neg8.i.i.i.i.i, 100
  %.neg.i.i.i.i.i = sub nsw i64 0, %i.afa
  br label %BitsEntropyRefine.exit.i.i.i

bb.cj:                                            ; preds = %bb.cf
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cf, %GetPopulationInfo.exit28.i.i.i
  %.0.i.i.i.i = phi i64 [ 950, %bb.cf ], [ 700, %bb.cj ], [ 627, %GetPopulationInfo.exit28.i.i.i ] ; 2 uses
  %i.afb = load i32, ptr %i.abi, align 8, !tbaa !39
  %i.afc = shl i32 %i.afb, 1
  %i.afd = load i32, ptr %i.abj, align 8, !tbaa !41
  %i.afe = sub i32 %i.afc, %i.afd
  %i.aff = zext i32 %i.afe to i64
  %i.afg = shl nuw nsw i64 %.0.i.i.i.i, 23
  %i.afh = mul i64 %i.afg, %i.aff
  %i.afi = sub nuw nsw i64 1000, %.0.i.i.i.i
  %i.afj = load i64, ptr %18, align 8, !tbaa !40  ; 2 uses
  %i.afk = mul i64 %i.afj, %i.afi
  %i.afl = add i64 %i.afh, %i.afk                 ; 3 uses
  %i.afm = icmp sgt i64 %i.afl, -1
  br i1 %i.afm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.afn = add nuw nsw i64 %i.afl, 500
  %i.afo = udiv i64 %i.afn, 1000
  br label %DivRound.exit22.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %.neg8.i20.i.i.i.i = sub i64 500, %i.afl
  %i.afp = udiv i64 %.neg8.i20.i.i.i.i, 1000
  %.neg.i21.i.i.i.i = sub nsw i64 0, %i.afp
  br label %DivRound.exit22.i.i.i.i

DivRound.exit22.i.i.i.i:                          ; preds = %bb.cm, %bb.cl
  %i.afq = phi i64 [ %i.afo, %bb.cl ], [ %.neg.i21.i.i.i.i, %bb.cm ]
  %..i.i.i.i = call i64 @llvm.umax.i64(i64 %i.afj, i64 %i.afq)
  br label %BitsEntropyRefine.exit.i.i.i

BitsEntropyRefine.exit.i.i.i:                     ; preds = %DivRound.exit22.i.i.i.i, %bb.ci, %bb.ch, %bb.ce
  %.016.i.i.i.i = phi i64 [ %..i.i.i.i, %DivRound.exit22.i.i.i.i ], [ 0, %bb.ce ], [ %i.aez, %bb.ch ], [ %.neg.i.i.i.i.i, %bb.ci ]
  %i.afr = load i32, ptr %17, align 4, !tbaa !35
  %i.afs = mul nsw i32 %i.afr, 1600
  %i.aft = load i32, ptr %i.abl, align 4, !tbaa !35
  %i.afu = mul nsw i32 %i.aft, 240
  %i.afv = load i32, ptr %i.abm, align 4, !tbaa !35
  %i.afw = mul nsw i32 %i.afv, 2640
  %i.afx = load i32, ptr %i.abo, align 4, !tbaa !35
end_hunk_0
