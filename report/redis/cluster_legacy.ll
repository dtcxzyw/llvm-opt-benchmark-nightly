Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clusterLoadConfig:bb.a
bb.hc:                                            ; preds = %bb.hb
  %i.vr = call i64 @mstime() #30
  %i.vs = getelementptr inbounds nuw i8, ptr %.0279, i64 2208
  store i64 %i.vr, ptr %i.vs, align 8, !tbaa !432
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.vt = getelementptr inbounds nuw i8, ptr %.0279, i64 88
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !429
  %i.vv = and i32 %i.vu, 2
  %.not329 = icmp eq i32 %i.vv, 0
  br i1 %.not329, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.vw = getelementptr inbounds nuw i8, ptr %.0279, i64 2184
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !413
  %.not330 = icmp eq ptr %i.vx, null
  br i1 %.not330, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.vy = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !420
  %i.wa = call i64 @__isoc23_strtoull(ptr noundef %i.vz, ptr noundef null, i32 noundef 10) #30
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf
  %i.wb = phi i64 [ %i.wa, %bb.hf ], [ 0, %bb.he ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.0279, i64 96
  store i64 %i.wb, ptr %i.wc, align 8, !tbaa !433
  %i.wd = load i32, ptr %i.a, align 4, !tbaa !30  ; 2 uses
  %i.we = icmp sgt i32 %i.wd, 8
  br i1 %i.we, label %.lr.ph553, label %.sink.split

.lr.ph553:                                        ; preds = %bb.hg, %.loopexit
  %indvars.iv639 = phi i64 [ %indvars.iv.next640, %.loopexit ], [ 8, %bb.hg ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv639 ; 3 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !420 ; 3 uses
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !407
  %i.wi = icmp eq i8 %i.wh, 91
  %i.wj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.wg, i32 noundef 45) #31 ; 6 uses
  %.not333 = icmp eq ptr %i.wj, null              ; 2 uses
  br i1 %i.wi, label %bb.hh, label %bb.hr

bb.hh:                                            ; preds = %.lr.ph553
  br i1 %.not333, label %bb.hi, label %bb.hj, !prof !434

bb.hi:                                            ; preds = %bb.hh
  call void @_serverAssert(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18, i32 noundef 601) #30
  call void @abort() #32
  unreachable

bb.hj:                                            ; preds = %bb.hh
  store i8 0, ptr %i.wj, align 1, !tbaa !407
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !407
  %i.wm = load ptr, ptr %i.wf, align 8, !tbaa !420
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  %i.wo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.wn, ptr noundef null, i32 noundef 10) #30, !inline_history !0 ; 2 uses
  %i.wp = and i64 %i.wo, 4294950912
  %or.cond8.not = icmp eq i64 %i.wp, 0
  br i1 %or.cond8.not, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.wq = load i32, ptr %i.a, align 4, !tbaa !30
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %i.wq) #30
  br label %.thread442

bb.hl:                                            ; preds = %bb.hj
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wj, i64 3 ; 6 uses
  %i.ws = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.wr, i32 noundef 93) #31 ; 2 uses
  %i.wt = icmp eq ptr %i.ws, null
  br i1 %i.wt, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wr to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = trunc i64 %i.ww to i32
  %i.wy = call i32 @verifyClusterNodeId(ptr noundef nonnull %i.wr, i32 noundef %i.wx) #30
  %i.wz = icmp eq i32 %i.wy, -1
  br i1 %i.wz, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.xa = load i32, ptr %i.a, align 4, !tbaa !30
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %i.xa) #30
  br label %.thread442

bb.ho:                                            ; preds = %bb.hm
  %i.xb = call i32 @verifyClusterNodeId(ptr noundef nonnull %i.wr, i32 noundef 40) #30
  %.not.i383 = icmp eq i32 %i.xb, 0
  br i1 %.not.i383, label %bb.hp, label %clusterLookupNode.exit385.thread

bb.hp:                                            ; preds = %bb.ho
  %i.xc = call ptr @sdsnewlen(ptr noundef nonnull %i.wr, i64 noundef 40) #30 ; 2 uses
  %i.xd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !423
  %i.xg = call ptr @dictFind(ptr noundef %i.xf, ptr noundef %i.xc) #30 ; 2 uses
  call void @sdsfree(ptr noundef %i.xc) #30
  %i.xh = icmp eq ptr %i.xg, null
  br i1 %i.xh, label %clusterLookupNode.exit385.thread, label %clusterLookupNode.exit385

clusterLookupNode.exit385:                        ; preds = %bb.hp
  %i.xi = call ptr @dictGetVal(ptr noundef nonnull %i.xg) #30 ; 2 uses
  %.not334 = icmp eq ptr %i.xi, null
  br i1 %.not334, label %clusterLookupNode.exit385.thread, label %clusterAddNode.exit387

clusterLookupNode.exit385.thread:                 ; preds = %bb.hp, %bb.ho, %clusterLookupNode.exit385
  %i.xj = call noalias dereferenceable_or_null(2368) ptr @zmalloc(i64 noundef 2368) #35 ; 17 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.xk, ptr noundef nonnull readonly align 1 dereferenceable(40) %i.wr, i64 40, i1 false)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 48
  call void @getRandomHexChars(ptr noundef nonnull %i.xl, i64 noundef 40) #30
  %i.xm = call i64 @mstime() #30
  store i64 %i.xm, ptr %i.xj, align 8, !tbaa !435
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 96
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 88
  store i32 0, ptr %i.xo, align 8, !tbaa !429
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 2176
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 2344
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 2264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.xr, i8 0, i64 46, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xp, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2076) %i.xn, i8 0, i64 2076, i1 false)
  %i.xs = call ptr @sdsempty() #30
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xj, i64 2312
  store ptr %i.xs, ptr %i.xt, align 8, !tbaa !424
  %i.xu = call ptr @sdsempty() #30
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xj, i64 2320
  store ptr %i.xu, ptr %i.xv, align 8, !tbaa !406
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 2328
  store i32 0, ptr %i.xw, align 8, !tbaa !411
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xj, i64 2336
  store i32 0, ptr %i.xx, align 8, !tbaa !427
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xj, i64 2332
  store i32 0, ptr %i.xy, align 4, !tbaa !412
  %i.xz = call ptr @listCreate() #30              ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xj, i64 2360
  store ptr %i.xz, ptr %i.ya, align 8, !tbaa !436
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 2232
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yb, i8 0, i64 32, i1 false)
  store ptr @zfree, ptr %i.yc, align 8, !tbaa !439
  %i.yd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !423
  %i.yg = call ptr @sdsnewlen(ptr noundef nonnull %i.xk, i64 noundef 40) #30
  %i.yh = call i32 @dictAdd(ptr noundef %i.yf, ptr noundef %i.yg, ptr noundef nonnull %i.xj) #30
  %i.yi = icmp eq i32 %i.yh, 0
  br i1 %i.yi, label %clusterAddNode.exit387, label %bb.hq, !prof !418

bb.hq:                                            ; preds = %clusterLookupNode.exit385.thread
  call void @_serverAssert(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.18, i32 noundef 1540) #30
  call void @abort() #32
  unreachable

clusterAddNode.exit387:                           ; preds = %clusterLookupNode.exit385.thread, %clusterLookupNode.exit385
  %.0 = phi ptr [ %i.xi, %clusterLookupNode.exit385 ], [ %i.xj, %clusterLookupNode.exit385.thread ]
  %i.yj = icmp eq i8 %i.wl, 62
  %i.yk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.yl = and i64 %i.wo, 16383
  %. = select i1 %i.yj, i64 48, i64 131120
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %i.yl
  store ptr %.0, ptr %i.yn, align 8, !tbaa !404
  br label %.loopexit

bb.hr:                                            ; preds = %.lr.ph553
  br i1 %.not333, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  store i8 0, ptr %i.wj, align 1, !tbaa !407
  %i.yo = load ptr, ptr %i.wf, align 8, !tbaa !420
  %i.yp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.yo, ptr noundef null, i32 noundef 10) #30, !inline_history !0
  %i.yq = trunc i64 %i.yp to i32
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  %i.ys = call i64 @__isoc23_strtol(ptr noundef nonnull %i.yr, ptr noundef null, i32 noundef 10) #30, !inline_history !0
  %i.yt = trunc i64 %i.ys to i32
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr
  %i.yu = call i64 @__isoc23_strtol(ptr noundef nonnull %i.wg, ptr noundef null, i32 noundef 10) #30, !inline_history !0
  %i.yv = trunc i64 %i.yu to i32                  ; 2 uses
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hs, %bb.ht
  %.0253 = phi i32 [ %i.yq, %bb.hs ], [ %i.yv, %bb.ht ] ; 3 uses
  %.0252 = phi i32 [ %i.yt, %bb.hs ], [ %i.yv, %bb.ht ] ; 3 uses
  %or.cond10 = icmp ugt i32 %.0253, 16383
  %i.yw = icmp ugt i32 %.0252, 16383
  %or.cond14 = select i1 %or.cond10, i1 true, i1 %i.yw
  br i1 %or.cond14, label %bb.hv, label %.preheader

.preheader:                                       ; preds = %bb.hu
  %.not332548 = icmp samesign ugt i32 %.0253, %.0252
  br i1 %.not332548, label %.loopexit, label %.lr.ph550.preheader

.lr.ph550.preheader:                              ; preds = %.preheader
  %i.yx = zext nneg i32 %.0253 to i64
  %4 = add nuw nsw i32 %.0252, 1
  %.pre653 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  br label %.lr.ph550

bb.hv:                                            ; preds = %bb.hu
  %i.yy = load i32, ptr %i.a, align 4, !tbaa !30
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %i.yy) #30
  br label %.thread442

.lr.ph550:                                        ; preds = %.lr.ph550.preheader, %clusterAddSlot.exit
  %i.yz = phi ptr [ %.pre653, %.lr.ph550.preheader ], [ %i.zr, %clusterAddSlot.exit ] ; 2 uses
  %indvars.iv636 = phi i64 [ %i.yx, %.lr.ph550.preheader ], [ %indvars.iv.next637, %clusterAddSlot.exit ] ; 5 uses
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 262192
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %indvars.iv636
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !404
  %.not.i388 = icmp eq ptr %i.zc, null
  br i1 %.not.i388, label %bb.hw, label %clusterAddSlot.exit

bb.hw:                                            ; preds = %.lr.ph550
  %5 = trunc nuw nsw i64 %indvars.iv636 to i32    ; 3 uses
  %i.zd = call i32 @clusterNodeSetSlotBit(ptr noundef %.0279, i32 noundef %5) ; 0 uses
  %i.ze = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 262192
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv636
  store ptr %.0279, ptr %i.zg, align 8, !tbaa !404
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 393584
  %i.zi = lshr i64 %indvars.iv636, 3
  %i.zj = and i64 %i.zi, 536870911
  %i.zk = and i32 %5, 7
  %i.zl = shl nuw nsw i32 1, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.zj ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !407
  %i.zo = trunc nuw i32 %i.zl to i8
  %i.zp = xor i8 %i.zo, -1
  %i.zq = and i8 %i.zn, %i.zp
  store i8 %i.zq, ptr %i.zm, align 1, !tbaa !407
  call void @clusterSlotStatReset(i32 noundef %5) #30
  %.pre652 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  br label %clusterAddSlot.exit

clusterAddSlot.exit:                              ; preds = %.lr.ph550, %bb.hw
  %i.zr = phi ptr [ %i.yz, %.lr.ph550 ], [ %.pre652, %bb.hw ]
  %lftr.wideiv = trunc i64 %indvars.iv.next637 to i32
  %exitcond.not = icmp eq i32 %4, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph550, !llvm.loop !572

.loopexit:                                        ; preds = %clusterAddSlot.exit, %clusterAddNode.exit387, %.preheader
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %i.zs = load i32, ptr %i.a, align 4, !tbaa !30  ; 2 uses
  %i.zt = sext i32 %i.zs to i64
  %i.zu = icmp slt i64 %indvars.iv.next640, %i.zt
  br i1 %i.zu, label %.lr.ph553, label %.sink.split, !llvm.loop !573

.thread442:                                       ; preds = %bb.o, %bb.m, %bb.w, %bb.ad, %bb.ar, %bb.et, %bb.es, %bb.gl, %bb.hv, %bb.hk, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.if

.sink.split:                                      ; preds = %.loopexit, %bb.hg, %._crit_edge558
  %.lcssa475.sink = phi i32 [ %.lcssa481, %._crit_edge558 ], [ %i.wd, %bb.hg ], [ %i.zs, %.loopexit ]
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %.lcssa475.sink) #30
  br label %bb.hx

bb.hx:                                            ; preds = %.sink.split, %.lr.ph562, %.lr.ph562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.zv = call ptr @fgets(ptr noundef nonnull %i.x, i32 noundef 2098176, ptr noundef nonnull %i.d)
  %.not = icmp eq ptr %i.zv, null
  br i1 %.not, label %._crit_edge563, label %.lr.ph562

._crit_edge563:                                   ; preds = %bb.hx, %bb.l
  %i.zw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !428
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %bb.if, label %bb.hy

bb.hy:                                            ; preds = %._crit_edge563
  %i.zz = load ptr, ptr @myself, align 8, !tbaa !404 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 88
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !429 ; 2 uses
  %i.aac = and i32 %i.aab, 3
  %.not311 = icmp eq i32 %i.aac, 0
  br i1 %.not311, label %bb.if, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aad = and i32 %i.aab, 2
  %.not312 = icmp eq i32 %i.aad, 0
  br i1 %.not312, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 2184
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !413
  %i.aag = icmp eq ptr %i.aaf, null
  br i1 %i.aag, label %bb.if, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  call void @zfree(ptr noundef %i.x) #30
  %i.aah = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %i.aai = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !419
  %i.aaj = icmp sgt i32 %i.aai, 2
  br i1 %i.aaj, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aak = load ptr, ptr @myself, align 8, !tbaa !404
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aal) #30
  br label %bb.id

bb.id:                                            ; preds = %bb.ib, %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aam = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !423
  call void @dictInitSafeIterator(ptr noundef nonnull %2, ptr noundef %i.aao) #30
  %i.aap = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not9.i = icmp eq ptr %i.aap, null
  br i1 %.not9.i, label %clusterGetMaxEpoch.exit, label %.lr.ph.i390

.lr.ph.i390:                                      ; preds = %bb.id, %.lr.ph.i390
  %i.aaq = phi ptr [ %i.aau, %.lr.ph.i390 ], [ %i.aap, %bb.id ]
  %.010.i = phi i64 [ %spec.select.i, %.lr.ph.i390 ], [ 0, %bb.id ]
  %i.aar = call ptr @dictGetVal(ptr noundef nonnull %i.aaq) #30
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 96
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !433
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.aat, i64 %.010.i) ; 2 uses
  %i.aau = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not.i391 = icmp eq ptr %i.aau, null
  br i1 %.not.i391, label %clusterGetMaxEpoch.exit, label %.lr.ph.i390, !llvm.loop !2

clusterGetMaxEpoch.exit:                          ; preds = %.lr.ph.i390, %bb.id
  %.0.lcssa.i = phi i64 [ 0, %bb.id ], [ %spec.select.i, %.lr.ph.i390 ]
  call void @dictResetIterator(ptr noundef nonnull %2) #30
  %i.aav = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 8 ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !421
  %spec.select8.i = call i64 @llvm.umax.i64(i64 %.0.lcssa.i, i64 %i.aax)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aay = load i64, ptr %i.aaw, align 8, !tbaa !421
  %i.aaz = icmp ugt i64 %spec.select8.i, %i.aay
  br i1 %i.aaz, label %bb.ie, label %bb.ii

bb.ie:                                            ; preds = %clusterGetMaxEpoch.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !423
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.abb) #30
  %i.abc = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not9.i393 = icmp eq ptr %i.abc, null
  br i1 %.not9.i393, label %clusterGetMaxEpoch.exit401, label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %bb.ie, %.lr.ph.i394
  %i.abd = phi ptr [ %i.abh, %.lr.ph.i394 ], [ %i.abc, %bb.ie ]
  %.010.i395 = phi i64 [ %spec.select.i396, %.lr.ph.i394 ], [ 0, %bb.ie ]
  %i.abe = call ptr @dictGetVal(ptr noundef nonnull %i.abd) #30
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 96
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !433
  %spec.select.i396 = call i64 @llvm.umax.i64(i64 %i.abg, i64 %.010.i395) ; 2 uses
  %i.abh = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not.i397 = icmp eq ptr %i.abh, null
  br i1 %.not.i397, label %clusterGetMaxEpoch.exit401, label %.lr.ph.i394, !llvm.loop !2

clusterGetMaxEpoch.exit401:                       ; preds = %.lr.ph.i394, %bb.ie
  %.0.lcssa.i399 = phi i64 [ 0, %bb.ie ], [ %spec.select.i396, %.lr.ph.i394 ]
  call void @dictResetIterator(ptr noundef nonnull %1) #30
  %i.abi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8 ; 2 uses
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !421
  %spec.select8.i400 = call i64 @llvm.umax.i64(i64 %.0.lcssa.i399, i64 %i.abk)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store i64 %spec.select8.i400, ptr %i.abj, align 8, !tbaa !421
  br label %bb.ii

bb.if:                                            ; preds = %.thread442, %._crit_edge563, %bb.hy, %bb.ia
  %i.abl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !419
  %i.abm = icmp sgt i32 %i.abl, 3
  br i1 %i.abm, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.30, ptr noundef %i.x) #30
  br label %bb.ih

bb.ih:                                            ; preds = %bb.if, %bb.ig
  call void @zfree(ptr noundef %i.x) #30
  %i.abn = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  call void @exit(i32 noundef 1) #34
  unreachable

bb.ii:                                            ; preds = %clusterGetMaxEpoch.exit, %clusterGetMaxEpoch.exit401, %bb.b, %bb.k
  %.0288 = phi i32 [ -1, %bb.b ], [ -1, %bb.k ], [ 0, %clusterGetMaxEpoch.exit ], [ 0, %clusterGetMaxEpoch.exit401 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i32 %.0288
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @sdssplitargs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @sdsfreesplitres(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @clusterLookupNode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !guid !579 {
bb.a:
  %i.a = tail call i32 @verifyClusterNodeId(ptr noundef %0, i32 noundef %1) #30
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = tail call ptr @sdsnewlen(ptr noundef %0, i64 noundef %i.b) #30 ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !414
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !423
end_hunk_0
