inline.NumInlined: 443
inline.NumDeleted: 38
begin_hunk_0_@clusterLoadConfig:bb.a
  br i1 %.not329, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.vw = getelementptr inbounds nuw i8, ptr %.0256, i64 2184
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !65
  %.not330 = icmp eq ptr %i.vx, null
  br i1 %.not330, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.vy = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !77
  %i.wa = call i64 @__isoc23_strtoull(ptr noundef %i.vz, ptr noundef null, i32 noundef 10) #30
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf
  %i.wb = phi i64 [ %i.wa, %bb.hf ], [ 0, %bb.he ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.0256, i64 96
  store i64 %i.wb, ptr %i.wc, align 8, !tbaa !95
  %i.wd = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.we = icmp sgt i32 %i.wd, 8
  br i1 %i.we, label %.lr.ph553, label %.sink.split

.lr.ph553:                                        ; preds = %bb.hg, %.loopexit
  %indvars.iv639 = phi i64 [ %indvars.iv.next640, %.loopexit ], [ 8, %bb.hg ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv639 ; 3 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !77 ; 3 uses
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !58
  %i.wi = icmp eq i8 %i.wh, 91
  %i.wj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.wg, i32 noundef 45) #31 ; 6 uses
  %.not333 = icmp eq ptr %i.wj, null              ; 2 uses
  br i1 %i.wi, label %bb.hh, label %bb.hr

bb.hh:                                            ; preds = %.lr.ph553
  br i1 %.not333, label %bb.hi, label %bb.hj, !prof !96

bb.hi:                                            ; preds = %bb.hh
  call void @_serverAssert(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18, i32 noundef 601) #30
  call void @abort() #32
  unreachable

bb.hj:                                            ; preds = %bb.hh
  store i8 0, ptr %i.wj, align 1, !tbaa !58
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !58
  %i.wm = load ptr, ptr %i.wf, align 8, !tbaa !77
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  %i.wo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.wn, ptr noundef null, i32 noundef 10) #30, !inline_history !62 ; 2 uses
  %i.wp = and i64 %i.wo, 4294950912
  %or.cond8.not = icmp eq i64 %i.wp, 0
  br i1 %or.cond8.not, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.wq = load i32, ptr %i.a, align 4, !tbaa !9
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
  %i.xa = load i32, ptr %i.a, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %i.xa) #30
  br label %.thread442

bb.ho:                                            ; preds = %bb.hm
  %i.xb = call i32 @verifyClusterNodeId(ptr noundef nonnull %i.wr, i32 noundef 40) #30
  %.not.i383 = icmp eq i32 %i.xb, 0
  br i1 %.not.i383, label %bb.hp, label %clusterLookupNode.exit385.thread

bb.hp:                                            ; preds = %bb.ho
  %i.xc = call ptr @sdsnewlen(ptr noundef nonnull %i.wr, i64 noundef 40) #30 ; 2 uses
  %i.xd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !81
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
  store i64 %i.xm, ptr %i.xj, align 8, !tbaa !97
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 96
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 88
  store i32 0, ptr %i.xo, align 8, !tbaa !89
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 2176
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 2344
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 2264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.xr, i8 0, i64 46, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xp, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2076) %i.xn, i8 0, i64 2076, i1 false)
  %i.xs = call ptr @sdsempty() #30
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xj, i64 2312
  store ptr %i.xs, ptr %i.xt, align 8, !tbaa !82
  %i.xu = call ptr @sdsempty() #30
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xj, i64 2320
  store ptr %i.xu, ptr %i.xv, align 8, !tbaa !57
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 2328
  store i32 0, ptr %i.xw, align 8, !tbaa !63
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xj, i64 2336
  store i32 0, ptr %i.xx, align 8, !tbaa !87
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xj, i64 2332
  store i32 0, ptr %i.xy, align 4, !tbaa !64
  %i.xz = call ptr @listCreate() #30              ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xj, i64 2360
  store ptr %i.xz, ptr %i.ya, align 8, !tbaa !98
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 2232
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yb, i8 0, i64 32, i1 false)
  store ptr @zfree, ptr %i.yc, align 8, !tbaa !99
  %i.yd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !81
  %i.yg = call ptr @sdsnewlen(ptr noundef nonnull %i.xk, i64 noundef 40) #30
  %i.yh = call i32 @dictAdd(ptr noundef %i.yf, ptr noundef %i.yg, ptr noundef nonnull %i.xj) #30
  %i.yi = icmp eq i32 %i.yh, 0
  br i1 %i.yi, label %clusterAddNode.exit387, label %bb.hq, !prof !71

bb.hq:                                            ; preds = %clusterLookupNode.exit385.thread
  call void @_serverAssert(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.18, i32 noundef 1540) #30
  call void @abort() #32
  unreachable

clusterAddNode.exit387:                           ; preds = %clusterLookupNode.exit385.thread, %clusterLookupNode.exit385
  %.0253 = phi ptr [ %i.xi, %clusterLookupNode.exit385 ], [ %i.xj, %clusterLookupNode.exit385.thread ]
  %i.yj = icmp eq i8 %i.wl, 62
  %i.yk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.yl = and i64 %i.wo, 16383
  %. = select i1 %i.yj, i64 48, i64 131120
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %i.yl
  store ptr %.0253, ptr %i.yn, align 8, !tbaa !54
  br label %.loopexit

bb.hr:                                            ; preds = %.lr.ph553
  br i1 %.not333, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  store i8 0, ptr %i.wj, align 1, !tbaa !58
  %i.yo = load ptr, ptr %i.wf, align 8, !tbaa !77
  %i.yp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.yo, ptr noundef null, i32 noundef 10) #30, !inline_history !62
  %i.yq = trunc i64 %i.yp to i32
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  %i.ys = call i64 @__isoc23_strtol(ptr noundef nonnull %i.yr, ptr noundef null, i32 noundef 10) #30, !inline_history !62
  %i.yt = trunc i64 %i.ys to i32
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr
  %i.yu = call i64 @__isoc23_strtol(ptr noundef nonnull %i.wg, ptr noundef null, i32 noundef 10) #30, !inline_history !62
  %i.yv = trunc i64 %i.yu to i32                  ; 2 uses
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hs, %bb.ht
  %.0258 = phi i32 [ %i.yq, %bb.hs ], [ %i.yv, %bb.ht ] ; 3 uses
  %.0257 = phi i32 [ %i.yt, %bb.hs ], [ %i.yv, %bb.ht ] ; 3 uses
  %or.cond10 = icmp ugt i32 %.0258, 16383
  %i.yw = icmp ugt i32 %.0257, 16383
  %or.cond14 = select i1 %or.cond10, i1 true, i1 %i.yw
  br i1 %or.cond14, label %bb.hv, label %.preheader

.preheader:                                       ; preds = %bb.hu
  %.not332548 = icmp samesign ugt i32 %.0258, %.0257
  br i1 %.not332548, label %.loopexit, label %.lr.ph550.preheader

.lr.ph550.preheader:                              ; preds = %.preheader
  %i.yx = zext nneg i32 %.0258 to i64
  %.pre653 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %.lr.ph550

bb.hv:                                            ; preds = %bb.hu
  %i.yy = load i32, ptr %i.a, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %i.yy) #30
  br label %.thread442

.lr.ph550:                                        ; preds = %.lr.ph550.preheader, %clusterAddSlot.exit
  %i.yz = phi ptr [ %.pre653, %.lr.ph550.preheader ], [ %i.zr, %clusterAddSlot.exit ] ; 2 uses
  %indvars.iv636 = phi i64 [ %i.yx, %.lr.ph550.preheader ], [ %indvars.iv.next637, %clusterAddSlot.exit ] ; 5 uses
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 262192
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %indvars.iv636
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !54
  %.not.i388 = icmp eq ptr %i.zc, null
  %4 = trunc nuw i64 %indvars.iv636 to i32        ; 4 uses
  br i1 %.not.i388, label %bb.hw, label %clusterAddSlot.exit

bb.hw:                                            ; preds = %.lr.ph550
  %i.zd = call i32 @clusterNodeSetSlotBit(ptr noundef %.0256, i32 noundef %4) ; 0 uses
  %i.ze = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 262192
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv636
  store ptr %.0256, ptr %i.zg, align 8, !tbaa !54
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 393584
  %i.zi = lshr i64 %indvars.iv636, 3
  %i.zj = and i64 %i.zi, 536870911
  %i.zk = and i32 %4, 7
  %i.zl = shl nuw nsw i32 1, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.zj ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !58
  %i.zo = trunc nuw i32 %i.zl to i8
  %i.zp = xor i8 %i.zo, -1
  %i.zq = and i8 %i.zn, %i.zp
  store i8 %i.zq, ptr %i.zm, align 1, !tbaa !58
  call void @clusterSlotStatReset(i32 noundef %4) #30
  %.pre652 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %clusterAddSlot.exit

clusterAddSlot.exit:                              ; preds = %.lr.ph550, %bb.hw
  %i.zr = phi ptr [ %.pre652, %bb.hw ], [ %i.yz, %.lr.ph550 ]
  %.not332.not = icmp sgt i32 %.0257, %4
  br i1 %.not332.not, label %.lr.ph550, label %.loopexit, !llvm.loop !102

.loopexit:                                        ; preds = %clusterAddSlot.exit, %clusterAddNode.exit387, %.preheader
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %i.zs = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.zt = sext i32 %i.zs to i64
  %i.zu = icmp slt i64 %indvars.iv.next640, %i.zt
  br i1 %i.zu, label %.lr.ph553, label %.sink.split, !llvm.loop !103

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
  %i.zw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !88
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %bb.if, label %bb.hy

bb.hy:                                            ; preds = %._crit_edge563
  %i.zz = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 88
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !89 ; 2 uses
  %i.aac = and i32 %i.aab, 3
  %.not311 = icmp eq i32 %i.aac, 0
  br i1 %.not311, label %bb.if, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aad = and i32 %i.aab, 2
  %.not312 = icmp eq i32 %i.aad, 0
  br i1 %.not312, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 2184
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !65
  %i.aag = icmp eq ptr %i.aaf, null
  br i1 %i.aag, label %bb.if, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  call void @zfree(ptr noundef %i.x) #30
  %i.aah = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %i.aai = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.aaj = icmp sgt i32 %i.aai, 2
  br i1 %i.aaj, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aak = load ptr, ptr @myself, align 8, !tbaa !54
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aal) #30
  br label %bb.id

bb.id:                                            ; preds = %bb.ib, %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aam = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %2, ptr noundef %i.aao) #30
  %i.aap = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not9.i = icmp eq ptr %i.aap, null
  br i1 %.not9.i, label %clusterGetMaxEpoch.exit, label %.lr.ph.i390

.lr.ph.i390:                                      ; preds = %bb.id, %.lr.ph.i390
  %i.aaq = phi ptr [ %i.aau, %.lr.ph.i390 ], [ %i.aap, %bb.id ]
  %.010.i = phi i64 [ %spec.select.i, %.lr.ph.i390 ], [ 0, %bb.id ]
  %i.aar = call ptr @dictGetVal(ptr noundef nonnull %i.aaq) #30
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 96
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !95
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.aat, i64 %.010.i) ; 2 uses
  %i.aau = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not.i391 = icmp eq ptr %i.aau, null
  br i1 %.not.i391, label %clusterGetMaxEpoch.exit, label %.lr.ph.i390, !llvm.loop !104

clusterGetMaxEpoch.exit:                          ; preds = %.lr.ph.i390, %bb.id
  %.0.lcssa.i = phi i64 [ 0, %bb.id ], [ %spec.select.i, %.lr.ph.i390 ]
  call void @dictResetIterator(ptr noundef nonnull %2) #30
  %i.aav = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 8 ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !78
  %spec.select8.i = call i64 @llvm.umax.i64(i64 %.0.lcssa.i, i64 %i.aax)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aay = load i64, ptr %i.aaw, align 8, !tbaa !78
  %i.aaz = icmp ugt i64 %spec.select8.i, %i.aay
  br i1 %i.aaz, label %bb.ie, label %bb.ii

bb.ie:                                            ; preds = %clusterGetMaxEpoch.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.abb) #30
  %i.abc = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not9.i393 = icmp eq ptr %i.abc, null
  br i1 %.not9.i393, label %clusterGetMaxEpoch.exit401, label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %bb.ie, %.lr.ph.i394
  %i.abd = phi ptr [ %i.abh, %.lr.ph.i394 ], [ %i.abc, %bb.ie ]
  %.010.i395 = phi i64 [ %spec.select.i396, %.lr.ph.i394 ], [ 0, %bb.ie ]
  %i.abe = call ptr @dictGetVal(ptr noundef nonnull %i.abd) #30
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 96
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !95
  %spec.select.i396 = call i64 @llvm.umax.i64(i64 %i.abg, i64 %.010.i395) ; 2 uses
  %i.abh = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not.i397 = icmp eq ptr %i.abh, null
  br i1 %.not.i397, label %clusterGetMaxEpoch.exit401, label %.lr.ph.i394, !llvm.loop !104

clusterGetMaxEpoch.exit401:                       ; preds = %.lr.ph.i394, %bb.ie
  %.0.lcssa.i399 = phi i64 [ 0, %bb.ie ], [ %spec.select.i396, %.lr.ph.i394 ]
  call void @dictResetIterator(ptr noundef nonnull %1) #30
  %i.abi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8 ; 2 uses
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !78
  %spec.select8.i400 = call i64 @llvm.umax.i64(i64 %.0.lcssa.i399, i64 %i.abk)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store i64 %spec.select8.i400, ptr %i.abj, align 8, !tbaa !78
  br label %bb.ii

bb.if:                                            ; preds = %.thread442, %._crit_edge563, %bb.hy, %bb.ia
  %i.abl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
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
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.k ], [ 0, %clusterGetMaxEpoch.exit ], [ 0, %clusterGetMaxEpoch.exit401 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i32 %.0
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
define dso_local ptr @clusterLookupNode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @verifyClusterNodeId(ptr noundef %0, i32 noundef %1) #30
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = tail call ptr @sdsnewlen(ptr noundef %0, i64 noundef %i.b) #30 ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
end_hunk_0
begin_hunk_1_@clusterGenNodesSlotsInfo:bb.a
bb.k:                                             ; preds = %bb.i
  %i.aa = trunc i32 %.024 to i16
  %i.ab = sext i32 %i.u to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ab
  store i16 %i.aa, ptr %i.ac, align 2, !tbaa !59
  %i.ad = trunc i64 %indvars.iv to i16
  %i.ae = add nsw i16 %i.ad, -1
  %i.af = add nsw i32 %i.u, 2
  store i32 %i.af, ptr %i.t, align 8, !tbaa !110
  %i.ag = sext i32 %i.v to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ag
  store i16 %i.ae, ptr %i.ah, align 2, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  br i1 %i.c, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.c
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 262192
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e
  %.126 = phi ptr [ %.025, %bb.e ], [ %i.al, %.sink.split ]
  %.1 = phi i32 [ %.024, %bb.e ], [ %i.b, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !306

bb.n:                                             ; preds = %bb.l, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterFreeNodesSlotsInfo(ptr nofree noundef captures(none) initializes((2160, 2164)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  tail call void @zfree(ptr noundef %i.b) #30
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2160
  store i32 0, ptr %i.c, align 8, !tbaa !110
  ret void
}

declare ptr @sdscatsds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplyClusterLinkDescription(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 6) #30
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.174) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !175
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, ptr @.str.176, ptr @.str.175
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.d) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %bb.b, label %bb.c, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.18, i32 noundef 5559) #30
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call ptr @sdsnewlen(ptr noundef nonnull %i.g, i64 noundef 40) #30 ; 2 uses
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.178) #30
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.h) #30
  tail call void @sdsfree(ptr noundef %i.h) #30
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.179) #30
  %i.i = load i64, ptr %1, align 8, !tbaa !164
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173  ; 3 uses
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.k, i64 64
  %.val = load ptr, ptr %i.l, align 8, !tbaa !307
  %.not34 = icmp eq ptr %.val, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 114, ptr %i.a, align 1, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.m, %bb.e ], [ %i.a, %bb.d ]  ; 3 uses
  %i.n = getelementptr i8, ptr %i.k, i64 56
  %.val33 = load ptr, ptr %i.n, align 8, !tbaa !308
  %.not35 = icmp eq ptr %.val33, null
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 119, ptr %.0, align 1, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.1 = phi ptr [ %i.o, %bb.g ], [ %.0, %bb.f ], [ %i.a, %bb.c ]
  store i8 0, ptr %.1, align 1, !tbaa !58
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.180) #30
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.a) #30
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.181) #30
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !168
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.q) #30
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.182) #30
  %i.r = load i64, ptr %i.p, align 8, !tbaa !168
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplyClusterLinksDescription(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = tail call ptr @addReplyDeferredLen(ptr noundef %0) #30
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.d) #30
  %i.e = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.f = phi ptr [ %i.n, %bb.e ], [ %i.e, %bb.a ]
  %.018 = phi i32 [ %.2, %bb.e ], [ 0, %bb.a ]    ; 2 uses
  %i.g = call ptr @dictGetVal(ptr noundef nonnull %i.f) #30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176  ; 2 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nsw i32 %.018, 1
  call void @addReplyClusterLinkDescription(ptr noundef %0, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.j, %bb.b ], [ %.018, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !177  ; 2 uses
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.1, 1
  call void @addReplyClusterLinkDescription(ptr noundef %0, ptr noundef nonnull %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ %i.m, %bb.d ], [ %.1, %bb.c ]   ; 2 uses
  %i.n = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !309

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.o = sext i32 %.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  call void @dictResetIterator(ptr noundef nonnull %1) #30
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef %i.a, i64 noundef %.0.lcssa) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #2

declare void @setDeferredArrayLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @checkSlotAssignmentsOrReply(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not22 = icmp sgt i32 %3, %4
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not17 = icmp eq i32 %2, 0
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %5 = add i32 %4, 1                              ; 2 uses
  br i1 %.not17, label %.critedge.us, label %.lr.ph.split

.critedge.us:                                     ; preds = %.lr.ph, %bb.c
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.c ], [ %i.a, %.lr.ph ] ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 262192
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv34
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %.not18.us = icmp eq ptr %i.e, null
  br i1 %.not18.us, label %bb.b, label %.loopexit.sink.split

bb.b:                                             ; preds = %.critedge.us
  %i.f = getelementptr inbounds i8, ptr %1, i64 %indvars.iv34 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !58    ; 2 uses
  %i.h = add i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 1, !tbaa !58
  %i.i = icmp eq i8 %i.g, 1
  br i1 %i.i, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1 ; 2 uses
  %lftr.wideiv37 = trunc i64 %indvars.iv.next35 to i32
  %exitcond38.not = icmp eq i32 %5, %lftr.wideiv37
  br i1 %exitcond38.not, label %.loopexit, label %.critedge.us, !llvm.loop !310

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.a, %.lr.ph ] ; 5 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262192
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.o = getelementptr inbounds i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !58    ; 2 uses
  %i.q = add i8 %i.p, 1
  store i8 %i.q, ptr %i.o, align 1, !tbaa !58
  %i.r = icmp eq i8 %i.p, 1
  br i1 %i.r, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !310

.loopexit.sink.split:                             ; preds = %bb.d, %.lr.ph.split, %bb.b, %.critedge.us
  %.us-phi26.in.sink = phi i64 [ %indvars.iv34, %bb.b ], [ %indvars.iv34, %.critedge.us ], [ %indvars.iv, %.lr.ph.split ], [ %indvars.iv, %bb.d ]
  %.str.196.sink = phi ptr [ @.str.196, %bb.b ], [ @.str.195, %.critedge.us ], [ @.str.196, %bb.d ], [ @.str.194, %.lr.ph.split ]
  %.us-phi26 = trunc i64 %.us-phi26.in.sink to i32
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull %.str.196.sink, i32 noundef %.us-phi26) #30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.loopexit.sink.split, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ -1, %.loopexit.sink.split ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i32 %.016
}

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterUpdateSlots(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not12 = icmp eq i32 %2, 0
  br i1 %.not12, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.e
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %bb.e ], [ 0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv20
  %i.b = load i8, ptr %i.a, align 1, !tbaa !58
  %.not.us = icmp eq i8 %i.b, 0
  br i1 %.not.us, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 131120
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv20 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %.not11.us = icmp eq ptr %i.f, null
  br i1 %.not11.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = trunc nuw nsw i64 %indvars.iv20 to i32   ; 4 uses
  %i.h = tail call i32 @clusterAsmCancelBySlot(i32 noundef %i.g, ptr noundef nonnull @.str.85) #30 ; 0 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 262192
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv20
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %.not.i.us = icmp eq ptr %i.l, null
  br i1 %.not.i.us, label %clusterAddSlot.exit.thread.us, label %clusterAddSlot.exit.thread13

clusterAddSlot.exit.thread.us:                    ; preds = %bb.d
  %i.m = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.n = tail call i32 @clusterNodeSetSlotBit(ptr noundef %i.m, i32 noundef %i.g) ; 0 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 262192
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv20
  store ptr %i.m, ptr %i.q, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 393584
  %.zext.us = lshr i64 %indvars.iv20, 3
  %i.s = and i64 %.zext.us, 536870911
  %i.t = and i32 %i.g, 7
  %i.u = shl nuw nsw i32 1, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !58
  %i.x = trunc nuw i32 %i.u to i8
  %i.y = xor i8 %i.x, -1
  %i.z = and i8 %i.w, %i.y
  store i8 %i.z, ptr %i.v, align 1, !tbaa !58
  tail call void @clusterSlotStatReset(i32 noundef %i.g) #30
  br label %bb.e

bb.e:                                             ; preds = %clusterAddSlot.exit.thread.us, %.split.us
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 16384
  br i1 %exitcond23.not, label %.split16.us, label %.split.us, !llvm.loop !311

.split:                                           ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.a ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !58
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 131120
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.not11 = icmp eq ptr %i.af, null
  br i1 %.not11, label %clusterAddSlot.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.ae, align 8, !tbaa !54
  br label %clusterAddSlot.exit

clusterAddSlot.exit:                              ; preds = %bb.g, %bb.f
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ah = tail call i32 @clusterAsmCancelBySlot(i32 noundef %i.ag, ptr noundef nonnull @.str.85) #30 ; 0 uses
  %i.ai = tail call i32 @clusterDelSlot(i32 noundef %i.ag)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %clusterAddSlot.exit.thread13, !prof !312

clusterAddSlot.exit.thread13:                     ; preds = %clusterAddSlot.exit, %bb.d
  tail call void @_serverAssertWithInfo(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.18, i32 noundef 5667) #30
  tail call void @abort() #32
  unreachable

bb.h:                                             ; preds = %clusterAddSlot.exit, %.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %.split16.us, label %.split, !llvm.loop !311

.split16.us:                                      ; preds = %bb.h, %bb.e
  ret void
}

declare i32 @clusterAsmCancelBySlot(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @clusterGetShardCount() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61
  %i.h = add i64 %i.g, %i.e
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @clusterGetShardIterator() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = tail call ptr @dictGetSafeIterator(ptr noundef %i.c) #30
  ret ptr %i.d
}

declare ptr @dictGetSafeIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @clusterNextShardHandle(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dictNext(ptr noundef %0) #30 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dictGetVal(ptr noundef nonnull %i.a) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterFreeShardIterator(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  tail call void @dictReleaseIterator(ptr noundef %0) #30
  ret void
}

declare void @dictReleaseIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeHasSlotInfo(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = icmp ne ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @clusterNodeSlotInfoCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i16 @clusterNodeSlotInfoEntry(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !59
  ret i16 %i.e
}
end_hunk_1
begin_hunk_2_@clusterCommandSpecial:bb.a

bb.w:                                             ; preds = %bb.v
  %i.ce = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.218) #31
  %.not298 = icmp eq i32 %i.ce, 0
  br i1 %.not298, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !315
  %i.ch = icmp sgt i32 %i.cg, 2
  br i1 %i.ch, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.ci = tail call noalias dereferenceable_or_null(16384) ptr @zmalloc(i64 noundef 16384) #35 ; 7 uses
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !329
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !273
  %i.co = tail call i32 @strcasecmp(ptr noundef %i.cn, ptr noundef nonnull @.str.218) #31
  %.fr447 = freeze i32 %i.co
  %.not299 = icmp eq i32 %.fr447, 0               ; 2 uses
  %i.cp = zext i1 %.not299 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.ci, i8 0, i64 16384, i1 false)
  %i.cq = load i32, ptr %i.cf, align 8, !tbaa !315
  %i.cr = icmp sgt i32 %i.cq, 2
  br i1 %i.cr, label %.lr.ph441, label %._crit_edge444

bb.z:                                             ; preds = %.lr.ph441
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %i.cs = load i32, ptr %i.cf, align 8, !tbaa !315 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next482, %i.ct
  br i1 %i.cu, label %.lr.ph441, label %.preheader, !llvm.loop !336

.preheader:                                       ; preds = %bb.z
  %i.cv = icmp sgt i32 %i.cs, 2
  br i1 %i.cv, label %.lr.ph443, label %._crit_edge444

.lr.ph443:                                        ; preds = %.preheader
  br i1 %.not299, label %.lr.ph.split.i.preheader.us, label %.critedge.us.i.preheader

.lr.ph.split.i.preheader.us:                      ; preds = %.lr.ph443, %.loopexit410.us
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %.loopexit410.us ], [ 2, %.lr.ph443 ] ; 2 uses
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv487
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !329
  %i.cz = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.cy) #30 ; 3 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 262192
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.da
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !54
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.i.preheader.us
  %i.dg = getelementptr inbounds i8, ptr %i.ci, i64 %i.da ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !58  ; 2 uses
  %i.di = add i8 %i.dh, 1
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !58
  %i.dj = icmp eq i8 %i.dh, 1
  br i1 %i.dj, label %.loopexit, label %.loopexit410.us

.loopexit410.us:                                  ; preds = %bb.aa
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %i.dk = load i32, ptr %i.cf, align 8, !tbaa !315
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next488, %i.dl
  br i1 %i.dm, label %.lr.ph.split.i.preheader.us, label %._crit_edge444, !llvm.loop !337

.lr.ph441:                                        ; preds = %bb.y, %bb.z
  %indvars.iv481 = phi i64 [ %indvars.iv.next482, %bb.z ], [ 2, %bb.y ] ; 2 uses
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv481
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !329
  %i.dq = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.dp) #30
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %.lr.ph441
  tail call void @zfree(ptr noundef nonnull %i.ci) #30
  br label %bb.gx

.critedge.us.i.preheader:                         ; preds = %.lr.ph443, %.loopexit413
  %indvars.iv484 = phi i64 [ %indvars.iv.next485, %.loopexit413 ], [ 2, %.lr.ph443 ] ; 2 uses
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv484
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !329
  %i.dv = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.du) #30 ; 3 uses
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 262192
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dw
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !54
  %.not18.us.i = icmp eq ptr %i.ea, null
  br i1 %.not18.us.i, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.critedge.us.i.preheader
  %i.eb = getelementptr inbounds i8, ptr %i.ci, i64 %i.dw ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !58  ; 2 uses
  %i.ed = add i8 %i.ec, 1
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !58
  %i.ee = icmp eq i8 %i.ec, 1
  br i1 %i.ee, label %.loopexit, label %.loopexit413

.loopexit413:                                     ; preds = %bb.ac
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %i.ef = load i32, ptr %i.cf, align 8, !tbaa !315
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next485, %i.eg
  br i1 %i.eh, label %.critedge.us.i.preheader, label %._crit_edge444, !llvm.loop !337

.loopexit:                                        ; preds = %bb.ac, %.critedge.us.i.preheader, %bb.aa, %.lr.ph.split.i.preheader.us
  %.us-phi26.in.sink.i = phi i32 [ %i.cz, %bb.aa ], [ %i.cz, %.lr.ph.split.i.preheader.us ], [ %i.dv, %.critedge.us.i.preheader ], [ %i.dv, %bb.ac ]
  %.str.196.sink.i = phi ptr [ @.str.196, %bb.aa ], [ @.str.194, %.lr.ph.split.i.preheader.us ], [ @.str.196, %bb.ac ], [ @.str.195, %.critedge.us.i.preheader ]
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull %.str.196.sink.i, i32 noundef %.us-phi26.in.sink.i) #30
  tail call void @zfree(ptr noundef nonnull %i.ci) #30
  br label %bb.gx

._crit_edge444:                                   ; preds = %.loopexit413, %.loopexit410.us, %bb.y, %.preheader
  tail call void @clusterUpdateSlots(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, i32 noundef %i.cp)
  tail call void @zfree(ptr noundef nonnull %i.ci) #30
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 393384 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !67
  %i.el = or i32 %i.ek, 6
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !67
  %i.em = load ptr, ptr @shared, align 8, !tbaa !330
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.em) #30
  br label %bb.gx

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.en = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.219) #31
  %.not300 = icmp eq i32 %i.en, 0
  br i1 %.not300, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eo = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.220) #31
  %.not301 = icmp eq i32 %i.eo, 0
  br i1 %.not301, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !315 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 3
  br i1 %i.er, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.es = and i32 %i.eq, 1
  %.not302 = icmp eq i32 %i.es, 0
  br i1 %.not302, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @addReplyErrorArity(ptr noundef nonnull %0) #30
  br label %bb.gx

bb.ai:                                            ; preds = %bb.ag
  %i.et = tail call noalias dereferenceable_or_null(16384) ptr @zmalloc(i64 noundef 16384) #35 ; 9 uses
  %i.eu = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !329
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !273
  %i.ez = tail call i32 @strcasecmp(ptr noundef %i.ey, ptr noundef nonnull @.str.220) #31
  %.fr = freeze i32 %i.ez
  %.not303 = icmp eq i32 %.fr, 0                  ; 2 uses
  %i.fa = zext i1 %.not303 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.et, i8 0, i64 16384, i1 false)
  %i.fb = load i32, ptr %i.ep, align 8, !tbaa !315
  %i.fc = icmp sgt i32 %i.fb, 2
  br i1 %i.fc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ai
  br i1 %.not303, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit415.us
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %.loopexit415.us ], [ 2, %.lr.ph ] ; 3 uses
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv478
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !329
  %i.fg = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.ff) #30 ; 4 uses
  %i.fh = icmp eq i32 %i.fg, -1
  br i1 %i.fh, label %.split.us, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split.us
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv478
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !329
  %i.fm = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.fl) #30 ; 4 uses
  %i.fn = icmp eq i32 %i.fm, -1
  br i1 %i.fn, label %.split433.us.a, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = icmp sgt i32 %i.fg, %i.fm
  br i1 %i.fo, label %.split435.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.ak
  %i.fp = sext i32 %i.fg to i64
  %1 = add nuw i32 %i.fm, 1
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 262192
  br label %.lr.ph.split.i369.us

.lr.ph.split.i369.us:                             ; preds = %.lr.ph.i.us, %bb.am
  %indvars.iv.i370.us = phi i64 [ %indvars.iv.next.i371.us, %bb.am ], [ %i.fp, %.lr.ph.i.us ] ; 5 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %indvars.iv.i370.us
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !54
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.loopexit414, label %bb.al

bb.al:                                            ; preds = %.lr.ph.split.i369.us
  %i.fv = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv.i370.us ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !58  ; 2 uses
  %i.fx = add i8 %i.fw, 1
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !58
  %i.fy = icmp eq i8 %i.fw, 1
  br i1 %i.fy, label %.loopexit414, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i371.us = add nsw i64 %indvars.iv.i370.us, 1 ; 2 uses
  %lftr.wideiv.i372.us = trunc i64 %indvars.iv.next.i371.us to i32
  %exitcond.not.i373.us = icmp eq i32 %1, %lftr.wideiv.i372.us
  br i1 %exitcond.not.i373.us, label %.loopexit415.us, label %.lr.ph.split.i369.us, !llvm.loop !310

.loopexit415.us:                                  ; preds = %bb.am
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 2 ; 2 uses
  %i.fz = load i32, ptr %i.ep, align 8, !tbaa !315
  %i.ga = trunc nuw i64 %indvars.iv.next479 to i32
  %i.gb = icmp sgt i32 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !338

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit418
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit418 ], [ 2, %.lr.ph ] ; 3 uses
  %i.gc = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !329
  %i.gf = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.ge) #30 ; 4 uses
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %.split.us, label %bb.an

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  tail call void @zfree(ptr noundef nonnull %i.et) #30
  br label %bb.gx

bb.an:                                            ; preds = %.lr.ph.split
  %i.gh = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !329
  %i.gl = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.gk) #30 ; 4 uses
  %i.gm = icmp eq i32 %i.gl, -1
  br i1 %i.gm, label %.split433.us.a, label %bb.ao

.split433.us.a:                                   ; preds = %bb.an, %bb.aj
  tail call void @zfree(ptr noundef nonnull %i.et) #30
  br label %bb.gx

bb.ao:                                            ; preds = %bb.an
  %i.gn = icmp sgt i32 %i.gf, %i.gl
  br i1 %i.gn, label %.split435.us, label %.lr.ph.i

.split435.us:                                     ; preds = %bb.ao, %bb.ak
  %.us-phi = phi i32 [ %i.fm, %bb.ak ], [ %i.gl, %bb.ao ]
  %.us-phi436 = phi i32 [ %i.fg, %bb.ak ], [ %i.gf, %bb.ao ]
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.221, i32 noundef %.us-phi436, i32 noundef %.us-phi) #30
  tail call void @zfree(ptr noundef nonnull %i.et) #30
  br label %bb.gx

.lr.ph.i:                                         ; preds = %bb.ao
  %i.go = sext i32 %i.gf to i64
  %2 = add nuw i32 %i.gl, 1
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 262192
  br label %.critedge.us.i379

.critedge.us.i379:                                ; preds = %.lr.ph.i, %bb.aq
  %indvars.iv34.i380 = phi i64 [ %indvars.iv.next35.i382, %bb.aq ], [ %i.go, %.lr.ph.i ] ; 5 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %indvars.iv34.i380
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !54
  %.not18.us.i381 = icmp eq ptr %i.gs, null
  br i1 %.not18.us.i381, label %bb.ap, label %.loopexit414

bb.ap:                                            ; preds = %.critedge.us.i379
  %i.gt = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv34.i380 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !58  ; 2 uses
  %i.gv = add i8 %i.gu, 1
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !58
  %i.gw = icmp eq i8 %i.gu, 1
  br i1 %i.gw, label %.loopexit414, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next35.i382 = add nsw i64 %indvars.iv34.i380, 1 ; 2 uses
  %lftr.wideiv37.i383 = trunc i64 %indvars.iv.next35.i382 to i32
  %exitcond38.not.i384 = icmp eq i32 %2, %lftr.wideiv37.i383
  br i1 %exitcond38.not.i384, label %.loopexit418, label %.critedge.us.i379, !llvm.loop !310

.loopexit414:                                     ; preds = %bb.ap, %.critedge.us.i379, %bb.al, %.lr.ph.split.i369.us
  %.us-phi26.in.sink.i376 = phi i64 [ %indvars.iv.i370.us, %bb.al ], [ %indvars.iv.i370.us, %.lr.ph.split.i369.us ], [ %indvars.iv34.i380, %.critedge.us.i379 ], [ %indvars.iv34.i380, %bb.ap ]
  %.str.196.sink.i377 = phi ptr [ @.str.196, %bb.al ], [ @.str.194, %.lr.ph.split.i369.us ], [ @.str.196, %bb.ap ], [ @.str.195, %.critedge.us.i379 ]
  %.us-phi26.i378 = trunc i64 %.us-phi26.in.sink.i376 to i32
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull %.str.196.sink.i377, i32 noundef %.us-phi26.i378) #30
  tail call void @zfree(ptr noundef nonnull %i.et) #30
  br label %bb.gx

.loopexit418:                                     ; preds = %bb.aq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gx = load i32, ptr %i.ep, align 8, !tbaa !315
  %i.gy = trunc nuw i64 %indvars.iv.next to i32
  %i.gz = icmp sgt i32 %i.gx, %i.gy
  br i1 %i.gz, label %.lr.ph.split, label %._crit_edge, !llvm.loop !338

._crit_edge:                                      ; preds = %.loopexit418, %.loopexit415.us, %bb.ai
  tail call void @clusterUpdateSlots(ptr noundef nonnull %0, ptr noundef nonnull %i.et, i32 noundef %i.fa)
  tail call void @zfree(ptr noundef nonnull %i.et) #30
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 393384 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !67
  %i.hd = or i32 %i.hc, 6
  store i32 %i.hd, ptr %i.hb, align 8, !tbaa !67
  %i.he = load ptr, ptr @shared, align 8, !tbaa !330
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.he) #30
  br label %bb.gx

bb.ar:                                            ; preds = %bb.af, %bb.ae
  %i.hf = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.222) #31
  %.not304 = icmp eq i32 %i.hf, 0
  br i1 %.not304, label %bb.as, label %bb.cu

bb.as:                                            ; preds = %bb.ar
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !315
  %i.hi = icmp sgt i32 %i.hh, 3
  br i1 %i.hi, label %bb.at, label %bb.cu

bb.at:                                            ; preds = %bb.as
  %i.hj = load ptr, ptr @myself, align 8, !tbaa !54
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 88
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !89
  %i.hm = and i32 %i.hl, 2
  %.not305 = icmp eq i32 %i.hm, 0
  br i1 %.not305, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.223) #30
  br label %bb.gx

bb.av:                                            ; preds = %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !329
  %i.hp = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.ho) #30 ; 17 uses
  %i.hq = icmp eq i32 %i.hp, -1
  br i1 %i.hq, label %bb.gx, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hr = tail call i32 @isSlotInAsmTask(i32 noundef %i.hp) #30
  %.not306 = icmp eq i32 %i.hr, 0
  br i1 %.not306, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.224, i32 noundef %i.hp) #30
  br label %bb.gx

bb.ay:                                            ; preds = %bb.aw
  %i.hs = tail call i32 @isSlotInTrimJob(i32 noundef %i.hp) #30
  %.not307 = icmp eq i32 %i.hs, 0
  br i1 %.not307, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.225, i32 noundef %i.hp) #30
  br label %bb.gx

bb.ba:                                            ; preds = %bb.ay
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !328 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !329
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !273 ; 4 uses
  %i.hy = tail call i32 @strcasecmp(ptr noundef %i.hx, ptr noundef nonnull @.str.226) #31
  %.not308 = icmp eq i32 %i.hy, 0
  br i1 %.not308, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.hz = load i32, ptr %i.hg, align 8, !tbaa !315
  %i.ia = icmp eq i32 %i.hz, 5
  br i1 %i.ia, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 262192
  %i.id = sext i32 %i.hp to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !54
  %i.ig = load ptr, ptr @myself, align 8, !tbaa !54
  %.not309 = icmp eq ptr %i.if, %i.ig
  br i1 %.not309, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.227, i32 noundef %i.hp) #30
  br label %bb.gx

bb.be:                                            ; preds = %bb.bc
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !329
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !273 ; 2 uses
  %i.il = tail call fastcc i64 @sdslen(ptr noundef %i.ik)
  %i.im = trunc i64 %i.il to i32
  %i.in = tail call ptr @clusterLookupNode(ptr noundef %i.ik, i32 noundef %i.im) ; 3 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ip = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !329
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !273
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.228, ptr noundef %i.it) #30
  br label %bb.gx

bb.bg:                                            ; preds = %bb.be
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 88
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !89
  %i.iw = and i32 %i.iv, 2
  %.not310 = icmp eq i32 %i.iw, 0
  br i1 %.not310, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.229) #30
  br label %bb.gx

bb.bi:                                            ; preds = %bb.bg
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.id
  store ptr %i.in, ptr %i.iz, align 8, !tbaa !54
  br label %bb.ct

bb.bj:                                            ; preds = %bb.bb, %bb.ba
  %i.ja = tail call i32 @strcasecmp(ptr noundef %i.hx, ptr noundef nonnull @.str.230) #31
  %.not311 = icmp eq i32 %i.ja, 0
  br i1 %.not311, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.jb = load i32, ptr %i.hg, align 8, !tbaa !315
  %i.jc = icmp eq i32 %i.jb, 5
  br i1 %i.jc, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 262192
  %i.jf = sext i32 %i.hp to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !54
  %i.ji = load ptr, ptr @myself, align 8, !tbaa !54
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.231, i32 noundef %i.hp) #30
  br label %bb.gx

bb.bn:                                            ; preds = %bb.bl
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !329
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !273 ; 2 uses
  %i.jo = tail call fastcc i64 @sdslen(ptr noundef %i.jn)
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = tail call ptr @clusterLookupNode(ptr noundef %i.jn, i32 noundef %i.jp) ; 3 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.js = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !329
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !273
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.228, ptr noundef %i.jw) #30
  br label %bb.gx

bb.bp:                                            ; preds = %bb.bn
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 88
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !89
  %i.jz = and i32 %i.jy, 2
  %.not312 = icmp eq i32 %i.jz, 0
  br i1 %.not312, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.229) #30
  br label %bb.gx

bb.br:                                            ; preds = %bb.bp
end_hunk_2
begin_hunk_3_@getImportingSlotSource:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @isClusterHealthy() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !120
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @getNodeBySlot(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 262192
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @clusterNodeHostname(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @clusterNodeReplOffset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !241
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @clusterNodePreferredEndpoint(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8280), align 8, !tbaa !341
  switch i32 %i.c, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2264
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %i.b, align 1, !tbaa !58
  %.not7 = icmp eq i8 %i.e, 0
  %spec.select = select i1 %.not7, ptr @.str.305, ptr %i.b
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ @.str.193, %bb.e ], [ %i.d, %bb.b ], [ %spec.select, %bb.d ], [ @.str.305, %bb.c ], [ @.str.306, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterAllowFailoverCmd(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !183
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.307) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterPromoteSelfToMaster() local_unnamed_addr #3 {
bb.a:
  tail call void @replicationUnsetMaster() #30
  tail call void @asmFinalizeMasterTask() #30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @clusterAsmOnEvent(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.dictIterator, align 8       ; 8 uses
  %i.a = tail call ptr @asmTaskGetSlotRanges(ptr noundef %0) #30 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.a, %bb.a ], [ %2, %bb.b ]
  %i.b = tail call ptr @slotRangeArrayToString(ptr noundef nonnull %.sink) #30
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.023 = phi ptr [ null, %bb.b ], [ %i.b, %.sink.split ] ; 3 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not28 = icmp eq ptr %.023, null
  %i.e = select i1 %.not28, ptr @.str.193, ptr %.023
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.308, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.e) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  switch i32 %1, label %bb.u [
    i32 5, label %.preheader
    i32 13, label %bb.r
    i32 3, label %bb.s
    i32 14, label %bb.t
  ]

.preheader:                                       ; preds = %bb.e
  %i.f = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.i

._crit_edge40:                                    ; preds = %._crit_edge, %.preheader
  %i.i = call i32 @clusterBumpConfigEpochWithoutConsensus() ; 0 uses
  %i.j = call i32 @clusterSaveConfig(i32 noundef 1)
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %clusterSaveConfigOrDie.exit

bb.f:                                             ; preds = %._crit_edge40
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.38) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @exit(i32 noundef 1) #34
  unreachable

clusterSaveConfigOrDie.exit:                      ; preds = %._crit_edge40
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 393384 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !67
  %i.q = or i32 %i.p, 32
  store i32 %i.q, ptr %i.o, align 8, !tbaa !67
  %i.r = call i32 @clusterAsmProcess(ptr noundef %0, i32 noundef 6, ptr noundef null, ptr noundef null) #30 ; 0 uses
  br label %bb.u

bb.i:                                             ; preds = %.lr.ph39, %._crit_edge
  %i.s = phi i32 [ %i.f, %.lr.ph39 ], [ %i.y, %._crit_edge ]
  %indvars.iv42 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next43, %._crit_edge ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv42 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !342  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !344
  %.not2936 = icmp ugt i16 %i.u, %i.w
  br i1 %.not2936, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.x = zext i16 %i.u to i64
  %.pre45 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %clusterAddSlot.exit
  %.pre47 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.y = phi i32 [ %.pre47, %._crit_edge.loopexit ], [ %i.s, %bb.i ] ; 2 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next43, %i.z
  br i1 %i.aa, label %bb.i, label %._crit_edge40, !llvm.loop !345

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clusterAddSlot.exit
  %i.ab = phi ptr [ %.pre45, %.lr.ph.preheader ], [ %i.cu, %clusterAddSlot.exit ]
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %clusterAddSlot.exit ] ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 262192
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %clusterDelSlot.exit.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !160
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.ah = call i64 @kvstoreDictSize(ptr noundef %i.af, i32 noundef %i.ag) #30
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %removeChannelsInSlot.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @pubsubShardUnsubscribeAllChannelsInSlot(i32 noundef %i.ag) #30
  br label %removeChannelsInSlot.exit.i

removeChannelsInSlot.exit.i:                      ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.al = lshr i64 %indvars.iv, 3                 ; 2 uses
  %i.am = and i32 %i.ag, 7
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !58  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 1, %i.am                ; 2 uses
  %i.ar = and i32 %i.aq, %i.ap
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %bb.l, label %clusterDelSlot.exit

bb.l:                                             ; preds = %removeChannelsInSlot.exit.i
  call void @_serverAssert(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.18, i32 noundef 5092) #30
  call void @abort() #32
  unreachable

clusterDelSlot.exit:                              ; preds = %removeChannelsInSlot.exit.i
  %i.as = trunc nuw i32 %i.aq to i8
  %i.at = xor i8 %i.as, -1                        ; 2 uses
  %i.au = and i8 %i.ao, %i.at
  store i8 %i.au, ptr %i.an, align 1, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 2164 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !161
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !161
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 262192
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  store ptr null, ptr %i.ba, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 393584
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.al ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !58
  %i.be = and i8 %i.bd, %i.at
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !58
  call void @clusterSlotStatReset(i32 noundef %i.ag) #30
  %.pre46 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre46, i64 262192
  %.phi.trans.insert48 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %indvars.iv
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !tbaa !54
  %i.bf = icmp eq ptr %.pre49, null
  br i1 %i.bf, label %clusterDelSlot.exit.thread, label %clusterAddSlot.exit

clusterDelSlot.exit.thread:                       ; preds = %.lr.ph, %clusterDelSlot.exit
  %i.bg = load ptr, ptr @myself, align 8, !tbaa !54 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bj = lshr i64 %indvars.iv, 3                 ; 2 uses
  %i.bk = and i32 %i.bi, 7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !58  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 1, %i.bk                ; 2 uses
  %i.bp = and i32 %i.bo, %i.bn
  %.not.i32 = icmp eq i32 %i.bp, 0
  %i.bq = trunc nuw i32 %i.bo to i8               ; 2 uses
  br i1 %.not.i32, label %bb.m, label %clusterNodeSetSlotBit.exit

bb.m:                                             ; preds = %clusterDelSlot.exit.thread
  %i.br = or i8 %i.bm, %i.bq
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !58
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 2164 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !161 ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !161
  %i.bv = icmp eq i32 %i.bt, 0
  br i1 %i.bv, label %bb.n, label %clusterNodeSetSlotBit.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %3, ptr noundef %i.by) #30
  %i.bz = call ptr @dictNext(ptr noundef nonnull %3) #30 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bz, null
  br i1 %.not6.i.i, label %clusterMastersHaveSlaves.exit.thread.i, label %.lr.ph.i.i

clusterMastersHaveSlaves.exit.thread.i:           ; preds = %bb.n
  call void @dictResetIterator(ptr noundef nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %clusterNodeSetSlotBit.exit

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.p
  %i.ca = phi ptr [ %i.ci, %bb.p ], [ %i.bz, %bb.n ]
  %.07.i.i = phi i32 [ %.1.i.i, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.cb = call ptr @dictGetVal(ptr noundef nonnull %i.ca) #30 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !89
  %i.ce = and i32 %i.cd, 2
  %.not5.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not5.i.i, label %bb.o, label %bb.p, !llvm.loop !299

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2168
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !47
  %i.ch = add nsw i32 %i.cg, %.07.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.ch, %bb.o ], [ %.07.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ci = call ptr @dictNext(ptr noundef nonnull %3) #30 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i33, label %clusterMastersHaveSlaves.exit.i, label %.lr.ph.i.i

clusterMastersHaveSlaves.exit.i:                  ; preds = %bb.p
  %.not11.i = icmp eq i32 %.1.i.i, 0
  call void @dictResetIterator(ptr noundef nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not11.i, label %clusterNodeSetSlotBit.exit, label %bb.q

bb.q:                                             ; preds = %clusterMastersHaveSlaves.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 88 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !89
  %i.cl = or i32 %i.ck, 256
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !89
  br label %clusterNodeSetSlotBit.exit

clusterNodeSetSlotBit.exit:                       ; preds = %clusterDelSlot.exit.thread, %bb.m, %clusterMastersHaveSlaves.exit.thread.i, %clusterMastersHaveSlaves.exit.i, %bb.q
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 262192
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  store ptr %i.bg, ptr %i.co, align 8, !tbaa !54
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 393584
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bj ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !58
  %i.cs = xor i8 %i.bq, -1
  %i.ct = and i8 %i.cr, %i.cs
  store i8 %i.ct, ptr %i.cq, align 1, !tbaa !58
  call void @clusterSlotStatReset(i32 noundef %i.bi) #30
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %clusterAddSlot.exit

clusterAddSlot.exit:                              ; preds = %clusterDelSlot.exit, %clusterNodeSetSlotBit.exit
  %i.cu = phi ptr [ %.pre46, %clusterDelSlot.exit ], [ %.pre, %clusterNodeSetSlotBit.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cv = load i16, ptr %i.v, align 2, !tbaa !344
  %i.cw = zext i16 %i.cv to i64
  %.not29.not = icmp samesign ult i64 %indvars.iv, %i.cw
  br i1 %.not29.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !346

bb.r:                                             ; preds = %bb.e
  tail call void @unpauseActions(i32 noundef 3) #30
  br label %bb.u

bb.s:                                             ; preds = %bb.e
  tail call void @pauseActions(i32 noundef 3, i64 noundef 9223372036854775807, i32 noundef 29) #30
  %i.cx = tail call i32 @clusterAsmProcess(ptr noundef %0, i32 noundef 4, ptr noundef null, ptr noundef null) #30 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.e
  tail call void @unpauseActions(i32 noundef 3) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.t, %bb.s, %bb.r, %clusterSaveConfigOrDie.exit
  call void @sdsfree(ptr noundef %.023) #30
  ret i32 0
}

declare ptr @asmTaskGetSlotRanges(ptr noundef) local_unnamed_addr #2

declare ptr @slotRangeArrayToString(ptr noundef) local_unnamed_addr #2

declare i32 @clusterAsmProcess(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(none) }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind allocsize(0) }
attributes #36 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !10, i64 8488}
!14 = !{!"redisServer", !10, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !18, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !20, i64 64, !21, i64 72, !21, i64 80, !22, i64 88, !23, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !24, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !16, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !15, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !16, i64 232, !16, i64 240, !10, i64 248, !10, i64 252, !15, i64 256, !11, i64 264, !21, i64 272, !21, i64 280, !21, i64 288, !25, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !16, i64 472, !16, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !26, i64 1336, !25, i64 1440, !25, i64 1448, !25, i64 1456, !25, i64 1464, !25, i64 1472, !25, i64 1480, !25, i64 1488, !28, i64 1496, !28, i64 1504, !17, i64 1512, !23, i64 1520, !10, i64 1528, !23, i64 1536, !10, i64 1544, !25, i64 1552, !11, i64 1560, !11, i64 1624, !21, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !29, i64 2424, !10, i64 2448, !24, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !15, i64 2488, !15, i64 2496, !15, i64 2504, !15, i64 2512, !15, i64 2520, !15, i64 2528, !24, i64 2536, !24, i64 2544, !24, i64 2552, !24, i64 2560, !24, i64 2568, !24, i64 2576, !31, i64 2584, !24, i64 2592, !24, i64 2600, !24, i64 2608, !24, i64 2616, !24, i64 2624, !24, i64 2632, !15, i64 2640, !24, i64 2648, !24, i64 2656, !24, i64 2664, !24, i64 2672, !24, i64 2680, !24, i64 2688, !24, i64 2696, !24, i64 2704, !15, i64 2712, !15, i64 2720, !15, i64 2728, !24, i64 2736, !24, i64 2744, !24, i64 2752, !24, i64 2760, !24, i64 2768, !31, i64 2776, !24, i64 2784, !24, i64 2792, !24, i64 2800, !24, i64 2808, !24, i64 2816, !25, i64 2824, !24, i64 2832, !24, i64 2840, !15, i64 2848, !32, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !15, i64 2976, !15, i64 2984, !15, i64 2992, !15, i64 3000, !15, i64 3008, !15, i64 3016, !15, i64 3024, !15, i64 3032, !31, i64 3040, !11, i64 3048, !15, i64 3080, !24, i64 3088, !24, i64 3096, !24, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !24, i64 5168, !24, i64 5176, !24, i64 5184, !24, i64 5192, !11, i64 5200, !24, i64 6264, !24, i64 6272, !15, i64 6280, !24, i64 6288, !24, i64 6296, !15, i64 6304, !11, i64 6312, !33, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !15, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !15, i64 6496, !15, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !16, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !34, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !16, i64 6680, !16, i64 6688, !10, i64 6696, !10, i64 6700, !15, i64 6704, !15, i64 6712, !15, i64 6720, !15, i64 6728, !15, i64 6736, !10, i64 6744, !10, i64 6748, !16, i64 6752, !10, i64 6760, !10, i64 6764, !24, i64 6768, !24, i64 6776, !15, i64 6784, !15, i64 6792, !15, i64 6800, !10, i64 6808, !10, i64 6812, !15, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !15, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !17, i64 6872, !10, i64 6880, !24, i64 6888, !24, i64 6896, !24, i64 6904, !24, i64 6912, !10, i64 6920, !35, i64 6928, !10, i64 6936, !16, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !15, i64 6968, !15, i64 6976, !15, i64 6984, !15, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !36, i64 7024, !10, i64 7032, !10, i64 7036, !16, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !37, i64 7072, !10, i64 7088, !16, i64 7096, !10, i64 7104, !16, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !24, i64 7232, !24, i64 7240, !11, i64 7248, !24, i64 7256, !10, i64 7264, !10, i64 7268, !39, i64 7272, !24, i64 7280, !24, i64 7288, !40, i64 7296, !15, i64 7344, !15, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !15, i64 7400, !25, i64 7408, !15, i64 7416, !16, i64 7424, !16, i64 7432, !16, i64 7440, !10, i64 7448, !10, i64 7452, !28, i64 7456, !28, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !15, i64 7488, !15, i64 7496, !15, i64 7504, !15, i64 7512, !15, i64 7520, !41, i64 7528, !41, i64 7536, !10, i64 7544, !16, i64 7552, !15, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !15, i64 7584, !15, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !16, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !24, i64 7680, !10, i64 7688, !25, i64 7696, !10, i64 7704, !24, i64 7712, !24, i64 7720, !15, i64 7728, !15, i64 7736, !10, i64 7744, !24, i64 7752, !15, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !24, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !25, i64 7872, !25, i64 7880, !10, i64 7888, !15, i64 7896, !25, i64 7904, !25, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !15, i64 7936, !15, i64 7944, !15, i64 7952, !15, i64 7960, !15, i64 7968, !15, i64 7976, !15, i64 7984, !15, i64 7992, !15, i64 8000, !24, i64 8008, !24, i64 8016, !24, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !15, i64 8048, !11, i64 8056, !24, i64 8064, !24, i64 8072, !10, i64 8080, !15, i64 8088, !24, i64 8096, !15, i64 8104, !24, i64 8112, !42, i64 8120, !21, i64 8128, !10, i64 8136, !42, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !24, i64 8168, !24, i64 8176, !16, i64 8184, !24, i64 8192, !24, i64 8200, !24, i64 8208, !10, i64 8216, !43, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !16, i64 8256, !16, i64 8264, !16, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !24, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !24, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !24, i64 8384, !21, i64 8392, !16, i64 8400, !15, i64 8408, !16, i64 8416, !10, i64 8424, !44, i64 8432, !10, i64 8472, !15, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !45, i64 8504, !16, i64 8624, !16, i64 8632, !16, i64 8640, !16, i64 8648, !46, i64 8656, !24, i64 8664, !10, i64 8672, !16, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !15, i64 8704, !10, i64 8712, !10, i64 8716, !16, i64 8720, !10, i64 8728, !10, i64 8732}
!15 = !{!"long", !11, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !17, i64 0}
!20 = !{!"p1 _ZTS7redisDb", !17, i64 0}
!21 = !{!"p1 _ZTS4dict", !17, i64 0}
!22 = !{!"p1 _ZTS11aeEventLoop", !17, i64 0}
!23 = !{!"p1 _ZTS3rax", !17, i64 0}
!24 = !{!"long long", !11, i64 0}
!25 = !{!"p1 _ZTS4list", !17, i64 0}
!26 = !{!"connListener", !11, i64 0, !10, i64 64, !18, i64 72, !10, i64 80, !10, i64 84, !27, i64 88, !17, i64 96}
!27 = !{!"p1 _ZTS14ConnectionType", !17, i64 0}
!28 = !{!"p1 _ZTS6client", !17, i64 0}
!29 = !{!"pendingCommandPool", !30, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!30 = !{!"p2 _ZTS14pendingCommand", !19, i64 0}
!31 = !{!"double", !11, i64 0}
!32 = !{!"malloc_stats", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!33 = !{!"p1 _ZTS11hotkeyStats", !17, i64 0}
!34 = !{!"p1 double", !17, i64 0}
!35 = !{!"p1 _ZTS9saveparam", !17, i64 0}
!36 = !{!"p2 _ZTS10connection", !19, i64 0}
!37 = !{!"redisOpArray", !38, i64 0, !10, i64 8, !10, i64 12}
!38 = !{!"p1 _ZTS7redisOp", !17, i64 0}
!39 = !{!"p1 _ZTS11replBacklog", !17, i64 0}
!40 = !{!"replDataBuf", !25, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!41 = !{!"p1 _ZTS10connection", !17, i64 0}
!42 = !{!"p1 _ZTS8_kvstore", !17, i64 0}
!43 = !{!"p1 _ZTS12clusterState", !17, i64 0}
!44 = !{!"aclInfo", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!45 = !{!"redisTLSContextConfig", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !10, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!46 = !{!"p1 _ZTS14sentinelConfig", !17, i64 0}
!47 = !{!48, !10, i64 2168}
!48 = !{!"_clusterNode", !24, i64 0, !11, i64 8, !11, i64 48, !10, i64 88, !15, i64 96, !11, i64 104, !49, i64 2152, !10, i64 2160, !10, i64 2164, !10, i64 2168, !50, i64 2176, !51, i64 2184, !24, i64 2192, !24, i64 2200, !24, i64 2208, !24, i64 2216, !24, i64 2224, !24, i64 2232, !24, i64 2240, !24, i64 2248, !24, i64 2256, !11, i64 2264, !16, i64 2312, !16, i64 2320, !10, i64 2328, !10, i64 2332, !10, i64 2336, !52, i64 2344, !52, i64 2352, !25, i64 2360}
!49 = !{!"p1 short", !17, i64 0}
!50 = !{!"p2 _ZTS12_clusterNode", !19, i64 0}
!51 = !{!"p1 _ZTS12_clusterNode", !17, i64 0}
!52 = !{!"p1 _ZTS11clusterLink", !17, i64 0}
!53 = !{!48, !50, i64 2176}
!54 = !{!51, !51, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!48, !16, i64 2320}
!58 = !{!11, !11, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"short", !11, i64 0}
!61 = !{!15, !15, i64 0}
!62 = distinct !{null}
!63 = !{!48, !10, i64 2328}
!64 = !{!48, !10, i64 2332}
!65 = !{!48, !51, i64 2184}
!66 = !{!14, !43, i64 8224}
!67 = !{!68, !10, i64 393384}
!68 = !{!"clusterState", !51, i64 0, !15, i64 8, !10, i64 16, !10, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !11, i64 48, !11, i64 131120, !11, i64 262192, !11, i64 393264, !24, i64 393304, !10, i64 393312, !10, i64 393316, !10, i64 393320, !15, i64 393328, !10, i64 393336, !24, i64 393344, !51, i64 393352, !24, i64 393360, !10, i64 393368, !15, i64 393376, !10, i64 393384, !11, i64 393392, !11, i64 393480, !24, i64 393568, !24, i64 393576, !11, i64 393584}
!69 = distinct !{!69, !56}
!70 = !{!68, !21, i64 32}
!71 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!72 = !{!14, !10, i64 6416}
!73 = !{!74, !15, i64 48}
!74 = !{!"stat", !15, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !75, i64 72, !75, i64 88, !75, i64 104, !11, i64 120}
!75 = !{!"timespec", !15, i64 0, !15, i64 8}
!76 = distinct !{!76, !56}
!77 = !{!16, !16, i64 0}
!78 = !{!68, !15, i64 8}
!79 = !{!68, !15, i64 393376}
!80 = distinct !{!80, !56}
!81 = !{!68, !21, i64 24}
!82 = !{!48, !16, i64 2312}
!83 = !{!84, !16, i64 0}
!84 = !{!"", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!85 = !{!84, !17, i64 8}
!86 = distinct !{!86, !56}
!87 = !{!48, !10, i64 2336}
!88 = !{!68, !51, i64 0}
!89 = !{!48, !10, i64 88}
!90 = !{!48, !24, i64 2224}
!91 = distinct !{!91, !56}
!92 = distinct !{!92, !56}
!93 = !{!48, !24, i64 2200}
end_hunk_3
