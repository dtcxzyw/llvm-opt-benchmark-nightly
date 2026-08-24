Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %.168.i.i = phi i32 [ %i.pd, %bb.db ], [ %spec.select72.i.i, %bb.dc ]
  %i.ph = sub nsw i32 %i.pb, %.168.i.i            ; 4 uses
  %i.pi = icmp sle i32 %.065.lcssa.i.i, %i.ph
  %brmerge.i = or i1 %i.ni, %i.pi
  br i1 %brmerge.i, label %qrfRestrictScreenWidth.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %bb.dd
  %i.pj = load ptr, ptr %i.eo, align 8, !tbaa !64 ; 2 uses
  %wide.trip.count90.i.i = zext nneg i32 %i.nb to i64
  %.promoted78 = load i8, ptr %i.gu, align 4
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.dk, %.preheader.lr.ph.split.us.i.i
  %i.pk = phi i8 [ %.promoted78, %.preheader.lr.ph.split.us.i.i ], [ 1, %bb.dk ]
  %.16684.us.i.i = phi i32 [ %.065.lcssa.i.i, %.preheader.lr.ph.split.us.i.i ], [ %i.qf, %bb.dk ] ; 3 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dj, %.preheader.us.i.i
  %indvars.iv87.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next88.i.i, %bb.dj ] ; 3 uses
  %.079.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %.1.us.i.i, %bb.dj ] ; 4 uses
  %.05878.us.i.i = phi i32 [ -1, %.preheader.us.i.i ], [ %.159.us.i.i, %bb.dj ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %i.pj, i64 %indvars.iv87.i.i ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 17
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !85
  %i.po = icmp eq i8 %i.pn, 0
  br i1 %i.po, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !86 ; 5 uses
  %i.pr = icmp sgt i32 %i.pq, %.079.us.i.i
  %i.ps = icmp sgt i32 %i.pq, 8
  %or.cond.us.i.i = and i1 %i.pr, %i.ps
  br i1 %or.cond.us.i.i, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.pt = icmp samesign ugt i32 %i.pq, 16
  br i1 %i.pt, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pu = shl nuw nsw i32 %i.pq, 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !68
  %i.px = icmp sgt i32 %i.pu, %i.pw
  br i1 %i.px, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.py = trunc nuw nsw i64 %indvars.iv87.i.i to i32
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.df, %bb.de
  %.159.us.i.i = phi i32 [ %i.py, %bb.di ], [ %.05878.us.i.i, %bb.dh ], [ %.05878.us.i.i, %bb.df ], [ %.05878.us.i.i, %bb.de ] ; 3 uses
  %.1.us.i.i = phi i32 [ %i.pq, %bb.di ], [ %.079.us.i.i, %bb.dh ], [ %.079.us.i.i, %bb.df ], [ %.079.us.i.i, %bb.de ] ; 4 uses
  %indvars.iv.next88.i.i = add nuw nsw i64 %indvars.iv87.i.i, 1 ; 2 uses
  %exitcond91.not.i.i = icmp eq i64 %indvars.iv.next88.i.i, %wide.trip.count90.i.i
  br i1 %exitcond91.not.i.i, label %._crit_edge81.us.i.i, label %bb.de, !llvm.loop !94

bb.dk:                                            ; preds = %._crit_edge81.us.i.i
  %i.pz = icmp sgt i32 %.1.us.i.i, 15
  %i.qa = lshr i32 %.1.us.i.i, 1
  %i.qb = add nsw i32 %.1.us.i.i, -8
  %.060.us.i.i = select i1 %i.pz, i32 %i.qa, i32 %i.qb ; 2 uses
  %i.qc = sub nsw i32 %.16684.us.i.i, %.060.us.i.i
  %i.qd = icmp slt i32 %i.qc, %i.ph
  %i.qe = sub nsw i32 %.16684.us.i.i, %i.ph
  %.161.us.i.i = select i1 %i.qd, i32 %i.qe, i32 %.060.us.i.i ; 2 uses
  %i.qf = sub nsw i32 %.16684.us.i.i, %.161.us.i.i ; 2 uses
  %i.qg = zext nneg i32 %.159.us.i.i to i64
  %i.qh = getelementptr inbounds nuw [24 x i8], ptr %i.pj, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !86
  %i.qk = sub nsw i32 %i.qj, %.161.us.i.i
  store i32 %i.qk, ptr %i.qi, align 8, !tbaa !86
  %i.ql = icmp sgt i32 %i.qf, %i.ph
  br i1 %i.ql, label %.preheader.us.i.i, label %qrfRestrictScreenWidth.exit.i.loopexit

._crit_edge81.us.i.i:                             ; preds = %bb.dj
  %i.qm = icmp slt i32 %.159.us.i.i, 0
  br i1 %i.qm, label %qrfRestrictScreenWidth.exit.i.loopexit, label %bb.dk

qrfRestrictScreenWidth.exit.i.loopexit:           ; preds = %bb.dk, %._crit_edge81.us.i.i
  %i.qn = phi i8 [ 1, %bb.dk ], [ %i.pk, %._crit_edge81.us.i.i ]
  store i8 %i.qn, ptr %i.gu, align 4
  br label %qrfRestrictScreenWidth.exit.i

qrfRestrictScreenWidth.exit.i:                    ; preds = %qrfRestrictScreenWidth.exit.i.loopexit, %bb.dd, %._crit_edge.i.i, %._crit_edge380.thread.i, %bb.cv
  %i.qo = phi i8 [ %.pre, %bb.cv ], [ 2, %._crit_edge380.thread.i ], [ 2, %._crit_edge.i.i ], [ 0, %bb.dd ], [ 0, %qrfRestrictScreenWidth.exit.i.loopexit ] ; 6 uses
  %.0263.i = phi i32 [ %i.mu, %bb.cv ], [ %i.ef, %._crit_edge380.thread.i ], [ %i.ef, %._crit_edge.i.i ], [ %i.ef, %bb.dd ], [ %i.ef, %qrfRestrictScreenWidth.exit.i.loopexit ] ; 6 uses
  %i.qp = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.qp, label %bb.du [
    i8 1, label %bb.dl
    i8 19, label %bb.do
    i8 2, label %bb.dr
  ]

bb.dl:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not296.i = icmp eq i8 %i.qo, 0                ; 4 uses
  %.str.168..str.166.i = select i1 %.not296.i, ptr @.str.168, ptr @.str.166 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qr = load i8, ptr %i.qq, align 4, !tbaa !89
  %i.qs = icmp eq i8 %i.qr, 1
  br i1 %i.qs, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.qt = select i1 %.not296.i, ptr getelementptr inbounds nuw (i8, ptr @.str.168, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.165, i64 3)
  br label %bb.dv

bb.dn:                                            ; preds = %bb.dl
  %.str.168..str.165.i = select i1 %.not296.i, ptr @.str.168, ptr @.str.165
  %.str.169..str.167.i = select i1 %.not296.i, ptr @.str.169, ptr @.str.167
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.qv, ptr noundef %3, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, i32 noundef 0)
  br label %bb.dv

bb.do:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not295.i = icmp eq i8 %i.qo, 0                ; 4 uses
  %.str.158..str.174.i = select i1 %.not295.i, ptr @.str.158, ptr @.str.174 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qx = load i8, ptr %i.qw, align 4, !tbaa !89
  %i.qy = icmp eq i8 %i.qx, 1
  br i1 %i.qy, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.qz = select i1 %.not295.i, ptr getelementptr inbounds nuw (i8, ptr @.str.158, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.173, i64 1)
  br label %bb.dv

bb.dq:                                            ; preds = %bb.do
  %.str.158..str.173.i = select i1 %.not295.i, ptr @.str.158, ptr @.str.173
  %.str.176..str.175.i = select i1 %.not295.i, ptr @.str.176, ptr @.str.175
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
  %.str.158..str.174311.i = select i1 %.not297.i, ptr @.str.158, ptr @.str.174
  %.str.176..str.175312.i = select i1 %.not297.i, ptr @.str.176, ptr @.str.175
  %.str.158..str.173313.i = select i1 %.not297.i, ptr @.str.158, ptr @.str.173
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.dn, %bb.dm
  %.3.i = phi ptr [ %.str.158..str.174311.i, %bb.du ], [ @qrfColumnar.zSpace, %bb.ds ], [ %.str.168..str.166.i, %bb.dm ], [ %.str.168..str.166.i, %bb.dn ], [ %.str.158..str.174.i, %bb.dp ], [ %.str.158..str.174.i, %bb.dq ], [ @.str.177, %bb.dr ], [ %i.rf, %bb.dt ] ; 4 uses
  %.2269.i = phi ptr [ %.str.176..str.175312.i, %bb.du ], [ @.str.125, %bb.ds ], [ @.str.125, %bb.dm ], [ %.str.169..str.167.i, %bb.dn ], [ @.str.125, %bb.dp ], [ %.str.176..str.175.i, %bb.dq ], [ @.str.125, %bb.dr ], [ @.str.125, %bb.dt ] ; 4 uses
  %.2266.i = phi ptr [ %.str.158..str.173313.i, %bb.du ], [ @.str.48, %bb.ds ], [ %i.qt, %bb.dm ], [ %.str.168..str.165.i, %bb.dn ], [ %i.qz, %bb.dp ], [ %.str.158..str.173.i, %bb.dq ], [ @.str.48, %bb.dr ], [ @.str.48, %bb.dt ] ; 4 uses
  %i.rg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2266.i) #46
  %i.rh = trunc i64 %i.rg to i32                  ; 3 uses
  %i.ri = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2269.i) #46
  %i.rj = trunc i64 %i.ri to i32                  ; 3 uses
  %i.rk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3.i) #46
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
  %5 = sext i32 %i.sd to i64                      ; 3 uses
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
  %.not300.i = icmp eq i8 %i.rp, 0                ; 2 uses
  %i.sp = icmp eq i32 %.0263.i, 1
  %unroll_iter206 = and i64 %i.sb, 2147483646
  %i.sq = and i32 %.0263.i, 1
  %lcmp.mod204.not = icmp eq i32 %i.sq, 0
  %lcmp.mod205 = trunc i32 %.0263.i to i1
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.i9, %.lr.ph395.i
  %.4393.i = phi i64 [ 0, %.lr.ph395.i ], [ %i.ww, %.loopexit.i9 ] ; 5 uses
  %i.sr = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.ss = call i32 @sqlite3_str_errcode(ptr noundef %i.sr) #45
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dz
  br i1 %i.sc, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sp, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.ei
  %.0256.i.us = phi i32 [ %i.ui, %bb.ei ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.su = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.su, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.lr.ph386.i.us

.lr.ph386.i.us:                                   ; preds = %.lr.ph386.i.preheader.us, %bb.eh
  %.0257384.i.us = phi i32 [ %spec.select.i10.us, %bb.eh ], [ 0, %.lr.ph386.i.preheader.us ]
  %.1274383.i.us = phi i64 [ %i.ug, %bb.eh ], [ 0, %.lr.ph386.i.preheader.us ] ; 3 uses
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
  call fastcc void @qrfWrapLine(ptr noundef %i.sw, i32 noundef %i.sy, i32 noundef %i.rs, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.sz = load i32, ptr %i.sx, align 8, !tbaa !86
  %i.ta = load i32, ptr %i.h, align 4, !tbaa !17
  %i.tb = sub nsw i32 %i.sz, %i.ta                ; 4 uses
  %i.tc = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 7 uses
  %i.td = load i32, ptr %i.g, align 4, !tbaa !17  ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.tf = load i8, ptr %i.te, align 8, !tbaa !79
  %i.tg = and i8 %i.tf, 3
  switch i8 %i.tg, label %.lr.ph386.i.us.unreachabledefault [
    i8 0, label %bb.eb
    i8 2, label %bb.ea
    i8 3, label %.thread24.i.i.us
    i8 1, label %.thread.i.i.us
  ]

bb.ea:                                            ; preds = %.lr.ph386.i.us
  %i.th = sdiv i32 %i.tb, 2                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.th, i8 noundef signext 32) #45
  %i.ti = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.ti, i32 noundef %i.td)
  %i.tj = sub nsw i32 %i.tb, %i.th
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tj, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

bb.eb:                                            ; preds = %.lr.ph386.i.us
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 18
  %i.tl = load i8, ptr %i.tk, align 2, !tbaa !96
  %.not.i324.i.us = icmp eq i8 %i.tl, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.eb, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #45
  %i.tm = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tm, i32 noundef %i.td)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.eb, %.lr.ph386.i.us
  %i.tn = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tn, i32 noundef %i.td)
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.ea
  %i.to = load i32, ptr %i.i, align 4, !tbaa !17
  %i.tp = load ptr, ptr %i.sv, align 8, !tbaa !95
  %i.tq = sext i32 %i.to to i64
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 %i.tq ; 2 uses
  store ptr %i.tr, ptr %i.sv, align 8, !tbaa !95
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !16
  %.not303.i.us = icmp eq i8 %i.ts, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257384.i.us, i32 1 ; 2 uses
  %6 = icmp slt i64 %.1274383.i.us, %5
  br i1 %6, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.tt = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.tu = call i32 @sqlite3_str_length(ptr noundef %i.tt) #45 ; 3 uses
  %i.tv = call ptr @sqlite3_str_value(ptr noundef %i.tt) #45
  %i.tw = icmp sgt i32 %i.tu, 0
  br i1 %i.tw, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.ed, %bb.ee
  %.07.i.i.us = phi i32 [ %i.uc, %bb.ee ], [ %i.tu, %bb.ed ] ; 4 uses
  %i.tx = zext nneg i32 %.07.i.i.us to i64
  %i.ty = getelementptr i8, ptr %i.tv, i64 %i.tx
  %i.tz = getelementptr i8, ptr %i.ty, i64 -1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !16
  %i.ub = icmp eq i8 %i.ua, 32
  br i1 %i.ub, label %bb.ee, label %qrfRTrim.exit.i.us

bb.ee:                                            ; preds = %.lr.ph.i325.i.us
  %i.uc = add nsw i32 %.07.i.i.us, -1
  %i.ud = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.ud, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !97

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.ee, %bb.ed
  %.0.lcssa.i.i.us = phi i32 [ %i.tu, %bb.ed ], [ 0, %bb.ee ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tt, i32 noundef %.0.lcssa.i.i.us) #45
  br label %bb.ef

bb.ef:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ec
  %i.ue = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ue, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #45
  br label %bb.eh

bb.eg:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.uf = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.uf, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  %i.ug = add nuw nsw i64 %.1274383.i.us, 1       ; 2 uses
  %exitcond402.not.i.us = icmp eq i64 %i.ug, %i.sb
  br i1 %exitcond402.not.i.us, label %._crit_edge387.i.us, label %.lr.ph386.i.us, !llvm.loop !98

._crit_edge387.i.us:                              ; preds = %bb.eh
  %i.uh = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uh, label %.critedge314.i, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge387.i.us
  %i.ui = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.uj = load i32, ptr %i.se, align 8, !tbaa !46
  %i.uk = icmp slt i32 %i.ui, %i.uj
  br i1 %i.uk, label %.lr.ph386.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !99

.lr.ph386.i.us.unreachabledefault:                ; preds = %.lr.ph386.i.us
  unreachable

default.unreachable:                              ; preds = %bb.ek
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.ei
  %i.ul = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ul, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.um = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.um, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.ve, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter207 = phi i64 [ %niter207.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.un = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.un
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !66 ; 2 uses
  %i.uq = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i ; 2 uses
  %i.ur = icmp eq ptr %i.up, null
  %spec.store.select359.i = select i1 %i.ur, ptr @.str.48, ptr %i.up
  store ptr %spec.store.select359.i, ptr %i.uq, align 8
  %i.us = getelementptr inbounds i8, ptr %i.sm, i64 %i.un
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 18
  store i8 %i.ut, ptr %i.uu, align 2, !tbaa !96
  %i.uv = or disjoint i64 %.0273381.i, 1          ; 2 uses
  %i.uw = add nsw i64 %i.uv, %.4393.i             ; 2 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.uw
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !66 ; 2 uses
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %i.uv ; 2 uses
  %i.va = icmp eq ptr %i.uy, null
  %spec.store.select359.i.1 = select i1 %i.va, ptr @.str.48, ptr %i.uy
  store ptr %spec.store.select359.i.1, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds i8, ptr %i.sm, i64 %i.uw
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
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.vf
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !66 ; 2 uses
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i.epil.init ; 2 uses
  %i.vj = icmp eq ptr %i.vh, null
  %spec.store.select359.i.epil = select i1 %i.vj, ptr @.str.48, ptr %i.vh
  store ptr %spec.store.select359.i.epil, ptr %i.vi, align 8
  %i.vk = getelementptr inbounds i8, ptr %i.sm, i64 %i.vf
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 18
  store i8 %i.vl, ptr %i.vm, align 2, !tbaa !96
  br label %.lr.ph386.i.preheader.us.preheader

.lr.ph386.i.preheader.us.preheader:               ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.epil.preheader
  br label %.lr.ph386.i.preheader.us

.lr.ph390.i:                                      ; preds = %bb.es, %.critedge10.i.split.us
  %.2275389.i = phi i64 [ %i.wu, %bb.es ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.2275389.i ; 8 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !95
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !16
  %i.vq = icmp eq i8 %i.vp, 0
  br i1 %i.vq, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph390.i
  %i.vr = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.vr, i32 noundef %i.vt, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

bb.ek:                                            ; preds = %.lr.ph390.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !86 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vv, i32 3) ; 4 uses
  store ptr @.str.178, ptr %i.vn, align 8, !tbaa !95
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
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wd, i8 noundef signext 32) #45
  %i.we = load ptr, ptr %i.vn, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.we, i32 noundef %spec.select315.i)
  %i.wf = sub nsw i32 %i.vx, %i.wd
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wf, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.el, %bb.ek
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #45
  %i.wg = load ptr, ptr %i.vn, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.wg, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.el, %bb.ek
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef nonnull @.str.178, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.em, %bb.ej
  %7 = icmp slt i64 %.2275389.i, %5
  br i1 %7, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wh = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wh, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.es

bb.eo:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wi = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.wj = call i32 @sqlite3_str_length(ptr noundef %i.wi) #45 ; 3 uses
  %i.wk = call ptr @sqlite3_str_value(ptr noundef %i.wi) #45
  %i.wl = icmp sgt i32 %i.wj, 0
  br i1 %i.wl, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i

.lr.ph.i332.i:                                    ; preds = %bb.ep, %bb.eq
  %.07.i333.i = phi i32 [ %i.wr, %bb.eq ], [ %i.wj, %bb.ep ] ; 4 uses
  %i.wm = zext nneg i32 %.07.i333.i to i64
  %i.wn = getelementptr i8, ptr %i.wk, i64 %i.wm
  %i.wo = getelementptr i8, ptr %i.wn, i64 -1
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !16
  %i.wq = icmp eq i8 %i.wp, 32
  br i1 %i.wq, label %bb.eq, label %qrfRTrim.exit334.i

bb.eq:                                            ; preds = %.lr.ph.i332.i
  %i.wr = add nsw i32 %.07.i333.i, -1
  %i.ws = icmp sgt i32 %.07.i333.i, 1
  br i1 %i.ws, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !97

qrfRTrim.exit334.i:                               ; preds = %bb.eq, %.lr.ph.i332.i, %bb.ep
  %.0.lcssa.i331.i = phi i32 [ %i.wj, %bb.ep ], [ 0, %bb.eq ], [ %.07.i333.i, %.lr.ph.i332.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.wi, i32 noundef %.0.lcssa.i331.i) #45
  br label %bb.er

bb.er:                                            ; preds = %qrfRTrim.exit334.i, %bb.eo
  %i.wt = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wt, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #45
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.en
  %i.wu = add nuw nsw i64 %.2275389.i, 1          ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.wu, %i.sb
  br i1 %exitcond403.not.i, label %.critedge314.i, label %.lr.ph390.i, !llvm.loop !101

.critedge314.i:                                   ; preds = %._crit_edge387.i.us, %bb.es, %.preheader360.i.split
  %i.wv = icmp eq i64 %.4393.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.wv, i1 true, i1 %i.rq
  %i.ww = add nsw i64 %.4393.i, %i.sb             ; 2 uses
  %i.wx = icmp slt i64 %i.ww, %i.ry               ; 2 uses
  %or.cond453.i = select i1 %or.cond14.i, i1 %i.wx, i1 false
  br i1 %or.cond453.i, label %bb.et, label %.loopexit.i9

bb.et:                                            ; preds = %.critedge314.i
  %i.wy = load i8, ptr %i.er, align 2
  %i.wz = icmp eq i8 %i.wy, 2
  %or.cond53 = select i1 %i.wv, i1 %i.wz, i1 false ; 5 uses
  %brmerge.not = select i1 %or.cond53, i1 %i.so, i1 false
  br i1 %brmerge.not, label %.lr.ph.i336.i, label %qrfLoadAlignment.exit.i

.lr.ph.i336.i:                                    ; preds = %bb.et
  %i.xa = load i8, ptr %i.sf, align 1, !tbaa !102 ; 2 uses
  %i.xb = load i32, ptr %i.sg, align 4, !tbaa !103
  %i.xc = sext i32 %i.xb to i64
  %i.xd = and i8 %i.xa, 12                        ; 2 uses
  %i.xe = or disjoint i8 %i.xd, 3
  %i.xf = load i32, ptr %i.sh, align 8
  %i.xg = sext i32 %i.xf to i64
  %i.xh = load ptr, ptr %i.si, align 8
  %i.xi = load ptr, ptr %i.sj, align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ez, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xu, %bb.ez ] ; 6 uses
  %i.xj = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.01.i.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16 ; 2 uses
  store i8 %i.xa, ptr %i.xk, align 8, !tbaa !79
  %i.xl = icmp slt i64 %.01.i.i, %i.xc
  br i1 %i.xl, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 %.01.i.i
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !16
  %i.xo = and i8 %i.xn, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xo, 0
  br i1 %.not.i338.i, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.xp = or disjoint i8 %i.xo, %i.xd
  br label %.sink.split.i.i

bb.ex:                                            ; preds = %bb.eu
  %i.xq = icmp slt i64 %.01.i.i, %i.xg
  br i1 %i.xq, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %.01.i.i
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !84
  %i.xt = icmp slt i16 %i.xs, 0
  br i1 %i.xt, label %.sink.split.i.i, label %bb.ez

.sink.split.i.i:                                  ; preds = %bb.ey, %bb.ew
  %.sink.i.i = phi i8 [ %i.xp, %bb.ew ], [ %i.xe, %bb.ey ]
  store i8 %.sink.i.i, ptr %i.xk, align 8, !tbaa !79
  br label %bb.ez

bb.ez:                                            ; preds = %.sink.split.i.i, %bb.ey, %bb.ex, %bb.ev
  %i.xu = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xu, %i.sn
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.eu, !llvm.loop !104

qrfLoadAlignment.exit.i:                          ; preds = %bb.ez, %bb.et
  %i.xv = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.xv, label %.loopexit.i9 [
    i8 19, label %bb.fa
    i8 1, label %bb.fc
    i8 13, label %bb.fg
    i8 2, label %bb.fi
  ]

bb.fa:                                            ; preds = %qrfLoadAlignment.exit.i
  %or.cond18.i = select i1 %or.cond53, i1 true, i1 %i.rq
  br i1 %or.cond18.i, label %bb.fb, label %.loopexit.i9

bb.fb:                                            ; preds = %bb.fa
  %i.xw = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.xw, ptr noundef %3, i8 noundef signext 43)
  br label %.loopexit.i9

bb.fc:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.xx = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xx, ptr noundef %3, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181, i32 noundef 1)
  br label %.loopexit.i9

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not300.i, label %.loopexit.i9, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.xy = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xy, ptr noundef %3, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef 0)
  br label %.loopexit.i9

bb.fg:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fh, label %.loopexit.i9

bb.fh:                                            ; preds = %bb.fg
  %i.xz = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.xz, ptr noundef %3, i8 noundef signext 124)
  br label %.loopexit.i9

bb.fi:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %.preheader.i, label %bb.fn

.preheader.i:                                     ; preds = %bb.fi
  br i1 %i.sc, label %.lr.ph392.i, label %.loopexit.i9

.lr.ph392.i:                                      ; preds = %.preheader.i, %bb.fm
  %.3276391.i = phi i64 [ %i.yq, %bb.fm ], [ 0, %.preheader.i ] ; 3 uses
  %i.ya = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.yb = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.3276391.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.ya, i32 noundef %i.yd, i8 noundef signext 45) #45
  %8 = icmp slt i64 %.3276391.i, %5
  %i.ye = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 4 uses
  br i1 %8, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.lr.ph392.i
  call void @sqlite3_str_append(ptr noundef %i.ye, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.fm

bb.fk:                                            ; preds = %.lr.ph392.i
  %i.yf = call i32 @sqlite3_str_length(ptr noundef %i.ye) #45 ; 3 uses
  %i.yg = call ptr @sqlite3_str_value(ptr noundef %i.ye) #45
  %i.yh = icmp sgt i32 %i.yf, 0
  br i1 %i.yh, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i

.lr.ph.i340.i:                                    ; preds = %bb.fk, %bb.fl
  %.07.i341.i = phi i32 [ %i.yn, %bb.fl ], [ %i.yf, %bb.fk ] ; 4 uses
  %i.yi = zext nneg i32 %.07.i341.i to i64
  %i.yj = getelementptr i8, ptr %i.yg, i64 %i.yi
  %i.yk = getelementptr i8, ptr %i.yj, i64 -1
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !16
  %i.ym = icmp eq i8 %i.yl, 32
  br i1 %i.ym, label %bb.fl, label %qrfRTrim.exit342.i

bb.fl:                                            ; preds = %.lr.ph.i340.i
  %i.yn = add nsw i32 %.07.i341.i, -1
  %i.yo = icmp sgt i32 %.07.i341.i, 1
  br i1 %i.yo, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i, !llvm.loop !97

qrfRTrim.exit342.i:                               ; preds = %bb.fl, %.lr.ph.i340.i, %bb.fk
  %.0.lcssa.i339.i = phi i32 [ %i.yf, %bb.fk ], [ 0, %bb.fl ], [ %.07.i341.i, %.lr.ph.i340.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.ye, i32 noundef %.0.lcssa.i339.i) #45
  %i.yp = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.yp, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #45
  br label %bb.fm

bb.fm:                                            ; preds = %qrfRTrim.exit342.i, %bb.fj
  %i.yq = add nuw nsw i64 %.3276391.i, 1          ; 2 uses
  %exitcond404.not.i = icmp eq i64 %i.yq, %i.sb
  br i1 %exitcond404.not.i, label %.loopexit.i9, label %.lr.ph392.i, !llvm.loop !105

bb.fn:                                            ; preds = %bb.fi
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yr = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRTrim(ptr noundef %i.yr)
  %i.ys = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ys, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %.loopexit.i9

.loopexit.i9:                                     ; preds = %bb.fm, %bb.fo, %bb.fn, %.preheader.i, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fb, %bb.fa, %qrfLoadAlignment.exit.i, %.critedge314.i
  br i1 %i.wx, label %bb.dz, label %.critedge8.i, !llvm.loop !106

.critedge8.i:                                     ; preds = %.loopexit.i9, %bb.dz, %bb.dy
  %i.yt = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.yu = load i8, ptr %i.yt, align 4, !tbaa !89
  %.not298.i = icmp eq i8 %i.yu, 1
  br i1 %.not298.i, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %.critedge8.i
  %i.yv = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.yv, label %bb.fs [
    i8 1, label %bb.fq
    i8 19, label %bb.fr
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.yw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.yx, ptr noundef %3, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 0)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.yy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.yz, ptr noundef %3, i8 noundef signext 43)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %.critedge8.i
  %i.za = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !107
  %.not.i343.i = icmp eq ptr %i.zb, null
  br i1 %.not.i343.i, label %qrfWrite.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.zc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !38
  %i.ze = call i32 @sqlite3_str_length(ptr noundef %i.zd) #45 ; 3 uses
  %i.zf = icmp sgt i32 %i.ze, 0
  br i1 %i.zf, label %bb.fu, label %qrfWrite.exit.i

bb.fu:                                            ; preds = %bb.ft
  %i.zg = load ptr, ptr %i.za, align 8, !tbaa !107
  %i.zh = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !108
  %i.zj = load ptr, ptr %i.zc, align 8, !tbaa !38
  %i.zk = call ptr @sqlite3_str_value(ptr noundef %i.zj) #45
  %i.zl = zext nneg i32 %i.ze to i64
  %i.zm = call i32 %i.zg(ptr noundef %i.zi, ptr noundef %i.zk, i64 noundef %i.zl) #45, !inline_history !109 ; 2 uses
  %i.zn = load ptr, ptr %i.zc, align 8, !tbaa !38
  call void @sqlite3_str_reset(ptr noundef %i.zn) #45
  %.not11.i.i = icmp eq i32 %i.zm, 0
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zm, ptr noundef nonnull @.str.217, i32 noundef %i.ze)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs
  %.pre87 = load ptr, ptr %i.gr, align 8, !tbaa !75 ; 2 uses
  br i1 %i.rz, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zq, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %.pre87, i64 %.09.i346.i
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zp) #45
  %i.zq = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.zq, %i.ry
  br i1 %exitcond.not, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !76

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre87) #45
  %i.zr = load ptr, ptr %i.gt, align 8, !tbaa !77
  call void @sqlite3_free(ptr noundef %i.zr) #45
  %i.zs = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zs) #45
  %i.zt = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zt) #45
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bv, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %.critedge

bb.fw:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.fx:                                            ; preds = %qrfInitialize.exit
  %i.zu = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  %i.zv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !37
  %i.zx = call i32 @sqlite3_prepare_v2(ptr noundef %i.zw, ptr noundef nonnull @.str.232, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #45 ; 2 uses
  %.not.i13 = icmp eq i32 %i.zx, 0
  br i1 %.not.i13, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zy = load ptr, ptr %i.zv, align 8, !tbaa !37
  %i.zz = call ptr @sqlite3_errmsg(ptr noundef %i.zy) #45
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zx, ptr noundef nonnull @.str.51, ptr noundef %i.zz)
  %i.aaa = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aab = call i32 @sqlite3_finalize(ptr noundef %i.aaa) #45 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.fz:                                            ; preds = %bb.fx
  %i.aac = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aad = call i32 @sqlite3_bind_pointer(ptr noundef %i.aac, i32 noundef 1, ptr noundef %i.zu, ptr noundef nonnull @.str.233, ptr noundef null) #45 ; 0 uses
  %i.aae = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.aae, ptr %4, align 8, !tbaa !36
  %i.aaf = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 10, ptr %i.aaf, align 4, !tbaa !40
  call fastcc void @qrfExplain(ptr noundef nonnull %4)
  %i.aag = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aah = call i32 @sqlite3_finalize(ptr noundef %i.aag) #45 ; 0 uses
  store ptr %i.zu, ptr %4, align 8, !tbaa !36
  br label %qrfScanStatusVm.exit

qrfScanStatusVm.exit:                             ; preds = %bb.fy, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  br label %.critedge

bb.ga:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.234)
  br label %.critedge

bb.gb:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aai = call i32 @sqlite3_step(ptr noundef nonnull %0) #45
  %i.aaj = icmp eq i32 %i.aai, 100
  br i1 %i.aaj, label %bb.gc, label %.critedge

bb.gc:                                            ; preds = %bb.gb
  %i.aak = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.aak, label %bb.il [
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
  %i.aal = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.aam = icmp eq i64 %i.aal, 0
  %i.aan = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  br i1 %i.aam, label %bb.ge, label %bb.gf

end_hunk_0
begin_hunk_1_@hash_step_vformat:bb.a
  %i.g = shl i32 %i.d, 3
  %i.h = add i32 %i.g, %i.f                       ; 2 uses
  store i32 %i.h, ptr %i.e, align 4, !tbaa !17
  %i.i = icmp ult i32 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i32 %i.d, 29
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = add i32 %i.k, %i.m
  store i32 %i.n, ptr %i.l, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = lshr i32 %i.f, 3
  %i.p = and i32 %i.o, 63                         ; 5 uses
  %i.q = add i32 %i.p, %i.d
  %i.r = icmp ugt i32 %i.q, 63
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = zext nneg i32 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = sub nuw nsw i32 64, %i.p                 ; 3 uses
  %i.w = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %i.w, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  %i.x = xor i32 %i.p, 127
  %i.y = icmp ult i32 %i.x, %i.d
  br i1 %i.y, label %.lr.ph.i, label %hash_step.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.02627.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.v, %bb.d ] ; 3 uses
  %i.z = zext i32 %.02627.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.aa)
  %i.ab = add i32 %.02627.i, 64                   ; 2 uses
  %i.ac = add i32 %.02627.i, 127
  %i.ad = icmp ult i32 %i.ac, %i.d
  br i1 %i.ad, label %.lr.ph.i, label %hash_step.exit, !llvm.loop !166

bb.e:                                             ; preds = %bb.c
  %i.ae = zext nneg i32 %i.p to i64
  br label %hash_step.exit

hash_step.exit:                                   ; preds = %.lr.ph.i, %bb.d, %bb.e
  %.1.i = phi i32 [ 0, %bb.e ], [ %i.v, %bb.d ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.0.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ], [ 0, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0.i
  %i.ah = zext i32 %.1.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.aj = sub i32 %i.d, %.1.i
  %i.ak = zext i32 %i.aj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ai, i64 %i.ak, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_value_type(ptr noundef %1) #45 ; 3 uses
  %.not = icmp eq i32 %2, 0
  %i.b = icmp ne i32 %i.a, 2
  %i.c = icmp ne i32 %i.a, 4
  %or.cond.not = and i1 %i.b, %i.c
  %i.d = select i1 %.not, i1 true, i1 %or.cond.not
  %.027 = select i1 %i.d, i32 %i.a, i32 3
  switch i32 %.027, label %bb.i [
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = tail call ptr @sqlite3_value_text(ptr noundef %1) #45
  %i.f = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45
  %i.g = tail call fastcc ptr @decimalNewFromText(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = tail call double @sqlite3_value_double(ptr noundef %1) #45
  %i.j = tail call fastcc ptr @decimalFromDouble(double noundef %i.i)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45
  %.not32 = icmp eq i32 %i.k, 8
  br i1 %.not32, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 8 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.n, 16
  %i.s = shl nuw nsw i64 %i.q, 8
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.x, 16
  %i.ac = shl nuw nsw i64 %i.aa, 8
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ah, 16
  %i.am = shl nuw nsw i64 %i.ak, 8
  %i.an = or disjoint i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = shl nuw i64 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av
  %i.ax = bitcast i64 %i.aw to double
  %i.ay = tail call fastcc ptr @decimalFromDouble(double noundef %i.ax)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %.not33 = icmp eq ptr %0, null
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @sqlite3_result_error_nomem(ptr noundef nonnull %0) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @sqlite3_free(ptr noundef null) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d, %bb.e, %bb.h
  %.029 = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.ay, %bb.e ], [ null, %bb.d ]
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_result_sci(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !185
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !187
  %.not64 = icmp eq i8 %i.f, 0
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_result_null(ptr noundef %0) #45
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !180  ; 4 uses
  %i.i = icmp sgt i32 %i.h, %spec.store.select
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182
  %3 = zext nneg i32 %i.h to i64
  %4 = zext nneg i32 %spec.store.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %.critedge.loopexit.split.loop.exit89

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.p = icmp sgt i64 %indvars.iv.next, %4
  br i1 %i.p, label %bb.g, label %.critedge, !llvm.loop !857

.critedge.loopexit.split.loop.exit89:             ; preds = %bb.g
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.split.loop.exit89, %bb.f
  %.057.lcssa = phi i32 [ %i.h, %bb.f ], [ %5, %.critedge.loopexit.split.loop.exit89 ], [ %spec.store.select, %bb.h ] ; 5 uses
  %i.q = icmp sgt i32 %.057.lcssa, 0
  br i1 %i.q, label %.lr.ph69, label %.critedge2

.lr.ph69:                                         ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182
  %wide.trip.count = zext nneg i32 %.057.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph69, %bb.j
  %indvars.iv76.a = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next77.a, %bb.j ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv76.a
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %.critedge2.loopexit.split.loop.exit91

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next77.a = add nuw nsw i64 %indvars.iv76.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next77.a, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.i, !llvm.loop !858

.critedge2.loopexit.split.loop.exit91:            ; preds = %bb.i
  %i.w = trunc nuw nsw i64 %indvars.iv76.a to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %.critedge2.loopexit.split.loop.exit91, %.critedge
  %.058.lcssa = phi i32 [ 0, %.critedge ], [ %i.w, %.critedge2.loopexit.split.loop.exit91 ], [ %.057.lcssa, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !190
  %i.z = sub i32 %.057.lcssa, %i.h
  %i.aa = add nsw i32 %i.z, %i.y
  %i.ab = sub nsw i32 %.057.lcssa, %.058.lcssa    ; 4 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 20
  %i.ae = tail call ptr @sqlite3_malloc64(i64 noundef %i.ad) #45 ; 15 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge2
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.l:                                             ; preds = %.critedge2
  %i.ah = icmp eq i32 %i.ab, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 1, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !182
  %i.ak = zext nneg i32 %.058.lcssa to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = xor i32 %i.aa, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ 1, %bb.m ], [ %i.ab, %bb.n ]    ; 7 uses
  %.056 = phi i32 [ -1, %bb.m ], [ %i.am, %bb.n ]
  %.0 = phi ptr [ %i.a, %bb.m ], [ %i.al, %bb.n ] ; 9 uses
  %.095 = ptrtoaddr ptr %.0 to i64
  %i.an = load i8, ptr %1, align 8, !tbaa !188
  %i.ao = icmp ne i8 %i.an, 0
  %i.ap = icmp sgt i32 %.1, 0
  %or.cond = and i1 %i.ap, %i.ao
  %. = select i1 %or.cond, i8 45, i8 43
  store i8 %., ptr %i.ae, align 1, !tbaa !16
  %i.aq = load i8, ptr %.0, align 1, !tbaa !16
  %i.ar = add i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 46, ptr %i.at, align 1, !tbaa !16
  %i.au = icmp eq i32 %.1, 1
  br i1 %i.au, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.av = icmp sgt i32 %.1, 1
  br i1 %i.av, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count82 = zext nneg i32 %.1 to i64   ; 3 uses
  %i.aw = zext i32 %i.ab to i64
  %i.ax = call i64 @llvm.usub.sat.i64(i64 %i.aw, i64 1) ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph74.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = sub i64 %i.af, %.095
  %i.az = add i64 %i.ay, 1
  %diff.check = icmp ult i64 %i.az, 31
  br i1 %diff.check, label %.lr.ph74.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp samesign ult i64 %i.ax, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ax, 24
  %n.vec = and i64 %i.ax, 4294967264              ; 4 uses
  %i.bb = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = or disjoint i64 %index, 1               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !16
  %wide.load97 = load <16 x i8>, ptr %i.be, align 1, !tbaa !16
  %i.bf = add <16 x i8> %wide.load, splat (i8 48)
  %i.bg = add <16 x i8> %wide.load97, splat (i8 48)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bc ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 18
  store <16 x i8> %i.bf, ptr %i.bi, align 1, !tbaa !16
  store <16 x i8> %i.bg, ptr %i.bj, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.preheader, label %vec.epilog.ph, !prof !860

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.ax, 4294967288            ; 3 uses
  %i.bl = or disjoint i64 %n.vec98, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = or disjoint i64 %index99, 1             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bm
  %wide.load100 = load <8 x i8>, ptr %i.bn, align 1, !tbaa !16
  %i.bo = add <8 x i8> %wide.load100, splat (i8 48)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store <8 x i8> %i.bo, ptr %i.bq, align 1, !tbaa !16
  %index.next101 = add nuw i64 %index99, 8        ; 2 uses
  %i.br = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !861

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.ax, %n.vec98
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv79.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ] ; 4 uses
  %i.bs = sub nsw i64 %wide.trip.count82, %indvars.iv79.ph
  %xtraiter = and i64 %i.bs, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader, %.lr.ph74.prol
  %indvars.iv79.prol = phi i64 [ %indvars.iv.next80.prol, %.lr.ph74.prol ], [ %indvars.iv79.ph, %.lr.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79.prol
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = add i8 %i.bu, 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv79.prol
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !16
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !862

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph74.preheader ], [ %indvars.iv.next80.prol, %.lr.ph74.prol ]
  %i.by = sub nsw i64 %indvars.iv79.ph, %wide.trip.count82
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge, label %.lr.ph74

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 48, ptr %i.ca, align 1, !tbaa !16
  br label %bb.q

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph74 ], [ %indvars.iv79.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = add i8 %i.cc, 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv79
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !16
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = add i8 %i.ch, 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next80
end_hunk_1
