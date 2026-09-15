Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !78
  %i.oz = add nsw i32 %i.oy, %.06575.i.i          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !242

._crit_edge.i.i:                                  ; preds = %scalar.ph, %bb.cx
  %.065.lcssa.i.i = phi i32 [ 0, %bb.cx ], [ %i.oz, %scalar.ph ] ; 3 uses
  %i.pa = sext i16 %i.mw to i32                   ; 2 uses
  %i.pb = add nsw i32 %.065.lcssa.i.i, %.067.i.i
  %.not.i322.i = icmp sgt i32 %i.pb, %i.pa
  br i1 %.not.i322.i, label %bb.cy, label %qrfRestrictScreenWidth.exit.i

bb.cy:                                            ; preds = %._crit_edge.i.i
  store i8 0, ptr %i.mu, align 1, !tbaa !79
  br i1 %i.mz, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.pc = add nsw i32 %i.na, -1
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.pd = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.pe = load i8, ptr %i.pd, align 4, !tbaa !80
  %i.pf = icmp eq i8 %i.pe, 1
  %spec.select72.v.i.i = select i1 %i.pf, i32 -1, i32 1
  %spec.select72.i.i = add nsw i32 %spec.select72.v.i.i, %i.na
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.168.i.i = phi i32 [ %i.pc, %bb.cz ], [ %spec.select72.i.i, %bb.da ]
  %i.pg = sub nsw i32 %i.pa, %.168.i.i            ; 4 uses
  %i.ph = icmp sle i32 %.065.lcssa.i.i, %i.pg
  %brmerge.i = or i1 %i.nh, %i.ph
  br i1 %brmerge.i, label %qrfRestrictScreenWidth.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %bb.db
  %i.pi = load ptr, ptr %i.eo, align 8, !tbaa !64 ; 2 uses
  %wide.trip.count90.i.i = zext nneg i32 %i.na to i64
  %.promoted78 = load i8, ptr %i.gu, align 4
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.di, %.preheader.lr.ph.split.us.i.i
  %i.pj = phi i8 [ %.promoted78, %.preheader.lr.ph.split.us.i.i ], [ 1, %bb.di ]
  %.16684.us.i.i = phi i32 [ %.065.lcssa.i.i, %.preheader.lr.ph.split.us.i.i ], [ %i.qe, %bb.di ] ; 3 uses
  br label %bb.dc

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
  %i.sq = and i32 %.0263.i, 1
  %lcmp.mod207.not = icmp eq i32 %i.sq, 0
  %lcmp.mod208 = trunc i32 %.0263.i to i1
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.i9, %.lr.ph395.i
  %.4393.i = phi i64 [ 0, %.lr.ph395.i ], [ %i.wy, %.loopexit.i9 ] ; 5 uses
  %i.sr = load ptr, ptr %i.rz, align 8, !tbaa !47
  %i.ss = call i32 @sqlite3_str_errcode(ptr noundef %i.sr) #20
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dx
  br i1 %i.sb, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sp, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.eg
  %.0256.i.us = phi i32 [ %i.uj, %bb.eg ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.su = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.su, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.lr.ph386.i.us

.lr.ph386.i.us:                                   ; preds = %.lr.ph386.i.preheader.us, %bb.ef
  %.0257384.i.us = phi i32 [ %spec.select.i10.us, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ]
  %.1274383.i.us = phi i64 [ %i.uh, %bb.ef ], [ 0, %.lr.ph386.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 0, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i32 0, ptr %i.h, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 0, ptr %i.i, align 4, !tbaa !30
  %i.sv = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.1274383.i.us ; 9 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !277
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !78
  call fastcc void @qrfWrapLine(ptr noundef %i.sw, i32 noundef %i.sy, i32 noundef %i.rr, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.sz = load i32, ptr %i.sx, align 8, !tbaa !78
  %i.ta = load i32, ptr %i.h, align 4, !tbaa !30
  %i.tb = sub nsw i32 %i.sz, %i.ta                ; 4 uses
  %i.tc = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 7 uses
  %i.td = load i32, ptr %i.g, align 4, !tbaa !30  ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.tf = load i8, ptr %i.te, align 8, !tbaa !73
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
  %i.ti = load ptr, ptr %i.sv, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.ti, i32 noundef %i.td)
  %i.tj = sub nsw i32 %i.tb, %i.th
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tj, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

bb.dz:                                            ; preds = %.lr.ph386.i.us
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 18
  %i.tl = load i8, ptr %i.tk, align 2, !tbaa !278
  %.not.i324.i.us = icmp eq i8 %i.tl, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.dz, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #20
  %i.tm = load ptr, ptr %i.sv, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tm, i32 noundef %i.td)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.dz, %.lr.ph386.i.us
  %i.tn = load ptr, ptr %i.sv, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.tc, ptr noundef %i.tn, i32 noundef %i.td)
  call void @sqlite3_str_appendchar(ptr noundef %i.tc, i32 noundef %i.tb, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.dy
  %i.to = load i32, ptr %i.i, align 4, !tbaa !30
  %i.tp = load ptr, ptr %i.sv, align 8, !tbaa !277
  %i.tq = sext i32 %i.to to i64
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 %i.tq ; 2 uses
  store ptr %i.tr, ptr %i.sv, align 8, !tbaa !277
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !29
  %.not303.i.us = icmp eq i8 %i.ts, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257384.i.us, i32 1 ; 2 uses
  %i.tt = icmp slt i64 %.1274383.i.us, %i.sd
  br i1 %i.tt, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tu = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 3 uses
  %i.tv = call i32 @sqlite3_str_length(ptr noundef %i.tu) #20 ; 3 uses
  %i.tw = call ptr @sqlite3_str_value(ptr noundef %i.tu) #20
  %i.tx = icmp sgt i32 %i.tv, 0
  br i1 %i.tx, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.eb, %bb.ec
  %.07.i.i.us = phi i32 [ %i.ud, %bb.ec ], [ %i.tv, %bb.eb ] ; 4 uses
  %i.ty = zext nneg i32 %.07.i.i.us to i64
  %i.tz = getelementptr i8, ptr %i.tw, i64 %i.ty
  %i.ua = getelementptr i8, ptr %i.tz, i64 -1
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !29
  %i.uc = icmp eq i8 %i.ub, 32
  br i1 %i.uc, label %bb.ec, label %qrfRTrim.exit.i.us

bb.ec:                                            ; preds = %.lr.ph.i325.i.us
  %i.ud = add nsw i32 %.07.i.i.us, -1
  %i.ue = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.ue, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !5

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.ec, %bb.eb
  %.0.lcssa.i.i.us = phi i32 [ %i.tv, %bb.eb ], [ 0, %bb.ec ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tu, i32 noundef %.0.lcssa.i.i.us) #20
  br label %bb.ed

bb.ed:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ea
  %i.uf = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.uf, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.ef

bb.ee:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.ug = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ug, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.uh = add nuw nsw i64 %.1274383.i.us, 1       ; 2 uses
  %exitcond402.not.i.us = icmp eq i64 %i.uh, %i.sa
  br i1 %exitcond402.not.i.us, label %._crit_edge387.i.us, label %.lr.ph386.i.us, !llvm.loop !244

._crit_edge387.i.us:                              ; preds = %bb.ef
  %i.ui = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.ui, label %.critedge314.i, label %bb.eg

bb.eg:                                            ; preds = %._crit_edge387.i.us
  %i.uj = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.uk = load i32, ptr %i.se, align 8, !tbaa !268
  %i.ul = icmp slt i32 %i.uj, %i.uk
  br i1 %i.ul, label %.lr.ph386.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !245

.lr.ph386.i.us.unreachabledefault:                ; preds = %.lr.ph386.i.us
  unreachable

default.unreachable:                              ; preds = %bb.ei
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.eg
  %i.um = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.um, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.un = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.un, ptr noundef nonnull %.2266.i, i32 noundef %i.rg) #20
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.vf, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter210 = phi i64 [ %niter210.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.uo = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.up = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !66 ; 2 uses
  %i.ur = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.0273381.i ; 2 uses
  %i.us = icmp eq ptr %i.uq, null
  %spec.store.select359.i = select i1 %i.us, ptr @.str.6, ptr %i.uq
  store ptr %spec.store.select359.i, ptr %i.ur, align 8
  %i.ut = getelementptr inbounds i8, ptr %i.sm, i64 %i.uo
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !29
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 18
  store i8 %i.uu, ptr %i.uv, align 2, !tbaa !278
  %i.uw = or disjoint i64 %.0273381.i, 1          ; 2 uses
  %i.ux = add nsw i64 %i.uw, %.4393.i             ; 2 uses
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.ux
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !66 ; 2 uses
  %i.va = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %i.uw ; 2 uses
  %i.vb = icmp eq ptr %i.uz, null
  %spec.store.select359.i.1 = select i1 %i.vb, ptr @.str.6, ptr %i.uz
  store ptr %spec.store.select359.i.1, ptr %i.va, align 8
  %i.vc = getelementptr inbounds i8, ptr %i.sm, i64 %i.ux
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !29
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 18
  store i8 %i.vd, ptr %i.ve, align 2, !tbaa !278
  %i.vf = add nuw nsw i64 %.0273381.i, 2          ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %.lr.ph386.i.preheader.us.preheader.unr-lcssa, label %.lr.ph382.i, !llvm.loop !246

.lr.ph386.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph382.i
  br i1 %lcmp.mod207.not, label %.lr.ph386.i.preheader.us.preheader, label %.lr.ph382.i.epil.preheader
end_hunk_0
begin_hunk_1_@sqlite3_format_query_result:bb.a

.lr.ph390.i:                                      ; preds = %bb.eq, %.critedge10.i.split.us
  %.2275389.i = phi i64 [ %i.ww, %bb.eq ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vo = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.2275389.i ; 8 uses
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !277
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !29
  %i.vr = icmp eq i8 %i.vq, 0
  br i1 %i.vr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph390.i
  %i.vs = load ptr, ptr %i.rz, align 8, !tbaa !47
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !78
  call void @sqlite3_str_appendchar(ptr noundef %i.vs, i32 noundef %i.vu, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

bb.ei:                                            ; preds = %.lr.ph390.i
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !78 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vw, i32 3) ; 4 uses
  store ptr @.str.29, ptr %i.vo, align 8, !tbaa !277
  %i.vx = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 7 uses
  %i.vy = sub nsw i32 %i.vw, %spec.select315.i    ; 4 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.wa = load i8, ptr %i.vz, align 8, !tbaa !73
  %i.wb = and i8 %i.wa, 3
  switch i8 %i.wb, label %default.unreachable [
    i8 0, label %bb.ej
    i8 2, label %bb.ek
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vo, i64 18
  %i.wd = load i8, ptr %i.wc, align 2, !tbaa !278
  %.not.i328.i = icmp eq i8 %i.wd, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.ek:                                            ; preds = %bb.ei
  %i.we = lshr i32 %i.vy, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vx, i32 noundef %i.we, i8 noundef signext 32) #20
  %i.wf = load ptr, ptr %i.vo, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vx, ptr noundef %i.wf, i32 noundef %spec.select315.i)
  %i.wg = sub nuw nsw i32 %i.vy, %i.we
  call void @sqlite3_str_appendchar(ptr noundef %i.vx, i32 noundef %i.wg, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.ej, %bb.ei
  call void @sqlite3_str_appendchar(ptr noundef %i.vx, i32 noundef %i.vy, i8 noundef signext 32) #20
  %i.wh = load ptr, ptr %i.vo, align 8, !tbaa !277
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vx, ptr noundef %i.wh, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.ej, %bb.ei
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vx, ptr noundef nonnull @.str.29, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vx, i32 noundef %i.vy, i8 noundef signext 32) #20
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.ek, %bb.eh
  %i.wi = icmp slt i64 %.2275389.i, %i.sd
  br i1 %i.wi, label %bb.el, label %bb.em

bb.el:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wj = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wj, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.eq

bb.em:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wk = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 3 uses
  %i.wl = call i32 @sqlite3_str_length(ptr noundef %i.wk) #20 ; 3 uses
  %i.wm = call ptr @sqlite3_str_value(ptr noundef %i.wk) #20
  %i.wn = icmp sgt i32 %i.wl, 0
  br i1 %i.wn, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i

.lr.ph.i332.i:                                    ; preds = %bb.en, %bb.eo
  %.07.i333.i = phi i32 [ %i.wt, %bb.eo ], [ %i.wl, %bb.en ] ; 4 uses
  %i.wo = zext nneg i32 %.07.i333.i to i64
  %i.wp = getelementptr i8, ptr %i.wm, i64 %i.wo
  %i.wq = getelementptr i8, ptr %i.wp, i64 -1
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !29
  %i.ws = icmp eq i8 %i.wr, 32
  br i1 %i.ws, label %bb.eo, label %qrfRTrim.exit334.i

bb.eo:                                            ; preds = %.lr.ph.i332.i
  %i.wt = add nsw i32 %.07.i333.i, -1
  %i.wu = icmp sgt i32 %.07.i333.i, 1
  br i1 %i.wu, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !5

qrfRTrim.exit334.i:                               ; preds = %bb.eo, %.lr.ph.i332.i, %bb.en
  %.0.lcssa.i331.i = phi i32 [ %i.wl, %bb.en ], [ 0, %bb.eo ], [ %.07.i333.i, %.lr.ph.i332.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.wk, i32 noundef %.0.lcssa.i331.i) #20
  br label %bb.ep

bb.ep:                                            ; preds = %qrfRTrim.exit334.i, %bb.em
  %i.wv = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.wv, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.el
  %i.ww = add nuw nsw i64 %.2275389.i, 1          ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.ww, %i.sa
  br i1 %exitcond403.not.i, label %.critedge314.i, label %.lr.ph390.i, !llvm.loop !247

.critedge314.i:                                   ; preds = %._crit_edge387.i.us, %bb.eq, %.preheader360.i.split
  %i.wx = icmp eq i64 %.4393.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.wx, i1 true, i1 %i.rp
  %i.wy = add nsw i64 %.4393.i, %i.sa             ; 2 uses
  %i.wz = icmp slt i64 %i.wy, %i.rx               ; 2 uses
  %or.cond452.i = select i1 %or.cond14.i, i1 %i.wz, i1 false
  br i1 %or.cond452.i, label %bb.er, label %.loopexit.i9

bb.er:                                            ; preds = %.critedge314.i
  %i.xa = load i8, ptr %i.er, align 2
  %i.xb = icmp eq i8 %i.xa, 2
  %or.cond53 = select i1 %i.wx, i1 %i.xb, i1 false ; 5 uses
  %brmerge.not = select i1 %or.cond53, i1 %i.so, i1 false
  br i1 %brmerge.not, label %.lr.ph.i336.i, label %qrfLoadAlignment.exit.i

.lr.ph.i336.i:                                    ; preds = %bb.er
  %i.xc = load i8, ptr %i.sf, align 1, !tbaa !83  ; 2 uses
  %i.xd = load i32, ptr %i.sg, align 4, !tbaa !84
  %i.xe = sext i32 %i.xd to i64
  %i.xf = and i8 %i.xc, 12                        ; 2 uses
  %i.xg = or disjoint i8 %i.xf, 3
  %i.xh = load i32, ptr %i.sh, align 8
  %i.xi = sext i32 %i.xh to i64
  %i.xj = load ptr, ptr %i.si, align 8
  %i.xk = load ptr, ptr %i.sj, align 8
  br label %bb.es

bb.es:                                            ; preds = %bb.ex, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xw, %bb.ex ] ; 6 uses
  %i.xl = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.01.i.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 2 uses
  store i8 %i.xc, ptr %i.xm, align 8, !tbaa !73
  %i.xn = icmp slt i64 %.01.i.i, %i.xe
  br i1 %i.xn, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 %.01.i.i
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !29
  %i.xq = and i8 %i.xp, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xq, 0
  br i1 %.not.i338.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xr = or disjoint i8 %i.xq, %i.xf
  br label %.sink.split.i.i

bb.ev:                                            ; preds = %bb.es
  %i.xs = icmp slt i64 %.01.i.i, %i.xi
  br i1 %i.xs, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.xj, i64 %.01.i.i
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !76
  %i.xv = icmp slt i16 %i.xu, 0
  br i1 %i.xv, label %.sink.split.i.i, label %bb.ex

.sink.split.i.i:                                  ; preds = %bb.ew, %bb.eu
  %.sink.i.i = phi i8 [ %i.xr, %bb.eu ], [ %i.xg, %bb.ew ]
  store i8 %.sink.i.i, ptr %i.xm, align 8, !tbaa !73
  br label %bb.ex

bb.ex:                                            ; preds = %.sink.split.i.i, %bb.ew, %bb.ev, %bb.et
  %i.xw = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xw, %i.sn
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.es, !llvm.loop !6

qrfLoadAlignment.exit.i:                          ; preds = %bb.ex, %bb.er
  %i.xx = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.xx, label %.loopexit.i9 [
    i8 19, label %bb.ey
    i8 1, label %bb.fa
    i8 13, label %bb.fe
    i8 2, label %bb.fg
  ]

bb.ey:                                            ; preds = %qrfLoadAlignment.exit.i
  %or.cond18.i = select i1 %or.cond53, i1 true, i1 %i.rp
  br i1 %or.cond18.i, label %bb.ez, label %.loopexit.i9

bb.ez:                                            ; preds = %bb.ey
  %i.xy = load ptr, ptr %i.rz, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.xy, ptr noundef %3, i8 noundef signext 43)
  br label %.loopexit.i9

bb.fa:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.xz = load ptr, ptr %i.rz, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xz, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1)
  br label %.loopexit.i9

bb.fc:                                            ; preds = %bb.fa
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ya = load ptr, ptr %i.rz, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.ya, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0)
  br label %.loopexit.i9

bb.fe:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.ff, label %.loopexit.i9

bb.ff:                                            ; preds = %bb.fe
  %i.yb = load ptr, ptr %i.rz, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.yb, ptr noundef %3, i8 noundef signext 124)
  br label %.loopexit.i9

bb.fg:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %.preheader.i, label %bb.fl

.preheader.i:                                     ; preds = %bb.fg
  br i1 %i.sb, label %.lr.ph392.i, label %.loopexit.i9

.lr.ph392.i:                                      ; preds = %.preheader.i, %bb.fk
  %.3276391.i = phi i64 [ %i.yt, %bb.fk ], [ 0, %.preheader.i ] ; 3 uses
  %i.yc = load ptr, ptr %i.rz, align 8, !tbaa !47
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.3276391.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !78
  call void @sqlite3_str_appendchar(ptr noundef %i.yc, i32 noundef %i.yf, i8 noundef signext 45) #20
  %i.yg = icmp slt i64 %.3276391.i, %i.sd
  %i.yh = load ptr, ptr %i.rz, align 8, !tbaa !47 ; 4 uses
  br i1 %i.yg, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.lr.ph392.i
  call void @sqlite3_str_append(ptr noundef %i.yh, ptr noundef nonnull %.3.i, i32 noundef %i.rk) #20
  br label %bb.fk

bb.fi:                                            ; preds = %.lr.ph392.i
  %i.yi = call i32 @sqlite3_str_length(ptr noundef %i.yh) #20 ; 3 uses
  %i.yj = call ptr @sqlite3_str_value(ptr noundef %i.yh) #20
  %i.yk = icmp sgt i32 %i.yi, 0
  br i1 %i.yk, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i

.lr.ph.i340.i:                                    ; preds = %bb.fi, %bb.fj
  %.07.i341.i = phi i32 [ %i.yq, %bb.fj ], [ %i.yi, %bb.fi ] ; 4 uses
  %i.yl = zext nneg i32 %.07.i341.i to i64
  %i.ym = getelementptr i8, ptr %i.yj, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.ym, i64 -1
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !29
  %i.yp = icmp eq i8 %i.yo, 32
  br i1 %i.yp, label %bb.fj, label %qrfRTrim.exit342.i

bb.fj:                                            ; preds = %.lr.ph.i340.i
  %i.yq = add nsw i32 %.07.i341.i, -1
  %i.yr = icmp sgt i32 %.07.i341.i, 1
  br i1 %i.yr, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i, !llvm.loop !5

qrfRTrim.exit342.i:                               ; preds = %bb.fj, %.lr.ph.i340.i, %bb.fi
  %.0.lcssa.i339.i = phi i32 [ %i.yi, %bb.fi ], [ 0, %bb.fj ], [ %.07.i341.i, %.lr.ph.i340.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.yh, i32 noundef %.0.lcssa.i339.i) #20
  %i.ys = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ys, ptr noundef nonnull %.2269.i, i32 noundef %i.ri) #20
  br label %bb.fk

bb.fk:                                            ; preds = %qrfRTrim.exit342.i, %bb.fh
  %i.yt = add nuw nsw i64 %.3276391.i, 1          ; 2 uses
  %exitcond404.not.i = icmp eq i64 %i.yt, %i.sa
  br i1 %exitcond404.not.i, label %.loopexit.i9, label %.lr.ph392.i, !llvm.loop !248

bb.fl:                                            ; preds = %bb.fg
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yu = load ptr, ptr %i.rz, align 8, !tbaa !47
  call fastcc void @qrfRTrim(ptr noundef %i.yu)
  %i.yv = load ptr, ptr %i.rz, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.yv, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %.loopexit.i9

.loopexit.i9:                                     ; preds = %bb.fk, %bb.fm, %bb.fl, %.preheader.i, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.ez, %bb.ey, %qrfLoadAlignment.exit.i, %.critedge314.i
  br i1 %i.wz, label %bb.dx, label %.critedge8.i, !llvm.loop !249

.critedge8.i:                                     ; preds = %.loopexit.i9, %bb.dx, %bb.dw
  %i.yw = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.yx = load i8, ptr %i.yw, align 4, !tbaa !80
  %.not298.i = icmp eq i8 %i.yx, 1
  br i1 %.not298.i, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %.critedge8.i
  %i.yy = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.yy, label %bb.fq [
    i8 1, label %bb.fo
    i8 19, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.yz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.za, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0)
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.zb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.zc, ptr noundef %3, i8 noundef signext 43)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn, %.critedge8.i
  %i.zd = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !85
  %.not.i343.i = icmp eq ptr %i.ze, null
  br i1 %.not.i343.i, label %qrfWrite.exit.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.zf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !47
  %i.zh = call i32 @sqlite3_str_length(ptr noundef %i.zg) #20 ; 3 uses
  %i.zi = icmp sgt i32 %i.zh, 0
  br i1 %i.zi, label %bb.fs, label %qrfWrite.exit.i

bb.fs:                                            ; preds = %bb.fr
  %i.zj = load ptr, ptr %i.zd, align 8, !tbaa !85
  %i.zk = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !86
  %i.zm = load ptr, ptr %i.zf, align 8, !tbaa !47
  %i.zn = call ptr @sqlite3_str_value(ptr noundef %i.zm) #20
  %i.zo = zext nneg i32 %i.zh to i64
  %i.zp = call i32 %i.zj(ptr noundef %i.zl, ptr noundef %i.zn, i64 noundef %i.zo) #20, !inline_history !250 ; 2 uses
  %i.zq = load ptr, ptr %i.zf, align 8, !tbaa !47
  call void @sqlite3_str_reset(ptr noundef %i.zq) #20
  %.not11.i.i = icmp eq i32 %i.zp, 0
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zp, ptr noundef nonnull @.str.69, i32 noundef %i.zh)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %.pre91 = load ptr, ptr %i.gr, align 8, !tbaa !71 ; 2 uses
  br i1 %i.ry, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zt, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %.09.i346.i
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zs) #20
  %i.zt = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.zt, %i.rx
  br i1 %exitcond.not, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !4

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre91) #20
  %i.zu = load ptr, ptr %i.gt, align 8, !tbaa !72
  call void @sqlite3_free(ptr noundef %i.zu) #20
  %i.zv = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zv) #20
  %i.zw = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zw) #20
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bv, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

bb.fu:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.fv:                                            ; preds = %qrfInitialize.exit
  %i.zx = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.zy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !265
  %i.aaa = call i32 @sqlite3_prepare_v2(ptr noundef %i.zz, ptr noundef nonnull @.str.84, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #20 ; 2 uses
  %.not.i13 = icmp eq i32 %i.aaa, 0
  br i1 %.not.i13, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aab = load ptr, ptr %i.zy, align 8, !tbaa !265
  %i.aac = call ptr @sqlite3_errmsg(ptr noundef %i.aab) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aaa, ptr noundef nonnull @.str.85, ptr noundef %i.aac)
  %i.aad = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.aae = call i32 @sqlite3_finalize(ptr noundef %i.aad) #20 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.fx:                                            ; preds = %bb.fv
  %i.aaf = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.aag = call i32 @sqlite3_bind_pointer(ptr noundef %i.aaf, i32 noundef 1, ptr noundef %i.zx, ptr noundef nonnull @.str.86, ptr noundef null) #20 ; 0 uses
  %i.aah = load ptr, ptr %i.d, align 8, !tbaa !87
  store ptr %i.aah, ptr %4, align 8, !tbaa !46
  %i.aai = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 10, ptr %i.aai, align 4, !tbaa !49
  call fastcc void @qrfExplain(ptr noundef nonnull %4)
  %i.aaj = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.aak = call i32 @sqlite3_finalize(ptr noundef %i.aaj) #20 ; 0 uses
  store ptr %i.zx, ptr %4, align 8, !tbaa !46
  br label %qrfScanStatusVm.exit

qrfScanStatusVm.exit:                             ; preds = %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

bb.fy:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.87)
  br label %.critedge

bb.fz:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aal = call i32 @sqlite3_step(ptr noundef nonnull %0) #20
  %i.aam = icmp eq i32 %i.aal, 100
  br i1 %i.aam, label %bb.ga, label %.critedge

bb.ga:                                            ; preds = %bb.fz
  %i.aan = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.aan, label %bb.ij [
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
  %i.aao = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aap = icmp eq i64 %i.aao, 0
  %i.aaq = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %i.aap, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.aaq, ptr noundef nonnull @.str.88, i32 noundef 2) #20
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.aaq, ptr noundef nonnull @.str.89, i32 noundef 4) #20
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit

bb.gf:                                            ; preds = %bb.ga
  %i.aar = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aas = icmp eq i64 %i.aar, 0
  %i.aat = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %i.aas, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  call void @sqlite3_str_append(ptr noundef %i.aat, ptr noundef nonnull @.str.90, i32 noundef 1) #20
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  call void @sqlite3_str_append(ptr noundef %i.aat, ptr noundef nonnull @.str.91, i32 noundef 3) #20
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit

bb.gj:                                            ; preds = %bb.ga
  %i.aau = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aav = icmp eq i64 %i.aau, 0
  %i.aaw = load i8, ptr %i.ea, align 2
  %i.aax = icmp eq i8 %i.aaw, 2
  %or.cond56 = select i1 %i.aav, i1 %i.aax, i1 false
  br i1 %or.cond56, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.aay = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aay, ptr noundef nonnull @.str.92, i32 noundef 4) #20
  %i.aaz = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aba = icmp sgt i32 %i.aaz, 0
  br i1 %i.aba, label %.lr.ph258.i, label %._crit_edge259.i

.lr.ph258.i:                                      ; preds = %bb.gk, %.lr.ph258.i
  %.0193256.i = phi i32 [ %i.abf, %.lr.ph258.i ], [ 0, %bb.gk ] ; 2 uses
  %i.abb = load ptr, ptr %4, align 8, !tbaa !46
  %i.abc = call ptr @sqlite3_column_name(ptr noundef %i.abb, i32 noundef %.0193256.i) #20
  %i.abd = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abd, ptr noundef nonnull @.str.93, i32 noundef 5) #20
  %i.abe = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfEncodeText(ptr noundef nonnull %4, ptr noundef %i.abe, ptr noundef %i.abc)
  %i.abf = add nuw nsw i32 %.0193256.i, 1         ; 2 uses
  %i.abg = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.abh = icmp slt i32 %i.abf, %i.abg
  br i1 %i.abh, label %.lr.ph258.i, label %._crit_edge259.i, !llvm.loop !251

._crit_edge259.i:                                 ; preds = %.lr.ph258.i, %bb.gk
  %i.abi = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abi, ptr noundef nonnull @.str.94, i32 noundef 7) #20
  br label %bb.gl

bb.gl:                                            ; preds = %._crit_edge259.i, %bb.gj
  %i.abj = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abj, ptr noundef nonnull @.str.92, i32 noundef 4) #20
  %i.abk = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %.lr.ph262.i, label %._crit_edge263.i

.lr.ph262.i:                                      ; preds = %bb.gl, %.lr.ph262.i
  %.1194260.i = phi i32 [ %i.abo, %.lr.ph262.i ], [ 0, %bb.gl ] ; 2 uses
  %i.abm = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abm, ptr noundef nonnull @.str.95, i32 noundef 5) #20
  %i.abn = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %i.abn, i32 noundef %.1194260.i)
  %i.abo = add nuw nsw i32 %.1194260.i, 1         ; 2 uses
  %i.abp = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.abq = icmp slt i32 %i.abo, %i.abp
  br i1 %i.abq, label %.lr.ph262.i, label %._crit_edge263.i, !llvm.loop !252

._crit_edge263.i:                                 ; preds = %.lr.ph262.i, %bb.gl
  %i.abr = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abr, ptr noundef nonnull @.str.94, i32 noundef 7) #20
  %i.abs = load ptr, ptr %i.dw, align 8, !tbaa !85
  %.not.i.i31 = icmp eq ptr %i.abs, null
  br i1 %.not.i.i31, label %qrfOneSimpleRow.exit, label %bb.gm

bb.gm:                                            ; preds = %._crit_edge263.i
  %i.abt = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.abu = call i32 @sqlite3_str_length(ptr noundef %i.abt) #20 ; 3 uses
  %i.abv = icmp sgt i32 %i.abu, 0
  br i1 %i.abv, label %bb.gn, label %qrfOneSimpleRow.exit

bb.gn:                                            ; preds = %bb.gm
  %i.abw = load ptr, ptr %i.dw, align 8, !tbaa !85
  %i.abx = load ptr, ptr %i.dx, align 8, !tbaa !86
  %i.aby = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.abz = call ptr @sqlite3_str_value(ptr noundef %i.aby) #20
  %i.aca = zext nneg i32 %i.abu to i64
  %i.acb = call i32 %i.abw(ptr noundef %i.abx, ptr noundef %i.abz, i64 noundef %i.aca) #20, !inline_history !253 ; 2 uses
  %i.acc = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_reset(ptr noundef %i.acc) #20
  %.not11.i.i32 = icmp eq i32 %i.acb, 0
  br i1 %.not11.i.i32, label %qrfOneSimpleRow.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.acb, ptr noundef nonnull @.str.69, i32 noundef %i.abu)
  br label %qrfOneSimpleRow.exit

bb.gp:                                            ; preds = %bb.ga
  %i.acd = load i32, ptr %i.dy, align 8, !tbaa !279 ; 2 uses
  %i.ace = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.acf = call i32 @sqlite3_str_length(ptr noundef %i.ace) #20
  %i.acg = load i32, ptr %i.dl, align 8, !tbaa !29 ; 3 uses
  %i.ach = icmp ne i32 %i.acg, 0
  %.not201.i = icmp ult i32 %i.acg, %i.acd
  %or.cond.i24 = select i1 %i.ach, i1 %.not201.i, i1 false
  br i1 %or.cond.i24, label %bb.ha, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.not202.i = icmp eq i32 %i.acg, 0
  br i1 %.not202.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aci = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aci, ptr noundef nonnull @.str.96, i32 noundef 2) #20
  store i32 0, ptr %i.dl, align 8, !tbaa !29
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.acj = load ptr, ptr %i.dz, align 8, !tbaa !271 ; 6 uses
  %i.ack = icmp eq ptr %i.acj, null
  br i1 %i.ack, label %qrf_need_quote.exit.thread.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.acl = load i8, ptr %i.acj, align 1, !tbaa !29 ; 3 uses
  %i.acm = zext i8 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !29
  %i.acp = and i8 %i.aco, 4
  %.not.i209.i = icmp eq i8 %i.acp, 0
  br i1 %.not.i209.i, label %qrf_need_quote.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.gt
  %.not1316.i.i = icmp eq i8 %i.acl, 0
  br i1 %.not1316.i.i, label %qrf_need_quote.exit.i, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.preheader.i.i, %bb.gu
  %indvars.iv.i.i26 = phi i64 [ %indvars.iv.next.i.i27, %bb.gu ], [ 0, %.preheader.i.i ]
  %i.acq = phi i8 [ %i.acw, %bb.gu ], [ %i.acl, %.preheader.i.i ]
  %i.acr = zext i8 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !29
  %i.acu = and i8 %i.act, 6
  %.not14.i.i = icmp eq i8 %i.acu, 0
  br i1 %.not14.i.i, label %qrf_need_quote.exit.thread.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i25
  %indvars.iv.next.i.i27 = add nuw nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acj, i64 %indvars.iv.next.i.i27
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !29 ; 2 uses
  %.not13.i.i = icmp eq i8 %i.acw, 0
  br i1 %.not13.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i25, !llvm.loop !254

._crit_edge.loopexit.i.i:                         ; preds = %bb.gu
  %i.acx = trunc nuw i64 %indvars.iv.next.i.i27 to i32
  br label %qrf_need_quote.exit.i

qrf_need_quote.exit.i:                            ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.0.lcssa.i.i28 = phi i32 [ 0, %.preheader.i.i ], [ %i.acx, %._crit_edge.loopexit.i.i ]
  %i.acy = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.acj, i32 noundef %.0.lcssa.i.i28) #20
  %.not241.i = icmp eq i32 %i.acy, 0
  %.pre292.i = load ptr, ptr %i.dz, align 8, !tbaa !271 ; 2 uses
  br i1 %.not241.i, label %bb.gv, label %qrf_need_quote.exit.thread.i

qrf_need_quote.exit.thread.i:                     ; preds = %.lr.ph.i.i25, %qrf_need_quote.exit.i, %bb.gt, %bb.gs
  %i.acz = phi ptr [ %.pre292.i, %qrf_need_quote.exit.i ], [ %i.acj, %bb.gt ], [ null, %bb.gs ], [ %i.acj, %.lr.ph.i.i25 ]
  %i.ada = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.ada, ptr noundef nonnull @.str.97, ptr noundef %i.acz) #20
  br label %bb.gw

bb.gv:                                            ; preds = %qrf_need_quote.exit.i
  %i.adb = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.adb, ptr noundef nonnull @.str.98, ptr noundef %.pre292.i) #20
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %qrf_need_quote.exit.thread.i
  %i.adc = load i8, ptr %i.ea, align 2, !tbaa !273
  %i.add = icmp eq i8 %i.adc, 2
  br i1 %i.add, label %.preheader.i29, label %bb.gz

.preheader.i29:                                   ; preds = %bb.gw
  %i.ade = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.adf = icmp sgt i32 %i.ade, 0
  br i1 %i.adf, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %.preheader.i29, %qrf_need_quote.exit222.thread.i
  %.2249.i = phi i32 [ %i.aea, %qrf_need_quote.exit222.thread.i ], [ 0, %.preheader.i29 ] ; 3 uses
  %i.adg = load ptr, ptr %4, align 8, !tbaa !46
  %i.adh = call ptr @sqlite3_column_name(ptr noundef %i.adg, i32 noundef %.2249.i) #20 ; 5 uses
  %i.adi = icmp eq ptr %i.adh, null
  br i1 %i.adi, label %qrf_need_quote.exit222.thread.i, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph250.i
  %i.adj = load i8, ptr %i.adh, align 1, !tbaa !29 ; 3 uses
  %i.adk = zext i8 %i.adj to i64
  %i.adl = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !29
  %i.adn = and i8 %i.adm, 4
  %.not.i210.i = icmp eq i8 %i.adn, 0
  br i1 %.not.i210.i, label %qrf_need_quote.exit222.thread.i, label %.preheader.i211.i

.preheader.i211.i:                                ; preds = %bb.gx
  %.not1316.i212.i = icmp eq i8 %i.adj, 0
  br i1 %.not1316.i212.i, label %qrf_need_quote.exit222.i, label %.lr.ph.i213.i

.lr.ph.i213.i:                                    ; preds = %.preheader.i211.i, %bb.gy
  %indvars.iv.i214.i = phi i64 [ %indvars.iv.next.i216.i, %bb.gy ], [ 0, %.preheader.i211.i ]
  %i.ado = phi i8 [ %i.adu, %bb.gy ], [ %i.adj, %.preheader.i211.i ]
  %i.adp = zext i8 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.adp
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !29
  %i.ads = and i8 %i.adr, 6
  %.not14.i215.i = icmp eq i8 %i.ads, 0
  br i1 %.not14.i215.i, label %qrf_need_quote.exit222.thread.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i213.i
  %indvars.iv.next.i216.i = add nuw nsw i64 %indvars.iv.i214.i, 1 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adh, i64 %indvars.iv.next.i216.i
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !29 ; 2 uses
  %.not13.i217.i = icmp eq i8 %i.adu, 0
  br i1 %.not13.i217.i, label %._crit_edge.loopexit.i218.i, label %.lr.ph.i213.i, !llvm.loop !254

._crit_edge.loopexit.i218.i:                      ; preds = %bb.gy
  %i.adv = trunc nuw i64 %indvars.iv.next.i216.i to i32
  br label %qrf_need_quote.exit222.i

qrf_need_quote.exit222.i:                         ; preds = %._crit_edge.loopexit.i218.i, %.preheader.i211.i
  %.0.lcssa.i220.i = phi i32 [ 0, %.preheader.i211.i ], [ %i.adv, %._crit_edge.loopexit.i218.i ]
  %i.adw = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.adh, i32 noundef %.0.lcssa.i220.i) #20
  %.not242.i = icmp eq i32 %i.adw, 0
  %spec.select.i30 = select i1 %.not242.i, ptr @.str.100, ptr @.str.99
  br label %qrf_need_quote.exit222.thread.i

qrf_need_quote.exit222.thread.i:                  ; preds = %.lr.ph.i213.i, %qrf_need_quote.exit222.i, %bb.gx, %.lr.ph250.i
  %.str.100.sink.i = phi ptr [ %spec.select.i30, %qrf_need_quote.exit222.i ], [ @.str.99, %.lr.ph250.i ], [ @.str.99, %bb.gx ], [ @.str.99, %.lr.ph.i213.i ]
  %i.adx = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ady = icmp eq i32 %.2249.i, 0
  %i.adz = select i1 %i.ady, i32 40, i32 44
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.adx, ptr noundef nonnull %.str.100.sink.i, i32 noundef %i.adz, ptr noundef %i.adh) #20
  %i.aea = add nuw nsw i32 %.2249.i, 1            ; 2 uses
  %i.aeb = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aec = icmp slt i32 %i.aea, %i.aeb
  br i1 %i.aec, label %.lr.ph250.i, label %._crit_edge251.i, !llvm.loop !255

._crit_edge251.i:                                 ; preds = %qrf_need_quote.exit222.thread.i, %.preheader.i29
  %i.aed = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aed, ptr noundef nonnull @.str.61, i32 noundef 1) #20
  br label %bb.gz

bb.gz:                                            ; preds = %._crit_edge251.i, %bb.gw
  %i.aee = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aee, ptr noundef nonnull @.str.101, i32 noundef 8) #20
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gp
  %i.aef = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aef, ptr noundef nonnull @.str.102, i32 noundef 5) #20
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.aeg = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aeh = icmp sgt i32 %i.aeg, 0
  br i1 %i.aeh, label %.lr.ph254.preheader.i, label %._crit_edge255.i

.lr.ph254.preheader.i:                            ; preds = %bb.hb
  %.pre293.i = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %.pre293.i, i32 noundef 0)
  %i.aei = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aej = icmp sgt i32 %i.aei, 1
  br i1 %i.aej, label %.lr.ph254.peel.next.i, label %._crit_edge255.i

.lr.ph254.peel.next.i:                            ; preds = %.lr.ph254.preheader.i, %.lr.ph254.peel.next.i
  %.3252.i = phi i32 [ %i.aem, %.lr.ph254.peel.next.i ], [ 1, %.lr.ph254.preheader.i ] ; 2 uses
  %i.aek = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aek, ptr noundef nonnull @.str.13, i32 noundef 1) #20
  %i.ael = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %i.ael, i32 noundef %.3252.i)
  %i.aem = add nuw nsw i32 %.3252.i, 1            ; 2 uses
  %i.aen = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aeo = icmp slt i32 %i.aem, %i.aen
  br i1 %i.aeo, label %.lr.ph254.peel.next.i, label %._crit_edge255.i, !llvm.loop !256

._crit_edge255.i:                                 ; preds = %.lr.ph254.peel.next.i, %.lr.ph254.preheader.i, %bb.hb
  %i.aep = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.aeq = call i32 @sqlite3_str_length(ptr noundef %i.aep) #20
  %i.aer = load i32, ptr %i.dl, align 8, !tbaa !29
  %reass.sub = sub i32 %i.aeq, %i.acf
  %i.aes = add i32 %reass.sub, 2
  %i.aet = add i32 %i.aes, %i.aer                 ; 2 uses
  store i32 %i.aet, ptr %i.dl, align 8, !tbaa !29
  %.not204.i = icmp ult i32 %i.aet, %i.acd
  %i.aeu = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %.not204.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %._crit_edge255.i
  call void @sqlite3_str_append(ptr noundef %i.aeu, ptr noundef nonnull @.str.103, i32 noundef 3) #20
  store i32 0, ptr %i.dl, align 8, !tbaa !29
  br label %bb.he

bb.hd:                                            ; preds = %._crit_edge255.i
  call void @sqlite3_str_append(ptr noundef %i.aeu, ptr noundef nonnull @.str.61, i32 noundef 1) #20
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.aev = load ptr, ptr %i.dw, align 8, !tbaa !85
  %.not.i223.i = icmp eq ptr %i.aev, null
  br i1 %.not.i223.i, label %qrfOneSimpleRow.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aew = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.aex = call i32 @sqlite3_str_length(ptr noundef %i.aew) #20 ; 3 uses
end_hunk_1
