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
begin_hunk_2_@DbObjCmd:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.critedge1185

bb.ax:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.gw = icmp eq i32 %2, 2
  %i.gx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %i.gw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2128
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !153
  call void %i.gz(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull @.str.193) #20
  br label %.critedge1179

bb.az:                                            ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 344
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !155
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !156
  %i.he = call ptr %i.hb(ptr noundef %i.hd, ptr noundef null) #20 ; 3 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !16
  switch i8 %i.hf, label %.thread1237 [
    i8 102, label %bb.ba
    i8 115, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.he, ptr noundef nonnull dereferenceable(6) @.str.194) #21
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.bb, label %.thread1237

bb.bb:                                            ; preds = %bb.ba
  %.not1168 = icmp eq i32 %2, 3
  br i1 %.not1168, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hi = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2128
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !153
  call void %i.hk(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.194) #20
  br label %.critedge1179

bb.bd:                                            ; preds = %bb.bb
  call fastcc void @flushStmtCache(ptr noundef %0)
  br label %bb.bn

bb.be:                                            ; preds = %bb.az
  %i.hl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.he, ptr noundef nonnull dereferenceable(5) @.str.195) #21
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.bf, label %.thread1237

bb.bf:                                            ; preds = %bb.be
  %.not1167 = icmp eq i32 %2, 4
  %i.hn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %.not1167, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2128
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !153
  call void %i.hp(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.196) #20
  br label %.critedge1179

bb.bh:                                            ; preds = %bb.bf
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 320
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !233
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !156
  %i.hu = call i32 %i.hr(ptr noundef %1, ptr noundef %i.ht, ptr noundef nonnull %i.h) #20
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hw = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 576
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !158
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 344
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !155
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !156
  %i.ic = call ptr %i.ia(ptr noundef %i.ib, ptr noundef null) #20
  call void (ptr, ...) %i.hy(ptr noundef %1, ptr noundef nonnull @.str.197, ptr noundef %i.ic, ptr noundef nonnull @.str.198, ptr noundef null) #20
  br label %.critedge1179

bb.bj:                                            ; preds = %bb.bh
  %i.id = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @flushStmtCache(ptr noundef %0)
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %spec.select1608 = call i32 @llvm.umin.i32(i32 %i.id, i32 100)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.if = phi i32 [ %spec.select1608, %bb.bl ], [ 0, %bb.bk ]
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.if, ptr %i.ig, align 8, !tbaa !174
  br label %bb.bn

.thread1237:                                      ; preds = %bb.az, %bb.ba, %bb.be
  %i.ih = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 576
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !158
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 344
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !155
  %i.im = load ptr, ptr %i.hc, align 8, !tbaa !156
  %i.in = call ptr %i.il(ptr noundef %i.im, ptr noundef null) #20
  call void (ptr, ...) %i.ij(ptr noundef %1, ptr noundef nonnull @.str.199, ptr noundef %i.in, ptr noundef nonnull @.str.200, ptr noundef null) #20
  br label %.critedge1179

bb.bn:                                            ; preds = %bb.bd, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %.critedge1185

bb.bo:                                            ; preds = %bb.d
  %.not1166 = icmp eq i32 %2, 2
  %i.io = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %.not1166, label %.thread1238, label %bb.bp

.thread1238:                                      ; preds = %bb.bo
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1344
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !234
  %i.ir = call ptr %i.iq(ptr noundef %1) #20
  %i.is = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 3928
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !235
  %i.iv = load ptr, ptr %0, align 8, !tbaa !165
  %i.iw = call i64 @sqlite3_changes64(ptr noundef %i.iv) #20
  call void %i.iu(ptr noundef %i.ir, i64 noundef %i.iw) #20
  br label %.critedge1185

bb.bp:                                            ; preds = %bb.bo
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 2128
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !153
  call void %i.iy(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #20
  br label %.critedge1185

bb.bq:                                            ; preds = %bb.d
  %i.iz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 840
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !236
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 344
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !155
  %i.je = load ptr, ptr %3, align 8, !tbaa !156
  %i.jf = call ptr %i.jd(ptr noundef %i.je, ptr noundef null) #20
  %i.jg = call i32 %i.jb(ptr noundef %1, ptr noundef %i.jf) #20 ; 0 uses
  br label %.critedge1185

bb.br:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %.not1164 = icmp eq i32 %2, 4
  %i.jh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %.not1164, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2128
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !153
  call void %i.jj(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.201) #20
  br label %.critedge1181

bb.bt:                                            ; preds = %bb.br
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 344
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !155
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !156
  %i.jo = call ptr %i.jl(ptr noundef %i.jn, ptr noundef null) #20
  %i.jp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 344
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !155
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !156
  %i.ju = call ptr %i.jr(ptr noundef %i.jt, ptr noundef nonnull %i.i) #20
  %i.jv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !162
  %i.jy = load i32, ptr %i.i, align 4, !tbaa !17
  %i.jz = add i32 %i.jy, 25
  %i.ka = call ptr %i.jx(i32 noundef %i.jz) #20   ; 7 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %.critedge1181, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %1, ptr %i.ka, align 8, !tbaa !237
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !239
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !240
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !241
  store ptr %i.ka, ptr %i.kc, align 8, !tbaa !239
  %i.kh = load i32, ptr %i.i, align 4, !tbaa !17
  %i.ki = add nsw i32 %i.kh, 1
  %i.kj = sext i32 %i.ki to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kf, ptr align 1 %i.ju, i64 %i.kj, i1 false)
  %i.kk = load ptr, ptr %0, align 8, !tbaa !165
  %i.kl = call i32 @sqlite3_create_collation(ptr noundef %i.kk, ptr noundef %i.jo, i32 noundef 1, ptr noundef nonnull %i.ka, ptr noundef nonnull @tclSqlCollate) #20
  %.not1165 = icmp eq i32 %i.kl, 0
  br i1 %.not1165, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.km = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1872
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !172
  %i.kp = load ptr, ptr %0, align 8, !tbaa !165
  %i.kq = call ptr @sqlite3_errmsg(ptr noundef %i.kp) #20
  call void %i.ko(ptr noundef %1, ptr noundef %i.kq, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  br label %.critedge1181

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %.critedge1185

bb.bx:                                            ; preds = %bb.d
  %.not1162 = icmp eq i32 %2, 3
  br i1 %.not1162, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kr = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 2128
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !153
  call void %i.kt(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.202) #20
  br label %.critedge1185

bb.bz:                                            ; preds = %bb.bx
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !242 ; 4 uses
  %.not1163 = icmp eq ptr %i.kv, null
  br i1 %.not1163, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !243 ; 2 uses
  %i.kx = add nsw i32 %i.kw, -1
  store i32 %i.kx, ptr %i.kv, align 8, !tbaa !243
  %i.ky = icmp slt i32 %i.kw, 2
  br i1 %i.ky, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 256
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !246
  call void %i.lb(ptr noundef nonnull %i.kv) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb, %bb.bz
  %i.lc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 248
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !247
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !156
  %i.lh = call ptr %i.le(ptr noundef %i.lg) #20   ; 3 uses
  store ptr %i.lh, ptr %i.ku, align 8, !tbaa !242
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !243
  %i.lj = add nsw i32 %i.li, 1
  store i32 %i.lj, ptr %i.lh, align 8, !tbaa !243
  %i.lk = load ptr, ptr %0, align 8, !tbaa !165
  %i.ll = call i32 @sqlite3_collation_needed(ptr noundef %i.lk, ptr noundef nonnull %0, ptr noundef nonnull @tclCollateNeeded) #20 ; 0 uses
  br label %.critedge1185

bb.cd:                                            ; preds = %bb.d
  %i.lm = icmp samesign ugt i32 %2, 3
  br i1 %i.lm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ln = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 2128
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !153
  call void %i.lp(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.187) #20
  br label %.critedge1185

bb.cf:                                            ; preds = %bb.cd
  %i.lq = icmp eq i32 %2, 2
  br i1 %i.lq, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !248 ; 2 uses
  %.not1161 = icmp eq ptr %i.ls, null
  br i1 %.not1161, label %.critedge1185, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 576
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !158
  call void (ptr, ...) %i.lv(ptr noundef %1, ptr noundef nonnull %i.ls, ptr noundef null) #20
  br label %.critedge1185

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !248 ; 2 uses
  %.not1159 = icmp eq ptr %i.lx, null
  br i1 %.not1159, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ly = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !173
  call void %i.ma(ptr noundef nonnull %i.lx) #20
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.mb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 344
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !155
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !156
  %i.mg = call ptr %i.md(ptr noundef %i.mf, ptr noundef nonnull %i.j) #20 ; 2 uses
  %i.mh = icmp ne ptr %i.mg, null
  %i.mi = load i32, ptr %i.j, align 4             ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  %or.cond35 = select i1 %i.mh, i1 %i.mj, i1 false
  br i1 %or.cond35, label %bb.cl, label %.thread1240

.thread1240:                                      ; preds = %bb.ck
  store ptr null, ptr %i.lw, align 8, !tbaa !248
  br label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.mk = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !162
  %i.mn = add nuw nsw i32 %i.mi, 1
  %i.mo = call ptr %i.mm(i32 noundef %i.mn) #20   ; 2 uses
  store ptr %i.mo, ptr %i.lw, align 8, !tbaa !248
  %i.mp = load i32, ptr %i.j, align 4, !tbaa !17
  %i.mq = add nsw i32 %i.mp, 1
  %i.mr = sext i32 %i.mq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mo, ptr nonnull align 1 %i.mg, i64 %i.mr, i1 false)
  %.pr1239 = load ptr, ptr %i.lw, align 8, !tbaa !248
  %.not1160 = icmp eq ptr %.pr1239, null
  br i1 %.not1160, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ms, align 8, !tbaa !176
  %i.mt = load ptr, ptr %0, align 8, !tbaa !165
  %i.mu = call ptr @sqlite3_commit_hook(ptr noundef %i.mt, ptr noundef nonnull @DbCommitHandler, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.co

bb.cn:                                            ; preds = %.thread1240, %bb.cl
  %i.mv = load ptr, ptr %0, align 8, !tbaa !165
  %i.mw = call ptr @sqlite3_commit_hook(ptr noundef %i.mv, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %.critedge1185

bb.cp:                                            ; preds = %bb.d
  %.not1158 = icmp eq i32 %2, 3
  %i.mx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %.not1158, label %.thread1242, label %bb.cq

.thread1242:                                      ; preds = %bb.cp
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 344
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !155
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !156
  %i.nc = call ptr %i.mz(ptr noundef %i.nb, ptr noundef null) #20
  %i.nd = call i32 @sqlite3_complete(ptr noundef %i.nc) #20
  %i.ne = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1344
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !234
  %i.nh = call ptr %i.ng(ptr noundef %1) #20
  %i.ni = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 504
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !249
  %i.nl = icmp ne i32 %i.nd, 0
  %i.nm = zext i1 %i.nl to i32
  call void %i.nk(ptr noundef %i.nh, i32 noundef %i.nm) #20
  br label %.critedge1185

bb.cq:                                            ; preds = %bb.cp
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mx, i64 2128
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !153
  call void %i.no(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.203) #20
  br label %.critedge1185

bb.cr:                                            ; preds = %bb.d
  %i.np = icmp samesign ugt i32 %2, 4
  br i1 %i.np, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.nq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 2128
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !153
  call void %i.ns(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.220) #20
  br label %.critedge1185

bb.ct:                                            ; preds = %bb.cr
  %i.nt = icmp eq i32 %2, 2
  %i.nu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %i.nt, label %bb.cu, label %bb.cw

end_hunk_2
begin_hunk_3_@dbQrf:bb.a
  %i.mh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(11) @.str.416) #21
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 2736
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !159
  %i.mm = add nsw i32 %.0196365, 1                ; 2 uses
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !156
  %i.mq = call ptr %i.ml(ptr noundef %i.mp) #20
  store ptr %i.mq, ptr %i.ab, align 8, !tbaa !380
  br label %bb.cl

bb.cb:                                            ; preds = %bb.bz
  %i.mr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(8) @.str.417) #21
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.mt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 2736
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !159
  %i.mw = add nsw i32 %.0196365, 1                ; 2 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !156
  %i.na = call ptr %i.mv(ptr noundef %i.mz) #20
  store ptr %i.na, ptr %i.aa, align 8, !tbaa !381
  br label %bb.cl

bb.cd:                                            ; preds = %bb.cb
  %i.nb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(11) @.str.418) #21
  %i.nc = icmp eq i32 %i.nb, 0
  br i1 %i.nc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.nd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 2736
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !159
  %i.ng = add nsw i32 %.0196365, 1                ; 2 uses
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nh
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !156
  %i.nk = call ptr %i.nf(ptr noundef %i.nj) #20
  store ptr %i.nk, ptr %i.z, align 8, !tbaa !382
  br label %bb.cl

bb.cf:                                            ; preds = %bb.cd
  %i.nl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(6) @.str.419) #21
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 2736
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !159
  %i.nq = add nsw i32 %.0196365, 1                ; 2 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !156
  %i.nu = call ptr %i.np(ptr noundef %i.nt) #20
  store ptr %i.nu, ptr %i.y, align 8, !tbaa !383
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cf
  %i.nv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(9) @.str.127) #21
  %i.nw = icmp eq i32 %i.nv, 0
  %i.nx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %i.nw, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 2736
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !159
  %i.oa = add nsw i32 %.0196365, 1                ; 2 uses
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ob
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !156
  %i.oe = call ptr %i.nz(ptr noundef %i.od) #20
  %i.of = call i64 @strtol(ptr noundef nonnull captures(none) %i.oe, ptr noundef null, i32 noundef 10) #20, !inline_history !316
  %i.og = trunc i64 %i.of to i8
  store i8 %i.og, ptr %3, align 8, !tbaa !35
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 576
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !158
  %i.oj = load ptr, ptr %i.ac, align 8, !tbaa !176
  call void (ptr, ...) %i.oi(ptr noundef %i.oj, ptr noundef nonnull @.str.140, ptr noundef nonnull %i.bh, ptr noundef null) #20
  br label %bb.ck

bb.ck:                                            ; preds = %.thread303, %.thread293, %bb.bk, %bb.bh, %bb.be, %bb.ar, %bb.ak, %bb.ab, %bb.y, %bb.v, %bb.m, %bb.j, %bb.cj, %bb.g, %bb.d
  %.8193 = phi i32 [ 1, %bb.d ], [ 1, %bb.cj ], [ 1, %bb.g ], [ %i.cc, %bb.j ], [ %i.cr, %bb.m ], [ %i.dn, %bb.v ], [ %i.ei, %bb.y ], [ %i.ex, %bb.ab ], [ %i.fq, %bb.ak ], [ %i.gn, %bb.ar ], [ %i.hk, %bb.be ], [ %i.ic, %bb.bh ], [ %i.io, %bb.bk ], [ %.3188.ph, %.thread293 ], [ %.6191.ph, %.thread303 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.cr

bb.cl:                                            ; preds = %._crit_edge, %._crit_edge364, %.thread284, %.thread281, %.thread278, %.thread274, %.thread270, %.thread266, %.thread263, %.thread260, %.thread257, %.thread, %bb.cc, %bb.cg, %bb.ci, %bb.ce, %bb.ca, %bb.e
  %i.ok = phi ptr [ %i.az, %bb.ci ], [ %i.az, %bb.cg ], [ %i.az, %bb.ce ], [ %i.az, %bb.cc ], [ %i.az, %bb.ca ], [ %i.la, %._crit_edge ], [ %i.az, %._crit_edge364 ], [ %i.az, %.thread284 ], [ %i.az, %.thread281 ], [ %i.az, %.thread278 ], [ %i.az, %.thread274 ], [ %i.az, %.thread270 ], [ %i.az, %.thread266 ], [ %i.az, %.thread263 ], [ %i.az, %.thread260 ], [ %i.az, %.thread257 ], [ %i.az, %.thread ], [ %i.az, %bb.e ]
  %i.ol = phi ptr [ %i.ba, %bb.ci ], [ %i.ba, %bb.cg ], [ %i.ba, %bb.ce ], [ %i.ba, %bb.cc ], [ %i.ba, %bb.ca ], [ %i.ba, %._crit_edge ], [ %i.ba, %._crit_edge364 ], [ %i.ba, %.thread284 ], [ %i.ba, %.thread281 ], [ %i.ba, %.thread278 ], [ %i.ba, %.thread274 ], [ %i.ba, %.thread270 ], [ %i.ba, %.thread266 ], [ %i.ba, %.thread263 ], [ %i.ba, %.thread260 ], [ %i.ba, %.thread257 ], [ %i.ba, %.thread ], [ %i.bh, %bb.e ] ; 3 uses
  %.14210.ph = phi i32 [ %i.oa, %bb.ci ], [ %i.nq, %bb.cg ], [ %i.ng, %bb.ce ], [ %i.mw, %bb.cc ], [ %i.mm, %bb.ca ], [ %i.kr, %._crit_edge ], [ %i.iw, %._crit_edge364 ], [ %i.ik, %.thread284 ], [ %i.hy, %.thread281 ], [ %i.hg, %.thread278 ], [ %i.gf, %.thread274 ], [ %i.fm, %.thread270 ], [ %i.et, %.thread266 ], [ %i.ee, %.thread263 ], [ %i.dh, %.thread260 ], [ %i.cn, %.thread257 ], [ %i.by, %.thread ], [ %.0196365, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.om = add nsw i32 %.14210.ph, 1               ; 2 uses
  %i.on = icmp slt i32 %i.om, %1
  br i1 %i.on, label %bb.b, label %.preheader, !llvm.loop !384

.lr.ph369:                                        ; preds = %.preheader, %bb.cq
  %i.oo = phi ptr [ %i.pd, %bb.cq ], [ %i.ol, %.preheader ] ; 2 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !16
  %.not233 = icmp eq i8 %i.op, 0
  br i1 %.not233, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #20
  store ptr null, ptr %i.u, align 8, !tbaa !66
  %i.oq = call fastcc i32 @dbPrepareAndBind(ptr noundef %0, ptr noundef nonnull %i.oo, ptr noundef nonnull %i.b, ptr noundef nonnull %i.t)
  %.not234 = icmp eq i32 %i.oq, 0
  br i1 %.not234, label %bb.cn, label %.thread316

bb.cn:                                            ; preds = %bb.cm
  %i.or = load ptr, ptr %i.t, align 8, !tbaa !385 ; 3 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.cq, label %bb.co, !llvm.loop !386

bb.co:                                            ; preds = %bb.cn
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !320
  %i.ov = call i32 @sqlite3_format_query_result(ptr noundef %i.ou, ptr noundef nonnull %3, ptr noundef nonnull %i.u)
  call fastcc void @dbReleaseStmt(ptr noundef %0, ptr noundef nonnull %i.or, i32 noundef 0)
  %.not235 = icmp eq i32 %i.ov, 0
  br i1 %.not235, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ow = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 1872
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !172
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !176
  %i.pb = load ptr, ptr %i.u, align 8, !tbaa !66
  call void %i.oy(ptr noundef %i.pa, ptr noundef %i.pb, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  %i.pc = load ptr, ptr %i.u, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.pc) #20
  br label %.thread316

.thread316:                                       ; preds = %bb.cm, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  %i.pd = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not = icmp eq ptr %i.pd, null
  br i1 %.not, label %.critedge, label %.lr.ph369

.critedge:                                        ; preds = %.lr.ph369, %bb.cq, %bb.a, %.preheader
  %i.pe = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 1872
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !172
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !176
  %i.pj = load ptr, ptr %i.a, align 8, !tbaa !66
  call void %i.pg(ptr noundef %i.pi, ptr noundef %i.pj, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  br label %bb.cr

bb.cr:                                            ; preds = %.thread316, %bb.ck, %.critedge
  %.10195 = phi i32 [ %.8193, %bb.ck ], [ 1, %.thread316 ], [ 0, %.critedge ]
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !377
  call void @sqlite3_free(ptr noundef %i.pl) #20
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !374
  call void @sqlite3_free(ptr noundef %i.pn) #20
  %i.po = load ptr, ptr %i.a, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.po) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.10195
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @findSqlFunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %1)
  %i.a = trunc i64 %strlen.i to i32
  %i.b = and i32 %i.a, 1073741823                 ; 2 uses
  %i.c = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162
  %narrow = add nuw nsw i32 %i.b, 49
  %i.f = tail call ptr %i.e(i32 noundef %narrow) #20 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !387
  %i.i = add nuw nsw i32 %i.b, 1
  %i.j = zext nneg i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.026 = load ptr, ptr %i.k, align 8, !tbaa !388 ; 2 uses
  %.not27 = icmp eq ptr %.026, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.028 = phi ptr [ %.0, %bb.c ], [ %.026, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.028, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !387
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !387
  %i.o = tail call i32 @sqlite3_stricmp(ptr noundef %i.m, ptr noundef %i.n) #20
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !173
  tail call void %i.s(ptr noundef nonnull %i.f) #20
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 40
  %.0 = load ptr, ptr %i.t, align 8, !tbaa !388   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !389

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !390
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !176
  store ptr %i.w, ptr %i.f, align 8, !tbaa !391
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %0, ptr %i.x, align 8, !tbaa !392
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !288
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.u, ptr %i.z, align 8, !tbaa !393
  store ptr %i.f, ptr %i.k, align 8, !tbaa !390
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.024 = phi ptr [ %.028, %bb.b ], [ %i.f, %._crit_edge ]
  ret ptr %.024
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @tclSqlFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = tail call ptr @sqlite3_user_data(ptr noundef %0) #20 ; 11 uses
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !288  ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !243
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !243
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2360
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !307
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !391
  %i.p = tail call i32 %i.n(ptr noundef %i.o, ptr noundef nonnull %i.i, i32 noundef 0) #20 ; 2 uses
  %i.q = load i32, ptr %i.i, align 8, !tbaa !243  ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.i, align 8, !tbaa !243
  %i.s = icmp slt i32 %i.q, 2
  br i1 %i.s, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !246
  tail call void %i.v(ptr noundef nonnull %i.i) #20
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.w = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !394
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !391
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !288
  %i.ac = call i32 %i.y(ptr noundef %i.z, ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #20
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %.not, label %bb.e, label %.critedge109

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 440
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !250
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !17
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !349
  %i.ai = call ptr %i.af(i32 noundef %i.ag, ptr noundef %i.ah) #20 ; 11 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !243
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !243
  %i.al = icmp sgt i32 %1, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !395

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !396 ; 7 uses
  %i.ap = call i32 @sqlite3_value_type(ptr noundef %i.ao) #20
  switch i32 %i.ap, label %bb.n [
    i32 4, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 5, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = call i32 @sqlite3_value_bytes(ptr noundef %i.ao) #20
  %i.ar = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 416
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !297
  %i.au = call ptr @sqlite3_value_blob(ptr noundef %i.ao) #20
  %i.av = call ptr %i.at(ptr noundef %i.au, i32 noundef %i.aq) #20
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.aw = call i64 @sqlite3_value_int64(ptr noundef %i.ao) #20 ; 3 uses
  %i.ax = add i64 %i.aw, 2147483647
  %or.cond = icmp ult i64 %i.ax, 4294967295
  %i.ay = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148 ; 2 uses
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !256
  %i.bb = trunc nsw i64 %i.aw to i32
  %i.bc = call ptr %i.ba(i32 noundef %i.bb) #20
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 3920
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !341
  %i.bf = call ptr %i.be(i64 noundef %i.aw) #20
  br label %.critedge

bb.l:                                             ; preds = %bb.g
  %i.bg = call double @sqlite3_value_double(ptr noundef %i.ao) #20
  %i.bh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !342
  %i.bk = call ptr %i.bj(double noundef %i.bg) #20
  br label %.critedge

bb.m:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 464
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !254
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !392
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !293
  %i.br = call ptr %i.bn(ptr noundef %i.bq, i32 noundef -1) #20
  br label %.critedge

bb.n:                                             ; preds = %bb.g
  %i.bs = call i32 @sqlite3_value_bytes(ptr noundef %i.ao) #20
  %i.bt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 464
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !254
  %i.bw = call ptr @sqlite3_value_text(ptr noundef %i.ao) #20
  %i.bx = call ptr %i.bv(ptr noundef %i.bw, i32 noundef %i.bs) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.k, %bb.n, %bb.m, %bb.l, %bb.h
  %.1 = phi ptr [ %i.bx, %bb.n ], [ %i.av, %bb.h ], [ %i.br, %bb.m ], [ %i.bk, %bb.l ], [ %i.bc, %bb.j ], [ %i.bf, %bb.k ]
  %i.by = load ptr, ptr @tclStubsPtr, align 8, !tbaa !148
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 368
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !253
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !391
  %i.cc = call i32 %i.ca(ptr noundef %i.cb, ptr noundef nonnull %i.ai, ptr noundef %.1) #20
  %.not106 = icmp eq i32 %i.cc, 0
end_hunk_3
