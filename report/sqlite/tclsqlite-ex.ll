Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
bb.dq:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not295.i = icmp eq i8 %i.qm, 0                ; 3 uses
  %.str.7..str.25.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.25 ; 2 uses
  %.str.7..str.24.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.24 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qv = load i8, ptr %i.qu, align 4, !tbaa !80
  %i.qw = icmp eq i8 %i.qv, 1
  br i1 %i.qw, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.qx = getelementptr inbounds nuw i8, ptr %.str.7..str.24.i, i64 1
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dq
  %.str.27..str.26.i = select i1 %.not295.i, ptr @.str.27, ptr @.str.26
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.qz, ptr noundef %3, i8 noundef signext 43)
  br label %bb.dx

bb.dt:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %i.ra = icmp ult i8 %i.qm, 2
  br i1 %i.ra, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rb = icmp ult i8 %i.qm, 6
  br i1 %i.rb, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %narrow.i11 = sub nuw nsw i8 5, %i.qm
  %i.rc = zext nneg i8 %narrow.i11 to i64
  %i.rd = getelementptr inbounds nuw i8, ptr @qrfColumnar.zSpace, i64 %i.rc
  br label %bb.dx

bb.dw:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not297.i = icmp eq i8 %i.qm, 0                ; 3 uses
  %.str.7..str.25311.i = select i1 %.not297.i, ptr @.str.7, ptr @.str.25
  %.str.27..str.26312.i = select i1 %.not297.i, ptr @.str.27, ptr @.str.26
  %.str.7..str.24313.i = select i1 %.not297.i, ptr @.str.7, ptr @.str.24
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dp, %bb.do
  %.3.i = phi ptr [ %.str.7..str.25311.i, %bb.dw ], [ @qrfColumnar.zSpace, %bb.du ], [ %.str.19..str.17.i, %bb.do ], [ %.str.19..str.17.i, %bb.dp ], [ %.str.7..str.25.i, %bb.dr ], [ %.str.7..str.25.i, %bb.ds ], [ @.str.28, %bb.dt ], [ %i.rd, %bb.dv ] ; 4 uses
  %.2269.i = phi ptr [ %.str.27..str.26312.i, %bb.dw ], [ @.str.8, %bb.du ], [ @.str.8, %bb.do ], [ %.str.20..str.18.i, %bb.dp ], [ @.str.8, %bb.dr ], [ %.str.27..str.26.i, %bb.ds ], [ @.str.8, %bb.dt ], [ @.str.8, %bb.dv ] ; 4 uses
  %.2266.i = phi ptr [ %.str.7..str.24313.i, %bb.dw ], [ @.str.6, %bb.du ], [ %i.qr, %bb.do ], [ %.str.19..str.16.i, %bb.dp ], [ %i.qx, %bb.dr ], [ %.str.7..str.24.i, %bb.ds ], [ @.str.6, %bb.dt ], [ @.str.6, %bb.dv ] ; 4 uses
  %i.re = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2266.i) #21
  %i.rf = trunc i64 %i.re to i32                  ; 3 uses
  %i.rg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2269.i) #21
  %i.rh = trunc i64 %i.rg to i32                  ; 3 uses
  %i.ri = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3.i) #21
  %i.rj = trunc i64 %i.ri to i32                  ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %4, i64 103
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !274
  %i.rm = icmp eq i8 %i.rl, 2
  %i.rn = load i8, ptr %i.gu, align 4
  %i.ro = icmp ne i8 %i.rn, 0                     ; 5 uses
  %i.rp = select i1 %i.rm, i1 %i.ro, i1 false
  %i.rq = zext i1 %i.rp to i32
  %i.rr = load i8, ptr %i.dg, align 1, !tbaa !53  ; 3 uses
  %i.rs = icmp eq i8 %i.rr, 2
  br i1 %i.rs, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rt = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.ru = load i8, ptr %i.rt, align 4, !tbaa !80
  %i.rv = icmp eq i8 %i.ru, 1
  br i1 %i.rv, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %switch.selectcmp.case1.i = icmp ne i8 %i.rr, 1
  %switch.selectcmp.case2.i = icmp ne i8 %i.rr, 19
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %bb.ea

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
  %.4409.i = phi i64 [ 0, %.lr.ph411.i ], [ %i.wt, %.loopexit.i9 ] ; 5 uses
  %i.sq = load ptr, ptr %i.ry, align 8, !tbaa !47
  %i.sr = call i32 @sqlite3_str_errcode(ptr noundef %i.sq) #20
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %.preheader364.i, label %.critedge8.i

.preheader364.i:                                  ; preds = %bb.eb
  br i1 %i.sa, label %.lr.ph397.i.preheader, label %.preheader362.i.split

.lr.ph397.i.preheader:                            ; preds = %.preheader364.i
  br i1 %i.so, label %.lr.ph397.i.epil.preheader, label %.lr.ph397.i

.lr.ph402.i.preheader.us:                         ; preds = %.lr.ph402.i.preheader.us.preheader, %bb.ek
  %.0256.i.us = phi i32 [ %i.ug, %bb.ek ], [ 0, %.lr.ph402.i.preheader.us.preheader ]
  %i.st = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.st, ptr noundef nonnull %.2266.i, i32 noundef %i.rf) #20
  br label %.lr.ph402.i.us

.lr.ph402.i.us:                                   ; preds = %.lr.ph402.i.preheader.us, %bb.ej
  %.0257400.i.us = phi i32 [ %spec.select.i10.us, %bb.ej ], [ 0, %.lr.ph402.i.preheader.us ]
  %.1274399.i.us = phi i64 [ %i.ue, %bb.ej ], [ 0, %.lr.ph402.i.preheader.us ] ; 3 uses
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
  br i1 %i.tw, label %.lr.ph.preheader.i.i.us, label %qrfRTrim.exit.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.ef
  %5 = zext nneg i32 %i.tu to i64
  br label %.lr.ph.i325.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.eg, %.lr.ph.preheader.i.i.us
  %indvars.iv.i326.i.us = phi i64 [ %5, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i327.i.us, %bb.eg ] ; 4 uses
  %i.tx = getelementptr i8, ptr %i.tv, i64 %indvars.iv.i326.i.us
  %i.ty = getelementptr i8, ptr %i.tx, i64 -1
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !29
  %i.ua = icmp eq i8 %i.tz, 32
  br i1 %i.ua, label %bb.eg, label %.critedge.loopexit.split.loop.exit11.i.i.us

bb.eg:                                            ; preds = %.lr.ph.i325.i.us
  %indvars.iv.next.i327.i.us = add nsw i64 %indvars.iv.i326.i.us, -1
  %i.ub = icmp sgt i64 %indvars.iv.i326.i.us, 1
  br i1 %i.ub, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !5

.critedge.loopexit.split.loop.exit11.i.i.us:      ; preds = %.lr.ph.i325.i.us
  %6 = trunc nuw nsw i64 %indvars.iv.i326.i.us to i32
  br label %qrfRTrim.exit.i.us

qrfRTrim.exit.i.us:                               ; preds = %bb.eg, %.critedge.loopexit.split.loop.exit11.i.i.us, %bb.ef
  %.0.lcssa.i.i.us = phi i32 [ %i.tu, %bb.ef ], [ %6, %.critedge.loopexit.split.loop.exit11.i.i.us ], [ 0, %bb.eg ]
  call void @sqlite3_str_truncate(ptr noundef %i.tt, i32 noundef %.0.lcssa.i.i.us) #20
  br label %bb.eh

bb.eh:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ee
  %i.uc = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.uc, ptr noundef nonnull %.2269.i, i32 noundef %i.rh) #20
  br label %bb.ej

bb.ei:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.ud = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ud, ptr noundef nonnull %.3.i, i32 noundef %i.rj) #20
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.ue = add nuw nsw i64 %.1274399.i.us, 1       ; 2 uses
  %exitcond432.not.i.us = icmp eq i64 %i.ue, %i.rz
  br i1 %exitcond432.not.i.us, label %._crit_edge403.i.us, label %.lr.ph402.i.us, !llvm.loop !244

._crit_edge403.i.us:                              ; preds = %bb.ej
  %i.uf = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uf, label %.critedge314.i, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge403.i.us
  %i.ug = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.uh = load i32, ptr %i.sg, align 8, !tbaa !268
  %i.ui = icmp slt i32 %i.ug, %i.uh
  br i1 %i.ui, label %.lr.ph402.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !245

.lr.ph402.i.us.unreachabledefault:                ; preds = %.lr.ph402.i.us
  unreachable

default.unreachable:                              ; preds = %bb.em
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.ek
  %i.uj = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.uj, ptr noundef nonnull %.2266.i, i32 noundef %i.rf) #20
  br label %.lr.ph406.i

.preheader362.i.split:                            ; preds = %.preheader364.i
  %i.uk = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.uk, ptr noundef nonnull %.2266.i, i32 noundef %i.rf) #20
  br label %.critedge314.i

.lr.ph397.i:                                      ; preds = %.lr.ph397.i.preheader, %.lr.ph397.i
  %.0273396.i = phi i64 [ %i.vc, %.lr.ph397.i ], [ 0, %.lr.ph397.i.preheader ] ; 4 uses
  %niter202 = phi i64 [ %niter202.next.1, %.lr.ph397.i ], [ 0, %.lr.ph397.i.preheader ]
  %i.ul = add nsw i64 %.0273396.i, %.4409.i       ; 2 uses
  %i.um = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.ul
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !66 ; 2 uses
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.0273396.i ; 2 uses
  %i.up = icmp eq ptr %i.un, null
  %spec.store.select359.i = select i1 %i.up, ptr @.str.6, ptr %i.un
  store ptr %spec.store.select359.i, ptr %i.uo, align 8, !tbaa !277
  %i.uq = getelementptr inbounds i8, ptr %i.sd, i64 %i.ul
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !29
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 18
  store i8 %i.ur, ptr %i.us, align 2, !tbaa !278
  %i.ut = or disjoint i64 %.0273396.i, 1          ; 2 uses
  %i.uu = add nsw i64 %i.ut, %.4409.i             ; 2 uses
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.uu
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !66 ; 2 uses
  %i.ux = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %i.ut ; 2 uses
  %i.uy = icmp eq ptr %i.uw, null
  %spec.store.select359.i.1 = select i1 %i.uy, ptr @.str.6, ptr %i.uw
  store ptr %spec.store.select359.i.1, ptr %i.ux, align 8, !tbaa !277
  %i.uz = getelementptr inbounds i8, ptr %i.sd, i64 %i.uu
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !29
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ux, i64 18
  store i8 %i.va, ptr %i.vb, align 2, !tbaa !278
  %i.vc = add nuw nsw i64 %.0273396.i, 2          ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.lr.ph402.i.preheader.us.preheader.unr-lcssa, label %.lr.ph397.i, !llvm.loop !246

.lr.ph402.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph397.i
  br i1 %lcmp.mod199.not, label %.lr.ph402.i.preheader.us.preheader, label %.lr.ph397.i.epil.preheader

.lr.ph397.i.epil.preheader:                       ; preds = %.lr.ph402.i.preheader.us.preheader.unr-lcssa, %.lr.ph397.i.preheader
  %.0273396.i.epil.init = phi i64 [ 0, %.lr.ph397.i.preheader ], [ %i.vc, %.lr.ph402.i.preheader.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.vd = add nsw i64 %.0273396.i.epil.init, %.4409.i ; 2 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.vd
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !66 ; 2 uses
  %i.vg = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.0273396.i.epil.init ; 2 uses
  %i.vh = icmp eq ptr %i.vf, null
  %spec.store.select359.i.epil = select i1 %i.vh, ptr @.str.6, ptr %i.vf
  store ptr %spec.store.select359.i.epil, ptr %i.vg, align 8, !tbaa !277
  %i.vi = getelementptr inbounds i8, ptr %i.sd, i64 %i.vd
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !29
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 18
  store i8 %i.vj, ptr %i.vk, align 2, !tbaa !278
  br label %.lr.ph402.i.preheader.us.preheader

.lr.ph402.i.preheader.us.preheader:               ; preds = %.lr.ph402.i.preheader.us.preheader.unr-lcssa, %.lr.ph397.i.epil.preheader
  br label %.lr.ph402.i.preheader.us

.lr.ph406.i:                                      ; preds = %bb.eu, %.critedge10.i.split.us
  %.2275405.i = phi i64 [ %i.wr, %bb.eu ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.2275405.i ; 8 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !277
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !29
  %i.vo = icmp eq i8 %i.vn, 0
  br i1 %i.vo, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph406.i
  %i.vp = load ptr, ptr %i.ry, align 8, !tbaa !47
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !78
  call void @sqlite3_str_appendchar(ptr noundef %i.vp, i32 noundef %i.vr, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

bb.em:                                            ; preds = %.lr.ph406.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !78 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vt, i32 3) ; 4 uses
  store ptr @.str.29, ptr %i.vl, align 8, !tbaa !277
  %i.vu = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 7 uses
  %i.vv = sub nsw i32 %i.vt, %spec.select315.i    ; 4 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vx = load i8, ptr %i.vw, align 8, !tbaa !73
  %i.vy = and i8 %i.vx, 3
  switch i8 %i.vy, label %default.unreachable [
    i8 0, label %bb.en
    i8 2, label %bb.eo
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.en:                                            ; preds = %bb.em
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vl, i64 18
  %i.wa = load i8, ptr %i.vz, align 2, !tbaa !278
  %.not.i328.i = icmp eq i8 %i.wa, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.eo:                                            ; preds = %bb.em
  %i.wb = lshr i32 %i.vv, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vu, i32 noundef %i.wb, i8 noundef signext 32) #20
  %i.wc = load ptr, ptr %i.vl, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vu, ptr noundef %i.wc, i32 noundef %spec.select315.i)
  %i.wd = sub nuw nsw i32 %i.vv, %i.wb
  call void @sqlite3_str_appendchar(ptr noundef %i.vu, i32 noundef %i.wd, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.en, %bb.em
  call void @sqlite3_str_appendchar(ptr noundef %i.vu, i32 noundef %i.vv, i8 noundef signext 32) #20
  %i.we = load ptr, ptr %i.vl, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vu, ptr noundef %i.we, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.en, %bb.em
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vu, ptr noundef nonnull @.str.29, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vu, i32 noundef %i.vv, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.eo, %bb.el
  %i.wf = icmp slt i64 %.2275405.i, %i.sf
  br i1 %i.wf, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wg = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wg, ptr noundef nonnull %.3.i, i32 noundef %i.rj) #20
  br label %bb.eu

bb.eq:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wh = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 3 uses
  %i.wi = call i32 @sqlite3_str_length(ptr noundef %i.wh) #20 ; 3 uses
  %i.wj = call ptr @sqlite3_str_value(ptr noundef %i.wh) #20
  %i.wk = icmp sgt i32 %i.wi, 0
  br i1 %i.wk, label %.lr.ph.preheader.i334.i, label %qrfRTrim.exit334.i

.lr.ph.preheader.i334.i:                          ; preds = %bb.er
  %7 = zext nneg i32 %i.wi to i64
  br label %.lr.ph.i332.i

.lr.ph.i332.i:                                    ; preds = %bb.es, %.lr.ph.preheader.i334.i
  %indvars.iv.i336.i = phi i64 [ %7, %.lr.ph.preheader.i334.i ], [ %indvars.iv.next.i338.i, %bb.es ] ; 4 uses
  %i.wl = getelementptr i8, ptr %i.wj, i64 %indvars.iv.i336.i
  %i.wm = getelementptr i8, ptr %i.wl, i64 -1
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !29
  %i.wo = icmp eq i8 %i.wn, 32
  br i1 %i.wo, label %bb.es, label %.critedge.loopexit.split.loop.exit11.i337.i

bb.es:                                            ; preds = %.lr.ph.i332.i
  %indvars.iv.next.i338.i = add nsw i64 %indvars.iv.i336.i, -1
  %i.wp = icmp sgt i64 %indvars.iv.i336.i, 1
  br i1 %i.wp, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !5

.critedge.loopexit.split.loop.exit11.i337.i:      ; preds = %.lr.ph.i332.i
  %8 = trunc nuw nsw i64 %indvars.iv.i336.i to i32
  br label %qrfRTrim.exit334.i

qrfRTrim.exit334.i:                               ; preds = %bb.es, %.critedge.loopexit.split.loop.exit11.i337.i, %bb.er
  %.0.lcssa.i331.i = phi i32 [ %i.wi, %bb.er ], [ %8, %.critedge.loopexit.split.loop.exit11.i337.i ], [ 0, %bb.es ]
  call void @sqlite3_str_truncate(ptr noundef %i.wh, i32 noundef %.0.lcssa.i331.i) #20
  br label %bb.et

bb.et:                                            ; preds = %qrfRTrim.exit334.i, %bb.eq
  %i.wq = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wq, ptr noundef nonnull %.2269.i, i32 noundef %i.rh) #20
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ep
  %i.wr = add nuw nsw i64 %.2275405.i, 1          ; 2 uses
  %exitcond433.not.i = icmp eq i64 %i.wr, %i.rz
  br i1 %exitcond433.not.i, label %.critedge314.i, label %.lr.ph406.i, !llvm.loop !247

.critedge314.i:                                   ; preds = %._crit_edge403.i.us, %bb.eu, %.preheader362.i.split
  %i.ws = icmp eq i64 %.4409.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.ws, i1 true, i1 %i.ro
  %i.wt = add nsw i64 %.4409.i, %i.rz             ; 2 uses
  %i.wu = icmp slt i64 %i.wt, %i.rw               ; 2 uses
  %or.cond361.i = select i1 %or.cond14.i, i1 %i.wu, i1 false
  br i1 %or.cond361.i, label %bb.ev, label %.loopexit.i9

bb.ev:                                            ; preds = %.critedge314.i
  br i1 %i.ws, label %bb.ew, label %qrfLoadAlignment.exit.i

bb.ew:                                            ; preds = %bb.ev
  %i.wv = load i8, ptr %i.er, align 2, !tbaa !273
  %i.ww = icmp ne i8 %i.wv, 2                     ; 2 uses
  %brmerge.i = select i1 %i.ww, i1 true, i1 %i.si
  %not..i = xor i1 %i.ww, true
  br i1 %brmerge.i, label %qrfLoadAlignment.exit.i, label %.lr.ph.i336.i

.lr.ph.i336.i:                                    ; preds = %bb.ew
  %i.wx = load i8, ptr %i.sj, align 1, !tbaa !83  ; 2 uses
  %i.wy = load i32, ptr %i.sk, align 4, !tbaa !84
  %i.wz = sext i32 %i.wy to i64
  %i.xa = and i8 %i.wx, 12                        ; 2 uses
  %i.xb = or disjoint i8 %i.xa, 3
  %i.xc = load i32, ptr %i.sl, align 8
  %i.xd = sext i32 %i.xc to i64
  %i.xe = load ptr, ptr %i.sm, align 8
  %i.xf = load ptr, ptr %i.sn, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.fc, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xr, %bb.fc ] ; 6 uses
  %i.xg = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.01.i.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16 ; 2 uses
  store i8 %i.wx, ptr %i.xh, align 8, !tbaa !73
  %i.xi = icmp slt i64 %.01.i.i, %i.wz
  br i1 %i.xi, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.01.i.i
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !29
  %i.xl = and i8 %i.xk, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xl, 0
  br i1 %.not.i338.i, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xm = or disjoint i8 %i.xl, %i.xa
  br label %.sink.split.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.xn = icmp slt i64 %.01.i.i, %i.xd
  br i1 %i.xn, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.xe, i64 %.01.i.i
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !76
  %i.xq = icmp slt i16 %i.xp, 0
  br i1 %i.xq, label %.sink.split.i.i, label %bb.fc

.sink.split.i.i:                                  ; preds = %bb.fb, %bb.ez
  %.sink.i.i = phi i8 [ %i.xm, %bb.ez ], [ %i.xb, %bb.fb ]
  store i8 %.sink.i.i, ptr %i.xh, align 8, !tbaa !73
  br label %bb.fc

bb.fc:                                            ; preds = %.sink.split.i.i, %bb.fb, %bb.fa, %bb.ey
  %i.xr = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xr, %i.sh
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.ex, !llvm.loop !6

qrfLoadAlignment.exit.i:                          ; preds = %bb.fc, %bb.ew, %bb.ev
  %i.xs = phi i1 [ false, %bb.ev ], [ %not..i, %bb.ew ], [ true, %bb.fc ] ; 4 uses
  %i.xt = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.xt, label %.loopexit.i9 [
    i8 19, label %bb.fd
    i8 1, label %bb.ff
    i8 13, label %bb.fj
    i8 2, label %bb.fl
  ]

bb.fd:                                            ; preds = %qrfLoadAlignment.exit.i
  %or.cond18.i = select i1 %i.xs, i1 true, i1 %i.ro
  br i1 %or.cond18.i, label %bb.fe, label %.loopexit.i9

bb.fe:                                            ; preds = %bb.fd
  %i.xu = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.xu, ptr noundef %3, i8 noundef signext 43)
  br label %.loopexit.i9

bb.ff:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %i.xs, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.xv = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xv, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1)
  br label %.loopexit.i9

bb.fh:                                            ; preds = %bb.ff
  br i1 %i.ro, label %bb.fi, label %.loopexit.i9

bb.fi:                                            ; preds = %bb.fh
  %i.xw = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xw, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0)
  br label %.loopexit.i9

bb.fj:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %i.xs, label %bb.fk, label %.loopexit.i9

bb.fk:                                            ; preds = %bb.fj
  %i.xx = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.xx, ptr noundef %3, i8 noundef signext 124)
  br label %.loopexit.i9

bb.fl:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %i.xs, label %.preheader.i, label %bb.fq

.preheader.i:                                     ; preds = %bb.fl
  br i1 %i.sa, label %.lr.ph408.i, label %.loopexit.i9

.lr.ph408.i:                                      ; preds = %.preheader.i, %bb.fp
  %.3276407.i = phi i64 [ %i.yn, %bb.fp ], [ 0, %.preheader.i ] ; 3 uses
  %i.xy = load ptr, ptr %i.ry, align 8, !tbaa !47
  %i.xz = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.3276407.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !78
  call void @sqlite3_str_appendchar(ptr noundef %i.xy, i32 noundef %i.yb, i8 noundef signext 45) #20
  %i.yc = icmp slt i64 %.3276407.i, %i.sf
  %i.yd = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 4 uses
  br i1 %i.yc, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.lr.ph408.i
  call void @sqlite3_str_append(ptr noundef %i.yd, ptr noundef nonnull %.3.i, i32 noundef %i.rj) #20
  br label %bb.fp

bb.fn:                                            ; preds = %.lr.ph408.i
  %i.ye = call i32 @sqlite3_str_length(ptr noundef %i.yd) #20 ; 3 uses
  %i.yf = call ptr @sqlite3_str_value(ptr noundef %i.yd) #20
  %i.yg = icmp sgt i32 %i.ye, 0
  br i1 %i.yg, label %.lr.ph.preheader.i345.i, label %qrfRTrim.exit342.i

.lr.ph.preheader.i345.i:                          ; preds = %bb.fn
  %9 = zext nneg i32 %i.ye to i64
  br label %.lr.ph.i340.i

.lr.ph.i340.i:                                    ; preds = %bb.fo, %.lr.ph.preheader.i345.i
  %indvars.iv.i347.i = phi i64 [ %9, %.lr.ph.preheader.i345.i ], [ %indvars.iv.next.i349.i, %bb.fo ] ; 4 uses
  %i.yh = getelementptr i8, ptr %i.yf, i64 %indvars.iv.i347.i
  %i.yi = getelementptr i8, ptr %i.yh, i64 -1
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !29
  %i.yk = icmp eq i8 %i.yj, 32
  br i1 %i.yk, label %bb.fo, label %.critedge.loopexit.split.loop.exit11.i348.i

bb.fo:                                            ; preds = %.lr.ph.i340.i
  %indvars.iv.next.i349.i = add nsw i64 %indvars.iv.i347.i, -1
  %i.yl = icmp sgt i64 %indvars.iv.i347.i, 1
  br i1 %i.yl, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i, !llvm.loop !5

.critedge.loopexit.split.loop.exit11.i348.i:      ; preds = %.lr.ph.i340.i
  %10 = trunc nuw nsw i64 %indvars.iv.i347.i to i32
  br label %qrfRTrim.exit342.i

qrfRTrim.exit342.i:                               ; preds = %bb.fo, %.critedge.loopexit.split.loop.exit11.i348.i, %bb.fn
  %.0.lcssa.i339.i = phi i32 [ %i.ye, %bb.fn ], [ %10, %.critedge.loopexit.split.loop.exit11.i348.i ], [ 0, %bb.fo ]
  call void @sqlite3_str_truncate(ptr noundef %i.yd, i32 noundef %.0.lcssa.i339.i) #20
  %i.ym = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ym, ptr noundef nonnull %.2269.i, i32 noundef %i.rh) #20
  br label %bb.fp

bb.fp:                                            ; preds = %qrfRTrim.exit342.i, %bb.fm
  %i.yn = add nuw nsw i64 %.3276407.i, 1          ; 2 uses
  %exitcond434.not.i = icmp eq i64 %i.yn, %i.rz
  br i1 %exitcond434.not.i, label %.loopexit.i9, label %.lr.ph408.i, !llvm.loop !248

bb.fq:                                            ; preds = %bb.fl
  br i1 %i.ro, label %bb.fr, label %.loopexit.i9

bb.fr:                                            ; preds = %bb.fq
  %i.yo = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfRTrim(ptr noundef %i.yo)
  %i.yp = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.yp, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %.loopexit.i9

.loopexit.i9:                                     ; preds = %bb.fp, %bb.fr, %bb.fq, %.preheader.i, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.fe, %bb.fd, %qrfLoadAlignment.exit.i, %.critedge314.i
  br i1 %i.wu, label %bb.eb, label %.critedge8.i, !llvm.loop !249

.critedge8.i:                                     ; preds = %.loopexit.i9, %bb.eb, %bb.ea
  %i.yq = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.yr = load i8, ptr %i.yq, align 4, !tbaa !80
  %.not298.i = icmp eq i8 %i.yr, 1
  br i1 %.not298.i, label %bb.fv, label %bb.fs

bb.fs:                                            ; preds = %.critedge8.i
  %i.ys = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.ys, label %bb.fv [
    i8 1, label %bb.ft
    i8 19, label %bb.fu
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.yt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.yu, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0)
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  %i.yv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.yw, ptr noundef %3, i8 noundef signext 43)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %.critedge8.i
  %i.yx = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !85
  %.not.i343.i = icmp eq ptr %i.yy, null
  br i1 %.not.i343.i, label %qrfWrite.exit.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.yz = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !47
  %i.zb = call i32 @sqlite3_str_length(ptr noundef %i.za) #20 ; 3 uses
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %bb.fx, label %qrfWrite.exit.i

bb.fx:                                            ; preds = %bb.fw
  %i.zd = load ptr, ptr %i.yx, align 8, !tbaa !85
  %i.ze = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !86
  %i.zg = load ptr, ptr %i.yz, align 8, !tbaa !47
  %i.zh = call ptr @sqlite3_str_value(ptr noundef %i.zg) #20
  %i.zi = zext nneg i32 %i.zb to i64
  %i.zj = call i32 %i.zd(ptr noundef %i.zf, ptr noundef %i.zh, i64 noundef %i.zi) #20, !inline_history !250 ; 2 uses
  %i.zk = load ptr, ptr %i.yz, align 8, !tbaa !47
  call void @sqlite3_str_reset(ptr noundef %i.zk) #20
  %.not11.i.i = icmp eq i32 %i.zj, 0
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zj, ptr noundef nonnull @.str.69, i32 noundef %i.zb)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %.pre442.i = load ptr, ptr %i.gr, align 8, !tbaa !71 ; 2 uses
  br i1 %i.rx, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zn, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %.pre442.i, i64 %.09.i346.i
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zm) #20
  %i.zn = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond435.not.i = icmp eq i64 %i.zn, %i.rw
  br i1 %exitcond435.not.i, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !4

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre442.i) #20
  %i.zo = load ptr, ptr %i.gt, align 8, !tbaa !72
  call void @sqlite3_free(ptr noundef %i.zo) #20
  %i.zp = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zp) #20
  %i.zq = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zq) #20
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bw, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

bb.fz:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.ga:                                            ; preds = %qrfInitialize.exit
  %i.zr = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.zs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !265
  %i.zu = call i32 @sqlite3_prepare_v2(ptr noundef %i.zt, ptr noundef nonnull @.str.84, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #20 ; 2 uses
  %.not.i14 = icmp eq i32 %i.zu, 0
  br i1 %.not.i14, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.zv = load ptr, ptr %i.zs, align 8, !tbaa !265
  %i.zw = call ptr @sqlite3_errmsg(ptr noundef %i.zv) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zu, ptr noundef nonnull @.str.85, ptr noundef %i.zw)
  %i.zx = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.zy = call i32 @sqlite3_finalize(ptr noundef %i.zx) #20 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.gc:                                            ; preds = %bb.ga
  %i.zz = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.aaa = call i32 @sqlite3_bind_pointer(ptr noundef %i.zz, i32 noundef 1, ptr noundef %i.zr, ptr noundef nonnull @.str.86, ptr noundef null) #20 ; 0 uses
  %i.aab = load ptr, ptr %i.d, align 8, !tbaa !87
  store ptr %i.aab, ptr %4, align 8, !tbaa !46
  %i.aac = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 10, ptr %i.aac, align 4, !tbaa !49
  call fastcc void @qrfExplain(ptr noundef nonnull %4)
  %i.aad = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.aae = call i32 @sqlite3_finalize(ptr noundef %i.aad) #20 ; 0 uses
  store ptr %i.zr, ptr %4, align 8, !tbaa !46
  br label %qrfScanStatusVm.exit

qrfScanStatusVm.exit:                             ; preds = %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

bb.gd:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.87)
  br label %.critedge

bb.ge:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aaf = call i32 @sqlite3_step(ptr noundef nonnull %0) #20
  %i.aag = icmp eq i32 %i.aaf, 100
  br i1 %i.aag, label %bb.gf, label %.critedge

bb.gf:                                            ; preds = %bb.ge
  %i.aah = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.aah, label %bb.io [
    i8 14, label %qrfOneSimpleRow.exit
    i8 3, label %qrfOneSimpleRow.exit
    i8 9, label %bb.gg
    i8 10, label %bb.gk
    i8 7, label %bb.go
    i8 8, label %bb.gu
    i8 11, label %bb.hn
    i8 5, label %bb.ic
  ]

bb.gg:                                            ; preds = %bb.gf
  %i.aai = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aaj = icmp eq i64 %i.aai, 0
  %i.aak = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %i.aaj, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  call void @sqlite3_str_append(ptr noundef %i.aak, ptr noundef nonnull @.str.88, i32 noundef 2) #20
  br label %bb.gj

bb.gi:                                            ; preds = %bb.gg
  call void @sqlite3_str_append(ptr noundef %i.aak, ptr noundef nonnull @.str.89, i32 noundef 4) #20
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit

bb.gk:                                            ; preds = %bb.gf
  %i.aal = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aam = icmp eq i64 %i.aal, 0
  %i.aan = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %i.aam, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  call void @sqlite3_str_append(ptr noundef %i.aan, ptr noundef nonnull @.str.90, i32 noundef 1) #20
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gk
  call void @sqlite3_str_append(ptr noundef %i.aan, ptr noundef nonnull @.str.91, i32 noundef 3) #20
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit
end_hunk_0
begin_hunk_1_@qrfWrapLine:bb.a
  %i.dd = and i8 %i.dc, -16
  %or.cond22.i = icmp eq i8 %i.dd, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.de = add i8 %i.dc, -64
  %or.cond23.i = icmp ult i8 %i.de, 63
  br i1 %or.cond23.i, label %bb.ab, label %qrfIsVt100.exit.thread

bb.ab:                                            ; preds = %.critedge2.i
  %i.df = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.dg = add nsw i32 %.0115172, %i.df
  br label %bb.ad

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.aa, %bb.y, %bb.x
  %i.dh = icmp eq i32 %.0110173, %1
  br i1 %i.dh, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %qrfIsVt100.exit.thread
  %i.di = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.ad:                                            ; preds = %sqlite3_qrf_wcwidth.exit, %bb.z, %bb.ab, %bb.ac, %bb.w
  %.2117 = phi i32 [ %i.cl, %sqlite3_qrf_wcwidth.exit ], [ %.0115172, %bb.w ], [ %.0115172, %bb.z ], [ %i.dg, %bb.ab ], [ %.0115172, %bb.ac ]
  %.3 = phi i32 [ %i.ci, %sqlite3_qrf_wcwidth.exit ], [ %i.co, %bb.w ], [ %i.cu, %bb.z ], [ %.0110173, %bb.ab ], [ %i.di, %bb.ac ] ; 3 uses
  %i.dj = add nsw i32 %.2117, 1                   ; 2 uses
  %.not = icmp sgt i32 %.3, %1
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !328

sqlite3_qrf_wcwidth.exit._crit_edge:              ; preds = %bb.ad, %bb.v, %qrfIsVt100.exit.thread, %bb.x, %bb.x, %sqlite3_qrf_wcwidth.exit
  %.0115.lcssa = phi i32 [ %.0115172, %sqlite3_qrf_wcwidth.exit ], [ %i.dj, %bb.ad ], [ %.0115172, %bb.v ], [ %.0115172, %qrfIsVt100.exit.thread ], [ %.0115172, %bb.x ], [ %.0115172, %bb.x ] ; 3 uses
  %.0110.lcssa = phi i32 [ %.0110173, %sqlite3_qrf_wcwidth.exit ], [ %.3, %bb.ad ], [ %1, %bb.v ], [ %1, %qrfIsVt100.exit.thread ], [ %.0110173, %bb.x ], [ %.0110173, %bb.x ] ; 3 uses
  switch i8 %i.e, label %.thread [
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge.thread
    i8 10, label %.thread151
  ]

sqlite3_qrf_wcwidth.exit._crit_edge.thread:       ; preds = %.preheader159, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110.lcssa226 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ]
  %.0115.lcssa225 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ] ; 2 uses
  store i32 %.0115.lcssa225, ptr %3, align 4, !tbaa !30
  store i32 %.0110.lcssa226, ptr %4, align 4, !tbaa !30
  br label %bb.am

.thread151:                                       ; preds = %bb.y, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110166 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.y ]
  %.3118155 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %i.cp, %bb.y ] ; 2 uses
  store i32 %.3118155, ptr %3, align 4, !tbaa !30
  store i32 %.0110166, ptr %4, align 4, !tbaa !30
  %i.dk = add nsw i32 %.3118155, 1
  br label %bb.am

.thread:                                          ; preds = %bb.z, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0115170 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0115172, %bb.z ] ; 10 uses
  %.0110167 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.z ] ; 5 uses
  %.not129 = icmp eq i32 %2, 0
  %.pre = sext i32 %.0115170 to i64               ; 8 uses
  br i1 %.not129, label %.thread._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %.pre
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !29  ; 2 uses
  %.not130 = icmp eq i8 %i.dm, 0
  br i1 %.not130, label %.thread._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !29  ; 2 uses
  %i.dq = and i8 %i.dp, 1
  %.not131 = icmp eq i8 %i.dq, 0
  br i1 %.not131, label %bb.ag, label %.thread._crit_edge

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext i8 %i.e to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !29
  %i.du = and i8 %i.dt, 6
  %i.dv = icmp ne i8 %i.du, 0
  %i.dw = and i8 %i.dp, 6
  %i.dx = icmp eq i8 %i.dw, 0
  %i.dy = xor i1 %i.dx, %i.dv
  br i1 %i.dy, label %.preheader158, label %.thread._crit_edge

.preheader158:                                    ; preds = %bb.ag
  %i.dz = sdiv i32 %.0115170, 2                   ; 4 uses
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.0115170, i32 %i.dz)
  %i.eb = add i32 %smin, -1                       ; 3 uses
  %.not132.not254 = icmp sgt i32 %.0115170, 0
  br i1 %.not132.not254, label %.lr.ph256, label %.split.loop.exit237

bb.ah:                                            ; preds = %.lr.ph256
  %.not132.not = icmp sgt i64 %indvars.iv.next, %i.ea
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !329

.lr.ph256:                                        ; preds = %.preheader158, %bb.ah
  %indvars.iv255 = phi i64 [ %indvars.iv.next, %bb.ah ], [ %.pre, %.preheader158 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv255, -1 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !29
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.eh = and i8 %i.eg, 1
  %.not133 = icmp eq i8 %i.eh, 0
  br i1 %.not133, label %bb.ah, label %.split.loop.exit, !llvm.loop !329

.split.loop.exit:                                 ; preds = %.lr.ph256
  %i.ei = trunc nsw i64 %indvars.iv255 to i32
  %i.ej = trunc nsw i64 %indvars.iv.next to i32
  %i.ek = icmp sge i32 %i.dz, %i.ei
  br label %.split.loop.exit237

.split.loop.exit237:                              ; preds = %bb.ah, %.preheader158, %.split.loop.exit
  %.0112.in.lcssa = phi i1 [ %i.ek, %.split.loop.exit ], [ true, %.preheader158 ], [ true, %bb.ah ]
  %.0112.lcssa = phi i32 [ %i.ej, %.split.loop.exit ], [ %i.eb, %.preheader158 ], [ %i.eb, %bb.ah ]
  %i.el = icmp sgt i32 %.0115170, 1
  %or.cond = and i1 %i.el, %.0112.in.lcssa
  br i1 %or.cond, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.split.loop.exit237, %bb.ai
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.ai ], [ %.pre, %.split.loop.exit237 ] ; 4 uses
  %i.em = getelementptr i8, ptr %0, i64 %indvars.iv211 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !29
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !29
  %i.es = and i8 %i.er, 6
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !29  ; 2 uses
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !29
  %i.ey = and i8 %i.ex, 6
  %i.ez = icmp eq i8 %i.ey, 0
  %.not136 = xor i1 %i.et, %i.ez
  %.not137 = icmp slt i8 %i.eu, -64
  %or.cond139 = or i1 %.not137, %.not136
  br i1 %or.cond139, label %bb.ai, label %.loopexit.loopexit.split.loop.exit

bb.ai:                                            ; preds = %.lr.ph196
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1
  %.not135.not = icmp sgt i64 %indvars.iv211, %i.ea
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !330

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph196
  %i.fa = trunc nsw i64 %indvars.iv211 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.loopexit.loopexit.split.loop.exit, %.split.loop.exit237
  %.2114 = phi i32 [ %.0112.lcssa, %.split.loop.exit237 ], [ %i.fa, %.loopexit.loopexit.split.loop.exit ], [ %i.eb, %bb.ai ] ; 3 uses
  %.not138 = icmp slt i32 %.2114, %i.dz
  br i1 %.not138, label %.thread._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.fb = sext i32 %.2114 to i64                  ; 2 uses
  %i.fc = tail call fastcc i32 @qrfDisplayWidth(ptr noundef nonnull %0, i64 noundef %i.fb, ptr noundef null)
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %.loopexit, %bb.aj, %bb.ag, %bb.af, %bb.ae
  %.pre-phi = phi i64 [ %.pre, %bb.ae ], [ %.pre, %.loopexit ], [ %i.fb, %bb.aj ], [ %.pre, %bb.ag ], [ %.pre, %bb.af ], [ %.pre, %.thread ]
  %.4119 = phi i32 [ %.0115170, %bb.ae ], [ %.0115170, %.loopexit ], [ %.2114, %bb.aj ], [ %.0115170, %bb.ag ], [ %.0115170, %bb.af ], [ %.0115170, %.thread ]
  %.5 = phi i32 [ %.0110167, %bb.ae ], [ %.0110167, %.loopexit ], [ %i.fc, %bb.aj ], [ %.0110167, %bb.ag ], [ %.0110167, %bb.af ], [ %.0110167, %.thread ]
  store i32 %.4119, ptr %3, align 4, !tbaa !30
  store i32 %.5, ptr %4, align 4, !tbaa !30
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread._crit_edge
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.critedge ], [ %.pre-phi, %.thread._crit_edge ] ; 3 uses
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv214
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !29
  switch i8 %i.fe, label %bb.al [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ak, %bb.ak, %bb.ak
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1
  br label %bb.ak, !llvm.loop !331

bb.al:                                            ; preds = %bb.ak
  %i.ff = trunc nsw i64 %indvars.iv214 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread151, %sqlite3_qrf_wcwidth.exit._crit_edge.thread, %bb.b
  %.sink = phi i32 [ %i.ff, %bb.al ], [ %i.dk, %.thread151 ], [ %.0115.lcssa225, %sqlite3_qrf_wcwidth.exit._crit_edge.thread ], [ 0, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRTrim(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %0) #20 ; 3 uses
  %i.b = tail call ptr @sqlite3_str_value(ptr noundef %0) #20
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %1 = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 %indvars.iv
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %bb.b, label %.critedge.loopexit.split.loop.exit11

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.h = icmp sgt i64 %indvars.iv, 1
  br i1 %i.h, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge.loopexit.split.loop.exit11:             ; preds = %.lr.ph
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit11, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %2, %.critedge.loopexit.split.loop.exit11 ], [ 0, %bb.b ]
  tail call void @sqlite3_str_truncate(ptr noundef %0, i32 noundef %.0.lcssa) #20
  ret void
}

declare void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendall(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @sqlite3_str_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @sqlite3_errstr(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_dup(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_value_free(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_str_truncate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_open(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_close(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_reset(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_mprintf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfAppendWithTabs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.073 = phi i32 [ %2, %.lr.ph ], [ %.2, %bb.ab ] ; 3 uses
  %.05072 = phi ptr [ %1, %.lr.ph ], [ %.252, %bb.ab ] ; 4 uses
  %.05371 = phi i32 [ 0, %.lr.ph ], [ %.255, %bb.ab ] ; 6 uses
  %.05670 = phi i32 [ 0, %.lr.ph ], [ %.157, %bb.ab ] ; 5 uses
  %i.e = sext i32 %.05670 to i64
  %i.f = getelementptr inbounds i8, ptr %.05072, i64 %i.e ; 15 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 6 uses
  %i.h = icmp ult i8 %i.g, 32
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.05072, i32 noundef %.05670) #20
  %i.i = sub nsw i32 %.073, %.05670               ; 4 uses
  switch i8 %i.g, label %bb.g [
    i8 27, label %bb.d
    i8 9, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.k, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = and i8 %i.m, -16
  %or.cond.i = icmp eq i8 %i.n, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv25.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = and i8 %i.p, -16
  %or.cond22.i = icmp eq i8 %i.q, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.r = add i8 %i.p, -64
  %or.cond23.i = icmp ult i8 %i.r, 63
  br i1 %or.cond23.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge2.i
  %i.s = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.t = add nuw nsw i32 %i.s, 1                  ; 3 uses
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %i.t) #20
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.w = sub nsw i32 %i.i, %i.t
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %.05371, 7
  %i.y = sub nuw nsw i32 8, %i.x                  ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.y, i8 noundef signext 32) #20
  %i.z = add i32 %i.y, %.05371
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ab = add nsw i32 %i.i, -1
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %i.g, 13
  %i.ad = icmp eq i32 %i.i, 1
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %.thread79, label %.thread

.thread79:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %._crit_edge

.thread:                                          ; preds = %.critedge2.i, %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.af = add i32 %.05371, 1
  store i8 -30, ptr %i.a, align 1, !tbaa !29
  store i8 -112, ptr %i.c, align 1, !tbaa !29
  %i.ag = or disjoint i8 %i.g, -128
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !29
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ai = add nsw i32 %i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ab

bb.h:                                             ; preds = %bb.b
  %i.aj = icmp sgt i8 %i.g, -1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %.05670, 1
  %i.al = add i32 %.05371, 1
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.am = zext i8 %i.g to i32                     ; 6 uses
  %i.an = and i32 %i.am, 224
  %i.ao = icmp eq i32 %i.an, 192
  br i1 %i.ao, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %i.at = icmp eq i32 %i.as, 128
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = shl nuw nsw i32 %i.am, 6
  %i.av = and i32 %i.au, 1984
  %i.aw = and i32 %i.ar, 63
  %i.ax = or disjoint i32 %i.aw, %i.av
  br label %sqlite3_qrf_decode_utf8.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ay = and i32 %i.am, 240
  %i.az = icmp eq i32 %i.ay, 224
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
end_hunk_1
