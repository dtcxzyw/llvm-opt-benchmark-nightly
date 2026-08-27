Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %.not295.i = icmp eq i8 %i.qn, 0                ; 4 uses
  %.str.7..str.25.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.25 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !89
  %i.qx = icmp eq i8 %i.qw, 1
  br i1 %i.qx, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.qy = select i1 %.not295.i, ptr getelementptr inbounds nuw (i8, ptr @.str.7, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.24, i64 1)
  br label %bb.dt

bb.do:                                            ; preds = %bb.dm
  %.str.7..str.24.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.24
  %.str.27..str.26.i = select i1 %.not295.i, ptr @.str.27, ptr @.str.26
  %i.qz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.ra, ptr noundef %3, i8 noundef signext 43)
  br label %bb.dt

bb.dp:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %i.rb = icmp ult i8 %i.qn, 2
  br i1 %i.rb, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.rc = icmp ult i8 %i.qn, 6
  br i1 %i.rc, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %narrow.i11 = sub nuw nsw i8 5, %i.qn
  %i.rd = zext nneg i8 %narrow.i11 to i64
  %i.re = getelementptr inbounds nuw i8, ptr @qrfColumnar.zSpace, i64 %i.rd
  br label %bb.dt

bb.ds:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not297.i = icmp eq i8 %i.qn, 0                ; 3 uses
  %.str.7..str.25311.i = select i1 %.not297.i, ptr @.str.7, ptr @.str.25
  %.str.27..str.26312.i = select i1 %.not297.i, ptr @.str.27, ptr @.str.26
  %.str.7..str.24313.i = select i1 %.not297.i, ptr @.str.7, ptr @.str.24
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.3.i = phi ptr [ %.str.7..str.25311.i, %bb.ds ], [ @qrfColumnar.zSpace, %bb.dq ], [ %.str.19..str.17.i, %bb.dk ], [ %.str.19..str.17.i, %bb.dl ], [ %.str.7..str.25.i, %bb.dn ], [ %.str.7..str.25.i, %bb.do ], [ @.str.28, %bb.dp ], [ %i.re, %bb.dr ] ; 4 uses
  %.2269.i = phi ptr [ %.str.27..str.26312.i, %bb.ds ], [ @.str.8, %bb.dq ], [ @.str.8, %bb.dk ], [ %.str.20..str.18.i, %bb.dl ], [ @.str.8, %bb.dn ], [ %.str.27..str.26.i, %bb.do ], [ @.str.8, %bb.dp ], [ @.str.8, %bb.dr ] ; 4 uses
  %.2266.i = phi ptr [ %.str.7..str.24313.i, %bb.ds ], [ @.str.6, %bb.dq ], [ %i.qs, %bb.dk ], [ %.str.19..str.16.i, %bb.dl ], [ %i.qy, %bb.dn ], [ %.str.7..str.24.i, %bb.do ], [ @.str.6, %bb.dp ], [ @.str.6, %bb.dr ] ; 4 uses
  %i.rf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2266.i) #21
  %i.rg = trunc i64 %i.rf to i32                  ; 3 uses
  %i.rh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2269.i) #21
  %i.ri = trunc i64 %i.rh to i32                  ; 3 uses
  %i.rj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3.i) #21
  %i.rk = trunc i64 %i.rj to i32                  ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %4, i64 103
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !57
  %i.rn = icmp eq i8 %i.rm, 2
  %i.ro = load i8, ptr %i.gu, align 4             ; 2 uses
  %i.rp = icmp ne i8 %i.ro, 0                     ; 3 uses
  %i.rq = select i1 %i.rn, i1 %i.rp, i1 false
  %i.rr = zext i1 %i.rq to i32
  %i.rs = load i8, ptr %i.dg, align 1, !tbaa !47  ; 3 uses
  %i.rt = icmp eq i8 %i.rs, 2
  br i1 %i.rt, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.rv = load i8, ptr %i.ru, align 4, !tbaa !89
  %i.rw = icmp eq i8 %i.rv, 1
  br i1 %i.rw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %switch.selectcmp.case1.i = icmp ne i8 %i.rs, 1
  %switch.selectcmp.case2.i = icmp ne i8 %i.rs, 19
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.not302.i = phi i1 [ %switch.selectcmp.not.i, %bb.dv ], [ false, %bb.dt ], [ true, %bb.du ] ; 2 uses
  %i.rx = load i64, ptr %i.gn, align 8, !tbaa !71 ; 3 uses
  %i.ry = icmp sgt i64 %i.rx, 0                   ; 2 uses
  br i1 %i.ry, label %.lr.ph395.i, label %.critedge8.i

.lr.ph395.i:                                      ; preds = %bb.dw
  %i.rz = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 22 uses
  %i.sa = sext i32 %.0263.i to i64                ; 5 uses
  %i.sb = icmp sgt i32 %.0263.i, 0                ; 2 uses
  %i.sc = add nsw i32 %.0263.i, -1
  %i.sd = sext i32 %i.sc to i64                   ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.sf = getelementptr inbounds nuw i8, ptr %4, i64 105
  %i.sg = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.sh = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.sk = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.sl = load ptr, ptr %i.eo, align 8            ; 7 uses
  %i.sm = load ptr, ptr %i.gs, align 8            ; 3 uses
  %.val.i = load i32, ptr %i.ek, align 8          ; 2 uses
  %i.sn = sext i32 %.val.i to i64
  %i.so = icmp sgt i32 %.val.i, 0
  %.not300.i = icmp eq i8 %i.ro, 0                ; 2 uses
  %i.sp = icmp eq i32 %.0263.i, 1
  %unroll_iter209 = and i64 %i.sa, 2147483646
  %i.sq = and i32 %.0263.i, 1
  %lcmp.mod207.not = icmp eq i32 %i.sq, 0
  %lcmp.mod208 = trunc i32 %.0263.i to i1
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.i9, %.lr.ph395.i
  %.4393.i = phi i64 [ 0, %.lr.ph395.i ], [ %i.wu, %.loopexit.i9 ] ; 5 uses
  %i.sr = load ptr, ptr %i.rz, align 8, !tbaa !38
  %i.ss = call i32 @sqlite3_str_errcode(ptr noundef %i.sr) #20
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dx
  br i1 %i.sb, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sp, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.eg
  %.0256.i.us = phi i32 [ %i.uh, %bb.eg ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.su = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.su, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.lr.ph386.i.us

.lr.ph386.i.us:                                   ; preds = %.lr.ph386.i.preheader.us, %bb.ef
  %.0257384.i.us = phi i32 [ %spec.select.i10.us, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ]
  %.1274383.i.us = phi i64 [ %i.uf, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 0, ptr %i.g, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i32 0, ptr %i.h, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 0, ptr %i.i, align 4, !tbaa !17
  %i.sv = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.1274383.i.us ; 9 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !95
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !86
  call fastcc void @qrfWrapLine(ptr noundef %i.sw, i32 noundef %i.sy, i32 noundef %i.rr, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.sz = load i32, ptr %i.sx, align 8, !tbaa !86
  %i.ta = load i32, ptr %i.h, align 4, !tbaa !17
  %i.tb = sub nsw i32 %i.sz, %i.ta                ; 4 uses
  %i.tc = load ptr, ptr %i.rz, align 8, !tbaa !38 ; 7 uses
  %i.td = load i32, ptr %i.g, align 4, !tbaa !17  ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.tf = load i8, ptr %i.te, align 8, !tbaa !79
  %i.tg = and i8 %i.tf, 3
  switch i8 %i.tg, label %.lr.ph386.i.us.unreachabledefault [
    i8 0, label %bb.dz
    i8 2, label %bb.dy
    i8 3, label %.thread24.i.i.us
    i8 1, label %.thread.i.i.us
  ]

bb.dy:                                            ; preds = %.lr.ph386.i.us
  %i.th = sdiv i32 %i.tb, 2                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.th, i8 noundef signext 32) #20
  %i.ti = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.ti, i32 noundef %i.td)
  %i.tj = sub nsw i32 %i.tb, %i.th
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tj, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

bb.dz:                                            ; preds = %.lr.ph386.i.us
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 18
  %i.tl = load i8, ptr %i.tk, align 2, !tbaa !96
  %.not.i324.i.us = icmp eq i8 %i.tl, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.dz, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #20
  %i.tm = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tm, i32 noundef %i.td)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.dz, %.lr.ph386.i.us
  %i.tn = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tn, i32 noundef %i.td)
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.dy
  %i.to = load i32, ptr %i.i, align 4, !tbaa !17
  %i.tp = load ptr, ptr %i.sv, align 8, !tbaa !95
  %i.tq = sext i32 %i.to to i64
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 %i.tq ; 2 uses
  store ptr %i.tr, ptr %i.sv, align 8, !tbaa !95
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !16
  %.not303.i.us = icmp eq i8 %i.ts, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257384.i.us, i32 1 ; 2 uses
  %i.tt = icmp slt i64 %.1274383.i.us, %i.sd
  br i1 %i.tt, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tu = load ptr, ptr %i.rz, align 8, !tbaa !38 ; 3 uses
  %i.tv = call i32 @sqlite3_str_length(ptr noundef %i.tu) #20 ; 3 uses
  %i.tw = call ptr @sqlite3_str_value(ptr noundef %i.tu) #20
  %i.tx = icmp sgt i32 %i.tv, 0
  br i1 %i.tx, label %.lr.ph.preheader.i.i.us, label %qrfRTrim.exit.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %bb.eb
  %5 = zext nneg i32 %i.tv to i64
  br label %.lr.ph.i325.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.ec, %.lr.ph.preheader.i.i.us
  %indvars.iv.i326.i.us = phi i64 [ %5, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i327.i.us, %bb.ec ] ; 4 uses
  %i.ty = getelementptr i8, ptr %i.tw, i64 %indvars.iv.i326.i.us
  %i.tz = getelementptr i8, ptr %i.ty, i64 -1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !16
  %i.ub = icmp eq i8 %i.ua, 32
  br i1 %i.ub, label %bb.ec, label %.critedge.loopexit.split.loop.exit11.i.i.us

bb.ec:                                            ; preds = %.lr.ph.i325.i.us
  %indvars.iv.next.i327.i.us = add nsw i64 %indvars.iv.i326.i.us, -1
  %i.uc = icmp sgt i64 %indvars.iv.i326.i.us, 1
  br i1 %i.uc, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !97

.critedge.loopexit.split.loop.exit11.i.i.us:      ; preds = %.lr.ph.i325.i.us
  %6 = trunc nuw nsw i64 %indvars.iv.i326.i.us to i32
  br label %qrfRTrim.exit.i.us

qrfRTrim.exit.i.us:                               ; preds = %bb.ec, %.critedge.loopexit.split.loop.exit11.i.i.us, %bb.eb
  %.0.lcssa.i.i.us = phi i32 [ %i.tv, %bb.eb ], [ %6, %.critedge.loopexit.split.loop.exit11.i.i.us ], [ 0, %bb.ec ]
  call void @sqlite3_str_truncate(ptr noundef %i.tu, i32 noundef %.0.lcssa.i.i.us) #20
  br label %bb.ed

bb.ed:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ea
  %i.ud = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ud, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.ef

bb.ee:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.ue = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ue, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.uf = add nuw nsw i64 %.1274383.i.us, 1       ; 2 uses
  %exitcond402.not.i.us = icmp eq i64 %i.uf, %i.sa
  br i1 %exitcond402.not.i.us, label %._crit_edge387.i.us, label %.lr.ph386.i.us, !llvm.loop !98

._crit_edge387.i.us:                              ; preds = %bb.ef
  %i.ug = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.ug, label %.critedge314.i, label %bb.eg

bb.eg:                                            ; preds = %._crit_edge387.i.us
  %i.uh = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.ui = load i32, ptr %i.se, align 8, !tbaa !46
  %i.uj = icmp slt i32 %i.uh, %i.ui
  br i1 %i.uj, label %.lr.ph386.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !99

.lr.ph386.i.us.unreachabledefault:                ; preds = %.lr.ph386.i.us
  unreachable

default.unreachable:                              ; preds = %bb.ei
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.eg
  %i.uk = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.uk, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.ul = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ul, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.vd, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter210 = phi i64 [ %niter210.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.um = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.um
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !66 ; 2 uses
  %i.up = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i ; 2 uses
  %i.uq = icmp eq ptr %i.uo, null
  %spec.store.select359.i = select i1 %i.uq, ptr @.str.6, ptr %i.uo
  store ptr %spec.store.select359.i, ptr %i.up, align 8
  %i.ur = getelementptr inbounds i8, ptr %i.sm, i64 %i.um
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !16
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 18
  store i8 %i.us, ptr %i.ut, align 2, !tbaa !96
  %i.uu = or disjoint i64 %.0273381.i, 1          ; 2 uses
  %i.uv = add nsw i64 %i.uu, %.4393.i             ; 2 uses
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.uv
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !66 ; 2 uses
  %i.uy = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %i.uu ; 2 uses
  %i.uz = icmp eq ptr %i.ux, null
  %spec.store.select359.i.1 = select i1 %i.uz, ptr @.str.6, ptr %i.ux
  store ptr %spec.store.select359.i.1, ptr %i.uy, align 8
  %i.va = getelementptr inbounds i8, ptr %i.sm, i64 %i.uv
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !16
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 18
  store i8 %i.vb, ptr %i.vc, align 2, !tbaa !96
  %i.vd = add nuw nsw i64 %.0273381.i, 2          ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %.lr.ph386.i.preheader.us.preheader.unr-lcssa, label %.lr.ph382.i, !llvm.loop !100

.lr.ph386.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph382.i
  br i1 %lcmp.mod207.not, label %.lr.ph386.i.preheader.us.preheader, label %.lr.ph382.i.epil.preheader

.lr.ph382.i.epil.preheader:                       ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.preheader
  %.0273381.i.epil.init = phi i64 [ 0, %.lr.ph382.i.preheader ], [ %i.vd, %.lr.ph386.i.preheader.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod208)
  %i.ve = add nsw i64 %.0273381.i.epil.init, %.4393.i ; 2 uses
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !66 ; 2 uses
  %i.vh = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i.epil.init ; 2 uses
  %i.vi = icmp eq ptr %i.vg, null
  %spec.store.select359.i.epil = select i1 %i.vi, ptr @.str.6, ptr %i.vg
  store ptr %spec.store.select359.i.epil, ptr %i.vh, align 8
  %i.vj = getelementptr inbounds i8, ptr %i.sm, i64 %i.ve
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 18
  store i8 %i.vk, ptr %i.vl, align 2, !tbaa !96
  br label %.lr.ph386.i.preheader.us.preheader

.lr.ph386.i.preheader.us.preheader:               ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.epil.preheader
  br label %.lr.ph386.i.preheader.us

.lr.ph390.i:                                      ; preds = %bb.eq, %.critedge10.i.split.us
  %.2275389.i = phi i64 [ %i.ws, %bb.eq ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vm = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.2275389.i ; 8 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !95
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !16
  %i.vp = icmp eq i8 %i.vo, 0
  br i1 %i.vp, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph390.i
  %i.vq = load ptr, ptr %i.rz, align 8, !tbaa !38
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.vq, i32 noundef %i.vs, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

bb.ei:                                            ; preds = %.lr.ph390.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !86 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vu, i32 3) ; 4 uses
  store ptr @.str.29, ptr %i.vm, align 8, !tbaa !95
  %i.vv = load ptr, ptr %i.rz, align 8, !tbaa !38 ; 7 uses
  %i.vw = sub nsw i32 %i.vu, %spec.select315.i    ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vy = load i8, ptr %i.vx, align 8, !tbaa !79
  %i.vz = and i8 %i.vy, 3
  switch i8 %i.vz, label %default.unreachable [
    i8 0, label %bb.ej
    i8 2, label %bb.ek
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vm, i64 18
  %i.wb = load i8, ptr %i.wa, align 2, !tbaa !96
  %.not.i328.i = icmp eq i8 %i.wb, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.ek:                                            ; preds = %bb.ei
  %i.wc = lshr i32 %i.vw, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.wc, i8 noundef signext 32) #20
  %i.wd = load ptr, ptr %i.vm, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vv, ptr noundef %i.wd, i32 noundef %spec.select315.i)
  %i.we = sub nuw nsw i32 %i.vw, %i.wc
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.we, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.ej, %bb.ei
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.vw, i8 noundef signext 32) #20
  %i.wf = load ptr, ptr %i.vm, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vv, ptr noundef %i.wf, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.ej, %bb.ei
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vv, ptr noundef nonnull @.str.29, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.vw, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.ek, %bb.eh
  %i.wg = icmp slt i64 %.2275389.i, %i.sd
  br i1 %i.wg, label %bb.el, label %bb.em

bb.el:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wh = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wh, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.eq

bb.em:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wi = load ptr, ptr %i.rz, align 8, !tbaa !38 ; 3 uses
  %i.wj = call i32 @sqlite3_str_length(ptr noundef %i.wi) #20 ; 3 uses
  %i.wk = call ptr @sqlite3_str_value(ptr noundef %i.wi) #20
  %i.wl = icmp sgt i32 %i.wj, 0
  br i1 %i.wl, label %.lr.ph.preheader.i334.i, label %qrfRTrim.exit334.i

.lr.ph.preheader.i334.i:                          ; preds = %bb.en
  %7 = zext nneg i32 %i.wj to i64
  br label %.lr.ph.i332.i

.lr.ph.i332.i:                                    ; preds = %bb.eo, %.lr.ph.preheader.i334.i
  %indvars.iv.i336.i = phi i64 [ %7, %.lr.ph.preheader.i334.i ], [ %indvars.iv.next.i338.i, %bb.eo ] ; 4 uses
  %i.wm = getelementptr i8, ptr %i.wk, i64 %indvars.iv.i336.i
  %i.wn = getelementptr i8, ptr %i.wm, i64 -1
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !16
  %i.wp = icmp eq i8 %i.wo, 32
  br i1 %i.wp, label %bb.eo, label %.critedge.loopexit.split.loop.exit11.i337.i

bb.eo:                                            ; preds = %.lr.ph.i332.i
  %indvars.iv.next.i338.i = add nsw i64 %indvars.iv.i336.i, -1
  %i.wq = icmp sgt i64 %indvars.iv.i336.i, 1
  br i1 %i.wq, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !97

.critedge.loopexit.split.loop.exit11.i337.i:      ; preds = %.lr.ph.i332.i
  %8 = trunc nuw nsw i64 %indvars.iv.i336.i to i32
  br label %qrfRTrim.exit334.i

qrfRTrim.exit334.i:                               ; preds = %bb.eo, %.critedge.loopexit.split.loop.exit11.i337.i, %bb.en
  %.0.lcssa.i331.i = phi i32 [ %i.wj, %bb.en ], [ %8, %.critedge.loopexit.split.loop.exit11.i337.i ], [ 0, %bb.eo ]
  call void @sqlite3_str_truncate(ptr noundef %i.wi, i32 noundef %.0.lcssa.i331.i) #20
  br label %bb.ep

bb.ep:                                            ; preds = %qrfRTrim.exit334.i, %bb.em
  %i.wr = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wr, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.el
  %i.ws = add nuw nsw i64 %.2275389.i, 1          ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.ws, %i.sa
  br i1 %exitcond403.not.i, label %.critedge314.i, label %.lr.ph390.i, !llvm.loop !101

.critedge314.i:                                   ; preds = %._crit_edge387.i.us, %bb.eq, %.preheader360.i.split
  %i.wt = icmp eq i64 %.4393.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.wt, i1 true, i1 %i.rp
  %i.wu = add nsw i64 %.4393.i, %i.sa             ; 2 uses
  %i.wv = icmp slt i64 %i.wu, %i.rx               ; 2 uses
  %or.cond452.i = select i1 %or.cond14.i, i1 %i.wv, i1 false
  br i1 %or.cond452.i, label %bb.er, label %.loopexit.i9

bb.er:                                            ; preds = %.critedge314.i
  %i.ww = load i8, ptr %i.er, align 2
  %i.wx = icmp eq i8 %i.ww, 2
  %or.cond53 = select i1 %i.wt, i1 %i.wx, i1 false ; 5 uses
  %brmerge.not = select i1 %or.cond53, i1 %i.so, i1 false
  br i1 %brmerge.not, label %.lr.ph.i336.i, label %qrfLoadAlignment.exit.i

.lr.ph.i336.i:                                    ; preds = %bb.er
  %i.wy = load i8, ptr %i.sf, align 1, !tbaa !102 ; 2 uses
  %i.wz = load i32, ptr %i.sg, align 4, !tbaa !103
  %i.xa = sext i32 %i.wz to i64
  %i.xb = and i8 %i.wy, 12                        ; 2 uses
  %i.xc = or disjoint i8 %i.xb, 3
  %i.xd = load i32, ptr %i.sh, align 8
  %i.xe = sext i32 %i.xd to i64
  %i.xf = load ptr, ptr %i.si, align 8
  %i.xg = load ptr, ptr %i.sj, align 8
  br label %bb.es

bb.es:                                            ; preds = %bb.ex, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xs, %bb.ex ] ; 6 uses
  %i.xh = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.01.i.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 2 uses
  store i8 %i.wy, ptr %i.xi, align 8, !tbaa !79
  %i.xj = icmp slt i64 %.01.i.i, %i.xa
  br i1 %i.xj, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.01.i.i
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !16
  %i.xm = and i8 %i.xl, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xm, 0
  br i1 %.not.i338.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xn = or disjoint i8 %i.xm, %i.xb
  br label %.sink.split.i.i

bb.ev:                                            ; preds = %bb.es
  %i.xo = icmp slt i64 %.01.i.i, %i.xe
  br i1 %i.xo, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xf, i64 %.01.i.i
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !84
  %i.xr = icmp slt i16 %i.xq, 0
  br i1 %i.xr, label %.sink.split.i.i, label %bb.ex

.sink.split.i.i:                                  ; preds = %bb.ew, %bb.eu
  %.sink.i.i = phi i8 [ %i.xn, %bb.eu ], [ %i.xc, %bb.ew ]
  store i8 %.sink.i.i, ptr %i.xi, align 8, !tbaa !79
  br label %bb.ex

bb.ex:                                            ; preds = %.sink.split.i.i, %bb.ew, %bb.ev, %bb.et
  %i.xs = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xs, %i.sn
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.es, !llvm.loop !104

qrfLoadAlignment.exit.i:                          ; preds = %bb.ex, %bb.er
  %i.xt = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.xt, label %.loopexit.i9 [
    i8 19, label %bb.ey
    i8 1, label %bb.fa
    i8 13, label %bb.fe
    i8 2, label %bb.fg
  ]

bb.ey:                                            ; preds = %qrfLoadAlignment.exit.i
  %or.cond18.i = select i1 %or.cond53, i1 true, i1 %i.rp
  br i1 %or.cond18.i, label %bb.ez, label %.loopexit.i9

bb.ez:                                            ; preds = %bb.ey
  %i.xu = load ptr, ptr %i.rz, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.xu, ptr noundef %3, i8 noundef signext 43)
  br label %.loopexit.i9

bb.fa:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.xv = load ptr, ptr %i.rz, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xv, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1)
  br label %.loopexit.i9

bb.fc:                                            ; preds = %bb.fa
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xw = load ptr, ptr %i.rz, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xw, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0)
  br label %.loopexit.i9

bb.fe:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.ff, label %.loopexit.i9

bb.ff:                                            ; preds = %bb.fe
  %i.xx = load ptr, ptr %i.rz, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.xx, ptr noundef %3, i8 noundef signext 124)
  br label %.loopexit.i9

bb.fg:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %.preheader.i, label %bb.fl

.preheader.i:                                     ; preds = %bb.fg
  br i1 %i.sb, label %.lr.ph392.i, label %.loopexit.i9

.lr.ph392.i:                                      ; preds = %.preheader.i, %bb.fk
  %.3276391.i = phi i64 [ %i.yn, %bb.fk ], [ 0, %.preheader.i ] ; 3 uses
  %i.xy = load ptr, ptr %i.rz, align 8, !tbaa !38
  %i.xz = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.3276391.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.xy, i32 noundef %i.yb, i8 noundef signext 45) #20
  %i.yc = icmp slt i64 %.3276391.i, %i.sd
  %i.yd = load ptr, ptr %i.rz, align 8, !tbaa !38 ; 4 uses
  br i1 %i.yc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.lr.ph392.i
  call void @sqlite3_str_append(ptr noundef %i.yd, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.fk

bb.fi:                                            ; preds = %.lr.ph392.i
  %i.ye = call i32 @sqlite3_str_length(ptr noundef %i.yd) #20 ; 3 uses
  %i.yf = call ptr @sqlite3_str_value(ptr noundef %i.yd) #20
  %i.yg = icmp sgt i32 %i.ye, 0
  br i1 %i.yg, label %.lr.ph.preheader.i345.i, label %qrfRTrim.exit342.i

.lr.ph.preheader.i345.i:                          ; preds = %bb.fi
  %9 = zext nneg i32 %i.ye to i64
  br label %.lr.ph.i340.i

.lr.ph.i340.i:                                    ; preds = %bb.fj, %.lr.ph.preheader.i345.i
  %indvars.iv.i347.i = phi i64 [ %9, %.lr.ph.preheader.i345.i ], [ %indvars.iv.next.i349.i, %bb.fj ] ; 4 uses
  %i.yh = getelementptr i8, ptr %i.yf, i64 %indvars.iv.i347.i
  %i.yi = getelementptr i8, ptr %i.yh, i64 -1
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !16
  %i.yk = icmp eq i8 %i.yj, 32
  br i1 %i.yk, label %bb.fj, label %.critedge.loopexit.split.loop.exit11.i348.i

bb.fj:                                            ; preds = %.lr.ph.i340.i
  %indvars.iv.next.i349.i = add nsw i64 %indvars.iv.i347.i, -1
  %i.yl = icmp sgt i64 %indvars.iv.i347.i, 1
  br i1 %i.yl, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i, !llvm.loop !97

.critedge.loopexit.split.loop.exit11.i348.i:      ; preds = %.lr.ph.i340.i
  %10 = trunc nuw nsw i64 %indvars.iv.i347.i to i32
  br label %qrfRTrim.exit342.i

qrfRTrim.exit342.i:                               ; preds = %bb.fj, %.critedge.loopexit.split.loop.exit11.i348.i, %bb.fi
  %.0.lcssa.i339.i = phi i32 [ %i.ye, %bb.fi ], [ %10, %.critedge.loopexit.split.loop.exit11.i348.i ], [ 0, %bb.fj ]
  call void @sqlite3_str_truncate(ptr noundef %i.yd, i32 noundef %.0.lcssa.i339.i) #20
  %i.ym = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ym, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.fk

bb.fk:                                            ; preds = %qrfRTrim.exit342.i, %bb.fh
  %i.yn = add nuw nsw i64 %.3276391.i, 1          ; 2 uses
  %exitcond404.not.i = icmp eq i64 %i.yn, %i.sa
  br i1 %exitcond404.not.i, label %.loopexit.i9, label %.lr.ph392.i, !llvm.loop !105

bb.fl:                                            ; preds = %bb.fg
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yo = load ptr, ptr %i.rz, align 8, !tbaa !38
  call fastcc void @qrfRTrim(ptr noundef %i.yo)
  %i.yp = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.yp, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %.loopexit.i9

.loopexit.i9:                                     ; preds = %bb.fk, %bb.fm, %bb.fl, %.preheader.i, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.ez, %bb.ey, %qrfLoadAlignment.exit.i, %.critedge314.i
  br i1 %i.wv, label %bb.dx, label %.critedge8.i, !llvm.loop !106

.critedge8.i:                                     ; preds = %.loopexit.i9, %bb.dx, %bb.dw
  %i.yq = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.yr = load i8, ptr %i.yq, align 4, !tbaa !89
  %.not298.i = icmp eq i8 %i.yr, 1
  br i1 %.not298.i, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %.critedge8.i
  %i.ys = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.ys, label %bb.fq [
    i8 1, label %bb.fo
    i8 19, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.yt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.yu, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0)
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.yv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.yw, ptr noundef %3, i8 noundef signext 43)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn, %.critedge8.i
  %i.yx = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !107
  %.not.i343.i = icmp eq ptr %i.yy, null
  br i1 %.not.i343.i, label %qrfWrite.exit.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yz = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !38
  %i.zb = call i32 @sqlite3_str_length(ptr noundef %i.za) #20 ; 3 uses
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %bb.fs, label %qrfWrite.exit.i

bb.fs:                                            ; preds = %bb.fr
  %i.zd = load ptr, ptr %i.yx, align 8, !tbaa !107
  %i.ze = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !108
  %i.zg = load ptr, ptr %i.yz, align 8, !tbaa !38
  %i.zh = call ptr @sqlite3_str_value(ptr noundef %i.zg) #20
  %i.zi = zext nneg i32 %i.zb to i64
  %i.zj = call i32 %i.zd(ptr noundef %i.zf, ptr noundef %i.zh, i64 noundef %i.zi) #20, !inline_history !109 ; 2 uses
  %i.zk = load ptr, ptr %i.yz, align 8, !tbaa !38
  call void @sqlite3_str_reset(ptr noundef %i.zk) #20
  %.not11.i.i = icmp eq i32 %i.zj, 0
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zj, ptr noundef nonnull @.str.69, i32 noundef %i.zb)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %.pre91 = load ptr, ptr %i.gr, align 8, !tbaa !75 ; 2 uses
  br i1 %i.ry, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zn, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %.09.i346.i
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zm) #20
  %i.zn = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.zn, %i.rx
  br i1 %exitcond.not, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !76

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre91) #20
  %i.zo = load ptr, ptr %i.gt, align 8, !tbaa !77
  call void @sqlite3_free(ptr noundef %i.zo) #20
  %i.zp = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zp) #20
  %i.zq = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zq) #20
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bv, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

bb.fu:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.fv:                                            ; preds = %qrfInitialize.exit
  %i.zr = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.zs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !37
  %i.zu = call i32 @sqlite3_prepare_v2(ptr noundef %i.zt, ptr noundef nonnull @.str.84, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #20 ; 2 uses
  %.not.i13 = icmp eq i32 %i.zu, 0
  br i1 %.not.i13, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zv = load ptr, ptr %i.zs, align 8, !tbaa !37
  %i.zw = call ptr @sqlite3_errmsg(ptr noundef %i.zv) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zu, ptr noundef nonnull @.str.85, ptr noundef %i.zw)
  %i.zx = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.zy = call i32 @sqlite3_finalize(ptr noundef %i.zx) #20 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.fx:                                            ; preds = %bb.fv
  %i.zz = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aaa = call i32 @sqlite3_bind_pointer(ptr noundef %i.zz, i32 noundef 1, ptr noundef %i.zr, ptr noundef nonnull @.str.86, ptr noundef null) #20 ; 0 uses
  %i.aab = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.aab, ptr %4, align 8, !tbaa !36
  %i.aac = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 10, ptr %i.aac, align 4, !tbaa !40
  call fastcc void @qrfExplain(ptr noundef nonnull %4)
  %i.aad = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aae = call i32 @sqlite3_finalize(ptr noundef %i.aad) #20 ; 0 uses
  store ptr %i.zr, ptr %4, align 8, !tbaa !36
  br label %qrfScanStatusVm.exit

qrfScanStatusVm.exit:                             ; preds = %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

bb.fy:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.87)
  br label %.critedge

bb.fz:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aaf = call i32 @sqlite3_step(ptr noundef nonnull %0) #20
  %i.aag = icmp eq i32 %i.aaf, 100
  br i1 %i.aag, label %bb.ga, label %.critedge

bb.ga:                                            ; preds = %bb.fz
  %i.aah = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.aah, label %bb.ij [
    i8 14, label %qrfOneSimpleRow.exit
    i8 3, label %qrfOneSimpleRow.exit
    i8 9, label %bb.gb
    i8 10, label %bb.gf
    i8 7, label %bb.gj
    i8 8, label %bb.gp
    i8 11, label %bb.hi
    i8 5, label %bb.hx
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.aai = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.aaj = icmp eq i64 %i.aai, 0
  %i.aak = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  br i1 %i.aaj, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.aak, ptr noundef nonnull @.str.88, i32 noundef 2) #20
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.aak, ptr noundef nonnull @.str.89, i32 noundef 4) #20
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit

bb.gf:                                            ; preds = %bb.ga
  %i.aal = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.aam = icmp eq i64 %i.aal, 0
  %i.aan = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  br i1 %i.aam, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  call void @sqlite3_str_append(ptr noundef %i.aan, ptr noundef nonnull @.str.90, i32 noundef 1) #20
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  call void @sqlite3_str_append(ptr noundef %i.aan, ptr noundef nonnull @.str.91, i32 noundef 3) #20
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
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
