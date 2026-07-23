inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@clusterManagerCheckCluster:bb.a

._crit_edge798.thread.i:                          ; preds = %._crit_edge798.i, %bb.ct
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.303, i32 noundef %i.dw)
  %i.rk = load ptr, ptr %i.mz, align 8, !tbaa !88
  %i.rl = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.rk, ptr noundef nonnull @.str.306, i32 noundef %i.dw, ptr noundef nonnull @.str.307) #32 ; 4 uses
  %.not.i.i184 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i184, label %.thread659.i, label %bb.db

bb.db:                                            ; preds = %._crit_edge798.thread.i
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !41
  %.not19.i.i185 = icmp eq i32 %i.rm, 6
  br i1 %.not19.i.i185, label %.thread659.i.sink.split, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @freeReplyObject(ptr noundef nonnull %i.rl) #32
  call void @listRewind(ptr noundef %i.ee, ptr noundef nonnull %15) #32
  %i.rn = call ptr @listNext(ptr noundef nonnull %15) #32 ; 2 uses
  %.not403806.i = icmp eq ptr %i.rn, null
  br i1 %.not403806.i, label %.thread659.i, label %.lr.ph808.i

.lr.ph808.i:                                      ; preds = %bb.dc, %clusterManagerClearSlotStatus.exit498.i
  %i.ro = phi ptr [ %i.ru, %clusterManagerClearSlotStatus.exit498.i ], [ %i.rn, %bb.dc ]
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !102 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !88
  %i.rs = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.rr, ptr noundef nonnull @.str.306, i32 noundef %i.dw, ptr noundef nonnull @.str.307) #32 ; 4 uses
  %.not.i.i493.i = icmp eq ptr %i.rs, null
  br i1 %.not.i.i493.i, label %.thread659.i, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph808.i
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !41
  %.not19.i.i494.i = icmp eq i32 %i.rt, 6
  br i1 %.not19.i.i494.i, label %.thread659.i.sink.split, label %clusterManagerClearSlotStatus.exit498.i

clusterManagerClearSlotStatus.exit498.i:          ; preds = %bb.dd
  call void @freeReplyObject(ptr noundef nonnull %i.rs) #32
  %i.ru = call ptr @listNext(ptr noundef nonnull %15) #32 ; 2 uses
  %.not403.i = icmp eq ptr %i.ru, null
  br i1 %.not403.i, label %.thread659.i, label %.lr.ph808.i, !llvm.loop !491

.thread659.i.sink.split:                          ; preds = %bb.cz, %bb.dd, %bb.db
  %.sink732 = phi ptr [ %i.mz, %bb.db ], [ %i.rq, %bb.dd ], [ %i.re, %bb.cz ] ; 2 uses
  %.sink728 = phi ptr [ %i.rl, %bb.db ], [ %i.rs, %bb.dd ], [ %i.rh, %bb.cz ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.sink732, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !80
  %i.rx = getelementptr inbounds nuw i8, ptr %.sink732, i64 24
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !83
  %i.rz = getelementptr inbounds nuw i8, ptr %.sink728, i64 32
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.rw, i32 noundef %i.ry, ptr noundef %i.sa)
  call void @freeReplyObject(ptr noundef nonnull %.sink728) #32
  br label %.thread659.i

.thread659.i:                                     ; preds = %bb.da, %bb.cy, %clusterManagerClearSlotStatus.exit498.i, %.lr.ph808.i, %.thread659.i.sink.split, %._crit_edge798.thread.i, %bb.dc, %bb.cx, %bb.cw
  %.19.ph.i = phi i32 [ 0, %._crit_edge798.thread.i ], [ 1, %clusterManagerClearSlotStatus.exit498.i ], [ 1, %bb.cx ], [ 0, %bb.cw ], [ 0, %.thread659.i.sink.split ], [ 1, %bb.dc ], [ 0, %.lr.ph808.i ], [ 0, %bb.cy ], [ 1, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %clusterManagerFixOpenSlot.exit

bb.de:                                            ; preds = %clusterManagerCountKeysInSlot.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.thread672.i

bb.df:                                            ; preds = %bb.cd
  %.not390.i = icmp eq ptr %.1306.i, %i.mz
  br i1 %.not390.i, label %.thread667.thread.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sb = load ptr, ptr %i.mz, align 8, !tbaa !88
  %i.sc = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.sb, ptr noundef nonnull @.str.304, i32 noundef %i.dw, i32 noundef 10) #32 ; 6 uses
  %.not.i183 = icmp eq ptr %i.sc, null
  br i1 %.not.i183, label %clusterManagerFixOpenSlot.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !41
  %.not19.i = icmp eq i32 %i.sd, 6
  br i1 %.not19.i, label %.thread925.i, label %.thread667.i

.thread925.i:                                     ; preds = %bb.dh
  %i.se = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !80
  %i.sg = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !83
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.sf, i32 noundef %i.sh, ptr noundef %i.sj)
  call void @freeReplyObject(ptr noundef nonnull %i.sc) #32
  br label %clusterManagerFixOpenSlot.exit

.thread667.i:                                     ; preds = %bb.dh
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sc, i64 48
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !33
  %.not986.i = icmp eq i64 %i.sl, 0
  call void @freeReplyObject(ptr noundef nonnull %i.sc) #32
  br i1 %.not986.i, label %.thread667..thread667.thread_crit_edge.i, label %.thread672.i

.thread667..thread667.thread_crit_edge.i:         ; preds = %.thread667.i
  %.pre.i = load ptr, ptr %i.ed, align 8, !tbaa !165
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre869.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !102
  br label %.thread667.thread.i

.thread667.thread.i:                              ; preds = %.thread667..thread667.thread_crit_edge.i, %bb.df
  %i.sm = phi ptr [ %.pre869.i, %.thread667..thread667.thread_crit_edge.i ], [ %i.mz, %bb.df ] ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !80
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 24 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.305, i32 noundef %i.dw, ptr noundef %i.so, i32 noundef %i.sq)
  %i.sr = load ptr, ptr %i.sm, align 8, !tbaa !88
  %i.ss = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.sr, ptr noundef nonnull @.str.306, i32 noundef %i.dw, ptr noundef nonnull @.str.307) #32 ; 4 uses
  %.not.i499.i = icmp eq ptr %i.ss, null
  br i1 %.not.i499.i, label %clusterManagerFixOpenSlot.exit, label %bb.di

bb.di:                                            ; preds = %.thread667.thread.i
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !41
  %.not19.i500.i = icmp eq i32 %i.st, 6
  br i1 %.not19.i500.i, label %.critedge18.i502.i, label %bb.dj

.critedge18.i502.i:                               ; preds = %bb.di
  %i.su = load ptr, ptr %i.sn, align 8, !tbaa !80
  %i.sv = load i32, ptr %i.sp, align 8, !tbaa !83
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 32
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.su, i32 noundef %i.sv, ptr noundef %i.sx)
  br label %bb.dj

bb.dj:                                            ; preds = %.critedge18.i502.i, %bb.di
  %.012.i501.ph.i = phi i32 [ 1, %bb.di ], [ 0, %.critedge18.i502.i ]
  call void @freeReplyObject(ptr noundef nonnull %i.ss) #32
  br label %clusterManagerFixOpenSlot.exit

.thread672.i:                                     ; preds = %.thread667.i, %bb.de, %bb.cf, %.loopexit706.i
  %i.sy = getelementptr inbounds nuw i8, ptr %.1306.i, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !80
  %i.ta = getelementptr inbounds nuw i8, ptr %.1306.i, i64 24
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.308, ptr noundef %.0283.lcssa.i, ptr noundef %.0290.lcssa.i, ptr noundef %i.sz, i32 noundef %i.tb)
  br label %clusterManagerFixOpenSlot.exit

clusterManagerFixOpenSlot.exit:                   ; preds = %bb.aa, %bb.al, %bb.bq, %bb.br, %bb.bt, %bb.ch, %bb.ci, %bb.cn, %bb.cp, %bb.dg, %.thread522.i, %.thread582.i, %bb.bc, %bb.bd, %clusterManagerClearSlotStatus.exit.thread607.i, %bb.bf, %clusterManagerSetSlot.exit.thread612.i, %clusterManagerSetSlot.exit471.thread617.i, %bb.ce, %clusterManagerClearSlotStatus.exit481.thread681.i, %._crit_edge780.i, %clusterManagerSetSlot.exit485.thread689.i, %.thread659.i, %.thread925.i, %.thread667.thread.i, %bb.dj, %.thread672.i
  %.9299.i = phi ptr [ %.0290.lcssa.i, %.thread667.thread.i ], [ %.0290.lcssa.i, %bb.dg ], [ %.0290.lcssa.i, %bb.bc ], [ %.0290.lcssa.i, %bb.bd ], [ %.0290.lcssa.i, %bb.ce ], [ %.0290.lcssa.i, %._crit_edge780.i ], [ %.0290.lcssa.i, %clusterManagerSetSlot.exit485.thread689.i ], [ %.0290.lcssa.i, %clusterManagerClearSlotStatus.exit481.thread681.i ], [ %.0290.lcssa.i, %.thread672.i ], [ %.0290.lcssa.i, %.thread659.i ], [ %.0290.lcssa.i, %bb.bq ], [ %.0290.lcssa.i, %clusterManagerClearSlotStatus.exit.thread607.i ], [ %.0290.lcssa.i, %bb.bf ], [ %.0290.lcssa.i, %.thread925.i ], [ %.0290.lcssa.i, %bb.dj ], [ %i.eg, %.thread522.i ], [ %.0290762.i, %.thread582.i ], [ %.0290.lcssa.i, %clusterManagerSetSlot.exit.thread612.i ], [ %.0290.lcssa.i, %bb.ch ], [ %.0290.lcssa.i, %clusterManagerSetSlot.exit471.thread617.i ], [ %.0290762.i, %bb.al ], [ %.0290.lcssa.i, %bb.cn ], [ %.0290.lcssa.i, %bb.cp ], [ %.0290.lcssa.i, %bb.ci ], [ %.0290.lcssa.i, %bb.bt ], [ %.0290.lcssa.i, %bb.br ], [ %i.eg, %bb.aa ]
  %.6289.i = phi ptr [ %.0283.lcssa.i, %.thread667.thread.i ], [ %.0283.lcssa.i, %bb.dg ], [ %.0283.lcssa.i, %bb.bc ], [ %.0283.lcssa.i, %bb.bd ], [ %.0283.lcssa.i, %bb.ce ], [ %.0283.lcssa.i, %._crit_edge780.i ], [ %.0283.lcssa.i, %clusterManagerSetSlot.exit485.thread689.i ], [ %.0283.lcssa.i, %clusterManagerClearSlotStatus.exit481.thread681.i ], [ %.0283.lcssa.i, %.thread672.i ], [ %.0283.lcssa.i, %.thread659.i ], [ %.0283.lcssa.i, %bb.bq ], [ %.0283.lcssa.i, %clusterManagerClearSlotStatus.exit.thread607.i ], [ %.0283.lcssa.i, %bb.bf ], [ %.0283.lcssa.i, %.thread925.i ], [ %.0283.lcssa.i, %bb.dj ], [ %i.ef, %.thread522.i ], [ %.0283763.i, %.thread582.i ], [ %.0283.lcssa.i, %clusterManagerSetSlot.exit.thread612.i ], [ %.0283.lcssa.i, %bb.ch ], [ %.0283.lcssa.i, %clusterManagerSetSlot.exit471.thread617.i ], [ %.0283763.i, %bb.al ], [ %.0283.lcssa.i, %bb.cn ], [ %.0283.lcssa.i, %bb.cp ], [ %.0283.lcssa.i, %bb.ci ], [ %.0283.lcssa.i, %bb.bt ], [ %.0283.lcssa.i, %bb.br ], [ %i.ef, %bb.aa ]
  %.22.i = phi i32 [ 0, %.thread667.thread.i ], [ 0, %bb.dg ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ %i.nl, %bb.ce ], [ 1, %._crit_edge780.i ], [ 0, %clusterManagerSetSlot.exit485.thread689.i ], [ 0, %clusterManagerClearSlotStatus.exit481.thread681.i ], [ 0, %.thread672.i ], [ %.19.ph.i, %.thread659.i ], [ 0, %bb.bq ], [ 0, %clusterManagerClearSlotStatus.exit.thread607.i ], [ 0, %bb.bf ], [ 0, %.thread925.i ], [ %.012.i501.ph.i, %bb.dj ], [ 0, %.thread522.i ], [ 0, %.thread582.i ], [ 0, %clusterManagerSetSlot.exit.thread612.i ], [ 0, %bb.ch ], [ 0, %clusterManagerSetSlot.exit471.thread617.i ], [ 0, %bb.al ], [ 0, %bb.cn ], [ 1, %bb.cp ], [ 0, %bb.ci ], [ 0, %bb.bt ], [ 0, %bb.br ], [ 0, %bb.aa ]
  call void @listRelease(ptr noundef %i.ec) #32
  call void @listRelease(ptr noundef %i.ed) #32
  call void @listRelease(ptr noundef %i.ee) #32
  call void @hi_sdsfree(ptr noundef %.6289.i) #32
  call void @hi_sdsfree(ptr noundef %.9299.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %.not137 = icmp eq i32 %.22.i, 0
  br i1 %.not137, label %clusterManagerFixOpenSlot.exit._crit_edge, label %bb.u

clusterManagerFixOpenSlot.exit._crit_edge:        ; preds = %bb.u, %clusterManagerFixOpenSlot.exit, %bb.t
  %.2 = phi i32 [ 0, %bb.t ], [ 0, %clusterManagerFixOpenSlot.exit ], [ 1, %bb.u ]
  call void @dictResetIterator(ptr noundef nonnull %18) #32
  br label %bb.dk

bb.dk:                                            ; preds = %clusterManagerFixOpenSlot.exit._crit_edge, %._crit_edge355
  %.3 = phi i32 [ %.2, %clusterManagerFixOpenSlot.exit._crit_edge ], [ 0, %._crit_edge355 ]
  call void @dictRelease(ptr noundef nonnull %.4117) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %._crit_edge348.thread

._crit_edge348.thread:                            ; preds = %bb.h, %bb.dk, %._crit_edge348
  %.4 = phi i32 [ %.3, %bb.dk ], [ %.0103, %._crit_edge348 ], [ %.0103, %bb.h ]
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.d, i8 0, i64 16384, i1 false)
  %i.tc = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %clusterManagerGetCoveredSlots.exit.thread, label %bb.dl

bb.dl:                                            ; preds = %._crit_edge348.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @listRewind(ptr noundef nonnull %i.tc, ptr noundef nonnull %9) #32
  %i.te = call ptr @listNext(ptr noundef nonnull %9) #32 ; 2 uses
  %.not18.i = icmp eq ptr %i.te, null
  br i1 %.not18.i, label %clusterManagerGetCoveredSlots.exit.thread198, label %.lr.ph.i155

clusterManagerGetCoveredSlots.exit.thread198:     ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %clusterManagerGetCoveredSlots.exit.thread

.lr.ph.i155:                                      ; preds = %bb.dl, %middle.block
  %i.tf = phi ptr [ %i.us, %middle.block ], [ %i.te, %bb.dl ]
  %.01219.i = phi i32 [ %i.ur, %middle.block ], [ 0, %bb.dl ]
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !102
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 84
  %i.tj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.01219.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue869, %.lr.ph.i155
  %index = phi i64 [ 0, %.lr.ph.i155 ], [ %index.next, %pred.store.continue869 ] ; 10 uses
  %vec.phi = phi <4 x i32> [ %i.tj, %.lr.ph.i155 ], [ %predphi870.a, %pred.store.continue869 ]
  %vec.phi852 = phi <4 x i32> [ zeroinitializer, %.lr.ph.i155 ], [ %predphi872, %pred.store.continue869 ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %index ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  %wide.load = load <4 x i8>, ptr %i.tk, align 1, !tbaa !73
  %wide.load853 = load <4 x i8>, ptr %i.tl, align 1, !tbaa !73
  %i.tm = icmp ne <4 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.tn = icmp ne <4 x i8> %wide.load853, zeroinitializer ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %wide.load854 = load <4 x i8>, ptr %i.to, align 8, !tbaa !73
  %wide.load855 = load <4 x i8>, ptr %i.tp, align 4, !tbaa !73
  %i.tq = icmp eq <4 x i8> %wide.load854, zeroinitializer ; 2 uses
  %i.tr = icmp eq <4 x i8> %wide.load855, zeroinitializer ; 2 uses
  %i.ts = select <4 x i1> %i.tm, <4 x i1> %i.tq, <4 x i1> zeroinitializer ; 4 uses
  %i.tt = select <4 x i1> %i.tn, <4 x i1> %i.tr, <4 x i1> zeroinitializer ; 4 uses
  %i.tu = extractelement <4 x i1> %i.ts, i64 0
  br i1 %i.tu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 1, ptr %i.to, align 8, !tbaa !73
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.tv = extractelement <4 x i1> %i.ts, i64 1
  br i1 %i.tv, label %pred.store.if856, label %pred.store.continue857

pred.store.if856:                                 ; preds = %pred.store.continue
  %i.tw = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store i8 1, ptr %i.tx, align 1, !tbaa !73
  br label %pred.store.continue857

pred.store.continue857:                           ; preds = %pred.store.if856, %pred.store.continue
  %i.ty = extractelement <4 x i1> %i.ts, i64 2
  br i1 %i.ty, label %pred.store.if858, label %pred.store.continue859

pred.store.if858:                                 ; preds = %pred.store.continue857
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 2
  store i8 1, ptr %i.ua, align 2, !tbaa !73
  br label %pred.store.continue859

pred.store.continue859:                           ; preds = %pred.store.if858, %pred.store.continue857
  %i.ub = extractelement <4 x i1> %i.ts, i64 3
  br i1 %i.ub, label %pred.store.if860, label %pred.store.continue861

pred.store.if860:                                 ; preds = %pred.store.continue859
  %i.uc = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  store i8 1, ptr %i.ud, align 1, !tbaa !73
  br label %pred.store.continue861

pred.store.continue861:                           ; preds = %pred.store.if860, %pred.store.continue859
  %i.ue = extractelement <4 x i1> %i.tt, i64 0
  br i1 %i.ue, label %pred.store.if862, label %pred.store.continue863

pred.store.if862:                                 ; preds = %pred.store.continue861
  %i.uf = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  store i8 1, ptr %i.ug, align 4, !tbaa !73
  br label %pred.store.continue863

pred.store.continue863:                           ; preds = %pred.store.if862, %pred.store.continue861
  %i.uh = extractelement <4 x i1> %i.tt, i64 1
  br i1 %i.uh, label %pred.store.if864, label %pred.store.continue865

pred.store.if864:                                 ; preds = %pred.store.continue863
  %i.ui = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 5
  store i8 1, ptr %i.uj, align 1, !tbaa !73
  br label %pred.store.continue865

pred.store.continue865:                           ; preds = %pred.store.if864, %pred.store.continue863
  %i.uk = extractelement <4 x i1> %i.tt, i64 2
  br i1 %i.uk, label %pred.store.if866, label %pred.store.continue867

pred.store.if866:                                 ; preds = %pred.store.continue865
  %i.ul = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 6
  store i8 1, ptr %i.um, align 2, !tbaa !73
  br label %pred.store.continue867

pred.store.continue867:                           ; preds = %pred.store.if866, %pred.store.continue865
  %i.un = extractelement <4 x i1> %i.tt, i64 3
  br i1 %i.un, label %pred.store.if868, label %pred.store.continue869

pred.store.if868:                                 ; preds = %pred.store.continue867
  %i.uo = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 7
  store i8 1, ptr %i.up, align 1, !tbaa !73
  br label %pred.store.continue869

pred.store.continue869:                           ; preds = %pred.store.if868, %pred.store.continue867
  %narrow = select <4 x i1> %i.tm, <4 x i1> %i.tq, <4 x i1> zeroinitializer
  %predphi.a = zext <4 x i1> %narrow to <4 x i32>
  %predphi870.a = add <4 x i32> %vec.phi, %predphi.a ; 2 uses
  %narrow873 = select <4 x i1> %i.tn, <4 x i1> %i.tr, <4 x i1> zeroinitializer
  %predphi871 = zext <4 x i1> %narrow873 to <4 x i32>
  %predphi872 = add <4 x i32> %vec.phi852, %predphi871 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.uq = icmp eq i64 %index.next, 16384
  br i1 %i.uq, label %middle.block, label %vector.body, !llvm.loop !492

middle.block:                                     ; preds = %pred.store.continue869
  %bin.rdx = add <4 x i32> %predphi872, %predphi870.a
  %i.ur = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.us = call ptr @listNext(ptr noundef nonnull %9) #32 ; 2 uses
  %.not.i159 = icmp eq ptr %i.us, null
  br i1 %.not.i159, label %clusterManagerGetCoveredSlots.exit, label %.lr.ph.i155, !llvm.loop !493

clusterManagerGetCoveredSlots.exit:               ; preds = %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ut = icmp eq i32 %i.ur, 16384
  br i1 %i.ut, label %bb.dm, label %clusterManagerGetCoveredSlots.exit.thread

bb.dm:                                            ; preds = %clusterManagerGetCoveredSlots.exit
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.276, i32 noundef 16384)
  br label %bb.ga

clusterManagerGetCoveredSlots.exit.thread:        ; preds = %._crit_edge348.thread, %clusterManagerGetCoveredSlots.exit.thread198, %clusterManagerGetCoveredSlots.exit
  %i.uu = call ptr @hi_sdsempty() #32
  %i.uv = call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.uu, ptr noundef nonnull @.str.277, i32 noundef 16384) #32 ; 2 uses
  %i.uw = load ptr, ptr @cluster_manager.1, align 8, !tbaa !134 ; 2 uses
  %i.ux = icmp eq ptr %i.uw, null
  br i1 %i.ux, label %bb.dn, label %clusterManagerOnError.exit161

bb.dn:                                            ; preds = %clusterManagerGetCoveredSlots.exit.thread
  %i.uy = call ptr @listCreate() #32              ; 2 uses
  store ptr %i.uy, ptr @cluster_manager.1, align 8, !tbaa !134
  br label %clusterManagerOnError.exit161

clusterManagerOnError.exit161:                    ; preds = %clusterManagerGetCoveredSlots.exit.thread, %bb.dn
  %i.uz = phi ptr [ %i.uy, %bb.dn ], [ %i.uw, %clusterManagerGetCoveredSlots.exit.thread ]
  %i.va = call ptr @listAddNodeTail(ptr noundef %i.uz, ptr noundef %i.uv) #32 ; 0 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %i.uv)
  %.not138 = icmp eq i32 %i.n, 0
  br i1 %.not138, label %bb.ga, label %bb.do

bb.do:                                            ; preds = %clusterManagerOnError.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %19, ptr noundef nonnull align 8 dereferenceable(120) @clusterManagerDictType, i64 120, i1 false), !tbaa.struct !494
  %i.vb = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr @dictSdsDestructor, ptr %i.vb, align 8, !tbaa !495
  %i.vc = getelementptr inbounds nuw i8, ptr %19, i64 40
  store ptr @dictListDestructor, ptr %i.vc, align 8, !tbaa !497
  %i.vd = call ptr @dictCreate(ptr noundef nonnull %19) #32
  store ptr %i.vd, ptr @clusterManagerUncoveredSlots, align 8, !tbaa !498
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ve = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126
  %i.vf = and i32 %i.ve, 1024
  %i.vg = load i32, ptr @cluster_manager.2, align 8, !tbaa !474 ; 2 uses
  %i.vh = icmp slt i32 %i.vg, 1
  %i.vi = icmp ne i32 %i.vf, 0
  %or.cond.i162 = select i1 %i.vh, i1 true, i1 %i.vi
  br i1 %or.cond.i162, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.346, i32 noundef %i.vg)
  call void @exit(i32 noundef 1) #40
  unreachable

bb.dq:                                            ; preds = %bb.do
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.347)
  br label %bb.dr

bb.dr:                                            ; preds = %.thread233.i, %bb.dq
  %indvars.iv.i163 = phi i64 [ 0, %bb.dq ], [ %indvars.iv.next.i164, %.thread233.i ] ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i163
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !73
  %.not193.i = icmp eq i8 %i.vk, 0
  br i1 %.not193.i, label %bb.ds, label %.thread233.i

bb.ds:                                            ; preds = %bb.dr
  %i.vl = call ptr @hi_sdsfromlonglong(i64 noundef %indvars.iv.i163) #32
  %i.vm = call ptr @listCreate() #32              ; 5 uses
  %i.vn = call ptr @hi_sdsempty() #32             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.vo = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.vo, ptr noundef nonnull %3) #32
  %i.vp = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not194340.i = icmp eq ptr %i.vp, null
  br i1 %.not194340.i, label %.thread237.i, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %bb.ds
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 40
  %i.vr = trunc nuw nsw i64 %indvars.iv.i163 to i32
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ef, %.lr.ph.i173
  %i.vs = phi ptr [ %i.vp, %.lr.ph.i173 ], [ %i.wu, %bb.ef ]
  %.0139341.i = phi ptr [ %i.vn, %.lr.ph.i173 ], [ %.4143.i, %bb.ef ] ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !102 ; 8 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 56
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !141
  %i.vx = and i32 %i.vw, 2
  %.not195.i = icmp eq i32 %i.vx, 0
  br i1 %.not195.i, label %bb.du, label %bb.ef, !llvm.loop !500

bb.du:                                            ; preds = %bb.dt
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 72
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !118
  %.not196.i = icmp eq ptr %i.vz, null
  br i1 %.not196.i, label %bb.dv, label %bb.ef, !llvm.loop !500

bb.dv:                                            ; preds = %bb.du
  %i.wa = load ptr, ptr %i.vu, align 8, !tbaa !88
  %i.wb = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.wa, ptr noundef nonnull @.str.304, i32 noundef %i.vr, i32 noundef 1) #32 ; 6 uses
  %.not.i.i174 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i174, label %.thread.i175, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !41
  switch i32 %i.wc, label %bb.dz [
    i32 6, label %bb.dx
    i32 2, label %bb.ea
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !80
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !83
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wb, i64 32
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.we, i32 noundef %i.wg, ptr noundef %i.wi)
  call void @freeReplyObject(ptr noundef nonnull %i.wb) #32
  br label %.thread.i175

.thread.i175:                                     ; preds = %bb.dv, %bb.dx
  %.not199.i = icmp eq ptr %i.vm, null
  br i1 %.not199.i, label %clusterManagerFixSlotsCoverage.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %.thread.i175
  call void @listRelease(ptr noundef nonnull %i.vm) #32
  br label %clusterManagerFixSlotsCoverage.exit.thread

bb.dz:                                            ; preds = %bb.dw
  call void @__assert_fail(ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.7, i32 noundef 6157, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerFixSlotsCoverage) #37
  unreachable

bb.ea:                                            ; preds = %bb.dw
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !33
  %.not200.i = icmp eq i64 %i.wk, 0
  br i1 %.not200.i, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.wl = call ptr @listAddNodeTail(ptr noundef %i.vm, ptr noundef nonnull %i.vu) #32 ; 0 uses
  %i.wm = load i64, ptr %i.vq, align 8, !tbaa !90
  %i.wn = icmp ugt i64 %i.wm, 1
  br i1 %i.wn, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.wo = call ptr @hi_sdscat(ptr noundef %.0139341.i, ptr noundef nonnull @.str.348) #32
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.1140.i = phi ptr [ %i.wo, %bb.ec ], [ %.0139341.i, %bb.eb ]
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !80
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !83
  %i.wt = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.1140.i, ptr noundef nonnull @.str.261, ptr noundef %i.wq, i32 noundef %i.ws) #32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ea
  %.2141.i = phi ptr [ %i.wt, %bb.ed ], [ %.0139341.i, %bb.ea ]
  call void @freeReplyObject(ptr noundef nonnull %i.wb) #32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.du, %bb.dt
  %.4143.i = phi ptr [ %.0139341.i, %bb.dt ], [ %.0139341.i, %bb.du ], [ %.2141.i, %bb.ee ] ; 2 uses
  %i.wu = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not194.i = icmp eq ptr %i.wu, null
  br i1 %.not194.i, label %.thread237.i, label %bb.dt

.thread237.i:                                     ; preds = %bb.ef, %bb.ds
  %.0139.lcssa.i = phi ptr [ %i.vn, %bb.ds ], [ %.4143.i, %bb.ef ]
  call void @hi_sdsfree(ptr noundef %.0139.lcssa.i) #32
  %i.wv = load ptr, ptr @clusterManagerUncoveredSlots, align 8, !tbaa !498
  %i.ww = call i32 @dictAdd(ptr noundef %i.wv, ptr noundef %i.vl, ptr noundef %i.vm) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.thread233.i

clusterManagerFixSlotsCoverage.exit.thread:       ; preds = %.thread.i175, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.fz

.thread233.i:                                     ; preds = %.thread237.i, %bb.dr
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %exitcond.not.i165 = icmp eq i64 %indvars.iv.next.i164, 16384
  br i1 %exitcond.not.i165, label %bb.eg, label %bb.dr, !llvm.loop !501

bb.eg:                                            ; preds = %.thread233.i
  %i.wx = call ptr @listCreate() #32              ; 6 uses
  %i.wy = call ptr @listCreate() #32              ; 6 uses
end_hunk_0
