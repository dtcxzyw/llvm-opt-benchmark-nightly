Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@rbuObjIterPrepareAll:bb.a
  %i.rt = load ptr, ptr %i.pd, align 8, !tbaa !1483
  %i.ru = sext i32 %.0120259.i to i64
  %i.rv = getelementptr inbounds [16 x i8], ptr %i.rt, i64 %i.ru ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !4103
  %i.rx = ptrtoint ptr %i.pf to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = trunc i64 %i.rz to i32
  %i.sb = add nsw i32 %.0120259.i, 1              ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  store i32 %i.sa, ptr %i.sc, align 8, !tbaa !4104
  %i.sd = sext i32 %.0124258.i to i64
  %i.se = getelementptr i8, ptr %i.oz, i64 %i.sd
  %.phi.trans.insert288.i = getelementptr i8, ptr %i.se, i64 1 ; 3 uses
  %.pre.i229 = load i8, ptr %.phi.trans.insert288.i, align 1, !tbaa !741
  %i.sf = icmp eq i8 %.pre.i229, 0
  br i1 %i.sf, label %rbuObjIterGetIndexWhere.exit.sink.split, label %bb.dm

bb.dm:                                            ; preds = %select.unfold.i
  %i.sg = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.phi.trans.insert288.i) #60
  %i.sh = add i64 %i.sg, 1                        ; 2 uses
  %i.si = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i.i158.i = icmp eq i32 %i.si, 0
  br i1 %.not.i.i158.i, label %sqlite3_malloc64.exit.i160.i, label %.thread228.i

sqlite3_malloc64.exit.i160.i:                     ; preds = %bb.dm
  %i.sj = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.sh), !inline_history !821 ; 3 uses
  %.not.i161.i = icmp eq ptr %i.sj, null
  br i1 %.not.i161.i, label %.thread228.i, label %.thread232.i

.thread232.i:                                     ; preds = %sqlite3_malloc64.exit.i160.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sj, ptr nonnull readonly align 1 %.phi.trans.insert288.i, i64 %i.sh, i1 false)
  br label %rbuObjIterGetIndexWhere.exit.sink.split

.thread224.i:                                     ; preds = %.thread178.i, %prepareAndCollectError.exit.i
  %.8173.ph.i = phi i32 [ %i.or, %prepareAndCollectError.exit.i ], [ 7, %.thread178.i ]
  %i.sk = tail call i32 @sqlite3_finalize(ptr noundef %i.op) ; 0 uses
  br label %rbuObjIterGetIndexWhere.exit.thread

.thread228.i:                                     ; preds = %sqlite3_realloc64.exit.i, %bb.cs, %sqlite3_malloc64.exit.i160.i, %bb.dm
  %.3123213.ph.i = phi i32 [ %i.sb, %bb.dm ], [ %i.sb, %sqlite3_malloc64.exit.i160.i ], [ %.0116260.i, %bb.cs ], [ %.0116260.i, %sqlite3_realloc64.exit.i ]
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i32 %.3123213.ph.i, ptr %i.sl, align 8, !tbaa !4105
  %i.sm = tail call i32 @sqlite3_finalize(ptr noundef %i.op) ; 0 uses
  br label %rbuObjIterGetIndexWhere.exit.thread

rbuObjIterGetIndexWhere.exit.thread:              ; preds = %.thread228.i, %bb.ck, %.thread224.i, %bb.cm
  %.9.i.ph = phi i32 [ %i.om, %bb.cm ], [ %.8173.ph.i, %.thread224.i ], [ %i.oi, %bb.ck ], [ 7, %.thread228.i ] ; 2 uses
  store i32 %.9.i.ph, ptr %i.nx, align 8, !tbaa !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  br label %.thread

rbuObjIterGetIndexWhere.exit.sink.split:          ; preds = %.loopexit.i, %bb.dk, %bb.dg, %bb.cq, %select.unfold.i, %.thread232.i
  %.sink = phi i32 [ %i.sb, %.thread232.i ], [ %i.sb, %select.unfold.i ], [ %.0120259.i, %bb.dg ], [ 0, %bb.cq ], [ %.0120259.i, %bb.dk ], [ %.2122.ph.i, %.loopexit.i ]
  %.3.i.ph = phi ptr [ %i.sj, %.thread232.i ], [ null, %select.unfold.i ], [ null, %bb.dg ], [ null, %bb.cq ], [ null, %bb.dk ], [ null, %.loopexit.i ]
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i32 %.sink, ptr %i.sn, align 8, !tbaa !4105
  br label %rbuObjIterGetIndexWhere.exit

rbuObjIterGetIndexWhere.exit:                     ; preds = %rbuObjIterGetIndexWhere.exit.sink.split, %bb.cn, %bb.co
  %.3.i = phi ptr [ null, %bb.co ], [ null, %bb.cn ], [ %.3.i.ph, %rbuObjIterGetIndexWhere.exit.sink.split ] ; 9 uses
  %i.so = tail call i32 @sqlite3_finalize(ptr noundef %i.op) ; 3 uses
  store i32 %i.so, ptr %i.nx, align 8, !tbaa !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %bb.dn, label %.thread

bb.dn:                                            ; preds = %rbuObjIterGetIndexWhere.exit
  %i.sq = load ptr, ptr %i.ok, align 8, !tbaa !1454
  %i.sr = load ptr, ptr %i.od, align 8, !tbaa !1443
  %i.ss = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2021, ptr noundef %i.sr)
  %i.st = call fastcc i32 @prepareFreeAndCollectError(ptr noundef %i.sq, ptr noundef %i.f, ptr noundef nonnull %i.oc, ptr noundef %i.ss) ; 2 uses
  %.pre.pre.i = load ptr, ptr %i.f, align 8, !tbaa !896 ; 9 uses
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %.lr.ph.i236, label %.thread

.lr.ph.i236:                                      ; preds = %bb.dn
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.do

bb.do:                                            ; preds = %select.unfold.i237, %.lr.ph.i236
  %.080120.i = phi ptr [ @.str.4, %.lr.ph.i236 ], [ @.str.890, %select.unfold.i237 ]
  %.081119.i = phi ptr [ @.str.4, %.lr.ph.i236 ], [ @.str.834, %select.unfold.i237 ] ; 4 uses
  %.082118.i = phi i32 [ 0, %.lr.ph.i236 ], [ %i.uw, %select.unfold.i237 ] ; 14 uses
  %.083117.i = phi ptr [ null, %.lr.ph.i236 ], [ %i.uo, %select.unfold.i237 ] ; 7 uses
  %.085116.i = phi ptr [ null, %.lr.ph.i236 ], [ %.186.i, %select.unfold.i237 ] ; 8 uses
  %.088115.i = phi ptr [ null, %.lr.ph.i236 ], [ %i.un, %select.unfold.i237 ] ; 7 uses
  %.090114.i = phi ptr [ null, %.lr.ph.i236 ], [ %.191.i, %select.unfold.i237 ] ; 8 uses
  %i.tb = tail call i32 @sqlite3_step(ptr noundef %.pre.pre.i)
  %.not178.i = icmp eq i32 %i.tb, 100
  br i1 %.not178.i, label %bb.dp, label %bb.eb

bb.dp:                                            ; preds = %bb.do
  %i.tc = tail call i32 @sqlite3_column_int(ptr noundef %.pre.pre.i, i32 noundef 1) ; 3 uses
  %i.td = tail call i32 @sqlite3_column_int(ptr noundef %.pre.pre.i, i32 noundef 3)
  %i.te = tail call ptr @sqlite3_column_text(ptr noundef %.pre.pre.i, i32 noundef 4) ; 3 uses
  %i.tf = icmp eq i32 %i.tc, -2
  br i1 %i.tf, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.tg = tail call i32 @sqlite3_column_int(ptr noundef %.pre.pre.i, i32 noundef 0)
  %i.th = load ptr, ptr %i.sz, align 8, !tbaa !1483
  %i.ti = sext i32 %i.tg to i64
  %i.tj = getelementptr inbounds [16 x i8], ptr %i.th, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !4104
  %i.tm = load ptr, ptr %i.tj, align 8, !tbaa !4103
  %i.tn = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2023, ptr noundef %.090114.i, ptr noundef nonnull %.081119.i, i32 noundef %i.tl, ptr noundef %i.tm, ptr noundef %i.te)
  br label %bb.dy

bb.dr:                                            ; preds = %bb.dp
  %i.to = icmp slt i32 %i.tc, 0
  br i1 %i.to, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.tp = load i32, ptr %i.sw, align 8, !tbaa !1453
  %i.tq = icmp eq i32 %i.tp, 2
  br i1 %i.tq, label %.preheader.i238, label %bb.dv

.preheader.i238:                                  ; preds = %bb.ds
  %i.tr = load ptr, ptr %i.sy, align 8, !tbaa !1456
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.preheader.i238
  %indvars.iv.i239 = phi i64 [ %indvars.iv.next.i240, %bb.dt ], [ 0, %.preheader.i238 ] ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %indvars.iv.i239
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !741
  %i.tu = icmp eq i8 %i.tt, 0
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i239, 1
  br i1 %i.tu, label %bb.dt, label %bb.du, !llvm.loop !4084

bb.du:                                            ; preds = %bb.dt
  %i.tv = load ptr, ptr %i.o, align 8, !tbaa !1452
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i239
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !747
  br label %bb.dx

bb.dv:                                            ; preds = %bb.ds
  %i.ty = load ptr, ptr %i.sx, align 8, !tbaa !1432
  %i.tz = icmp eq ptr %i.ty, null
  %.str.2005..str.2010.i = select i1 %i.tz, ptr @.str.2005, ptr @.str.2010
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dr
  %i.ua = load ptr, ptr %i.o, align 8, !tbaa !1452
  %i.ub = zext nneg i32 %i.tc to i64              ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %i.ub
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !747
  %i.ue = load ptr, ptr %i.sv, align 8, !tbaa !1481
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.ub
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !747
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %.178.i = phi ptr [ %i.ud, %bb.dw ], [ %i.tx, %bb.du ], [ %.str.2005..str.2010.i, %bb.dv ] ; 2 uses
  %.075.i = phi ptr [ %i.ug, %bb.dw ], [ @.str.40, %bb.du ], [ @.str.40, %bb.dv ]
  %i.uh = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2024, ptr noundef %.090114.i, ptr noundef nonnull %.081119.i, ptr noundef %.178.i, ptr noundef %i.te)
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dq
  %.191.i = phi ptr [ %i.tn, %bb.dq ], [ %i.uh, %bb.dx ] ; 3 uses
  %.279.i = phi ptr [ null, %bb.dq ], [ %.178.i, %bb.dx ] ; 3 uses
  %.176.i = phi ptr [ @.str.4, %bb.dq ], [ %.075.i, %bb.dx ]
  %i.ui = load i32, ptr %i.ta, align 8, !tbaa !1484
  %i.uj = icmp eq i32 %i.ui, 0
  br i1 %i.uj, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.uk = tail call i32 @sqlite3_column_int(ptr noundef %.pre.pre.i, i32 noundef 5)
  %.not95.i = icmp eq i32 %i.uk, 0
  br i1 %.not95.i, label %select.unfold.i237, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.not96.i = icmp eq i32 %i.td, 0
  %i.ul = select i1 %.not96.i, ptr @.str.4, ptr @.str.2025
  %i.um = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2026, ptr noundef %.085116.i, ptr noundef nonnull %.081119.i, i32 noundef %.082118.i, ptr noundef %.279.i, ptr noundef nonnull %i.ul)
  br label %select.unfold.i237

select.unfold.i237:                               ; preds = %bb.ea, %bb.dz
  %.186.i = phi ptr [ %i.um, %bb.ea ], [ %.085116.i, %bb.dz ] ; 3 uses
  %i.un = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2027, ptr noundef %.088115.i, ptr noundef nonnull %.081119.i, i32 noundef %.082118.i, ptr noundef %.279.i, ptr noundef %.176.i, ptr noundef %i.te) ; 3 uses
  %i.uo = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2028, ptr noundef %.083117.i, ptr noundef nonnull %.080120.i, i32 noundef %.082118.i, ptr noundef %.279.i) ; 3 uses
  %i.up = insertelement <4 x ptr> poison, ptr %.191.i, i64 0
  %i.uq = insertelement <4 x ptr> %i.up, ptr %.186.i, i64 1
  %i.ur = insertelement <4 x ptr> %i.uq, ptr %i.un, i64 2
  %i.us = insertelement <4 x ptr> %i.ur, ptr %i.uo, i64 3
  %.fr = freeze <4 x ptr> %i.us
  %i.ut = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.uu = bitcast <4 x i1> %i.ut to i4
  %i.uv = icmp eq i4 %i.uu, 0
  %i.uw = add nuw nsw i32 %.082118.i, 1           ; 2 uses
  br i1 %i.uv, label %bb.do, label %.thread

.thread:                                          ; preds = %select.unfold.i237, %rbuObjIterGetIndexWhere.exit.thread, %bb.dn, %rbuObjIterGetIndexWhere.exit
  %.3.i365.a = phi ptr [ %.3.i, %rbuObjIterGetIndexWhere.exit ], [ %.3.i, %bb.dn ], [ null, %rbuObjIterGetIndexWhere.exit.thread ], [ %.3.i, %select.unfold.i237 ]
  %.pre157.ph.i = phi ptr [ null, %rbuObjIterGetIndexWhere.exit ], [ %.pre.pre.i, %bb.dn ], [ null, %rbuObjIterGetIndexWhere.exit.thread ], [ %.pre.pre.i, %select.unfold.i237 ]
  %.090.lcssa.ph.i = phi ptr [ null, %rbuObjIterGetIndexWhere.exit ], [ null, %bb.dn ], [ null, %rbuObjIterGetIndexWhere.exit.thread ], [ %.191.i, %select.unfold.i237 ]
  %.088.lcssa.ph.i = phi ptr [ null, %rbuObjIterGetIndexWhere.exit ], [ null, %bb.dn ], [ null, %rbuObjIterGetIndexWhere.exit.thread ], [ %i.un, %select.unfold.i237 ]
  %.085.lcssa.ph.i = phi ptr [ null, %rbuObjIterGetIndexWhere.exit ], [ null, %bb.dn ], [ null, %rbuObjIterGetIndexWhere.exit.thread ], [ %.186.i, %select.unfold.i237 ]
  %.083.lcssa.ph.i = phi ptr [ null, %rbuObjIterGetIndexWhere.exit ], [ null, %bb.dn ], [ null, %rbuObjIterGetIndexWhere.exit.thread ], [ %i.uo, %select.unfold.i237 ]
  %.082.lcssa.ph.i = phi i32 [ 0, %rbuObjIterGetIndexWhere.exit ], [ 0, %bb.dn ], [ 0, %rbuObjIterGetIndexWhere.exit.thread ], [ %i.uw, %select.unfold.i237 ]
  %.1.lcssa.ph.i = phi i32 [ %i.so, %rbuObjIterGetIndexWhere.exit ], [ %i.st, %bb.dn ], [ %.9.i.ph, %rbuObjIterGetIndexWhere.exit.thread ], [ 7, %select.unfold.i237 ]
  %i.ux = tail call i32 @sqlite3_finalize(ptr noundef %.pre157.ph.i) ; 0 uses
  br label %bb.ec

bb.eb:                                            ; preds = %bb.do
  %i.uy = tail call i32 @sqlite3_finalize(ptr noundef %.pre.pre.i) ; 2 uses
  %.not.i233 = icmp eq i32 %i.uy, 0
  br i1 %.not.i233, label %rbuObjIterGetIndexCols.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.thread
  %.3.i365 = phi ptr [ %.3.i365.a, %.thread ], [ %.3.i, %bb.eb ]
  %i.uz = phi i32 [ %.1.lcssa.ph.i, %.thread ], [ %i.uy, %bb.eb ]
  %.090.lcssa166.i382 = phi ptr [ %.090.lcssa.ph.i, %.thread ], [ %.090114.i, %bb.eb ] ; 4 uses
  %.088.lcssa167.i381 = phi ptr [ %.088.lcssa.ph.i, %.thread ], [ %.088115.i, %bb.eb ] ; 4 uses
  %.085.lcssa168.i380 = phi ptr [ %.085.lcssa.ph.i, %.thread ], [ %.085116.i, %bb.eb ] ; 4 uses
  %.083.lcssa169.i379 = phi ptr [ %.083.lcssa.ph.i, %.thread ], [ %.083117.i, %bb.eb ] ; 4 uses
  %.082.lcssa170.i376 = phi i32 [ %.082.lcssa.ph.i, %.thread ], [ %.082118.i, %bb.eb ]
  %i.va = icmp eq ptr %.090.lcssa166.i382, null
  br i1 %i.va, label %sqlite3_free.exit.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vb = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i.i234 = icmp eq i32 %i.vb, 0
  br i1 %.not.i.i234, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vc = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i235 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i235, label %sqlite3_mutex_enter.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.vd(ptr noundef nonnull %i.vc) #59, !inline_history !4085
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.ef, %bb.ee
  %i.ve = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.vf = tail call i32 %i.ve(ptr noundef nonnull %.090.lcssa166.i382) #59, !inline_history !4086
  %i.vg = sext i32 %i.vf to i64
  %i.vh = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.vi = sub nsw i64 %i.vh, %i.vg
  store i64 %i.vi, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.vj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.vk = add nsw i64 %i.vj, -1
  store i64 %i.vk, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.vl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.vl(ptr noundef nonnull %.090.lcssa166.i382) #59, !inline_history !4087
  %i.vm = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.vm, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.eg

bb.eg:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.vn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.vn(ptr noundef nonnull %i.vm) #59, !inline_history !4088
  br label %sqlite3_free.exit.i

bb.eh:                                            ; preds = %bb.ed
  %i.vo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.vo(ptr noundef nonnull %.090.lcssa166.i382) #59, !inline_history !4087
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.eh, %bb.eg, %sqlite3_mutex_enter.exit.i.i, %bb.ec
  %i.vp = icmp eq ptr %.088.lcssa167.i381, null
  br i1 %i.vp, label %sqlite3_free.exit102.i, label %bb.ei

bb.ei:                                            ; preds = %sqlite3_free.exit.i
  %i.vq = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i98.i = icmp eq i32 %i.vq, 0
  br i1 %.not.i98.i, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.vr = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i99.i = icmp eq ptr %i.vr, null
  br i1 %.not.i.i99.i, label %sqlite3_mutex_enter.exit.i100.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.vs(ptr noundef nonnull %i.vr) #59, !inline_history !4085
  br label %sqlite3_mutex_enter.exit.i100.i

sqlite3_mutex_enter.exit.i100.i:                  ; preds = %bb.ek, %bb.ej
  %i.vt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.vu = tail call i32 %i.vt(ptr noundef nonnull %.088.lcssa167.i381) #59, !inline_history !4086
  %i.vv = sext i32 %i.vu to i64
  %i.vw = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.vx = sub nsw i64 %i.vw, %i.vv
  store i64 %i.vx, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.vy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.vz = add nsw i64 %i.vy, -1
  store i64 %i.vz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.wa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.wa(ptr noundef nonnull %.088.lcssa167.i381) #59, !inline_history !4087
  %i.wb = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i101.i = icmp eq ptr %i.wb, null
  br i1 %.not.i4.i101.i, label %sqlite3_free.exit102.i, label %bb.el

bb.el:                                            ; preds = %sqlite3_mutex_enter.exit.i100.i
  %i.wc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.wc(ptr noundef nonnull %i.wb) #59, !inline_history !4088
  br label %sqlite3_free.exit102.i

bb.em:                                            ; preds = %bb.ei
  %i.wd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.wd(ptr noundef nonnull %.088.lcssa167.i381) #59, !inline_history !4087
  br label %sqlite3_free.exit102.i

sqlite3_free.exit102.i:                           ; preds = %bb.em, %bb.el, %sqlite3_mutex_enter.exit.i100.i, %sqlite3_free.exit.i
  %i.we = icmp eq ptr %.085.lcssa168.i380, null
  br i1 %i.we, label %sqlite3_free.exit107.i, label %bb.en

bb.en:                                            ; preds = %sqlite3_free.exit102.i
  %i.wf = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i103.i = icmp eq i32 %i.wf, 0
  br i1 %.not.i103.i, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wg = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i104.i = icmp eq ptr %i.wg, null
  br i1 %.not.i.i104.i, label %sqlite3_mutex_enter.exit.i105.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.wh(ptr noundef nonnull %i.wg) #59, !inline_history !4085
  br label %sqlite3_mutex_enter.exit.i105.i

sqlite3_mutex_enter.exit.i105.i:                  ; preds = %bb.ep, %bb.eo
  %i.wi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.wj = tail call i32 %i.wi(ptr noundef nonnull %.085.lcssa168.i380) #59, !inline_history !4086
  %i.wk = sext i32 %i.wj to i64
  %i.wl = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.wm = sub nsw i64 %i.wl, %i.wk
  store i64 %i.wm, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.wn = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.wo = add nsw i64 %i.wn, -1
  store i64 %i.wo, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.wp(ptr noundef nonnull %.085.lcssa168.i380) #59, !inline_history !4087
  %i.wq = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i106.i = icmp eq ptr %i.wq, null
  br i1 %.not.i4.i106.i, label %sqlite3_free.exit107.i, label %bb.eq

bb.eq:                                            ; preds = %sqlite3_mutex_enter.exit.i105.i
  %i.wr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.wr(ptr noundef nonnull %i.wq) #59, !inline_history !4088
  br label %sqlite3_free.exit107.i

bb.er:                                            ; preds = %bb.en
  %i.ws = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ws(ptr noundef nonnull %.085.lcssa168.i380) #59, !inline_history !4087
  br label %sqlite3_free.exit107.i

sqlite3_free.exit107.i:                           ; preds = %bb.er, %bb.eq, %sqlite3_mutex_enter.exit.i105.i, %sqlite3_free.exit102.i
  %i.wt = icmp eq ptr %.083.lcssa169.i379, null
  br i1 %i.wt, label %rbuObjIterGetIndexCols.exit.thread, label %bb.es

bb.es:                                            ; preds = %sqlite3_free.exit107.i
  %i.wu = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i108.i = icmp eq i32 %i.wu, 0
  br i1 %.not.i108.i, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.wv = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i109.i = icmp eq ptr %i.wv, null
  br i1 %.not.i.i109.i, label %sqlite3_mutex_enter.exit.i110.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ww = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.ww(ptr noundef nonnull %i.wv) #59, !inline_history !4085
  br label %sqlite3_mutex_enter.exit.i110.i

sqlite3_mutex_enter.exit.i110.i:                  ; preds = %bb.eu, %bb.et
  %i.wx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.wy = tail call i32 %i.wx(ptr noundef nonnull %.083.lcssa169.i379) #59, !inline_history !4086
  %i.wz = sext i32 %i.wy to i64
  %i.xa = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.xb = sub nsw i64 %i.xa, %i.wz
  store i64 %i.xb, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.xc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.xd = add nsw i64 %i.xc, -1
  store i64 %i.xd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.xe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.xe(ptr noundef nonnull %.083.lcssa169.i379) #59, !inline_history !4087
  %i.xf = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i111.i = icmp eq ptr %i.xf, null
  br i1 %.not.i4.i111.i, label %rbuObjIterGetIndexCols.exit.thread, label %bb.ev

bb.ev:                                            ; preds = %sqlite3_mutex_enter.exit.i110.i
  %i.xg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.xg(ptr noundef nonnull %i.xf) #59, !inline_history !4088
  br label %rbuObjIterGetIndexCols.exit.thread

bb.ew:                                            ; preds = %bb.es
  %i.xh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.xh(ptr noundef nonnull %.083.lcssa169.i379) #59, !inline_history !4087
  br label %rbuObjIterGetIndexCols.exit.thread

rbuObjIterGetIndexCols.exit.thread:               ; preds = %sqlite3_free.exit107.i, %sqlite3_mutex_enter.exit.i110.i, %bb.ev, %bb.ew
  store i32 %i.uz, ptr %i.nx, align 8, !tbaa !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %rbuObjIterGetBindlist.exit

rbuObjIterGetIndexCols.exit:                      ; preds = %bb.eb
  %.pre473 = load i32, ptr %i.nx, align 8, !tbaa !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  %i.xi = shl nuw i32 %.082118.i, 1
  %i.xj = or disjoint i32 %i.xi, 1
  %i.xk = zext i32 %i.xj to i64                   ; 2 uses
  %i.xl = icmp eq i32 %.pre473, 0
  br i1 %i.xl, label %bb.ex, label %rbuObjIterGetBindlist.exit

bb.ex:                                            ; preds = %rbuObjIterGetIndexCols.exit
  %i.xm = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i.i.i241 = icmp eq i32 %i.xm, 0
  br i1 %.not.i.i.i241, label %sqlite3_malloc64.exit.i.i243, label %sqlite3_malloc64.exit.thread.i.i242

sqlite3_malloc64.exit.i.i243:                     ; preds = %bb.ex
  %i.xn = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -4294967295, 4294967296) %i.xk), !inline_history !821 ; 7 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %sqlite3_malloc64.exit.thread.i.i242, label %rbuMalloc.exit.i

sqlite3_malloc64.exit.thread.i.i242:              ; preds = %sqlite3_malloc64.exit.i.i243, %bb.ex
  store i32 7, ptr %i.nx, align 8, !tbaa !1434
  br label %rbuObjIterGetBindlist.exit

rbuMalloc.exit.i:                                 ; preds = %sqlite3_malloc64.exit.i.i243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.xn, i8 0, i64 range(i64 -4294967295, 4294967296) %i.xk, i1 false)
  %.not636 = icmp eq i32 %.082118.i, 0
  br i1 %.not636, label %rbuObjIterGetBindlist.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %rbuMalloc.exit.i
  %i.xp = zext nneg i32 %.082118.i to i64         ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.082118.i, 8
  br i1 %min.iters.check, label %.lr.ph.i244.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.xp, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.xp, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.xq = shl nuw nsw i64 %index, 1
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xq
  %i.xs = add nuw nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.xt = icmp eq <8 x i64> %i.xs, %broadcast.splat
  %i.xu = select <8 x i1> %i.xt, <8 x i8> zeroinitializer, <8 x i8> splat (i8 44)
  %interleaved.vec = shufflevector <8 x i8> splat (i8 63), <8 x i8> %i.xu, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.xr, align 1, !tbaa !741
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.xv = icmp eq i64 %index.next, %n.vec
  br i1 %i.xv, label %middle.block, label %vector.body, !llvm.loop !4089

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.xp
  br i1 %cmp.n, label %rbuObjIterGetBindlist.exit, label %.lr.ph.i244.preheader

.lr.ph.i244.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i245.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.lr.ph.i244.preheader, %.lr.ph.i244
  %indvars.iv.i245 = phi i64 [ %indvars.iv.next.i246, %.lr.ph.i244 ], [ %indvars.iv.i245.ph, %.lr.ph.i244.preheader ] ; 2 uses
  %i.xw = shl nuw nsw i64 %indvars.iv.i245, 1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xw ; 2 uses
  store i8 63, ptr %i.xx, align 1, !tbaa !741
  %indvars.iv.next.i246 = add nuw nsw i64 %indvars.iv.i245, 1 ; 2 uses
  %.not.i247 = icmp eq i64 %indvars.iv.next.i246, %i.xp ; 2 uses
  %i.xy = select i1 %.not.i247, i8 0, i8 44
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  store i8 %i.xy, ptr %i.xz, align 1, !tbaa !741
  br i1 %.not.i247, label %rbuObjIterGetBindlist.exit, label %.lr.ph.i244, !llvm.loop !4090

rbuObjIterGetBindlist.exit:                       ; preds = %.lr.ph.i244, %middle.block, %rbuObjIterGetIndexCols.exit.thread, %rbuObjIterGetIndexCols.exit, %sqlite3_malloc64.exit.thread.i.i242, %rbuMalloc.exit.i
  %.184.i597 = phi ptr [ %.083117.i, %rbuObjIterGetIndexCols.exit ], [ %.083117.i, %sqlite3_malloc64.exit.thread.i.i242 ], [ %.083117.i, %rbuMalloc.exit.i ], [ null, %rbuObjIterGetIndexCols.exit.thread ], [ %.083117.i, %middle.block ], [ %.083117.i, %.lr.ph.i244 ] ; 5 uses
  %.287.i596 = phi ptr [ %.085116.i, %rbuObjIterGetIndexCols.exit ], [ %.085116.i, %sqlite3_malloc64.exit.thread.i.i242 ], [ %.085116.i, %rbuMalloc.exit.i ], [ null, %rbuObjIterGetIndexCols.exit.thread ], [ %.085116.i, %middle.block ], [ %.085116.i, %.lr.ph.i244 ] ; 5 uses
  %.189.i595 = phi ptr [ %.088115.i, %rbuObjIterGetIndexCols.exit ], [ %.088115.i, %sqlite3_malloc64.exit.thread.i.i242 ], [ %.088115.i, %rbuMalloc.exit.i ], [ null, %rbuObjIterGetIndexCols.exit.thread ], [ %.088115.i, %middle.block ], [ %.088115.i, %.lr.ph.i244 ] ; 5 uses
  %.292.i593 = phi ptr [ %.090114.i, %rbuObjIterGetIndexCols.exit ], [ %.090114.i, %sqlite3_malloc64.exit.thread.i.i242 ], [ %.090114.i, %rbuMalloc.exit.i ], [ null, %rbuObjIterGetIndexCols.exit.thread ], [ %.090114.i, %middle.block ], [ %.090114.i, %.lr.ph.i244 ] ; 11 uses
  %.082.lcssa170179.i576 = phi i32 [ %.082118.i, %rbuObjIterGetIndexCols.exit ], [ %.082118.i, %sqlite3_malloc64.exit.thread.i.i242 ], [ %.082118.i, %rbuMalloc.exit.i ], [ %.082.lcssa170.i376, %rbuObjIterGetIndexCols.exit.thread ], [ %.082118.i, %middle.block ], [ %.082118.i, %.lr.ph.i244 ]
  %.3.i364574 = phi ptr [ %.3.i, %rbuObjIterGetIndexCols.exit ], [ %.3.i, %sqlite3_malloc64.exit.thread.i.i242 ], [ %.3.i, %rbuMalloc.exit.i ], [ %.3.i365, %rbuObjIterGetIndexCols.exit.thread ], [ %.3.i, %middle.block ], [ %.3.i, %.lr.ph.i244 ] ; 10 uses
  %.0.i17.i = phi ptr [ null, %rbuObjIterGetIndexCols.exit ], [ null, %sqlite3_malloc64.exit.thread.i.i242 ], [ %i.xn, %rbuMalloc.exit.i ], [ null, %rbuObjIterGetIndexCols.exit.thread ], [ %i.xn, %middle.block ], [ %i.xn, %.lr.ph.i244 ] ; 5 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !1454
  %i.yc = tail call i32 (i32, ...) @sqlite3_test_control(i32 noundef 25, ptr noundef %i.yb, ptr noundef nonnull @.str.404, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.yd = load ptr, ptr %i.ya, align 8, !tbaa !1454
  %i.ye = tail call i32 (i32, ...) @sqlite3_test_control(i32 noundef 25, ptr noundef %i.yd, ptr noundef nonnull @.str.404, i32 noundef 1, i32 noundef %i.ob) ; 0 uses
  %i.yf = load ptr, ptr %i.ya, align 8, !tbaa !1454
  %i.yg = tail call i32 (ptr, ptr, ptr, ...) @rbuMPrintfExec(ptr noundef %0, ptr noundef %i.yf, ptr noundef nonnull @.str.1987, ptr noundef %i.oh, ptr noundef %.189.i595, ptr noundef %.287.i596) ; 0 uses
  %i.yh = load ptr, ptr %i.ya, align 8, !tbaa !1454
  %i.yi = tail call i32 (i32, ...) @sqlite3_test_control(i32 noundef 25, ptr noundef %i.yh, ptr noundef nonnull @.str.404, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %.082.lcssa170179.i576, ptr %i.yj, align 8, !tbaa !1455
  %i.yk = load i32, ptr %i.nx, align 8, !tbaa !1434 ; 2 uses
  %i.yl = icmp eq i32 %i.yk, 0
  br i1 %i.yl, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %rbuObjIterGetBindlist.exit
  %i.ym = load ptr, ptr %i.ya, align 8, !tbaa !1454
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.yo = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1988, ptr noundef %i.oh, ptr noundef %.0.i17.i)
  %i.yp = tail call fastcc i32 @prepareFreeAndCollectError(ptr noundef %i.ym, ptr noundef %i.yn, ptr noundef nonnull %i.oc, ptr noundef %i.yo) ; 2 uses
  store i32 %i.yp, ptr %i.nx, align 8, !tbaa !1434
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %rbuObjIterGetBindlist.exit
  %.pr = phi i32 [ %i.yp, %bb.ey ], [ %i.yk, %rbuObjIterGetBindlist.exit ] ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !1432
  %.not220 = icmp eq ptr %i.yr, null
  br i1 %.not220, label %thread-pre-split, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ys = icmp eq i32 %.pr, 0
  br i1 %i.ys, label %bb.fb, label %sqlite3_free.exit

bb.fb:                                            ; preds = %bb.fa
  %i.yt = load ptr, ptr %i.ya, align 8, !tbaa !1454
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.yv = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1989, ptr noundef %i.oh, ptr noundef %.184.i597)
  %i.yw = tail call fastcc i32 @prepareFreeAndCollectError(ptr noundef %i.yt, ptr noundef %i.yu, ptr noundef nonnull %i.oc, ptr noundef %i.yv) ; 2 uses
  store i32 %i.yw, ptr %i.nx, align 8, !tbaa !1434
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ez, %bb.fb
  %i.yx = phi i32 [ %i.yw, %bb.fb ], [ %.pr, %bb.ez ]
  %i.yy = icmp eq i32 %i.yx, 0
  br i1 %i.yy, label %bb.fc, label %sqlite3_free.exit

bb.fc:                                            ; preds = %thread-pre-split
  %i.yz = load ptr, ptr %i.yq, align 8, !tbaa !1432
  %i.za = icmp eq ptr %i.yz, null
  br i1 %i.za, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.zb = tail call fastcc ptr @rbuVacuumIndexStart(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not222 = icmp eq ptr %i.zb, null
  br i1 %.not222, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @sqlite3_free(ptr noundef %.0198)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff, %bb.fd
  %.1199 = phi ptr [ null, %bb.ff ], [ %.0198, %bb.fe ], [ %.0198, %bb.fd ] ; 2 uses
  %.0196 = phi ptr [ %i.zb, %bb.ff ], [ null, %bb.fe ], [ null, %bb.fd ] ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !1439
  %.not223 = icmp eq ptr %.0196, null
  %.not224 = icmp eq ptr %.3.i364574, null
  %i.ze = select i1 %.not224, ptr @.str.1991, ptr @.str.1566
  %i.zf = select i1 %.not223, ptr @.str.4, ptr %i.ze
  %i.zg = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1990, ptr noundef %.292.i593, ptr noundef %i.zd, ptr noundef %.3.i364574, ptr noundef nonnull %i.zf, ptr noundef %.0196, ptr noundef %.292.i593, ptr noundef %.1199)
  tail call void @sqlite3_free(ptr noundef %.0196)
  br label %bb.fk

bb.fh:                                            ; preds = %bb.fc
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !1453
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !1439 ; 3 uses
  switch i32 %i.zi, label %bb.fj [
    i32 3, label %bb.fi
    i32 1, label %bb.fi
  ]

bb.fi:                                            ; preds = %bb.fh, %bb.fh
  %i.zm = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1992, ptr noundef %.292.i593, ptr noundef nonnull %i.zj, ptr noundef %i.zl, ptr noundef %.3.i364574, ptr noundef %.292.i593, ptr noundef %.0198)
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %.not221 = icmp eq ptr %.3.i364574, null
  %i.zn = select i1 %.not221, ptr @.str.1991, ptr @.str.1566
  %i.zo = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1993, ptr noundef %.292.i593, ptr noundef nonnull %i.zj, ptr noundef %i.zl, ptr noundef %.3.i364574, ptr noundef %.292.i593, ptr noundef %i.zl, ptr noundef %.3.i364574, ptr noundef nonnull %i.zn, ptr noundef %.292.i593, ptr noundef %.0198)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fj, %bb.fg
  %.2 = phi ptr [ %.1199, %bb.fg ], [ %.0198, %bb.fi ], [ %.0198, %bb.fj ] ; 5 uses
  %.0197 = phi ptr [ %i.zg, %bb.fg ], [ %i.zm, %bb.fi ], [ %i.zo, %bb.fj ] ; 5 uses
  %i.zp = load i32, ptr %i.nx, align 8, !tbaa !1434
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !1438
  %i.zt = tail call fastcc i32 @prepareFreeAndCollectError(ptr noundef %i.zs, ptr noundef %i.l, ptr noundef nonnull %i.oc, ptr noundef %.0197)
  store i32 %i.zt, ptr %i.nx, align 8, !tbaa !1434
  br label %sqlite3_free.exit

bb.fm:                                            ; preds = %bb.fk
  %i.zu = icmp eq ptr %.0197, null
  br i1 %i.zu, label %sqlite3_free.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zv = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i248 = icmp eq i32 %i.zv, 0
  br i1 %.not.i248, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.zw = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i249 = icmp eq ptr %i.zw, null
  br i1 %.not.i.i249, label %sqlite3_mutex_enter.exit.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.zx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.zx(ptr noundef nonnull %i.zw) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.fp, %bb.fo
  %i.zy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.zz = tail call i32 %i.zy(ptr noundef nonnull %.0197) #59, !inline_history !13
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aac = sub nsw i64 %i.aab, %i.aaa
  store i64 %i.aac, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aad = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.aae = add nsw i64 %i.aad, -1
  store i64 %i.aae, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.aaf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.aaf(ptr noundef nonnull %.0197) #59, !inline_history !755
  %i.aag = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.aag, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.fq

bb.fq:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.aah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.aah(ptr noundef nonnull %i.aag) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.fr:                                            ; preds = %bb.fn
  %i.aai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.aai(ptr noundef nonnull %.0197) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.fa, %bb.fr, %bb.fq, %sqlite3_mutex_enter.exit.i, %bb.fm, %bb.fl, %thread-pre-split
  %.3 = phi ptr [ %.0198, %thread-pre-split ], [ %.2, %bb.fr ], [ %.2, %bb.fl ], [ %.2, %bb.fm ], [ %.2, %sqlite3_mutex_enter.exit.i ], [ %.2, %bb.fq ], [ %.0198, %bb.fa ] ; 4 uses
  %i.aaj = icmp eq ptr %.189.i595, null
  br i1 %i.aaj, label %sqlite3_free.exit254, label %bb.fs

bb.fs:                                            ; preds = %sqlite3_free.exit
  %i.aak = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i250 = icmp eq i32 %i.aak, 0
  br i1 %.not.i250, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aal = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i251 = icmp eq ptr %i.aal, null
  br i1 %.not.i.i251, label %sqlite3_mutex_enter.exit.i252, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aam = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.aam(ptr noundef nonnull %i.aal) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i252

sqlite3_mutex_enter.exit.i252:                    ; preds = %bb.fu, %bb.ft
  %i.aan = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.aao = tail call i32 %i.aan(ptr noundef nonnull %.189.i595) #59, !inline_history !13
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aar = sub nsw i64 %i.aaq, %i.aap
  store i64 %i.aar, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aas = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.aat = add nsw i64 %i.aas, -1
  store i64 %i.aat, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.aau = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.aau(ptr noundef nonnull %.189.i595) #59, !inline_history !755
  %i.aav = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i253 = icmp eq ptr %i.aav, null
  br i1 %.not.i4.i253, label %sqlite3_free.exit254, label %bb.fv

bb.fv:                                            ; preds = %sqlite3_mutex_enter.exit.i252
  %i.aaw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.aaw(ptr noundef nonnull %i.aav) #59, !inline_history !756
  br label %sqlite3_free.exit254

bb.fw:                                            ; preds = %bb.fs
  %i.aax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.aax(ptr noundef nonnull %.189.i595) #59, !inline_history !755
  br label %sqlite3_free.exit254

sqlite3_free.exit254:                             ; preds = %sqlite3_free.exit, %sqlite3_mutex_enter.exit.i252, %bb.fv, %bb.fw
  %i.aay = icmp eq ptr %.287.i596, null
  br i1 %i.aay, label %sqlite3_free.exit259, label %bb.fx

bb.fx:                                            ; preds = %sqlite3_free.exit254
  %i.aaz = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i255 = icmp eq i32 %i.aaz, 0
  br i1 %.not.i255, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aba = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i256 = icmp eq ptr %i.aba, null
  br i1 %.not.i.i256, label %sqlite3_mutex_enter.exit.i257, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.abb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.abb(ptr noundef nonnull %i.aba) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i257

sqlite3_mutex_enter.exit.i257:                    ; preds = %bb.fz, %bb.fy
  %i.abc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.abd = tail call i32 %i.abc(ptr noundef nonnull %.287.i596) #59, !inline_history !13
  %i.abe = sext i32 %i.abd to i64
  %i.abf = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.abg = sub nsw i64 %i.abf, %i.abe
  store i64 %i.abg, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.abh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.abi = add nsw i64 %i.abh, -1
  store i64 %i.abi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.abj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.abj(ptr noundef nonnull %.287.i596) #59, !inline_history !755
  %i.abk = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i258 = icmp eq ptr %i.abk, null
  br i1 %.not.i4.i258, label %sqlite3_free.exit259, label %bb.ga

bb.ga:                                            ; preds = %sqlite3_mutex_enter.exit.i257
  %i.abl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.abl(ptr noundef nonnull %i.abk) #59, !inline_history !756
  br label %sqlite3_free.exit259

bb.gb:                                            ; preds = %bb.fx
  %i.abm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.abm(ptr noundef nonnull %.287.i596) #59, !inline_history !755
  br label %sqlite3_free.exit259

sqlite3_free.exit259:                             ; preds = %sqlite3_free.exit254, %sqlite3_mutex_enter.exit.i257, %bb.ga, %bb.gb
  %i.abn = icmp eq ptr %.184.i597, null
  br i1 %i.abn, label %sqlite3_free.exit264, label %bb.gc

bb.gc:                                            ; preds = %sqlite3_free.exit259
  %i.abo = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i260 = icmp eq i32 %i.abo, 0
  br i1 %.not.i260, label %bb.gg, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.abp = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.abp, null
  br i1 %.not.i.i261, label %sqlite3_mutex_enter.exit.i262, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.abq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.abq(ptr noundef nonnull %i.abp) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i262

sqlite3_mutex_enter.exit.i262:                    ; preds = %bb.ge, %bb.gd
  %i.abr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.abs = tail call i32 %i.abr(ptr noundef nonnull %.184.i597) #59, !inline_history !13
  %i.abt = sext i32 %i.abs to i64
  %i.abu = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.abv = sub nsw i64 %i.abu, %i.abt
  store i64 %i.abv, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.abw = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.abx = add nsw i64 %i.abw, -1
  store i64 %i.abx, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.aby = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.aby(ptr noundef nonnull %.184.i597) #59, !inline_history !755
  %i.abz = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i263 = icmp eq ptr %i.abz, null
  br i1 %.not.i4.i263, label %sqlite3_free.exit264, label %bb.gf

bb.gf:                                            ; preds = %sqlite3_mutex_enter.exit.i262
  %i.aca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.aca(ptr noundef nonnull %i.abz) #59, !inline_history !756
  br label %sqlite3_free.exit264

bb.gg:                                            ; preds = %bb.gc
  %i.acb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.acb(ptr noundef nonnull %.184.i597) #59, !inline_history !755
  br label %sqlite3_free.exit264

sqlite3_free.exit264:                             ; preds = %sqlite3_free.exit259, %sqlite3_mutex_enter.exit.i262, %bb.gf, %bb.gg
  %i.acc = icmp eq ptr %.0.i17.i, null
  br i1 %i.acc, label %sqlite3_free.exit269, label %bb.gh

bb.gh:                                            ; preds = %sqlite3_free.exit264
  %i.acd = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i265 = icmp eq i32 %i.acd, 0
  br i1 %.not.i265, label %bb.gl, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ace = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i266 = icmp eq ptr %i.ace, null
  br i1 %.not.i.i266, label %sqlite3_mutex_enter.exit.i267, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.acf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.acf(ptr noundef nonnull %i.ace) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i267

sqlite3_mutex_enter.exit.i267:                    ; preds = %bb.gj, %bb.gi
  %i.acg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ach = tail call i32 %i.acg(ptr noundef nonnull %.0.i17.i) #59, !inline_history !13
  %i.aci = sext i32 %i.ach to i64
  %i.acj = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ack = sub nsw i64 %i.acj, %i.aci
  store i64 %i.ack, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.acl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.acm = add nsw i64 %i.acl, -1
  store i64 %i.acm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.acn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.acn(ptr noundef nonnull %.0.i17.i) #59, !inline_history !755
  %i.aco = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i268 = icmp eq ptr %i.aco, null
  br i1 %.not.i4.i268, label %sqlite3_free.exit269, label %bb.gk

bb.gk:                                            ; preds = %sqlite3_mutex_enter.exit.i267
  %i.acp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.acp(ptr noundef nonnull %i.aco) #59, !inline_history !756
  br label %sqlite3_free.exit269

bb.gl:                                            ; preds = %bb.gh
  %i.acq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.acq(ptr noundef nonnull %.0.i17.i) #59, !inline_history !755
  br label %sqlite3_free.exit269

sqlite3_free.exit269:                             ; preds = %sqlite3_free.exit264, %sqlite3_mutex_enter.exit.i267, %bb.gk, %bb.gl
  %i.acr = icmp eq ptr %.3.i364574, null
  br i1 %i.acr, label %sqlite3_free.exit274, label %bb.gm

bb.gm:                                            ; preds = %sqlite3_free.exit269
  %i.acs = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i270 = icmp eq i32 %i.acs, 0
  br i1 %.not.i270, label %bb.gq, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.act = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i271 = icmp eq ptr %i.act, null
  br i1 %.not.i.i271, label %sqlite3_mutex_enter.exit.i272, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.acu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.acu(ptr noundef nonnull %i.act) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i272

sqlite3_mutex_enter.exit.i272:                    ; preds = %bb.go, %bb.gn
  %i.acv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.acw = tail call i32 %i.acv(ptr noundef nonnull %.3.i364574) #59, !inline_history !13
  %i.acx = sext i32 %i.acw to i64
  %i.acy = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.acz = sub nsw i64 %i.acy, %i.acx
  store i64 %i.acz, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ada = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.adb = add nsw i64 %i.ada, -1
  store i64 %i.adb, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.adc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.adc(ptr noundef nonnull %.3.i364574) #59, !inline_history !755
  %i.add = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i273 = icmp eq ptr %i.add, null
  br i1 %.not.i4.i273, label %sqlite3_free.exit274, label %bb.gp

bb.gp:                                            ; preds = %sqlite3_mutex_enter.exit.i272
  %i.ade = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ade(ptr noundef nonnull %i.add) #59, !inline_history !756
  br label %sqlite3_free.exit274

bb.gq:                                            ; preds = %bb.gm
  %i.adf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.adf(ptr noundef nonnull %.3.i364574) #59, !inline_history !755
  br label %sqlite3_free.exit274

bb.gr:                                            ; preds = %bb.cj
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 12 uses
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !1453
  switch i32 %i.adh, label %.fold.split [
    i32 5, label %bb.gt
    i32 1, label %bb.gt
    i32 3, label %bb.gs
  ]

bb.gs:                                            ; preds = %bb.gr
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !1432
  %i.adk = icmp eq ptr %i.adj, null
  br label %bb.gt

.fold.split:                                      ; preds = %bb.gr
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gr, %bb.gr, %.fold.split, %bb.gs
  %i.adl = phi i1 [ true, %bb.gr ], [ true, %bb.gr ], [ %i.adk, %bb.gs ], [ false, %.fold.split ] ; 4 uses
  %i.adm = zext i1 %i.adl to i32                  ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !1435 ; 6 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !1450
  %i.adr = add nsw i32 %i.adq, %i.adm             ; 4 uses
  %i.ads = sext i32 %i.adr to i64
  %i.adt = shl nsw i64 %i.ads, 1
  %i.adu = or disjoint i64 %i.adt, 1              ; 2 uses
  %i.adv = load i32, ptr %i.nx, align 8, !tbaa !1434
  %i.adw = icmp eq i32 %i.adv, 0
  br i1 %i.adw, label %bb.gu, label %rbuObjIterGetBindlist.exit285

bb.gu:                                            ; preds = %bb.gt
  %i.adx = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i.i.i276 = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i.i276, label %sqlite3_malloc64.exit.i.i278, label %sqlite3_malloc64.exit.thread.i.i277

sqlite3_malloc64.exit.i.i278:                     ; preds = %bb.gu
  %i.ady = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -4294967295, 4294967296) %i.adu), !inline_history !821 ; 7 uses
  %i.adz = icmp eq ptr %i.ady, null
  br i1 %i.adz, label %sqlite3_malloc64.exit.thread.i.i277, label %rbuMalloc.exit.i279

sqlite3_malloc64.exit.thread.i.i277:              ; preds = %sqlite3_malloc64.exit.i.i278, %bb.gu
  store i32 7, ptr %i.nx, align 8, !tbaa !1434
  br label %rbuObjIterGetBindlist.exit285

rbuMalloc.exit.i279:                              ; preds = %sqlite3_malloc64.exit.i.i278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ady, i8 0, i64 range(i64 -4294967295, 4294967296) %i.adu, i1 false)
  %i.aea = icmp sgt i32 %i.adr, 0
  br i1 %i.aea, label %.lr.ph.preheader.i280, label %rbuObjIterGetBindlist.exit285

.lr.ph.preheader.i280:                            ; preds = %rbuMalloc.exit.i279
  %i.aeb = zext nneg i32 %i.adr to i64            ; 4 uses
  %min.iters.check675 = icmp ult i32 %i.adr, 8
  br i1 %min.iters.check675, label %.lr.ph.i281.preheader, label %vector.ph676

vector.ph676:                                     ; preds = %.lr.ph.preheader.i280
  %n.vec677 = and i64 %i.aeb, 2147483640          ; 3 uses
  %broadcast.splatinsert678 = insertelement <8 x i64> poison, i64 %i.aeb, i64 0
  %broadcast.splat679 = shufflevector <8 x i64> %broadcast.splatinsert678, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph676
  %index681 = phi i64 [ 0, %vector.ph676 ], [ %index.next684, %vector.body680 ] ; 2 uses
  %vec.ind682 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph676 ], [ %vec.ind.next685, %vector.body680 ] ; 2 uses
  %i.aec = shl nuw nsw i64 %index681, 1
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.aec
  %i.aee = add nuw nsw <8 x i64> %vec.ind682, splat (i64 1)
  %i.aef = icmp eq <8 x i64> %i.aee, %broadcast.splat679
  %i.aeg = select <8 x i1> %i.aef, <8 x i8> zeroinitializer, <8 x i8> splat (i8 44)
  %interleaved.vec683 = shufflevector <8 x i8> splat (i8 63), <8 x i8> %i.aeg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec683, ptr %i.aed, align 1, !tbaa !741
  %index.next684 = add nuw i64 %index681, 8       ; 2 uses
  %vec.ind.next685 = add nuw nsw <8 x i64> %vec.ind682, splat (i64 8)
  %i.aeh = icmp eq i64 %index.next684, %n.vec677
  br i1 %i.aeh, label %middle.block686, label %vector.body680, !llvm.loop !4091

middle.block686:                                  ; preds = %vector.body680
  %cmp.n687 = icmp eq i64 %n.vec677, %i.aeb
  br i1 %cmp.n687, label %rbuObjIterGetBindlist.exit285, label %.lr.ph.i281.preheader

.lr.ph.i281.preheader:                            ; preds = %.lr.ph.preheader.i280, %middle.block686
  %indvars.iv.i282.ph = phi i64 [ 0, %.lr.ph.preheader.i280 ], [ %n.vec677, %middle.block686 ]
  br label %.lr.ph.i281

.lr.ph.i281:                                      ; preds = %.lr.ph.i281.preheader, %.lr.ph.i281
  %indvars.iv.i282 = phi i64 [ %indvars.iv.next.i283, %.lr.ph.i281 ], [ %indvars.iv.i282.ph, %.lr.ph.i281.preheader ] ; 2 uses
  %i.aei = shl nuw nsw i64 %indvars.iv.i282, 1
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.aei ; 2 uses
  store i8 63, ptr %i.aej, align 1, !tbaa !741
  %indvars.iv.next.i283 = add nuw nsw i64 %indvars.iv.i282, 1 ; 2 uses
  %.not.i284 = icmp eq i64 %indvars.iv.next.i283, %i.aeb ; 2 uses
  %i.aek = select i1 %.not.i284, i8 0, i8 44
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aej, i64 1
  store i8 %i.aek, ptr %i.ael, align 1, !tbaa !741
  br i1 %.not.i284, label %rbuObjIterGetBindlist.exit285, label %.lr.ph.i281, !llvm.loop !4092

rbuObjIterGetBindlist.exit285:                    ; preds = %.lr.ph.i281, %middle.block686, %bb.gt, %sqlite3_malloc64.exit.thread.i.i277, %rbuMalloc.exit.i279
  %.0.i17.i275 = phi ptr [ null, %bb.gt ], [ null, %sqlite3_malloc64.exit.thread.i.i277 ], [ %i.ady, %rbuMalloc.exit.i279 ], [ %i.ady, %middle.block686 ], [ %i.ady, %.lr.ph.i281 ] ; 5 uses
  %i.aem = tail call fastcc ptr @rbuObjIterGetWhere(ptr noundef %0, ptr noundef %1) ; 5 uses
  %i.aen = tail call fastcc ptr @rbuObjIterGetOldlist(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.734) ; 6 uses
  %i.aeo = tail call fastcc ptr @rbuObjIterGetOldlist(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.733) ; 6 uses
  %i.aep = load i32, ptr %i.adp, align 8, !tbaa !1450 ; 2 uses
  %i.aeq = icmp sgt i32 %i.aep, 0
  br i1 %i.aeq, label %.lr.ph.i287, label %rbuObjIterGetCollist.exit

.lr.ph.i287:                                      ; preds = %rbuObjIterGetBindlist.exit285
  %i.aer = load ptr, ptr %i.o, align 8, !tbaa !1452
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !747
  %i.aet = tail call ptr (ptr, ptr, ...) @rbuMPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2042, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %i.aes) ; 2 uses
  %i.aeu = load i32, ptr %i.adp, align 8, !tbaa !1450 ; 2 uses
  %i.aev = icmp sgt i32 %i.aeu, 1
  br i1 %i.aev, label %.peel.next.i, label %rbuObjIterGetCollist.exit

.peel.next.i:                                     ; preds = %.lr.ph.i287, %.peel.next.i
  %indvars.iv.i288 = phi i64 [ %indvars.iv.next.i289, %.peel.next.i ], [ 1, %.lr.ph.i287 ] ; 2 uses
  %.013.i = phi ptr [ %i.aez, %.peel.next.i ], [ %i.aet, %.lr.ph.i287 ]
  %i.aew = load ptr, ptr %i.o, align 8, !tbaa !1452
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv.i288
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !747
  %i.aez = tail call ptr (ptr, ptr, ...) @rbuMPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2042, ptr noundef %.013.i, ptr noundef nonnull @.str.834, ptr noundef %i.aey) ; 2 uses
  %indvars.iv.next.i289 = add nuw nsw i64 %indvars.iv.i288, 1 ; 2 uses
  %i.afa = load i32, ptr %i.adp, align 8, !tbaa !1450 ; 2 uses
  %i.afb = sext i32 %i.afa to i64
  %i.afc = icmp slt i64 %indvars.iv.next.i289, %i.afb
  br i1 %i.afc, label %.peel.next.i, label %rbuObjIterGetCollist.exit, !llvm.loop !4093

rbuObjIterGetCollist.exit:                        ; preds = %.peel.next.i, %rbuObjIterGetBindlist.exit285, %.lr.ph.i287
  %i.afd = phi i32 [ %i.aep, %rbuObjIterGetBindlist.exit285 ], [ %i.aeu, %.lr.ph.i287 ], [ %i.afa, %.peel.next.i ]
  %.0.lcssa.i = phi ptr [ null, %rbuObjIterGetBindlist.exit285 ], [ %i.aet, %.lr.ph.i287 ], [ %i.aez, %.peel.next.i ] ; 7 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %i.afd, ptr %i.afe, align 8, !tbaa !1455
  %i.aff = load i32, ptr %i.nx, align 8, !tbaa !1434 ; 2 uses
  %i.afg = icmp eq i32 %i.aff, 0
  br i1 %i.afg, label %bb.gv, label %rbuCreateImposterTable2.exit.thread

bb.gv:                                            ; preds = %rbuObjIterGetCollist.exit
  %i.afh = load i32, ptr %i.adg, align 8, !tbaa !1453
  %.not.i290 = icmp eq i32 %i.afh, 5
  br i1 %.not.i290, label %rbuCreateImposterTable2.exit.thread399, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.afi = load i32, ptr %i.oa, align 8, !tbaa !1480
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !1454
  %i.afl = tail call i32 (i32, ...) @sqlite3_test_control(i32 noundef 25, ptr noundef %i.afk, ptr noundef nonnull @.str.404, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.afm = load i32, ptr %i.nx, align 8, !tbaa !1434
  %i.afn = icmp eq i32 %i.afm, 0
  br i1 %i.afn, label %.lr.ph.i292, label %rbuCreateImposterTable.exit

.lr.ph.i292:                                      ; preds = %bb.gw
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.afr = load i32, ptr %i.adp, align 8, !tbaa !1450
  %i.afs = icmp sgt i32 %i.afr, 0
  br i1 %i.afs, label %bb.gx, label %.critedge.i293

bb.gx:                                            ; preds = %.lr.ph.i292
  %i.aft = load ptr, ptr %i.o, align 8, !tbaa !1452
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !747 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  store ptr null, ptr %i.e, align 8, !tbaa !747
  %i.afv = load ptr, ptr %i.afj, align 8, !tbaa !1454
  %i.afw = load ptr, ptr %i.adn, align 8, !tbaa !1435
  %i.afx = call i32 @sqlite3_table_column_metadata(ptr noundef %i.afv, ptr noundef nonnull @.str.404, ptr noundef %i.afw, ptr noundef %i.afu, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %i.afx, ptr %i.nx, align 8, !tbaa !1434
  %i.afy = load i32, ptr %i.adg, align 8, !tbaa !1453
  %i.afz = icmp eq i32 %i.afy, 2
  br i1 %i.afz, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.aga = load ptr, ptr %i.afo, align 8, !tbaa !1456
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !741
  %.not45.peel.i = icmp eq i8 %i.agb, 0
  %spec.select.peel.i = select i1 %.not45.peel.i, ptr @.str.4, ptr @.str.2043
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.0.peel.i = phi ptr [ @.str.4, %bb.gx ], [ %spec.select.peel.i, %bb.gy ]
  %i.agc = load ptr, ptr %i.afp, align 8, !tbaa !1481
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !747
  %i.age = load ptr, ptr %i.e, align 8, !tbaa !747
  %i.agf = load ptr, ptr %i.afq, align 8, !tbaa !4100
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !741
  %.not46.peel.i = icmp eq i8 %i.agg, 0
  %i.agh = select i1 %.not46.peel.i, ptr @.str.4, ptr @.str.2045
  %i.agi = call ptr (ptr, ptr, ...) @rbuMPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2044, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %i.afu, ptr noundef %i.agd, ptr noundef nonnull %.0.peel.i, ptr noundef %i.age, ptr noundef nonnull %i.agh) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  %i.agj = load i32, ptr %i.nx, align 8, !tbaa !1434
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %.peel.next.i304, label %rbuCreateImposterTable.exit

.peel.next.i304:                                  ; preds = %bb.gz, %bb.hc
  %indvars.iv.i305 = phi i64 [ %indvars.iv.next.i307, %bb.hc ], [ 1, %bb.gz ] ; 6 uses
  %.04151.i = phi ptr [ %i.ahh, %bb.hc ], [ %i.agi, %bb.gz ] ; 2 uses
  %i.agl = load i32, ptr %i.adp, align 8, !tbaa !1450
end_hunk_0
begin_hunk_1_@sqliteErrorFromPosixError:bb.a
    i32 4, label %bb.d
    i32 37, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 3850, %bb.c ], [ 3, %bb.b ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 6411) i32 @unixGetTempname(i32 noundef %0, ptr noundef nonnull initializes((0, 1)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  store i8 0, ptr %1, align 1, !tbaa !741
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !718
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !719
  %i.d = tail call ptr %i.c(i32 noundef 11) #59, !inline_history !6 ; 2 uses
  %.not.i17 = icmp eq ptr %i.d, null
  br i1 %.not.i17, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.e(ptr noundef nonnull %i.d) #59, !inline_history !570
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %sqlite3MutexAlloc.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %.0.i18 = load ptr, ptr @sqlite3_temp_directory, align 8, !tbaa !747 ; 4 uses
  %.not.i19 = icmp eq ptr %.0.i18, null
  br i1 %.not.i19, label %bb.f, label %bb.c

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !844
  %i.h = call i32 %i.g(ptr noundef nonnull %.0.i18, ptr noundef nonnull %2) #59, !inline_history !4303
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.f, align 8, !tbaa !847
  %i.k = and i32 %i.j, 61440
  %i.l = icmp eq i32 %i.k, 16384
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.n = call i32 %i.m(ptr noundef nonnull %.0.i18, i32 noundef 3) #59, !inline_history !4303
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %unixTempFileDir.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %sqlite3_mutex_enter.exit
  %.0.1.i = load ptr, ptr @azTempDirs.0, align 16, !tbaa !747 ; 4 uses
  %.not.1.i = icmp eq ptr %.0.1.i, null
  br i1 %.not.1.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !844
  %i.q = call i32 %i.p(ptr noundef nonnull %.0.1.i, ptr noundef nonnull %2) #59, !inline_history !4303
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %i.f, align 8, !tbaa !847
  %i.t = and i32 %i.s, 61440
  %i.u = icmp eq i32 %i.t, 16384
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.w = call i32 %i.v(ptr noundef nonnull %.0.1.i, i32 noundef 3) #59, !inline_history !4303
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %unixTempFileDir.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.2.i = load ptr, ptr @azTempDirs.1, align 8, !tbaa !747 ; 4 uses
  %.not.2.i = icmp eq ptr %.0.2.i, null
  br i1 %.not.2.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !844
  %i.z = call i32 %i.y(ptr noundef nonnull %.0.2.i, ptr noundef nonnull %2) #59, !inline_history !4303
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !847
  %i.ac = and i32 %i.ab, 61440
  %i.ad = icmp eq i32 %i.ac, 16384
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.af = call i32 %i.ae(ptr noundef nonnull %.0.2.i, i32 noundef 3) #59, !inline_history !4303
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %unixTempFileDir.exit, label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !844
  %i.ai = call i32 %i.ah(ptr noundef nonnull @.str.101, ptr noundef nonnull %2) #59, !inline_history !4303
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !847
  %i.al = and i32 %i.ak, 61440
  %i.am = icmp eq i32 %i.al, 16384
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.ao = call i32 %i.an(ptr noundef nonnull @.str.101, i32 noundef 3) #59, !inline_history !4303
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %unixTempFileDir.exit, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !844
  %i.ar = call i32 %i.aq(ptr noundef nonnull @.str.102, ptr noundef nonnull %2) #59, !inline_history !4303
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.f, align 8, !tbaa !847
  %i.au = and i32 %i.at, 61440
  %i.av = icmp eq i32 %i.au, 16384
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.ax = call i32 %i.aw(ptr noundef nonnull @.str.102, i32 noundef 3) #59, !inline_history !4303
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %unixTempFileDir.exit, label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !844
  %i.ba = call i32 %i.az(ptr noundef nonnull @.str.103, ptr noundef nonnull %2) #59, !inline_history !4303
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !847
  %i.bd = and i32 %i.bc, 61440
  %i.be = icmp eq i32 %i.bd, 16384
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.bg = call i32 %i.bf(ptr noundef nonnull @.str.103, i32 noundef 3) #59, !inline_history !4303
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %unixTempFileDir.exit, label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !844
  %i.bj = call i32 %i.bi(ptr noundef nonnull @.str.9, ptr noundef nonnull %2) #59, !inline_history !4303
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.x, label %unixTempFileDir.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bl = load i32, ptr %i.f, align 8, !tbaa !847
  %i.bm = and i32 %i.bl, 61440
  %i.bn = icmp eq i32 %i.bm, 16384
  br i1 %i.bn, label %bb.y, label %unixTempFileDir.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.bp = call i32 %i.bo(ptr noundef nonnull @.str.9, i32 noundef 3) #59, !inline_history !4303
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %unixTempFileDir.exit, label %unixTempFileDir.exit.thread

unixTempFileDir.exit.thread:                      ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br label %.loopexit

unixTempFileDir.exit:                             ; preds = %bb.e, %bb.i, %bb.m, %bb.p, %bb.s, %bb.v, %bb.y
  %.07.i = phi ptr [ %.0.i18, %bb.e ], [ @.str.103, %bb.v ], [ %.0.1.i, %bb.i ], [ @.str.9, %bb.y ], [ %.0.2.i, %bb.m ], [ @.str.102, %bb.s ], [ @.str.101, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  %i.br = sext i32 %0 to i64
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -2     ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %unixTempFileDir.exit, %bb.aa
  %.013 = phi i32 [ 0, %unixTempFileDir.exit ], [ %.215, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef nonnull %i.a)
  store i8 0, ptr %i.bt, align 1, !tbaa !741
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !571
  %i.bv = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.100, ptr noundef nonnull %.07.i, i64 noundef %i.bu, i32 noundef 0) ; 0 uses
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !741
  %.not = icmp ne i8 %i.bw, 0
  %3 = icmp samesign ugt i32 %.013, 10
  %i.bx = select i1 %.not, i1 true, i1 %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br i1 %i.bx, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.215 = add nuw nsw i32 %.013, 1
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !844
  %i.bz = call i32 %i.by(ptr noundef nonnull %1, i32 noundef 0) #59
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %.loopexit, !llvm.loop !4304

.loopexit:                                        ; preds = %bb.z, %bb.aa, %unixTempFileDir.exit.thread
  %.2 = phi i32 [ 6410, %unixTempFileDir.exit.thread ], [ 1, %bb.z ], [ 0, %bb.aa ]
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !718
  %.not.i20 = icmp eq i8 %i.cb, 0
  br i1 %.not.i20, label %sqlite3_mutex_leave.exit, label %sqlite3MutexAlloc.exit22

sqlite3MutexAlloc.exit22:                         ; preds = %.loopexit
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !719
  %i.cd = call ptr %i.cc(i32 noundef 11) #59, !inline_history !6 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %sqlite3_mutex_leave.exit, label %bb.ab

bb.ab:                                            ; preds = %sqlite3MutexAlloc.exit22
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.ce(ptr noundef nonnull %i.cd) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %.loopexit, %sqlite3MutexAlloc.exit22, %bb.ab
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 1803) i32 @unixMapfile(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1656
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 128), align 16, !tbaa !844
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !851
  %i.h = call i32 %i.e(i32 noundef %i.g, ptr noundef nonnull %2) #59
  %.not.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br i1 %.not.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.j, %bb.c ], [ %1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !856
  %spec.select = call i64 @llvm.smin.i64(i64 %.1, i64 %i.l) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1636 ; 6 uses
  %.not17 = icmp eq i64 %spec.select, %i.n
  br i1 %.not17, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !851
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1637 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1657 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not37.i = icmp eq i64 %i.n, %i.t
  br i1 %.not37.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.n
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 560), align 16, !tbaa !844
  %i.w = sub nsw i64 %i.t, %i.n
  %i.x = call i32 %i.v(ptr noundef nonnull %i.u, i64 noundef %i.w) #59, !inline_history !4305 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 584), align 8, !tbaa !844
  %i.z = call ptr (ptr, i64, i64, i32, ...) %i.y(ptr noundef nonnull %i.r, i64 noundef %i.n, i64 noundef %spec.select, i32 noundef 1) #59, !inline_history !4305 ; 3 uses
  %magicptr.i = ptrtoint ptr %i.z to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 560), align 16, !tbaa !844
  %i.ab = call i32 %i.aa(ptr noundef nonnull %i.r, i64 noundef %i.n) #59, !inline_history !4305 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j, %bb.e
  %.03241.i = phi ptr [ @.str.89, %bb.j ], [ @.str.87, %bb.e ]
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 536), align 8, !tbaa !844
  %i.ae = call ptr %i.ad(ptr noundef null, i64 noundef %spec.select, i32 noundef 1, i32 noundef 1, i32 noundef %i.p, i64 noundef 0) #59, !inline_history !4305
  br label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j
  %.03240.i = phi ptr [ %.03241.i, %.thread.i ], [ @.str.89, %bb.j ]
  %.1.i = phi ptr [ %i.ae, %.thread.i ], [ %i.z, %bb.j ] ; 2 uses
  %i.af = icmp eq ptr %.1.i, inttoptr (i64 -1 to ptr)
  br i1 %i.af, label %bb.l, label %unixRemapfile.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !853 ; 2 uses
  %i.ai = tail call ptr @__errno_location() #61
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !576
  %i.ak = icmp eq ptr %i.ah, null
  %spec.store.select.i.i = select i1 %i.ak, ptr @.str.4, ptr %i.ah
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef 45293, i32 noundef %i.aj, ptr noundef nonnull %.03240.i, ptr noundef nonnull %spec.store.select.i.i, ptr noundef nonnull @.str.4)
  store i64 0, ptr %i.k, align 8, !tbaa !856
  br label %unixRemapfile.exit

unixRemapfile.exit:                               ; preds = %bb.k, %bb.l
  %.033.i = phi i64 [ 0, %bb.l ], [ %spec.select, %bb.k ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.l ], [ %.1.i, %bb.k ]
  store ptr %.2.i, ptr %i.q, align 8, !tbaa !1637
  store i64 %.033.i, ptr %i.s, align 8, !tbaa !1657
  store i64 %.033.i, ptr %i.m, align 8, !tbaa !1636
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.d, %unixRemapfile.exit, %bb.a
  %.113 = phi i32 [ 1802, %bb.c ], [ 0, %bb.a ], [ 0, %unixRemapfile.exit ], [ 0, %bb.d ]
  ret i32 %.113
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4619) i32 @unixLockSharedMemory(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.flock, align 8              ; 7 uses
  %3 = alloca %struct.flock, align 8              ; 8 uses
  %4 = alloca %struct.flock, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !1644
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 128, ptr %i.b, align 8, !tbaa !1646
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %i.c, align 8, !tbaa !1643
  store i16 1, ptr %4, align 8, !tbaa !1645
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 176), align 16, !tbaa !844
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1653
  %i.g = call i32 (i32, i32, ...) %i.d(i32 noundef %i.f, i32 noundef 5, ptr noundef nonnull %4) #59
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %4, align 8, !tbaa !1645
  switch i16 %i.h, label %bb.j [
    i16 2, label %bb.c
    i16 1, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.j = load i8, ptr %i.i, align 2, !tbaa !1664
  %.not12 = icmp eq i8 %i.j, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 1, ptr %i.k, align 1, !tbaa !1667
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val14 = load ptr, ptr %i.l, align 8, !tbaa !1632
  %i.m = getelementptr i8, ptr %.val14, i64 56
  %.val14.val = load ptr, ptr %i.m, align 8, !tbaa !1661
  %i.n = getelementptr i8, ptr %.val14.val, i64 24
  %.val14.val.val = load i32, ptr %i.n, align 8, !tbaa !1653 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.o = icmp sgt i32 %.val14.val.val, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 1, ptr %3, align 8, !tbaa !1645
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.p, align 2, !tbaa !1644
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 128, ptr %i.q, align 8, !tbaa !1646
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %i.r, align 8, !tbaa !1643
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 176), align 16, !tbaa !844
  %i.t = call i32 (i32, i32, ...) %i.s(i32 noundef %.val14.val.val, i32 noundef 6, ptr noundef nonnull %3) #59, !inline_history !142
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %unixShmSystemLock.exit, label %bb.g
end_hunk_1
begin_hunk_2_@btreeEndTransaction:bb.a

bb.k:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ao(ptr noundef nonnull %i.u) #59, !inline_history !4533
  br label %sqlite3_free.exitthread-pre-split.i

sqlite3_free.exitthread-pre-split.i:              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i.i, %.lr.ph.i15
  %.1.ph.i = phi ptr [ %.020.i, %bb.k ], [ %.020.i, %bb.j ], [ %.020.i, %sqlite3_mutex_enter.exit.i.i ], [ %i.x, %.lr.ph.i15 ] ; 2 uses
  %.pr.i = load ptr, ptr %.1.ph.i, align 8, !tbaa !1706
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %sqlite3_free.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %sqlite3_free.exitthread-pre-split.i ], [ %i.y, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.1.ph.i, %sqlite3_free.exitthread-pre-split.i ], [ %.020.i, %bb.f ]
  %.not.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i16, label %._crit_edge.i, label %.lr.ph.i15, !llvm.loop !4535

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1705
  %i.as = icmp eq ptr %i.ar, %0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.aq, align 8, !tbaa !1705
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !1730
  br label %.sink.split.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1730 ; 2 uses
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %.sink.split.i, label %clearAllSharedCacheTableLocks.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.pre = phi i32 [ %.pre.pre, %bb.l ], [ 2, %bb.m ]
  %.sink26.i = phi i16 [ -193, %bb.l ], [ -129, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !1052
  %i.ay = and i16 %i.ax, %.sink26.i
  store i16 %i.ay, ptr %i.aw, align 8, !tbaa !1052
  br label %clearAllSharedCacheTableLocks.exit

clearAllSharedCacheTableLocks.exit:               ; preds = %bb.m, %.sink.split.i
  %i.az = phi i32 [ %i.au, %bb.m ], [ %.pre, %.sink.split.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bb = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !1730
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.thread

bb.n:                                             ; preds = %clearAllSharedCacheTableLocks.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 0, ptr %i.bd, align 4, !tbaa !1005
  br label %.thread

.thread:                                          ; preds = %bb.a, %clearAllSharedCacheTableLocks.exit, %bb.n
  store i8 0, ptr %i.e, align 8, !tbaa !998
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !1005
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %unlockBtreeIfUnused.exit

bb.o:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1007 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bi, null
  br i1 %.not.i17, label %unlockBtreeIfUnused.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.bh, align 8, !tbaa !1007
  %i.bj = getelementptr i8, ptr %i.bi, i64 112
  %.val.i = load ptr, ptr %i.bj, align 8, !tbaa !1030 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !903 ; 2 uses
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef %.val.i), !inline_history !148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !639
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !1084
  %i.bp = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bp, label %bb.q, label %unlockBtreeIfUnused.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @pagerUnlockAndRollback(ptr noundef nonnull %i.bl), !inline_history !149
  br label %unlockBtreeIfUnused.exit

unlockBtreeIfUnused.exit:                         ; preds = %bb.q, %bb.p, %bb.o, %.thread, %downgradeAllSharedCacheTableLocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @incrVacuumStep(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = icmp ult i32 %2, 2
  br i1 %i.h, label %ptrmapPageno.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1077
  %i.k = udiv i32 %i.j, 5
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = add i32 %2, -2                           ; 2 uses
  %i.n = urem i32 %i.m, %i.l
  %i.o = sub nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !576
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !665
  %i.s = udiv i32 %i.p, %i.r
  %i.t = add nuw i32 %i.o, 1
  %i.u = icmp eq i32 %i.t, %i.s
  %spec.select.v.i = select i1 %i.u, i32 3, i32 2
  %spec.select.i = add i32 %spec.select.v.i, %i.o
  br label %ptrmapPageno.exit

ptrmapPageno.exit:                                ; preds = %bb.a, %bb.b
  %.010.i = phi i32 [ %spec.select.i, %bb.b ], [ 0, %bb.a ]
  %i.v = icmp eq i32 %.010.i, %2
  br i1 %i.v, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %ptrmapPageno.exit
  %i.w = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !576
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !665
  %i.z = udiv i32 %i.w, %i.y
  %i.aa = add i32 %i.z, 1
  %.not = icmp eq i32 %2, %i.aa
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1007
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1009 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !741
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 37
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !741
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 38
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !741
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 39
  %i.am = load i8, ptr %i.al, align 1, !tbaa !741
  %i.an = or i8 %i.ai, %i.ag
  %i.ao = or i8 %i.an, %i.ak
  %i.ap = or i8 %i.ao, %i.am
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not66 = icmp eq i32 %i.ar, 0
  br i1 %.not66, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.as = load i8, ptr %i.a, align 1, !tbaa !741  ; 2 uses
  switch i8 %i.as, label %bb.k [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 76650, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %3, 0
  br i1 %i.at, label %bb.i, label %.thread93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.au = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.c, i32 noundef %2, i8 noundef zeroext 1) ; 2 uses
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.j, label %.critedge72

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !1752
  call fastcc void @releasePage(ptr noundef %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %.thread93

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.aw = call fastcc i32 @btreeGetPage(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.f, i32 noundef 0) ; 2 uses
  %.not67 = icmp eq i32 %i.aw, 0
  br i1 %.not67, label %bb.l, label %.thread97

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp eq i32 %3, 0
  %i.ay = getelementptr i8, ptr %0, i64 64        ; 2 uses
  br i1 %i.ax, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %.val.us = load i32, ptr %i.ay, align 8, !tbaa !1017
  %i.az = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef %1, i8 noundef zeroext 2) ; 2 uses
  %.not68.us = icmp eq i32 %i.az, 0
  br i1 %.not68.us, label %bb.m, label %.split105.us

bb.m:                                             ; preds = %.split.us
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !1752 ; 2 uses
  %.not.i75.us = icmp eq ptr %i.ba, null
  br i1 %.not.i75.us, label %releasePage.exit78.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.ba, i64 112
  %.val.i76.us = load ptr, ptr %i.bb, align 8, !tbaa !1030 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 52
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !902
  %i.be = and i16 %i.bd, 32
  %.not.i.i.i77.us = icmp eq i16 %i.be, 0
  br i1 %.not.i.i.i77.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !903 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 152 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !904
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !904
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 168 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !905
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 32
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !906
  store ptr %.val.i76.us, ptr %i.bk, align 8, !tbaa !905
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !907 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 48
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !908
  %i.br = add i32 %i.bq, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !637
  %i.bv = mul nsw i64 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !901
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !870
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !910
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.bo, i64 noundef %i.bv, ptr noundef %i.bx) #59, !inline_history !196 ; 0 uses
  br label %releasePage.exit78.us

bb.p:                                             ; preds = %bb.n
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i76.us)
  br label %releasePage.exit78.us

releasePage.exit78.us:                            ; preds = %bb.p, %bb.o, %bb.m
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !576 ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, %.val.us
  br i1 %i.cd, label %.split107.us, label %.split109.us

.split109.us:                                     ; preds = %releasePage.exit78.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  br label %.split109

.split:                                           ; preds = %bb.l, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %.val = load i32, ptr %i.ay, align 8, !tbaa !1017
  %i.ce = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not68 = icmp eq i32 %i.ce, 0
  br i1 %.not68, label %bb.t, label %.split105.us

.split105.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %i.az, %.split.us ], [ %i.ce, %.split ] ; 3 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !1752 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %releasePage.exit.thread, label %bb.q

bb.q:                                             ; preds = %.split105.us
  %i.cg = getelementptr i8, ptr %i.cf, i64 112
  %.val.i = load ptr, ptr %i.cg, align 8, !tbaa !1030 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !902
  %i.cj = and i16 %i.ci, 32
  %.not.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !903 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 152 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !904
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !904
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 168 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !905
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !906
  store ptr %.val.i, ptr %i.cp, align 8, !tbaa !905
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !907 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !908
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 200
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !637
  %i.da = mul nsw i64 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !901
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !870
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !910
  %i.dg = call i32 %i.df(ptr noundef nonnull %i.ct, i64 noundef %i.da, ptr noundef %i.dc) #59, !inline_history !196 ; 0 uses
  br label %releasePage.exit.thread

bb.s:                                             ; preds = %bb.q
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit.thread

bb.t:                                             ; preds = %.split
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !1752 ; 2 uses
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %releasePage.exit78, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr i8, ptr %i.dh, i64 112
  %.val.i76 = load ptr, ptr %i.di, align 8, !tbaa !1030 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i76, i64 52
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !902
  %i.dl = and i16 %i.dk, 32
  %.not.i.i.i77 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.i77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i76, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !903 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 152 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !904
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !904
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 168 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !905
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i76, i64 32
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !906
  store ptr %.val.i76, ptr %i.dr, align 8, !tbaa !905
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !907 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i76, i64 48
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !908
  %i.dy = add i32 %i.dx, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 200
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !637
  %i.ec = mul nsw i64 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i76, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !901
  %i.ef = load ptr, ptr %i.dv, align 8, !tbaa !870
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 144
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !910
  %i.ei = call i32 %i.eh(ptr noundef nonnull %i.dv, i64 noundef %i.ec, ptr noundef %i.ee) #59, !inline_history !196 ; 0 uses
  br label %releasePage.exit78

bb.w:                                             ; preds = %bb.u
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i76)
  br label %releasePage.exit78

releasePage.exit78:                               ; preds = %bb.t, %bb.v, %bb.w
  %i.ej = load i32, ptr %i.e, align 4, !tbaa !576 ; 3 uses
  %i.ek = icmp ugt i32 %i.ej, %.val
  br i1 %i.ek, label %.split107.us, label %bb.aa

.split107.us:                                     ; preds = %releasePage.exit78, %releasePage.exit78.us
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !1752 ; 2 uses
  %.not.i79 = icmp eq ptr %i.el, null
  br i1 %.not.i79, label %releasePage.exit82, label %bb.x

bb.x:                                             ; preds = %.split107.us
  %i.em = getelementptr i8, ptr %i.el, i64 112
  %.val.i80 = load ptr, ptr %i.em, align 8, !tbaa !1030 ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i80, i64 52
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !902
  %i.ep = and i16 %i.eo, 32
  %.not.i.i.i81 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i.i81, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i80, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !903 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 152 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !904
  %i.eu = add nsw i32 %i.et, -1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !904
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 168 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !905
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i80, i64 32
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !906
  store ptr %.val.i80, ptr %i.ev, align 8, !tbaa !905
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !907 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i80, i64 48
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !908
  %i.fc = add i32 %i.fb, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 200
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !637
  %i.fg = mul nsw i64 %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i80, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !901
  %i.fj = load ptr, ptr %i.ez, align 8, !tbaa !870
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !910
  %i.fm = call i32 %i.fl(ptr noundef nonnull %i.ez, i64 noundef %i.fg, ptr noundef %i.fi) #59, !inline_history !196 ; 0 uses
  br label %releasePage.exit82

bb.z:                                             ; preds = %bb.x
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i80)
  br label %releasePage.exit82

releasePage.exit82:                               ; preds = %.split107.us, %bb.y, %bb.z
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 76702, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %releasePage.exit.thread

releasePage.exit.thread:                          ; preds = %releasePage.exit82, %.split105.us, %bb.r, %bb.s
  %.256.ph = phi i32 [ %.us-phi, %bb.s ], [ %.us-phi, %bb.r ], [ %.us-phi, %.split105.us ], [ 11, %releasePage.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  br label %.thread97

bb.aa:                                            ; preds = %releasePage.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  %i.fn = icmp ugt i32 %i.ej, %1
  br i1 %i.fn, label %.split, label %.split109, !llvm.loop !4536

.critedge72:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.e, %.critedge72
  %.5.ph = phi i32 [ %i.au, %.critedge72 ], [ %i.ar, %bb.e ], [ 11, %bb.g ], [ 101, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.af

.thread93:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.ab

.thread97:                                        ; preds = %releasePage.exit.thread, %bb.k
  %.357.ph = phi i32 [ %i.aw, %bb.k ], [ %.256.ph, %releasePage.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.af

.split109:                                        ; preds = %bb.aa, %.split109.us
  %.us-phi110 = phi i32 [ %i.cc, %.split109.us ], [ %i.ej, %bb.aa ]
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !1752 ; 2 uses
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !576
  %i.fq = call fastcc i32 @relocatePage(ptr noundef nonnull %0, ptr noundef %i.fo, i8 noundef zeroext %i.as, i32 noundef %i.fp, i32 noundef %.us-phi110, i32 noundef %3) ; 2 uses
  call fastcc void @releasePage(ptr noundef %i.fo)
  %.not69 = icmp eq i32 %i.fq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br i1 %.not69, label %bb.ab, label %bb.af
end_hunk_2
begin_hunk_3_@fts5VocabFilterMethod:bb.a
  %i.bj = zext i16 %i.bc to i32                   ; 3 uses
  %i.bk = and i32 %i.bj, 16
  %.not20.i.i78 = icmp eq i32 %i.bk, 0
  br i1 %.not20.i.i78, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread.i.i77
  %i.bl = and i32 %i.bj, 1024
  %.not22.i.i79 = icmp eq i32 %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !934 ; 2 uses
  br i1 %.not22.i.i79, label %sqlite3_value_bytes.exit82, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = load i32, ptr %.051, align 8, !tbaa !741
  %i.bp = add nsw i32 %i.bo, %i.bn
  br label %sqlite3_value_bytes.exit82

bb.ac:                                            ; preds = %.thread.i.i77
  %i.bq = and i32 %i.bj, 1
  %.not21.i.i81 = icmp eq i32 %i.bq, 0
  br i1 %.not21.i.i81, label %bb.ad, label %sqlite3_value_bytes.exit82

bb.ad:                                            ; preds = %bb.ac
  %i.br = tail call fastcc i32 @valueBytes(ptr noundef nonnull %.051, i8 noundef zeroext 1)
  br label %sqlite3_value_bytes.exit82

sqlite3_value_bytes.exit82:                       ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.s
  %.054 = phi ptr [ null, %bb.s ], [ %.0.i.i74, %bb.z ], [ %.0.i.i74, %bb.aa ], [ %.0.i.i74, %bb.ab ], [ %.0.i.i74, %bb.ac ], [ %.0.i.i74, %bb.ad ] ; 2 uses
  %.053 = phi i32 [ 0, %bb.s ], [ %i.bi, %bb.z ], [ %i.bn, %bb.aa ], [ %i.bp, %bb.ab ], [ 0, %bb.ac ], [ %i.br, %bb.ad ] ; 2 uses
  %.not66 = icmp eq ptr %.0, null
  br i1 %.not66, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %sqlite3_value_bytes.exit82
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !694 ; 4 uses
  %i.bu = and i16 %i.bt, 514
  %i.bv = icmp eq i16 %i.bu, 514
  br i1 %i.bv, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 22
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !795
  %i.by = icmp eq i8 %i.bx, 1
  br i1 %i.by, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !768
  br label %sqlite3_value_text.exit86

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.cb = and i16 %i.bt, 1
  %.not9.i.i84 = icmp eq i16 %i.cb, 0
  br i1 %.not9.i.i84, label %bb.ai, label %sqlite3_value_text.exit86

bb.ai:                                            ; preds = %bb.ah
  %i.cc = tail call fastcc ptr @valueToText(ptr noundef nonnull %.0, i8 noundef zeroext 1), !inline_history !974
  %.pre110 = load i16, ptr %i.bs, align 4, !tbaa !694
  br label %sqlite3_value_text.exit86

sqlite3_value_text.exit86:                        ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.cd = phi i16 [ %i.bt, %bb.ag ], [ %i.bt, %bb.ah ], [ %.pre110, %bb.ai ] ; 2 uses
  %.0.i.i85 = phi ptr [ %i.ca, %bb.ag ], [ null, %bb.ah ], [ %i.cc, %bb.ai ] ; 2 uses
  %i.ce = and i16 %i.cd, 2
  %.not.i.i87 = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i87, label %.thread.i.i88, label %bb.aj

bb.aj:                                            ; preds = %sqlite3_value_text.exit86
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 22
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !795
  %i.ch = icmp eq i8 %i.cg, 1
  br i1 %i.ch, label %bb.ak, label %.thread.i.i88

bb.ak:                                            ; preds = %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !934
  br label %sqlite3_value_bytes.exit93

.thread.i.i88:                                    ; preds = %bb.aj, %sqlite3_value_text.exit86
  %i.ck = zext i16 %i.cd to i32                   ; 3 uses
  %i.cl = and i32 %i.ck, 16
  %.not20.i.i89 = icmp eq i32 %i.cl, 0
  br i1 %.not20.i.i89, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.thread.i.i88
  %i.cm = and i32 %i.ck, 1024
  %.not22.i.i90 = icmp eq i32 %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !934 ; 2 uses
  br i1 %.not22.i.i90, label %sqlite3_value_bytes.exit93, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = load i32, ptr %.0, align 8, !tbaa !741
  %i.cq = add nsw i32 %i.cp, %i.co
  br label %sqlite3_value_bytes.exit93

bb.an:                                            ; preds = %.thread.i.i88
  %i.cr = and i32 %i.ck, 1
  %.not21.i.i92 = icmp eq i32 %i.cr, 0
  br i1 %.not21.i.i92, label %bb.ao, label %sqlite3_value_bytes.exit93

bb.ao:                                            ; preds = %bb.an
  %i.cs = tail call fastcc i32 @valueBytes(ptr noundef nonnull %.0, i8 noundef zeroext 1)
  br label %sqlite3_value_bytes.exit93

sqlite3_value_bytes.exit93:                       ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i.i91 = phi i32 [ %i.cj, %bb.ak ], [ %i.co, %bb.al ], [ %i.cq, %bb.am ], [ 0, %bb.an ], [ %i.cs, %bb.ao ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %.0.i.i91, ptr %i.ct, align 8, !tbaa !3503
  %i.cu = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %sqlite3_value_bytes.exit93
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.cv, align 8, !tbaa !3504
  br label %.thread107

sqlite3_malloc64.exit:                            ; preds = %sqlite3_value_bytes.exit93
  %i.cw = sext i32 %.0.i.i91 to i64
  %i.cx = add nsw i64 %i.cw, 1
  %i.cy = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.cx), !inline_history !821 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !3504
  %i.da = icmp eq ptr %i.cy, null
  br i1 %i.da, label %.thread107, label %bb.ap

bb.ap:                                            ; preds = %sqlite3_malloc64.exit
  %i.db = icmp eq ptr %.0.i.i85, null
  %spec.store.select = select i1 %i.db, ptr @.str.4, ptr %.0.i.i85
  %i.dc = load i32, ptr %i.ct, align 8, !tbaa !3503
  %i.dd = add nsw i32 %i.dc, 1
  %i.de = sext i32 %i.dd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %spec.store.select, i64 %i.de, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %sqlite3_value_bytes.exit82, %bb.ap, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.056.ph = phi i32 [ 128, %bb.r ], [ 128, %bb.q ], [ 128, %bb.p ], [ 128, %bb.o ], [ 128, %bb.n ], [ 8, %sqlite3_value_bytes.exit82 ], [ 8, %bb.ap ]
  %.155.ph = phi ptr [ %.0.i.i, %bb.r ], [ %.0.i.i, %bb.q ], [ %.0.i.i, %bb.p ], [ %.0.i.i, %bb.o ], [ %.0.i.i, %bb.n ], [ %.054, %sqlite3_value_bytes.exit82 ], [ %.054, %bb.ap ]
  %.1.ph = phi i32 [ %i.aq, %bb.r ], [ 0, %bb.q ], [ %i.ao, %bb.p ], [ %i.am, %bb.o ], [ %i.ah, %bb.n ], [ %.053, %sqlite3_value_bytes.exit82 ], [ %.053, %bb.ap ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !3497
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !3505 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dk = tail call fastcc i32 @sqlite3Fts5IndexQuery(ptr noundef %i.di, ptr noundef %.155.ph, i32 noundef %.1.ph, i32 noundef %.056.ph, ptr noundef null, ptr noundef nonnull %i.dj) ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %sqlite3_value_bytes.exit, label %.thread107

sqlite3_value_bytes.exit:                         ; preds = %bb.aq
  %i.dm = getelementptr i8, ptr %i.di, i64 160
  %.val = load ptr, ptr %i.dm, align 8, !tbaa !3095 ; 3 uses
  %i.dn = load i32, ptr %.val, align 8, !tbaa !576
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %.val, align 8, !tbaa !576
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.val, ptr %i.dp, align 8, !tbaa !3506
  %i.dq = icmp eq i32 %i.c, 2
  br i1 %i.dq, label %bb.ar, label %.thread.thread

bb.ar:                                            ; preds = %sqlite3_value_bytes.exit
  %i.dr = tail call fastcc i32 @fts5VocabInstanceNewTerm(ptr noundef nonnull %0) ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.thread, label %.thread107

.thread:                                          ; preds = %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !3507
  %.not67 = icmp eq i32 %i.du, 0
  br i1 %.not67, label %bb.as, label %.thread107

.thread.thread:                                   ; preds = %sqlite3_value_bytes.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !3507
  %.not67114 = icmp eq i32 %i.dw, 0
  br i1 %.not67114, label %.thread115, label %.thread107

bb.as:                                            ; preds = %.thread
  %i.dx = load ptr, ptr %i.df, align 8, !tbaa !3497
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !3061
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 116
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3111
  %.not69 = icmp eq i32 %i.eb, 1
  br i1 %.not69, label %.thread107, label %.thread115

.thread115:                                       ; preds = %.thread.thread, %bb.as
  %i.ec = tail call i32 @fts5VocabNextMethod(ptr noundef nonnull %0)
  br label %.thread107

.thread107:                                       ; preds = %.thread.thread, %bb.aq, %sqlite3_malloc64.exit, %sqlite3_malloc64.exit.thread, %.thread115, %bb.as, %.thread, %bb.ar
  %.4 = phi i32 [ 0, %.thread ], [ %i.ec, %.thread115 ], [ 0, %bb.as ], [ %i.dr, %bb.ar ], [ 7, %sqlite3_malloc64.exit.thread ], [ 7, %sqlite3_malloc64.exit ], [ %i.dk, %bb.aq ], [ 0, %.thread.thread ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal i32 @fts5VocabNextMethod(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3497 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3061 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3068 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3505
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3506
  %i.o = getelementptr i8, ptr %i.l, i64 160
  %.val = load ptr, ptr %i.o, align 8, !tbaa !3095
  %.not.i = icmp eq ptr %.val, %i.n
  br i1 %.not.i, label %bb.b, label %fts5VocabInstanceNext.exit

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !1889
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !3508
  %i.s = add nsw i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !3508
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3501 ; 2 uses
  switch i32 %i.u, label %.thread [
    i32 2, label %bb.c
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3111
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3509 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ab = icmp eq i32 %i.w, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ab, label %.critedge.us.i, label %.split.i

.critedge.us.i:                                   ; preds = %bb.c
  store i64 0, ptr %i.z, align 8, !tbaa !3510
  store i32 0, ptr %i.aa, align 8, !tbaa !3511
  %i.af = tail call fastcc i32 @sqlite3Fts5IterNextScan(ptr noundef %i.y), !inline_history !8044 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit.split.us.i, label %.thread.i

.loopexit.split.us.i:                             ; preds = %.critedge.us.i
  %i.ah = tail call fastcc i32 @fts5VocabInstanceNewTerm(ptr noundef nonnull %0), !inline_history !8044
  br label %fts5VocabInstanceNext.exit

.split.i:                                         ; preds = %bb.c, %bb.e
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !3314
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !3148
  %i.ak = tail call fastcc i32 @sqlite3Fts5PoslistNext64(ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.z), !inline_history !8044
  %.not.i130 = icmp eq i32 %i.ak, 0
  br i1 %.not.i130, label %fts5VocabInstanceNext.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.split.i
  store i64 0, ptr %i.z, align 8, !tbaa !3510
  store i32 0, ptr %i.aa, align 8, !tbaa !3511
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !3509
  %i.am = tail call fastcc i32 @sqlite3Fts5IterNextScan(ptr noundef %i.al), !inline_history !8044 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %.critedge.i
  %i.ao = tail call fastcc i32 @fts5VocabInstanceNewTerm(ptr noundef nonnull %0), !inline_history !8044 ; 3 uses
  %i.ap = load i32, ptr %i.ae, align 8, !tbaa !3507
  %.not25.i = icmp eq i32 %i.ap, 0
  br i1 %.not25.i, label %bb.e, label %fts5VocabInstanceNext.exit

bb.e:                                             ; preds = %bb.d
  %.not20.i = icmp eq i32 %i.ao, 0
  br i1 %.not20.i, label %.split.i, label %.thread.i, !llvm.loop !8045

.thread.i:                                        ; preds = %bb.e, %.critedge.i, %.critedge.us.i
  %.us-phi24.i = phi i32 [ %i.af, %.critedge.us.i ], [ %i.am, %.critedge.i ], [ %i.ao, %bb.e ]
  store i32 1, ptr %i.ae, align 8, !tbaa !3507
  br label %fts5VocabInstanceNext.exit

bb.f:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3512 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = sext i32 %i.ar to i64
  %i.au = sext i32 %i.j to i64                    ; 2 uses
  %i.av = add nsw i32 %i.ar, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.av)
  %indvars.iv.next245 = add nsw i64 %i.at, 1      ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next245, %i.au
  br i1 %i.aw, label %.lr.ph247.preheader, label %.thread226

.lr.ph247.preheader:                              ; preds = %bb.f
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !3500
  br label %.lr.ph247

bb.g:                                             ; preds = %.lr.ph247
  %indvars.iv.next = add nsw i64 %indvars.iv.next246, 1 ; 2 uses
  %i.ay = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.ay, label %.lr.ph247, label %.thread226, !llvm.loop !8046

.thread226:                                       ; preds = %bb.g, %bb.f
  store i32 %smax, ptr %i.aq, align 4, !tbaa !3512
  br label %.thread

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %bb.g
  %indvars.iv.next246 = phi i64 [ %indvars.iv.next, %bb.g ], [ %indvars.iv.next245, %.lr.ph247.preheader ] ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv.next246
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !571
  %.not108 = icmp eq i64 %i.ba, 0
  br i1 %.not108, label %bb.g, label %bb.h, !llvm.loop !8046

bb.h:                                             ; preds = %.lr.ph247
  %i.bb = trunc nsw i64 %indvars.iv.next246 to i32 ; 2 uses
  store i32 %i.bb, ptr %i.aq, align 4, !tbaa !3512
  %.not110 = icmp sgt i32 %i.j, %i.bb
  br i1 %.not110, label %.thread177.thread, label %.thread

.thread:                                          ; preds = %.thread226, %bb.b, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !3509 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !3307
  %.not111 = icmp eq i8 %i.bf, 0
  br i1 %.not111, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.bg, align 8, !tbaa !3507
  br label %.thread177

bb.j:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3309
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !3311
  %i.bl = zext i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [128 x i8], ptr %i.bd, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 200
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !3385
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !3386 ; 2 uses
  %i.br = add nsw i32 %i.bp, -1                   ; 7 uses
  %.not.i131 = icmp eq ptr %i.bq, null
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bt = select i1 %.not.i131, ptr null, ptr %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !3503 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %. = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3504
  %i.bz = sext i32 %. to i64
  %i.ca = tail call i32 @memcmp(ptr noundef %i.by, ptr noundef %i.bt, i64 noundef %i.bz) #60 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.critedge122, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = icmp eq i32 %i.ca, 0
  %i.cd = icmp slt i32 %i.bv, %i.br
  %or.cond183 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond183, label %.critedge122, label %bb.m

.critedge122:                                     ; preds = %bb.l, %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.ce, align 8, !tbaa !3507
  br label %fts5VocabInstanceNext.exit

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !3145
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %sqlite3Fts5BufferSet.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3219 ; 3 uses
  %.not14.i.i = icmp ugt i32 %i.br, %i.ci
  br i1 %.not14.i.i, label %bb.o, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.n
  %.pre.i.i = load ptr, ptr %i.cf, align 8, !tbaa !3146
  %.pre.i = zext i32 %i.br to i64
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  %narrow.i.i.i = select i1 %.not.i.i.i, i32 64, i32 %i.ci
  %spec.select.i.i.i = sext i32 %narrow.i.i.i to i64
  %i.cj = zext i32 %i.br to i64                   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.016.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.o ], [ %i.cl, %bb.p ] ; 4 uses
  %i.ck = icmp ult i64 %.016.i.i.i, %i.cj
  %i.cl = shl nuw nsw i64 %.016.i.i.i, 1
  br i1 %i.ck, label %bb.p, label %bb.q, !llvm.loop !447

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !3146
  %i.cn = tail call i32 @sqlite3_initialize(), !inline_history !512
  %.not.i.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i.i, label %sqlite3_realloc64.exit.i.i.i, label %sqlite3Fts5BufferSet.exit

sqlite3_realloc64.exit.i.i.i:                     ; preds = %bb.q
  %i.co = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.cm, i64 noundef %.016.i.i.i), !inline_history !512 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %sqlite3Fts5BufferSet.exit, label %sqlite3Fts5BufferSize.exit.thread.i.i

sqlite3Fts5BufferSize.exit.thread.i.i:            ; preds = %sqlite3_realloc64.exit.i.i.i
  %i.cq = trunc i64 %.016.i.i.i to i32
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !3219
  store ptr %i.co, ptr %i.cf, align 8, !tbaa !3146
  %.pre18.i.i = load i32, ptr %i.cg, align 8, !tbaa !3145
  %i.cr = sext i32 %.pre18.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %sqlite3Fts5BufferSize.exit.thread.i.i, %._crit_edge.i.i
  %.pre-phi.i = phi i64 [ %i.cj, %sqlite3Fts5BufferSize.exit.thread.i.i ], [ %.pre.i, %._crit_edge.i.i ]
  %i.cs = phi i64 [ %i.cr, %sqlite3Fts5BufferSize.exit.thread.i.i ], [ 0, %._crit_edge.i.i ]
  %i.ct = phi ptr [ %i.co, %sqlite3Fts5BufferSize.exit.thread.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr readonly align 1 %i.bt, i64 %.pre-phi.i, i1 false)
  %i.cv = load i32, ptr %i.cg, align 8, !tbaa !3145
  %i.cw = add i32 %i.cv, %i.br
  store i32 %i.cw, ptr %i.cg, align 8, !tbaa !3145
  br label %sqlite3Fts5BufferSet.exit

sqlite3Fts5BufferSet.exit:                        ; preds = %bb.q, %sqlite3_realloc64.exit.i.i.i, %bb.m, %bb.r
  %.old128 = phi i1 [ true, %bb.m ], [ true, %bb.r ], [ false, %sqlite3_realloc64.exit.i.i.i ], [ false, %bb.q ]
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.r ], [ 7, %sqlite3_realloc64.exit.i.i.i ], [ 7, %bb.q ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !3499
  %i.cz = sext i32 %i.j to i64                    ; 2 uses
  %i.da = shl nsw i64 %i.cz, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cy, i8 0, i64 %i.da, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !3500
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %i.da, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.dd, align 4, !tbaa !3512
  br i1 %.old128, label %.preheader191, label %fts5VocabInstanceNext.exit

.preheader191:                                    ; preds = %sqlite3Fts5BufferSet.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !3509
  %.pre208 = load i32, ptr %i.t, align 8, !tbaa !3501
  br label %bb.s

bb.s:                                             ; preds = %.preheader191, %1
  %i.df = phi i32 [ %.pre208, %.preheader191 ], [ %i.go, %1 ]
  %i.dg = phi ptr [ %.pre, %.preheader191 ], [ %i.gr, %1 ] ; 3 uses
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !3497
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !3061
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 116
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3111 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store i64 0, ptr %i.c, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 0, ptr %i.d, align 4, !tbaa !576
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !3314 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !3148 ; 6 uses
  switch i32 %i.df, label %.thread160 [
    i32 1, label %bb.t
    i32 0, label %bb.ah
  ]

bb.t:                                             ; preds = %bb.s
  %i.dq = icmp eq i32 %i.dl, 0
  br i1 %i.dq, label %bb.u, label %.thread160.sink.split

bb.u:                                             ; preds = %bb.t
  %i.dr = load i32, ptr %i.de, align 8, !tbaa !3502
  %i.ds = and i32 %i.dr, 4
  %.not115 = icmp ne i32 %i.ds, 0
  %i.dt = sext i32 %i.dp to i64
  %i.du = icmp sgt i32 %i.dp, 0
  %or.cond = select i1 %.not115, i1 %i.du, i1 false
  br i1 %or.cond, label %.preheader186, label %.thread160.sink.split

.preheader186:                                    ; preds = %bb.u, %bb.ag
  %i.dv = phi i64 [ %i.fj, %bb.ag ], [ 0, %bb.u ] ; 3 uses
  %i.dw = add nsw i64 %i.dv, 1
  %i.dx = getelementptr inbounds i8, ptr %i.dn, i64 %i.dv ; 4 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !741 ; 2 uses
  %i.dz = zext i8 %i.dy to i32                    ; 3 uses
  %.not116 = icmp sgt i8 %i.dy, -1
  br i1 %.not116, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %.preheader186
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !741 ; 2 uses
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %.not27.i = icmp sgt i8 %i.eb, -1
  br i1 %.not27.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ed = shl nuw nsw i32 %i.dz, 7
  %i.ee = and i32 %i.ed, 16256
  %i.ef = or disjoint i32 %i.ee, %i.ec
  br label %sqlite3Fts5GetVarint32.exit

bb.x:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !741 ; 2 uses
  %.not28.i = icmp sgt i8 %i.eh, -1
  br i1 %.not28.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.dz, 14
  %.masked.i = and i32 %i.ej, 2080768
  %i.ek = shl nuw nsw i32 %i.ec, 7
  %i.el = and i32 %i.ek, 16256
  %i.em = or disjoint i32 %i.el, %.masked.i
  %i.en = or disjoint i32 %i.em, %i.ei
  br label %sqlite3Fts5GetVarint32.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.eo = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.dx, ptr noundef nonnull %i.b)
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !571
  %i.eq = trunc i64 %i.ep to i32
  %i.er = and i32 %i.eq, 2147483647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.es = zext nneg i8 %i.eo to i64
  br label %sqlite3Fts5GetVarint32.exit

sqlite3Fts5GetVarint32.exit:                      ; preds = %bb.w, %bb.y, %bb.z
  %.1151 = phi i32 [ %i.er, %bb.z ], [ %i.ef, %bb.w ], [ %i.en, %bb.y ]
  %.0.i = phi i64 [ %i.es, %bb.z ], [ 2, %bb.w ], [ 3, %bb.y ]
  %i.et = add nsw i64 %.0.i, %i.dv
  br label %bb.aa

bb.aa:                                            ; preds = %sqlite3Fts5GetVarint32.exit, %.preheader186
  %i.eu = phi i64 [ %i.dw, %.preheader186 ], [ %i.et, %sqlite3Fts5GetVarint32.exit ] ; 4 uses
  %.0150 = phi i32 [ %i.dz, %.preheader186 ], [ %.1151, %sqlite3Fts5GetVarint32.exit ]
  %i.ev = icmp eq i32 %.0150, 1
  br i1 %i.ev, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ew = add nsw i64 %i.eu, 1
  %i.ex = getelementptr inbounds i8, ptr %i.dn, i64 %i.eu ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !741
  %.not117 = icmp sgt i8 %i.ey, -1
  br i1 %.not117, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !741
  %.not27.i134 = icmp sgt i8 %i.fa, -1
  br i1 %.not27.i134, label %sqlite3Fts5GetVarint32.exit138, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !741
  %.not28.i135 = icmp sgt i8 %i.fc, -1
  br i1 %.not28.i135, label %sqlite3Fts5GetVarint32.exit138, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.fd = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.ex, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.fe = zext nneg i8 %i.fd to i64
  br label %sqlite3Fts5GetVarint32.exit138

sqlite3Fts5GetVarint32.exit138:                   ; preds = %bb.ad, %bb.ac, %bb.ae
  %.0.i136 = phi i64 [ %i.fe, %bb.ae ], [ 2, %bb.ac ], [ 3, %bb.ad ]
  %i.ff = add nsw i64 %.0.i136, %i.eu
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.cx, align 8, !tbaa !3499 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !571
  %i.fi = add nsw i64 %i.fh, 1
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !571
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %sqlite3Fts5GetVarint32.exit138, %bb.af
  %i.fj = phi i64 [ %i.ew, %bb.ab ], [ %i.ff, %sqlite3Fts5GetVarint32.exit138 ], [ %i.eu, %bb.af ] ; 2 uses
  %.old124 = icmp slt i64 %i.fj, %i.dt
  br i1 %.old124, label %.preheader186, label %.thread160.sink.split

bb.ah:                                            ; preds = %bb.s
  switch i32 %i.dl, label %.thread160.sink.split [
    i32 0, label %.preheader187
    i32 2, label %.preheader188
  ]

.preheader188:                                    ; preds = %bb.ah
  %i.fk = call fastcc i32 @sqlite3Fts5PoslistNext64(ptr noundef %i.dn, i32 noundef %i.dp, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph, label %.thread160

.preheader187:                                    ; preds = %bb.ah
  %i.fm = call fastcc i32 @sqlite3Fts5PoslistNext64(ptr noundef %i.dn, i32 noundef %i.dp, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph194, label %.thread160

.lr.ph194:                                        ; preds = %.preheader187, %bb.ak
  %.0193 = phi i32 [ %.1, %bb.ak ], [ -1, %.preheader187 ] ; 2 uses
  %i.fo = load i64, ptr %i.c, align 8, !tbaa !571
  %i.fp = lshr i64 %i.fo, 32                      ; 3 uses
  %i.fq = trunc nuw i64 %i.fp to i32
  %i.fr = and i32 %i.fq, 2147483647               ; 3 uses
  %.not113 = icmp eq i32 %.0193, %i.fr
  br i1 %.not113, label %.lr.ph194._crit_edge, label %bb.ai

.lr.ph194._crit_edge:                             ; preds = %.lr.ph194
  %.pre209 = and i64 %i.fp, 2147483647
  br label %bb.ak

bb.ai:                                            ; preds = %.lr.ph194
  %.not114 = icmp slt i32 %i.fr, %i.j
  br i1 %.not114, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.fs = load ptr, ptr %i.db, align 8, !tbaa !3500
  %i.ft = and i64 %i.fp, 2147483647               ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ft ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !571
  %i.fw = add nsw i64 %i.fv, 1
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !571
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph194._crit_edge, %bb.aj
  %.pre-phi = phi i64 [ %.pre209, %.lr.ph194._crit_edge ], [ %i.ft, %bb.aj ]
  %.1 = phi i32 [ %.0193, %.lr.ph194._crit_edge ], [ %i.fr, %bb.aj ]
  %i.fx = load ptr, ptr %i.cx, align 8, !tbaa !3499
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.pre-phi ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !571
  %i.ga = add nsw i64 %i.fz, 1
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !571
  %i.gb = call fastcc i32 @sqlite3Fts5PoslistNext64(ptr noundef %i.dn, i32 noundef %i.dp, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph194, label %.thread160

.lr.ph:                                           ; preds = %.preheader188, %bb.al
  %i.gd = load i64, ptr %i.c, align 8, !tbaa !571 ; 2 uses
  %.not112 = icmp slt i64 %i.gd, %i.cz
  br i1 %.not112, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %.lr.ph
  %i.ge = load ptr, ptr %i.db, align 8, !tbaa !3500
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gd ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !571
  %i.gh = add nsw i64 %i.gg, 1
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !571
  %i.gi = call fastcc i32 @sqlite3Fts5PoslistNext64(ptr noundef %i.dn, i32 noundef %i.dp, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph, label %.thread160, !llvm.loop !8047

.thread160.sink.split:                            ; preds = %bb.ag, %bb.ah, %bb.t, %bb.u
  %i.gk = load ptr, ptr %i.db, align 8, !tbaa !3500 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !571
  %i.gm = add nsw i64 %i.gl, 1
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !571
  br label %.thread160

.thread160:                                       ; preds = %bb.al, %bb.ak, %.thread160.sink.split, %.preheader188, %.preheader187, %bb.s
  %i.gn = tail call fastcc i32 @sqlite3Fts5IterNextScan(ptr noundef %i.dg) ; 3 uses
  %i.go = load i32, ptr %i.t, align 8, !tbaa !3501 ; 4 uses
  %i.gp = icmp ne i32 %i.go, 2
  %i.gq = icmp eq i32 %i.gn, 0
  %or.cond185 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond185, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %.thread160
  %i.gr = load ptr, ptr %i.bc, align 8, !tbaa !3509 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !3309
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !3311
  %i.gw = zext i16 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [128 x i8], ptr %i.gr, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 200
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 208
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !3385 ; 2 uses
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !3386 ; 2 uses
  %i.hc = add nsw i32 %i.ha, -1                   ; 2 uses
  %.not.i139 = icmp eq ptr %i.hb, null
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.he = select i1 %.not.i139, ptr null, ptr %i.hd
  %i.hf = load i32, ptr %i.cg, align 8, !tbaa !3513
  %.not118 = icmp eq i32 %i.hc, %i.hf
  br i1 %.not118, label %bb.an, label %.thread173

bb.an:                                            ; preds = %bb.am
  %i.hg = icmp sgt i32 %i.ha, 1
  br i1 %i.hg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hh = load ptr, ptr %i.cf, align 8, !tbaa !3514
  %i.hi = zext nneg i32 %i.hc to i64
  %bcmp = tail call i32 @bcmp(ptr %i.he, ptr %i.hh, i64 %i.hi)
  %.not119 = icmp eq i32 %bcmp, 0
  br i1 %.not119, label %bb.ap, label %.thread173

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 20
  %i.hk = load i8, ptr %i.hj, align 4, !tbaa !3307
  %.not120 = icmp eq i8 %i.hk, 0
  br i1 %.not120, label %1, label %.thread173

1:                                                ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %bb.s

.thread173:                                       ; preds = %bb.ap, %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %.thread177

bb.aq:                                            ; preds = %.lr.ph, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %fts5VocabInstanceNext.exit

bb.ar:                                            ; preds = %.thread160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  %i.hl = icmp eq i32 %i.gn, 0
  br i1 %i.hl, label %.thread177, label %fts5VocabInstanceNext.exit

.thread177:                                       ; preds = %bb.i, %.thread173, %bb.ar
  %2 = phi i32 [ %i.go, %.thread173 ], [ %i.go, %bb.ar ], [ %i.u, %bb.i ]
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !3507
  %i.ho = or i32 %i.hn, %2
  %or.cond238 = icmp eq i32 %i.ho, 0
  br i1 %or.cond238, label %.preheader, label %fts5VocabInstanceNext.exit

.thread177.thread:                                ; preds = %bb.h
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i32, ptr %3, align 8, !tbaa !3507
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.preheader, label %fts5VocabInstanceNext.exit

.preheader:                                       ; preds = %.thread177, %.thread177.thread
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.promoted196 = load i32, ptr %i.hp, align 4, !tbaa !3512 ; 3 uses
  %i.hq = icmp slt i32 %.promoted196, %i.j
  br i1 %i.hq, label %.lr.ph197, label %.critedge

.lr.ph197:                                        ; preds = %.preheader
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !3500
  %i.ht = sext i32 %.promoted196 to i64
  %wide.trip.count = sext i32 %i.j to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph197, %bb.at
  %indvars.iv205 = phi i64 [ %i.ht, %.lr.ph197 ], [ %indvars.iv.next206, %bb.at ] ; 3 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv205
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !571
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %bb.at, label %.critedge.loopexit.split.loop.exit234

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.hx = trunc nsw i64 %indvars.iv.next206 to i32
  store i32 %i.hx, ptr %i.hp, align 4, !tbaa !3512
  %exitcond.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.as, !llvm.loop !8048

.critedge.loopexit.split.loop.exit234:            ; preds = %bb.as
  %i.hy = trunc nsw i64 %indvars.iv205 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %.critedge.loopexit.split.loop.exit234, %.preheader
  %.lcssa = phi i32 [ %.promoted196, %.preheader ], [ %i.hy, %.critedge.loopexit.split.loop.exit234 ], [ %i.j, %bb.at ]
  %i.hz = icmp eq i32 %.lcssa, %i.j
  %spec.select = select i1 %i.hz, i32 267, i32 0
  br label %fts5VocabInstanceNext.exit

fts5VocabInstanceNext.exit:                       ; preds = %bb.d, %.split.i, %.thread177.thread, %bb.aq, %.critedge, %sqlite3Fts5BufferSet.exit, %bb.ar, %.thread177, %.thread.i, %.loopexit.split.us.i, %.critedge122, %bb.a
  %.396 = phi i32 [ 0, %.critedge122 ], [ 4, %bb.a ], [ 0, %.thread177 ], [ %.us-phi24.i, %.thread.i ], [ %i.ah, %.loopexit.split.us.i ], [ %i.gn, %bb.ar ], [ %.8, %sqlite3Fts5BufferSet.exit ], [ %spec.select, %.critedge ], [ 0, %.thread177.thread ], [ 267, %bb.aq ], [ 0, %.split.i ], [ %i.ao, %bb.d ]
  ret i32 %.396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fts5VocabEofMethod(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3507
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fts5VocabColumnMethod(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3497
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3061 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3111 ; 3 uses
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3514
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3513
  tail call fastcc void @setResultStrOrError(ptr noundef %1, ptr noundef %i.i, i32 noundef %i.k, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  br label %sqlite3_result_int64.exit49

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !1889
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !3501
  switch i32 %i.n, label %bb.l [
    i32 0, label %bb.d
    i32 1, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %sqlite3_result_int64.exit49, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3204
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3512
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !747
  tail call fastcc void @setResultStrOrError(ptr noundef %1, ptr noundef %i.u, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  br label %sqlite3_result_int64.exit49

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3500
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3512
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.z
  br label %sqlite3_result_int64.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3499
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3512
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.af
  br label %sqlite3_result_int64.exit

bb.i:                                             ; preds = %bb.c
  %i.ah = icmp eq i32 %2, 1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3500
  br label %sqlite3_result_int64.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3499
  br label %sqlite3_result_int64.exit

bb.l:                                             ; preds = %bb.c
  switch i32 %2, label %bb.t [
    i32 1, label %bb.m
    i32 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3509
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !3313 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !767   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !694
  %i.as = and i16 %i.ar, -28672
  %.not.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ap, i64 noundef %i.ao)
  br label %sqlite3_result_int64.exit49

bb.o:                                             ; preds = %bb.m
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !741
  store i16 4, ptr %i.aq, align 4, !tbaa !694
  br label %sqlite3_result_int64.exit49

bb.p:                                             ; preds = %bb.l
  switch i32 %i.f, label %sqlite3_result_int64.exit49 [
    i32 0, label %.thread
    i32 2, label %bb.q
  ]

.thread:                                          ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load i64, ptr %i.at, align 8, !tbaa !3510
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 2147483647
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !3510
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.r, label %sqlite3_result_int64.exit49

bb.r:                                             ; preds = %.thread, %bb.q
  %.051 = phi i32 [ %i.ax, %.thread ], [ %i.ba, %bb.q ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3068
  %i.be = icmp slt i32 %.051, %i.bd
  br i1 %i.be, label %bb.s, label %sqlite3_result_int64.exit49

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !3204
  %i.bh = zext nneg i32 %.051 to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !747
  tail call fastcc void @setResultStrOrError(ptr noundef %1, ptr noundef %i.bj, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  br label %sqlite3_result_int64.exit49

bb.t:                                             ; preds = %bb.l
  %i.bk = icmp eq i32 %i.f, 0
  br i1 %i.bk, label %bb.u, label %sqlite3_result_int64.exit49

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !3510
  %i.bn = and i64 %i.bm, 2147483647               ; 2 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !767   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !694
  %i.br = and i16 %i.bq, -28672
  %.not.i.i47 = icmp eq i16 %i.br, 0
  br i1 %.not.i.i47, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bo, i64 noundef %i.bn)
  br label %sqlite3_result_int64.exit49

bb.w:                                             ; preds = %bb.u
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !741
  store i16 4, ptr %i.bp, align 4, !tbaa !694
  br label %sqlite3_result_int64.exit49

sqlite3_result_int64.exit:                        ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.043.in = phi ptr [ %i.ag, %bb.h ], [ %i.aj, %bb.j ], [ %i.al, %bb.k ], [ %i.aa, %bb.g ]
  %.043 = load i64, ptr %.043.in, align 8, !tbaa !571 ; 3 uses
  %i.bs = icmp sgt i64 %.043, 0
  br i1 %i.bs, label %bb.x, label %sqlite3_result_int64.exit49

bb.x:                                             ; preds = %sqlite3_result_int64.exit
  %i.bt = load ptr, ptr %1, align 8, !tbaa !767   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !694
  %i.bw = and i16 %i.bv, -28672
  %.not.i.i48 = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bt, i64 noundef %.043)
  br label %sqlite3_result_int64.exit49

bb.z:                                             ; preds = %bb.x
  store i64 %.043, ptr %i.bt, align 8, !tbaa !741
end_hunk_3
