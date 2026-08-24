Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
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
  %.str.19..str.17.i = select i1 %.not296.i, ptr @.str.19, ptr @.str.17 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qr = load i8, ptr %i.qq, align 4, !tbaa !89
  %i.qs = icmp eq i8 %i.qr, 1
  br i1 %i.qs, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.qt = select i1 %.not296.i, ptr getelementptr inbounds nuw (i8, ptr @.str.19, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.16, i64 3)
  br label %bb.dv

bb.dn:                                            ; preds = %bb.dl
  %.str.19..str.16.i = select i1 %.not296.i, ptr @.str.19, ptr @.str.16
  %.str.20..str.18.i = select i1 %.not296.i, ptr @.str.20, ptr @.str.18
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.qv, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0)
  br label %bb.dv

bb.do:                                            ; preds = %qrfRestrictScreenWidth.exit.i
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
  %i.ss = call i32 @sqlite3_str_errcode(ptr noundef %i.sr) #20
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dz
  br i1 %i.sc, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sp, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.ei
  %.0256.i.us = phi i32 [ %i.ui, %bb.ei ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.su = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.su, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #20
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
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.th, i8 noundef signext 32) #20
  %i.ti = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.ti, i32 noundef %i.td)
  %i.tj = sub nsw i32 %i.tb, %i.th
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tj, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

bb.eb:                                            ; preds = %.lr.ph386.i.us
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 18
  %i.tl = load i8, ptr %i.tk, align 2, !tbaa !96
  %.not.i324.i.us = icmp eq i8 %i.tl, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.eb, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #20
  %i.tm = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tm, i32 noundef %i.td)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.eb, %.lr.ph386.i.us
  %i.tn = load ptr, ptr %i.sv, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tn, i32 noundef %i.td)
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #20
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
  %i.tu = call i32 @sqlite3_str_length(ptr noundef %i.tt) #20 ; 3 uses
  %i.tv = call ptr @sqlite3_str_value(ptr noundef %i.tt) #20
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
  call void @sqlite3_str_truncate(ptr noundef %i.tt, i32 noundef %.0.lcssa.i.i.us) #20
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
  %i.uj = load i32, ptr %i.se, align 8, !tbaa !46
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
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.un
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !66 ; 2 uses
  %i.uq = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i ; 2 uses
  %i.ur = icmp eq ptr %i.up, null
  %spec.store.select359.i = select i1 %i.ur, ptr @.str.6, ptr %i.up
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
  %spec.store.select359.i.1 = select i1 %i.va, ptr @.str.6, ptr %i.uy
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
  %spec.store.select359.i.epil = select i1 %i.vj, ptr @.str.6, ptr %i.vh
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
  %7 = icmp slt i64 %.2275389.i, %5
  br i1 %7, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wh = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wh, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #20
  br label %bb.es

bb.eo:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wi = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.wj = call i32 @sqlite3_str_length(ptr noundef %i.wi) #20 ; 3 uses
  %i.wk = call ptr @sqlite3_str_value(ptr noundef %i.wi) #20
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
  call void @sqlite3_str_truncate(ptr noundef %i.wi, i32 noundef %.0.lcssa.i331.i) #20
  br label %bb.er

bb.er:                                            ; preds = %qrfRTrim.exit334.i, %bb.eo
  %i.wt = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wt, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #20
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
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xx, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1)
  br label %.loopexit.i9

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not300.i, label %.loopexit.i9, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.xy = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xy, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0)
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
  call void @sqlite3_str_appendchar(ptr noundef %i.ya, i32 noundef %i.yd, i8 noundef signext 45) #20
  %8 = icmp slt i64 %.3276391.i, %5
  %i.ye = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 4 uses
  br i1 %8, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.lr.ph392.i
  call void @sqlite3_str_append(ptr noundef %i.ye, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #20
  br label %bb.fm

bb.fk:                                            ; preds = %.lr.ph392.i
  %i.yf = call i32 @sqlite3_str_length(ptr noundef %i.ye) #20 ; 3 uses
  %i.yg = call ptr @sqlite3_str_value(ptr noundef %i.ye) #20
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
  call void @sqlite3_str_truncate(ptr noundef %i.ye, i32 noundef %.0.lcssa.i339.i) #20
  %i.yp = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.yp, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #20
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
  call void @sqlite3_str_append(ptr noundef %i.ys, ptr noundef nonnull @.str.8, i32 noundef 1) #20
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
  call fastcc void @qrfBoxSeparator(ptr noundef %i.yx, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0)
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
  %i.ze = call i32 @sqlite3_str_length(ptr noundef %i.zd) #20 ; 3 uses
  %i.zf = icmp sgt i32 %i.ze, 0
  br i1 %i.zf, label %bb.fu, label %qrfWrite.exit.i

bb.fu:                                            ; preds = %bb.ft
  %i.zg = load ptr, ptr %i.za, align 8, !tbaa !107
  %i.zh = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !108
  %i.zj = load ptr, ptr %i.zc, align 8, !tbaa !38
  %i.zk = call ptr @sqlite3_str_value(ptr noundef %i.zj) #20
  %i.zl = zext nneg i32 %i.ze to i64
  %i.zm = call i32 %i.zg(ptr noundef %i.zi, ptr noundef %i.zk, i64 noundef %i.zl) #20, !inline_history !109 ; 2 uses
  %i.zn = load ptr, ptr %i.zc, align 8, !tbaa !38
  call void @sqlite3_str_reset(ptr noundef %i.zn) #20
  %.not11.i.i = icmp eq i32 %i.zm, 0
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zm, ptr noundef nonnull @.str.69, i32 noundef %i.ze)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs
  %.pre87 = load ptr, ptr %i.gr, align 8, !tbaa !75 ; 2 uses
  br i1 %i.rz, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zq, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %.pre87, i64 %.09.i346.i
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zp) #20
  %i.zq = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.zq, %i.ry
  br i1 %exitcond.not, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !76

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre87) #20
  %i.zr = load ptr, ptr %i.gt, align 8, !tbaa !77
  call void @sqlite3_free(ptr noundef %i.zr) #20
  %i.zs = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zs) #20
  %i.zt = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zt) #20
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bv, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

bb.fw:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.fx:                                            ; preds = %qrfInitialize.exit
  %i.zu = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.zv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !37
  %i.zx = call i32 @sqlite3_prepare_v2(ptr noundef %i.zw, ptr noundef nonnull @.str.84, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #20 ; 2 uses
  %.not.i13 = icmp eq i32 %i.zx, 0
  br i1 %.not.i13, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zy = load ptr, ptr %i.zv, align 8, !tbaa !37
  %i.zz = call ptr @sqlite3_errmsg(ptr noundef %i.zy) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zx, ptr noundef nonnull @.str.85, ptr noundef %i.zz)
  %i.aaa = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aab = call i32 @sqlite3_finalize(ptr noundef %i.aaa) #20 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.fz:                                            ; preds = %bb.fx
  %i.aac = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aad = call i32 @sqlite3_bind_pointer(ptr noundef %i.aac, i32 noundef 1, ptr noundef %i.zu, ptr noundef nonnull @.str.86, ptr noundef null) #20 ; 0 uses
  %i.aae = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.aae, ptr %4, align 8, !tbaa !36
  %i.aaf = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 10, ptr %i.aaf, align 4, !tbaa !40
  call fastcc void @qrfExplain(ptr noundef nonnull %4)
  %i.aag = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aah = call i32 @sqlite3_finalize(ptr noundef %i.aag) #20 ; 0 uses
  store ptr %i.zu, ptr %4, align 8, !tbaa !36
  br label %qrfScanStatusVm.exit

qrfScanStatusVm.exit:                             ; preds = %bb.fy, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

bb.ga:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.87)
  br label %.critedge

bb.gb:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aai = call i32 @sqlite3_step(ptr noundef nonnull %0) #20
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
