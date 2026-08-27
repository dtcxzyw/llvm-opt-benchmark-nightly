Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %.not295.i = icmp eq i8 %i.qn, 0                ; 4 uses
  %.str.158..str.174.i = select i1 %.not295.i, ptr @.str.158, ptr @.str.174 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !89
  %i.qx = icmp eq i8 %i.qw, 1
  br i1 %i.qx, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.qy = select i1 %.not295.i, ptr getelementptr inbounds nuw (i8, ptr @.str.158, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.173, i64 1)
  br label %bb.dt

bb.do:                                            ; preds = %bb.dm
  %.str.158..str.173.i = select i1 %.not295.i, ptr @.str.158, ptr @.str.173
  %.str.176..str.175.i = select i1 %.not295.i, ptr @.str.176, ptr @.str.175
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
  %.str.158..str.174311.i = select i1 %.not297.i, ptr @.str.158, ptr @.str.174
  %.str.176..str.175312.i = select i1 %.not297.i, ptr @.str.176, ptr @.str.175
  %.str.158..str.173313.i = select i1 %.not297.i, ptr @.str.158, ptr @.str.173
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.3.i = phi ptr [ %.str.158..str.174311.i, %bb.ds ], [ @qrfColumnar.zSpace, %bb.dq ], [ %.str.168..str.166.i, %bb.dk ], [ %.str.168..str.166.i, %bb.dl ], [ %.str.158..str.174.i, %bb.dn ], [ %.str.158..str.174.i, %bb.do ], [ @.str.177, %bb.dp ], [ %i.re, %bb.dr ] ; 4 uses
  %.2269.i = phi ptr [ %.str.176..str.175312.i, %bb.ds ], [ @.str.125, %bb.dq ], [ @.str.125, %bb.dk ], [ %.str.169..str.167.i, %bb.dl ], [ @.str.125, %bb.dn ], [ %.str.176..str.175.i, %bb.do ], [ @.str.125, %bb.dp ], [ @.str.125, %bb.dr ] ; 4 uses
  %.2266.i = phi ptr [ %.str.158..str.173313.i, %bb.ds ], [ @.str.48, %bb.dq ], [ %i.qs, %bb.dk ], [ %.str.168..str.165.i, %bb.dl ], [ %i.qy, %bb.dn ], [ %.str.158..str.173.i, %bb.do ], [ @.str.48, %bb.dp ], [ @.str.48, %bb.dr ] ; 4 uses
  %i.rf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2266.i) #46
  %i.rg = trunc i64 %i.rf to i32                  ; 3 uses
  %i.rh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2269.i) #46
  %i.ri = trunc i64 %i.rh to i32                  ; 3 uses
  %i.rj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3.i) #46
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
  %i.ss = call i32 @sqlite3_str_errcode(ptr noundef %i.sr) #45
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dx
  br i1 %i.sb, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sp, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.eg
  %.0256.i.us = phi i32 [ %i.uh, %bb.eg ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.su = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.su, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #45
  br label %.lr.ph386.i.us

.lr.ph386.i.us:                                   ; preds = %.lr.ph386.i.preheader.us, %bb.ef
  %.0257384.i.us = phi i32 [ %spec.select.i10.us, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ]
  %.1274383.i.us = phi i64 [ %i.uf, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #45
  store i32 0, ptr %i.g, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  store i32 0, ptr %i.h, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
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
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.th, i8 noundef signext 32) #45
  %i.ti = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.ti, i32 noundef %i.td)
  %i.tj = sub nsw i32 %i.tb, %i.th
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tj, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

bb.dz:                                            ; preds = %.lr.ph386.i.us
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 18
  %i.tl = load i8, ptr %i.tk, align 2, !tbaa !96
  %.not.i324.i.us = icmp eq i8 %i.tl, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.dz, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #45
  %i.tm = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tm, i32 noundef %i.td)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.dz, %.lr.ph386.i.us
  %i.tn = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tn, i32 noundef %i.td)
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #45
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
  %i.tv = call i32 @sqlite3_str_length(ptr noundef %i.tu) #45 ; 3 uses
  %i.tw = call ptr @sqlite3_str_value(ptr noundef %i.tu) #45
  %i.tx = icmp sgt i32 %i.tv, 0
  br i1 %i.tx, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.eb, %bb.ec
  %.07.i.i.us = phi i32 [ %6, %bb.ec ], [ %i.tv, %bb.eb ] ; 4 uses
  %5 = zext nneg i32 %.07.i.i.us to i64
  %i.ty = getelementptr i8, ptr %i.tw, i64 %5
  %i.tz = getelementptr i8, ptr %i.ty, i64 -1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !16
  %i.ub = icmp eq i8 %i.ua, 32
  br i1 %i.ub, label %bb.ec, label %qrfRTrim.exit.i.us

bb.ec:                                            ; preds = %.lr.ph.i325.i.us
  %6 = add nsw i32 %.07.i.i.us, -1
  %i.uc = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.uc, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !97

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.ec, %bb.eb
  %.0.lcssa.i.i.us = phi i32 [ %i.tv, %bb.eb ], [ 0, %bb.ec ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tu, i32 noundef %.0.lcssa.i.i.us) #45
  br label %bb.ed

bb.ed:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ea
  %i.ud = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ud, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #45
  br label %bb.ef

bb.ee:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.ue = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ue, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #45
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
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
  call void @sqlite3_str_append(ptr noundef %i.uk, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #45
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.ul = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ul, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #45
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.vd, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter210 = phi i64 [ %niter210.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.um = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.um
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !66 ; 2 uses
  %i.up = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i ; 2 uses
  %i.uq = icmp eq ptr %i.uo, null
  %spec.store.select359.i = select i1 %i.uq, ptr @.str.48, ptr %i.uo
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
  %spec.store.select359.i.1 = select i1 %i.uz, ptr @.str.48, ptr %i.ux
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
  %spec.store.select359.i.epil = select i1 %i.vi, ptr @.str.48, ptr %i.vg
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
  call void @sqlite3_str_appendchar(ptr noundef %i.vq, i32 noundef %i.vs, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

bb.ei:                                            ; preds = %.lr.ph390.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !86 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vu, i32 3) ; 4 uses
  store ptr @.str.178, ptr %i.vm, align 8, !tbaa !95
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
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.wc, i8 noundef signext 32) #45
  %i.wd = load ptr, ptr %i.vm, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vv, ptr noundef %i.wd, i32 noundef %spec.select315.i)
  %i.we = sub nuw nsw i32 %i.vw, %i.wc
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.we, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.ej, %bb.ei
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.vw, i8 noundef signext 32) #45
  %i.wf = load ptr, ptr %i.vm, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vv, ptr noundef %i.wf, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.ej, %bb.ei
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vv, ptr noundef nonnull @.str.178, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vv, i32 noundef %i.vw, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.ek, %bb.eh
  %i.wg = icmp slt i64 %.2275389.i, %i.sd
  br i1 %i.wg, label %bb.el, label %bb.em

bb.el:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wh = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wh, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #45
  br label %bb.eq

bb.em:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wi = load ptr, ptr %i.rz, align 8, !tbaa !38 ; 3 uses
  %i.wj = call i32 @sqlite3_str_length(ptr noundef %i.wi) #45 ; 3 uses
  %i.wk = call ptr @sqlite3_str_value(ptr noundef %i.wi) #45
  %i.wl = icmp sgt i32 %i.wj, 0
  br i1 %i.wl, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i

.lr.ph.i332.i:                                    ; preds = %bb.en, %bb.eo
  %.07.i333.i = phi i32 [ %8, %bb.eo ], [ %i.wj, %bb.en ] ; 4 uses
  %7 = zext nneg i32 %.07.i333.i to i64
  %i.wm = getelementptr i8, ptr %i.wk, i64 %7
  %i.wn = getelementptr i8, ptr %i.wm, i64 -1
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !16
  %i.wp = icmp eq i8 %i.wo, 32
  br i1 %i.wp, label %bb.eo, label %qrfRTrim.exit334.i

bb.eo:                                            ; preds = %.lr.ph.i332.i
  %8 = add nsw i32 %.07.i333.i, -1
  %i.wq = icmp sgt i32 %.07.i333.i, 1
  br i1 %i.wq, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !97

qrfRTrim.exit334.i:                               ; preds = %bb.eo, %.lr.ph.i332.i, %bb.en
  %.0.lcssa.i331.i = phi i32 [ %i.wj, %bb.en ], [ 0, %bb.eo ], [ %.07.i333.i, %.lr.ph.i332.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.wi, i32 noundef %.0.lcssa.i331.i) #45
  br label %bb.ep

bb.ep:                                            ; preds = %qrfRTrim.exit334.i, %bb.em
  %i.wr = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wr, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #45
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
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xv, ptr noundef %3, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181, i32 noundef 1)
  br label %.loopexit.i9

bb.fc:                                            ; preds = %bb.fa
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xw = load ptr, ptr %i.rz, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xw, ptr noundef %3, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef 0)
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
  call void @sqlite3_str_appendchar(ptr noundef %i.xy, i32 noundef %i.yb, i8 noundef signext 45) #45
  %i.yc = icmp slt i64 %.3276391.i, %i.sd
  %i.yd = load ptr, ptr %i.rz, align 8, !tbaa !38 ; 4 uses
  br i1 %i.yc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.lr.ph392.i
  call void @sqlite3_str_append(ptr noundef %i.yd, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #45
  br label %bb.fk

bb.fi:                                            ; preds = %.lr.ph392.i
  %i.ye = call i32 @sqlite3_str_length(ptr noundef %i.yd) #45 ; 3 uses
  %i.yf = call ptr @sqlite3_str_value(ptr noundef %i.yd) #45
  %i.yg = icmp sgt i32 %i.ye, 0
  br i1 %i.yg, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i

.lr.ph.i340.i:                                    ; preds = %bb.fi, %bb.fj
  %.07.i341.i = phi i32 [ %10, %bb.fj ], [ %i.ye, %bb.fi ] ; 4 uses
  %9 = zext nneg i32 %.07.i341.i to i64
  %i.yh = getelementptr i8, ptr %i.yf, i64 %9
  %i.yi = getelementptr i8, ptr %i.yh, i64 -1
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !16
  %i.yk = icmp eq i8 %i.yj, 32
  br i1 %i.yk, label %bb.fj, label %qrfRTrim.exit342.i

bb.fj:                                            ; preds = %.lr.ph.i340.i
  %10 = add nsw i32 %.07.i341.i, -1
  %i.yl = icmp sgt i32 %.07.i341.i, 1
  br i1 %i.yl, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i, !llvm.loop !97

qrfRTrim.exit342.i:                               ; preds = %bb.fj, %.lr.ph.i340.i, %bb.fi
  %.0.lcssa.i339.i = phi i32 [ %i.ye, %bb.fi ], [ 0, %bb.fj ], [ %.07.i341.i, %.lr.ph.i340.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.yd, i32 noundef %.0.lcssa.i339.i) #45
  %i.ym = load ptr, ptr %i.rz, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ym, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #45
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
  call void @sqlite3_str_append(ptr noundef %i.yp, ptr noundef nonnull @.str.125, i32 noundef 1) #45
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
  call fastcc void @qrfBoxSeparator(ptr noundef %i.yu, ptr noundef %3, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 0)
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
  %i.zb = call i32 @sqlite3_str_length(ptr noundef %i.za) #45 ; 3 uses
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %bb.fs, label %qrfWrite.exit.i

bb.fs:                                            ; preds = %bb.fr
  %i.zd = load ptr, ptr %i.yx, align 8, !tbaa !107
  %i.ze = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !108
  %i.zg = load ptr, ptr %i.yz, align 8, !tbaa !38
  %i.zh = call ptr @sqlite3_str_value(ptr noundef %i.zg) #45
  %i.zi = zext nneg i32 %i.zb to i64
  %i.zj = call i32 %i.zd(ptr noundef %i.zf, ptr noundef %i.zh, i64 noundef %i.zi) #45, !inline_history !109 ; 2 uses
  %i.zk = load ptr, ptr %i.yz, align 8, !tbaa !38
  call void @sqlite3_str_reset(ptr noundef %i.zk) #45
  %.not11.i.i = icmp eq i32 %i.zj, 0
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zj, ptr noundef nonnull @.str.217, i32 noundef %i.zb)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %.pre91 = load ptr, ptr %i.gr, align 8, !tbaa !75 ; 2 uses
  br i1 %i.ry, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zn, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %.09.i346.i
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zm) #45
  %i.zn = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.zn, %i.rx
  br i1 %exitcond.not, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !76

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre91) #45
  %i.zo = load ptr, ptr %i.gt, align 8, !tbaa !77
  call void @sqlite3_free(ptr noundef %i.zo) #45
  %i.zp = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zp) #45
  %i.zq = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zq) #45
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bv, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %.critedge

bb.fu:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.fv:                                            ; preds = %qrfInitialize.exit
  %i.zr = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  %i.zs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !37
  %i.zu = call i32 @sqlite3_prepare_v2(ptr noundef %i.zt, ptr noundef nonnull @.str.232, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #45 ; 2 uses
  %.not.i13 = icmp eq i32 %i.zu, 0
  br i1 %.not.i13, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zv = load ptr, ptr %i.zs, align 8, !tbaa !37
  %i.zw = call ptr @sqlite3_errmsg(ptr noundef %i.zv) #45
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zu, ptr noundef nonnull @.str.51, ptr noundef %i.zw)
  %i.zx = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.zy = call i32 @sqlite3_finalize(ptr noundef %i.zx) #45 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.fx:                                            ; preds = %bb.fv
  %i.zz = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aaa = call i32 @sqlite3_bind_pointer(ptr noundef %i.zz, i32 noundef 1, ptr noundef %i.zr, ptr noundef nonnull @.str.233, ptr noundef null) #45 ; 0 uses
  %i.aab = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.aab, ptr %4, align 8, !tbaa !36
  %i.aac = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 10, ptr %i.aac, align 4, !tbaa !40
  call fastcc void @qrfExplain(ptr noundef nonnull %4)
  %i.aad = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aae = call i32 @sqlite3_finalize(ptr noundef %i.aad) #45 ; 0 uses
  store ptr %i.zr, ptr %4, align 8, !tbaa !36
  br label %qrfScanStatusVm.exit

qrfScanStatusVm.exit:                             ; preds = %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  br label %.critedge

bb.fy:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.234)
  br label %.critedge

bb.fz:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aaf = call i32 @sqlite3_step(ptr noundef nonnull %0) #45
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
  call void @sqlite3_str_append(ptr noundef %i.aak, ptr noundef nonnull @.str.235, i32 noundef 2) #45
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.aak, ptr noundef nonnull @.str.236, i32 noundef 4) #45
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
  call void @sqlite3_str_append(ptr noundef %i.aan, ptr noundef nonnull @.str.237, i32 noundef 1) #45
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  call void @sqlite3_str_append(ptr noundef %i.aan, ptr noundef nonnull @.str.238, i32 noundef 3) #45
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit
end_hunk_0
begin_hunk_1_@uintCollFunc:bb.a
  br i1 %.not98, label %bb.m, label %.thread

bb.k:                                             ; preds = %bb.b
  %.not92 = icmp eq i32 %i.p, 0
  br i1 %.not92, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bo = add nsw i32 %.076127, 1
  %i.bp = add nsw i32 %.075128, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.379 = phi i32 [ %.lcssa, %bb.j ], [ %i.bo, %bb.l ] ; 3 uses
  %.3 = phi i32 [ %i.az, %bb.j ], [ %i.bp, %bb.l ] ; 3 uses
  %i.bq = icmp slt i32 %.379, %1
  %i.br = icmp slt i32 %.3, %3
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.b, label %._crit_edge, !llvm.loop !174

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %.076.lcssa = phi i32 [ 0, %bb.a ], [ %.379, %bb.m ]
  %.075.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.m ]
  %i.bt = add i32 %3, %.076.lcssa
  %i.bu = sub i32 %1, %i.bt
  %i.bv = add i32 %i.bu, %.075.lcssa
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.c, %bb.k, %bb.j, %bb.f, %bb.g, %._crit_edge
  %.383 = phi i32 [ 1, %bb.f ], [ %i.bv, %._crit_edge ], [ 1, %bb.g ], [ %i.p, %bb.c ], [ -1, %bb.i ], [ %i.p, %bb.k ], [ %i.bn, %bb.j ]
  ret i32 %.383
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_decimal_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr @sqlite3_decimal_init.aFunc, i64 %indvars.iv ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !177
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = add nsw i32 %i.e, -4
  %.not = icmp ult i32 %i.f, -2
  %i.g = select i1 %.not, ptr null, ptr %0
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178
  %i.j = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.d, i32 noundef 2099201, ptr noundef %i.g, ptr noundef %i.i, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.k = icmp samesign ult i64 %indvars.iv, 8
  %i.l = icmp eq i32 %i.j, 0                      ; 2 uses
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %bb.b, label %bb.c, !llvm.loop !179

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @sqlite3_create_window_function(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef nonnull @decimalSumStep, ptr noundef nonnull @decimalSumFinalize, ptr noundef nonnull @decimalSumValue, ptr noundef nonnull @decimalSumInverse, ptr noundef null) #45 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @sqlite3_create_collation(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef null, ptr noundef nonnull @decimalCollFunc) #45
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d
  %.2 = phi i32 [ %i.p, %bb.e ], [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal void @decimalFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !154
  %i.b = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.a, i32 noundef 0) ; 11 uses
  %i.c = icmp eq i32 %1, 2
  br i1 %i.c, label %bb.b, label %decimal_round.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.f = tail call i32 @sqlite3_value_int(ptr noundef %i.e) #45 ; 10 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %decimal_round.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %i.b, null
  br i1 %i.h, label %decimal_round.exit.thread21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !180  ; 6 uses
  %.not.i = icmp sgt i32 %i.j, %i.f
  br i1 %.not.i, label %.preheader50.i, label %decimal_round.exit.thread

.preheader50.i:                                   ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182  ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader50.i
  %indvars.iv.i = phi i64 [ 0, %.preheader50.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %.critedge.split.loop.exit69.i

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.e, !llvm.loop !183

.critedge.split.loop.exit69.i:                    ; preds = %bb.e
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %.critedge.split.loop.exit69.i
  %.0.lcssa.i = phi i32 [ %i.p, %.critedge.split.loop.exit69.i ], [ %i.j, %bb.f ]
  %i.q = add nuw nsw i32 %.0.lcssa.i, %i.f        ; 6 uses
  %.not48.i = icmp sgt i32 %i.j, %i.q
  br i1 %.not48.i, label %bb.g, label %decimal_round.exit

bb.g:                                             ; preds = %.critedge.i
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = icmp sgt i8 %i.t, 4
  br i1 %i.u, label %.preheader.i, label %.critedge4.i

.preheader.i:                                     ; preds = %bb.g, %bb.h
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv56.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = icmp eq i8 %i.w, 9
  br i1 %i.x, label %bb.h, label %.critedge2.i

bb.h:                                             ; preds = %.preheader.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %i.r
  br i1 %exitcond60.not.i, label %.critedge2.thread.i, label %.preheader.i, !llvm.loop !184

.critedge2.i:                                     ; preds = %.preheader.i
  %i.y = trunc nuw nsw i64 %indvars.iv56.i to i32
  %i.z = icmp eq i32 %i.q, %i.y
  br i1 %i.z, label %.critedge2.thread.i, label %bb.l

.critedge2.thread.i:                              ; preds = %bb.h, %.critedge2.i
  %i.aa = icmp sgt i32 %i.j, 9999998
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge2.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.ab, align 1, !tbaa !185
  br label %decimal_round.exit.thread

bb.j:                                             ; preds = %.critedge2.thread.i
  %i.ac = add nuw nsw i32 %i.j, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = tail call ptr @sqlite3_realloc64(ptr noundef nonnull %i.l, i64 noundef %i.ad) #45 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.k, label %decimal_expand.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.ag, align 1, !tbaa !185
  br label %decimal_round.exit.thread

decimal_expand.exit.i:                            ; preds = %bb.j
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !182
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !180
  %i.aj = sext i32 %i.ai to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.ae, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !182
  store i8 0, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.i, align 4, !tbaa !180
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.i, align 4, !tbaa !180
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !185
  %i.an = icmp eq i8 %.pre.i, 0
  br i1 %i.an, label %decimal_expand.exit._crit_edge.i, label %decimal_round.exit.thread

decimal_expand.exit._crit_edge.i:                 ; preds = %decimal_expand.exit.i
  %.pre61.i = load ptr, ptr %i.k, align 8, !tbaa !182
  br label %bb.l

bb.l:                                             ; preds = %decimal_expand.exit._crit_edge.i, %.critedge2.i
  %i.ao = phi ptr [ %.pre61.i, %decimal_expand.exit._crit_edge.i ], [ %i.l, %.critedge2.i ]
  %i.ap = add nsw i32 %i.q, -1                    ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = add i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !16
  %i.au = icmp sgt i32 %i.q, 1
  br i1 %i.au, label %.lr.ph.i, label %.critedge4.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.153.i = phi i32 [ %4, %bb.m ], [ %i.ap, %bb.l ] ; 3 uses
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !182
  %3 = zext nneg i32 %.153.i to i64               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %3 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = icmp sgt i8 %i.ax, 9
  br i1 %i.ay, label %bb.m, label %.critedge4.i

bb.m:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.aw, align 1, !tbaa !16
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !182
  %i.ba = getelementptr i8, ptr %i.az, i64 %3
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1     ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = add i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !16
  %4 = add nsw i32 %.153.i, -1
  %i.be = icmp sgt i32 %.153.i, 1
  br i1 %i.be, label %.lr.ph.i, label %.critedge4.i, !llvm.loop !186

.critedge4.i:                                     ; preds = %bb.m, %.lr.ph.i, %bb.l, %bb.g
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !182
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.r
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !180
  %i.bi = sub nsw i32 %i.bh, %i.q
  %i.bj = sext i32 %i.bi to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bg, i8 0, i64 %i.bj, i1 false)
  br label %decimal_round.exit.thread

decimal_round.exit:                               ; preds = %.critedge.i, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.f, %.critedge.i ]
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %decimal_round.exit.thread21, label %decimal_round.exit.thread

decimal_round.exit.thread:                        ; preds = %bb.d, %bb.i, %bb.k, %decimal_expand.exit.i, %.critedge4.i, %decimal_round.exit
  %.020 = phi i32 [ %.0, %decimal_round.exit ], [ %i.f, %.critedge4.i ], [ %i.f, %decimal_expand.exit.i ], [ %i.f, %bb.k ], [ %i.f, %bb.i ], [ %i.f, %bb.d ]
  %i.bk = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %.not16 = icmp eq ptr %i.bk, null
  br i1 %.not16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %decimal_round.exit.thread
  tail call fastcc void @decimal_result_sci(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %.020)
  br label %decimal_free.exit

bb.o:                                             ; preds = %decimal_round.exit.thread
  tail call fastcc void @decimal_result(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %decimal_free.exit

decimal_free.exit:                                ; preds = %bb.o, %bb.n
  %i.bl = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load ptr, ptr %i.bl, align 8, !tbaa !182
  tail call void @sqlite3_free(ptr noundef %.val.i) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.b) #45
  br label %decimal_round.exit.thread21

decimal_round.exit.thread21:                      ; preds = %bb.c, %decimal_free.exit, %decimal_round.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decimalCmpFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !154
  %i.b = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %decimal_free.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !187
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %decimal_free.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  %i.h = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.g, i32 noundef 1) ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %decimal_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !187
  %.not19 = icmp eq i8 %i.k, 0
  br i1 %.not19, label %bb.e, label %decimal_free.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc i32 @decimal_cmp(ptr noundef %i.b, ptr noundef %i.h)
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.l, i32 0)
  tail call void @sqlite3_result_int(ptr noundef %0, i32 noundef %.0) #45
  br label %decimal_free.exit

decimal_free.exit:                                ; preds = %bb.e, %bb.b, %bb.d, %bb.c
  %.015.ph = phi ptr [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !182
  tail call void @sqlite3_free(ptr noundef %.val.i) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.b) #45
  %.not.i21 = icmp eq ptr %.015.ph, null
  br i1 %.not.i21, label %decimal_free.exit23, label %bb.f

bb.f:                                             ; preds = %decimal_free.exit
  %i.n = getelementptr i8, ptr %.015.ph, i64 16
  %.val.i22 = load ptr, ptr %i.n, align 8, !tbaa !182
  tail call void @sqlite3_free(ptr noundef %.val.i22) #45
  tail call void @sqlite3_free(ptr noundef nonnull %.015.ph) #45
  br label %decimal_free.exit23

decimal_free.exit23:                              ; preds = %bb.a, %decimal_free.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decimalAddFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !154
  %i.b = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.d, i32 noundef 1) ; 4 uses
  tail call fastcc void @decimal_add(ptr noundef %i.b, ptr noundef %i.e)
  tail call fastcc void @decimal_result(ptr noundef %0, ptr noundef %i.b)
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %decimal_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !182
  tail call void @sqlite3_free(ptr noundef %.val.i) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.b) #45
  br label %decimal_free.exit

decimal_free.exit:                                ; preds = %bb.a, %bb.b
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %decimal_free.exit12, label %bb.c

bb.c:                                             ; preds = %decimal_free.exit
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val.i11 = load ptr, ptr %i.g, align 8, !tbaa !182
  tail call void @sqlite3_free(ptr noundef %.val.i11) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.e) #45
  br label %decimal_free.exit12

decimal_free.exit12:                              ; preds = %decimal_free.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decimalSubFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !154
  %i.b = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.d, i32 noundef 1) ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.split, label %.split14

.split:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %decimal_free.exit, label %decimal_free.exit.sink.split

.split14:                                         ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 8, !tbaa !188
  %.not15 = icmp eq i8 %i.f, 0
  %i.g = zext i1 %.not15 to i8
  store i8 %i.g, ptr %i.e, align 8, !tbaa !188
  tail call fastcc void @decimal_add(ptr noundef %i.b, ptr noundef nonnull %i.e)
  tail call fastcc void @decimal_result(ptr noundef %0, ptr noundef %i.b)
  %.not.i16 = icmp eq ptr %i.b, null
  br i1 %.not.i16, label %decimal_free.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %.split14
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %.val.i17 = load ptr, ptr %i.h, align 8, !tbaa !182
  tail call void @sqlite3_free(ptr noundef %.val.i17) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.b) #45
  br label %decimal_free.exit.sink.split

decimal_free.exit.sink.split:                     ; preds = %bb.b, %.split14, %.split
  %.sink24 = phi ptr [ %i.b, %.split ], [ %i.e, %.split14 ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = getelementptr i8, ptr %.sink24, i64 16
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !182
  tail call void @sqlite3_free(ptr noundef %.val.i) #45
  tail call void @sqlite3_free(ptr noundef nonnull %.sink24) #45
  br label %decimal_free.exit

decimal_free.exit:                                ; preds = %decimal_free.exit.sink.split, %.split
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decimalMulFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !154
  %i.b = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.e = tail call fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %i.d, i32 noundef 1) ; 7 uses
  %i.f = icmp eq ptr %i.b, null
  br i1 %i.f, label %decimal_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !185
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !187
  %i.k = icmp ne i8 %i.j, 0
  %i.l = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1
end_hunk_1
begin_hunk_2_@qrfWrapLine:bb.a
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
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !824

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
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !825

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
  br i1 %.not133, label %bb.ah, label %.split.loop.exit, !llvm.loop !825

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
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !826

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
  br label %bb.ak, !llvm.loop !827

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
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %0) #45 ; 3 uses
  %i.b = tail call ptr @sqlite3_str_value(ptr noundef %0) #45
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %2, %bb.b ], [ %i.a, %bb.a ]   ; 4 uses
  %1 = zext nneg i32 %.07 to i64
  %i.d = getelementptr i8, ptr %i.b, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %2 = add nsw i32 %.07, -1
  %i.h = icmp sgt i32 %.07, 1
  br i1 %i.h, label %.lr.ph, label %.critedge, !llvm.loop !97

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %.07, %.lr.ph ]
  tail call void @sqlite3_str_truncate(ptr noundef %0, i32 noundef %.0.lcssa) #45
  ret void
}

declare void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendall(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @sqlite3_str_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @sqlite3_errstr(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_dup(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_value_free(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_str_truncate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

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
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.05072, i32 noundef %.05670) #45
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
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %i.t) #45
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.w = sub nsw i32 %i.i, %i.t
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %.05371, 7
  %i.y = sub nuw nsw i32 8, %i.x                  ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.y, i8 noundef signext 32) #45
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.af = add i32 %.05371, 1
  store i8 -30, ptr %i.a, align 1, !tbaa !16
  store i8 -112, ptr %i.c, align 1, !tbaa !16
  %i.ag = or disjoint i8 %i.g, -128
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !16
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3) #45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ai = add nsw i32 %i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
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
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = shl nuw nsw i32 %i.am, 12
  %i.bl = and i32 %i.bk, 61440
  %i.bm = shl nuw nsw i32 %i.bc, 6
  %i.bn = and i32 %i.bm, 4032
  %i.bo = or disjoint i32 %i.bn, %i.bl
  %i.bp = and i32 %i.bh, 63
  %i.bq = or disjoint i32 %i.bo, %i.bp
  br label %sqlite3_qrf_decode_utf8.exit

end_hunk_2
begin_hunk_3_@completionBestIndex:bb.a
bb.n:                                             ; preds = %bb.l
  %i.ag = or i32 %.03438.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.k, %bb.l, %bb.m, %bb.n, %._crit_edge.unr-lcssa
  %.135.lcssa = phi i32 [ %.135.1, %._crit_edge.unr-lcssa ], [ %.03438.epil.init, %.lr.ph.epil.preheader ], [ %.03438.epil.init, %bb.k ], [ %.03438.epil.init, %bb.l ], [ %i.ag, %bb.n ], [ %i.af, %bb.m ] ; 2 uses
  %.133.lcssa = phi i32 [ %.133.1, %._crit_edge.unr-lcssa ], [ %.03239.epil.init, %.lr.ph.epil.preheader ], [ %.03239.epil.init, %bb.k ], [ %.03239.epil.init, %bb.l ], [ %.03637.epil.init, %bb.n ], [ %.03239.epil.init, %bb.m ] ; 2 uses
  %.131.lcssa = phi i32 [ %.131.1, %._crit_edge.unr-lcssa ], [ %.03040.epil.init, %.lr.ph.epil.preheader ], [ %.03040.epil.init, %bb.k ], [ %.03040.epil.init, %bb.l ], [ %.03040.epil.init, %bb.n ], [ %.03637.epil.init, %bb.m ] ; 2 uses
  %i.ah = icmp sgt i32 %.133.lcssa, -1
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !892
  %i.ak = zext nneg i32 %.133.lcssa to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store i32 1, ptr %i.al, align 4, !tbaa !893
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i8 1, ptr %i.am, align 4, !tbaa !895
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %.029 = phi i32 [ 1, %bb.o ], [ 0, %._crit_edge ] ; 2 uses
  %i.an = icmp sgt i32 %.131.lcssa, -1
  br i1 %i.an, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ao = add nuw nsw i32 %.029, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !892
  %i.ar = zext nneg i32 %.131.lcssa to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  store i32 %i.ao, ptr %i.as, align 4, !tbaa !893
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 1, ptr %i.at, align 4, !tbaa !895
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.q, %bb.p
  %.034.lcssa4853 = phi i32 [ %.135.lcssa, %bb.q ], [ %.135.lcssa, %bb.p ], [ 0, %bb.a ]
  %.1 = phi i32 [ %i.ao, %bb.q ], [ %.029, %bb.p ], [ 0, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.034.lcssa4853, ptr %i.au, align 8, !tbaa !907
  %i.av = mul nuw nsw i32 %.1, 1000
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fsub double 5.000000e+03, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.ax, ptr %i.ay, align 8, !tbaa !899
  %.neg = mul nsw i32 %.1, -100
  %i.az = add nsw i32 %.neg, 500
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !900
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @completionDisconnect(ptr noundef %0) #4 {
bb.a:
  tail call void @sqlite3_free(ptr noundef %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @completionOpen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_malloc64(i64 noundef 80) #45 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !949
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !952
  store ptr %i.a, ptr %1, align 8, !tbaa !909
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @completionClose(ptr noundef initializes((16, 24), (76, 80)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !954
  tail call void @sqlite3_free(ptr noundef %i.b) #45
  store ptr null, ptr %i.a, align 8, !tbaa !954
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !955
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !956
  tail call void @sqlite3_free(ptr noundef %i.e) #45
  store ptr null, ptr %i.d, align 8, !tbaa !956
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !957
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !958
  %i.i = tail call i32 @sqlite3_finalize(ptr noundef %i.h) #45 ; 0 uses
  store ptr null, ptr %i.g, align 8, !tbaa !958
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.j, align 4, !tbaa !959
  tail call void @sqlite3_free(ptr noundef %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @completionFilter(ptr noundef initializes((16, 24), (76, 80)) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !954
  tail call void @sqlite3_free(ptr noundef %i.b) #45
  store ptr null, ptr %i.a, align 8, !tbaa !954
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !955
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !956
  tail call void @sqlite3_free(ptr noundef %i.e) #45
  store ptr null, ptr %i.d, align 8, !tbaa !956
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !957
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !958
  %i.i = tail call i32 @sqlite3_finalize(ptr noundef %i.h) #45 ; 0 uses
  store ptr null, ptr %i.g, align 8, !tbaa !958
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.j, align 4, !tbaa !959
  %i.k = and i32 %1, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %4, align 8, !tbaa !154
  %i.m = tail call i32 @sqlite3_value_bytes(ptr noundef %i.l) #45 ; 2 uses
  store i32 %i.m, ptr %i.c, align 8, !tbaa !955
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !154
  %i.p = tail call ptr @sqlite3_value_text(ptr noundef %i.o) #45
  %i.q = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.p) #45 ; 3 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !954
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge61, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #46
  %i.t = trunc i64 %i.s to i32
  store i32 %i.t, ptr %i.c, align 8, !tbaa !955
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.a
  %.051 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.b ]
  %i.u = and i32 %1, 2
  %.not57 = icmp eq i32 %i.u, 0
  br i1 %.not57, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.051 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = tail call i32 @sqlite3_value_bytes(ptr noundef %i.w) #45 ; 2 uses
  store i32 %i.x, ptr %i.f, align 4, !tbaa !957
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.aa = tail call ptr @sqlite3_value_text(ptr noundef %i.z) #45
  %i.ab = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.aa) #45 ; 3 uses
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !956
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.critedge61, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #46
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.f, align 4, !tbaa !957
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !956 ; 3 uses
  %.not58 = icmp eq ptr %i.af, null
  br i1 %.not58, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !954
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !957 ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.k
  %i.ak = tail call ptr @__ctype_b_loc() #47
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !170
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %.critedge2
  %.062 = phi i32 [ %i.ai, %.lr.ph ], [ %6, %.critedge2 ] ; 4 uses
  %5 = zext nneg i32 %.062 to i64
  %i.am = getelementptr i8, ptr %i.af, i64 %5
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !84
  %i.as = and i16 %i.ar, 8
  %.not59 = icmp ne i16 %i.as, 0
  %i.at = icmp eq i8 %i.ao, 95
  %or.cond = or i1 %i.at, %.not59
  br i1 %or.cond, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.l
  %6 = add nsw i32 %.062, -1
  %i.au = icmp sgt i32 %.062, 1
  br i1 %i.au, label %bb.l, label %.critedge, !llvm.loop !960

.critedge:                                        ; preds = %.critedge2, %bb.l, %bb.k
  %.0.lcssa = phi i32 [ %i.ai, %bb.k ], [ %.062, %bb.l ], [ 0, %.critedge2 ] ; 2 uses
  %i.av = sub nsw i32 %i.ai, %.0.lcssa            ; 3 uses
  store i32 %i.av, ptr %i.c, align 8, !tbaa !955
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.critedge
  %i.ax = sext i32 %.0.lcssa to i64
  %i.ay = getelementptr inbounds i8, ptr %i.af, i64 %i.ax
  %i.az = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.349, i32 noundef %i.av, ptr noundef nonnull %i.ay) #45 ; 3 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !954
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.critedge61, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #46
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.c, align 8, !tbaa !955
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge, %bb.j, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.bd, align 8, !tbaa !961
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.be, align 8, !tbaa !962
  %i.bf = tail call i32 @completionNext(ptr noundef nonnull %0)
  br label %.critedge61

.critedge61:                                      ; preds = %bb.m, %bb.g, %bb.c, %bb.o
  %.1 = phi i32 [ 7, %bb.g ], [ 7, %bb.c ], [ %i.bf, %bb.o ], [ 7, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @completionNext(ptr noundef %0) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !961
  %i.e = add nsw i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !961
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.074.ph = phi i32 [ 0, %bb.a ], [ %.074.ph.be, %.outer.backedge ] ; 3 uses
  %.072.ph = phi i32 [ -1, %bb.a ], [ %.072.ph.be, %.outer.backedge ] ; 2 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !962
  switch i32 %i.n, label %bb.d [
    i32 11, label %.loopexit
    i32 1, label %bb.b
    i32 7, label %.loopexit155
    i32 8, label %.loopexit156
    i32 9, label %.loopexit157
  ]

bb.b:                                             ; preds = %.outer
  %i.o = load i32, ptr %i.g, align 4, !tbaa !959
  %i.p = call i32 @sqlite3_keyword_count() #45
  %.not85.peel = icmp slt i32 %i.o, %i.p
  br i1 %.not85.peel, label %bb.c, label %.thread110.peel.thread

.thread110.peel.thread:                           ; preds = %bb.b
  store ptr null, ptr %i.h, align 8, !tbaa !963
  store i32 7, ptr %i.f, align 8, !tbaa !962
  br label %thread-pre-split.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.g, align 4, !tbaa !959  ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.g, align 4, !tbaa !959
  %i.s = call i32 @sqlite3_keyword_name(i32 noundef %i.q, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #45 ; 0 uses
  br label %.thread110.peel

bb.d:                                             ; preds = %.outer
  %i.t = icmp slt i32 %.072.ph, 0
  br i1 %i.t, label %.thread110.peel, label %.thread99

.thread110.peel:                                  ; preds = %bb.d, %bb.c
  %.pr = load ptr, ptr %i.h, align 8, !tbaa !963
  %i.u = icmp eq ptr %.pr, null
  br i1 %i.u, label %thread-pre-split.preheader, label %.loopexit117

thread-pre-split.preheader:                       ; preds = %.thread110.peel.thread, %.thread110.peel
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.preheader, %.split166
  %.pr167 = load i32, ptr %i.f, align 8, !tbaa !962
  br label %.outer168

.outer168:                                        ; preds = %.split, %thread-pre-split
  %.ph = phi i32 [ 7, %.split ], [ %.pr167, %thread-pre-split ]
  br label %.thread110

.thread110:                                       ; preds = %.thread110, %.outer168
  switch i32 %.ph, label %.thread110 [
    i32 11, label %.loopexit
    i32 1, label %bb.e
    i32 7, label %.loopexit155
    i32 8, label %.loopexit156
    i32 9, label %.loopexit157
  ], !llvm.loop !964

bb.e:                                             ; preds = %.thread110
  %i.v = load i32, ptr %i.g, align 4, !tbaa !959
  %i.w = call i32 @sqlite3_keyword_count() #45
  %.not85 = icmp slt i32 %i.v, %i.w
  br i1 %.not85, label %.split166, label %.split

.split:                                           ; preds = %bb.e
  store ptr null, ptr %i.h, align 8, !tbaa !963
  store i32 7, ptr %i.f, align 8, !tbaa !962
  br label %.outer168, !llvm.loop !964

.split166:                                        ; preds = %bb.e
  %i.x = load i32, ptr %i.g, align 4, !tbaa !959  ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.g, align 4, !tbaa !959
  %i.z = call i32 @sqlite3_keyword_name(i32 noundef %i.x, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #45 ; 0 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !963
  %i.aa = icmp eq ptr %.pre, null
  br i1 %i.aa, label %thread-pre-split, label %.loopexit117, !llvm.loop !964

.loopexit155:                                     ; preds = %.thread110, %.outer
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !958
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %.thread99

bb.f:                                             ; preds = %.loopexit155
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !952
  %i.ae = call i32 @sqlite3_prepare_v2(ptr noundef %i.ad, ptr noundef nonnull @.str.350, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null) #45 ; 0 uses
  br label %.thread99

.loopexit156:                                     ; preds = %.thread110, %.outer
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !958
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %.thread99

bb.g:                                             ; preds = %.loopexit156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !952
  %i.ai = call ptr @sqlite3_str_new(ptr noundef %i.ah) #45 ; 3 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !952
  %i.ak = call i32 @sqlite3_prepare_v2(ptr noundef %i.aj, ptr noundef nonnull @.str.350, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 0 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.am = call i32 @sqlite3_step(ptr noundef %i.al) #45
  %i.an = icmp eq i32 %i.am, 100
  br i1 %i.an, label %.lr.ph139.preheader, label %._crit_edge140

.lr.ph139.preheader:                              ; preds = %bb.g
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.ap = call ptr @sqlite3_column_text(ptr noundef %i.ao, i32 noundef 1) #45
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.ai, ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.48, ptr noundef %i.ap) #45
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.ar = call i32 @sqlite3_step(ptr noundef %i.aq) #45
  %i.as = icmp eq i32 %i.ar, 100
  br i1 %i.as, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %.lr.ph139
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.au = call ptr @sqlite3_column_text(ptr noundef %i.at, i32 noundef 1) #45
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.ai, ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.352, ptr noundef %i.au) #45
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.aw = call i32 @sqlite3_step(ptr noundef %i.av) #45
  %i.ax = icmp eq i32 %i.aw, 100
  br i1 %i.ax, label %.lr.ph139, label %._crit_edge140, !llvm.loop !965

._crit_edge140:                                   ; preds = %.lr.ph139, %.lr.ph139.preheader, %bb.g
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.az = call i32 @sqlite3_finalize(ptr noundef %i.ay) #45 ; 2 uses
  %i.ba = call ptr @sqlite3_str_finish(ptr noundef %i.ai) #45 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.thread, label %bb.h

.thread:                                          ; preds = %._crit_edge140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge140
  %i.bc = icmp eq i32 %i.az, 0
  br i1 %i.bc, label %.thread92, label %bb.i

.thread92:                                        ; preds = %bb.h
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !952
  %i.be = call i32 @sqlite3_prepare_v2(ptr noundef %i.bd, ptr noundef nonnull %i.ba, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.ba) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.thread99

bb.i:                                             ; preds = %bb.h
  call void @sqlite3_free(ptr noundef nonnull %i.ba) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.loopexit
end_hunk_3
begin_hunk_4_@zipfileStep:bb.a
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154  ; 2 uses
  %i.r = icmp eq i32 %1, 5
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !154
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0111 = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ null, %bb.d ]
  %.0110 = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ null, %bb.d ] ; 3 uses
  %.0109 = phi ptr [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.m, %bb.d ] ; 3 uses
  %.0108 = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ null, %bb.d ] ; 3 uses
  %i.u = tail call ptr @sqlite3_value_text(ptr noundef %i.j) #45 ; 10 uses
  %i.v = tail call i32 @sqlite3_value_bytes(ptr noundef %i.j) #45 ; 10 uses
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.386) #45
  store ptr %i.x, ptr %i.d, align 8, !tbaa !66
  br label %zipfileBufferGrow.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp sgt i32 %i.v, 250
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.387, i32 noundef 250) #45
  store ptr %i.z, ptr %i.d, align 8, !tbaa !66
  br label %zipfileBufferGrow.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq ptr %.0108, null
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i32 @sqlite3_value_type(ptr noundef nonnull %.0108) #45
  %.not126 = icmp eq i32 %i.aa, 5
  br i1 %.not126, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i64 @sqlite3_value_int64(ptr noundef nonnull %.0108) #45
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %i.ad = and i32 %i.ac, -9
  %or.cond5.not = icmp eq i32 %i.ad, 0
  br i1 %or.cond5.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.388, i32 noundef %i.ac) #45
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !66
  br label %zipfileBufferGrow.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0103 = phi i32 [ %i.ac, %bb.m ], [ -1, %bb.l ], [ -1, %bb.k ] ; 3 uses
  %i.af = tail call i32 @sqlite3_value_type(ptr noundef %.0109) #45
  %.not129 = icmp eq i32 %i.af, 5                 ; 2 uses
  br i1 %.not129, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @sqlite3_value_blob(ptr noundef %.0109) #45 ; 4 uses
  %i.ah = tail call i32 @sqlite3_value_bytes(ptr noundef %.0109) #45 ; 7 uses
  %i.ai = tail call i64 @crc32(i64 noundef 0, ptr noundef %i.ag, i32 noundef %i.ah) #45
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = icmp slt i32 %.0103, 0
  %i.al = icmp eq i32 %.0103, 8                   ; 2 uses
  %or.cond7 = or i1 %i.ak, %i.al
  br i1 %or.cond7, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #45
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %i.am = call fastcc i32 @zipfileDeflate(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.d) ; 2 uses
  %.not127 = icmp eq i32 %i.am, 0
  br i1 %.not127, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  %i.an = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.ah
  %or.cond = select i1 %i.al, i1 true, i1 %i.ao   ; 3 uses
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %.1104 = select i1 %or.cond, i32 8, i32 0
  %.0100 = select i1 %or.cond, ptr %i.ap, ptr %i.ag
  %.098 = select i1 %or.cond, i32 %i.an, i32 %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  %.pre147.a = load ptr, ptr %i.e, align 8, !tbaa !66
  br label %zipfileBufferGrow.exit

bb.s:                                             ; preds = %.thread, %bb.o, %bb.p
  %i.aq = phi ptr [ null, %bb.p ], [ %i.ap, %.thread ], [ null, %bb.o ] ; 7 uses
  %.0107 = phi i32 [ 0, %bb.p ], [ 0, %.thread ], [ 1, %bb.o ]
  %.3 = phi i32 [ %.0103, %bb.p ], [ %.1104, %.thread ], [ 0, %bb.o ]
  %.2102 = phi ptr [ %i.ag, %bb.p ], [ %.0100, %.thread ], [ null, %bb.o ]
  %.2 = phi i32 [ %i.ah, %bb.p ], [ %.098, %.thread ], [ 0, %bb.o ] ; 4 uses
  %.097 = phi i32 [ %i.ah, %bb.p ], [ %i.ah, %.thread ], [ 0, %bb.o ]
  %.096 = phi i32 [ %i.aj, %bb.p ], [ %i.aj, %.thread ], [ 0, %bb.o ]
  %i.ar = call fastcc i32 @zipfileGetMode(ptr noundef %.0111, i32 noundef %.0107, ptr noundef %i.c, ptr noundef nonnull %i.d) ; 2 uses
  %.not128 = icmp eq i32 %i.ar, 0
  br i1 %.not128, label %bb.t, label %zipfileBufferGrow.exit

bb.t:                                             ; preds = %bb.s
  %i.as = icmp eq ptr %.0110, null
  br i1 %i.as, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = tail call i32 @sqlite3_value_type(ptr noundef nonnull %.0110) #45
  %i.au = icmp eq i32 %i.at, 5
  br i1 %i.au, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.av = tail call ptr @sqlite3_vfs_find(ptr noundef null) #45 ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %zipfileGetTime.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !386
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !398 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.bb = call i32 %i.ba(ptr noundef nonnull %i.av, ptr noundef nonnull %i.a) #45, !inline_history !1032 ; 0 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !159
  %i.bd = sdiv i64 %i.bc, 1000
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add i32 %i.be, -413362496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %zipfileGetTime.exit

bb.z:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !396
  %i.bi = call i32 %i.bh(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b) #45, !inline_history !1032 ; 0 uses
  %i.bj = load double, ptr %i.b, align 8, !tbaa !436
  %i.bk = fadd double %i.bj, f0xC1429EC5C0000000
  %i.bl = fmul double %i.bk, 8.640000e+04
  %i.bm = fptoui double %i.bl to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %zipfileGetTime.exit

bb.aa:                                            ; preds = %bb.u
  %i.bn = tail call i64 @sqlite3_value_int64(ptr noundef nonnull %.0110) #45
  %i.bo = trunc i64 %i.bn to i32
  br label %zipfileGetTime.exit

zipfileGetTime.exit:                              ; preds = %bb.v, %bb.y, %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.bo, %bb.aa ], [ 0, %bb.v ], [ %i.bf, %bb.y ], [ %i.bm, %bb.z ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %.0.i, ptr %i.bp, align 8, !tbaa !1025
  br i1 %.not129, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %zipfileGetTime.exit
  %i.bq = icmp sgt i32 %i.v, 0
  br i1 %i.bq, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.br = zext nneg i32 %i.v to i64
  %i.bs = getelementptr i8, ptr %i.u, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = icmp eq i8 %i.bu, 47
  br i1 %i.bv, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.bw = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.389) #45
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !66
  br label %zipfileBufferGrow.exit

bb.ae:                                            ; preds = %zipfileGetTime.exit
  %i.bx = icmp eq i32 %i.v, 0
  br i1 %i.bx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = sext i32 %i.v to i64
  %i.bz = getelementptr i8, ptr %i.u, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %.not130 = icmp eq i8 %i.cb, 47
  br i1 %.not130, label %.preheader, label %bb.ag

.preheader:                                       ; preds = %bb.af
  %i.cc = icmp sgt i32 %i.v, 1
  br i1 %i.cc, label %.lr.ph, label %.critedge

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cd = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.375, ptr noundef nonnull %i.u) #45 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %zipfileBufferGrow.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cd) #46
  %i.cg = trunc i64 %i.cf to i32
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.ai
  %.093143 = phi i32 [ %5, %bb.ai ], [ %i.v, %.preheader ] ; 4 uses
  %4 = zext nneg i32 %.093143 to i64
  %i.ch = getelementptr i8, ptr %i.u, i64 %4
  %i.ci = getelementptr i8, ptr %i.ch, i64 -2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = icmp eq i8 %i.cj, 47
  br i1 %i.ck, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %.lr.ph
  %5 = add nsw i32 %.093143, -1
  %i.cl = icmp sgt i32 %.093143, 2
  br i1 %i.cl, label %.lr.ph, label %.critedge, !llvm.loop !1062

.critedge:                                        ; preds = %.lr.ph, %bb.ai, %.preheader, %bb.ah, %bb.ab, %bb.ac
  %.095 = phi ptr [ %i.u, %bb.ac ], [ %i.u, %bb.ab ], [ %i.cd, %bb.ah ], [ %i.u, %.preheader ], [ %i.u, %bb.ai ], [ %i.u, %.lr.ph ]
  %.194 = phi i32 [ %i.v, %bb.ac ], [ %i.v, %bb.ab ], [ %i.cg, %bb.ah ], [ %i.v, %.preheader ], [ %.093143, %.lr.ph ], [ 1, %bb.ai ] ; 2 uses
  %.092 = phi ptr [ null, %bb.ac ], [ null, %bb.ab ], [ %i.cd, %bb.ah ], [ null, %.preheader ], [ null, %bb.ai ], [ null, %.lr.ph ] ; 4 uses
  store i16 798, ptr %3, align 8, !tbaa !1034
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 20, ptr %i.cm, align 2, !tbaa !1035
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 2048, ptr %i.cn, align 4, !tbaa !1036
  %i.co = trunc i32 %.3 to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !1037
  %i.cq = udiv i32 %.0.i, 86400                   ; 2 uses
  %i.cr = urem i32 %.0.i, 86400
  %narrow.i = add nuw nsw i32 %i.cq, 2440588
  %i.cs = uitofp nneg i32 %narrow.i to double
  %i.ct = fadd double %i.cs, f0xC13C7DD040000000
  %i.cu = fdiv double %i.ct, f0x40E1D58800000000
  %i.cv = fptosi double %i.cu to i32              ; 2 uses
  %.neg.i = sdiv i32 %i.cv, -4
  %i.cw = add nuw nsw i32 %i.cq, 2442113
  %i.cx = add i32 %i.cw, %i.cv
  %i.cy = add i32 %i.cx, %.neg.i                  ; 2 uses
  %i.cz = sitofp i32 %i.cy to double
  %i.da = fadd double %i.cz, -1.221000e+02
  %i.db = fdiv double %i.da, 3.652500e+02
  %i.dc = fptosi double %i.db to i32              ; 2 uses
  %i.dd = and i32 %i.dc, 32767
  %i.de = mul nuw nsw i32 %i.dd, 1461
  %i.df = lshr i32 %i.de, 2
  %i.dg = sub nsw i32 %i.cy, %i.df                ; 2 uses
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fdiv double %i.dh, 3.060010e+01
  %i.dj = fptosi double %i.di to i32              ; 3 uses
  %i.dk = icmp slt i32 %i.dj, 14
  %.v.i = select i1 %i.dk, i32 -1, i32 -13
  %i.dl = add nsw i32 %.v.i, %i.dj                ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 2
  %.v33.i = select i1 %i.dm, i32 -4716, i32 -4715
  %i.dn = add nsw i32 %.v33.i, %i.dc              ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 1979
  br i1 %i.do, label %bb.aj, label %zipfileMtimeToDos.exit

bb.aj:                                            ; preds = %.critedge
  %i.dp = urem i32 %.0.i, 60
  %i.dq = urem i32 %.0.i, 3600
  %.lhs.trunc.i = trunc nuw nsw i32 %i.dq to i16
  %i.dr = udiv i16 %.lhs.trunc.i, 60
  %i.ds = udiv i32 %i.cr, 3600
  %i.dt = sitofp i32 %i.dj to double
  %i.du = fmul nnan double %i.dt, 3.060010e+01
  %i.dv = fptosi double %i.du to i32
  %i.dw = shl i32 %i.dl, 5
  %i.dx = shl i32 %i.dn, 9
  %i.dy = add i32 %i.dg, 34816
  %i.dz = sub i32 %i.dy, %i.dv
  %i.ea = add i32 %i.dz, %i.dw
  %i.eb = add i32 %i.ea, %i.dx
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = lshr i32 %i.dp, 1
  %i.ee = shl nuw nsw i16 %i.dr, 5
  %i.ef = shl nuw nsw i32 %i.ds, 11
  %i.eg = or disjoint i32 %i.ef, %i.ed
  %i.eh = trunc nuw i32 %i.eg to i16
  %i.ei = add nuw i16 %i.ee, %i.eh
  br label %zipfileMtimeToDos.exit

zipfileMtimeToDos.exit:                           ; preds = %.critedge, %bb.aj
  %.sink35.i = phi i16 [ %i.ec, %bb.aj ], [ 0, %.critedge ]
  %.sink.i = phi i16 [ %i.ei, %bb.aj ], [ 0, %.critedge ]
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 %.sink35.i, ptr %i.ej, align 2, !tbaa !1038
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %.sink.i, ptr %i.ek, align 8, !tbaa !1039
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.096, ptr %i.el, align 4, !tbaa !1040
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.2, ptr %i.em, align 8, !tbaa !1041
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %.097, ptr %i.en, align 4, !tbaa !1042
  %i.eo = load i32, ptr %i.c, align 4, !tbaa !17
  %i.ep = shl i32 %i.eo, 16
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !1043
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !1063 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !1045
  %i.ev = trunc i32 %.194 to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i16 %i.ev, ptr %i.ew, align 8, !tbaa !1015
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.095, ptr %i.ex, align 8, !tbaa !994
  %i.ey = and i32 %.194, 65535
  %i.ez = add nuw nsw i32 %i.ey, 39               ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !1066
  %i.fc = sub nsw i32 %i.fb, %i.et
  %i.fd = icmp sgt i32 %i.ez, %i.fc
  br i1 %i.fd, label %bb.ak, label %zipfileMtimeToDos.exit._crit_edge

zipfileMtimeToDos.exit._crit_edge:                ; preds = %zipfileMtimeToDos.exit
  %.pre = load ptr, ptr %i.er, align 8, !tbaa !1067
  br label %bb.an

bb.ak:                                            ; preds = %zipfileMtimeToDos.exit
  %i.fe = zext nneg i32 %i.ez to i64
  %.not.i = icmp eq i32 %i.et, 0
  %i.ff = sext i32 %i.et to i64                   ; 2 uses
  %i.fg = shl nsw i64 %i.ff, 1
  %i.fh = select i1 %.not.i, i64 512, i64 %i.fg
  %i.fi = add nsw i64 %i.ff, %i.fe
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.018.i = phi i64 [ %i.fh, %bb.ak ], [ %i.fk, %bb.al ] ; 4 uses
  %i.fj = icmp slt i64 %.018.i, %i.fi
  %i.fk = shl nsw i64 %.018.i, 1
  br i1 %i.fj, label %bb.al, label %bb.am, !llvm.loop !1068

bb.am:                                            ; preds = %bb.al
  %i.fl = load ptr, ptr %i.er, align 8, !tbaa !1069
  %i.fm = call ptr @sqlite3_realloc64(ptr noundef %i.fl, i64 noundef %.018.i) #45 ; 3 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %zipfileBufferGrow.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.am
  store ptr %i.fm, ptr %i.er, align 8, !tbaa !1069
  %i.fo = trunc i64 %.018.i to i32
  store i32 %i.fo, ptr %i.fa, align 4, !tbaa !1066
  %.pre146 = load i32, ptr %i.es, align 8, !tbaa !1063
  br label %bb.an

bb.an:                                            ; preds = %zipfileMtimeToDos.exit._crit_edge, %.thread.i
  %i.fp = phi i32 [ %i.et, %zipfileMtimeToDos.exit._crit_edge ], [ %.pre146, %.thread.i ]
  %i.fq = phi ptr [ %.pre, %zipfileMtimeToDos.exit._crit_edge ], [ %i.fm, %.thread.i ]
  %i.fr = sext i32 %i.fp to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 %i.fr
  %i.ft = call fastcc i32 @zipfileSerializeLFH(ptr noundef %3, ptr noundef %i.fs)
  %i.fu = load i32, ptr %i.es, align 8, !tbaa !1063
  %i.fv = add nsw i32 %i.fu, %i.ft
  store i32 %i.fv, ptr %i.es, align 8, !tbaa !1063
  %i.fw = icmp sgt i32 %.2, 0
  br i1 %i.fw, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fx = zext nneg i32 %.2 to i64                ; 2 uses
  %i.fy = call fastcc i32 @zipfileBufferGrow(ptr noundef %i.er, i64 noundef %i.fx) ; 2 uses
  %.not132 = icmp eq i32 %i.fy, 0
  br i1 %.not132, label %bb.ap, label %zipfileBufferGrow.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fz = load ptr, ptr %i.er, align 8, !tbaa !1067
  %i.ga = load i32, ptr %i.es, align 8, !tbaa !1063
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %i.gb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr align 1 %.2102, i64 %i.fx, i1 false)
  %i.gd = load i32, ptr %i.es, align 8, !tbaa !1063
  %i.ge = add nsw i32 %i.gd, %.2
  store i32 %i.ge, ptr %i.es, align 8, !tbaa !1063
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.gf = load i16, ptr %i.ew, align 8, !tbaa !1015
  %i.gg = zext i16 %i.gf to i64
  %i.gh = add nuw nsw i64 %i.gg, 55
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.gj = call fastcc i32 @zipfileBufferGrow(ptr noundef %i.gi, i64 noundef %i.gh) ; 2 uses
  %.not133 = icmp eq i32 %i.gj, 0
  br i1 %.not133, label %bb.ar, label %zipfileBufferGrow.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !1070
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !1071
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 %i.gn
  %i.gp = call fastcc i32 @zipfileSerializeCDS(ptr noundef %3, ptr noundef %i.go)
  %i.gq = load i32, ptr %i.gl, align 8, !tbaa !1071
  %i.gr = add nsw i32 %i.gq, %i.gp
  store i32 %i.gr, ptr %i.gl, align 8, !tbaa !1071
  %i.gs = load i32, ptr %i.g, align 8, !tbaa !1072
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %i.g, align 8, !tbaa !1072
  br label %zipfileBufferGrow.exit

zipfileBufferGrow.exit:                           ; preds = %bb.am, %bb.r, %bb.ag, %bb.aq, %bb.ao, %bb.s, %bb.ar, %bb.ad, %bb.n, %bb.j, %bb.h, %bb.c
  %i.gu = phi ptr [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.n ], [ %i.aq, %bb.s ], [ %i.aq, %bb.ad ], [ %i.aq, %bb.ag ], [ %i.aq, %bb.ao ], [ %i.aq, %bb.aq ], [ %i.aq, %bb.ar ], [ %.pre147.a, %bb.r ], [ %i.aq, %bb.am ]
  %.0106 = phi i32 [ 1, %bb.c ], [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.n ], [ %i.ar, %bb.s ], [ 1, %bb.ad ], [ 7, %bb.ag ], [ %i.fy, %bb.ao ], [ %i.gj, %bb.aq ], [ 0, %bb.ar ], [ %i.am, %bb.r ], [ 7, %bb.am ] ; 2 uses
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.ad ], [ null, %bb.ag ], [ %.092, %bb.ao ], [ %.092, %bb.aq ], [ %.092, %bb.ar ], [ null, %bb.r ], [ %.092, %bb.am ]
  call void @sqlite3_free(ptr noundef %i.gu) #45
  call void @sqlite3_free(ptr noundef %.1) #45
  %.not134 = icmp eq i32 %.0106, 0
  %.pre148 = load ptr, ptr %i.d, align 8, !tbaa !66 ; 3 uses
  br i1 %.not134, label %bb.av, label %bb.as

bb.as:                                            ; preds = %zipfileBufferGrow.exit
  %.not135 = icmp eq ptr %.pre148, null
  br i1 %.not135, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull %.pre148, i32 noundef -1) #45
  br label %bb.av
end_hunk_4
begin_hunk_5_@shellAddSchemaName:bb.a
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %quoteChar.exit
  %.str.798.sink = phi ptr [ @.str.799, %quoteChar.exit ], [ @.str.798, %.loopexit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.798.sink, i32 noundef %i.ah, ptr noundef nonnull %i.b, ptr noundef nonnull %.fr, ptr noundef nonnull %i.be) #45 ; 5 uses
  br i1 %.not56, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.bh = icmp eq i8 %i.bg, 86
  br i1 %i.bh, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call fastcc ptr @shellFakeSchema(ptr noundef %i.i, ptr noundef nonnull %.fr, ptr noundef %.fr67) ; 4 uses
  %.not57 = icmp eq ptr %i.bi, null
  br i1 %.not57, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp eq ptr %i.bf, null
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.800, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bi) #45
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bl = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.801, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bi) #45
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2 = phi ptr [ %i.bk, %bb.p ], [ %i.bl, %bb.q ]
  tail call void @sqlite3_free(ptr noundef nonnull %i.bi) #45
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.m, %bb.l
  %.3 = phi ptr [ %.2, %bb.r ], [ %i.bf, %bb.n ], [ %i.bf, %bb.m ], [ %i.bf, %bb.l ] ; 2 uses
  %.not58 = icmp eq ptr %.3, null
  br i1 %.not58, label %.critedge60, label %.split.us

.split.us:                                        ; preds = %bb.s, %bb.e, %bb.h
  %.us-phi = phi ptr [ %i.s, %bb.e ], [ %i.z, %bb.h ], [ %.3, %bb.s ]
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %.us-phi, i32 noundef -1, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.t

.critedge60:                                      ; preds = %bb.s, %bb.i, %strlen30.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit64, label %strlen30.exit, !llvm.loop !1173

.loopexit64:                                      ; preds = %.critedge60, %bb.g, %.critedge60.us.4, %bb.f, %bb.h, %.preheader.split.us, %bb.b, %bb.a
  %i.bm = load ptr, ptr %2, align 8, !tbaa !154
  tail call void @sqlite3_result_value(ptr noundef %0, ptr noundef %i.bm) #45
  br label %bb.t

bb.t:                                             ; preds = %.split.us, %.loopexit64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shellModuleSchema(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4304 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !689  ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !154
  %i.e = tail call ptr @sqlite3_value_text(ptr noundef %i.d) #45 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !689
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8, !tbaa !689
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45
  %i.g = tail call fastcc ptr @shellFakeSchema(ptr noundef %i.f, ptr noundef null, ptr noundef %i.e) ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !689
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.804, ptr noundef nonnull %i.g) #45
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef %i.h, i32 noundef -1, ptr noundef nonnull @sqlite3_free) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.g) #45
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shellPutsFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !578
  %i.d = load ptr, ptr %2, align 8, !tbaa !154
  %i.e = tail call ptr @sqlite3_value_text(ptr noundef %i.d) #45
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.c, ptr noundef nonnull @.str.253, ptr noundef %i.e)
  %i.f = load ptr, ptr %2, align 8, !tbaa !154
  tail call void @sqlite3_result_value(ptr noundef %0, ptr noundef %i.f) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shellFormatSchema(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45
  %i.b = tail call ptr @sqlite3_str_new(ptr noundef %i.a) #45 ; 14 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !154
  %i.d = tail call i32 @sqlite3_value_bytes(ptr noundef %i.c) #45 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !154
  %i.f = tail call ptr @sqlite3_value_text(ptr noundef %i.e) #45 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.f, align 1, !tbaa !16
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154
  %i.l = tail call i32 @sqlite3_value_int(ptr noundef %i.k) #45
  %i.m = and i32 %i.l, 1
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull %i.f, i32 noundef %i.d) #45
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull @.str.805, i32 noundef 1) #45
  br label %bb.av

bb.e:                                             ; preds = %bb.c
  %i.o = tail call i32 @sqlite3_strlike(ptr noundef nonnull @.str.806, ptr noundef nonnull %i.f, i32 noundef 0) #45
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @sqlite3_strlike(ptr noundef nonnull @.str.807, ptr noundef nonnull %i.f, i32 noundef 0) #45
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull %i.f, i32 noundef %i.d) #45
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull @.str.805, i32 noundef 1) #45
  br label %bb.av

bb.h:                                             ; preds = %bb.f
  %i.s = tail call i32 @sqlite3_strlike(ptr noundef nonnull @.str.808, ptr noundef nonnull %i.f, i32 noundef 0) #45
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 @sqlite3_strlike(ptr noundef nonnull @.str.809, ptr noundef nonnull %i.f, i32 noundef 0) #45
  %i.v = icmp eq i32 %i.u, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi i1 [ true, %bb.h ], [ %i.v, %bb.i ]
  %i.x = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.f) #45 ; 21 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %.preheader227

.preheader227:                                    ; preds = %bb.j
  %i.z = tail call ptr @__ctype_b_loc() #47       ; 8 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !170
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @sqlite3_str_free(ptr noundef %i.b) #45
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.aw

bb.l:                                             ; preds = %bb.l, %.preheader227
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader227 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16  ; 3 uses
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !84
  %i.ag = and i16 %i.af, 8192
  %.not = icmp eq i16 %i.ag, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %.preheader226, label %bb.l, !llvm.loop !1174

.preheader226:                                    ; preds = %bb.l
  %.not187231 = icmp eq i8 %i.ac, 0
  br i1 %.not187231, label %strlen30.exit, label %.lr.ph

.preheader225:                                    ; preds = %bb.s
  %i.ah = icmp sgt i32 %.2, 0
  br i1 %i.ah, label %.lr.ph235, label %strlen30.exit

.lr.ph235:                                        ; preds = %.preheader225
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !170
  br label %bb.t

.lr.ph:                                           ; preds = %.preheader226, %bb.s
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %bb.s ], [ %indvars.iv, %.preheader226 ]
  %i.aj = phi i8 [ %i.bq, %bb.s ], [ %i.ac, %.preheader226 ] ; 3 uses
  %.0175233 = phi i32 [ %.2, %bb.s ], [ 0, %.preheader226 ] ; 7 uses
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !170 ; 3 uses
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !84
  %i.ao = and i16 %i.an, 8192
  %.not202 = icmp eq i16 %i.ao, 0
  br i1 %.not202, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ap = sext i32 %.0175233 to i64
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1     ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16  ; 2 uses
  %i.at = icmp eq i8 %i.as, 13
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 10, ptr %i.ar, align 1, !tbaa !16
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !170
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = phi i8 [ 10, %bb.n ], [ %i.as, %bb.m ]  ; 2 uses
  %i.av = phi ptr [ %.pre, %bb.n ], [ %i.ak, %bb.m ]
  %i.aw = zext i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !84
  %i.az = and i16 %i.ay, 8192
  %.not204 = icmp ne i16 %i.az, 0
  %i.ba = icmp eq i8 %i.au, 40
  %or.cond205 = or i1 %i.ba, %.not204
  br i1 %or.cond205, label %bb.s, label %bb.r

bb.p:                                             ; preds = %.lr.ph
  %i.bb = and i8 %i.aj, -2
  %or.cond = icmp eq i8 %i.bb, 40
  %i.bc = icmp sgt i32 %.0175233, 0
  %or.cond4 = select i1 %or.cond, i1 %i.bc, i1 false
  br i1 %or.cond4, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = zext nneg i32 %.0175233 to i64
  %i.be = getelementptr i8, ptr %i.x, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !84
  %i.bk = shl i16 %i.bj, 2
  %sext = ashr i16 %i.bk, 15
  %i.bl = sext i16 %sext to i32
  %spec.select = add nsw i32 %.0175233, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.p
  %.1176 = phi i32 [ %.0175233, %bb.o ], [ %.0175233, %bb.p ], [ %spec.select, %bb.q ] ; 2 uses
  %i.bm = add nsw i32 %.1176, 1
  %i.bn = sext i32 %.1176 to i64
  %i.bo = getelementptr inbounds i8, ptr %i.x, i64 %i.bn
  store i8 %i.aj, ptr %i.bo, align 1, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.2 = phi i32 [ %.0175233, %bb.o ], [ %i.bm, %bb.r ] ; 4 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next253
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16  ; 2 uses
  %.not187 = icmp eq i8 %i.bq, 0
  br i1 %.not187, label %.preheader225, label %.lr.ph, !llvm.loop !1175

bb.t:                                             ; preds = %.lr.ph235, %bb.u
  %.3234 = phi i32 [ %.2, %.lr.ph235 ], [ %4, %bb.u ] ; 4 uses
  %3 = zext nneg i32 %.3234 to i64
  %i.br = getelementptr i8, ptr %i.x, i64 %3
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !84
  %i.bx = and i16 %i.bw, 8192
  %.not188 = icmp eq i16 %i.bx, 0
  br i1 %.not188, label %strlen30.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %4 = add nsw i32 %.3234, -1
  %i.by = icmp sgt i32 %.3234, 1
  br i1 %i.by, label %bb.t, label %strlen30.exit, !llvm.loop !1176

strlen30.exit:                                    ; preds = %bb.t, %bb.u, %.preheader226, %.preheader225
  %.3.lcssa = phi i32 [ %.2, %.preheader225 ], [ 0, %.preheader226 ], [ %.3234, %bb.t ], [ 0, %bb.u ]
  %i.bz = sext i32 %.3.lcssa to i64
  %i.ca = getelementptr inbounds i8, ptr %i.x, i64 %i.bz
  store i8 0, ptr %i.ca, align 1, !tbaa !16
  %i.cb = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #46
  %i.cc = icmp ugt i64 %i.cb, 78
  br i1 %i.cc, label %.preheader, label %bb.au

.preheader:                                       ; preds = %strlen30.exit
  %i.cd = load i8, ptr %i.x, align 1, !tbaa !16   ; 2 uses
  %.not189239 = icmp eq i8 %i.cd, 0
  br i1 %.not189239, label %._crit_edge, label %.lr.ph246

.lr.ph246:                                        ; preds = %.preheader, %wsToEol.exit.thread
  %i.ce = phi i8 [ %i.ew, %wsToEol.exit.thread ], [ %i.cd, %.preheader ] ; 10 uses
  %i.cf = phi ptr [ %i.ev, %wsToEol.exit.thread ], [ %i.x, %.preheader ] ; 6 uses
  %.0245 = phi i32 [ %.1220, %wsToEol.exit.thread ], [ 0, %.preheader ] ; 11 uses
  %.0169244 = phi i32 [ %.1170, %wsToEol.exit.thread ], [ 0, %.preheader ] ; 10 uses
  %.0171243 = phi i8 [ %.1172219, %wsToEol.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %.0173242 = phi i32 [ %.1174218, %wsToEol.exit.thread ], [ 0, %.preheader ] ; 13 uses
  %.4241 = phi i32 [ %.7, %wsToEol.exit.thread ], [ 0, %.preheader ] ; 15 uses
  %.2179240 = phi i32 [ %i.et, %wsToEol.exit.thread ], [ 0, %.preheader ] ; 9 uses
  %i.cg = icmp eq i8 %i.ce, %.0171243
  br i1 %i.cg, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %.lr.ph246
  %.not190 = icmp eq i8 %.0171243, 0
  br i1 %.not190, label %bb.w, label %.thread212

bb.w:                                             ; preds = %bb.v
  switch i8 %i.ce, label %bb.ac [
    i8 96, label %.thread212
    i8 39, label %.thread212
    i8 34, label %.thread212
    i8 91, label %bb.x
    i8 45, label %bb.y
    i8 40, label %bb.z
    i8 41, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  br label %.thread212

bb.y:                                             ; preds = %bb.w
  %i.ch = getelementptr i8, ptr %i.cf, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = icmp eq i8 %i.ci, 45
  br i1 %i.cj, label %.thread212, label %.thread

.thread:                                          ; preds = %bb.y
  %i.ck = icmp eq i32 %.0173242, 0
  br label %bb.af

bb.z:                                             ; preds = %bb.w
  %i.cl = add nsw i32 %.0173242, 1
  br label %bb.ak

bb.aa:                                            ; preds = %bb.w
  %i.cm = add nsw i32 %.0173242, -1               ; 2 uses
  %i.cn = icmp slt i32 %.0169244, 1
  %i.co = icmp ne i32 %i.cm, 0
  %or.cond12.not200 = select i1 %i.cn, i1 true, i1 %i.co
  %i.cp = icmp slt i32 %.4241, 1
  %or.cond14.not197 = select i1 %or.cond12.not200, i1 true, i1 %i.cp
  %i.cq = icmp ne i32 %.0245, 0
  %or.cond16 = select i1 %or.cond14.not197, i1 true, i1 %i.cq
  br i1 %or.cond16, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull %i.x, i32 noundef %.4241) #45
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %.thread212

bb.ac:                                            ; preds = %bb.w
  %i.cr = and i8 %i.ce, -33                       ; 2 uses
  %or.cond19 = icmp eq i8 %i.cr, 87
  %i.cs = icmp eq i32 %.0173242, 0                ; 2 uses
  %or.cond21 = and i1 %i.cs, %or.cond19
  %or.cond23 = select i1 %or.cond21, i1 %i.w, i1 false
  br i1 %or.cond23, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ct = tail call i32 @sqlite3_strnicmp(ptr noundef nonnull @.str.810, ptr noundef nonnull %i.cf, i32 noundef 5) #45
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.cw = getelementptr i8, ptr %i.cf, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16  ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !84
  %i.db = and i16 %i.da, 8
  %.not191 = icmp ne i16 %i.db, 0
  %.not192 = icmp eq i8 %i.cx, 95
  %or.cond206 = or i1 %.not192, %.not191
  br i1 %or.cond206, label %bb.af, label %.thread212

bb.af:                                            ; preds = %.thread, %bb.ac, %bb.ae, %bb.ad
  %i.dc = phi i1 [ %i.ck, %.thread ], [ %i.cs, %bb.ac ], [ true, %bb.ae ], [ true, %bb.ad ]
  %i.dd = phi i8 [ 13, %.thread ], [ %i.cr, %bb.ac ], [ 87, %bb.ae ], [ 87, %bb.ad ]
  %.not193 = icmp eq i32 %.0245, 0
  br i1 %.not193, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %or.cond26 = icmp eq i8 %i.dd, 65
  %or.cond28 = and i1 %i.dc, %or.cond26
  br i1 %or.cond28, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.de = tail call i32 @sqlite3_strnicmp(ptr noundef nonnull @.str.811, ptr noundef nonnull %i.cf, i32 noundef 3) #45
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ai, label %.thread212

bb.ai:                                            ; preds = %bb.ah
  %i.dg = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.dh = getelementptr i8, ptr %i.cf, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !16  ; 2 uses
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !84
  %i.dm = and i16 %i.dl, 8
  %.not194 = icmp ne i16 %i.dm, 0
  %.not195 = icmp eq i8 %i.di, 95
  %or.cond207 = or i1 %.not195, %.not194
  br i1 %or.cond207, label %.thread212, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull %i.x, i32 noundef %.4241) #45
  tail call void @sqlite3_str_append(ptr noundef %i.b, ptr noundef nonnull @.str.812, i32 noundef 5) #45
  br label %.thread212

.thread212:                                       ; preds = %bb.ab, %bb.ai, %bb.aj, %bb.ae, %bb.ah, %bb.y, %bb.v, %bb.x, %bb.w, %bb.w, %bb.w
  %.5.ph = phi i32 [ %.4241, %bb.w ], [ %.4241, %bb.w ], [ %.4241, %bb.ah ], [ %.4241, %bb.ae ], [ 0, %bb.aj ], [ %.4241, %bb.ai ], [ 0, %bb.ab ], [ %.4241, %bb.w ], [ %.4241, %bb.x ], [ %.4241, %bb.v ], [ %.4241, %bb.y ] ; 2 uses
  %.1174.ph = phi i32 [ %.0173242, %bb.w ], [ %.0173242, %bb.w ], [ 0, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ab ], [ %.0173242, %bb.w ], [ %.0173242, %bb.x ], [ %.0173242, %bb.v ], [ %.0173242, %bb.y ]
  %.1172.ph = phi i8 [ %i.ce, %bb.w ], [ %i.ce, %bb.w ], [ 0, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ab ], [ %i.ce, %bb.w ], [ 93, %bb.x ], [ %.0171243, %bb.v ], [ 10, %bb.y ]
  %.1.ph = phi i32 [ %.0245, %bb.w ], [ %.0245, %bb.w ], [ 1, %bb.ah ], [ 1, %bb.ae ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 0, %bb.ab ], [ %.0245, %bb.w ], [ %.0245, %bb.x ], [ %.0245, %bb.v ], [ %.0245, %bb.y ]
  %i.dn = add nsw i32 %.5.ph, 1
  %i.do = sext i32 %.5.ph to i64
  %i.dp = getelementptr inbounds i8, ptr %i.x, i64 %i.do
  store i8 %i.ce, ptr %i.dp, align 1, !tbaa !16
  br label %wsToEol.exit.thread

bb.ak:                                            ; preds = %.lr.ph246, %bb.z, %bb.ag, %bb.af, %bb.aa
  %.1174 = phi i32 [ %i.cl, %bb.z ], [ %i.cm, %bb.aa ], [ %.0173242, %.lr.ph246 ], [ %.0173242, %bb.af ], [ %.0173242, %bb.ag ] ; 2 uses
  %.1 = phi i32 [ %.0245, %bb.z ], [ %.0245, %bb.aa ], [ %.0245, %.lr.ph246 ], [ 0, %bb.af ], [ 1, %bb.ag ] ; 8 uses
  %i.dq = add nsw i32 %.4241, 1                   ; 8 uses
  %i.dr = sext i32 %.4241 to i64
  %i.ds = getelementptr inbounds i8, ptr %i.x, i64 %i.dr
  store i8 %i.ce, ptr %i.ds, align 1, !tbaa !16
  %i.dt = icmp eq i32 %.1174, 1
  br i1 %i.dt, label %bb.al, label %wsToEol.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.du = icmp eq i8 %i.ce, 10
  switch i8 %i.ce, label %wsToEol.exit.thread [
    i8 40, label %bb.ar
    i8 10, label %bb.ar
    i8 44, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %bb.am ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16  ; 3 uses
  switch i8 %i.dx, label %bb.ao [
    i8 0, label %wsToEol.exit.thread
    i8 10, label %wsToEol.exit.thread
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dy = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.dz = zext i8 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !84
  %i.ec = and i16 %i.eb, 8192
  %.not14.i = icmp eq i16 %i.ec, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not14.i, label %bb.ap, label %bb.an, !llvm.loop !1177

bb.ap:                                            ; preds = %bb.ao
  %i.ed = icmp eq i8 %i.dx, 45
  br i1 %i.ed, label %bb.aq, label %wsToEol.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = icmp eq i8 %i.eg, 45
  %i.ei = icmp ne i32 %.1, 0
  %or.cond223 = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond223, label %wsToEol.exit.thread, label %bb.as

wsToEol.exit:                                     ; preds = %bb.ap
  %.old.not = icmp eq i32 %.1, 0
  br i1 %.old.not, label %bb.as, label %wsToEol.exit.thread
end_hunk_5
begin_hunk_6_@arCreateOrUpdateCommand:bb.a
.thread:                                          ; preds = %arExecSql.exit71, %._crit_edge
  %.197 = phi ptr [ %.044, %._crit_edge ], [ null, %arExecSql.exit71 ]
  %.395 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %i.ba, %arExecSql.exit71 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !777
  %i.cz = call i32 @sqlite3_exec(ptr noundef %i.cy, ptr noundef nonnull @.str.1983, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  br label %bb.aq

bb.af:                                            ; preds = %._crit_edge
  %i.da = load i8, ptr %i.k, align 1, !tbaa !764
  %.not.i80 = icmp eq i8 %i.da, 0
  br i1 %.not.i80, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !776
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dc, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1984)
  br label %arExecSql.exit83

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !66
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !777
  %i.df = call i32 @sqlite3_exec(ptr noundef %i.de, ptr noundef nonnull @.str.1984, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b) #45
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not6.i82 = icmp eq ptr %i.dg, null
  br i1 %.not6.i82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !150
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dh, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dg)
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.di) #45
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %arExecSql.exit83

arExecSql.exit83:                                 ; preds = %bb.ag, %bb.aj
  %.0.i81 = phi i32 [ 0, %bb.ag ], [ %i.df, %bb.aj ] ; 3 uses
  %i.dj = load i8, ptr %i.ad, align 2, !tbaa !779
  %.not57 = icmp eq i8 %i.dj, 0
  br i1 %.not57, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %arExecSql.exit83
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !768
  %.not58 = icmp eq ptr %i.dl, null
  br i1 %.not58, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1985, ptr noundef nonnull %i.i) #45 ; 3 uses
  %i.dn = load i8, ptr %i.k, align 1, !tbaa !764
  %.not.i84 = icmp eq i8 %i.dn, 0
  br i1 %.not.i84, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !776
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dp, ptr noundef nonnull @.str.253, ptr noundef %i.dm)
  br label %arExecSql.exit87

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !777
  %i.ds = call i32 @sqlite3_exec(ptr noundef %i.dr, ptr noundef %i.dm, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #45 ; 0 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %.not6.i86 = icmp eq ptr %i.dt, null
  br i1 %.not6.i86, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !150
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.du, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dt)
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.dv) #45
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %arExecSql.exit87

arExecSql.exit87:                                 ; preds = %bb.am, %bb.ap
  call void @sqlite3_free(ptr noundef %i.dm) #45
  br label %bb.aq

bb.aq:                                            ; preds = %arExecSql.exit83, %bb.ak, %arExecSql.exit87, %.thread
  %.196 = phi ptr [ %.197, %.thread ], [ %.044, %arExecSql.exit87 ], [ %.044, %bb.ak ], [ %.044, %arExecSql.exit83 ]
  %.4 = phi i32 [ %.395, %.thread ], [ %.0.i81, %arExecSql.exit87 ], [ %.0.i81, %bb.ak ], [ %.0.i81, %arExecSql.exit83 ]
  call void @sqlite3_free(ptr noundef %.196) #45
  br label %bb.ar

bb.ar:                                            ; preds = %arExecSql.exit63, %bb.aq
  %.0 = phi i32 [ %.4, %bb.aq ], [ %i.z, %arExecSql.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @arErrorMsg(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !150
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.b, ptr noundef nonnull @.str.1088, ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = load i8, ptr %i.c, align 2, !tbaa !757
  %.not = icmp eq i8 %i.d, 0
  %i.e = load ptr, ptr @cli_output_capture, align 8, !tbaa !559 ; 3 uses
  %.not.i4 = icmp eq ptr %i.e, null               ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1970) #45
  br label %cli_puts.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !150
  %i.g = call i64 @fwrite(ptr nonnull @.str.1970, i64 23, i64 1, ptr %i.f) #50 ; 0 uses
  br label %cli_puts.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1971) #45
  br label %cli_puts.exit

bb.g:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !150
  %i.i = call i64 @fwrite(ptr nonnull @.str.1971, i64 36, i64 1, ptr %i.h) #50 ; 0 uses
  br label %cli_puts.exit

cli_puts.exit:                                    ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  call void @sqlite3_free(ptr noundef %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arCheckEntries(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !771
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !765
  %.not23 = icmp eq i8 %i.f, 0
  %i.g = select i1 %.not23, ptr @.str.1995, ptr @.str.1994
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !777
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !778
  call void (ptr, ptr, ptr, ptr, ...) @shellPreparePrintf(ptr noundef %i.i, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.g, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.m = call i32 @sqlite3_bind_parameter_index(ptr noundef %i.l, ptr noundef nonnull @.str.1996) #45
  %.promoted = load i32, ptr %i.a, align 4        ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !771
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = icmp eq i32 %.promoted, 0                ; 2 uses
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph31, %bb.f
  %indvars.iv.a = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next.a, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !772
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.a
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66   ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %._crit_edge, label %strlen30.exit

strlen30.exit:                                    ; preds = %bb.c
  %i.w = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.u) #46 ; 2 uses
  %.not51 = icmp eq i64 %i.w, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %strlen30.exit
  %i.x = call i64 @llvm.umin.i64(i64 %i.w, i64 1073741823)
  %1 = trunc nuw nsw i64 %i.x to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.02125 = phi i32 [ %3, %bb.d ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %2 = zext nneg i32 %.02125 to i64
  %i.y = getelementptr i8, ptr %i.u, i64 %2
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph
  %3 = add nsw i32 %.02125, -1
  %i.ac = icmp sgt i32 %.02125, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1321

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.d
  %.021.lcssa.ph = phi i32 [ 0, %bb.d ], [ %.02125, %.lr.ph ]
  %4 = zext nneg i32 %.021.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %strlen30.exit
  %.021.lcssa = phi i64 [ 0, %strlen30.exit ], [ %4, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %.021.lcssa
  store i8 0, ptr %i.ad, align 1, !tbaa !16
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.af = call i32 @sqlite3_bind_text(ptr noundef %i.ae, i32 noundef %i.m, ptr noundef %i.u, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ah = call i32 @sqlite3_step(ptr noundef %i.ag) #45
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.aj = call i32 @sqlite3_reset(ptr noundef %i.ai) #45 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %shellReset.exit, label %shellReset.exit.thread

shellReset.exit.thread:                           ; preds = %._crit_edge
  %i.ak = call ptr @sqlite3_db_handle(ptr noundef %i.ai) #45
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !150
  %i.am = call ptr @sqlite3_errmsg(ptr noundef %i.ak) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.al, ptr noundef nonnull @.str.63, ptr noundef %i.am)
  br label %._crit_edge32

shellReset.exit:                                  ; preds = %._crit_edge
  %.not52 = icmp eq i32 %i.ah, 100
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %shellReset.exit
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !150
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.an, ptr noundef nonnull @.str.1997, ptr noundef nonnull %i.u)
  br label %._crit_edge32

bb.f:                                             ; preds = %shellReset.exit
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !771
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next.a, %i.ap
  br i1 %i.aq, label %bb.c, label %._crit_edge32, !llvm.loop !1322

._crit_edge32:                                    ; preds = %bb.f, %shellReset.exit.thread, %bb.e, %bb.b
  %.lcssa28 = phi i32 [ %.promoted, %bb.b ], [ 1, %bb.e ], [ %i.aj, %shellReset.exit.thread ], [ 0, %bb.f ] ; 2 uses
  %.lcssa = phi i1 [ %i.p, %bb.b ], [ false, %bb.e ], [ false, %shellReset.exit.thread ], [ true, %bb.f ]
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !110 ; 3 uses
  %.not.i24 = icmp eq ptr %i.ar, null
  br i1 %.not.i24, label %shellFinalize.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge32
  %i.as = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.ar) #45
  %i.at = call i32 @sqlite3_finalize(ptr noundef nonnull %i.ar) #45 ; 3 uses
  br i1 %.lcssa, label %bb.h, label %shellFinalize.exit

bb.h:                                             ; preds = %bb.g
  %.not7.i = icmp eq i32 %i.at, 0
  br i1 %.not7.i, label %shellFinalize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !150
  %i.av = call ptr @sqlite3_errmsg(ptr noundef %i.as) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.au, ptr noundef nonnull @.str.63, ptr noundef %i.av)
  br label %shellFinalize.exit

shellFinalize.exit:                               ; preds = %bb.h, %bb.i, %._crit_edge32, %bb.g
  %i.aw = phi i32 [ %.lcssa28, %._crit_edge32 ], [ %.lcssa28, %bb.g ], [ %i.at, %bb.i ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %bb.j

bb.j:                                             ; preds = %shellFinalize.exit, %bb.a
  %i.ax = phi i32 [ %i.aw, %shellFinalize.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.ax
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arWhereClause(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !771
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1785) #45
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !765
  %.not = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not, ptr @.str.1998, ptr @.str.48
  %i.j = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %i.i) #45 ; 3 uses
  %i.k = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45 ; 3 uses
  %i.l = load i32, ptr %i.c, align 8, !tbaa !771
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = icmp ne ptr %i.j, null
  %or.cond48 = select i1 %i.m, i1 %i.n, i1 false
  %i.o = icmp ne ptr %i.k, null
  %or.cond549 = select i1 %or.cond48, i1 %i.o, i1 false
  br i1 %or.cond549, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !772
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %strlen30.exit.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.r) #46
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1073741823)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = add nuw nsw i32 %i.v, 1
  br label %strlen30.exit.peel

strlen30.exit.peel:                               ; preds = %bb.e, %.lr.ph
  %.0.i.peel = phi i32 [ %i.w, %bb.e ], [ 1, %.lr.ph ]
  %i.x = load i8, ptr %i.g, align 1, !tbaa !765
  %.not47.peel = icmp eq i8 %i.x, 0               ; 2 uses
  %.str.2001..str.1999 = select i1 %.not47.peel, ptr @.str.2001, ptr @.str.1999
  %.str.2002..str.2000 = select i1 %.not47.peel, ptr @.str.2002, ptr @.str.2000
  %i.y = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.2001..str.1999, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.48, ptr noundef %i.r) #45 ; 3 uses
  %i.z = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.2002..str.2000, ptr noundef nonnull %i.k, ptr noundef nonnull @.str.48, i32 noundef %.0.i.peel, ptr noundef %i.r) #45 ; 3 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !771
  %i.ab = icmp sgt i32 %i.aa, 1
  %i.ac = icmp ne ptr %i.y, null
  %or.cond.peel = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp ne ptr %i.z, null
  %or.cond5.peel = select i1 %or.cond.peel, i1 %i.ad, i1 false
  br i1 %or.cond5.peel, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %strlen30.exit.peel, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %strlen30.exit.peel ] ; 2 uses
  %.04251 = phi ptr [ %i.ap, %bb.i ], [ %i.z, %strlen30.exit.peel ]
  %.04350 = phi ptr [ %.144, %bb.i ], [ %i.y, %strlen30.exit.peel ] ; 2 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !772
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %strlen30.exit, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) #46
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1073741823)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ak, 1
  br label %strlen30.exit

strlen30.exit:                                    ; preds = %.peel.next, %bb.f
  %.0.i = phi i32 [ %i.al, %bb.f ], [ 1, %.peel.next ]
  %i.am = load i8, ptr %i.g, align 1, !tbaa !765
  %.not47 = icmp eq i8 %i.am, 0
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %strlen30.exit
  %i.an = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1999, ptr noundef nonnull %.04350, ptr noundef nonnull @.str.2003, ptr noundef %i.ag) #45
  br label %bb.i

bb.h:                                             ; preds = %strlen30.exit
  %i.ao = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2001, ptr noundef nonnull %.04350, ptr noundef nonnull @.str.397, ptr noundef %i.ag) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.str.2002.sink61 = phi ptr [ @.str.2002, %bb.h ], [ @.str.2000, %bb.g ]
  %.144 = phi ptr [ %i.ao, %bb.h ], [ %i.an, %bb.g ] ; 3 uses
  %i.ap = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.2002.sink61, ptr noundef nonnull %.04251, ptr noundef nonnull @.str.2003, i32 noundef %.0.i, ptr noundef %i.ag) #45 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !771
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  %i.at = icmp ne ptr %.144, null
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  %i.au = icmp ne ptr %i.ap, null
  %or.cond5 = select i1 %or.cond, i1 %i.au, i1 false
  br i1 %or.cond5, label %.peel.next, label %.critedge, !llvm.loop !1323

.critedge:                                        ; preds = %bb.i, %strlen30.exit.peel, %bb.d
  %.043.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.y, %strlen30.exit.peel ], [ %.144, %bb.i ] ; 3 uses
  %.042.lcssa = phi ptr [ %i.k, %bb.d ], [ %i.z, %strlen30.exit.peel ], [ %i.ap, %bb.i ] ; 3 uses
  %i.av = icmp eq ptr %.043.lcssa, null
  %i.aw = icmp eq ptr %.042.lcssa, null
  %or.cond3 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  store i32 7, ptr %0, align 4, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.ax = load i8, ptr %i.g, align 1, !tbaa !765
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = select i1 %i.ay, ptr @.str.210, ptr @.str.48
  %i.ba = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2004, ptr noundef nonnull %.043.lcssa, ptr noundef nonnull %i.az, ptr noundef nonnull %.042.lcssa) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.045 = phi ptr [ null, %bb.j ], [ %i.ba, %bb.k ]
  tail call void @sqlite3_free(ptr noundef %.043.lcssa) #45
  tail call void @sqlite3_free(ptr noundef %.042.lcssa) #45
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.a
  %.146 = phi ptr [ %i.f, %bb.c ], [ %.045, %bb.l ], [ null, %bb.a ]
end_hunk_6
