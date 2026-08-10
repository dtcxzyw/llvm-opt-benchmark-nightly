inline.NumInlined: 117
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@VP8LGetHistoImageSymbols:bb.a
  store i64 %i.ya, ptr %i.yc, align 8, !tbaa !46
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 3264
  %i.ye = load i64, ptr %i.vh, align 8, !tbaa !45
  store i64 %i.ye, ptr %i.yd, align 8, !tbaa !45
  %i.yf = load i64, ptr %i.vi, align 8, !tbaa !45
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 3272
  store i64 %i.yf, ptr %i.yg, align 8, !tbaa !45
  %i.yh = load i64, ptr %i.vj, align 8, !tbaa !45
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yb, i64 3280
  store i64 %i.yh, ptr %i.yi, align 8, !tbaa !45
  %i.yj = load i64, ptr %i.vk, align 8, !tbaa !45
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yb, i64 3288
  store i64 %i.yj, ptr %i.yk, align 8, !tbaa !45
  %i.yl = load i64, ptr %i.vl, align 8, !tbaa !45
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yb, i64 3296
  store i64 %i.yl, ptr %i.ym, align 8, !tbaa !45
  %i.yn = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  %i.yo = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr [8 x i8], ptr %i.yn, i64 %i.yp
  %i.yr = getelementptr i8, ptr %i.yq, i64 -8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !27
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %i.xu
  store ptr %i.ys, ptr %i.yt, align 8, !tbaa !27
  %i.yu = add nsw i32 %i.yo, -1
  store i32 %i.yu, ptr %7, align 8, !tbaa !26
  %i.yv = icmp sgt i32 %.sroa.13.2179.i, 0
  br i1 %i.yv, label %.lr.ph150.i, label %.loopexit.i

.lr.ph150.i:                                      ; preds = %HistoQueuePush.exit._crit_edge.thread.i, %bb.bq
  %.1148.i = phi i32 [ %.2.i90, %bb.bq ], [ 0, %HistoQueuePush.exit._crit_edge.thread.i ] ; 4 uses
  %.sroa.13.3147.i = phi i32 [ %.sroa.13.4.i, %bb.bq ], [ %.sroa.13.2179.i, %HistoQueuePush.exit._crit_edge.thread.i ] ; 5 uses
  %i.yw = sext i32 %.1148.i to i64
  %i.yx = getelementptr inbounds [64 x i8], ptr %i.uy, i64 %i.yw ; 15 uses
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !63 ; 4 uses
  %i.yz = icmp eq i32 %i.yy, %i.xs
  %i.za = icmp eq i32 %i.yy, %i.xt                ; 2 uses
  %spec.select101.i = or i1 %i.yz, %i.za          ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 4 ; 6 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !64 ; 3 uses
  %i.zd = icmp eq i32 %i.zc, %i.xs
  %i.ze = icmp eq i32 %i.zc, %i.xt                ; 2 uses
  %i.zf = or i1 %i.zd, %i.ze                      ; 2 uses
  %or.cond.i89 = and i1 %spec.select101.i, %i.zf
  br i1 %or.cond.i89, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph150.i
  %i.zg = sext i32 %.sroa.13.3147.i to i64
  %i.zh = getelementptr [64 x i8], ptr %i.uy, i64 %i.zg
  %i.zi = getelementptr i8, ptr %i.zh, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yx, ptr noundef nonnull align 8 dereferenceable(64) %i.zi, i64 64, i1 false), !tbaa.struct !66
  %i.zj = add nsw i32 %.sroa.13.3147.i, -1
  br label %bb.bq, !llvm.loop !68

bb.bb:                                            ; preds = %.lr.ph150.i
  %or.cond3.i = or i1 %spec.select101.i, %i.zf
  br i1 %or.cond3.i, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.za, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.xs, ptr %i.yx, align 8, !tbaa !63
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.zk = phi i32 [ %i.xs, %bb.bd ], [ %i.yy, %bb.bc ] ; 4 uses
  br i1 %i.ze, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 %i.xs, ptr %i.zb, align 4, !tbaa !64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.zl = phi i32 [ %i.xs, %bb.bf ], [ %i.zc, %bb.be ] ; 4 uses
  %i.zm = icmp sgt i32 %i.zk, %i.zl
  br i1 %i.zm, label %bb.bh, label %HistoQueueFixPair.exit.i

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.zl, ptr %i.yx, align 8, !tbaa !63
  store i32 %i.zk, ptr %i.zb, align 4, !tbaa !64
  br label %HistoQueueFixPair.exit.i

HistoQueueFixPair.exit.i:                         ; preds = %bb.bh, %bb.bg
  %i.zn = phi i32 [ %i.zl, %bb.bg ], [ %i.zk, %bb.bh ]
  %i.zo = phi i32 [ %i.zk, %bb.bg ], [ %i.zl, %bb.bh ]
  %i.zp = sext i32 %i.zo to i64
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.zp
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !27 ; 2 uses
  %i.zs = sext i32 %i.zn to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.zs
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !27 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 3256
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !46
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 3256
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !46
  %i.zz = add i64 %i.zy, %i.zw                    ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yx, i64 16 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.aac = call fastcc i32 @GetCombinedHistogramEntropy(ptr noundef %i.zr, ptr noundef %i.zu, i64 noundef %i.zz, ptr noundef nonnull %i.aaa, ptr noundef nonnull %i.aab)
  %.not.i.i91 = icmp eq i32 %i.aac, 0
  br i1 %.not.i.i91, label %bb.bi, label %HistoQueueUpdatePair.exit.i

HistoQueueUpdatePair.exit.i:                      ; preds = %HistoQueueFixPair.exit.i
  %i.aad = load i64, ptr %i.aaa, align 8, !tbaa !65
  %i.aae = sub nsw i64 %i.aad, %i.zz
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  store i64 %i.aae, ptr %i.aaf, align 8, !tbaa !61
  %.pre.i92 = load i32, ptr %i.yx, align 8, !tbaa !63
  br label %bb.bj

bb.bi:                                            ; preds = %HistoQueueFixPair.exit.i
  %i.aag = sext i32 %.sroa.13.3147.i to i64
  %i.aah = getelementptr [64 x i8], ptr %i.uy, i64 %i.aag
  %i.aai = getelementptr i8, ptr %i.aah, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yx, ptr noundef nonnull align 8 dereferenceable(64) %i.aai, i64 64, i1 false), !tbaa.struct !66
  %i.aaj = add nsw i32 %.sroa.13.3147.i, -1
  br label %bb.bq, !llvm.loop !68

bb.bj:                                            ; preds = %HistoQueueUpdatePair.exit.i, %bb.bb
  %i.aak = phi i32 [ %.pre.i92, %HistoQueueUpdatePair.exit.i ], [ %i.yy, %bb.bb ] ; 2 uses
  %i.aal = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.aam = icmp eq i32 %i.aak, %i.aal
  br i1 %i.aam, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.xt, ptr %i.yx, align 8, !tbaa !63
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.aan = phi i32 [ %i.xt, %bb.bk ], [ %i.aak, %bb.bj ] ; 2 uses
  %i.aao = load i32, ptr %i.zb, align 4, !tbaa !64 ; 2 uses
  %i.aap = icmp eq i32 %i.aao, %i.aal
  br i1 %i.aap, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.xt, ptr %i.zb, align 4, !tbaa !64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.aaq = phi i32 [ %i.xt, %bb.bm ], [ %i.aao, %bb.bl ] ; 2 uses
  %i.aar = icmp sgt i32 %i.aan, %i.aaq
  br i1 %i.aar, label %bb.bo, label %HistoQueueFixPair.exit105.i

bb.bo:                                            ; preds = %bb.bn
  store i32 %i.aaq, ptr %i.yx, align 8, !tbaa !63
  store i32 %i.aan, ptr %i.zb, align 4, !tbaa !64
  br label %HistoQueueFixPair.exit105.i

HistoQueueFixPair.exit105.i:                      ; preds = %bb.bo, %bb.bn
  %i.aas = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !61
  %i.aau = load i64, ptr %i.va, align 8, !tbaa !61
  %i.aav = icmp slt i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.bp, label %HistoQueueUpdateHead.exit.i

bb.bp:                                            ; preds = %HistoQueueFixPair.exit105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %i.uy, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.uy, ptr noundef nonnull align 8 dereferenceable(64) %i.yx, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yx, ptr noundef nonnull align 8 dereferenceable(64) %24, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %HistoQueueUpdateHead.exit.i

HistoQueueUpdateHead.exit.i:                      ; preds = %bb.bp, %HistoQueueFixPair.exit105.i
  %i.aaw = add nsw i32 %.1148.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %HistoQueueUpdateHead.exit.i, %bb.bi, %bb.ba
  %.sroa.13.4.i = phi i32 [ %i.zj, %bb.ba ], [ %i.aaj, %bb.bi ], [ %.sroa.13.3147.i, %HistoQueueUpdateHead.exit.i ] ; 3 uses
  %.2.i90 = phi i32 [ %.1148.i, %bb.ba ], [ %.1148.i, %bb.bi ], [ %i.aaw, %HistoQueueUpdateHead.exit.i ] ; 2 uses
  %i.aax = icmp slt i32 %.2.i90, %.sroa.13.4.i
  br i1 %i.aax, label %.lr.ph150.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bq, %HistoQueuePush.exit._crit_edge.thread.i, %HistoQueuePush.exit._crit_edge.i
  %.2127181.i = phi i32 [ %.2127.i, %HistoQueuePush.exit._crit_edge.i ], [ %.2127180.i, %HistoQueuePush.exit._crit_edge.thread.i ], [ %.2127180.i, %bb.bq ]
  %.sroa.13.5.i = phi i32 [ 0, %HistoQueuePush.exit._crit_edge.i ], [ %.sroa.13.2179.i, %HistoQueuePush.exit._crit_edge.thread.i ], [ %.sroa.13.4.i, %bb.bq ]
  %.185.i = phi i32 [ %i.vn, %HistoQueuePush.exit._crit_edge.i ], [ 0, %HistoQueuePush.exit._crit_edge.thread.i ], [ 0, %bb.bq ]
  %i.aay = add nuw nsw i32 %.082155.i, 1          ; 2 uses
  %exitcond.not.i88 = icmp eq i32 %i.aay, %i.un
  br i1 %exitcond.not.i88, label %.loopexit, label %bb.ar, !llvm.loop !69

bb.br:                                            ; preds = %bb.aq
  call void @WebPSafeFree(ptr noundef null) #10
  %i.aaz = call i32 @WebPEncodingSetError(ptr noundef %10, i32 noundef 1) #10 ; 0 uses
  br label %bb.eu

.loopexit:                                        ; preds = %.loopexit.i, %bb.as, %bb.ar, %.preheader.i
  %i.aba = load i32, ptr %7, align 8, !tbaa !26
  %.not159 = icmp sgt i32 %i.aba, %i.uv
  call void @WebPSafeFree(ptr noundef nonnull %i.uy) #10
  %.pre199.a = load i32, ptr %7, align 8, !tbaa !26 ; 2 uses
  br i1 %.not159, label %.thread153, label %.thread148thread-pre-split

.thread148thread-pre-split:                       ; preds = %.loopexit
  %.pre197 = load ptr, ptr %i.gk, align 8, !tbaa !22
  br label %.thread148

.thread148:                                       ; preds = %.thread148thread-pre-split, %DivRound.exit
  %i.abb = phi ptr [ %.pre197, %.thread148thread-pre-split ], [ %i.ux, %DivRound.exit ] ; 4 uses
  %i.abc = phi i32 [ %.pre199.a, %.thread148thread-pre-split ], [ %i.un, %DivRound.exit ] ; 6 uses
  %i.abd = mul nsw i32 %i.abc, %i.abc             ; 5 uses
  %i.abe = add nuw nsw i32 %i.abd, 1
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = call ptr @WebPSafeMalloc(i64 noundef %i.abf, i64 noundef 64) #10 ; 23 uses
  %.not115.i = icmp eq ptr %i.abg, null
  br i1 %.not115.i, label %bb.dv, label %.preheader119.i

.preheader119.i:                                  ; preds = %.thread148
  %i.abh = icmp sgt i32 %i.abc, 0
  br i1 %i.abh, label %.lr.ph130.i, label %HistogramCombineGreedy.exit.thread

.lr.ph130.i:                                      ; preds = %.preheader119.i
  %i.abi = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.abj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.abk = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.abl = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.abm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.abo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.abq = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.abr = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.abs = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.abt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 3 uses
  br label %bb.bs

.loopexit118.i:                                   ; preds = %HistoQueuePush.exit.i109, %bb.bs
  %.sroa.13.1.lcssa.i = phi i32 [ %.sroa.13.0128.i, %bb.bs ], [ %.sroa.13.7.i, %HistoQueuePush.exit.i109 ] ; 3 uses
  %exitcond149.not.i = icmp eq i32 %29, %i.abc
  br i1 %exitcond149.not.i, label %.preheader116.i, label %bb.bs, !llvm.loop !70

.preheader116.i:                                  ; preds = %.loopexit118.i
  %i.abv = icmp sgt i32 %.sroa.13.1.lcssa.i, 0
  br i1 %i.abv, label %.lr.ph145.i, label %HistogramCombineGreedy.exit.thread

.lr.ph145.i:                                      ; preds = %.preheader116.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 4
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abg, i64 40
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abg, i64 48
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abg, i64 56
  %i.acd = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.ace = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.acf = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.acg = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ach = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ack = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.acl = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.acm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.acn = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.aco = getelementptr inbounds nuw i8, ptr %20, i64 8
  br label %bb.cn

bb.bs:                                            ; preds = %.loopexit118.i, %.lr.ph130.i
  %.048129.i = phi i32 [ 0, %.lr.ph130.i ], [ %29, %.loopexit118.i ] ; 3 uses
  %.sroa.13.0128.i = phi i32 [ 0, %.lr.ph130.i ], [ %.sroa.13.1.lcssa.i, %.loopexit118.i ] ; 2 uses
  %29 = add nuw nsw i32 %.048129.i, 1             ; 4 uses
  %30 = icmp slt i32 %29, %i.abc
  br i1 %30, label %.lr.ph.i106, label %.loopexit118.i

.lr.ph.i106:                                      ; preds = %bb.bs, %HistoQueuePush.exit.i109
  %.049127.i = phi i32 [ %34, %HistoQueuePush.exit.i109 ], [ %29, %bb.bs ] ; 3 uses
  %.sroa.13.1126.i = phi i32 [ %.sroa.13.7.i, %HistoQueuePush.exit.i109 ], [ %.sroa.13.0128.i, %bb.bs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  %i.acp = icmp eq i32 %.sroa.13.1126.i, %i.abd
  br i1 %i.acp, label %HistoQueuePush.exit.i109, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i106
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %.048129.i, i32 %.049127.i) ; 2 uses
  %spec.select26.i.i = call i32 @llvm.smin.i32(i32 %.048129.i, i32 %.049127.i) ; 2 uses
  store i32 %spec.select26.i.i, ptr %23, align 8, !tbaa !63
  store i32 %spec.select.i.i, ptr %i.abi, align 4, !tbaa !64
  %31 = zext nneg i32 %spec.select26.i.i to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %31
  %i.acq = load ptr, ptr %32, align 8, !tbaa !27  ; 9 uses
  %33 = zext nneg i32 %spec.select.i.i to i64
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %33
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !27 ; 10 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 3256
  %i.acu = load i64, ptr %i.act, align 8, !tbaa !46
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 3256
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !46
  %i.acx = add i64 %i.acw, %i.acu                 ; 3 uses
  %i.acy = icmp slt i64 %i.acx, 1
  br i1 %i.acy, label %HistoQueuePush.exit.i109, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acq, i64 3304
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acs, i64 3304
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acq, i64 3244
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acs, i64 3244
  %i.add = getelementptr inbounds nuw i8, ptr %i.acs, i64 3264
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acq, i64 3264
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acq, i64 3080
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acs, i64 3080
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acq, i64 2056
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acs, i64 2056
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acq, i64 1032
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acs, i64 1032
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acs, i64 3240
  br label %bb.bw

bb.bv:                                            ; preds = %GetCombinedEntropy.exit.i.i
  %indvars.iv.next.i.i111 = add nuw nsw i64 %indvars.iv.i.i107, 1 ; 2 uses
  %exitcond.not.i.i112 = icmp eq i64 %indvars.iv.next.i.i111, 5
  br i1 %exitcond.not.i.i112, label %GetCombinedHistogramEntropy.exit.i, label %bb.bw, !llvm.loop !71

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ado = phi i64 [ 0, %bb.bu ], [ %i.agm, %bb.bv ]
  %indvars.iv.i.i107 = phi i64 [ 0, %bb.bu ], [ %indvars.iv.next.i.i111, %bb.bv ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acz, i64 %indvars.iv.i.i107
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !15
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ada, i64 %indvars.iv.i.i107
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !15
  %i.adt = getelementptr inbounds nuw [2 x i8], ptr %i.adb, i64 %indvars.iv.i.i107
  %i.adu = load i16, ptr %i.adt, align 2, !tbaa !14 ; 2 uses
  %.not.i.i62.i = icmp eq i16 %i.adu, -1
  br i1 %.not.i.i62.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.adv = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %indvars.iv.i.i107
  %i.adw = load i16, ptr %i.adv, align 2, !tbaa !14
  %i.adx = icmp ne i16 %i.adu, %i.adw
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ady = phi i1 [ true, %bb.bw ], [ %i.adx, %bb.bx ]
  %i.adz = icmp ne i8 %i.adq, 0                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.ady, i1 %i.adz, i1 false
  %i.aea = icmp ne i8 %i.ads, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.aea, i1 false
  br i1 %or.cond3.i.i.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  br i1 %i.adz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %indvars.iv.i.i107
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv.i.i107
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !45
  br label %GetCombinedEntropy.exit.i.i

bb.cc:                                            ; preds = %bb.by
  %i.aef = trunc nuw nsw i64 %indvars.iv.i.i107 to i32
  switch i32 %i.aef, label %unreachable.i.i.i [
    i32 0, label %GetPopulationInfo.exit.thread.i.i.i
    i32 1, label %GetPopulationInfo.exit28.i.i.i
    i32 2, label %GetPopulationInfo.exit.thread44.i.i.i
    i32 3, label %GetPopulationInfo.exit.thread48.i.i.i
    i32 4, label %GetPopulationInfo.exit.thread52.i.i.i
  ]

GetPopulationInfo.exit.thread.i.i.i:              ; preds = %bb.cc
  %i.aeg = load ptr, ptr %i.acq, align 8, !tbaa !13
  %i.aeh = load ptr, ptr %i.acs, align 8, !tbaa !13
  %i.aei = load i32, ptr %i.adn, align 8, !tbaa !7 ; 2 uses
  %i.aej = icmp sgt i32 %i.aei, 0
  %i.aek = shl nuw i32 1, %i.aei
  %i.ael = add nuw nsw i32 %i.aek, 280
  %i.aem = select i1 %i.aej, i32 %i.ael, i32 280
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread44.i.i.i:            ; preds = %bb.cc
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread48.i.i.i:            ; preds = %bb.cc
  br label %GetPopulationInfo.exit28.i.i.i

GetPopulationInfo.exit.thread52.i.i.i:            ; preds = %bb.cc
  br label %GetPopulationInfo.exit28.i.i.i

unreachable.i.i.i:                                ; preds = %bb.cc
  unreachable

GetPopulationInfo.exit28.i.i.i:                   ; preds = %GetPopulationInfo.exit.thread52.i.i.i, %GetPopulationInfo.exit.thread48.i.i.i, %GetPopulationInfo.exit.thread44.i.i.i, %GetPopulationInfo.exit.thread.i.i.i, %bb.cc
  %.13439.i.i.i = phi ptr [ %i.adf, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aeg, %GetPopulationInfo.exit.thread.i.i.i ], [ %i.adh, %GetPopulationInfo.exit.thread48.i.i.i ], [ %i.adj, %GetPopulationInfo.exit.thread44.i.i.i ], [ %i.adl, %bb.cc ]
  %.132.i.i.i = phi ptr [ %i.adg, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aeh, %GetPopulationInfo.exit.thread.i.i.i ], [ %i.adi, %GetPopulationInfo.exit.thread48.i.i.i ], [ %i.adk, %GetPopulationInfo.exit.thread44.i.i.i ], [ %i.adm, %bb.cc ]
  %.1.i.i.i = phi i32 [ 40, %GetPopulationInfo.exit.thread52.i.i.i ], [ %i.aem, %GetPopulationInfo.exit.thread.i.i.i ], [ 256, %GetPopulationInfo.exit.thread48.i.i.i ], [ 256, %GetPopulationInfo.exit.thread44.i.i.i ], [ 256, %bb.cc ]
  %i.aen = load ptr, ptr @VP8LGetCombinedEntropyUnrefined, align 8, !tbaa !27
  call void %i.aen(ptr noundef %.13439.i.i.i, ptr noundef %.132.i.i.i, i32 noundef %.1.i.i.i, ptr noundef nonnull %18, ptr noundef nonnull %17) #10, !inline_history !72
  %i.aeo = load i32, ptr %i.abl, align 4, !tbaa !37 ; 3 uses
  %i.aep = icmp slt i32 %i.aeo, 5
  br i1 %i.aep, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %GetPopulationInfo.exit28.i.i.i
  %i.aeq = icmp slt i32 %i.aeo, 2
  br i1 %i.aeq, label %BitsEntropyRefine.exit.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.aeo, label %bb.ci [
    i32 2, label %bb.cf
    i32 3, label %bb.cj
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.aer = load i32, ptr %i.abm, align 8, !tbaa !39
  %i.aes = zext i32 %i.aer to i64
  %i.aet = mul nuw nsw i64 %i.aes, 830472192
  %i.aeu = load i64, ptr %18, align 8, !tbaa !40
  %i.aev = add i64 %i.aet, %i.aeu                 ; 3 uses
  %i.aew = icmp sgt i64 %i.aev, -1
  br i1 %i.aew, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.aex = add nuw nsw i64 %i.aev, 50
  %i.aey = udiv i64 %i.aex, 100
  br label %BitsEntropyRefine.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %.neg8.i.i.i.i.i = sub i64 50, %i.aev
  %i.aez = udiv i64 %.neg8.i.i.i.i.i, 100
  %.neg.i.i.i.i.i = sub nsw i64 0, %i.aez
  br label %BitsEntropyRefine.exit.i.i.i

bb.ci:                                            ; preds = %bb.ce
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ce, %GetPopulationInfo.exit28.i.i.i
  %.0.i.i.i.i = phi i64 [ 950, %bb.ce ], [ 700, %bb.ci ], [ 627, %GetPopulationInfo.exit28.i.i.i ] ; 2 uses
  %i.afa = load i32, ptr %i.abm, align 8, !tbaa !39
  %i.afb = shl i32 %i.afa, 1
  %i.afc = load i32, ptr %i.abn, align 8, !tbaa !41
  %i.afd = sub i32 %i.afb, %i.afc
  %i.afe = zext i32 %i.afd to i64
  %i.aff = shl nuw nsw i64 %.0.i.i.i.i, 23
  %i.afg = mul i64 %i.aff, %i.afe
  %i.afh = sub nuw nsw i64 1000, %.0.i.i.i.i
  %i.afi = load i64, ptr %18, align 8, !tbaa !40  ; 2 uses
  %i.afj = mul i64 %i.afi, %i.afh
  %i.afk = add i64 %i.afg, %i.afj                 ; 3 uses
  %i.afl = icmp sgt i64 %i.afk, -1
  br i1 %i.afl, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.afm = add nuw nsw i64 %i.afk, 500
  %i.afn = udiv i64 %i.afm, 1000
  br label %DivRound.exit22.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %.neg8.i20.i.i.i.i = sub i64 500, %i.afk
  %i.afo = udiv i64 %.neg8.i20.i.i.i.i, 1000
  %.neg.i21.i.i.i.i = sub nsw i64 0, %i.afo
  br label %DivRound.exit22.i.i.i.i

DivRound.exit22.i.i.i.i:                          ; preds = %bb.cl, %bb.ck
  %i.afp = phi i64 [ %i.afn, %bb.ck ], [ %.neg.i21.i.i.i.i, %bb.cl ]
  %..i.i.i.i = call i64 @llvm.umax.i64(i64 %i.afi, i64 %i.afp)
  br label %BitsEntropyRefine.exit.i.i.i

BitsEntropyRefine.exit.i.i.i:                     ; preds = %DivRound.exit22.i.i.i.i, %bb.ch, %bb.cg, %bb.cd
  %.016.i.i.i.i = phi i64 [ %..i.i.i.i, %DivRound.exit22.i.i.i.i ], [ 0, %bb.cd ], [ %i.aey, %bb.cg ], [ %.neg.i.i.i.i.i, %bb.ch ]
  %i.afq = load i32, ptr %17, align 4, !tbaa !3
  %i.afr = mul nsw i32 %i.afq, 1600
  %i.afs = load i32, ptr %i.abp, align 4, !tbaa !3
  %i.aft = mul nsw i32 %i.afs, 240
  %i.afu = load i32, ptr %i.abq, align 4, !tbaa !3
  %i.afv = mul nsw i32 %i.afu, 2640
  %i.afw = load i32, ptr %i.abs, align 4, !tbaa !3
  %i.afx = mul nsw i32 %i.afw, 720
  %i.afy = load i32, ptr %i.abo, align 4, !tbaa !3
  %i.afz = mul nsw i32 %i.afy, 1840
  %i.aga = load i32, ptr %i.abr, align 4, !tbaa !3
  %i.agb = mul nsw i32 %i.aga, 3360
  %i.agc = add i32 %i.aft, %i.afr
  %i.agd = add i32 %i.agc, %i.afv
  %i.age = add i32 %i.agd, %i.afx
  %i.agf = add i32 %i.age, %i.afz
  %i.agg = add i32 %i.agf, %i.agb
  %i.agh = zext i32 %i.agg to i64
  %i.agi = shl nuw nsw i64 %i.agh, 13
  %i.agj = add i64 %.016.i.i.i.i, 401814323
  %i.agk = add i64 %i.agj, %i.agi
  br label %GetCombinedEntropy.exit.i.i

GetCombinedEntropy.exit.i.i:                      ; preds = %BitsEntropyRefine.exit.i.i.i, %bb.cb, %bb.ca
  %.0.i.i.i = phi i64 [ %i.agk, %BitsEntropyRefine.exit.i.i.i ], [ %i.aec, %bb.ca ], [ %i.aee, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv.i.i107
  store i64 %.0.i.i.i, ptr %i.agl, align 8, !tbaa !45
  %i.agm = add i64 %.0.i.i.i, %i.ado              ; 4 uses
  %.not.i.i108 = icmp ult i64 %i.agm, %i.acx
  br i1 %.not.i.i108, label %bb.bv, label %HistoQueuePush.exit.i109

GetCombinedHistogramEntropy.exit.i:               ; preds = %bb.bv
  store i64 %i.agm, ptr %i.abj, align 8
  %i.agn = sub nsw i64 %i.agm, %i.acx
  store i64 %i.agn, ptr %i.abt, align 8, !tbaa !61
  %i.ago = add nsw i32 %.sroa.13.1126.i, 1        ; 3 uses
  %i.agp = sext i32 %.sroa.13.1126.i to i64
  %i.agq = getelementptr inbounds [64 x i8], ptr %i.abg, i64 %i.agp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agq, ptr noundef nonnull align 8 dereferenceable(64) %23, i64 64, i1 false), !tbaa.struct !66
  %i.agr = sext i32 %i.ago to i64
  %i.ags = getelementptr [64 x i8], ptr %i.abg, i64 %i.agr ; 2 uses
  %i.agt = getelementptr i8, ptr %i.ags, i64 -56
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !61
  %i.agv = load i64, ptr %i.abu, align 8, !tbaa !61
  %i.agw = icmp slt i64 %i.agu, %i.agv
  br i1 %i.agw, label %bb.cm, label %HistoQueuePush.exit.i109

bb.cm:                                            ; preds = %GetCombinedHistogramEntropy.exit.i
  %i.agx = getelementptr i8, ptr %i.ags, i64 -64  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(64) %i.abg, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abg, ptr noundef nonnull align 8 dereferenceable(64) %i.agx, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agx, ptr noundef nonnull align 8 dereferenceable(64) %22, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %HistoQueuePush.exit.i109

HistoQueuePush.exit.i109:                         ; preds = %GetCombinedEntropy.exit.i.i, %bb.cm, %GetCombinedHistogramEntropy.exit.i, %bb.bt, %.lr.ph.i106
  %.sroa.13.7.i = phi i32 [ %i.abd, %.lr.ph.i106 ], [ %i.ago, %GetCombinedHistogramEntropy.exit.i ], [ %i.ago, %bb.cm ], [ %.sroa.13.1126.i, %bb.bt ], [ %.sroa.13.1126.i, %GetCombinedEntropy.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  %34 = add nuw i32 %.049127.i, 1                 ; 2 uses
  %exitcond.not.i110 = icmp eq i32 %34, %i.abc
  br i1 %exitcond.not.i110, label %.loopexit118.i, label %.lr.ph.i106, !llvm.loop !73

.loopexit.i104:                                   ; preds = %bb.du, %.preheader.i103
  %.sroa.13.5.lcssa.i = phi i32 [ %.sroa.13.4.i101, %.preheader.i103 ], [ %.sroa.13.6.i, %bb.du ] ; 2 uses
  %i.agy = icmp sgt i32 %.sroa.13.5.lcssa.i, 0
  br i1 %i.agy, label %bb.cn, label %HistogramCombineGreedy.exit.thread, !llvm.loop !74

bb.cn:                                            ; preds = %.loopexit.i104, %.lr.ph145.i
  %.sroa.13.2144.i = phi i32 [ %.sroa.13.1.lcssa.i, %.lr.ph145.i ], [ %.sroa.13.5.lcssa.i, %.loopexit.i104 ]
  %i.agz = load i32, ptr %i.abg, align 8, !tbaa !63 ; 6 uses
  %i.aha = load i32, ptr %i.abw, align 4, !tbaa !64 ; 7 uses
  %i.ahb = sext i32 %i.aha to i64                 ; 2 uses
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.ahb
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !27
  %i.ahe = sext i32 %i.agz to i64
  %i.ahf = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.ahe ; 2 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !27 ; 2 uses
  call fastcc void @HistogramAdd(ptr noundef %i.ahd, ptr noundef %i.ahg, ptr noundef %i.ahg)
  %i.ahh = load i64, ptr %i.abx, align 8, !tbaa !65
  %i.ahi = load ptr, ptr %i.ahf, align 8, !tbaa !27 ; 6 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 3256
  store i64 %i.ahh, ptr %i.ahj, align 8, !tbaa !46
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 3264
  %i.ahl = load i64, ptr %i.aby, align 8, !tbaa !45
  store i64 %i.ahl, ptr %i.ahk, align 8, !tbaa !45
  %i.ahm = load i64, ptr %i.abz, align 8, !tbaa !45
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahi, i64 3272
  store i64 %i.ahm, ptr %i.ahn, align 8, !tbaa !45
  %i.aho = load i64, ptr %i.aca, align 8, !tbaa !45
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahi, i64 3280
  store i64 %i.aho, ptr %i.ahp, align 8, !tbaa !45
  %i.ahq = load i64, ptr %i.acb, align 8, !tbaa !45
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahi, i64 3288
  store i64 %i.ahq, ptr %i.ahr, align 8, !tbaa !45
  %i.ahs = load i64, ptr %i.acc, align 8, !tbaa !45
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahi, i64 3296
  store i64 %i.ahs, ptr %i.aht, align 8, !tbaa !45
  %i.ahu = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  %i.ahv = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr [8 x i8], ptr %i.ahu, i64 %i.ahw
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 -8
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !27
  %i.aia = getelementptr inbounds [8 x i8], ptr %i.ahu, i64 %i.ahb
  store ptr %i.ahz, ptr %i.aia, align 8, !tbaa !27
  %i.aib = add nsw i32 %i.ahv, -1
  store i32 %i.aib, ptr %7, align 8, !tbaa !26
  br label %bb.co

.preheader.i103:                                  ; preds = %bb.cy
  %i.aic = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.aid = icmp sgt i32 %i.aic, 0
  br i1 %i.aid, label %.lr.ph142.i, label %.loopexit.i104

bb.co:                                            ; preds = %bb.cy, %bb.cn
  %.1133.i = phi i32 [ 0, %bb.cn ], [ %.2.i102, %bb.cy ] ; 3 uses
  %.sroa.13.3132.i = phi i32 [ %.sroa.13.2144.i, %bb.cn ], [ %.sroa.13.4.i101, %bb.cy ] ; 3 uses
  %i.aie = sext i32 %.1133.i to i64
  %i.aif = getelementptr inbounds [64 x i8], ptr %i.abg, i64 %i.aie ; 8 uses
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !63 ; 4 uses
  %i.aih = icmp eq i32 %i.aig, %i.agz
  br i1 %i.aih, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 4 ; 3 uses
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !64 ; 4 uses
  %i.aik = icmp eq i32 %i.aij, %i.agz
  %i.ail = icmp eq i32 %i.aig, %i.aha
  %or.cond.i98 = or i1 %i.ail, %i.aik
  %i.aim = icmp eq i32 %i.aij, %i.aha
  %or.cond56.i = or i1 %i.aim, %or.cond.i98
  br i1 %or.cond56.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ain = sext i32 %.sroa.13.3132.i to i64
  %i.aio = getelementptr [64 x i8], ptr %i.abg, i64 %i.ain
  %i.aip = getelementptr i8, ptr %i.aio, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aif, ptr noundef nonnull align 8 dereferenceable(64) %i.aip, i64 64, i1 false), !tbaa.struct !66
  %i.aiq = add nsw i32 %.sroa.13.3132.i, -1
  br label %bb.cy

bb.cr:                                            ; preds = %bb.cp
  %i.air = load i32, ptr %7, align 8, !tbaa !26   ; 2 uses
  %i.ais = icmp eq i32 %i.aig, %i.air
  br i1 %i.ais, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.aha, ptr %i.aif, align 8, !tbaa !63
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ait = phi i32 [ %i.aha, %bb.cs ], [ %i.aig, %bb.cr ] ; 2 uses
  %i.aiu = icmp eq i32 %i.aij, %i.air
  br i1 %i.aiu, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.aha, ptr %i.aii, align 4, !tbaa !64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.aiv = phi i32 [ %i.aha, %bb.cu ], [ %i.aij, %bb.ct ] ; 2 uses
  %i.aiw = icmp sgt i32 %i.ait, %i.aiv
  br i1 %i.aiw, label %bb.cw, label %HistoQueueFixPair.exit.i99

bb.cw:                                            ; preds = %bb.cv
  store i32 %i.aiv, ptr %i.aif, align 8, !tbaa !63
  store i32 %i.ait, ptr %i.aii, align 4, !tbaa !64
  br label %HistoQueueFixPair.exit.i99

HistoQueueFixPair.exit.i99:                       ; preds = %bb.cw, %bb.cv
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !61
  %i.aiz = load i64, ptr %i.abu, align 8, !tbaa !61
  %i.aja = icmp slt i64 %i.aiy, %i.aiz
  br i1 %i.aja, label %bb.cx, label %HistoQueueUpdateHead.exit.i100

bb.cx:                                            ; preds = %HistoQueueFixPair.exit.i99
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull align 8 dereferenceable(64) %i.abg, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abg, ptr noundef nonnull align 8 dereferenceable(64) %i.aif, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aif, ptr noundef nonnull align 8 dereferenceable(64) %21, i64 64, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %HistoQueueUpdateHead.exit.i100

HistoQueueUpdateHead.exit.i100:                   ; preds = %bb.cx, %HistoQueueFixPair.exit.i99
  %i.ajb = add nsw i32 %.1133.i, 1
  br label %bb.cy

bb.cy:                                            ; preds = %HistoQueueUpdateHead.exit.i100, %bb.cq
  %.sroa.13.4.i101 = phi i32 [ %i.aiq, %bb.cq ], [ %.sroa.13.3132.i, %HistoQueueUpdateHead.exit.i100 ] ; 4 uses
  %.2.i102 = phi i32 [ %.1133.i, %bb.cq ], [ %i.ajb, %HistoQueueUpdateHead.exit.i100 ] ; 2 uses
  %i.ajc = icmp slt i32 %.2.i102, %.sroa.13.4.i101
  br i1 %i.ajc, label %bb.co, label %.preheader.i103, !llvm.loop !75

.lr.ph142.i:                                      ; preds = %.preheader.i103, %bb.du
  %i.ajd = phi i32 [ %i.ans, %bb.du ], [ %i.aic, %.preheader.i103 ]
  %.3140.i = phi i32 [ %i.ant, %bb.du ], [ 0, %.preheader.i103 ] ; 4 uses
  %.sroa.13.5139.i = phi i32 [ %.sroa.13.6.i, %bb.du ], [ %.sroa.13.4.i101, %.preheader.i103 ] ; 6 uses
  %i.aje = icmp eq i32 %.3140.i, %i.agz
  br i1 %i.aje, label %bb.du, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph142.i
  %i.ajf = load ptr, ptr %i.gk, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  %i.ajg = icmp eq i32 %.sroa.13.5139.i, %i.abd
  br i1 %i.ajg, label %HistoQueuePush.exit61.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %spec.select.i57.i = call i32 @llvm.smax.i32(i32 %i.agz, i32 %.3140.i) ; 2 uses
  %spec.select26.i58.i = call i32 @llvm.smin.i32(i32 %i.agz, i32 %.3140.i) ; 2 uses
  store i32 %spec.select26.i58.i, ptr %20, align 8, !tbaa !63
  store i32 %spec.select.i57.i, ptr %i.acd, align 4, !tbaa !64
  %i.ajh = sext i32 %spec.select26.i58.i to i64
  %i.aji = getelementptr inbounds [8 x i8], ptr %i.ajf, i64 %i.ajh
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !27 ; 9 uses
  %i.ajk = zext nneg i32 %spec.select.i57.i to i64
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.ajf, i64 %i.ajk
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !27 ; 10 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajj, i64 3256
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !46
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 3256
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !46
  %i.ajr = add i64 %i.ajq, %i.ajo                 ; 3 uses
  %i.ajs = icmp slt i64 %i.ajr, 1
  br i1 %i.ajs, label %HistoQueuePush.exit61.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajj, i64 3304
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajm, i64 3304
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajj, i64 3244
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajm, i64 3244
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajm, i64 3264
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajj, i64 3264
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajj, i64 3080
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajm, i64 3080
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajj, i64 2056
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajm, i64 2056
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajj, i64 1032
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajm, i64 1032
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajm, i64 3240
  br label %bb.dd

bb.dc:                                            ; preds = %GetCombinedEntropy.exit.i68.i
  %indvars.iv.next.i72.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %exitcond.not.i73.i = icmp eq i64 %indvars.iv.next.i72.i, 5
  br i1 %exitcond.not.i73.i, label %GetCombinedHistogramEntropy.exit92.i, label %bb.dd, !llvm.loop !71

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.aki = phi i64 [ 0, %bb.db ], [ %i.ang, %bb.dc ]
  %indvars.iv.i64.i = phi i64 [ 0, %bb.db ], [ %indvars.iv.next.i72.i, %bb.dc ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %indvars.iv.i64.i
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !15
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aju, i64 %indvars.iv.i64.i
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !15
  %i.akn = getelementptr inbounds nuw [2 x i8], ptr %i.ajv, i64 %indvars.iv.i64.i
  %i.ako = load i16, ptr %i.akn, align 2, !tbaa !14 ; 2 uses
end_hunk_0
