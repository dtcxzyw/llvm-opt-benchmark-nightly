Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %.not295.i = icmp eq i8 %i.qo, 0                ; 4 uses
  %.str.7..str.25.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.25 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qx = load i8, ptr %i.qw, align 4, !tbaa !89
  %i.qy = icmp eq i8 %i.qx, 1
  br i1 %i.qy, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.qz = select i1 %.not295.i, ptr getelementptr inbounds nuw (i8, ptr @.str.7, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.24, i64 1)
  br label %bb.dv

bb.dq:                                            ; preds = %bb.do
  %.str.7..str.24.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.24
  %.str.27..str.26.i = select i1 %.not295.i, ptr @.str.27, ptr @.str.26
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.rb, ptr noundef %3, i8 noundef signext 43)
  br label %bb.dv

bb.dr:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %i.rc = icmp ult i8 %i.qo, 2
  br i1 %i.rc, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rd = icmp ult i8 %i.qo, 6
  br i1 %i.rd, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %narrow.i11 = sub nuw nsw i8 5, %i.qo
  %i.re = zext nneg i8 %narrow.i11 to i64
  %i.rf = getelementptr inbounds nuw i8, ptr @qrfColumnar.zSpace, i64 %i.re
  br label %bb.dv

bb.du:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not297.i = icmp eq i8 %i.qo, 0                ; 3 uses
  %.str.7..str.25311.i = select i1 %.not297.i, ptr @.str.7, ptr @.str.25
  %.str.27..str.26312.i = select i1 %.not297.i, ptr @.str.27, ptr @.str.26
  %.str.7..str.24313.i = select i1 %.not297.i, ptr @.str.7, ptr @.str.24
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.dn, %bb.dm
  %.3.i = phi ptr [ %.str.7..str.25311.i, %bb.du ], [ @qrfColumnar.zSpace, %bb.ds ], [ %.str.19..str.17.i, %bb.dm ], [ %.str.19..str.17.i, %bb.dn ], [ %.str.7..str.25.i, %bb.dp ], [ %.str.7..str.25.i, %bb.dq ], [ @.str.28, %bb.dr ], [ %i.rf, %bb.dt ] ; 4 uses
  %.2269.i = phi ptr [ %.str.27..str.26312.i, %bb.du ], [ @.str.8, %bb.ds ], [ @.str.8, %bb.dm ], [ %.str.20..str.18.i, %bb.dn ], [ @.str.8, %bb.dp ], [ %.str.27..str.26.i, %bb.dq ], [ @.str.8, %bb.dr ], [ @.str.8, %bb.dt ] ; 4 uses
  %.2266.i = phi ptr [ %.str.7..str.24313.i, %bb.du ], [ @.str.6, %bb.ds ], [ %i.qt, %bb.dm ], [ %.str.19..str.16.i, %bb.dn ], [ %i.qz, %bb.dp ], [ %.str.7..str.24.i, %bb.dq ], [ @.str.6, %bb.dr ], [ @.str.6, %bb.dt ] ; 4 uses
  %i.rg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2266.i) #21
  %i.rh = trunc i64 %i.rg to i32                  ; 3 uses
  %i.ri = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2269.i) #21
  %i.rj = trunc i64 %i.ri to i32                  ; 3 uses
  %i.rk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3.i) #21
  %i.rl = trunc i64 %i.rk to i32                  ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %4, i64 103
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !57
  %i.ro = icmp eq i8 %i.rn, 2
  %i.rp = load i8, ptr %i.gu, align 4             ; 2 uses
  %i.rq = icmp ne i8 %i.rp, 0                     ; 3 uses
  %i.rr = select i1 %i.ro, i1 %i.rq, i1 false
  %i.rs = zext i1 %i.rr to i32
  %i.rt = load i8, ptr %i.dg, align 1, !tbaa !47  ; 3 uses
  %i.ru = icmp eq i8 %i.rt, 2
  br i1 %i.ru, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rv = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.rw = load i8, ptr %i.rv, align 4, !tbaa !89
  %i.rx = icmp eq i8 %i.rw, 1
  br i1 %i.rx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %switch.selectcmp.case1.i = icmp ne i8 %i.rt, 1
  %switch.selectcmp.case2.i = icmp ne i8 %i.rt, 19
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv
  %.not302.i = phi i1 [ %switch.selectcmp.not.i, %bb.dx ], [ false, %bb.dv ], [ true, %bb.dw ] ; 2 uses
  %i.ry = load i64, ptr %i.gn, align 8, !tbaa !71 ; 3 uses
  %i.rz = icmp sgt i64 %i.ry, 0                   ; 2 uses
  br i1 %i.rz, label %.lr.ph395.i, label %.critedge8.i

.lr.ph395.i:                                      ; preds = %bb.dy
  %i.sa = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 22 uses
  %i.sb = sext i32 %.0263.i to i64                ; 5 uses
  %i.sc = icmp sgt i32 %.0263.i, 0                ; 2 uses
  %i.sd = add nsw i32 %.0263.i, -1
  %i.se = sext i32 %i.sd to i64                   ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.sg = getelementptr inbounds nuw i8, ptr %4, i64 105
  %i.sh = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.sl = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.sm = load ptr, ptr %i.eo, align 8            ; 7 uses
  %i.sn = load ptr, ptr %i.gs, align 8            ; 3 uses
  %.val.i = load i32, ptr %i.ek, align 8          ; 2 uses
  %i.so = sext i32 %.val.i to i64
  %i.sp = icmp sgt i32 %.val.i, 0
  %.not300.i = icmp eq i8 %i.rp, 0                ; 2 uses
  %i.sq = icmp eq i32 %.0263.i, 1
  %unroll_iter206 = and i64 %i.sb, 2147483646
  %i.sr = and i32 %.0263.i, 1
  %lcmp.mod204.not = icmp eq i32 %i.sr, 0
  %lcmp.mod205 = trunc i32 %.0263.i to i1
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.i9, %.lr.ph395.i
  %.4393.i = phi i64 [ 0, %.lr.ph395.i ], [ %i.wv, %.loopexit.i9 ] ; 5 uses
  %i.ss = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.st = call i32 @sqlite3_str_errcode(ptr noundef %i.ss) #20
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dz
  br i1 %i.sc, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sq, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.ei
  %.0256.i.us = phi i32 [ %i.ui, %bb.ei ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.sv = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.sv, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #20
  br label %.lr.ph386.i.us

.lr.ph386.i.us:                                   ; preds = %.lr.ph386.i.preheader.us, %bb.eh
  %.0257384.i.us = phi i32 [ %spec.select.i10.us, %bb.eh ], [ 0, %.lr.ph386.i.preheader.us ]
  %.1274383.i.us = phi i64 [ %i.ug, %bb.eh ], [ 0, %.lr.ph386.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 0, ptr %i.g, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i32 0, ptr %i.h, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 0, ptr %i.i, align 4, !tbaa !17
  %i.sw = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.1274383.i.us ; 9 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !95
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !86
  call fastcc void @qrfWrapLine(ptr noundef %i.sx, i32 noundef %i.sz, i32 noundef %i.rs, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.ta = load i32, ptr %i.sy, align 8, !tbaa !86
  %i.tb = load i32, ptr %i.h, align 4, !tbaa !17
  %i.tc = sub nsw i32 %i.ta, %i.tb                ; 4 uses
  %i.td = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 7 uses
  %i.te = load i32, ptr %i.g, align 4, !tbaa !17  ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.tg = load i8, ptr %i.tf, align 8, !tbaa !79
  %i.th = and i8 %i.tg, 3
  switch i8 %i.th, label %.lr.ph386.i.us.unreachabledefault [
    i8 0, label %bb.eb
    i8 2, label %bb.ea
    i8 3, label %.thread24.i.i.us
    i8 1, label %.thread.i.i.us
  ]

bb.ea:                                            ; preds = %.lr.ph386.i.us
  %i.ti = sdiv i32 %i.tc, 2                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.ti, i8 noundef signext 32) #20
  %i.tj = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.tj, i32 noundef %i.te)
  %i.tk = sub nsw i32 %i.tc, %i.ti
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tk, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

bb.eb:                                            ; preds = %.lr.ph386.i.us
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sw, i64 18
  %i.tm = load i8, ptr %i.tl, align 2, !tbaa !96
  %.not.i324.i.us = icmp eq i8 %i.tm, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.eb, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tc, i8 noundef signext 32) #20
  %i.tn = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.tn, i32 noundef %i.te)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.eb, %.lr.ph386.i.us
  %i.to = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.to, i32 noundef %i.te)
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tc, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.ea
  %i.tp = load i32, ptr %i.i, align 4, !tbaa !17
  %i.tq = load ptr, ptr %i.sw, align 8, !tbaa !95
  %i.tr = sext i32 %i.tp to i64
  %i.ts = getelementptr inbounds i8, ptr %i.tq, i64 %i.tr ; 2 uses
  store ptr %i.ts, ptr %i.sw, align 8, !tbaa !95
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !16
  %.not303.i.us = icmp eq i8 %i.tt, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257384.i.us, i32 1 ; 2 uses
  %i.tu = icmp slt i64 %.1274383.i.us, %i.se
  br i1 %i.tu, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.tv = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.tw = call i32 @sqlite3_str_length(ptr noundef %i.tv) #20 ; 3 uses
  %i.tx = call ptr @sqlite3_str_value(ptr noundef %i.tv) #20
  %i.ty = icmp sgt i32 %i.tw, 0
  br i1 %i.ty, label %.lr.ph.preheader.i.i.us, label %qrfRTrim.exit.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.ed
  %5 = zext nneg i32 %i.tw to i64
  br label %.lr.ph.i325.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.ee, %.lr.ph.preheader.i.i.us
  %indvars.iv.i326.i.us = phi i64 [ %5, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i327.i.us, %bb.ee ] ; 4 uses
  %i.tz = getelementptr i8, ptr %i.tx, i64 %indvars.iv.i326.i.us
  %i.ua = getelementptr i8, ptr %i.tz, i64 -1
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !16
  %i.uc = icmp eq i8 %i.ub, 32
  br i1 %i.uc, label %bb.ee, label %.critedge.loopexit.split.loop.exit11.i.i.us

bb.ee:                                            ; preds = %.lr.ph.i325.i.us
  %indvars.iv.next.i327.i.us = add nsw i64 %indvars.iv.i326.i.us, -1
  %i.ud = icmp sgt i64 %indvars.iv.i326.i.us, 1
  br i1 %i.ud, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !97

.critedge.loopexit.split.loop.exit11.i.i.us:      ; preds = %.lr.ph.i325.i.us
  %6 = trunc nuw nsw i64 %indvars.iv.i326.i.us to i32
  br label %qrfRTrim.exit.i.us

qrfRTrim.exit.i.us:                               ; preds = %bb.ee, %.critedge.loopexit.split.loop.exit11.i.i.us, %bb.ed
  %.0.lcssa.i.i.us = phi i32 [ %i.tw, %bb.ed ], [ %6, %.critedge.loopexit.split.loop.exit11.i.i.us ], [ 0, %bb.ee ]
  call void @sqlite3_str_truncate(ptr noundef %i.tv, i32 noundef %.0.lcssa.i.i.us) #20
  br label %bb.ef

bb.ef:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ec
  %i.ue = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ue, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #20
  br label %bb.eh

bb.eg:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.uf = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.uf, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #20
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.ug = add nuw nsw i64 %.1274383.i.us, 1       ; 2 uses
  %exitcond402.not.i.us = icmp eq i64 %i.ug, %i.sb
  br i1 %exitcond402.not.i.us, label %._crit_edge387.i.us, label %.lr.ph386.i.us, !llvm.loop !98

._crit_edge387.i.us:                              ; preds = %bb.eh
  %i.uh = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uh, label %.critedge314.i, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge387.i.us
  %i.ui = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.uj = load i32, ptr %i.sf, align 8, !tbaa !46
  %i.uk = icmp slt i32 %i.ui, %i.uj
  br i1 %i.uk, label %.lr.ph386.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !99

.lr.ph386.i.us.unreachabledefault:                ; preds = %.lr.ph386.i.us
  unreachable

default.unreachable:                              ; preds = %bb.ek
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.ei
  %i.ul = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ul, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #20
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.um = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.um, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #20
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.ve, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter207 = phi i64 [ %niter207.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.un = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.un
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !66 ; 2 uses
  %i.uq = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.0273381.i ; 2 uses
  %i.ur = icmp eq ptr %i.up, null
  %spec.store.select359.i = select i1 %i.ur, ptr @.str.6, ptr %i.up
  store ptr %spec.store.select359.i, ptr %i.uq, align 8
  %i.us = getelementptr inbounds i8, ptr %i.sn, i64 %i.un
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 18
  store i8 %i.ut, ptr %i.uu, align 2, !tbaa !96
  %i.uv = or disjoint i64 %.0273381.i, 1          ; 2 uses
  %i.uw = add nsw i64 %i.uv, %.4393.i             ; 2 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.uw
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !66 ; 2 uses
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %i.uv ; 2 uses
  %i.va = icmp eq ptr %i.uy, null
  %spec.store.select359.i.1 = select i1 %i.va, ptr @.str.6, ptr %i.uy
  store ptr %spec.store.select359.i.1, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds i8, ptr %i.sn, i64 %i.uw
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !16
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 18
  store i8 %i.vc, ptr %i.vd, align 2, !tbaa !96
  %i.ve = add nuw nsw i64 %.0273381.i, 2          ; 2 uses
  %niter207.next.1 = add i64 %niter207, 2         ; 2 uses
  %niter207.ncmp.1 = icmp eq i64 %niter207.next.1, %unroll_iter206
  br i1 %niter207.ncmp.1, label %.lr.ph386.i.preheader.us.preheader.unr-lcssa, label %.lr.ph382.i, !llvm.loop !100

.lr.ph386.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph382.i
  br i1 %lcmp.mod204.not, label %.lr.ph386.i.preheader.us.preheader, label %.lr.ph382.i.epil.preheader

.lr.ph382.i.epil.preheader:                       ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.preheader
  %.0273381.i.epil.init = phi i64 [ 0, %.lr.ph382.i.preheader ], [ %i.ve, %.lr.ph386.i.preheader.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod205)
  %i.vf = add nsw i64 %.0273381.i.epil.init, %.4393.i ; 2 uses
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.vf
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !66 ; 2 uses
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.0273381.i.epil.init ; 2 uses
  %i.vj = icmp eq ptr %i.vh, null
  %spec.store.select359.i.epil = select i1 %i.vj, ptr @.str.6, ptr %i.vh
  store ptr %spec.store.select359.i.epil, ptr %i.vi, align 8
  %i.vk = getelementptr inbounds i8, ptr %i.sn, i64 %i.vf
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 18
  store i8 %i.vl, ptr %i.vm, align 2, !tbaa !96
  br label %.lr.ph386.i.preheader.us.preheader

.lr.ph386.i.preheader.us.preheader:               ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.epil.preheader
  br label %.lr.ph386.i.preheader.us

.lr.ph390.i:                                      ; preds = %bb.es, %.critedge10.i.split.us
  %.2275389.i = phi i64 [ %i.wt, %bb.es ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.2275389.i ; 8 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !95
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !16
  %i.vq = icmp eq i8 %i.vp, 0
  br i1 %i.vq, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph390.i
  %i.vr = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.vr, i32 noundef %i.vt, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

bb.ek:                                            ; preds = %.lr.ph390.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !86 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vv, i32 3) ; 4 uses
  store ptr @.str.29, ptr %i.vn, align 8, !tbaa !95
  %i.vw = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 7 uses
  %i.vx = sub nsw i32 %i.vv, %spec.select315.i    ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vz = load i8, ptr %i.vy, align 8, !tbaa !79
  %i.wa = and i8 %i.vz, 3
  switch i8 %i.wa, label %default.unreachable [
    i8 0, label %bb.el
    i8 2, label %bb.em
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.el:                                            ; preds = %bb.ek
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vn, i64 18
  %i.wc = load i8, ptr %i.wb, align 2, !tbaa !96
  %.not.i328.i = icmp eq i8 %i.wc, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.em:                                            ; preds = %bb.ek
  %i.wd = lshr i32 %i.vx, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wd, i8 noundef signext 32) #20
  %i.we = load ptr, ptr %i.vn, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.we, i32 noundef %spec.select315.i)
  %i.wf = sub nsw i32 %i.vx, %i.wd
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wf, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.el, %bb.ek
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #20
  %i.wg = load ptr, ptr %i.vn, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.wg, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.el, %bb.ek
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef nonnull @.str.29, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.em, %bb.ej
  %i.wh = icmp slt i64 %.2275389.i, %i.se
  br i1 %i.wh, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wi = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wi, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #20
  br label %bb.es

bb.eo:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wj = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.wk = call i32 @sqlite3_str_length(ptr noundef %i.wj) #20 ; 3 uses
  %i.wl = call ptr @sqlite3_str_value(ptr noundef %i.wj) #20
  %i.wm = icmp sgt i32 %i.wk, 0
  br i1 %i.wm, label %.lr.ph.preheader.i334.i, label %qrfRTrim.exit334.i

.lr.ph.preheader.i334.i:                          ; preds = %bb.ep
  %7 = zext nneg i32 %i.wk to i64
  br label %.lr.ph.i332.i

.lr.ph.i332.i:                                    ; preds = %bb.eq, %.lr.ph.preheader.i334.i
  %indvars.iv.i336.i = phi i64 [ %7, %.lr.ph.preheader.i334.i ], [ %indvars.iv.next.i338.i, %bb.eq ] ; 4 uses
  %i.wn = getelementptr i8, ptr %i.wl, i64 %indvars.iv.i336.i
  %i.wo = getelementptr i8, ptr %i.wn, i64 -1
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !16
  %i.wq = icmp eq i8 %i.wp, 32
  br i1 %i.wq, label %bb.eq, label %.critedge.loopexit.split.loop.exit11.i337.i

bb.eq:                                            ; preds = %.lr.ph.i332.i
  %indvars.iv.next.i338.i = add nsw i64 %indvars.iv.i336.i, -1
  %i.wr = icmp sgt i64 %indvars.iv.i336.i, 1
  br i1 %i.wr, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !97

.critedge.loopexit.split.loop.exit11.i337.i:      ; preds = %.lr.ph.i332.i
  %8 = trunc nuw nsw i64 %indvars.iv.i336.i to i32
  br label %qrfRTrim.exit334.i

qrfRTrim.exit334.i:                               ; preds = %bb.eq, %.critedge.loopexit.split.loop.exit11.i337.i, %bb.ep
  %.0.lcssa.i331.i = phi i32 [ %i.wk, %bb.ep ], [ %8, %.critedge.loopexit.split.loop.exit11.i337.i ], [ 0, %bb.eq ]
  call void @sqlite3_str_truncate(ptr noundef %i.wj, i32 noundef %.0.lcssa.i331.i) #20
  br label %bb.er

bb.er:                                            ; preds = %qrfRTrim.exit334.i, %bb.eo
  %i.ws = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ws, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #20
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.en
  %i.wt = add nuw nsw i64 %.2275389.i, 1          ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.wt, %i.sb
  br i1 %exitcond403.not.i, label %.critedge314.i, label %.lr.ph390.i, !llvm.loop !101

.critedge314.i:                                   ; preds = %._crit_edge387.i.us, %bb.es, %.preheader360.i.split
  %i.wu = icmp eq i64 %.4393.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.wu, i1 true, i1 %i.rq
  %i.wv = add nsw i64 %.4393.i, %i.sb             ; 2 uses
  %i.ww = icmp slt i64 %i.wv, %i.ry               ; 2 uses
  %or.cond453.i = select i1 %or.cond14.i, i1 %i.ww, i1 false
  br i1 %or.cond453.i, label %bb.et, label %.loopexit.i9

bb.et:                                            ; preds = %.critedge314.i
  %i.wx = load i8, ptr %i.er, align 2
  %i.wy = icmp eq i8 %i.wx, 2
  %or.cond53 = select i1 %i.wu, i1 %i.wy, i1 false ; 5 uses
  %brmerge.not = select i1 %or.cond53, i1 %i.sp, i1 false
  br i1 %brmerge.not, label %.lr.ph.i336.i, label %qrfLoadAlignment.exit.i

.lr.ph.i336.i:                                    ; preds = %bb.et
  %i.wz = load i8, ptr %i.sg, align 1, !tbaa !102 ; 2 uses
  %i.xa = load i32, ptr %i.sh, align 4, !tbaa !103
  %i.xb = sext i32 %i.xa to i64
  %i.xc = and i8 %i.wz, 12                        ; 2 uses
  %i.xd = or disjoint i8 %i.xc, 3
  %i.xe = load i32, ptr %i.si, align 8
  %i.xf = sext i32 %i.xe to i64
  %i.xg = load ptr, ptr %i.sj, align 8
  %i.xh = load ptr, ptr %i.sk, align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ez, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xt, %bb.ez ] ; 6 uses
  %i.xi = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.01.i.i
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16 ; 2 uses
  store i8 %i.wz, ptr %i.xj, align 8, !tbaa !79
  %i.xk = icmp slt i64 %.01.i.i, %i.xb
  br i1 %i.xk, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.01.i.i
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !16
  %i.xn = and i8 %i.xm, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xn, 0
  br i1 %.not.i338.i, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.xo = or disjoint i8 %i.xn, %i.xc
  br label %.sink.split.i.i

bb.ex:                                            ; preds = %bb.eu
  %i.xp = icmp slt i64 %.01.i.i, %i.xf
  br i1 %i.xp, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.xg, i64 %.01.i.i
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !84
  %i.xs = icmp slt i16 %i.xr, 0
  br i1 %i.xs, label %.sink.split.i.i, label %bb.ez

.sink.split.i.i:                                  ; preds = %bb.ey, %bb.ew
  %.sink.i.i = phi i8 [ %i.xo, %bb.ew ], [ %i.xd, %bb.ey ]
  store i8 %.sink.i.i, ptr %i.xj, align 8, !tbaa !79
  br label %bb.ez

bb.ez:                                            ; preds = %.sink.split.i.i, %bb.ey, %bb.ex, %bb.ev
  %i.xt = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xt, %i.so
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.eu, !llvm.loop !104

qrfLoadAlignment.exit.i:                          ; preds = %bb.ez, %bb.et
  %i.xu = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.xu, label %.loopexit.i9 [
    i8 19, label %bb.fa
    i8 1, label %bb.fc
    i8 13, label %bb.fg
    i8 2, label %bb.fi
  ]

bb.fa:                                            ; preds = %qrfLoadAlignment.exit.i
  %or.cond18.i = select i1 %or.cond53, i1 true, i1 %i.rq
  br i1 %or.cond18.i, label %bb.fb, label %.loopexit.i9

bb.fb:                                            ; preds = %bb.fa
  %i.xv = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.xv, ptr noundef %3, i8 noundef signext 43)
  br label %.loopexit.i9

bb.fc:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.xw = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xw, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1)
  br label %.loopexit.i9

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not300.i, label %.loopexit.i9, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.xx = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xx, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0)
  br label %.loopexit.i9

bb.fg:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fh, label %.loopexit.i9

bb.fh:                                            ; preds = %bb.fg
  %i.xy = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.xy, ptr noundef %3, i8 noundef signext 124)
  br label %.loopexit.i9

bb.fi:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %.preheader.i, label %bb.fn

.preheader.i:                                     ; preds = %bb.fi
  br i1 %i.sc, label %.lr.ph392.i, label %.loopexit.i9

.lr.ph392.i:                                      ; preds = %.preheader.i, %bb.fm
  %.3276391.i = phi i64 [ %i.yo, %bb.fm ], [ 0, %.preheader.i ] ; 3 uses
  %i.xz = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.ya = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.3276391.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.xz, i32 noundef %i.yc, i8 noundef signext 45) #20
  %i.yd = icmp slt i64 %.3276391.i, %i.se
  %i.ye = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 4 uses
  br i1 %i.yd, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.lr.ph392.i
  call void @sqlite3_str_append(ptr noundef %i.ye, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #20
  br label %bb.fm

bb.fk:                                            ; preds = %.lr.ph392.i
  %i.yf = call i32 @sqlite3_str_length(ptr noundef %i.ye) #20 ; 3 uses
  %i.yg = call ptr @sqlite3_str_value(ptr noundef %i.ye) #20
  %i.yh = icmp sgt i32 %i.yf, 0
  br i1 %i.yh, label %.lr.ph.preheader.i345.i, label %qrfRTrim.exit342.i

.lr.ph.preheader.i345.i:                          ; preds = %bb.fk
  %9 = zext nneg i32 %i.yf to i64
  br label %.lr.ph.i340.i

.lr.ph.i340.i:                                    ; preds = %bb.fl, %.lr.ph.preheader.i345.i
  %indvars.iv.i347.i = phi i64 [ %9, %.lr.ph.preheader.i345.i ], [ %indvars.iv.next.i349.i, %bb.fl ] ; 4 uses
  %i.yi = getelementptr i8, ptr %i.yg, i64 %indvars.iv.i347.i
  %i.yj = getelementptr i8, ptr %i.yi, i64 -1
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !16
  %i.yl = icmp eq i8 %i.yk, 32
  br i1 %i.yl, label %bb.fl, label %.critedge.loopexit.split.loop.exit11.i348.i

bb.fl:                                            ; preds = %.lr.ph.i340.i
  %indvars.iv.next.i349.i = add nsw i64 %indvars.iv.i347.i, -1
  %i.ym = icmp sgt i64 %indvars.iv.i347.i, 1
  br i1 %i.ym, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i, !llvm.loop !97

.critedge.loopexit.split.loop.exit11.i348.i:      ; preds = %.lr.ph.i340.i
  %10 = trunc nuw nsw i64 %indvars.iv.i347.i to i32
  br label %qrfRTrim.exit342.i

qrfRTrim.exit342.i:                               ; preds = %bb.fl, %.critedge.loopexit.split.loop.exit11.i348.i, %bb.fk
  %.0.lcssa.i339.i = phi i32 [ %i.yf, %bb.fk ], [ %10, %.critedge.loopexit.split.loop.exit11.i348.i ], [ 0, %bb.fl ]
  call void @sqlite3_str_truncate(ptr noundef %i.ye, i32 noundef %.0.lcssa.i339.i) #20
  %i.yn = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.yn, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #20
  br label %bb.fm

bb.fm:                                            ; preds = %qrfRTrim.exit342.i, %bb.fj
  %i.yo = add nuw nsw i64 %.3276391.i, 1          ; 2 uses
  %exitcond404.not.i = icmp eq i64 %i.yo, %i.sb
  br i1 %exitcond404.not.i, label %.loopexit.i9, label %.lr.ph392.i, !llvm.loop !105

bb.fn:                                            ; preds = %bb.fi
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yp = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRTrim(ptr noundef %i.yp)
  %i.yq = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.yq, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %.loopexit.i9

.loopexit.i9:                                     ; preds = %bb.fm, %bb.fo, %bb.fn, %.preheader.i, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fb, %bb.fa, %qrfLoadAlignment.exit.i, %.critedge314.i
  br i1 %i.ww, label %bb.dz, label %.critedge8.i, !llvm.loop !106

.critedge8.i:                                     ; preds = %.loopexit.i9, %bb.dz, %bb.dy
  %i.yr = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.ys = load i8, ptr %i.yr, align 4, !tbaa !89
  %.not298.i = icmp eq i8 %i.ys, 1
  br i1 %.not298.i, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %.critedge8.i
  %i.yt = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.yt, label %bb.fs [
    i8 1, label %bb.fq
    i8 19, label %bb.fr
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.yu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.yv, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.yw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.yx, ptr noundef %3, i8 noundef signext 43)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %.critedge8.i
  %i.yy = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !107
  %.not.i343.i = icmp eq ptr %i.yz, null
  br i1 %.not.i343.i, label %qrfWrite.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.za = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !38
  %i.zc = call i32 @sqlite3_str_length(ptr noundef %i.zb) #20 ; 3 uses
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %bb.fu, label %qrfWrite.exit.i

bb.fu:                                            ; preds = %bb.ft
  %i.ze = load ptr, ptr %i.yy, align 8, !tbaa !107
  %i.zf = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !108
  %i.zh = load ptr, ptr %i.za, align 8, !tbaa !38
  %i.zi = call ptr @sqlite3_str_value(ptr noundef %i.zh) #20
  %i.zj = zext nneg i32 %i.zc to i64
  %i.zk = call i32 %i.ze(ptr noundef %i.zg, ptr noundef %i.zi, i64 noundef %i.zj) #20, !inline_history !109 ; 2 uses
  %i.zl = load ptr, ptr %i.za, align 8, !tbaa !38
  call void @sqlite3_str_reset(ptr noundef %i.zl) #20
  %.not11.i.i = icmp eq i32 %i.zk, 0
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zk, ptr noundef nonnull @.str.69, i32 noundef %i.zc)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs
  %.pre87 = load ptr, ptr %i.gr, align 8, !tbaa !75 ; 2 uses
  br i1 %i.rz, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zo, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %.pre87, i64 %.09.i346.i
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zn) #20
  %i.zo = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.zo, %i.ry
  br i1 %exitcond.not, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !76

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre87) #20
  %i.zp = load ptr, ptr %i.gt, align 8, !tbaa !77
  call void @sqlite3_free(ptr noundef %i.zp) #20
  %i.zq = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zq) #20
  %i.zr = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zr) #20
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bv, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

bb.fw:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.fx:                                            ; preds = %qrfInitialize.exit
  %i.zs = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.zt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !37
  %i.zv = call i32 @sqlite3_prepare_v2(ptr noundef %i.zu, ptr noundef nonnull @.str.84, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #20 ; 2 uses
  %.not.i13 = icmp eq i32 %i.zv, 0
  br i1 %.not.i13, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zw = load ptr, ptr %i.zt, align 8, !tbaa !37
  %i.zx = call ptr @sqlite3_errmsg(ptr noundef %i.zw) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zv, ptr noundef nonnull @.str.85, ptr noundef %i.zx)
  %i.zy = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.zz = call i32 @sqlite3_finalize(ptr noundef %i.zy) #20 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.fz:                                            ; preds = %bb.fx
  %i.aaa = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aab = call i32 @sqlite3_bind_pointer(ptr noundef %i.aaa, i32 noundef 1, ptr noundef %i.zs, ptr noundef nonnull @.str.86, ptr noundef null) #20 ; 0 uses
  %i.aac = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.aac, ptr %4, align 8, !tbaa !36
  %i.aad = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 10, ptr %i.aad, align 4, !tbaa !40
  call fastcc void @qrfExplain(ptr noundef nonnull %4)
  %i.aae = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aaf = call i32 @sqlite3_finalize(ptr noundef %i.aae) #20 ; 0 uses
  store ptr %i.zs, ptr %4, align 8, !tbaa !36
  br label %qrfScanStatusVm.exit

qrfScanStatusVm.exit:                             ; preds = %bb.fy, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

bb.ga:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.87)
  br label %.critedge

bb.gb:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aag = call i32 @sqlite3_step(ptr noundef nonnull %0) #20
  %i.aah = icmp eq i32 %i.aag, 100
  br i1 %i.aah, label %bb.gc, label %.critedge

bb.gc:                                            ; preds = %bb.gb
  %i.aai = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.aai, label %bb.il [
    i8 14, label %qrfOneSimpleRow.exit
    i8 3, label %qrfOneSimpleRow.exit
    i8 9, label %bb.gd
    i8 10, label %bb.gh
    i8 7, label %bb.gl
    i8 8, label %bb.gr
    i8 11, label %bb.hk
    i8 5, label %bb.hz
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.aaj = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.aak = icmp eq i64 %i.aaj, 0
  %i.aal = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  br i1 %i.aak, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void @sqlite3_str_append(ptr noundef %i.aal, ptr noundef nonnull @.str.88, i32 noundef 2) #20
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  call void @sqlite3_str_append(ptr noundef %i.aal, ptr noundef nonnull @.str.89, i32 noundef 4) #20
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit

bb.gh:                                            ; preds = %bb.gc
  %i.aam = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.aan = icmp eq i64 %i.aam, 0
  %i.aao = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  br i1 %i.aan, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void @sqlite3_str_append(ptr noundef %i.aao, ptr noundef nonnull @.str.90, i32 noundef 1) #20
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  call void @sqlite3_str_append(ptr noundef %i.aao, ptr noundef nonnull @.str.91, i32 noundef 3) #20
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit
end_hunk_0
begin_hunk_1_@qrfWrapLine:bb.a
  %i.dd = and i8 %i.dc, -16
  %or.cond22.i = icmp eq i8 %i.dd, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !19

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
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !215

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
  store i32 %.0115.lcssa225, ptr %3, align 4, !tbaa !17
  store i32 %.0110.lcssa226, ptr %4, align 4, !tbaa !17
  br label %bb.am

.thread151:                                       ; preds = %bb.y, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110166 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.y ]
  %.3118155 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %i.cp, %bb.y ] ; 2 uses
  store i32 %.3118155, ptr %3, align 4, !tbaa !17
  store i32 %.0110166, ptr %4, align 4, !tbaa !17
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
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !16  ; 2 uses
  %.not130 = icmp eq i8 %i.dm, 0
  br i1 %.not130, label %.thread._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16  ; 2 uses
  %i.dq = and i8 %i.dp, 1
  %.not131 = icmp eq i8 %i.dq, 0
  br i1 %.not131, label %bb.ag, label %.thread._crit_edge

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext i8 %i.e to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
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
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !216

.lr.ph256:                                        ; preds = %.preheader158, %bb.ah
  %indvars.iv255 = phi i64 [ %indvars.iv.next, %bb.ah ], [ %.pre, %.preheader158 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv255, -1 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !16
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = and i8 %i.eg, 1
  %.not133 = icmp eq i8 %i.eh, 0
  br i1 %.not133, label %bb.ah, label %.split.loop.exit, !llvm.loop !216

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
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !16
  %i.es = and i8 %i.er, 6
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !16  ; 2 uses
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !16
  %i.ey = and i8 %i.ex, 6
  %i.ez = icmp eq i8 %i.ey, 0
  %.not136 = xor i1 %i.et, %i.ez
  %.not137 = icmp slt i8 %i.eu, -64
  %or.cond139 = or i1 %.not137, %.not136
  br i1 %or.cond139, label %bb.ai, label %.loopexit.loopexit.split.loop.exit

bb.ai:                                            ; preds = %.lr.ph196
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1
  %.not135.not = icmp sgt i64 %indvars.iv211, %i.ea
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !217

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
  store i32 %.4119, ptr %3, align 4, !tbaa !17
  store i32 %.5, ptr %4, align 4, !tbaa !17
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread._crit_edge
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.critedge ], [ %.pre-phi, %.thread._crit_edge ] ; 3 uses
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv214
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !16
  switch i8 %i.fe, label %bb.al [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ak, %bb.ak, %bb.ak
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1
  br label %bb.ak, !llvm.loop !218

bb.al:                                            ; preds = %bb.ak
  %i.ff = trunc nsw i64 %indvars.iv214 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread151, %sqlite3_qrf_wcwidth.exit._crit_edge.thread, %bb.b
  %.sink = phi i32 [ %i.ff, %bb.al ], [ %i.dk, %.thread151 ], [ %.0115.lcssa225, %sqlite3_qrf_wcwidth.exit._crit_edge.thread ], [ 0, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !17
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %bb.b, label %.critedge.loopexit.split.loop.exit11

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.h = icmp sgt i64 %indvars.iv, 1
  br i1 %i.h, label %.lr.ph, label %.critedge, !llvm.loop !97

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
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16    ; 6 uses
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
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = and i8 %i.m, -16
  %or.cond.i = icmp eq i8 %i.n, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv25.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 2 uses
  %i.q = and i8 %i.p, -16
  %or.cond22.i = icmp eq i8 %i.q, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !19

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
  store i8 -30, ptr %i.a, align 1, !tbaa !16
  store i8 -112, ptr %i.c, align 1, !tbaa !16
  %i.ag = or disjoint i8 %i.g, -128
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !16
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
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
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
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
end_hunk_1
