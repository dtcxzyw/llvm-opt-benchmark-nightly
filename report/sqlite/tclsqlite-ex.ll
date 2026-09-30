Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !78
  %i.oy = add nsw i32 %i.ox, %.06575.i.i          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !242

._crit_edge.i.i:                                  ; preds = %scalar.ph, %bb.db
  %.065.lcssa.i.i = phi i32 [ 0, %bb.db ], [ %i.oy, %scalar.ph ] ; 3 uses
  %i.oz = sext i16 %i.mv to i32                   ; 2 uses
  %i.pa = add nsw i32 %.065.lcssa.i.i, %.067.i.i
  %.not.i322.i = icmp sgt i32 %i.pa, %i.oz
  br i1 %.not.i322.i, label %bb.dc, label %qrfRestrictScreenWidth.exit.i

bb.dc:                                            ; preds = %._crit_edge.i.i
  store i8 0, ptr %i.mt, align 1, !tbaa !79
  br i1 %i.my, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.pb = add nsw i32 %i.mz, -1
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.pd = load i8, ptr %i.pc, align 4, !tbaa !80
  %i.pe = icmp eq i8 %i.pd, 1
  %spec.select72.v.i.i = select i1 %i.pe, i32 -1, i32 1
  %spec.select72.i.i = add nsw i32 %spec.select72.v.i.i, %i.mz
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.168.i.i = phi i32 [ %i.pb, %bb.dd ], [ %spec.select72.i.i, %bb.de ]
  %i.pf = sub nsw i32 %i.oz, %.168.i.i            ; 4 uses
  %i.pg = icmp sle i32 %.065.lcssa.i.i, %i.pf
  %brmerge494.i = or i1 %i.ng, %i.pg
  br i1 %brmerge494.i, label %qrfRestrictScreenWidth.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %bb.df
  %i.ph = load ptr, ptr %i.eo, align 8, !tbaa !64 ; 2 uses
  %wide.trip.count90.i.i = zext nneg i32 %i.mz to i64
  %.promoted395.i = load i8, ptr %i.gu, align 4
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.dm, %.preheader.lr.ph.split.us.i.i
  %i.pi = phi i8 [ %.promoted395.i, %.preheader.lr.ph.split.us.i.i ], [ 1, %bb.dm ]
  %.16684.us.i.i = phi i32 [ %.065.lcssa.i.i, %.preheader.lr.ph.split.us.i.i ], [ %i.qd, %bb.dm ] ; 3 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dl, %.preheader.us.i.i
  %indvars.iv87.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next88.i.i, %bb.dl ] ; 3 uses
  %.079.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %.1.us.i.i, %bb.dl ] ; 4 uses
  %.05878.us.i.i = phi i32 [ -1, %.preheader.us.i.i ], [ %.159.us.i.i, %bb.dl ] ; 3 uses
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %indvars.iv87.i.i ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 17
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !77
  %i.pm = icmp eq i8 %i.pl, 0
  br i1 %i.pm, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !78 ; 5 uses
  %i.pp = icmp sgt i32 %i.po, %.079.us.i.i
  %i.pq = icmp sgt i32 %i.po, 8
  %or.cond.us.i.i = and i1 %i.pp, %i.pq
  br i1 %or.cond.us.i.i, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.pr = icmp samesign ugt i32 %i.po, 16
  br i1 %i.pr, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ps = shl nuw nsw i32 %i.po, 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !68
  %i.pv = icmp sgt i32 %i.ps, %i.pu
  br i1 %i.pv, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.pw = trunc nuw nsw i64 %indvars.iv87.i.i to i32
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.dh, %bb.dg
  %.159.us.i.i = phi i32 [ %i.pw, %bb.dk ], [ %.05878.us.i.i, %bb.dj ], [ %.05878.us.i.i, %bb.dh ], [ %.05878.us.i.i, %bb.dg ] ; 3 uses
  %.1.us.i.i = phi i32 [ %i.po, %bb.dk ], [ %.079.us.i.i, %bb.dj ], [ %.079.us.i.i, %bb.dh ], [ %.079.us.i.i, %bb.dg ] ; 4 uses
  %indvars.iv.next88.i.i = add nuw nsw i64 %indvars.iv87.i.i, 1 ; 2 uses
  %exitcond91.not.i.i = icmp eq i64 %indvars.iv.next88.i.i, %wide.trip.count90.i.i
  br i1 %exitcond91.not.i.i, label %._crit_edge81.us.i.i, label %bb.dg, !llvm.loop !243

bb.dm:                                            ; preds = %._crit_edge81.us.i.i
  %i.px = icmp sgt i32 %.1.us.i.i, 15
  %i.py = lshr i32 %.1.us.i.i, 1
  %i.pz = add nsw i32 %.1.us.i.i, -8
  %.060.us.i.i = select i1 %i.px, i32 %i.py, i32 %i.pz ; 2 uses
  %i.qa = sub nsw i32 %.16684.us.i.i, %.060.us.i.i
  %i.qb = icmp slt i32 %i.qa, %i.pf
  %i.qc = sub nsw i32 %.16684.us.i.i, %i.pf
  %.161.us.i.i = select i1 %i.qb, i32 %i.qc, i32 %.060.us.i.i ; 2 uses
  %i.qd = sub nsw i32 %.16684.us.i.i, %.161.us.i.i ; 2 uses
  %i.qe = zext nneg i32 %.159.us.i.i to i64
  %i.qf = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !78
  %i.qi = sub nsw i32 %i.qh, %.161.us.i.i
  store i32 %i.qi, ptr %i.qg, align 8, !tbaa !78
  %i.qj = icmp sgt i32 %i.qd, %i.pf
  br i1 %i.qj, label %.preheader.us.i.i, label %qrfRestrictScreenWidth.exit.loopexit.i

._crit_edge81.us.i.i:                             ; preds = %bb.dl
  %i.qk = icmp slt i32 %.159.us.i.i, 0
  br i1 %i.qk, label %qrfRestrictScreenWidth.exit.loopexit.i, label %bb.dm

qrfRestrictScreenWidth.exit.loopexit.i:           ; preds = %._crit_edge81.us.i.i, %bb.dm
  %i.ql = phi i8 [ 1, %bb.dm ], [ %i.pi, %._crit_edge81.us.i.i ]
  store i8 %i.ql, ptr %i.gu, align 4
  br label %qrfRestrictScreenWidth.exit.i

qrfRestrictScreenWidth.exit.i:                    ; preds = %qrfRestrictScreenWidth.exit.loopexit.i, %bb.df, %._crit_edge.i.i, %.thread481.i, %bb.cx
  %i.qm = phi i8 [ %.pre, %bb.cx ], [ 2, %.thread481.i ], [ 2, %._crit_edge.i.i ], [ 0, %bb.df ], [ 0, %qrfRestrictScreenWidth.exit.loopexit.i ] ; 6 uses
  %.0263.i = phi i32 [ %i.ms, %bb.cx ], [ %i.ef, %.thread481.i ], [ %i.ef, %._crit_edge.i.i ], [ %i.ef, %bb.df ], [ %i.ef, %qrfRestrictScreenWidth.exit.loopexit.i ] ; 6 uses
  %i.qn = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.qn, label %bb.dw [
    i8 1, label %bb.dn
    i8 19, label %bb.dq
    i8 2, label %bb.dt
  ]

bb.dn:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not296.i = icmp eq i8 %i.qm, 0                ; 4 uses
  %.str.19..str.17.i = select i1 %.not296.i, ptr @.str.19, ptr @.str.17 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qp = load i8, ptr %i.qo, align 4, !tbaa !80
  %i.qq = icmp eq i8 %i.qp, 1
  br i1 %i.qq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.qr = select i1 %.not296.i, ptr getelementptr inbounds nuw (i8, ptr @.str.19, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.16, i64 3)
  br label %bb.dx

bb.dp:                                            ; preds = %bb.dn
  %.str.19..str.16.i = select i1 %.not296.i, ptr @.str.19, ptr @.str.16
  %.str.20..str.18.i = select i1 %.not296.i, ptr @.str.20, ptr @.str.18
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.qt, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0)
  br label %bb.dx

bb.dq:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not295.i = icmp eq i8 %i.qm, 0                ; 4 uses
  %.str.7..str.25.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.25 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qv = load i8, ptr %i.qu, align 4, !tbaa !80
  %i.qw = icmp eq i8 %i.qv, 1
  br i1 %i.qw, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.qx = select i1 %.not295.i, ptr getelementptr inbounds nuw (i8, ptr @.str.7, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.24, i64 1)
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dq
  %.str.7..str.24.i = select i1 %.not295.i, ptr @.str.7, ptr @.str.24
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
  %i.rn = load i8, ptr %i.gu, align 4             ; 2 uses
  %i.ro = icmp ne i8 %i.rn, 0                     ; 3 uses
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
  %.not300.i = icmp eq i8 %i.rn, 0                ; 2 uses
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
  store ptr %spec.store.select359.i, ptr %i.uq, align 8
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
  store ptr %spec.store.select359.i.1, ptr %i.uz, align 8
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
end_hunk_0
begin_hunk_1_@sqlite3_format_query_result:bb.a
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
  call fastcc void @qrfRowSeparator(ptr noundef %i.xy, ptr noundef %3, i8 noundef signext 43)
  br label %.loopexit.i9

bb.ff:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %i.xw, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.xz = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.xz, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1)
  br label %.loopexit.i9

bb.fh:                                            ; preds = %bb.ff
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ya = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.ya, ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0)
  br label %.loopexit.i9

bb.fj:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %i.xw, label %bb.fk, label %.loopexit.i9

bb.fk:                                            ; preds = %bb.fj
  %i.yb = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.yb, ptr noundef %3, i8 noundef signext 124)
  br label %.loopexit.i9

bb.fl:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %i.xw, label %.preheader.i, label %bb.fq

.preheader.i:                                     ; preds = %bb.fl
  br i1 %i.sa, label %.lr.ph408.i, label %.loopexit.i9

.lr.ph408.i:                                      ; preds = %.preheader.i, %bb.fp
  %.3276407.i = phi i64 [ %i.yt, %bb.fp ], [ 0, %.preheader.i ] ; 3 uses
  %i.yc = load ptr, ptr %i.ry, align 8, !tbaa !47
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %i.sc, i64 %.3276407.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !78
  call void @sqlite3_str_appendchar(ptr noundef %i.yc, i32 noundef %i.yf, i8 noundef signext 45) #20
  %i.yg = icmp slt i64 %.3276407.i, %i.sf
  %i.yh = load ptr, ptr %i.ry, align 8, !tbaa !47 ; 4 uses
  br i1 %i.yg, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.lr.ph408.i
  call void @sqlite3_str_append(ptr noundef %i.yh, ptr noundef nonnull %.3.i, i32 noundef %i.rj) #20
  br label %bb.fp

bb.fn:                                            ; preds = %.lr.ph408.i
  %i.yi = call i32 @sqlite3_str_length(ptr noundef %i.yh) #20 ; 3 uses
  %i.yj = call ptr @sqlite3_str_value(ptr noundef %i.yh) #20
  %i.yk = icmp sgt i32 %i.yi, 0
  br i1 %i.yk, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i

.lr.ph.i340.i:                                    ; preds = %bb.fn, %bb.fo
  %.07.i341.i = phi i32 [ %i.yq, %bb.fo ], [ %i.yi, %bb.fn ] ; 4 uses
  %i.yl = zext nneg i32 %.07.i341.i to i64
  %i.ym = getelementptr i8, ptr %i.yj, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.ym, i64 -1
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !29
  %i.yp = icmp eq i8 %i.yo, 32
  br i1 %i.yp, label %bb.fo, label %qrfRTrim.exit342.i

bb.fo:                                            ; preds = %.lr.ph.i340.i
  %i.yq = add nsw i32 %.07.i341.i, -1
  %i.yr = icmp sgt i32 %.07.i341.i, 1
  br i1 %i.yr, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i, !llvm.loop !5

qrfRTrim.exit342.i:                               ; preds = %bb.fo, %.lr.ph.i340.i, %bb.fn
  %.0.lcssa.i339.i = phi i32 [ %i.yi, %bb.fn ], [ 0, %bb.fo ], [ %.07.i341.i, %.lr.ph.i340.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.yh, i32 noundef %.0.lcssa.i339.i) #20
  %i.ys = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ys, ptr noundef nonnull %.2269.i, i32 noundef %i.rh) #20
  br label %bb.fp

bb.fp:                                            ; preds = %qrfRTrim.exit342.i, %bb.fm
  %i.yt = add nuw nsw i64 %.3276407.i, 1          ; 2 uses
  %exitcond434.not.i = icmp eq i64 %i.yt, %i.rz
  br i1 %exitcond434.not.i, label %.loopexit.i9, label %.lr.ph408.i, !llvm.loop !248

bb.fq:                                            ; preds = %bb.fl
  br i1 %.not300.i, label %.loopexit.i9, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yu = load ptr, ptr %i.ry, align 8, !tbaa !47
  call fastcc void @qrfRTrim(ptr noundef %i.yu)
  %i.yv = load ptr, ptr %i.ry, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.yv, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %.loopexit.i9

.loopexit.i9:                                     ; preds = %bb.fp, %bb.fr, %bb.fq, %.preheader.i, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.fe, %bb.fd, %qrfLoadAlignment.exit.i, %.critedge314.i
  br i1 %i.wy, label %bb.eb, label %.critedge8.i, !llvm.loop !249

.critedge8.i:                                     ; preds = %.loopexit.i9, %bb.eb, %bb.ea
  %i.yw = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.yx = load i8, ptr %i.yw, align 4, !tbaa !80
  %.not298.i = icmp eq i8 %i.yx, 1
  br i1 %.not298.i, label %bb.fv, label %bb.fs

bb.fs:                                            ; preds = %.critedge8.i
  %i.yy = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.yy, label %bb.fv [
    i8 1, label %bb.ft
    i8 19, label %bb.fu
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.yz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !47
  call fastcc void @qrfBoxSeparator(ptr noundef %i.za, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0)
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  %i.zb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !47
  call fastcc void @qrfRowSeparator(ptr noundef %i.zc, ptr noundef %3, i8 noundef signext 43)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %.critedge8.i
  %i.zd = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !85
  %.not.i343.i = icmp eq ptr %i.ze, null
  br i1 %.not.i343.i, label %qrfWrite.exit.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !47
  %i.zh = call i32 @sqlite3_str_length(ptr noundef %i.zg) #20 ; 3 uses
  %i.zi = icmp sgt i32 %i.zh, 0
  br i1 %i.zi, label %bb.fx, label %qrfWrite.exit.i

bb.fx:                                            ; preds = %bb.fw
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
  br i1 %.not11.i.i, label %qrfWrite.exit.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.zp, ptr noundef nonnull @.str.69, i32 noundef %i.zh)
  br label %qrfWrite.exit.i

qrfWrite.exit.i:                                  ; preds = %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %.pre440.i = load ptr, ptr %i.gr, align 8, !tbaa !71 ; 2 uses
  br i1 %i.rx, label %.lr.ph.i345.i, label %qrfColDataFree.exit347.i

.lr.ph.i345.i:                                    ; preds = %qrfWrite.exit.i, %.lr.ph.i345.i
  %.09.i346.i = phi i64 [ %i.zt, %.lr.ph.i345.i ], [ 0, %qrfWrite.exit.i ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %.pre440.i, i64 %.09.i346.i
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.zs) #20
  %i.zt = add nuw nsw i64 %.09.i346.i, 1          ; 2 uses
  %exitcond435.not.i = icmp eq i64 %i.zt, %i.rw
  br i1 %exitcond435.not.i, label %qrfColDataFree.exit347.i, label %.lr.ph.i345.i, !llvm.loop !4

qrfColDataFree.exit347.i:                         ; preds = %.lr.ph.i345.i, %qrfWrite.exit.i
  call void @sqlite3_free(ptr noundef %.pre440.i) #20
  %i.zu = load ptr, ptr %i.gt, align 8, !tbaa !72
  call void @sqlite3_free(ptr noundef %i.zu) #20
  %i.zv = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.zv) #20
  %i.zw = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.zw) #20
  br label %qrfColumnar.exit

qrfColumnar.exit:                                 ; preds = %bb.bw, %bb.bf, %bb.bh, %bb.bi, %qrfColDataFree.exit.i, %qrfColDataFree.exit347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

bb.fz:                                            ; preds = %qrfInitialize.exit
  call fastcc void @qrfExplain(ptr noundef %4)
  br label %.critedge

bb.ga:                                            ; preds = %qrfInitialize.exit
  %i.zx = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.zy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !265
  %i.aaa = call i32 @sqlite3_prepare_v2(ptr noundef %i.zz, ptr noundef nonnull @.str.84, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null) #20 ; 2 uses
  %.not.i14 = icmp eq i32 %i.aaa, 0
  br i1 %.not.i14, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aab = load ptr, ptr %i.zy, align 8, !tbaa !265
  %i.aac = call ptr @sqlite3_errmsg(ptr noundef %i.aab) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aaa, ptr noundef nonnull @.str.85, ptr noundef %i.aac)
  %i.aad = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.aae = call i32 @sqlite3_finalize(ptr noundef %i.aad) #20 ; 0 uses
  br label %qrfScanStatusVm.exit

bb.gc:                                            ; preds = %bb.ga
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

qrfScanStatusVm.exit:                             ; preds = %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

bb.gd:                                            ; preds = %qrfInitialize.exit, %qrfInitialize.exit
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull @.str.87)
  br label %.critedge

bb.ge:                                            ; preds = %.lr.ph, %qrfOneSimpleRow.exit
  %i.aal = call i32 @sqlite3_step(ptr noundef nonnull %0) #20
  %i.aam = icmp eq i32 %i.aal, 100
  br i1 %i.aam, label %bb.gf, label %.critedge

bb.gf:                                            ; preds = %bb.ge
  %i.aan = load i8, ptr %i.dg, align 1, !tbaa !53
  switch i8 %i.aan, label %bb.io [
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
  %i.aao = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aap = icmp eq i64 %i.aao, 0
  %i.aaq = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %i.aap, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  call void @sqlite3_str_append(ptr noundef %i.aaq, ptr noundef nonnull @.str.88, i32 noundef 2) #20
  br label %bb.gj

bb.gi:                                            ; preds = %bb.gg
  call void @sqlite3_str_append(ptr noundef %i.aaq, ptr noundef nonnull @.str.89, i32 noundef 4) #20
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit

bb.gk:                                            ; preds = %bb.gf
  %i.aar = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aas = icmp eq i64 %i.aar, 0
  %i.aat = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %i.aas, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  call void @sqlite3_str_append(ptr noundef %i.aat, ptr noundef nonnull @.str.90, i32 noundef 1) #20
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gk
  call void @sqlite3_str_append(ptr noundef %i.aat, ptr noundef nonnull @.str.91, i32 noundef 3) #20
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  call fastcc void @qrfOneJsonRow(ptr noundef nonnull %4)
  br label %qrfOneSimpleRow.exit

bb.go:                                            ; preds = %bb.gf
  %i.aau = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.aav = icmp eq i64 %i.aau, 0
  %i.aaw = load i8, ptr %i.ea, align 2
  %i.aax = icmp eq i8 %i.aaw, 2
  %or.cond54 = select i1 %i.aav, i1 %i.aax, i1 false
  br i1 %or.cond54, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.aay = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aay, ptr noundef nonnull @.str.92, i32 noundef 4) #20
  %i.aaz = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aba = icmp sgt i32 %i.aaz, 0
  br i1 %i.aba, label %.lr.ph258.i, label %._crit_edge259.i

.lr.ph258.i:                                      ; preds = %bb.gp, %.lr.ph258.i
  %.0193256.i = phi i32 [ %i.abf, %.lr.ph258.i ], [ 0, %bb.gp ] ; 2 uses
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

._crit_edge259.i:                                 ; preds = %.lr.ph258.i, %bb.gp
  %i.abi = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abi, ptr noundef nonnull @.str.94, i32 noundef 7) #20
  br label %bb.gq

bb.gq:                                            ; preds = %._crit_edge259.i, %bb.go
  %i.abj = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abj, ptr noundef nonnull @.str.92, i32 noundef 4) #20
  %i.abk = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %.lr.ph262.i, label %._crit_edge263.i

.lr.ph262.i:                                      ; preds = %bb.gq, %.lr.ph262.i
  %.1194260.i = phi i32 [ %i.abo, %.lr.ph262.i ], [ 0, %bb.gq ] ; 2 uses
  %i.abm = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abm, ptr noundef nonnull @.str.95, i32 noundef 5) #20
  %i.abn = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %i.abn, i32 noundef %.1194260.i)
  %i.abo = add nuw nsw i32 %.1194260.i, 1         ; 2 uses
  %i.abp = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.abq = icmp slt i32 %i.abo, %i.abp
  br i1 %i.abq, label %.lr.ph262.i, label %._crit_edge263.i, !llvm.loop !252

._crit_edge263.i:                                 ; preds = %.lr.ph262.i, %bb.gq
  %i.abr = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.abr, ptr noundef nonnull @.str.94, i32 noundef 7) #20
  %i.abs = load ptr, ptr %i.dw, align 8, !tbaa !85
  %.not.i.i31 = icmp eq ptr %i.abs, null
  br i1 %.not.i.i31, label %qrfOneSimpleRow.exit, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge263.i
  %i.abt = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.abu = call i32 @sqlite3_str_length(ptr noundef %i.abt) #20 ; 3 uses
  %i.abv = icmp sgt i32 %i.abu, 0
  br i1 %i.abv, label %bb.gs, label %qrfOneSimpleRow.exit

bb.gs:                                            ; preds = %bb.gr
  %i.abw = load ptr, ptr %i.dw, align 8, !tbaa !85
  %i.abx = load ptr, ptr %i.dx, align 8, !tbaa !86
  %i.aby = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.abz = call ptr @sqlite3_str_value(ptr noundef %i.aby) #20
  %i.aca = zext nneg i32 %i.abu to i64
  %i.acb = call i32 %i.abw(ptr noundef %i.abx, ptr noundef %i.abz, i64 noundef %i.aca) #20, !inline_history !253 ; 2 uses
  %i.acc = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_reset(ptr noundef %i.acc) #20
  %.not11.i.i32 = icmp eq i32 %i.acb, 0
  br i1 %.not11.i.i32, label %qrfOneSimpleRow.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.acb, ptr noundef nonnull @.str.69, i32 noundef %i.abu)
  br label %qrfOneSimpleRow.exit

bb.gu:                                            ; preds = %bb.gf
  %i.acd = load i32, ptr %i.dy, align 8, !tbaa !279 ; 2 uses
  %i.ace = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.acf = call i32 @sqlite3_str_length(ptr noundef %i.ace) #20
  %i.acg = load i32, ptr %i.dl, align 8, !tbaa !29 ; 3 uses
  %i.ach = icmp ne i32 %i.acg, 0
  %.not201.i = icmp ult i32 %i.acg, %i.acd
  %or.cond.i24 = select i1 %i.ach, i1 %.not201.i, i1 false
  br i1 %or.cond.i24, label %bb.hf, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.not202.i = icmp eq i32 %i.acg, 0
  br i1 %.not202.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aci = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aci, ptr noundef nonnull @.str.96, i32 noundef 2) #20
  store i32 0, ptr %i.dl, align 8, !tbaa !29
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.acj = load ptr, ptr %i.dz, align 8, !tbaa !271 ; 6 uses
  %i.ack = icmp eq ptr %i.acj, null
  br i1 %i.ack, label %qrf_need_quote.exit.thread.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.acl = load i8, ptr %i.acj, align 1, !tbaa !29 ; 3 uses
  %i.acm = zext i8 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !29
  %i.acp = and i8 %i.aco, 4
  %.not.i209.i = icmp eq i8 %i.acp, 0
  br i1 %.not.i209.i, label %qrf_need_quote.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.gy
  %.not1316.i.i = icmp eq i8 %i.acl, 0
  br i1 %.not1316.i.i, label %qrf_need_quote.exit.i, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.preheader.i.i, %bb.gz
  %indvars.iv.i.i26 = phi i64 [ %indvars.iv.next.i.i27, %bb.gz ], [ 0, %.preheader.i.i ]
  %i.acq = phi i8 [ %i.acw, %bb.gz ], [ %i.acl, %.preheader.i.i ]
  %i.acr = zext i8 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !29
  %i.acu = and i8 %i.act, 6
  %.not14.i.i = icmp eq i8 %i.acu, 0
  br i1 %.not14.i.i, label %qrf_need_quote.exit.thread.i, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.i.i25
  %indvars.iv.next.i.i27 = add nuw nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acj, i64 %indvars.iv.next.i.i27
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !29 ; 2 uses
  %.not13.i.i = icmp eq i8 %i.acw, 0
  br i1 %.not13.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i25, !llvm.loop !254

._crit_edge.loopexit.i.i:                         ; preds = %bb.gz
  %i.acx = trunc nuw i64 %indvars.iv.next.i.i27 to i32
  br label %qrf_need_quote.exit.i

qrf_need_quote.exit.i:                            ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.0.lcssa.i.i28 = phi i32 [ 0, %.preheader.i.i ], [ %i.acx, %._crit_edge.loopexit.i.i ]
  %i.acy = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.acj, i32 noundef %.0.lcssa.i.i28) #20
  %.not241.i = icmp eq i32 %i.acy, 0
  %.pre292.i = load ptr, ptr %i.dz, align 8, !tbaa !271 ; 2 uses
  br i1 %.not241.i, label %bb.ha, label %qrf_need_quote.exit.thread.i

qrf_need_quote.exit.thread.i:                     ; preds = %.lr.ph.i.i25, %qrf_need_quote.exit.i, %bb.gy, %bb.gx
  %i.acz = phi ptr [ %.pre292.i, %qrf_need_quote.exit.i ], [ %i.acj, %bb.gy ], [ null, %bb.gx ], [ %i.acj, %.lr.ph.i.i25 ]
  %i.ada = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.ada, ptr noundef nonnull @.str.97, ptr noundef %i.acz) #20
  br label %bb.hb

bb.ha:                                            ; preds = %qrf_need_quote.exit.i
  %i.adb = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.adb, ptr noundef nonnull @.str.98, ptr noundef %.pre292.i) #20
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %qrf_need_quote.exit.thread.i
  %i.adc = load i8, ptr %i.ea, align 2, !tbaa !273
  %i.add = icmp eq i8 %i.adc, 2
  br i1 %i.add, label %.preheader.i29, label %bb.he

.preheader.i29:                                   ; preds = %bb.hb
  %i.ade = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.adf = icmp sgt i32 %i.ade, 0
  br i1 %i.adf, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %.preheader.i29, %qrf_need_quote.exit222.thread.i
  %.2249.i = phi i32 [ %i.aea, %qrf_need_quote.exit222.thread.i ], [ 0, %.preheader.i29 ] ; 3 uses
  %i.adg = load ptr, ptr %4, align 8, !tbaa !46
  %i.adh = call ptr @sqlite3_column_name(ptr noundef %i.adg, i32 noundef %.2249.i) #20 ; 5 uses
  %i.adi = icmp eq ptr %i.adh, null
  br i1 %i.adi, label %qrf_need_quote.exit222.thread.i, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph250.i
  %i.adj = load i8, ptr %i.adh, align 1, !tbaa !29 ; 3 uses
  %i.adk = zext i8 %i.adj to i64
  %i.adl = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !29
  %i.adn = and i8 %i.adm, 4
  %.not.i210.i = icmp eq i8 %i.adn, 0
  br i1 %.not.i210.i, label %qrf_need_quote.exit222.thread.i, label %.preheader.i211.i

.preheader.i211.i:                                ; preds = %bb.hc
  %.not1316.i212.i = icmp eq i8 %i.adj, 0
  br i1 %.not1316.i212.i, label %qrf_need_quote.exit222.i, label %.lr.ph.i213.i

.lr.ph.i213.i:                                    ; preds = %.preheader.i211.i, %bb.hd
  %indvars.iv.i214.i = phi i64 [ %indvars.iv.next.i216.i, %bb.hd ], [ 0, %.preheader.i211.i ]
  %i.ado = phi i8 [ %i.adu, %bb.hd ], [ %i.adj, %.preheader.i211.i ]
  %i.adp = zext i8 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.adp
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !29
  %i.ads = and i8 %i.adr, 6
  %.not14.i215.i = icmp eq i8 %i.ads, 0
  br i1 %.not14.i215.i, label %qrf_need_quote.exit222.thread.i, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph.i213.i
  %indvars.iv.next.i216.i = add nuw nsw i64 %indvars.iv.i214.i, 1 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adh, i64 %indvars.iv.next.i216.i
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !29 ; 2 uses
  %.not13.i217.i = icmp eq i8 %i.adu, 0
  br i1 %.not13.i217.i, label %._crit_edge.loopexit.i218.i, label %.lr.ph.i213.i, !llvm.loop !254

._crit_edge.loopexit.i218.i:                      ; preds = %bb.hd
  %i.adv = trunc nuw i64 %indvars.iv.next.i216.i to i32
  br label %qrf_need_quote.exit222.i

qrf_need_quote.exit222.i:                         ; preds = %._crit_edge.loopexit.i218.i, %.preheader.i211.i
  %.0.lcssa.i220.i = phi i32 [ 0, %.preheader.i211.i ], [ %i.adv, %._crit_edge.loopexit.i218.i ]
  %i.adw = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.adh, i32 noundef %.0.lcssa.i220.i) #20
  %.not242.i = icmp eq i32 %i.adw, 0
  %spec.select.i30 = select i1 %.not242.i, ptr @.str.100, ptr @.str.99
  br label %qrf_need_quote.exit222.thread.i

qrf_need_quote.exit222.thread.i:                  ; preds = %.lr.ph.i213.i, %qrf_need_quote.exit222.i, %bb.hc, %.lr.ph250.i
  %.str.100.sink.i = phi ptr [ %spec.select.i30, %qrf_need_quote.exit222.i ], [ @.str.99, %.lr.ph250.i ], [ @.str.99, %bb.hc ], [ @.str.99, %.lr.ph.i213.i ]
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
  br label %bb.he

bb.he:                                            ; preds = %._crit_edge251.i, %bb.hb
  %i.aee = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aee, ptr noundef nonnull @.str.101, i32 noundef 8) #20
  br label %bb.hg

bb.hf:                                            ; preds = %bb.gu
  %i.aef = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aef, ptr noundef nonnull @.str.102, i32 noundef 5) #20
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aeg = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aeh = icmp sgt i32 %i.aeg, 0
  br i1 %i.aeh, label %.lr.ph254.preheader.i, label %._crit_edge255.i

.lr.ph254.preheader.i:                            ; preds = %bb.hg
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

._crit_edge255.i:                                 ; preds = %.lr.ph254.peel.next.i, %.lr.ph254.preheader.i, %bb.hg
  %i.aep = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.aeq = call i32 @sqlite3_str_length(ptr noundef %i.aep) #20
  %i.aer = load i32, ptr %i.dl, align 8, !tbaa !29
  %reass.sub = sub i32 %i.aeq, %i.acf
  %i.aes = add i32 %reass.sub, 2
  %i.aet = add i32 %i.aes, %i.aer                 ; 2 uses
  store i32 %i.aet, ptr %i.dl, align 8, !tbaa !29
  %.not204.i = icmp ult i32 %i.aet, %i.acd
  %i.aeu = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %.not204.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %._crit_edge255.i
  call void @sqlite3_str_append(ptr noundef %i.aeu, ptr noundef nonnull @.str.103, i32 noundef 3) #20
  store i32 0, ptr %i.dl, align 8, !tbaa !29
  br label %bb.hj

bb.hi:                                            ; preds = %._crit_edge255.i
  call void @sqlite3_str_append(ptr noundef %i.aeu, ptr noundef nonnull @.str.61, i32 noundef 1) #20
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.aev = load ptr, ptr %i.dw, align 8, !tbaa !85
  %.not.i223.i = icmp eq ptr %i.aev, null
  br i1 %.not.i223.i, label %qrfOneSimpleRow.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aew = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.aex = call i32 @sqlite3_str_length(ptr noundef %i.aew) #20 ; 3 uses
end_hunk_1
