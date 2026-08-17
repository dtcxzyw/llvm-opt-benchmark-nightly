inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@recoverStep:bb.a
recoverPrepare.exit.i.i:                          ; preds = %bb.dt, %bb.ds, %._crit_edge.i.i95
  %i.sj = load ptr, ptr %i.i, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @sqlite3_free(ptr noundef %.156.lcssa.i.i) #45
  call void @sqlite3_free(ptr noundef %.2.lcssa.i.i) #45
  call void @sqlite3_free(ptr noundef %i.sa) #45
  %.pre.i96 = load i32, ptr %i.pu, align 8, !tbaa !506
  br label %recoverInsertStmt.exit.i

recoverInsertStmt.exit.i:                         ; preds = %recoverPrepare.exit.i.i, %recoverFinalize.exit141.i
  %i.sk = phi i32 [ %.pre.i96, %recoverPrepare.exit.i.i ], [ %i.qj, %recoverFinalize.exit141.i ] ; 2 uses
  %.0.i143.i = phi ptr [ %i.sj, %recoverPrepare.exit.i.i ], [ null, %recoverFinalize.exit141.i ] ; 2 uses
  store ptr %.0.i143.i, ptr %i.px, align 8, !tbaa !505
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.sk, ptr %i.sl, align 8, !tbaa !510
  br label %thread-pre-split150.i

thread-pre-split150.i:                            ; preds = %recoverInsertStmt.exit.i, %bb.di
  %i.sm = phi ptr [ %.0.i143.i, %recoverInsertStmt.exit.i ], [ %i.py, %bb.di ] ; 9 uses
  %i.sn = phi i32 [ %i.sk, %recoverInsertStmt.exit.i ], [ %i.pv, %bb.di ]
  %i.so = icmp sgt i32 %i.sn, 0
  br i1 %i.so, label %bb.du, label %bb.en

bb.du:                                            ; preds = %thread-pre-split150.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !482
  %i.sr = icmp sgt i32 %i.sq, 0
  br i1 %i.sr, label %.lr.ph.i102, label %._crit_edge.i98

.lr.ph.i102:                                      ; preds = %bb.du
  %i.ss = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.dv

bb.dv:                                            ; preds = %recoverBindValue.exit.i, %.lr.ph.i102
  %indvars.iv.i103 = phi i64 [ 0, %.lr.ph.i102 ], [ %indvars.iv.next.i104, %recoverBindValue.exit.i ] ; 2 uses
  %i.su = load ptr, ptr %i.ss, align 8, !tbaa !478
  %i.sv = getelementptr inbounds nuw [32 x i8], ptr %i.su, i64 %indvars.iv.i103 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !488 ; 3 uses
  %i.sy = icmp sgt i32 %i.sx, 0
  br i1 %i.sy, label %bb.dw, label %recoverBindValue.exit.i

bb.dw:                                            ; preds = %bb.dv
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !493
  %.not138.i = icmp eq i32 %i.ta, 0
  br i1 %.not138.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tb = load i64, ptr %i.st, align 8, !tbaa !512
  %i.tc = call i32 @sqlite3_bind_int64(ptr noundef %i.sm, i32 noundef %i.sx, i64 noundef %i.tb) #45 ; 0 uses
  br label %recoverBindValue.exit.i

bb.dy:                                            ; preds = %bb.dw
  %i.td = load i32, ptr %i.sv, align 8, !tbaa !487 ; 2 uses
  %i.te = load i32, ptr %i.pu, align 8, !tbaa !506
  %i.tf = icmp slt i32 %i.td, %i.te
  br i1 %i.tf, label %bb.dz, label %recoverBindValue.exit.i

bb.dz:                                            ; preds = %bb.dy
  %i.tg = load i32, ptr %i.ny, align 8, !tbaa !451
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.ea, label %recoverBindValue.exit.i

bb.ea:                                            ; preds = %bb.dz
  %i.ti = sext i32 %i.td to i64
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !154
  %i.tl = call i32 @sqlite3_bind_value(ptr noundef %i.sm, i32 noundef range(i32 -2147483643, -2147483648) %i.sx, ptr noundef %i.tk) #45 ; 2 uses
  %.not.i145.i = icmp eq i32 %i.tl, 0
  br i1 %.not.i145.i, label %recoverBindValue.exit.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tm = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.tl, ptr noundef null) ; 0 uses
  br label %recoverBindValue.exit.i

recoverBindValue.exit.i:                          ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dv
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %i.tn = load i32, ptr %i.sp, align 8, !tbaa !482
  %i.to = sext i32 %i.tn to i64
  %i.tp = icmp slt i64 %indvars.iv.next.i104, %i.to
  br i1 %i.tp, label %bb.dv, label %._crit_edge.i98, !llvm.loop !513

._crit_edge.i98:                                  ; preds = %recoverBindValue.exit.i, %bb.du
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !450
  %.not134.i = icmp eq i32 %i.tr, 0
  br i1 %.not134.i, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i98
  %i.ts = getelementptr inbounds nuw i8, ptr %i.pl, i64 36
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !494 ; 2 uses
  %i.tu = icmp sgt i32 %i.tt, 0
  br i1 %i.tu, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !507
  %.not135.i = icmp eq i32 %i.tw, 0
  br i1 %.not135.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !512
  %i.tz = call i32 @sqlite3_bind_int64(ptr noundef %i.sm, i32 noundef %i.tt, i64 noundef %i.ty) #45 ; 0 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.ec, %._crit_edge.i98
  %i.ua = call i32 @sqlite3_step(ptr noundef %i.sm) #45
  %i.ub = icmp eq i32 %i.ua, 100
  br i1 %i.ub, label %bb.eg, label %recoverSqlCallback.exit.i99

bb.eg:                                            ; preds = %bb.ef
  %i.uc = call ptr @sqlite3_column_text(ptr noundef %i.sm, i32 noundef 0) #45
  %i.ud = load i32, ptr %i.ny, align 8, !tbaa !451
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.eh, label %recoverSqlCallback.exit.i99

bb.eh:                                            ; preds = %bb.eg
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !448 ; 2 uses
  %.not.i146.i = icmp eq ptr %i.ug, null
  br i1 %.not.i146.i, label %recoverSqlCallback.exit.i99, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !449
  %i.uj = call i32 %i.ug(ptr noundef %i.ui, ptr noundef %i.uc) #45, !inline_history !514 ; 2 uses
  %.not8.i.i101 = icmp eq i32 %i.uj, 0
  br i1 %.not8.i.i101, label %recoverSqlCallback.exit.i99, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.uk = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.685, i32 noundef %i.uj) ; 0 uses
  br label %recoverSqlCallback.exit.i99

recoverSqlCallback.exit.i99:                      ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef
  %i.ul = call i32 @sqlite3_reset(ptr noundef %i.sm) #45
  switch i32 %i.ul, label %bb.ek [
    i32 19, label %recoverReset.exit.i100
    i32 0, label %recoverReset.exit.i100
  ]

bb.ek:                                            ; preds = %recoverSqlCallback.exit.i99
  %i.um = load i32, ptr %i.ny, align 8, !tbaa !451
  %i.un = icmp eq i32 %i.um, 0
  br i1 %i.un, label %bb.el, label %recoverReset.exit.i100

bb.el:                                            ; preds = %bb.ek
  %i.uo = call ptr @sqlite3_db_handle(ptr noundef %i.sm) #45 ; 2 uses
  %i.up = call i32 @sqlite3_errcode(ptr noundef %i.uo) #45
  %i.uq = call ptr @sqlite3_errmsg(ptr noundef %i.uo) #45
  %i.ur = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.up, ptr noundef nonnull @.str.51, ptr noundef %i.uq) ; 0 uses
  br label %recoverReset.exit.i100

recoverReset.exit.i100:                           ; preds = %bb.el, %bb.ek, %recoverSqlCallback.exit.i99, %recoverSqlCallback.exit.i99
  %.not136.i = icmp eq ptr %i.sm, null
  br i1 %.not136.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %recoverReset.exit.i100
  %i.us = call i32 @sqlite3_clear_bindings(ptr noundef nonnull %i.sm) #45 ; 0 uses
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %recoverReset.exit.i100, %thread-pre-split150.i
  %.pr.i97 = load i32, ptr %i.pu, align 8, !tbaa !506
  %i.ut = icmp sgt i32 %.pr.i97, 0
  br i1 %i.ut, label %.lr.ph157.i, label %._crit_edge158.i

.lr.ph157.i:                                      ; preds = %bb.en, %.lr.ph157.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %.lr.ph157.i ], [ 0, %bb.en ] ; 2 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv161.i ; 2 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !154
  call void @sqlite3_value_free(ptr noundef %i.uv) #45
  store ptr null, ptr %i.uu, align 8, !tbaa !154
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %i.uw = load i32, ptr %i.pu, align 8, !tbaa !506
  %i.ux = sext i32 %i.uw to i64
  %i.uy = icmp slt i64 %indvars.iv.next162.i, %i.ux
  br i1 %i.uy, label %.lr.ph157.i, label %._crit_edge158.i, !llvm.loop !515

._crit_edge158.i:                                 ; preds = %.lr.ph157.i, %bb.en, %.critedge.i
  store i32 -1, ptr %i.pu, align 8, !tbaa !506
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.uz, align 4, !tbaa !507
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge158.i, %bb.dg
  %.not137.i = icmp eq i64 %i.pm, 0
  br i1 %.not137.i, label %recoverWriteDataStep.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.va = icmp slt i32 %i.po, 0
  br i1 %i.va, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.vb = call i64 @sqlite3_column_int64(ptr noundef %i.nv, i32 noundef 3) #45
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.vb, ptr %i.vc, align 8, !tbaa !512
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.vd, align 8, !tbaa !506
  br label %bb.ew

bb.er:                                            ; preds = %bb.ep
  %i.ve = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !482 ; 2 uses
  %i.vg = icmp slt i32 %i.po, %i.vf
  br i1 %i.vg, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.vh = call ptr @sqlite3_value_dup(ptr noundef %i.pp) #45 ; 2 uses
  %i.vi = zext nneg i32 %i.po to i64
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.vi
  store ptr %i.vh, ptr %i.vj, align 8, !tbaa !154
  %i.vk = icmp eq ptr %i.vh, null
  br i1 %i.vk, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.vl = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef 7, ptr noundef null) ; 0 uses
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.vm = add nuw nsw i32 %i.po, 1
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er
  %i.vn = icmp eq i32 %i.vf, 0
  br i1 %i.vn, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.eq
  %.sink184.i = phi i64 [ 176, %bb.eu ], [ 180, %bb.eq ], [ 176, %bb.ev ]
  %.sink.i = phi i32 [ %i.vm, %bb.eu ], [ 1, %bb.eq ], [ 0, %bb.ev ]
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink184.i
  store i32 %.sink.i, ptr %i.vo, align 4, !tbaa !17
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.pn, ptr %i.vp, align 8, !tbaa !509
  store i64 %i.pm, ptr %i.pq, align 8, !tbaa !508
  br label %recoverWriteDataStep.exit

.thread149.i:                                     ; preds = %.thread179.i, %bb.de, %recoverWriteDataInit.exit
  %i.vq = call i32 @sqlite3_reset(ptr noundef %i.nv) #45
  switch i32 %i.vq, label %bb.ey [
    i32 19, label %recoverReset.exit147.i
    i32 0, label %recoverReset.exit147.i
  ]

bb.ey:                                            ; preds = %.thread149.i
  %i.vr = load i32, ptr %i.ny, align 8, !tbaa !451
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.ez, label %recoverReset.exit147.i

bb.ez:                                            ; preds = %bb.ey
  %i.vt = call ptr @sqlite3_db_handle(ptr noundef %i.nv) #45 ; 2 uses
  %i.vu = call i32 @sqlite3_errcode(ptr noundef %i.vt) #45
  %i.vv = call ptr @sqlite3_errmsg(ptr noundef %i.vt) #45
  %i.vw = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.vu, ptr noundef nonnull @.str.51, ptr noundef %i.vv) ; 0 uses
  br label %recoverReset.exit147.i

recoverReset.exit147.i:                           ; preds = %bb.ez, %bb.ey, %.thread149.i, %.thread149.i
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.vx, align 8, !tbaa !503
  br label %recoverWriteDataStep.exit

recoverWriteDataStep.exit:                        ; preds = %recoverFinalize.exit.i110, %bb.eo, %bb.ex, %recoverReset.exit147.i
  %i.vy = load i32, ptr %i.ny, align 8, !tbaa !451
  %i.vz = icmp eq i32 %i.vy, 101
  br i1 %i.vz, label %recoverWriteDataStep.exit.thread, label %recoverLostAndFound1Step.exit.thread

recoverWriteDataStep.exit.thread:                 ; preds = %bb.cx, %recoverWriteDataStep.exit
  call fastcc void @recoverWriteDataCleanup(ptr noundef %0)
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !455
  %.not = icmp eq ptr %i.wb, null
  br i1 %.not, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %recoverWriteDataStep.exit.thread
  store i32 2, ptr %i.t, align 8, !tbaa !453
  br label %recoverLostAndFound1Step.exit.thread

bb.fb:                                            ; preds = %recoverWriteDataStep.exit.thread
  store i32 5, ptr %i.t, align 8, !tbaa !453
  br label %recoverLostAndFound1Step.exit.thread

bb.fc:                                            ; preds = %bb.a
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !516
  %i.we = icmp eq ptr %i.wd, null
  br i1 %i.we, label %bb.fd, label %bb.fj

bb.fd:                                            ; preds = %bb.fc
  %i.wf = tail call fastcc i64 @recoverPageCount(ptr noundef nonnull %0) ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.wf, ptr %i.wg, align 8, !tbaa !517
  %i.wh = add nsw i64 %i.wf, 32
  %i.wi = sdiv i64 %i.wh, 32
  %.tr.i.i = trunc i64 %i.wi to i32
  %i.wj = shl i32 %.tr.i.i, 2
  %i.wk = add i32 %i.wj, 16
  %i.wl = sext i32 %i.wk to i64                   ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !451
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %bb.fe, label %recoverBitmapAlloc.exit.thread.i

bb.fe:                                            ; preds = %bb.fd
  %i.wp = tail call ptr @sqlite3_malloc64(i64 noundef range(i64 -17179869184, 17179869177) %i.wl) #45 ; 4 uses
  %.not.i.i.i113 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.i113, label %bb.ff, label %recoverBitmapAlloc.exit.i

bb.ff:                                            ; preds = %bb.fe
  store i32 7, ptr %i.wm, align 8, !tbaa !451
  br label %recoverBitmapAlloc.exit.thread.i

recoverBitmapAlloc.exit.thread.i:                 ; preds = %bb.ff, %bb.fd
  store ptr null, ptr %i.wc, align 8, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  br label %recoverPrepare.exit.thread.i112

recoverBitmapAlloc.exit.i:                        ; preds = %bb.fe
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.wp, i8 0, i64 range(i64 -17179869184, 17179869177) %i.wl, i1 false)
  store i64 %i.wf, ptr %i.wp, align 8, !tbaa !159
  %.pr.i114 = load i32, ptr %i.wm, align 8, !tbaa !451
  store ptr %i.wp, ptr %i.wc, align 8, !tbaa !518
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !464 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  store ptr null, ptr %i.h, align 8, !tbaa !110
  %i.ws = icmp eq i32 %.pr.i114, 0
  br i1 %i.ws, label %bb.fg, label %recoverPrepare.exit.thread.i112

bb.fg:                                            ; preds = %recoverBitmapAlloc.exit.i
  %i.wt = call i32 @sqlite3_prepare_v2(ptr noundef %i.wr, ptr noundef nonnull @.str.734, i32 noundef -1, ptr noundef nonnull %i.h, ptr noundef null) #45
  %.not.i.i115 = icmp eq i32 %i.wt, 0
  br i1 %.not.i.i115, label %recoverPrepare.exit.i116, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.wu = call i32 @sqlite3_errcode(ptr noundef %i.wr) #45
  %i.wv = call ptr @sqlite3_errmsg(ptr noundef %i.wr) #45
  %i.ww = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.wu, ptr noundef nonnull @.str.51, ptr noundef %i.wv) ; 0 uses
  br label %recoverPrepare.exit.i116

recoverPrepare.exit.thread.i112:                  ; preds = %recoverBitmapAlloc.exit.i, %recoverBitmapAlloc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  br label %recoverLostAndFound1Init.exit

recoverPrepare.exit.i116:                         ; preds = %bb.fh, %bb.fg
  %.pr14.i = load ptr, ptr %i.h, align 8, !tbaa !110 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  %.not.i117 = icmp eq ptr %.pr14.i, null
  br i1 %.not.i117, label %recoverLostAndFound1Init.exit, label %bb.fi

bb.fi:                                            ; preds = %recoverPrepare.exit.i116
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !456
  %i.wz = call i32 @sqlite3_bind_int(ptr noundef nonnull %.pr14.i, i32 noundef 1, i32 noundef %i.wy) #45 ; 0 uses
  br label %recoverLostAndFound1Init.exit

recoverLostAndFound1Init.exit:                    ; preds = %recoverPrepare.exit.thread.i112, %recoverPrepare.exit.i116, %bb.fi
  %i.xa = phi ptr [ null, %recoverPrepare.exit.thread.i112 ], [ %.pr14.i, %bb.fi ], [ null, %recoverPrepare.exit.i116 ]
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.xa, ptr %i.xb, align 8, !tbaa !519
  br label %bb.fj

bb.fj:                                            ; preds = %recoverLostAndFound1Init.exit, %bb.fc
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !451 ; 2 uses
  %i.xe = icmp eq i32 %i.xd, 0
  br i1 %i.xe, label %bb.fk, label %recoverLostAndFound1Step.exit

bb.fk:                                            ; preds = %bb.fj
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !519
  %i.xh = call i32 @sqlite3_step(ptr noundef %i.xg) #45 ; 2 uses
  %i.xi = icmp eq i32 %i.xh, 100
  %i.xj = load ptr, ptr %i.xf, align 8, !tbaa !519 ; 3 uses
  br i1 %i.xi, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.xk = call i64 @sqlite3_column_int64(ptr noundef %i.xj, i32 noundef 0) #45 ; 3 uses
  %i.xl = load ptr, ptr %i.wc, align 8, !tbaa !518 ; 2 uses
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !159
  %.not.i.i120 = icmp sgt i64 %i.xk, %i.xm
  br i1 %.not.i.i120, label %recoverLostAndFound1Step.exit.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xn = sdiv i64 %i.xk, 32
  %i.xo = srem i64 %i.xk, 32
  %i.xp = trunc nsw i64 %i.xo to i32
  %i.xq = shl nuw i32 1, %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %sext.i.i = shl i64 %i.xn, 32
  %i.xs = ashr exact i64 %sext.i.i, 30
  %i.xt = getelementptr inbounds i8, ptr %i.xr, i64 %i.xs ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !17
  %i.xv = or i32 %i.xu, %i.xq
  store i32 %i.xv, ptr %i.xt, align 4, !tbaa !17
  br label %recoverLostAndFound1Step.exit.thread

bb.fn:                                            ; preds = %bb.fk
  %i.xw = call ptr @sqlite3_db_handle(ptr noundef %i.xj) #45 ; 2 uses
  %i.xx = call i32 @sqlite3_finalize(ptr noundef %i.xj) #45
  %.not.i13.i = icmp eq i32 %i.xx, 0
  br i1 %.not.i13.i, label %recoverFinalize.exit.i119, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.xy = load i32, ptr %i.xc, align 8, !tbaa !451
  %i.xz = icmp eq i32 %i.xy, 0
  br i1 %i.xz, label %bb.fp, label %recoverFinalize.exit.i119

bb.fp:                                            ; preds = %bb.fo
  %i.ya = call i32 @sqlite3_errcode(ptr noundef %i.xw) #45
  %i.yb = call ptr @sqlite3_errmsg(ptr noundef %i.xw) #45
  %i.yc = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.ya, ptr noundef nonnull @.str.51, ptr noundef %i.yb) ; 0 uses
  br label %recoverFinalize.exit.i119

recoverFinalize.exit.i119:                        ; preds = %bb.fp, %bb.fo, %bb.fn
  store ptr null, ptr %i.xf, align 8, !tbaa !519
  br label %recoverLostAndFound1Step.exit

recoverLostAndFound1Step.exit:                    ; preds = %bb.fj, %recoverFinalize.exit.i119
  %.0.i118 = phi i32 [ %i.xd, %bb.fj ], [ %i.xh, %recoverFinalize.exit.i119 ]
  %i.yd = icmp eq i32 %.0.i118, 101
  br i1 %i.yd, label %bb.fq, label %recoverLostAndFound1Step.exit.thread

bb.fq:                                            ; preds = %recoverLostAndFound1Step.exit
  store i32 3, ptr %i.t, align 8, !tbaa !453
  br label %recoverLostAndFound1Step.exit.thread

bb.fr:                                            ; preds = %bb.a
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !520
  %i.yg = icmp eq ptr %i.yf, null
  br i1 %i.yg, label %bb.fs, label %bb.fv

end_hunk_0
