Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %.not302.i = phi i1 [ %switch.selectcmp.not.i, %bb.dz ], [ false, %bb.dx ], [ true, %bb.dy ] ; 2 uses
  %i.rw = load i64, ptr %i.gn, align 8, !tbaa !69 ; 3 uses
  %i.rx = icmp sgt i64 %i.rw, 0                   ; 2 uses
  br i1 %i.rx, label %.lr.ph411.i, label %.critedge8.i

.lr.ph411.i:                                      ; preds = %bb.ea
  %i.ry = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 22 uses
  %i.rz = sext i32 %.0263.i to i64                ; 5 uses
  %i.sa = icmp sgt i32 %.0263.i, 0                ; 2 uses
  %i.sb = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.sc = load ptr, ptr %i.eo, align 8            ; 7 uses
  %i.sd = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.se = add nsw i32 %.0263.i, -1
  %i.sf = sext i32 %i.se to i64                   ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.val.i = load i32, ptr %i.ek, align 8          ; 2 uses
  %i.sh = sext i32 %.val.i to i64
  %i.si = icmp slt i32 %.val.i, 1
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 105
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.sm = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.sn = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.so = icmp eq i32 %.0263.i, 1
  %unroll_iter201 = and i64 %i.rz, 2147483646
  %i.sp = and i32 %.0263.i, 1
  %lcmp.mod199.not = icmp eq i32 %i.sp, 0
  %lcmp.mod200 = trunc i32 %.0263.i to i1
  br label %bb.eb

bb.eb:                                            ; preds = %.loopexit.i9, %.lr.ph411.i
  %.4409.i = phi i64 [ 0, %.lr.ph411.i ], [ %i.wx, %.loopexit.i9 ] ; 5 uses
  %i.sq = load ptr, ptr %i.ry, align 8, !tbaa !47
  %i.sr = call i32 @sqlite3_str_errcode(ptr noundef %i.sq) #20
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %.preheader364.i, label %.critedge8.i

.preheader364.i:                                  ; preds = %bb.eb
  br i1 %i.sa, label %.lr.ph397.i.preheader, label %.preheader362.i.split

.lr.ph397.i.preheader:                            ; preds = %.preheader364.i
  br i1 %i.so, label %.lr.ph397.i.epil.preheader, label %.lr.ph397.i

.lr.ph402.i.preheader.us:                         ; preds = %.lr.ph402.i.preheader.us.preheader, %bb.ek
  %.0256.i.us = phi i32 [ %i.ui, %bb.ek ], [ 0, %.lr.ph402.i.preheader.us.preheader ]
  %i.st = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.st, ptr noundef nonnull %.2266.i, i32 noundef %i.rf) #20
  br label %.lr.ph402.i.us

.lr.ph402.i.us:                                   ; preds = %.lr.ph402.i.preheader.us, %bb.ej
  %.0257400.i.us = phi i32 [ %spec.select.i10.us, %bb.ej ], [ 0, %.lr.ph402.i.preheader.us ]
  %.1274399.i.us = phi i64 [ %i.ug, %bb.ej ], [ 0, %.lr.ph402.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 0, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i32 0, ptr %i.h, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 0, ptr %i.i, align 4, !tbaa !30
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.1274399.i.us ; 9 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !277
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !78
  call fastcc void @qrfWrapLine(ptr noundef %i.sv, i32 noundef %i.sx, i32 noundef %i.rq, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.sy = load i32, ptr %i.sw, align 8, !tbaa !78
  %i.sz = load i32, ptr %i.h, align 4, !tbaa !30
  %i.ta = sub nsw i32 %i.sy, %i.sz                ; 4 uses
  %i.tb = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 7 uses
  %i.tc = load i32, ptr %i.g, align 4, !tbaa !30  ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.te = load i8, ptr %i.td, align 8, !tbaa !73
  %i.tf = and i8 %i.te, 3
  switch i8 %i.tf, label %.lr.ph402.i.us.unreachabledefault [
    i8 0, label %bb.ed
    i8 2, label %bb.ec
    i8 3, label %.thread24.i.i.us
    i8 1, label %.thread.i.i.us
  ]

bb.ec:                                            ; preds = %.lr.ph402.i.us
  %i.tg = sdiv i32 %i.ta, 2                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.tg, i8 noundef signext 32) #20
  %i.th = load ptr, ptr %i.su, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tb, ptr noundef %i.th, i32 noundef %i.tc)
  %i.ti = sub nsw i32 %i.ta, %i.tg
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.ti, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

bb.ed:                                            ; preds = %.lr.ph402.i.us
  %i.tj = getelementptr inbounds nuw i8, ptr %i.su, i64 18
  %i.tk = load i8, ptr %i.tj, align 2, !tbaa !278
  %.not.i324.i.us = icmp eq i8 %i.tk, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.ed, %.lr.ph402.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.ta, i8 noundef signext 32) #20
  %i.tl = load ptr, ptr %i.su, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tb, ptr noundef %i.tl, i32 noundef %i.tc)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.ed, %.lr.ph402.i.us
  %i.tm = load ptr, ptr %i.su, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tb, ptr noundef %i.tm, i32 noundef %i.tc)
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.ta, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.ec
  %i.tn = load i32, ptr %i.i, align 4, !tbaa !30
  %i.to = load ptr, ptr %i.su, align 8, !tbaa !277
  %i.tp = sext i32 %i.tn to i64
  %i.tq = getelementptr inbounds i8, ptr %i.to, i64 %i.tp ; 2 uses
  store ptr %i.tq, ptr %i.su, align 8, !tbaa !277
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !29
  %.not303.i.us = icmp eq i8 %i.tr, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257400.i.us, i32 1 ; 2 uses
  %i.ts = icmp slt i64 %.1274399.i.us, %i.sf
  br i1 %i.ts, label %bb.ei, label %bb.ee

bb.ee:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tt = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 3 uses
  %i.tu = call i32 @sqlite3_str_length(ptr noundef %i.tt) #20 ; 3 uses
  %i.tv = call ptr @sqlite3_str_value(ptr noundef %i.tt) #20
  %i.tw = icmp sgt i32 %i.tu, 0
  br i1 %i.tw, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.ef, %bb.eg
  %.07.i.i.us = phi i32 [ %i.uc, %bb.eg ], [ %i.tu, %bb.ef ] ; 4 uses
  %i.tx = zext nneg i32 %.07.i.i.us to i64
  %i.ty = getelementptr i8, ptr %i.tv, i64 %i.tx
  %i.tz = getelementptr i8, ptr %i.ty, i64 -1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !29
  %i.ub = icmp eq i8 %i.ua, 32
  br i1 %i.ub, label %bb.eg, label %qrfRTrim.exit.i.us

bb.eg:                                            ; preds = %.lr.ph.i325.i.us
  %i.uc = add nsw i32 %.07.i.i.us, -1
  %i.ud = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.ud, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !5

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.eg, %bb.ef
  %.0.lcssa.i.i.us = phi i32 [ %i.tu, %bb.ef ], [ 0, %bb.eg ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tt, i32 noundef %.0.lcssa.i.i.us) #20
  br label %bb.eh

bb.eh:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ee
  %i.ue = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ue, ptr noundef nonnull %.2269.i, i32 noundef %i.rh) #20
  br label %bb.ej

bb.ei:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.uf = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.uf, ptr noundef nonnull %.3.i, i32 noundef %i.rj) #20
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.ug = add nuw nsw i64 %.1274399.i.us, 1       ; 2 uses
  %exitcond432.not.i.us = icmp eq i64 %i.ug, %i.rz
  br i1 %exitcond432.not.i.us, label %._crit_edge403.i.us, label %.lr.ph402.i.us, !llvm.loop !244

._crit_edge403.i.us:                              ; preds = %bb.ej
  %i.uh = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uh, label %.critedge314.i, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge403.i.us
  %i.ui = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.uj = load i32, ptr %i.sg, align 8, !tbaa !268
  %i.uk = icmp slt i32 %i.ui, %i.uj
  br i1 %i.uk, label %.lr.ph402.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !245

.lr.ph402.i.us.unreachabledefault:                ; preds = %.lr.ph402.i.us
  unreachable

default.unreachable:                              ; preds = %bb.em
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.ek
  %i.ul = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ul, ptr noundef nonnull %.2266.i, i32 noundef %i.rf) #20
  br label %.lr.ph406.i

.preheader362.i.split:                            ; preds = %.preheader364.i
  %i.um = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.um, ptr noundef nonnull %.2266.i, i32 noundef %i.rf) #20
  br label %.critedge314.i

.lr.ph397.i:                                      ; preds = %.lr.ph397.i.preheader, %.lr.ph397.i
  %.0273396.i = phi i64 [ %i.ve, %.lr.ph397.i ], [ 0, %.lr.ph397.i.preheader ] ; 4 uses
  %niter202 = phi i64 [ %niter202.next.1, %.lr.ph397.i ], [ 0, %.lr.ph397.i.preheader ]
  %i.un = add nsw i64 %.0273396.i, %.4409.i       ; 2 uses
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.un
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !66 ; 2 uses
  %i.uq = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.0273396.i ; 2 uses
  %i.ur = icmp eq ptr %i.up, null
  %spec.store.select359.i = select i1 %i.ur, ptr @.str.6, ptr %i.up
  store ptr %spec.store.select359.i, ptr %i.uq, align 8, !tbaa !277
  %i.us = getelementptr inbounds i8, ptr %i.sd, i64 %i.un
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !29
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 18
  store i8 %i.ut, ptr %i.uu, align 2, !tbaa !278
  %i.uv = or disjoint i64 %.0273396.i, 1          ; 2 uses
  %i.uw = add nsw i64 %i.uv, %.4409.i             ; 2 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.uw
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !66 ; 2 uses
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %i.uv ; 2 uses
  %i.va = icmp eq ptr %i.uy, null
  %spec.store.select359.i.1 = select i1 %i.va, ptr @.str.6, ptr %i.uy
  store ptr %spec.store.select359.i.1, ptr %i.uz, align 8, !tbaa !277
  %i.vb = getelementptr inbounds i8, ptr %i.sd, i64 %i.uw
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !29
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 18
  store i8 %i.vc, ptr %i.vd, align 2, !tbaa !278
  %i.ve = add nuw nsw i64 %.0273396.i, 2          ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.lr.ph402.i.preheader.us.preheader.unr-lcssa, label %.lr.ph397.i, !llvm.loop !246

.lr.ph402.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph397.i
  br i1 %lcmp.mod199.not, label %.lr.ph402.i.preheader.us.preheader, label %.lr.ph397.i.epil.preheader

.lr.ph397.i.epil.preheader:                       ; preds = %.lr.ph402.i.preheader.us.preheader.unr-lcssa, %.lr.ph397.i.preheader
  %.0273396.i.epil.init = phi i64 [ 0, %.lr.ph397.i.preheader ], [ %i.ve, %.lr.ph402.i.preheader.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.vf = add nsw i64 %.0273396.i.epil.init, %.4409.i ; 2 uses
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.vf
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !66 ; 2 uses
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.0273396.i.epil.init ; 2 uses
  %i.vj = icmp eq ptr %i.vh, null
  %spec.store.select359.i.epil = select i1 %i.vj, ptr @.str.6, ptr %i.vh
  store ptr %spec.store.select359.i.epil, ptr %i.vi, align 8, !tbaa !277
  %i.vk = getelementptr inbounds i8, ptr %i.sd, i64 %i.vf
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !29
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 18
  store i8 %i.vl, ptr %i.vm, align 2, !tbaa !278
  br label %.lr.ph402.i.preheader.us.preheader

.lr.ph402.i.preheader.us.preheader:               ; preds = %.lr.ph402.i.preheader.us.preheader.unr-lcssa, %.lr.ph397.i.epil.preheader
  br label %.lr.ph402.i.preheader.us

.lr.ph406.i:                                      ; preds = %bb.eu, %.critedge10.i.split.us
  %.2275405.i = phi i64 [ %i.wv, %bb.eu ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.2275405.i ; 8 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !277
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !29
  %i.vq = icmp eq i8 %i.vp, 0
  br i1 %i.vq, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph406.i
  %i.vr = load ptr, ptr %i.ry, align 8, !tbaa !47
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !78
  call void @sqlite3_str_appendchar(ptr noundef %i.vr, i32 noundef %i.vt, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

bb.em:                                            ; preds = %.lr.ph406.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !78 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vv, i32 3) ; 4 uses
  store ptr @.str.29, ptr %i.vn, align 8, !tbaa !277
  %i.vw = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 7 uses
  %i.vx = sub nsw i32 %i.vv, %spec.select315.i    ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vz = load i8, ptr %i.vy, align 8, !tbaa !73
  %i.wa = and i8 %i.vz, 3
  switch i8 %i.wa, label %default.unreachable [
    i8 0, label %bb.en
    i8 2, label %bb.eo
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.en:                                            ; preds = %bb.em
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vn, i64 18
  %i.wc = load i8, ptr %i.wb, align 2, !tbaa !278
  %.not.i328.i = icmp eq i8 %i.wc, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.eo:                                            ; preds = %bb.em
  %i.wd = lshr i32 %i.vx, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wd, i8 noundef signext 32) #20
  %i.we = load ptr, ptr %i.vn, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.we, i32 noundef %spec.select315.i)
  %i.wf = sub nuw nsw i32 %i.vx, %i.wd
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wf, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.en, %bb.em
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #20
  %i.wg = load ptr, ptr %i.vn, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.wg, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.en, %bb.em
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef nonnull @.str.29, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.eo, %bb.el
  %i.wh = icmp slt i64 %.2275405.i, %i.sf
  br i1 %i.wh, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wi = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wi, ptr noundef nonnull %.3.i, i32 noundef %i.rj) #20
  br label %bb.eu

bb.eq:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wj = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 3 uses
  %i.wk = call i32 @sqlite3_str_length(ptr noundef %i.wj) #20 ; 3 uses
  %i.wl = call ptr @sqlite3_str_value(ptr noundef %i.wj) #20
  %i.wm = icmp sgt i32 %i.wk, 0
  br i1 %i.wm, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i

.lr.ph.i332.i:                                    ; preds = %bb.er, %bb.es
  %.07.i333.i = phi i32 [ %i.ws, %bb.es ], [ %i.wk, %bb.er ] ; 4 uses
  %i.wn = zext nneg i32 %.07.i333.i to i64
  %i.wo = getelementptr i8, ptr %i.wl, i64 %i.wn
  %i.wp = getelementptr i8, ptr %i.wo, i64 -1
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !29
  %i.wr = icmp eq i8 %i.wq, 32
  br i1 %i.wr, label %bb.es, label %qrfRTrim.exit334.i

bb.es:                                            ; preds = %.lr.ph.i332.i
  %i.ws = add nsw i32 %.07.i333.i, -1
  %i.wt = icmp sgt i32 %.07.i333.i, 1
  br i1 %i.wt, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !5

qrfRTrim.exit334.i:                               ; preds = %bb.es, %.lr.ph.i332.i, %bb.er
  %.0.lcssa.i331.i = phi i32 [ %i.wk, %bb.er ], [ 0, %bb.es ], [ %.07.i333.i, %.lr.ph.i332.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.wj, i32 noundef %.0.lcssa.i331.i) #20
  br label %bb.et

bb.et:                                            ; preds = %qrfRTrim.exit334.i, %bb.eq
  %i.wu = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wu, ptr noundef nonnull %.2269.i, i32 noundef %i.rh) #20
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ep
  %i.wv = add nuw nsw i64 %.2275405.i, 1          ; 2 uses
  %exitcond433.not.i = icmp eq i64 %i.wv, %i.rz
  br i1 %exitcond433.not.i, label %.critedge314.i, label %.lr.ph406.i, !llvm.loop !247

.critedge314.i:                                   ; preds = %._crit_edge403.i.us, %bb.eu, %.preheader362.i.split
  %i.ww = icmp eq i64 %.4409.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.ww, i1 true, i1 %i.ro
  %i.wx = add nsw i64 %.4409.i, %i.rz             ; 2 uses
  %i.wy = icmp slt i64 %i.wx, %i.rw               ; 2 uses
  %or.cond361.i = select i1 %or.cond14.i, i1 %i.wy, i1 false
  br i1 %or.cond361.i, label %bb.ev, label %.loopexit.i9

bb.ev:                                            ; preds = %.critedge314.i
  br i1 %i.ww, label %bb.ew, label %qrfLoadAlignment.exit.i

bb.ew:                                            ; preds = %bb.ev
  %i.wz = load i8, ptr %i.er, align 2, !tbaa !273
  %i.xa = icmp ne i8 %i.wz, 2                     ; 2 uses
  %brmerge.i = select i1 %i.xa, i1 true, i1 %i.si
  %not..i = xor i1 %i.xa, true
  br i1 %brmerge.i, label %qrfLoadAlignment.exit.i, label %.lr.ph.i336.i

.lr.ph.i336.i:                                    ; preds = %bb.ew
  %i.xb = load i8, ptr %i.sj, align 1, !tbaa !83  ; 2 uses
  %i.xc = load i32, ptr %i.sk, align 4, !tbaa !84
  %i.xd = sext i32 %i.xc to i64
  %i.xe = and i8 %i.xb, 12                        ; 2 uses
  %i.xf = or disjoint i8 %i.xe, 3
  %i.xg = load i32, ptr %i.sl, align 8
  %i.xh = sext i32 %i.xg to i64
  %i.xi = load ptr, ptr %i.sm, align 8
  %i.xj = load ptr, ptr %i.sn, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.fc, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xv, %bb.fc ] ; 6 uses
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.01.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16 ; 2 uses
  store i8 %i.xb, ptr %i.xl, align 8, !tbaa !73
  %i.xm = icmp slt i64 %.01.i.i, %i.xd
  br i1 %i.xm, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.01.i.i
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !29
  %i.xp = and i8 %i.xo, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xp, 0
  br i1 %.not.i338.i, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xq = or disjoint i8 %i.xp, %i.xe
  br label %.sink.split.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.xr = icmp slt i64 %.01.i.i, %i.xh
  br i1 %i.xr, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xi, i64 %.01.i.i
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !76
  %i.xu = icmp slt i16 %i.xt, 0
  br i1 %i.xu, label %.sink.split.i.i, label %bb.fc

.sink.split.i.i:                                  ; preds = %bb.fb, %bb.ez
  %.sink.i.i = phi i8 [ %i.xq, %bb.ez ], [ %i.xf, %bb.fb ]
  store i8 %.sink.i.i, ptr %i.xl, align 8, !tbaa !73
  br label %bb.fc

bb.fc:                                            ; preds = %.sink.split.i.i, %bb.fb, %bb.fa, %bb.ey
  %i.xv = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xv, %i.sh
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.ex, !llvm.loop !6

qrfLoadAlignment.exit.i:                          ; preds = %bb.fc, %bb.ew, %bb.ev
  %i.xw = phi i1 [ false, %bb.ev ], [ %not..i, %bb.ew ], [ true, %bb.fc ] ; 4 uses
  %i.xx = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.xx, label %.loopexit.i9 [
    i8 19, label %bb.fd
    i8 1, label %bb.ff
    i8 13, label %bb.fj
    i8 2, label %bb.fl
  ]

bb.fd:                                            ; preds = %qrfLoadAlignment.exit.i
  %or.cond18.i = select i1 %i.xw, i1 true, i1 %i.ro
  br i1 %or.cond18.i, label %bb.fe, label %.loopexit.i9

bb.fe:                                            ; preds = %bb.fd
  %i.xy = load ptr, ptr %i.ry, align 8, !tbaa !47
end_hunk_0
