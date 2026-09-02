Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a

bb.dc:                                            ; preds = %bb.dh, %.preheader.us.i.i
  %indvars.iv87.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next88.i.i, %bb.dh ] ; 3 uses
  %.079.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %.1.us.i.i, %bb.dh ] ; 4 uses
  %.05878.us.i.i = phi i32 [ -1, %.preheader.us.i.i ], [ %.159.us.i.i, %bb.dh ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.pi, i64 %indvars.iv87.i.i ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 17
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !77
  %i.pn = icmp eq i8 %i.pm, 0
  br i1 %i.pn, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !78 ; 5 uses
  %i.pq = icmp sgt i32 %i.pp, %.079.us.i.i
  %i.pr = icmp sgt i32 %i.pp, 8
  %or.cond.us.i.i = and i1 %i.pq, %i.pr
  br i1 %or.cond.us.i.i, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.ps = icmp samesign ugt i32 %i.pp, 16
  br i1 %i.ps, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pt = shl nuw nsw i32 %i.pp, 1
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !68
  %i.pw = icmp sgt i32 %i.pt, %i.pv
  br i1 %i.pw, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.px = trunc nuw nsw i64 %indvars.iv87.i.i to i32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.dd, %bb.dc
  %.159.us.i.i = phi i32 [ %i.px, %bb.dg ], [ %.05878.us.i.i, %bb.df ], [ %.05878.us.i.i, %bb.dd ], [ %.05878.us.i.i, %bb.dc ] ; 3 uses
  %.1.us.i.i = phi i32 [ %i.pp, %bb.dg ], [ %.079.us.i.i, %bb.df ], [ %.079.us.i.i, %bb.dd ], [ %.079.us.i.i, %bb.dc ] ; 4 uses
  %indvars.iv.next88.i.i = add nuw nsw i64 %indvars.iv87.i.i, 1 ; 2 uses
  %exitcond91.not.i.i = icmp eq i64 %indvars.iv.next88.i.i, %wide.trip.count90.i.i
  br i1 %exitcond91.not.i.i, label %._crit_edge81.us.i.i, label %bb.dc, !llvm.loop !243

bb.di:                                            ; preds = %._crit_edge81.us.i.i
  %i.py = icmp sgt i32 %.1.us.i.i, 15
  %i.pz = lshr i32 %.1.us.i.i, 1
  %i.qa = add nsw i32 %.1.us.i.i, -8
  %.060.us.i.i = select i1 %i.py, i32 %i.pz, i32 %i.qa ; 2 uses
  %i.qb = sub nsw i32 %.16684.us.i.i, %.060.us.i.i
  %i.qc = icmp slt i32 %i.qb, %i.pg
  %i.qd = sub nsw i32 %.16684.us.i.i, %i.pg
  %.161.us.i.i = select i1 %i.qc, i32 %i.qd, i32 %.060.us.i.i ; 2 uses
  %i.qe = sub nsw i32 %.16684.us.i.i, %.161.us.i.i ; 2 uses
  %i.qf = zext nneg i32 %.159.us.i.i to i64
  %i.qg = getelementptr inbounds nuw [24 x i8], ptr %i.pi, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !78
  %i.qj = sub nsw i32 %i.qi, %.161.us.i.i
  store i32 %i.qj, ptr %i.qh, align 8, !tbaa !78
  %i.qk = icmp sgt i32 %i.qe, %i.pg
  br i1 %i.qk, label %.preheader.us.i.i, label %qrfRestrictScreenWidth.exit.i.loopexit

._crit_edge81.us.i.i:                             ; preds = %bb.dh
  %i.ql = icmp slt i32 %.159.us.i.i, 0
  br i1 %i.ql, label %qrfRestrictScreenWidth.exit.i.loopexit, label %bb.di

qrfRestrictScreenWidth.exit.i.loopexit:           ; preds = %bb.di, %._crit_edge81.us.i.i
  %i.qm = phi i8 [ 1, %bb.di ], [ %i.pj, %._crit_edge81.us.i.i ]
  store i8 %i.qm, ptr %i.gu, align 4
  br label %qrfRestrictScreenWidth.exit.i

qrfRestrictScreenWidth.exit.i:                    ; preds = %qrfRestrictScreenWidth.exit.i.loopexit, %bb.db, %._crit_edge.i.i, %._crit_edge380.thread.i, %bb.ct
  %i.qn = phi i8 [ %.pre, %bb.ct ], [ 2, %._crit_edge380.thread.i ], [ 2, %._crit_edge.i.i ], [ 0, %bb.db ], [ 0, %qrfRestrictScreenWidth.exit.i.loopexit ] ; 6 uses
  %.0263.i = phi i32 [ %i.mt, %bb.ct ], [ %i.ef, %._crit_edge380.thread.i ], [ %i.ef, %._crit_edge.i.i ], [ %i.ef, %bb.db ], [ %i.ef, %qrfRestrictScreenWidth.exit.i.loopexit ] ; 6 uses
  %i.qo = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.qo, label %bb.ds [
    i8 1, label %bb.dj
    i8 19, label %bb.dm
    i8 2, label %bb.dp
  ]

bb.dj:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not296.i = icmp eq i8 %i.qn, 0                ; 4 uses
  %.str.19..str.17.i = select i1 %.not296.i, ptr @.str.19, ptr @.str.17 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qq = load i8, ptr %i.qp, align 4, !tbaa !80
  %i.qr = icmp eq i8 %i.qq, 1
  br i1 %i.qr, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.qs = select i1 %.not296.i, ptr getelementptr inbounds nuw (i8, ptr @.str.19, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.16, i64 3)
  br label %bb.dt

bb.dl:                                            ; preds = %bb.dj
  %.str.19..str.16.i = select i1 %.not296.i, ptr @.str.19, ptr @.str.16
  %.str.20..str.18.i = select i1 %.not296.i, ptr @.str.20, ptr @.str.18
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.qu, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0)
  br label %bb.dt

bb.dm:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not295.i = icmp eq i8 %i.qn, 0                ; 4 uses
  %.str.7..str.25.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.25 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !80
  %i.qx = icmp eq i8 %i.qw, 1
  br i1 %i.qx, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.qy = select i1 %.not295.i, ptr getelementptr inbounds nuw (i8, ptr @.str.7, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.24, i64 1)
  br label %bb.dt

bb.do:                                            ; preds = %bb.dm
  %.str.7..str.24.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.24
  %.str.27..str.26.i = select i1 %.not295.i, ptr @.str.27, ptr @.str.26
  %i.qz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !47
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
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !274
  %i.rn = icmp eq i8 %i.rm, 2
  %i.ro = load i8, ptr %i.gu, align 4             ; 2 uses
  %i.rp = icmp ne i8 %i.ro, 0                     ; 3 uses
  %i.rq = select i1 %i.rn, i1 %i.rp, i1 false
  %i.rr = zext i1 %i.rq to i32
  %i.rs = load i8, ptr %i.dg, align 1, !tbaa !53  ; 3 uses
  %i.rt = icmp eq i8 %i.rs, 2
  br i1 %i.rt, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.rv = load i8, ptr %i.ru, align 4, !tbaa !80
  %i.rw = icmp eq i8 %i.rv, 1
  br i1 %i.rw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %switch.selectcmp.case1.i = icmp ne i8 %i.rs, 1
  %switch.selectcmp.case2.i = icmp ne i8 %i.rs, 19
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.not302.i = phi i1 [ %switch.selectcmp.not.i, %bb.dv ], [ false, %bb.dt ], [ true, %bb.du ] ; 2 uses
  %i.rx = load i64, ptr %i.gn, align 8, !tbaa !69 ; 3 uses
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
  %5 = trunc i32 %.0263.i to i1
  %lcmp.mod208 = trunc i32 %.0263.i to i1
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.i9, %.lr.ph395.i
  %.4393.i = phi i64 [ 0, %.lr.ph395.i ], [ %i.wx, %.loopexit.i9 ] ; 5 uses
  %i.sq = load ptr, ptr %i.rz, align 8, !tbaa !47
  %i.sr = call i32 @sqlite3_str_errcode(ptr noundef %i.sq) #20
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dx
  br i1 %i.sb, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sp, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.eg
  %.0256.i.us = phi i32 [ %i.ui, %bb.eg ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.st = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.st, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.lr.ph386.i.us

.lr.ph386.i.us:                                   ; preds = %.lr.ph386.i.preheader.us, %bb.ef
  %.0257384.i.us = phi i32 [ %spec.select.i10.us, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ]
  %.1274383.i.us = phi i64 [ %i.ug, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 0, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i32 0, ptr %i.h, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 0, ptr %i.i, align 4, !tbaa !30
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.1274383.i.us ; 9 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !277
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !78
  call fastcc void @qrfWrapLine(ptr noundef %i.sv, i32 noundef %i.sx, i32 noundef %i.rr, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.sy = load i32, ptr %i.sw, align 8, !tbaa !78
  %i.sz = load i32, ptr %i.h, align 4, !tbaa !30
  %i.ta = sub nsw i32 %i.sy, %i.sz                ; 4 uses
  %i.tb = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 7 uses
  %i.tc = load i32, ptr %i.g, align 4, !tbaa !30  ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.te = load i8, ptr %i.td, align 8, !tbaa !73
  %i.tf = and i8 %i.te, 3
  switch i8 %i.tf, label %.lr.ph386.i.us.unreachabledefault [
    i8 0, label %bb.dz
    i8 2, label %bb.dy
    i8 3, label %.thread24.i.i.us
    i8 1, label %.thread.i.i.us
  ]

bb.dy:                                            ; preds = %.lr.ph386.i.us
  %i.tg = sdiv i32 %i.ta, 2                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.tg, i8 noundef signext 32) #20
  %i.th = load ptr, ptr %i.su, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tb, ptr noundef %i.th, i32 noundef %i.tc)
  %i.ti = sub nsw i32 %i.ta, %i.tg
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.ti, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

bb.dz:                                            ; preds = %.lr.ph386.i.us
  %i.tj = getelementptr inbounds nuw i8, ptr %i.su, i64 18
  %i.tk = load i8, ptr %i.tj, align 2, !tbaa !278
  %.not.i324.i.us = icmp eq i8 %i.tk, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.dz, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.ta, i8 noundef signext 32) #20
  %i.tl = load ptr, ptr %i.su, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tb, ptr noundef %i.tl, i32 noundef %i.tc)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.dz, %.lr.ph386.i.us
  %i.tm = load ptr, ptr %i.su, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tb, ptr noundef %i.tm, i32 noundef %i.tc)
  call void @sqlite3_str_appendchar(ptr noundef %i.tb, i32 noundef %i.ta, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.dy
  %i.tn = load i32, ptr %i.i, align 4, !tbaa !30
  %i.to = load ptr, ptr %i.su, align 8, !tbaa !277
  %i.tp = sext i32 %i.tn to i64
  %i.tq = getelementptr inbounds i8, ptr %i.to, i64 %i.tp ; 2 uses
  store ptr %i.tq, ptr %i.su, align 8, !tbaa !277
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !29
  %.not303.i.us = icmp eq i8 %i.tr, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257384.i.us, i32 1 ; 2 uses
  %i.ts = icmp slt i64 %.1274383.i.us, %i.sd
  br i1 %i.ts, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tt = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 3 uses
  %i.tu = call i32 @sqlite3_str_length(ptr noundef %i.tt) #20 ; 3 uses
  %i.tv = call ptr @sqlite3_str_value(ptr noundef %i.tt) #20
  %i.tw = icmp sgt i32 %i.tu, 0
  br i1 %i.tw, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.eb, %bb.ec
  %.07.i.i.us = phi i32 [ %i.uc, %bb.ec ], [ %i.tu, %bb.eb ] ; 4 uses
  %i.tx = zext nneg i32 %.07.i.i.us to i64
  %i.ty = getelementptr i8, ptr %i.tv, i64 %i.tx
  %i.tz = getelementptr i8, ptr %i.ty, i64 -1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !29
  %i.ub = icmp eq i8 %i.ua, 32
  br i1 %i.ub, label %bb.ec, label %qrfRTrim.exit.i.us

bb.ec:                                            ; preds = %.lr.ph.i325.i.us
  %i.uc = add nsw i32 %.07.i.i.us, -1
  %i.ud = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.ud, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !5

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.ec, %bb.eb
  %.0.lcssa.i.i.us = phi i32 [ %i.tu, %bb.eb ], [ 0, %bb.ec ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tt, i32 noundef %.0.lcssa.i.i.us) #20
  br label %bb.ed

bb.ed:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ea
  %i.ue = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ue, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.ef

bb.ee:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.uf = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.uf, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.ug = add nuw nsw i64 %.1274383.i.us, 1       ; 2 uses
  %exitcond402.not.i.us = icmp eq i64 %i.ug, %i.sa
  br i1 %exitcond402.not.i.us, label %._crit_edge387.i.us, label %.lr.ph386.i.us, !llvm.loop !244

._crit_edge387.i.us:                              ; preds = %bb.ef
  %i.uh = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uh, label %.critedge314.i, label %bb.eg

bb.eg:                                            ; preds = %._crit_edge387.i.us
  %i.ui = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.uj = load i32, ptr %i.se, align 8, !tbaa !268
  %i.uk = icmp slt i32 %i.ui, %i.uj
  br i1 %i.uk, label %.lr.ph386.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !245

.lr.ph386.i.us.unreachabledefault:                ; preds = %.lr.ph386.i.us
  unreachable

default.unreachable:                              ; preds = %bb.ei
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.eg
  %i.ul = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ul, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.um = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.um, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.ve, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter210 = phi i64 [ %niter210.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.un = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.un
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !66 ; 2 uses
  %i.uq = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i ; 2 uses
  %i.ur = icmp eq ptr %i.up, null
  %spec.store.select359.i = select i1 %i.ur, ptr @.str.6, ptr %i.up
  store ptr %spec.store.select359.i, ptr %i.uq, align 8
  %i.us = getelementptr inbounds i8, ptr %i.sm, i64 %i.un
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !29
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 18
  store i8 %i.ut, ptr %i.uu, align 2, !tbaa !278
  %i.uv = or disjoint i64 %.0273381.i, 1          ; 2 uses
  %i.uw = add nsw i64 %i.uv, %.4393.i             ; 2 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.uw
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !66 ; 2 uses
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %i.uv ; 2 uses
  %i.va = icmp eq ptr %i.uy, null
  %spec.store.select359.i.1 = select i1 %i.va, ptr @.str.6, ptr %i.uy
  store ptr %spec.store.select359.i.1, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds i8, ptr %i.sm, i64 %i.uw
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !29
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 18
  store i8 %i.vc, ptr %i.vd, align 2, !tbaa !278
  %i.ve = add nuw nsw i64 %.0273381.i, 2          ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %.lr.ph386.i.preheader.us.preheader.unr-lcssa, label %.lr.ph382.i, !llvm.loop !246

.lr.ph386.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph382.i
  br i1 %5, label %.lr.ph382.i.epil.preheader, label %.lr.ph386.i.preheader.us.preheader

.lr.ph382.i.epil.preheader:                       ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.preheader
  %.0273381.i.epil.init = phi i64 [ 0, %.lr.ph382.i.preheader ], [ %i.ve, %.lr.ph386.i.preheader.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod208)
  %i.vf = add nsw i64 %.0273381.i.epil.init, %.4393.i ; 2 uses
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.vf
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !66 ; 2 uses
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i.epil.init ; 2 uses
  %i.vj = icmp eq ptr %i.vh, null
  %spec.store.select359.i.epil = select i1 %i.vj, ptr @.str.6, ptr %i.vh
  store ptr %spec.store.select359.i.epil, ptr %i.vi, align 8
  %i.vk = getelementptr inbounds i8, ptr %i.sm, i64 %i.vf
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !29
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 18
  store i8 %i.vl, ptr %i.vm, align 2, !tbaa !278
  br label %.lr.ph386.i.preheader.us.preheader

.lr.ph386.i.preheader.us.preheader:               ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.epil.preheader
  br label %.lr.ph386.i.preheader.us

.lr.ph390.i:                                      ; preds = %bb.eq, %.critedge10.i.split.us
  %.2275389.i = phi i64 [ %i.wv, %bb.eq ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.2275389.i ; 8 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !277
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !29
  %i.vq = icmp eq i8 %i.vp, 0
  br i1 %i.vq, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph390.i
  %i.vr = load ptr, ptr %i.rz, align 8, !tbaa !47
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !78
  call void @sqlite3_str_appendchar(ptr noundef %i.vr, i32 noundef %i.vt, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

bb.ei:                                            ; preds = %.lr.ph390.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !78 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vv, i32 3) ; 4 uses
  store ptr @.str.29, ptr %i.vn, align 8, !tbaa !277
  %i.vw = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 7 uses
  %i.vx = sub nsw i32 %i.vv, %spec.select315.i    ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vz = load i8, ptr %i.vy, align 8, !tbaa !73
  %i.wa = and i8 %i.vz, 3
  switch i8 %i.wa, label %default.unreachable [
    i8 0, label %bb.ej
    i8 2, label %bb.ek
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vn, i64 18
  %i.wc = load i8, ptr %i.wb, align 2, !tbaa !278
  %.not.i328.i = icmp eq i8 %i.wc, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.ek:                                            ; preds = %bb.ei
  %i.wd = lshr i32 %i.vx, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wd, i8 noundef signext 32) #20
  %i.we = load ptr, ptr %i.vn, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.we, i32 noundef %spec.select315.i)
  %i.wf = sub nuw nsw i32 %i.vx, %i.wd
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.wf, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.ej, %bb.ei
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #20
  %i.wg = load ptr, ptr %i.vn, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef %i.wg, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.ej, %bb.ei
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vw, ptr noundef nonnull @.str.29, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vw, i32 noundef %i.vx, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.ek, %bb.eh
  %i.wh = icmp slt i64 %.2275389.i, %i.sd
  br i1 %i.wh, label %bb.el, label %bb.em

bb.el:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wi = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wi, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.eq

bb.em:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wj = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 3 uses
  %i.wk = call i32 @sqlite3_str_length(ptr noundef %i.wj) #20 ; 3 uses
  %i.wl = call ptr @sqlite3_str_value(ptr noundef %i.wj) #20
  %i.wm = icmp sgt i32 %i.wk, 0
  br i1 %i.wm, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i

.lr.ph.i332.i:                                    ; preds = %bb.en, %bb.eo
  %.07.i333.i = phi i32 [ %i.ws, %bb.eo ], [ %i.wk, %bb.en ] ; 4 uses
  %i.wn = zext nneg i32 %.07.i333.i to i64
  %i.wo = getelementptr i8, ptr %i.wl, i64 %i.wn
  %i.wp = getelementptr i8, ptr %i.wo, i64 -1
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !29
  %i.wr = icmp eq i8 %i.wq, 32
  br i1 %i.wr, label %bb.eo, label %qrfRTrim.exit334.i

bb.eo:                                            ; preds = %.lr.ph.i332.i
  %i.ws = add nsw i32 %.07.i333.i, -1
  %i.wt = icmp sgt i32 %.07.i333.i, 1
  br i1 %i.wt, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !5

qrfRTrim.exit334.i:                               ; preds = %bb.eo, %.lr.ph.i332.i, %bb.en
  %.0.lcssa.i331.i = phi i32 [ %i.wk, %bb.en ], [ 0, %bb.eo ], [ %.07.i333.i, %.lr.ph.i332.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.wj, i32 noundef %.0.lcssa.i331.i) #20
  br label %bb.ep

bb.ep:                                            ; preds = %qrfRTrim.exit334.i, %bb.em
  %i.wu = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wu, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.el
  %i.wv = add nuw nsw i64 %.2275389.i, 1          ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.wv, %i.sa
  br i1 %exitcond403.not.i, label %.critedge314.i, label %.lr.ph390.i, !llvm.loop !247

.critedge314.i:                                   ; preds = %._crit_edge387.i.us, %bb.eq, %.preheader360.i.split
  %i.ww = icmp eq i64 %.4393.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.ww, i1 true, i1 %i.rp
  %i.wx = add nsw i64 %.4393.i, %i.sa             ; 2 uses
  %i.wy = icmp slt i64 %i.wx, %i.rx               ; 2 uses
  %or.cond452.i = select i1 %or.cond14.i, i1 %i.wy, i1 false
  br i1 %or.cond452.i, label %bb.er, label %.loopexit.i9

bb.er:                                            ; preds = %.critedge314.i
  %i.wz = load i8, ptr %i.er, align 2
  %i.xa = icmp eq i8 %i.wz, 2
  %or.cond53 = select i1 %i.ww, i1 %i.xa, i1 false ; 5 uses
  %brmerge.not = select i1 %or.cond53, i1 %i.so, i1 false
  br i1 %brmerge.not, label %.lr.ph.i336.i, label %qrfLoadAlignment.exit.i

.lr.ph.i336.i:                                    ; preds = %bb.er
  %i.xb = load i8, ptr %i.sf, align 1, !tbaa !83  ; 2 uses
  %i.xc = load i32, ptr %i.sg, align 4, !tbaa !84
  %i.xd = sext i32 %i.xc to i64
  %i.xe = and i8 %i.xb, 12                        ; 2 uses
  %i.xf = or disjoint i8 %i.xe, 3
  %i.xg = load i32, ptr %i.sh, align 8
  %i.xh = sext i32 %i.xg to i64
  %i.xi = load ptr, ptr %i.si, align 8
  %i.xj = load ptr, ptr %i.sj, align 8
  br label %bb.es

bb.es:                                            ; preds = %bb.ex, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xv, %bb.ex ] ; 6 uses
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.01.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16 ; 2 uses
  store i8 %i.xb, ptr %i.xl, align 8, !tbaa !73
  %i.xm = icmp slt i64 %.01.i.i, %i.xd
  br i1 %i.xm, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.01.i.i
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !29
  %i.xp = and i8 %i.xo, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xp, 0
  br i1 %.not.i338.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xq = or disjoint i8 %i.xp, %i.xe
  br label %.sink.split.i.i

bb.ev:                                            ; preds = %bb.es
  %i.xr = icmp slt i64 %.01.i.i, %i.xh
  br i1 %i.xr, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xi, i64 %.01.i.i
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !76
  %i.xu = icmp slt i16 %i.xt, 0
  br i1 %i.xu, label %.sink.split.i.i, label %bb.ex

.sink.split.i.i:                                  ; preds = %bb.ew, %bb.eu
  %.sink.i.i = phi i8 [ %i.xq, %bb.eu ], [ %i.xf, %bb.ew ]
  store i8 %.sink.i.i, ptr %i.xl, align 8, !tbaa !73
  br label %bb.ex

bb.ex:                                            ; preds = %.sink.split.i.i, %bb.ew, %bb.ev, %bb.et
  %i.xv = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xv, %i.sn
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.es, !llvm.loop !6

qrfLoadAlignment.exit.i:                          ; preds = %bb.ex, %bb.er
  %i.xw = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.xw, label %.loopexit.i9 [
    i8 19, label %bb.ey
    i8 1, label %bb.fa
    i8 13, label %bb.fe
    i8 2, label %bb.fg
  ]
end_hunk_0
begin_hunk_1_@DbMain:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.Tcl_DString, align 8        ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  switch i32 %2, label %bb.k [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  tail call void %i.l(ptr noundef %1, i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.141) #20, !inline_history !292
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = tail call ptr %i.o(ptr noundef %i.q, ptr noundef null) #20 ; 4 uses
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(9) @.str.127) #21
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 576
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.x = tail call ptr @sqlite3_libversion() #20
  tail call void (ptr, ...) %i.w(ptr noundef %1, ptr noundef %i.x, ptr noundef null) #20
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(10) @.str.128) #21
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 576
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !106
  %i.ad = tail call ptr @sqlite3_sourceid() #20
  tail call void (ptr, ...) %i.ac(ptr noundef %1, ptr noundef %i.ad, ptr noundef null) #20
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(11) @.str.129) #21
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 576
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106
  tail call void (ptr, ...) %i.ai(ptr noundef %1, ptr noundef nonnull @.str.130, ptr noundef null) #20
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.aj = load i8, ptr %i.r, align 1, !tbaa !29
  %i.ak = icmp eq i8 %i.aj, 45
  br i1 %i.ak, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !102
  tail call void %i.an(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull @.str.141) #20, !inline_history !292
  br label %.loopexit

bb.k:                                             ; preds = %bb.a
  %i.ao = icmp sgt i32 %2, 2
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ap = add nsw i32 %2, -1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.ao
  %.0123231 = phi i32 [ 32774, %.lr.ph ], [ %.13, %bb.ao ] ; 14 uses
  %.0129230 = phi ptr [ null, %.lr.ph ], [ %.1130, %bb.ao ] ; 9 uses
  %.0131229 = phi ptr [ null, %.lr.ph ], [ %.1132, %bb.ao ] ; 10 uses
  %.0134228 = phi i32 [ 2, %.lr.ph ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.aq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2736
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !107
  %i.at = sext i32 %.0134228 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %3, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !105
  %i.aw = call ptr %i.as(ptr noundef %i.av) #20   ; 12 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %.not152 = icmp eq i8 %i.ax, 45
  br i1 %.not152, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not166 = icmp eq ptr %.0131229, null
  br i1 %.not166, label %bb.ao, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !102
  call void %i.ba(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull @.str.141) #20, !inline_history !292
  br label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.bb = icmp eq i32 %.0134228, %i.ap
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2128
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102
  call void %i.be(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull @.str.141) #20, !inline_history !292
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.bf = add nsw i32 %.0134228, 1                ; 17 uses
  %i.bg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(5) @.str.131) #21
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ao, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(5) @.str.132) #21
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2736
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107
  %i.bn = sext i32 %i.bf to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !105
  %i.bq = call ptr %i.bm(ptr noundef %i.bp) #20
  br label %bb.ao

bb.t:                                             ; preds = %bb.r
  %i.br = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(10) @.str.133) #21
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.bt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !108
  %i.bw = sext i32 %i.bf to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !105
  %i.bz = call i32 %i.bv(ptr noundef %1, ptr noundef %i.by, ptr noundef nonnull %i.d) #20
  %.not164 = icmp eq i32 %i.bz, 0
  br i1 %.not164, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !30
  %.not165 = icmp eq i32 %i.ca, 0
  %i.cb = and i32 %.0123231, -8
  %i.cc = or disjoint i32 %i.cb, 1
  %i.cd = and i32 %.0123231, -4
  %i.ce = or disjoint i32 %i.cd, 2
  %.1124 = select i1 %.not165, i32 %i.ce, i32 %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ao

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.loopexit

bb.w:                                             ; preds = %bb.t
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(8) @.str.134) #21
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ch = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 272
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108
  %i.ck = sext i32 %i.bf to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !105
  %i.cn = call i32 %i.cj(ptr noundef %1, ptr noundef %i.cm, ptr noundef nonnull %i.e) #20
  %.not162 = icmp eq i32 %i.cn, 0
  br i1 %.not162, label %.thread169, label %bb.y

.thread169:                                       ; preds = %bb.x
  %i.co = load i32, ptr %i.e, align 4, !tbaa !30
  %.not163 = icmp eq i32 %i.co, 0
  %5 = trunc i32 %.0123231 to i1
  %or.cond = select i1 %.not163, i1 true, i1 %5
  %i.cp = and i32 %.0123231, -5
  %masksel188 = select i1 %or.cond, i32 0, i32 4
  %.3126 = or disjoint i32 %masksel188, %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ao

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.cq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(10) @.str.135) #21
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.cs = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 272
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !108
  %i.cv = sext i32 %i.bf to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !105
  %i.cy = call i32 %i.cu(ptr noundef %1, ptr noundef %i.cx, ptr noundef nonnull %i.f) #20
  %.not160 = icmp eq i32 %i.cy, 0
  br i1 %.not160, label %.thread171, label %bb.ab

.thread171:                                       ; preds = %bb.aa
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !30
  %.not161 = icmp eq i32 %i.cz, 0
  %i.da = and i32 %.0123231, -16777217
  %masksel187 = select i1 %.not161, i32 0, i32 16777216
  %.5128 = or disjoint i32 %masksel187, %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z
  %i.db = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(9) @.str.136) #21
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.dd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 272
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !108
  %i.dg = sext i32 %i.bf to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !105
  %i.dj = call i32 %i.df(ptr noundef %1, ptr noundef %i.di, ptr noundef nonnull %i.g) #20
  %.not158 = icmp eq i32 %i.dj, 0
  br i1 %.not158, label %.thread173, label %bb.ae

.thread173:                                       ; preds = %bb.ad
  %i.dk = load i32, ptr %i.g, align 4, !tbaa !30
  %.not159 = icmp eq i32 %i.dk, 0
  %i.dl = and i32 %.0123231, -98305
  %i.dm = or disjoint i32 %i.dl, 32768
  %i.dn = and i32 %.0123231, -32769
  %.7 = select i1 %.not159, i32 %i.dn, i32 %i.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.loopexit

bb.af:                                            ; preds = %bb.ac
  %i.do = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(11) @.str.137) #21
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.dq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 272
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !108
  %i.dt = sext i32 %i.bf to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !105
  %i.dw = call i32 %i.ds(ptr noundef %1, ptr noundef %i.dv, ptr noundef nonnull %i.h) #20
  %.not156 = icmp eq i32 %i.dw, 0
  br i1 %.not156, label %.thread175, label %bb.ah

.thread175:                                       ; preds = %bb.ag
  %i.dx = load i32, ptr %i.h, align 4, !tbaa !30
  %.not157 = icmp eq i32 %i.dx, 0
  %i.dy = and i32 %.0123231, -98305
  %i.dz = or disjoint i32 %i.dy, 65536
  %i.ea = and i32 %.0123231, -65537
  %.9 = select i1 %.not157, i32 %i.ea, i32 %i.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %.loopexit

bb.ai:                                            ; preds = %bb.af
  %i.eb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(5) @.str.138) #21
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.ed = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 272
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !108
  %i.eg = sext i32 %i.bf to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !105
  %i.ej = call i32 %i.ef(ptr noundef %1, ptr noundef %i.ei, ptr noundef nonnull %i.i) #20
  %.not154 = icmp eq i32 %i.ej, 0
  br i1 %.not154, label %.thread177, label %bb.ak

.thread177:                                       ; preds = %bb.aj
  %i.ek = load i32, ptr %i.i, align 4, !tbaa !30
  %.not155 = icmp eq i32 %i.ek, 0
  %i.el = and i32 %.0123231, -65
  %masksel = select i1 %.not155, i32 0, i32 64
  %.11 = or disjoint i32 %masksel, %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %.loopexit

bb.al:                                            ; preds = %bb.ai
  %i.em = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(19) @.str.139) #21
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %i.en, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 272
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !108
  %i.er = sext i32 %i.bf to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %3, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !105
  %i.eu = call i32 %i.eq(ptr noundef %1, ptr noundef %i.et, ptr noundef nonnull %i.c) #20
  %.not153 = icmp eq i32 %i.eu, 0
  br i1 %.not153, label %bb.ao, label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 576
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !106
  call void (ptr, ...) %i.ew(ptr noundef %1, ptr noundef nonnull @.str.140, ptr noundef nonnull %i.aw, ptr noundef null) #20
  br label %.loopexit

bb.ao:                                            ; preds = %.thread177, %.thread175, %.thread173, %.thread171, %.thread169, %.thread, %bb.m, %bb.q, %bb.am, %bb.s
  %.1135 = phi i32 [ %i.bf, %bb.am ], [ %i.bf, %bb.q ], [ %i.bf, %bb.s ], [ %i.bf, %.thread ], [ %i.bf, %.thread169 ], [ %i.bf, %.thread171 ], [ %i.bf, %.thread173 ], [ %i.bf, %.thread175 ], [ %i.bf, %.thread177 ], [ %.0134228, %bb.m ]
  %.1132 = phi ptr [ %.0131229, %bb.am ], [ %.0131229, %bb.q ], [ %.0131229, %bb.s ], [ %.0131229, %.thread ], [ %.0131229, %.thread169 ], [ %.0131229, %.thread171 ], [ %.0131229, %.thread173 ], [ %.0131229, %.thread175 ], [ %.0131229, %.thread177 ], [ %i.aw, %bb.m ] ; 2 uses
  %.1130 = phi ptr [ %.0129230, %bb.am ], [ %.0129230, %bb.q ], [ %i.bq, %bb.s ], [ %.0129230, %.thread ], [ %.0129230, %.thread169 ], [ %.0129230, %.thread171 ], [ %.0129230, %.thread173 ], [ %.0129230, %.thread175 ], [ %.0129230, %.thread177 ], [ %.0129230, %bb.m ] ; 2 uses
  %.13 = phi i32 [ %.0123231, %bb.am ], [ %.0123231, %bb.q ], [ %.0123231, %bb.s ], [ %.1124, %.thread ], [ %.3126, %.thread169 ], [ %.5128, %.thread171 ], [ %.7, %.thread173 ], [ %.9, %.thread175 ], [ %.11, %.thread177 ], [ %.0123231, %bb.m ] ; 2 uses
  %i.ex = add nsw i32 %.1135, 1                   ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %2
  br i1 %i.ey, label %bb.l, label %._crit_edge, !llvm.loop !293

._crit_edge:                                      ; preds = %bb.ao, %bb.i, %bb.k
  %.0131.lcssa = phi ptr [ null, %bb.k ], [ null, %bb.i ], [ %.1132, %bb.ao ] ; 2 uses
  %.0129.lcssa = phi ptr [ null, %bb.k ], [ null, %bb.i ], [ %.1130, %bb.ao ]
  %.0123.lcssa = phi i32 [ 32774, %bb.k ], [ 32774, %bb.i ], [ %.13, %bb.ao ] ; 2 uses
  %i.ez = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !109
  %i.fc = call ptr %i.fb(i32 noundef 232) #20     ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fc, i8 0, i64 232, i1 false)
  %i.fd = icmp eq ptr %.0131.lcssa, null
  %spec.store.select = select i1 %i.fd, ptr @.str.6, ptr %.0131.lcssa ; 2 uses
  %i.fe = load i32, ptr %i.c, align 4, !tbaa !30
  %.not = icmp eq i32 %i.fe, 0
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.ff = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2008
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !294
  %i.fi = call ptr %i.fh(ptr noundef %1, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %4) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge
  %.2133 = phi ptr [ %i.fi, %bb.ap ], [ %spec.store.select, %._crit_edge ]
  %i.fj = call i32 @sqlite3_open_v2(ptr noundef %.2133, ptr noundef nonnull %i.fc, i32 noundef %.0123.lcssa, ptr noundef %.0129.lcssa) #20
  %i.fk = load i32, ptr %i.c, align 4, !tbaa !30
  %.not148 = icmp eq i32 %i.fk, 0
  br i1 %.not148, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 976
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !110
  call void %i.fn(ptr noundef nonnull %4) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fo = load ptr, ptr %i.fc, align 8, !tbaa !117 ; 2 uses
  %.not149 = icmp eq ptr %i.fo, null
end_hunk_1
begin_hunk_2_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @sqlite3_stmt_isexplain(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_stmt_explain(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

declare ptr @sqlite3_vmprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare ptr @sqlite3_malloc64(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrfColDataEnlarge(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
  %i.c = shl nsw i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62
  %i.f = mul nsw i32 %i.e, 10
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.c, %i.g                   ; 2 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = shl i64 %i.h, 3
  %i.l = tail call ptr @sqlite3_realloc64(ptr noundef %i.j, i64 noundef %i.k) #20 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef %i.n, i32 noundef 7, ptr noundef nonnull @.str.15)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !69
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %qrfColDataFree.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi i64 [ %i.u, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.09.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.t) #20
  %i.u = add nuw nsw i64 %.09.i, 1                ; 2 uses
  %i.v = load i64, ptr %i.o, align 8, !tbaa !69
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i, label %qrfColDataFree.exit, !llvm.loop !4

qrfColDataFree.exit:                              ; preds = %.lr.ph.i, %bb.b
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !71
  tail call void @sqlite3_free(ptr noundef %i.x) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  tail call void @sqlite3_free(ptr noundef %i.z) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65
  tail call void @sqlite3_free(ptr noundef %i.ab) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64
  tail call void @sqlite3_free(ptr noundef %i.ad) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store ptr %i.l, ptr %i.i, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !70
  %i.ah = shl i64 %i.ag, 2
  %i.ai = tail call ptr @sqlite3_realloc64(ptr noundef %i.af, i64 noundef %i.ah) #20 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %0, align 8, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef %i.ak, i32 noundef 7, ptr noundef nonnull @.str.15)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !69
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i27, label %qrfColDataFree.exit29

.lr.ph.i27:                                       ; preds = %bb.d, %.lr.ph.i27
  %.09.i28 = phi i64 [ %i.ar, %.lr.ph.i27 ], [ 0, %bb.d ] ; 2 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.09.i28
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.aq) #20
  %i.ar = add nuw nsw i64 %.09.i28, 1             ; 2 uses
  %i.as = load i64, ptr %i.al, align 8, !tbaa !69
  %i.at = icmp slt i64 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph.i27, label %qrfColDataFree.exit29, !llvm.loop !4

qrfColDataFree.exit29:                            ; preds = %.lr.ph.i27, %bb.d
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !71
  tail call void @sqlite3_free(ptr noundef %i.au) #20
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !72
  tail call void @sqlite3_free(ptr noundef %i.av) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65
  tail call void @sqlite3_free(ptr noundef %i.ax) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  tail call void @sqlite3_free(ptr noundef %i.az) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !65
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !70
  %i.bd = tail call ptr @sqlite3_realloc64(ptr noundef %i.bb, i64 noundef %i.bc) #20 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %0, align 8, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef %i.bf, i32 noundef 7, ptr noundef nonnull @.str.15)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !69
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i30, label %qrfColDataFree.exit32

.lr.ph.i30:                                       ; preds = %bb.f, %.lr.ph.i30
  %.09.i31 = phi i64 [ %i.bm, %.lr.ph.i30 ], [ 0, %bb.f ] ; 2 uses
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.09.i31
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.bl) #20
  %i.bm = add nuw nsw i64 %.09.i31, 1             ; 2 uses
  %i.bn = load i64, ptr %i.bg, align 8, !tbaa !69
  %i.bo = icmp slt i64 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph.i30, label %qrfColDataFree.exit32, !llvm.loop !4

qrfColDataFree.exit32:                            ; preds = %.lr.ph.i30, %bb.f
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !71
  tail call void @sqlite3_free(ptr noundef %i.bp) #20
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !72
  tail call void @sqlite3_free(ptr noundef %i.bq) #20
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !65
  tail call void @sqlite3_free(ptr noundef %i.br) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !64
  tail call void @sqlite3_free(ptr noundef %i.bt) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %qrfColDataFree.exit32, %qrfColDataFree.exit29, %qrfColDataFree.exit
  %.0 = phi i32 [ 1, %qrfColDataFree.exit ], [ 1, %qrfColDataFree.exit29 ], [ 1, %qrfColDataFree.exit32 ], [ 0, %bb.g ]
  ret i32 %.0
}

declare ptr @sqlite3_column_name(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfEncodeText(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %1) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 99 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !55
  switch i8 %i.c, label %bb.az [
    i8 7, label %bb.b
    i8 2, label %qrfRelaxable.exit.thread
    i8 3, label %.preheader
    i8 4, label %.preheader147
    i8 5, label %bb.al
    i8 6, label %bb.al
  ]

.preheader147:                                    ; preds = %bb.a
  %i.d = load i8, ptr %2, align 1, !tbaa !29      ; 2 uses
  %.not122168 = icmp eq i8 %i.d, 0
  br i1 %.not122168, label %.loopexit, label %.preheader146

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1, !tbaa !29      ; 2 uses
  %.not124170 = icmp eq i8 %i.e, 0
  br i1 %.not124170, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !29      ; 5 uses
  %i.g = icmp eq i8 %i.f, 39
  br i1 %i.g, label %qrfRelaxable.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29
  %3 = trunc i8 %i.j to i1
  br i1 %3, label %qrfRelaxable.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i8 %i.f, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51   ; 2 uses
  %.not68.i = icmp eq ptr %i.m, null
  br i1 %.not68.i, label %qrfRelaxable.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  br label %qrfRelaxable.exit

bb.g:                                             ; preds = %bb.d
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #21 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %qrfRelaxable.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %2, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29    ; 2 uses
  %i.t = icmp eq i8 %i.s, 39
  br i1 %i.t, label %qrfRelaxable.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %4 = trunc i8 %i.w to i1
  br i1 %4, label %qrfRelaxable.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51   ; 2 uses
  %.not62.i.a = icmp eq ptr %i.y, null
  br i1 %.not62.i.a, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull readonly dereferenceable(1) %2) #21
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %qrfRelaxable.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = icmp eq i8 %i.f, 45
  %i.ac = icmp eq i8 %i.f, 43
  %narrow.i = or i1 %i.ab, %i.ac
  %i.ad = zext i1 %narrow.i to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad ; 2 uses
  %i.af = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(4) @.str.57) #21
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %qrfRelaxable.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !29
  %i.ai = add i8 %i.ah, -58
  %.not63.i.a = icmp ult i8 %i.ai, -10
  br i1 %.not63.i.a, label %qrfRelaxable.exit.thread137, label %.preheader69.i

.preheader69.i:                                   ; preds = %bb.m, %.preheader69.i
  %.0.in.i = phi i64 [ %.0.i, %.preheader69.i ], [ %i.ad, %bb.m ] ; 2 uses
  %.0.i = add i64 %.0.in.i, 1                     ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29  ; 3 uses
  %i.al = add i8 %i.ak, -58
  %.not64.i.a = icmp ult i8 %i.al, -10
  br i1 %.not64.i.a, label %bb.n, label %.preheader69.i, !llvm.loop !296

bb.n:                                             ; preds = %.preheader69.i
  switch i8 %i.ak, label %bb.r [
    i8 0, label %qrfRelaxable.exit.thread
    i8 46, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.am = add i64 %.0.in.i, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.i = phi i64 [ %i.am, %bb.o ], [ %i.aq, %bb.p ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.1.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29  ; 3 uses
  %i.ap = add i8 %i.ao, -58
  %.not65.i.a = icmp ult i8 %i.ap, -10
  %i.aq = add i64 %.1.i, 1
  br i1 %.not65.i.a, label %bb.q, label %bb.p, !llvm.loop !297

bb.q:                                             ; preds = %bb.p
  %i.ar = icmp eq i8 %i.ao, 0
  br i1 %i.ar, label %qrfRelaxable.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.as = phi i8 [ %i.ao, %bb.q ], [ %i.ak, %bb.n ] ; 2 uses
  %.2.i = phi i64 [ %.1.i, %bb.q ], [ %.0.i, %bb.n ] ; 2 uses
  switch i8 %i.as, label %qrfRelaxable.exit [
    i8 101, label %bb.s
    i8 69, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.at = add i64 %.2.i, 1                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.av, label %bb.u [
    i8 43, label %bb.t
    i8 45, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.aw = add i64 %.2.i, 2                        ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ax = phi i8 [ %.pre.i, %bb.t ], [ %i.av, %bb.s ]
  %.3.i = phi i64 [ %i.aw, %bb.t ], [ %i.at, %bb.s ]
  %i.ay = add i8 %i.ax, -58
  %.not66.i = icmp ult i8 %i.ay, -10
  br i1 %.not66.i, label %qrfRelaxable.exit.thread137, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
  %.4.in.i = phi i64 [ %.4.i, %.preheader.i ], [ %.3.i, %bb.u ]
  %.4.i = add i64 %.4.in.i, 1                     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %.4.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29  ; 2 uses
  %i.bb = add i8 %i.ba, -58
  %.not67.i = icmp ult i8 %i.bb, -10
  br i1 %.not67.i, label %qrfRelaxable.exit, label %.preheader.i, !llvm.loop !298

qrfRelaxable.exit:                                ; preds = %.preheader.i, %bb.r, %bb.f
  %.052.shrunk.i.in = phi i8 [ %i.n, %bb.f ], [ %i.as, %bb.r ], [ %i.ba, %.preheader.i ]
  %.052.shrunk.i.not = icmp eq i8 %.052.shrunk.i.in, 0
  br i1 %.052.shrunk.i.not, label %qrfRelaxable.exit.thread, label %qrfRelaxable.exit.thread137

qrfRelaxable.exit.thread137:                      ; preds = %bb.u, %bb.m, %qrfRelaxable.exit
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef nonnull %2) #20
  br label %.loopexit

qrfRelaxable.exit.thread:                         ; preds = %bb.h, %bb.i, %bb.e, %bb.c, %bb.q, %bb.n, %bb.k, %bb.g, %bb.b, %bb.l, %qrfRelaxable.exit, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !54
  %i.be = icmp eq i8 %i.bd, 1
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %qrfRelaxable.exit.thread
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef %2) #20
  br label %.loopexit

bb.w:                                             ; preds = %qrfRelaxable.exit.thread
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef %2) #20
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %i.bf = phi i8 [ %i.bm, %bb.x ], [ %i.e, %.preheader ]
  %.0112171 = phi i32 [ %i.bj, %bb.x ], [ 0, %.preheader ]
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @qrfCsvQuote, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %.not125 = icmp eq i8 %i.bi, 0
  br i1 %.not125, label %bb.x, label %.thread

bb.x:                                             ; preds = %.lr.ph
  %i.bj = add i32 %.0112171, 1                    ; 3 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29  ; 2 uses
  %.not124 = icmp eq i8 %i.bm, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph, !llvm.loop !299

._crit_edge:                                      ; preds = %bb.x
  %i.bn = icmp eq i32 %i.bj, 0
  br i1 %i.bn, label %.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bq = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.bp) #21
  %.not126 = icmp eq ptr %i.bq, null
  br i1 %.not126, label %bb.z, label %.thread

.thread:                                          ; preds = %.lr.ph, %.preheader, %bb.y, %._crit_edge
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %2) #20
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef nonnull %2) #20
  br label %.loopexit

.preheader146:                                    ; preds = %.preheader147, %bb.ak
  %i.br = phi i8 [ %i.ci, %bb.ak ], [ %i.d, %.preheader147 ]
  %.0111169 = phi ptr [ %i.ch, %bb.ak ], [ %2, %.preheader147 ] ; 4 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader146, %.critedge
  %i.bs = phi i8 [ %.pre, %.critedge ], [ %i.br, %.preheader146 ] ; 3 uses
  %.0109 = phi i32 [ %i.ca, %.critedge ], [ 0, %.preheader146 ] ; 10 uses
  %i.bt = icmp ugt i8 %i.bs, 62
  br i1 %i.bt, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = insertelement <4 x i8> poison, i8 %i.bs, i64 0
  %i.bv = shufflevector <4 x i8> %i.bu, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bw = and <4 x i8> %i.bv, <i8 -1, i8 61, i8 59, i8 -1>
  %i.bx = icmp eq <4 x i8> %i.bw, <i8 0, i8 60, i8 34, i8 39>
  %i.by = bitcast <4 x i1> %i.bx to i4
  %i.bz = icmp eq i4 %i.by, 0
  br i1 %i.bz, label %.critedge, label %.critedge13

.critedge:                                        ; preds = %bb.aa, %bb.ab
  %i.ca = add i32 %.0109, 1                       ; 2 uses
  %.phi.trans.insert = zext i32 %i.ca to i64
  %.phi.trans.insert178 = getelementptr inbounds nuw i8, ptr %.0111169, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert178, align 1, !tbaa !29
  br label %bb.aa, !llvm.loop !300

.critedge13:                                      ; preds = %bb.ab
  %.not123 = icmp eq i32 %.0109, 0
  br i1 %.not123, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge13
  %i.cb = zext i32 %.0109 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0111169, i64 %i.cb
  tail call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull %.0111169, i32 noundef %.0109) #20
  %.pre179 = load i8, ptr %i.cc, align 1, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge13
  %i.cd = phi i8 [ %.pre179, %bb.ac ], [ %i.bs, %.critedge13 ]
  switch i8 %i.cd, label %bb.aj [
    i8 62, label %bb.ae
end_hunk_2
begin_hunk_3_@qrfRenderValue:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !58
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !46
  %i.v = tail call i32 @sqlite3_column_bytes(ptr noundef %i.u, i32 noundef %2) #20 ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !46
  %i.x = tail call ptr @sqlite3_column_blob(ptr noundef %i.w, i32 noundef %2) #20 ; 8 uses
  %i.y = icmp eq i32 %i.v, 0
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.x, align 1, !tbaa !29    ; 3 uses
  %i.aa = lshr i8 %i.z, 4
  %i.ab = zext nneg i8 %i.aa to i32               ; 3 uses
  %i.ac = icmp ult i8 %i.z, -64
  br i1 %i.ac, label %qrfJsonbQuickCheck.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp samesign ult i8 %i.z, -32
  %i.ae = add nsw i32 %i.ab, -11
  %i.af = shl nuw nsw i32 %i.ab, 2
  %i.ag = add nsw i32 %i.af, -52
  %i.ah = select i1 %i.ad, i32 %i.ae, i32 %i.ag   ; 4 uses
  %.not.i.i = icmp sgt i32 %i.v, %i.ah
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = zext i8 %i.aj to i64                    ; 3 uses
  %i.al = icmp sgt i32 %i.ah, 1
  %wide.trip.count.i.i = zext i32 %i.ah to i64    ; 2 uses
  br i1 %i.al, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.am = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.an = add nsw i32 %i.ah, -2
  %i.ao = icmp ult i32 %i.an, 3
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.am, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 4 uses
  %.026.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.preheader.new ], [ %i.bl, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.as = zext i8 %i.ar to i64
  %i.at = shl i64 %.026.i.i, 16
  %i.au = shl nuw nsw i64 %i.as, 8
  %i.av = or disjoint i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl i64 %i.ba, 16
  %i.bg = shl nuw nsw i64 %i.be, 8
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %i.bk = zext i8 %i.bj to i64
  %i.bl = or disjoint i64 %i.bh, %i.bk            ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !306

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.026.i.i.epil.init = phi i64 [ %i.ak, %.lr.ph.i.i.preheader ], [ %i.bl, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.026.i.i.epil = phi i64 [ %i.bq, %.lr.ph.i.i.epil ], [ %.026.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bm = shl i64 %.026.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.epil
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = zext i8 %i.bo to i64
  %i.bq = or disjoint i64 %i.bm, %i.bp            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !307

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.j
  %.0.lcssa.i.i = phi i64 [ %i.ak, %bb.j ], [ %i.bl, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph.i.i.epil ]
  %i.br = add nuw nsw i64 %wide.trip.count.i.i, 1
  %i.bs = add i64 %i.br, %.0.lcssa.i.i
  %i.bt = zext nneg i32 %i.v to i64
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.k, label %.thread

qrfJsonbQuickCheck.exit.i:                        ; preds = %bb.h
  %i.bv = add nuw nsw i32 %i.ab, 1
  %i.bw = icmp eq i32 %i.v, %i.bv
  br i1 %i.bw, label %bb.k, label %.thread

bb.k:                                             ; preds = %qrfJsonbQuickCheck.exit.i, %._crit_edge.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !96 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ca = call i32 @sqlite3_open(ptr noundef nonnull @.str.65, ptr noundef nonnull %i.a) #20
  %.not.i = icmp eq i32 %i.ca, 0
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  br i1 %.not.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.cc = call i32 @sqlite3_prepare_v2(ptr noundef %i.cb, ptr noundef nonnull @.str.66, i32 noundef -1, ptr noundef nonnull %i.bx, ptr noundef null) #20
  %.not22.i = icmp eq i32 %i.cc, 0
  br i1 %.not22.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.ce = call i32 @sqlite3_finalize(ptr noundef %i.cd) #20 ; 0 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !96
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !127
  br label %.critedge.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.cg = tail call i32 @sqlite3_reset(ptr noundef nonnull %i.by) #20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.ci = call i32 @sqlite3_bind_blob(ptr noundef %i.ch, i32 noundef 1, ptr noundef nonnull %i.x, i32 noundef %i.v, ptr noundef null) #20 ; 0 uses
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.ck = call i32 @sqlite3_step(ptr noundef %i.cj) #20
  %i.cl = icmp eq i32 %i.ck, 100
  br i1 %i.cl, label %qrfJsonbToJson.exit, label %.thread

.critedge.i:                                      ; preds = %bb.n, %bb.l
  %.sink.i = phi ptr [ %i.cf, %bb.n ], [ %i.cb, %bb.l ]
  %i.cm = call i32 @sqlite3_close(ptr noundef %.sink.i) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread

qrfJsonbToJson.exit:                              ; preds = %bb.q
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.co = call ptr @sqlite3_column_text(ptr noundef %i.cn, i32 noundef 0) #20 ; 3 uses
  %.not194 = icmp eq ptr %i.co, null
  br i1 %.not194, label %.thread, label %bb.r

bb.r:                                             ; preds = %qrfJsonbToJson.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !55
  %i.cr = icmp eq i8 %i.cq, 2
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef 6) #20
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.co)
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef 1) #20
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.co)
  br label %.loopexit

.thread:                                          ; preds = %._crit_edge.i.i, %bb.i, %bb.g, %bb.q, %qrfJsonbQuickCheck.exit.i, %.critedge.i, %qrfJsonbToJson.exit, %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 4 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !56
  %i.cu = load ptr, ptr %0, align 8, !tbaa !46    ; 4 uses
  switch i8 %i.ct, label %bb.af [
    i8 3, label %bb.u
    i8 2, label %bb.u
    i8 4, label %bb.aa
    i8 5, label %bb.aa
    i8 6, label %bb.ae
  ]

bb.u:                                             ; preds = %.thread, %.thread
  %i.cv = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #20 ; 7 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !46
  %i.cx = call ptr @sqlite3_column_blob(ptr noundef %i.cw, i32 noundef %2) #20 ; 3 uses
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !56
  %i.cz = icmp eq i8 %i.cy, 2
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef 2) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = call i32 @sqlite3_str_length(ptr noundef %1) #20
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.cv, i8 noundef signext 32) #20
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.cv, i8 noundef signext 32) #20
  %i.db = load i8, ptr %i.cs, align 1, !tbaa !56
  %i.dc = icmp eq i8 %i.db, 2
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef 1, i8 noundef signext 39) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dd = call i32 @sqlite3_str_errcode(ptr noundef %1) #20
  %.not197 = icmp eq i32 %i.dd, 0
  br i1 %.not197, label %bb.z, label %.critedge200

bb.z:                                             ; preds = %bb.y
  %i.de = call ptr @sqlite3_str_value(ptr noundef %1) #20 ; 3 uses
  %i.df = icmp sgt i32 %i.cv, 0
  br i1 %i.df, label %.lr.ph228.preheader, label %.loopexit

.lr.ph228.preheader:                              ; preds = %bb.z
  %i.dg = sext i32 %i.da to i64                   ; 2 uses
  %i.dh = icmp eq i32 %i.cv, 1
  br i1 %i.dh, label %.lr.ph228.epil.preheader, label %.lr.ph228.preheader.new

.lr.ph228.preheader.new:                          ; preds = %.lr.ph228.preheader
  %3 = and i32 %i.cv, 2147483646
  %unroll_iter298 = zext nneg i32 %3 to i64
  br label %.lr.ph228

.lr.ph228:                                        ; preds = %.lr.ph228, %.lr.ph228.preheader.new
  %indvars.iv250 = phi i64 [ 0, %.lr.ph228.preheader.new ], [ %indvars.iv.next251.1, %.lr.ph228 ] ; 3 uses
  %indvars.iv248 = phi i64 [ %i.dg, %.lr.ph228.preheader.new ], [ %indvars.iv.next249.1, %.lr.ph228 ] ; 3 uses
  %niter299 = phi i64 [ 0, %.lr.ph228.preheader.new ], [ %niter299.next.1, %.lr.ph228 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !29
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !29
  %i.dp = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv248 ; 2 uses
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !29
  %i.dq = and i32 %i.dk, 15
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !29
  %i.du = getelementptr i8, ptr %i.dp, i64 1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !29
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !29
  %i.ed = getelementptr i8, ptr %i.de, i64 %indvars.iv248 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 2
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !29
  %i.ef = and i32 %i.dy, 15
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !29
  %i.ej = getelementptr i8, ptr %i.ed, i64 3
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !29
  %indvars.iv.next251.1 = add nuw nsw i64 %indvars.iv250, 2 ; 2 uses
  %indvars.iv.next249.1 = add nsw i64 %indvars.iv248, 4 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph228, !llvm.loop !308

bb.aa:                                            ; preds = %.thread, %.thread
  %i.ek = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #20 ; 6 uses
  %i.el = load ptr, ptr %0, align 8, !tbaa !46
  %i.em = call ptr @sqlite3_column_blob(ptr noundef %i.el, i32 noundef %2) #20 ; 4 uses
  %i.en = load i8, ptr %i.cs, align 1, !tbaa !56
  %.not196 = icmp eq i8 %i.en, 5                  ; 2 uses
  %i.eo = select i1 %.not196, i32 6, i32 4
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef 1) #20
  %i.ep = call i32 @sqlite3_str_length(ptr noundef %1) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.ab
  %.0175223 = phi i32 [ %i.eo, %bb.aa ], [ %i.eq, %bb.ab ] ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.ek, i8 noundef signext 32) #20
  %i.eq = add nsw i32 %.0175223, -1
  %i.er = icmp samesign ugt i32 %.0175223, 1
  br i1 %i.er, label %bb.ab, label %bb.ac, !llvm.loop !309

bb.ac:                                            ; preds = %bb.ab
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef 1, i8 noundef signext 34) #20
  %i.es = call i32 @sqlite3_str_errcode(ptr noundef %1) #20
  %.not195 = icmp eq i32 %i.es, 0
  br i1 %.not195, label %bb.ad, label %.critedge200

bb.ad:                                            ; preds = %bb.ac
  %i.et = call ptr @sqlite3_str_value(ptr noundef %1) #20 ; 4 uses
  %i.eu = icmp sgt i32 %i.ek, 0
  br i1 %i.eu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ad
  %i.ev = sext i32 %i.ep to i64                   ; 3 uses
  %wide.trip.count246 = zext nneg i32 %i.ek to i64 ; 2 uses
  br i1 %.not196, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ew = icmp eq i32 %i.ek, 1
  br i1 %i.ew, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter292 = and i64 %wide.trip.count246, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next242.1, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv239 = phi i64 [ %i.ev, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next240.1, %.lr.ph.split.us ] ; 3 uses
  %niter293 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter293.next.1, %.lr.ph.split.us ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !29
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv239 ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.ez, align 1, !tbaa !29
  %i.fa = zext i8 %i.ey to i32                    ; 2 uses
  %i.fb = lshr i32 %i.fa, 4
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !29
  %i.ff = getelementptr i8, ptr %i.ez, i64 4
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !29
  %i.fg = and i32 %i.fa, 15
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !29
  %i.fk = getelementptr i8, ptr %i.ez, i64 5
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !29
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29
  %i.fo = getelementptr i8, ptr %i.et, i64 %indvars.iv239 ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 6
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.fp, align 1, !tbaa !29
  %i.fq = zext i8 %i.fn to i32                    ; 2 uses
  %i.fr = lshr i32 %i.fq, 4
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !29
  %i.fv = getelementptr i8, ptr %i.fo, i64 10
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !29
  %i.fw = and i32 %i.fq, 15
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !29
  %i.ga = getelementptr i8, ptr %i.fo, i64 11
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !29
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv241, 2 ; 2 uses
  %indvars.iv.next240.1 = add nsw i64 %indvars.iv239, 12 ; 2 uses
  %niter293.next.1 = add i64 %niter293, 2         ; 2 uses
  %niter293.ncmp.1 = icmp eq i64 %niter293.next.1, %unroll_iter292
  br i1 %niter293.ncmp.1, label %.loopexit.loopexit283.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !310

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %i.ev, %.lr.ph ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv234
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !29  ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv ; 4 uses
  store i8 92, ptr %i.gd, align 1, !tbaa !29
  %i.ge = lshr i8 %i.gc, 6
  %i.gf = or disjoint i8 %i.ge, 48
  %i.gg = getelementptr i8, ptr %i.gd, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !29
  %i.gh = lshr i8 %i.gc, 3
  %i.gi = and i8 %i.gh, 7
  %i.gj = or disjoint i8 %i.gi, 48
  %i.gk = getelementptr i8, ptr %i.gd, i64 2
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !29
  %i.gl = and i8 %i.gc, 7
  %i.gm = or disjoint i8 %i.gl, 48
  %i.gn = getelementptr i8, ptr %i.gd, i64 3
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !29
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count246
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !310

bb.ae:                                            ; preds = %.thread
  %i.go = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #20
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %i.go) #20
  br label %.loopexit

bb.af:                                            ; preds = %.thread
  %i.gp = call ptr @sqlite3_column_text(ptr noundef %i.cu, i32 noundef %2) #20
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gp)
  br label %.loopexit

bb.ag:                                            ; preds = %.critedge
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !51
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef %i.gr) #20
  br label %.loopexit

bb.ah:                                            ; preds = %.critedge
  %i.gs = load ptr, ptr %0, align 8, !tbaa !46
  %i.gt = tail call ptr @sqlite3_column_text(ptr noundef %i.gs, i32 noundef %2) #20
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gt)
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph228
  %4 = trunc i32 %i.cv to i1
  br i1 %4, label %.lr.ph228.epil.preheader, label %.loopexit

.lr.ph228.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph228.preheader
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next251.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv248.epil.init = phi i64 [ %i.dg, %.lr.ph228.preheader ], [ %indvars.iv.next249.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %i.cv to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250.epil.init
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !29
  %i.gw = zext i8 %i.gv to i32                    ; 2 uses
  %i.gx = lshr i32 %i.gw, 4
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !29
  %i.hb = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv248.epil.init ; 2 uses
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !29
  %i.hc = and i32 %i.gw, 15
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !29
  %i.hg = getelementptr i8, ptr %i.hb, i64 1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !29
  br label %.loopexit

.loopexit.loopexit283.unr-lcssa:                  ; preds = %.lr.ph.split.us
  %5 = trunc i32 %i.ek to i1
  br i1 %5, label %.lr.ph.split.us.epil.preheader, label %.loopexit

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit283.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next242.1, %.loopexit.loopexit283.unr-lcssa ]
  %indvars.iv239.epil.init = phi i64 [ %i.ev, %.lr.ph.split.us.preheader ], [ %indvars.iv.next240.1, %.loopexit.loopexit283.unr-lcssa ]
  %lcmp.mod291 = trunc i32 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241.epil.init
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !29
  %i.hj = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv239.epil.init ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.hj, align 1, !tbaa !29
  %i.hk = zext i8 %i.hi to i32                    ; 2 uses
  %i.hl = lshr i32 %i.hk, 4
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !29
  %i.hp = getelementptr i8, ptr %i.hj, i64 4
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !29
  %i.hq = and i32 %i.hk, 15
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !29
  %i.hu = getelementptr i8, ptr %i.hj, i64 5
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit283.unr-lcssa, %.lr.ph228.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ad, %bb.z, %bb.t, %bb.s, %bb.ae, %bb.af, %bb.ah, %bb.ag, %bb.e, %bb.d, %.critedge
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !313
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.ai, label %.critedge200

bb.ai:                                            ; preds = %.loopexit
  %i.hy = call i32 @sqlite3_str_length(ptr noundef %1) #20
  %i.hz = sub nsw i32 %i.hy, %i.b
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !313 ; 2 uses
  %i.ib = icmp sgt i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.aj, label %.critedge200

bb.aj:                                            ; preds = %bb.ai
  %i.ic = call ptr @sqlite3_str_value(ptr noundef %1) #20
  %i.id = sext i32 %i.b to i64
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 %i.id
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ia, i32 4) ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.thread213, %bb.aj
  %.0171 = phi i32 [ 0, %bb.aj ], [ %.4, %.thread213 ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.aj ], [ %.1, %.thread213 ] ; 7 uses
  %i.if = sext i32 %.0171 to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if ; 10 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !29  ; 4 uses
  %i.ii = icmp ult i8 %i.ih, 32
  br i1 %i.ii, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.ih, label %.thread213 [
    i8 27, label %bb.am
    i8 0, label %bb.bh
  ]

bb.am:                                            ; preds = %bb.al
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !29
  %.not.i203 = icmp eq i8 %i.ik, 91
  br i1 %.not.i203, label %.preheader.i, label %.thread212

.preheader.i:                                     ; preds = %bb.am, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.am ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !29
  %i.in = and i8 %i.im, -16
  %or.cond.i = icmp eq i8 %i.in, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i204, !llvm.loop !1

.critedge.i204:                                   ; preds = %.preheader.i, %.critedge.i204
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i204 ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv25.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !29  ; 2 uses
  %i.iq = and i8 %i.ip, -16
  %or.cond22.i = icmp eq i8 %i.iq, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i204, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i204
  %i.ir = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.is = add i8 %i.ip, -64
  %or.cond23.i = icmp ult i8 %i.is, 63
  %i.it = add nuw nsw i32 %i.ir, 1
  br i1 %or.cond23.i, label %.thread213, label %.thread212

.thread212:                                       ; preds = %bb.am, %.critedge2.i
  br label %.thread213

bb.an:                                            ; preds = %bb.ak
  %i.iu = icmp sgt i8 %i.ih, -1
  br i1 %i.iu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iv = add nsw i32 %.0, 1                      ; 2 uses
  %.not198 = icmp slt i32 %.0, %spec.store.select
  br i1 %.not198, label %.thread213, label %bb.bh

bb.ap:                                            ; preds = %bb.an
  %i.iw = zext i8 %i.ih to i32                    ; 6 uses
  %i.ix = and i32 %i.iw, 224
  %i.iy = icmp eq i32 %i.ix, 192
  br i1 %i.iy, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = and i32 %i.jb, 192
  %i.jd = icmp eq i32 %i.jc, 128
  br i1 %i.jd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.je = shl nuw nsw i32 %i.iw, 6
  %i.jf = and i32 %i.je, 1984
  %i.jg = and i32 %i.jb, 63
  %i.jh = or disjoint i32 %i.jg, %i.jf
  br label %sqlite3_qrf_decode_utf8.exit

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.ji = and i32 %i.iw, 240
  %i.jj = icmp eq i32 %i.ji, 224
  br i1 %i.jj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !29
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = and i32 %i.jm, 192
  %i.jo = icmp eq i32 %i.jn, 128
  br i1 %i.jo, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !29
  %i.jr = zext i8 %i.jq to i32                    ; 2 uses
  %i.js = and i32 %i.jr, 192
  %i.jt = icmp eq i32 %i.js, 128
  br i1 %i.jt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ju = shl nuw nsw i32 %i.iw, 12
  %i.jv = and i32 %i.ju, 61440
  %i.jw = shl nuw nsw i32 %i.jm, 6
  %i.jx = and i32 %i.jw, 4032
  %i.jy = or disjoint i32 %i.jx, %i.jv
  %i.jz = and i32 %i.jr, 63
  %i.ka = or disjoint i32 %i.jy, %i.jz
  br label %sqlite3_qrf_decode_utf8.exit

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.kb = and i32 %i.iw, 248
  %i.kc = icmp eq i32 %i.kb, 240
  br i1 %i.kc, label %bb.ax, label %sqlite3_qrf_wcwidth.exit

bb.ax:                                            ; preds = %bb.aw
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = and i32 %i.kf, 192
  %i.kh = icmp eq i32 %i.kg, 128
  br i1 %i.kh, label %bb.ay, label %sqlite3_qrf_wcwidth.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !29
  %i.kk = zext i8 %i.kj to i32                    ; 2 uses
  %i.kl = and i32 %i.kk, 192
  %i.km = icmp eq i32 %i.kl, 128
  br i1 %i.km, label %bb.az, label %sqlite3_qrf_wcwidth.exit

bb.az:                                            ; preds = %bb.ay
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ig, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !29
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = and i32 %i.kp, 192
  %i.kr = icmp eq i32 %i.kq, 128
  br i1 %i.kr, label %bb.ba, label %sqlite3_qrf_wcwidth.exit

bb.ba:                                            ; preds = %bb.az
  %i.ks = shl nuw nsw i32 %i.iw, 18
  %i.kt = and i32 %i.ks, 1835008
  %i.ku = shl nuw nsw i32 %i.kf, 12
  %i.kv = and i32 %i.ku, 258048
  %i.kw = or disjoint i32 %i.kv, %i.kt
  %i.kx = shl nuw nsw i32 %i.kk, 6
  %i.ky = and i32 %i.kx, 4032
  %i.kz = or disjoint i32 %i.kw, %i.ky
  %i.la = and i32 %i.kp, 63
  %i.lb = or disjoint i32 %i.kz, %i.la
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.ar, %bb.av, %bb.ba
  %.sink.i205 = phi i32 [ %i.jh, %bb.ar ], [ %i.lb, %bb.ba ], [ %i.ka, %bb.av ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.ar ], [ 4, %bb.ba ], [ 3, %bb.av ] ; 4 uses
end_hunk_3
begin_hunk_4_@qrfSplitColumn:bb.a
bb.g:                                             ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef nonnull %i.l) #20
  br label %qrfValidLayout.exit.thread

qrfValidLayout.exit:                              ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef %.0135173) #20
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.ay = add i64 %i.p, %i.ax
  %i.az = sdiv i64 %i.ay, %i.m                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %qrfValidLayout.exit.thread, label %.preheader157

.preheader157:                                    ; preds = %qrfValidLayout.exit
  %i.bb = sext i32 %.0132174 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader157, %bb.h
  %indvars.iv = phi i64 [ %i.bb, %.preheader157 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.bc = add i64 %i.ax, %indvars.iv
  %i.bd = sdiv i64 %i.bc, %indvars.iv.next
  %i.be = icmp eq i64 %i.bd, %i.az
  br i1 %i.be, label %bb.h, label %.loopexit, !llvm.loop !316

qrfValidLayout.exit.thread:                       ; preds = %qrfValidLayout.exit, %bb.g, %._crit_edge
  %.1136.ph = phi ptr [ %.0135173, %bb.g ], [ %.0135.lcssa, %._crit_edge ], [ %i.l, %qrfValidLayout.exit ] ; 5 uses
  %.1130.ph = phi i64 [ %.0129175, %bb.g ], [ %.0129.lcssa, %._crit_edge ], [ 1, %qrfValidLayout.exit ] ; 5 uses
  %.1.ph = phi i32 [ %.0176, %bb.g ], [ %.0.lcssa, %._crit_edge ], [ %.0132174, %qrfValidLayout.exit ] ; 9 uses
  %i.bf = icmp eq i32 %.1.ph, 1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %qrfValidLayout.exit.thread
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #20
  br label %bb.v

bb.j:                                             ; preds = %qrfValidLayout.exit.thread
  %i.bg = sext i32 %.1.ph to i64                  ; 8 uses
  %i.bh = mul nsw i64 %.1130.ph, %i.bg            ; 7 uses
  %i.bi = shl i64 %i.bh, 3
  %i.bj = tail call ptr @sqlite3_malloc64(i64 noundef %i.bi) #20 ; 7 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bl = shl i64 %i.bh, 2
  %i.bm = tail call ptr @sqlite3_malloc64(i64 noundef %i.bl) #20 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #20
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.bo = mul nsw i64 %i.bg, 24
  %i.bp = tail call ptr @sqlite3_malloc64(i64 noundef %i.bo) #20 ; 15 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #20
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #20
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.br = tail call ptr @sqlite3_malloc64(i64 noundef %i.bh) #20 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %.preheader156

.preheader156:                                    ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !69
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph180, label %.preheader155

.lr.ph180:                                        ; preds = %.preheader156
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !71
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #20
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #20
  tail call void @sqlite3_free(ptr noundef nonnull %i.bp) #20
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.v

.preheader155:                                    ; preds = %bb.r, %.preheader156
  %.0127.lcssa = phi i64 [ 0, %.preheader156 ], [ %i.cs, %bb.r ] ; 2 uses
  %i.bz = icmp slt i64 %.0127.lcssa, %i.bh
  br i1 %i.bz, label %.lr.ph183, label %.preheader

bb.r:                                             ; preds = %.lr.ph180, %bb.r
  %i.ca = phi ptr [ %.pre, %.lr.ph180 ], [ %i.cm, %bb.r ]
  %.0127179 = phi i64 [ 0, %.lr.ph180 ], [ %i.cs, %bb.r ] ; 7 uses
  %i.cb = srem i64 %.0127179, %.1130.ph
  %i.cc = mul nsw i64 %i.cb, %i.bg
  %i.cd = sdiv i64 %.0127179, %.1130.ph
  %i.ce = add nsw i64 %i.cc, %i.cd                ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0127179
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !66
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ce
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !66
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0127179
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 %i.ce
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !29
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !71 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0127179
  store ptr null, ptr %i.cn, align 8, !tbaa !66
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0127179
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !30
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ce
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !30
  %i.cs = add nuw nsw i64 %.0127179, 1            ; 3 uses
  %i.ct = load i64, ptr %i.bt, align 8, !tbaa !69
  %i.cu = icmp slt i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.r, label %.preheader155, !llvm.loop !320

.preheader:                                       ; preds = %bb.t, %.preheader155
  %i.cv = icmp sgt i32 %.1.ph, 0                  ; 2 uses
  br i1 %i.cv, label %.lr.ph185, label %._crit_edge186

.lr.ph185:                                        ; preds = %.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.pre211 = load i8, ptr %i.cy, align 8, !tbaa !73 ; 3 uses
  %unroll_iter = and i64 %i.bg, 2147483646
  br label %bb.u

.lr.ph183:                                        ; preds = %.preheader155, %bb.t
  %.1128182 = phi i64 [ %i.di, %bb.t ], [ %.0127.lcssa, %.preheader155 ] ; 3 uses
  %i.cz = srem i64 %.1128182, %.1130.ph
  %i.da = mul nsw i64 %i.cz, %i.bg
  %i.db = sdiv i64 %.1128182, %.1130.ph
  %i.dc = add nsw i64 %i.da, %i.db                ; 3 uses
  %i.dd = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.6) #20 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.dc
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !66
  %i.df = icmp eq ptr %i.dd, null
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph183
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph183
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dc
  store i32 0, ptr %i.dg, align 4, !tbaa !30
  %i.dh = getelementptr inbounds i8, ptr %i.br, i64 %i.dc
  store i8 0, ptr %i.dh, align 1, !tbaa !29
  %i.di = add nuw i64 %.1128182, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.bh
  br i1 %exitcond.not, label %.preheader, label %.lr.ph183, !llvm.loop !321

bb.u:                                             ; preds = %bb.u, %.lr.ph185
  %.2184 = phi i64 [ 0, %.lr.ph185 ], [ %i.ea, %bb.u ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph185 ], [ %niter.next.1, %bb.u ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %.2184
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !30 ; 3 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.2184 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !68
  %i.do = trunc i32 %i.dk to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 17
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !77
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i8 %.pre211, ptr %i.dq, align 8, !tbaa !73
  %i.dr = or disjoint i64 %.2184, 1               ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !30 ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.dr ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.dt, ptr %i.dv, align 8, !tbaa !78
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !68
  %i.dx = trunc i32 %i.dt to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 17
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !77
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i8 %.pre211, ptr %i.dz, align 8, !tbaa !73
  %i.ea = add nuw nsw i64 %.2184, 2               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge186.loopexit.unr-lcssa, label %bb.u, !llvm.loop !322

._crit_edge186.loopexit.unr-lcssa:                ; preds = %bb.u
  %2 = trunc i32 %.1.ph to i1
  br i1 %2, label %.epil.preheader, label %._crit_edge186

.epil.preheader:                                  ; preds = %._crit_edge186.loopexit.unr-lcssa
  %lcmp.mod287 = trunc i32 %.1.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !30 ; 3 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.ea ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %i.ec, ptr %i.ee, align 8, !tbaa !78
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 %i.ec, ptr %i.ef, align 4, !tbaa !68
  %i.eg = trunc i32 %i.ec to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 17
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !77
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i8 %.pre211, ptr %i.ei, align 8, !tbaa !73
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %.epil.preheader, %._crit_edge186.loopexit.unr-lcssa, %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !71
  tail call void @sqlite3_free(ptr noundef %i.ek) #20
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !72
  tail call void @sqlite3_free(ptr noundef %i.em) #20
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !64
  tail call void @sqlite3_free(ptr noundef %i.eo) #20
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !65
  tail call void @sqlite3_free(ptr noundef %i.eq) #20
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #20
  store ptr %i.bj, ptr %i.ej, align 8, !tbaa !71
  store ptr %i.bm, ptr %i.el, align 8, !tbaa !72
  store ptr %i.bp, ptr %i.en, align 8, !tbaa !64
  store ptr %i.br, ptr %i.ep, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.ph, ptr %i.er, align 8, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bh, ptr %i.es, align 8, !tbaa !70
  store i64 %i.bh, ptr %i.bt, align 8, !tbaa !69
  br i1 %i.cv, label %.lr.ph190.preheader, label %._crit_edge191

.lr.ph190.preheader:                              ; preds = %._crit_edge186
  %min.iters.check255 = icmp ult i32 %.1.ph, 9
  br i1 %min.iters.check255, label %.lr.ph190.preheader267, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph190.preheader
  %i.et = and i64 %i.bg, 7
  %i.eu = and i32 %.1.ph, 7
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = select i1 %i.ev, i64 8, i64 %i.et
  %n.vec257 = sub nsw i64 %i.bg, %i.ew            ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next262, %vector.body258 ] ; 9 uses
  %vec.phi260 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.gd, %vector.body258 ]
  %vec.phi261 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.ge, %vector.body258 ]
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 128
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 176
  %i.fn = load i32, ptr %i.ff, align 8, !tbaa !78
  %i.fo = load i32, ptr %i.fg, align 8, !tbaa !78
  %i.fp = load i32, ptr %i.fh, align 8, !tbaa !78
  %i.fq = load i32, ptr %i.fi, align 8, !tbaa !78
  %i.fr = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fo, i64 1
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 2
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 3
  %i.fv = load i32, ptr %i.fj, align 8, !tbaa !78
  %i.fw = load i32, ptr %i.fk, align 8, !tbaa !78
  %i.fx = load i32, ptr %i.fl, align 8, !tbaa !78
  %i.fy = load i32, ptr %i.fm, align 8, !tbaa !78
  %i.fz = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %i.ga = insertelement <4 x i32> %i.fz, i32 %i.fw, i64 1
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.fx, i64 2
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fy, i64 3
  %i.gd = add <4 x i32> %i.fu, %vec.phi260        ; 2 uses
  %i.ge = add <4 x i32> %i.gc, %vec.phi261        ; 2 uses
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.gf, label %middle.block263, label %vector.body258, !llvm.loop !323

middle.block263:                                  ; preds = %vector.body258
  %bin.rdx264 = add <4 x i32> %i.ge, %i.gd
  %i.gg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264)
  br label %.lr.ph190.preheader267

.lr.ph190.preheader267:                           ; preds = %.lr.ph190.preheader, %middle.block263
  %.3188.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec257, %middle.block263 ]
  %.0131187.ph = phi i32 [ 0, %.lr.ph190.preheader ], [ %i.gg, %middle.block263 ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader267, %.lr.ph190
  %.3188 = phi i64 [ %i.gl, %.lr.ph190 ], [ %.3188.ph, %.lr.ph190.preheader267 ] ; 2 uses
  %.0131187 = phi i32 [ %i.gk, %.lr.ph190 ], [ %.0131187.ph, %.lr.ph190.preheader267 ]
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.3188
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !78
  %i.gk = add nsw i32 %i.gj, %.0131187            ; 2 uses
  %i.gl = add nuw nsw i64 %.3188, 1               ; 2 uses
  %exitcond210.not = icmp eq i64 %i.gl, %i.bg
  br i1 %exitcond210.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !324

._crit_edge191:                                   ; preds = %.lr.ph190, %._crit_edge186
  %.0131.lcssa = phi i32 [ 0, %._crit_edge186 ], [ %i.gk, %.lr.ph190 ]
  %i.gm = load i16, ptr %i.a, align 8, !tbaa !52
  %i.gn = sext i16 %i.gm to i32
  %i.go = sub nsw i32 %i.gn, %.0131.lcssa
  %i.gp = add nsw i32 %.1.ph, -1
  %i.gq = sdiv i32 %i.go, %i.gp                   ; 2 uses
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.gt = and i32 %i.gq, 254
  %i.gu = icmp samesign ugt i32 %i.gt, 5
  %spec.select = select i1 %i.gu, i8 5, i8 %i.gr
  store i8 %spec.select, ptr %i.gs, align 1, !tbaa !79
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge191, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfBoxSeparator(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.f = load i8, ptr %i.e, align 4, !tbaa !80
  %.not = icmp eq i8 %i.f, 1                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !79
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m                   ; 2 uses
  %i.o = mul nsw i32 %i.n, 3                      ; 2 uses
  %i.p = icmp sgt i32 %i.n, 10
  %i.q = zext nneg i32 %5 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @__const.qrfBoxLine.azDash, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66   ; 4 uses
  br i1 %i.p, label %.lr.ph.i, label %qrfBoxLine.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.o, %bb.d ] ; 2 uses
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %i.s, i32 noundef 30) #20
  %i.t = add nsw i32 %.07.i, -30                  ; 2 uses
  %i.u = icmp sgt i32 %.07.i, 60
  br i1 %i.u, label %.lr.ph.i, label %qrfBoxLine.exit, !llvm.loop !325

qrfBoxLine.exit:                                  ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ %i.o, %bb.d ], [ %i.t, %.lr.ph.i ]
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %i.s, i32 noundef %.0.lcssa.i) #20
  %i.v = load i32, ptr %i.a, align 8, !tbaa !62
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %qrfBoxLine.exit, %qrfBoxLine.exit25
  %indvars.iv = phi i64 [ %indvars.iv.next, %qrfBoxLine.exit25 ], [ 1, %qrfBoxLine.exit ] ; 2 uses
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %3) #20
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !78
  %i.ab = load i8, ptr %i.k, align 1, !tbaa !79
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.aa, %i.ac                ; 2 uses
  %i.ae = mul nsw i32 %i.ad, 3                    ; 2 uses
  %i.af = icmp sgt i32 %i.ad, 10
  br i1 %i.af, label %.lr.ph.i23, label %qrfBoxLine.exit25

end_hunk_4
begin_hunk_5_@qrfWrapLine:bb.a
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.ap, 12
  %i.bf = and i32 %i.be, 258048
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = shl nuw nsw i32 %i.au, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = and i32 %i.az, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.e, %bb.i, %bb.n
  %.sink.i = phi i32 [ %i.r, %bb.e ], [ %i.bl, %bb.n ], [ %i.ak, %bb.i ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.e ], [ 4, %bb.n ], [ 3, %bb.i ] ; 4 uses
  %i.bm = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.bm, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.q
  %.01935.i = phi i32 [ %.2.i, %bb.q ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.q ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.bn = add nsw i32 %.02034.i, %.01935.i
  %i.bo = sdiv i32 %i.bn, 2                       ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %.sink.i
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.bu = icmp sgt i32 %i.bs, %.sink.i
  br i1 %i.bu, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %i.bo, -1
  br label %bb.q

.thread.i:                                        ; preds = %bb.o
  %i.bw = load i8, ptr %i.bq, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.222.i = phi i32 [ %i.bo, %.preheader.i ], [ %.02034.i, %bb.p ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i ], [ %i.bv, %bb.p ] ; 3 uses
  %i.bx = add nsw i32 %.2.i, -1
  %i.by = icmp slt i32 %.222.i, %i.bx
  br i1 %i.by, label %.preheader.i, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  %i.bz = sext i32 %.2.i to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26
  %i.cd = icmp sgt i32 %i.cc, %.sink.i
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = sext i32 %.222.i to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.t:                                             ; preds = %bb.r
  %i.ch = load i8, ptr %i.ca, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.s, %bb.t
  %.0.i143 = phi i32 [ %.0.i, %bb.t ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.s ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.shrunk.i = phi i8 [ %i.ch, %bb.t ], [ %i.bw, %.thread.i ], [ %i.cg, %bb.s ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ci = add nsw i32 %.0110173, %.225.i          ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, %1
  %i.ck = add i32 %.0115172, -1
  %i.cl = add i32 %i.ck, %.0.i143
  br i1 %i.cj, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ad

bb.u:                                             ; preds = %.lr.ph
  %i.cm = icmp ugt i8 %i.e, 31
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = icmp eq i32 %.0110173, %1
  br i1 %i.cn, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  switch i8 %i.e, label %qrfIsVt100.exit.thread [
    i8 10, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 13, label %bb.y
    i8 9, label %bb.z
    i8 27, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i32 %.0115172, 1                ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %.thread151, label %qrfIsVt100.exit.thread

bb.z:                                             ; preds = %bb.x
  %reass.sub = and i32 %.0110173, -8
  %i.cu = add i32 %reass.sub, 8                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %1
  br i1 %i.cv, label %.thread, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.cx, 91
  br i1 %.not.i, label %.preheader.i140, label %qrfIsVt100.exit.thread

.preheader.i140:                                  ; preds = %bb.aa, %.preheader.i140
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i140 ], [ 2, %bb.aa ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29
  %i.da = and i8 %i.cz, -16
  %or.cond.i = icmp eq i8 %i.da, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i140, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i140, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i140 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv25.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29  ; 2 uses
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
  %6 = trunc i8 %i.dp to i1
  br i1 %6, label %.thread._crit_edge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = zext i8 %i.e to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !29
  %i.dt = and i8 %i.ds, 6
  %i.du = icmp ne i8 %i.dt, 0
  %i.dv = and i8 %i.dp, 6
  %i.dw = icmp eq i8 %i.dv, 0
  %i.dx = xor i1 %i.dw, %i.du
  br i1 %i.dx, label %.preheader158, label %.thread._crit_edge

.preheader158:                                    ; preds = %bb.ag
  %i.dy = sdiv i32 %.0115170, 2                   ; 4 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.0115170, i32 %i.dy)
  %i.ea = add i32 %smin, -1                       ; 3 uses
  %.not132.not254 = icmp sgt i32 %.0115170, 0
  br i1 %.not132.not254, label %.lr.ph256, label %.split.loop.exit237

bb.ah:                                            ; preds = %.lr.ph256
  %.not132.not = icmp sgt i64 %indvars.iv.next, %i.dz
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !329

.lr.ph256:                                        ; preds = %.preheader158, %bb.ah
  %indvars.iv255 = phi i64 [ %indvars.iv.next, %bb.ah ], [ %.pre, %.preheader158 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv255, -1 ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !29
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !29
  %7 = trunc i8 %i.ef to i1
  br i1 %7, label %.split.loop.exit, label %bb.ah, !llvm.loop !329

.split.loop.exit:                                 ; preds = %.lr.ph256
  %i.eg = trunc nsw i64 %indvars.iv255 to i32
  %i.eh = trunc nsw i64 %indvars.iv.next to i32
  %i.ei = icmp sge i32 %i.dy, %i.eg
  br label %.split.loop.exit237

.split.loop.exit237:                              ; preds = %bb.ah, %.preheader158, %.split.loop.exit
  %.0112.in.lcssa = phi i1 [ %i.ei, %.split.loop.exit ], [ true, %.preheader158 ], [ true, %bb.ah ]
  %.0112.lcssa = phi i32 [ %i.eh, %.split.loop.exit ], [ %i.ea, %.preheader158 ], [ %i.ea, %bb.ah ]
  %i.ej = icmp sgt i32 %.0115170, 1
  %or.cond = and i1 %i.ej, %.0112.in.lcssa
  br i1 %or.cond, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.split.loop.exit237, %bb.ai
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.ai ], [ %.pre, %.split.loop.exit237 ] ; 4 uses
  %i.ek = getelementptr i8, ptr %0, i64 %indvars.iv211 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !29
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !29
  %i.eq = and i8 %i.ep, 6
  %i.er = icmp ne i8 %i.eq, 0
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !29  ; 2 uses
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !29
  %i.ew = and i8 %i.ev, 6
  %i.ex = icmp eq i8 %i.ew, 0
  %.not136 = xor i1 %i.er, %i.ex
  %.not137 = icmp slt i8 %i.es, -64
  %or.cond139 = or i1 %.not137, %.not136
  br i1 %or.cond139, label %bb.ai, label %.loopexit.loopexit.split.loop.exit

bb.ai:                                            ; preds = %.lr.ph196
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1
  %.not135.not = icmp sgt i64 %indvars.iv211, %i.dz
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !330

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph196
  %i.ey = trunc nsw i64 %indvars.iv211 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.loopexit.loopexit.split.loop.exit, %.split.loop.exit237
  %.2114 = phi i32 [ %.0112.lcssa, %.split.loop.exit237 ], [ %i.ey, %.loopexit.loopexit.split.loop.exit ], [ %i.ea, %bb.ai ] ; 3 uses
  %.not138 = icmp slt i32 %.2114, %i.dy
  br i1 %.not138, label %.thread._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.ez = sext i32 %.2114 to i64                  ; 2 uses
  %i.fa = tail call fastcc i32 @qrfDisplayWidth(ptr noundef nonnull %0, i64 noundef %i.ez, ptr noundef null)
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %.loopexit, %bb.aj, %bb.ag, %bb.af, %bb.ae
  %.pre-phi = phi i64 [ %.pre, %bb.ae ], [ %.pre, %.loopexit ], [ %i.ez, %bb.aj ], [ %.pre, %bb.ag ], [ %.pre, %bb.af ], [ %.pre, %.thread ]
  %.4119 = phi i32 [ %.0115170, %bb.ae ], [ %.0115170, %.loopexit ], [ %.2114, %bb.aj ], [ %.0115170, %bb.ag ], [ %.0115170, %bb.af ], [ %.0115170, %.thread ]
  %.5 = phi i32 [ %.0110167, %bb.ae ], [ %.0110167, %.loopexit ], [ %i.fa, %bb.aj ], [ %.0110167, %bb.ag ], [ %.0110167, %bb.af ], [ %.0110167, %.thread ]
  store i32 %.4119, ptr %3, align 4, !tbaa !30
  store i32 %.5, ptr %4, align 4, !tbaa !30
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread._crit_edge
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.critedge ], [ %.pre-phi, %.thread._crit_edge ] ; 3 uses
  %i.fb = getelementptr inbounds i8, ptr %0, i64 %indvars.iv214
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !29
  switch i8 %i.fc, label %bb.al [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ak, %bb.ak, %bb.ak
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1
  br label %bb.ak, !llvm.loop !331

bb.al:                                            ; preds = %bb.ak
  %i.fd = trunc nsw i64 %indvars.iv214 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread151, %sqlite3_qrf_wcwidth.exit._crit_edge.thread, %bb.b
  %.sink = phi i32 [ %i.fd, %bb.al ], [ %i.dk, %.thread151 ], [ %.0115.lcssa225, %sqlite3_qrf_wcwidth.exit._crit_edge.thread ], [ 0, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRTrim(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %0) #20 ; 3 uses
  %i.b = tail call ptr @sqlite3_str_value(ptr noundef %0) #20
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = zext nneg i32 %.07 to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = icmp eq i8 %i.g, 32
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %.07, -1
  %i.j = icmp sgt i32 %.07, 1
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %.07, %.lr.ph ]
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
end_hunk_5
begin_hunk_6_@dbEvalRowInfo:bb.a
  tail call void %i.ct(ptr noundef nonnull %i.ai) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %bb.s, %bb.r, %bb.a
  %.not71 = icmp eq ptr %2, null
  br i1 %.not71, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !195
  store ptr %i.cu, ptr %2, align 8, !tbaa !205
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not72 = icmp eq ptr %1, null
  br i1 %.not72, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !196
  store i32 %i.cw, ptr %1, align 4, !tbaa !30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @DbEvalNextCmd(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !128    ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193
  %.fr120 = freeze ptr %i.i                       ; 7 uses
  %i.j = and i32 %2, -5
  %or.cond114 = icmp eq i32 %i.j, 0
  br i1 %or.cond114, label %.lr.ph116, label %.critedge

.lr.ph116:                                        ; preds = %bb.a
  %i.k = icmp eq ptr %.fr120, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  br i1 %i.k, label %.lr.ph116.split.us, label %.lr.ph116.split

.lr.ph116.split.us:                               ; preds = %.lr.ph116, %bb.c
  %i.n = call fastcc i32 @dbEvalStep(ptr noundef %i.e) ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph116.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call fastcc void @dbEvalRowInfo(ptr noundef %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.p = load i32, ptr %i.c, align 4, !tbaa !30   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.us, label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %dbEvalColumnValue.exit.us.us, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.r = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !123
  call void %i.t(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #20, !inline_history !124
  %i.u = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.v = icmp ne i32 %i.u, 8
  %i.w = load i32, ptr %i.b, align 4
  %i.x = icmp slt i32 %i.w, 6
  %or.cond.i105.not111.us = select i1 %i.v, i1 true, i1 %i.x
  %i.y = icmp slt i32 %i.u, 9
  %.not109.us = and i1 %i.y, %or.cond.i105.not111.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not109.us, label %bb.c, label %.thread

bb.c:                                             ; preds = %._crit_edge.split.us.us
  %i.z = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180
  %i.ac = call i32 %i.ab(ptr noundef %1, ptr noundef %i.g, i32 noundef 0) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ad = and i32 %i.ac, -5
  %or.cond.us = icmp eq i32 %i.ad, 0
  br i1 %or.cond.us, label %.lr.ph116.split.us, label %.critedge, !llvm.loop !379

.lr.ph.us:                                        ; preds = %bb.b
  %i.ae = load ptr, ptr %i.d, align 8
  %wide.trip.count128 = zext nneg i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %dbEvalColumnValue.exit.us.us, %.lr.ph.us
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %dbEvalColumnValue.exit.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.af = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1584
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !201
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv125
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !105
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !194
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !190 ; 6 uses
  %i.an = trunc nuw nsw i64 %indvars.iv125 to i32 ; 6 uses
  %i.ao = call i32 @sqlite3_column_type(ptr noundef %i.am, i32 noundef %i.an) #20
  switch i32 %i.ao, label %bb.k [
    i32 4, label %bb.j
    i32 1, label %bb.g
    i32 2, label %bb.f
    i32 5, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 464
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !149
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !168
  %i.av = call ptr %i.ar(ptr noundef %i.au, i32 noundef -1) #20, !inline_history !381
  br label %dbEvalColumnValue.exit.us.us

bb.f:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 424
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !200
  %i.az = call double @sqlite3_column_double(ptr noundef %i.am, i32 noundef %i.an) #20
  %i.ba = call ptr %i.ay(double noundef %i.az) #20, !inline_history !381
  br label %dbEvalColumnValue.exit.us.us

bb.g:                                             ; preds = %bb.d
  %i.bb = call i64 @sqlite3_column_int64(ptr noundef %i.am, i32 noundef %i.an) #20 ; 3 uses
  %i.bc = add i64 %i.bb, 2147483647
  %or.cond.i.us.us = icmp ult i64 %i.bc, 4294967295
  %i.bd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %or.cond.i.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3920
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !199
  %i.bg = call ptr %i.bf(i64 noundef %i.bb) #20, !inline_history !381
  br label %dbEvalColumnValue.exit.us.us

bb.i:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 432
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !150
  %i.bj = trunc nsw i64 %i.bb to i32
  %i.bk = call ptr %i.bi(i32 noundef %i.bj) #20, !inline_history !381
  br label %dbEvalColumnValue.exit.us.us

bb.j:                                             ; preds = %bb.d
  %i.bl = call i32 @sqlite3_column_bytes(ptr noundef %i.am, i32 noundef %i.an) #20
  %i.bm = call ptr @sqlite3_column_blob(ptr noundef %i.am, i32 noundef %i.an) #20 ; 2 uses
  %.not.i.us.us = icmp eq ptr %i.bm, null
  %spec.select.i.us.us = select i1 %.not.i.us.us, i32 0, i32 %i.bl
  %i.bn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 416
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !171
  %i.bq = call ptr %i.bp(ptr noundef %i.bm, i32 noundef %spec.select.i.us.us) #20, !inline_history !381
  br label %dbEvalColumnValue.exit.us.us

bb.k:                                             ; preds = %bb.d
  %i.br = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 464
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !149
  %i.bu = call ptr @sqlite3_column_text(ptr noundef %i.am, i32 noundef %i.an) #20
  %i.bv = call ptr %i.bt(ptr noundef %i.bu, i32 noundef -1) #20, !inline_history !381
  br label %dbEvalColumnValue.exit.us.us

dbEvalColumnValue.exit.us.us:                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.1.i.us.us = phi ptr [ %i.bv, %bb.k ], [ %i.bq, %bb.j ], [ %i.av, %bb.e ], [ %i.ba, %bb.f ], [ %i.bk, %bb.i ], [ %i.bg, %bb.h ]
  %i.bw = call ptr %i.ah(ptr noundef %1, ptr noundef %i.aj, ptr noundef null, ptr noundef %.1.i.us.us, i32 noundef 0) #20 ; 0 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge.split.us.us, label %bb.d, !llvm.loop !380

.lr.ph116.split:                                  ; preds = %.lr.ph116, %bb.aw
  %i.bx = call fastcc i32 @dbEvalStep(ptr noundef %i.e) ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph116.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call fastcc void @dbEvalRowInfo(ptr noundef %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.bz = load i32, ptr %i.c, align 4, !tbaa !30  ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.l
  %i.cb = load ptr, ptr %i.d, align 8             ; 4 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.av
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.av ] ; 8 uses
  %i.cc = load i32, ptr %i.l, align 4, !tbaa !162 ; 2 uses
  %3 = trunc i32 %i.cc to i1
  br i1 %3, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !194
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !190
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32
  %i.ch = call i32 @sqlite3_column_type(ptr noundef %i.cf, i32 noundef %i.cg) #20
  %i.ci = icmp eq i32 %i.ch, 5
  %.pre = load i32, ptr %i.l, align 4, !tbaa !162 ; 2 uses
  br i1 %i.ci, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cj = and i32 %.pre, 2
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 3 uses
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2048
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !382
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 2736
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !107
  %i.cq = call ptr %i.cp(ptr noundef nonnull %.fr120) #20
  %i.cr = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2736
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !107
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !105
  %i.cw = call ptr %i.ct(ptr noundef %i.cv) #20
  %i.cx = call i32 %i.cn(ptr noundef %1, ptr noundef %i.cq, ptr noundef %i.cw, i32 noundef 0) #20 ; 0 uses
  br label %bb.av

bb.q:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 1576
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !202
  %i.da = call ptr %i.cz(ptr noundef %1, ptr noundef nonnull %.fr120, ptr noundef null, i32 noundef 0) #20 ; 4 uses
  %.not94 = icmp eq ptr %i.da, null
  br i1 %.not94, label %bb.av, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = load i32, ptr %i.da, align 8, !tbaa !143
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 248
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !145
  %i.dg = call ptr %i.df(ptr noundef nonnull %i.da) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.081 = phi ptr [ %i.dg, %bb.s ], [ %i.da, %bb.r ] ; 4 uses
  %i.dh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 3984
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !383
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !105
  %i.dm = call i32 %i.dj(ptr noundef %1, ptr noundef %.081, ptr noundef %i.dl) #20
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.do = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1584
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !201
  %i.dr = call ptr %i.dq(ptr noundef %1, ptr noundef nonnull %.fr120, ptr noundef null, ptr noundef %.081, i32 noundef 0) #20 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ds = load i32, ptr %.081, align 8, !tbaa !143
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %bb.w, label %bb.av

bb.w:                                             ; preds = %bb.v
  %i.du = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 256
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !144
  call void %i.dw(ptr noundef nonnull %.081) #20
  br label %bb.av

bb.x:                                             ; preds = %bb.n, %bb.m
  %i.dx = phi i32 [ %.pre, %bb.n ], [ %i.cc, %bb.m ]
  %i.dy = and i32 %i.dx, 2
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %i.dz, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1584
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !201
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !105
  %i.ef = load ptr, ptr %i.m, align 8, !tbaa !194
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !190 ; 6 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  %i.ej = call i32 @sqlite3_column_type(ptr noundef %i.eh, i32 noundef %i.ei) #20
  switch i32 %i.ej, label %bb.af [
    i32 4, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ad
    i32 5, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.y
  %i.ek = call i32 @sqlite3_column_bytes(ptr noundef %i.eh, i32 noundef %i.ei) #20
  %i.el = call ptr @sqlite3_column_blob(ptr noundef %i.eh, i32 noundef %i.ei) #20 ; 2 uses
  %.not.i97 = icmp eq ptr %i.el, null
  %spec.select.i98 = select i1 %.not.i97, i32 0, i32 %i.ek
  %i.em = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 416
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !171
  %i.ep = call ptr %i.eo(ptr noundef %i.el, i32 noundef %spec.select.i98) #20, !inline_history !381
  br label %dbEvalColumnValue.exit99

bb.aa:                                            ; preds = %bb.y
  %i.eq = call i64 @sqlite3_column_int64(ptr noundef %i.eh, i32 noundef %i.ei) #20 ; 3 uses
  %i.er = add i64 %i.eq, 2147483647
  %or.cond.i96 = icmp ult i64 %i.er, 4294967295
  %i.es = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %or.cond.i96, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 432
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !150
  %i.ev = trunc nsw i64 %i.eq to i32
  %i.ew = call ptr %i.eu(i32 noundef %i.ev) #20, !inline_history !381
  br label %dbEvalColumnValue.exit99

bb.ac:                                            ; preds = %bb.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 3920
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !199
  %i.ez = call ptr %i.ey(i64 noundef %i.eq) #20, !inline_history !381
  br label %dbEvalColumnValue.exit99

bb.ad:                                            ; preds = %bb.y
  %i.fa = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 424
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !200
  %i.fd = call double @sqlite3_column_double(ptr noundef %i.eh, i32 noundef %i.ei) #20
  %i.fe = call ptr %i.fc(double noundef %i.fd) #20, !inline_history !381
  br label %dbEvalColumnValue.exit99

bb.ae:                                            ; preds = %bb.y
  %i.ff = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 464
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !149
  %i.fi = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !168
  %i.fl = call ptr %i.fh(ptr noundef %i.fk, i32 noundef -1) #20, !inline_history !381
  br label %dbEvalColumnValue.exit99

bb.af:                                            ; preds = %bb.y
  %i.fm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 464
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !149
  %i.fp = call ptr @sqlite3_column_text(ptr noundef %i.eh, i32 noundef %i.ei) #20
  %i.fq = call ptr %i.fo(ptr noundef %i.fp, i32 noundef -1) #20, !inline_history !381
  br label %dbEvalColumnValue.exit99

dbEvalColumnValue.exit99:                         ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.1.i95 = phi ptr [ %i.fq, %bb.af ], [ %i.ep, %bb.z ], [ %i.fl, %bb.ae ], [ %i.fe, %bb.ad ], [ %i.ew, %bb.ab ], [ %i.ez, %bb.ac ]
  %i.fr = call ptr %i.ec(ptr noundef %1, ptr noundef nonnull %.fr120, ptr noundef %i.ee, ptr noundef %.1.i95, i32 noundef 0) #20 ; 0 uses
  br label %bb.av

bb.ag:                                            ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ea, i64 1576
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !202
  %i.fu = call ptr %i.ft(ptr noundef %1, ptr noundef nonnull %.fr120, ptr noundef null, i32 noundef 0) #20 ; 4 uses
  %.not93 = icmp eq ptr %i.fu, null
  br i1 %.not93, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4040
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !203
  %i.fy = call ptr %i.fx() #20
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.fz = load i32, ptr %i.fu, align 8, !tbaa !143
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 248
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !145
  %i.ge = call ptr %i.gd(ptr noundef nonnull %i.fu) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %.080 = phi ptr [ %i.ge, %bb.aj ], [ %i.fu, %bb.ai ], [ %i.fy, %bb.ah ] ; 4 uses
  %i.gf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 3968
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !204
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !105
end_hunk_6
