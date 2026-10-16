Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %.067.i.i = phi i32 [ %i.nb, %bb.cz ], [ %spec.select.i.i, %bb.da ]
  %i.ng = icmp slt i32 %i.mz, 1                   ; 2 uses
  br i1 %i.ng, label %._crit_edge.i.i, label %.lr.ph.i323.i

.lr.ph.i323.i:                                    ; preds = %bb.db
  %i.nh = load ptr, ptr %i.eo, align 8, !tbaa !86 ; 9 uses
  %wide.trip.count.i.i = zext nneg i32 %i.mz to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.mz, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i323.i
  %i.ni = and i64 %wide.trip.count.i.i, 7         ; 2 uses
  %i.nj = icmp eq i64 %i.ni, 0
  %i.nk = select i1 %i.nj, i64 8, i64 %i.ni
  %n.vec = sub nsw i64 %wide.trip.count.i.i, %i.nk ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.or, %vector.body ]
  %vec.phi184 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.os, %vector.body ]
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %index
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 56
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 80
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 104
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nq, i64 128
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nr, i64 152
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 176
  %i.ob = load i32, ptr %i.nt, align 8, !tbaa !100
  %i.oc = load i32, ptr %i.nu, align 8, !tbaa !100
  %i.od = load i32, ptr %i.nv, align 8, !tbaa !100
  %i.oe = load i32, ptr %i.nw, align 8, !tbaa !100
  %i.of = insertelement <4 x i32> poison, i32 %i.ob, i64 0
  %i.og = insertelement <4 x i32> %i.of, i32 %i.oc, i64 1
  %i.oh = insertelement <4 x i32> %i.og, i32 %i.od, i64 2
  %i.oi = insertelement <4 x i32> %i.oh, i32 %i.oe, i64 3
  %i.oj = load i32, ptr %i.nx, align 8, !tbaa !100
  %i.ok = load i32, ptr %i.ny, align 8, !tbaa !100
  %i.ol = load i32, ptr %i.nz, align 8, !tbaa !100
  %i.om = load i32, ptr %i.oa, align 8, !tbaa !100
  %i.on = insertelement <4 x i32> poison, i32 %i.oj, i64 0
  %i.oo = insertelement <4 x i32> %i.on, i32 %i.ok, i64 1
  %i.op = insertelement <4 x i32> %i.oo, i32 %i.ol, i64 2
  %i.oq = insertelement <4 x i32> %i.op, i32 %i.om, i64 3
  %i.or = add <4 x i32> %i.oi, %vec.phi           ; 2 uses
  %i.os = add <4 x i32> %i.oq, %vec.phi184        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ot = icmp eq i64 %index.next, %n.vec
  br i1 %i.ot, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.os, %i.or
  %i.ou = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i323.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i323.i ], [ %n.vec, %middle.block ]
  %.06575.i.i.ph = phi i32 [ 0, %.lr.ph.i323.i ], [ %i.ou, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.06575.i.i = phi i32 [ %i.oy, %scalar.ph ], [ %.06575.i.i.ph, %scalar.ph.preheader ]
  %i.ov = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %indvars.iv.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !100
  %i.oy = add nsw i32 %i.ox, %.06575.i.i          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !697

._crit_edge.i.i:                                  ; preds = %scalar.ph, %bb.db
  %.065.lcssa.i.i = phi i32 [ 0, %bb.db ], [ %i.oy, %scalar.ph ] ; 3 uses
  %i.oz = sext i16 %i.mv to i32                   ; 2 uses
  %i.pa = add nsw i32 %.065.lcssa.i.i, %.067.i.i
  %.not.i322.i = icmp sgt i32 %i.pa, %i.oz
  br i1 %.not.i322.i, label %bb.dc, label %qrfRestrictScreenWidth.exit.i

bb.dc:                                            ; preds = %._crit_edge.i.i
  store i8 0, ptr %i.mt, align 1, !tbaa !101
  br i1 %i.my, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.pb = add nsw i32 %i.mz, -1
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.pd = load i8, ptr %i.pc, align 4, !tbaa !102
  %i.pe = icmp eq i8 %i.pd, 1
  %spec.select72.v.i.i = select i1 %i.pe, i32 -1, i32 1
  %spec.select72.i.i = add nsw i32 %spec.select72.v.i.i, %i.mz
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.168.i.i = phi i32 [ %i.pb, %bb.dd ], [ %spec.select72.i.i, %bb.de ]
  %i.pf = sub nsw i32 %i.oz, %.168.i.i            ; 4 uses
  %i.pg = icmp sle i32 %.065.lcssa.i.i, %i.pf
  %brmerge496.i = or i1 %i.ng, %i.pg
  br i1 %brmerge496.i, label %qrfRestrictScreenWidth.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %bb.df
  %i.ph = load ptr, ptr %i.eo, align 8, !tbaa !86 ; 2 uses
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
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !99
  %i.pm = icmp eq i8 %i.pl, 0
  br i1 %i.pm, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !100 ; 5 uses
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
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !90
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
  br i1 %exitcond91.not.i.i, label %._crit_edge81.us.i.i, label %bb.dg, !llvm.loop !698

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
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !100
  %i.qi = sub nsw i32 %i.qh, %.161.us.i.i
  store i32 %i.qi, ptr %i.qg, align 8, !tbaa !100
  %i.qj = icmp sgt i32 %i.qd, %i.pf
  br i1 %i.qj, label %.preheader.us.i.i, label %qrfRestrictScreenWidth.exit.loopexit.i

._crit_edge81.us.i.i:                             ; preds = %bb.dl
  %i.qk = icmp slt i32 %.159.us.i.i, 0
  br i1 %i.qk, label %qrfRestrictScreenWidth.exit.loopexit.i, label %bb.dm

qrfRestrictScreenWidth.exit.loopexit.i:           ; preds = %._crit_edge81.us.i.i, %bb.dm
  %i.ql = phi i8 [ 1, %bb.dm ], [ %i.pi, %._crit_edge81.us.i.i ]
  store i8 %i.ql, ptr %i.gu, align 4
  br label %qrfRestrictScreenWidth.exit.i

qrfRestrictScreenWidth.exit.i:                    ; preds = %qrfRestrictScreenWidth.exit.loopexit.i, %bb.df, %._crit_edge.i.i, %.thread483.i, %bb.cx
  %i.qm = phi i8 [ %.pre, %bb.cx ], [ 2, %.thread483.i ], [ 2, %._crit_edge.i.i ], [ 0, %bb.df ], [ 0, %qrfRestrictScreenWidth.exit.loopexit.i ] ; 6 uses
  %.0263.i = phi i32 [ %i.ms, %bb.cx ], [ %i.ef, %.thread483.i ], [ %i.ef, %._crit_edge.i.i ], [ %i.ef, %bb.df ], [ %i.ef, %qrfRestrictScreenWidth.exit.loopexit.i ] ; 6 uses
  %i.qn = load i8, ptr %i.dg, align 1, !tbaa !75
  switch i8 %i.qn, label %bb.dw [
    i8 1, label %bb.dn
    i8 19, label %bb.dq
    i8 2, label %bb.dt
  ]

bb.dn:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not296.i = icmp eq i8 %i.qm, 0                ; 4 uses
  %.str.168..str.166.i.a = select i1 %.not296.i, ptr @.str.168, ptr @.str.166 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qp = load i8, ptr %i.qo, align 4, !tbaa !102
  %i.qq = icmp eq i8 %i.qp, 1
  br i1 %i.qq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %5 = select i1 %.not296.i, ptr getelementptr inbounds nuw (i8, ptr @.str.168, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.165, i64 3)
  br label %bb.dx

bb.dp:                                            ; preds = %bb.dn
  %.str.168..str.165.i = select i1 %.not296.i, ptr @.str.168, ptr @.str.165
  %.str.169..str.167.i = select i1 %.not296.i, ptr @.str.169, ptr @.str.167
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !69
  call fastcc void @qrfBoxSeparator(ptr noundef %i.qs, ptr noundef %3, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, i32 noundef 0)
  br label %bb.dx

bb.dq:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not295.i = icmp eq i8 %i.qm, 0                ; 4 uses
  %.str.158..str.174.i.a = select i1 %.not295.i, ptr @.str.158, ptr @.str.174 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.qu = load i8, ptr %i.qt, align 4, !tbaa !102
  %i.qv = icmp eq i8 %i.qu, 1
  br i1 %i.qv, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %6 = select i1 %.not295.i, ptr getelementptr inbounds nuw (i8, ptr @.str.158, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.173, i64 1)
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dq
  %.str.158..str.173.i = select i1 %.not295.i, ptr @.str.158, ptr @.str.173
  %.str.176..str.175.i = select i1 %.not295.i, ptr @.str.176, ptr @.str.175
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !69
  call fastcc void @qrfRowSeparator(ptr noundef %i.qx, ptr noundef %3, i8 noundef signext 43)
  br label %bb.dx

bb.dt:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %i.qy = icmp ult i8 %i.qm, 2
  br i1 %i.qy, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.qz = icmp ult i8 %i.qm, 6
  br i1 %i.qz, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %narrow.i11 = sub nuw nsw i8 5, %i.qm
  %i.ra = zext nneg i8 %narrow.i11 to i64
  %i.rb = getelementptr inbounds nuw i8, ptr @qrfColumnar.zSpace, i64 %i.ra
  br label %bb.dx

bb.dw:                                            ; preds = %qrfRestrictScreenWidth.exit.i
  %.not297.i = icmp eq i8 %i.qm, 0                ; 3 uses
  %.str.158..str.174311.i = select i1 %.not297.i, ptr @.str.158, ptr @.str.174
  %.str.176..str.175312.i = select i1 %.not297.i, ptr @.str.176, ptr @.str.175
  %.str.158..str.173313.i = select i1 %.not297.i, ptr @.str.158, ptr @.str.173
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dp, %bb.do
  %.3.i = phi ptr [ %.str.158..str.174311.i, %bb.dw ], [ @qrfColumnar.zSpace, %bb.du ], [ %.str.168..str.166.i.a, %bb.do ], [ %.str.168..str.166.i.a, %bb.dp ], [ %.str.158..str.174.i.a, %bb.dr ], [ %.str.158..str.174.i.a, %bb.ds ], [ @.str.177, %bb.dt ], [ %i.rb, %bb.dv ] ; 4 uses
  %.2269.i = phi ptr [ %.str.176..str.175312.i, %bb.dw ], [ @.str.125, %bb.du ], [ @.str.125, %bb.do ], [ %.str.169..str.167.i, %bb.dp ], [ @.str.125, %bb.dr ], [ %.str.176..str.175.i, %bb.ds ], [ @.str.125, %bb.dt ], [ @.str.125, %bb.dv ] ; 4 uses
  %.2266.i = phi ptr [ %.str.158..str.173313.i, %bb.dw ], [ @.str.48, %bb.du ], [ %5, %bb.do ], [ %.str.168..str.165.i, %bb.dp ], [ %6, %bb.dr ], [ %.str.158..str.173.i, %bb.ds ], [ @.str.48, %bb.dt ], [ @.str.48, %bb.dv ] ; 4 uses
  %i.rc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2266.i) #46
  %i.rd = trunc i64 %i.rc to i32                  ; 3 uses
  %i.re = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2269.i) #46
  %i.rf = trunc i64 %i.re to i32                  ; 3 uses
  %i.rg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3.i) #46
  %i.rh = trunc i64 %i.rg to i32                  ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %4, i64 103
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !730
  %i.rk = icmp eq i8 %i.rj, 2
  %i.rl = load i8, ptr %i.gu, align 4
  %i.rm = icmp ne i8 %i.rl, 0                     ; 5 uses
  %i.rn = select i1 %i.rk, i1 %i.rm, i1 false
  %i.ro = zext i1 %i.rn to i32
  %i.rp = load i8, ptr %i.dg, align 1, !tbaa !75  ; 3 uses
  %i.rq = icmp eq i8 %i.rp, 2
  br i1 %i.rq, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rr = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.rs = load i8, ptr %i.rr, align 4, !tbaa !102
  %i.rt = icmp eq i8 %i.rs, 1
  br i1 %i.rt, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %switch.selectcmp.case1.i = icmp ne i8 %i.rp, 1
  %switch.selectcmp.case2.i = icmp ne i8 %i.rp, 19
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %.not302.i = phi i1 [ %switch.selectcmp.not.i, %bb.dz ], [ false, %bb.dx ], [ true, %bb.dy ] ; 2 uses
  %i.ru = load i64, ptr %i.gn, align 8, !tbaa !91 ; 3 uses
  %i.rv = icmp sgt i64 %i.ru, 0                   ; 2 uses
  br i1 %i.rv, label %.lr.ph411.i, label %.critedge8.i

.lr.ph411.i:                                      ; preds = %bb.ea
  %i.rw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 22 uses
  %i.rx = sext i32 %.0263.i to i64                ; 5 uses
  %i.ry = icmp sgt i32 %.0263.i, 0                ; 2 uses
  %i.rz = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.sa = load ptr, ptr %i.eo, align 8            ; 7 uses
  %i.sb = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.sc = add nsw i32 %.0263.i, -1
  %i.sd = sext i32 %i.sc to i64                   ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.val.i = load i32, ptr %i.ek, align 8          ; 2 uses
  %i.sf = sext i32 %.val.i to i64
  %i.sg = icmp slt i32 %.val.i, 1
  %i.sh = getelementptr inbounds nuw i8, ptr %4, i64 105
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.sm = icmp eq i32 %.0263.i, 1
  %unroll_iter201 = and i64 %i.rx, 2147483646
  %i.sn = and i32 %.0263.i, 1
  %lcmp.mod199.not = icmp eq i32 %i.sn, 0
  %lcmp.mod200 = trunc i32 %.0263.i to i1
  br label %bb.eb

bb.eb:                                            ; preds = %.loopexit.i9, %.lr.ph411.i
  %.4409.i = phi i64 [ 0, %.lr.ph411.i ], [ %i.wv, %.loopexit.i9 ] ; 5 uses
  %i.so = load ptr, ptr %i.rw, align 8, !tbaa !69
  %i.sp = call i32 @sqlite3_str_errcode(ptr noundef %i.so) #45
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %.preheader364.i, label %.critedge8.i

.preheader364.i:                                  ; preds = %bb.eb
  br i1 %i.ry, label %.lr.ph397.i.preheader, label %.preheader362.i.split

.lr.ph397.i.preheader:                            ; preds = %.preheader364.i
  br i1 %i.sm, label %.lr.ph397.i.epil.preheader, label %.lr.ph397.i

.lr.ph402.i.preheader.us:                         ; preds = %.lr.ph402.i.preheader.us.preheader, %bb.ek
  %.0256.i.us = phi i32 [ %i.ug, %bb.ek ], [ 0, %.lr.ph402.i.preheader.us.preheader ]
  %i.sr = load ptr, ptr %i.rw, align 8, !tbaa !69
  call void @sqlite3_str_append(ptr noundef %i.sr, ptr noundef nonnull %.2266.i, i32 noundef %i.rd) #45
  br label %.lr.ph402.i.us

.lr.ph402.i.us:                                   ; preds = %.lr.ph402.i.preheader.us, %bb.ej
  %.0257400.i.us = phi i32 [ %spec.select.i10.us, %bb.ej ], [ 0, %.lr.ph402.i.preheader.us ]
  %.1274399.i.us = phi i64 [ %i.ue, %bb.ej ], [ 0, %.lr.ph402.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #45
  store i32 0, ptr %i.g, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  store i32 0, ptr %i.h, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  store i32 0, ptr %i.i, align 4, !tbaa !53
  %i.ss = getelementptr inbounds nuw [24 x i8], ptr %i.sa, i64 %.1274399.i.us ; 9 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !733
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !100
  call fastcc void @qrfWrapLine(ptr noundef %i.st, i32 noundef %i.sv, i32 noundef %i.ro, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.sw = load i32, ptr %i.su, align 8, !tbaa !100
  %i.sx = load i32, ptr %i.h, align 4, !tbaa !53
  %i.sy = sub nsw i32 %i.sw, %i.sx                ; 4 uses
  %i.sz = load ptr, ptr %i.rw, align 8, !tbaa !69 ; 7 uses
  %i.ta = load i32, ptr %i.g, align 4, !tbaa !53  ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !95
  %i.td = and i8 %i.tc, 3
  switch i8 %i.td, label %.lr.ph402.i.us.unreachabledefault [
    i8 0, label %bb.ed
    i8 2, label %bb.ec
    i8 3, label %.thread24.i.i.us
    i8 1, label %.thread.i.i.us
  ]

bb.ec:                                            ; preds = %.lr.ph402.i.us
  %i.te = sdiv i32 %i.sy, 2                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.sz, i32 noundef %i.te, i8 noundef signext 32) #45
  %i.tf = load ptr, ptr %i.ss, align 8, !tbaa !733
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.sz, ptr noundef %i.tf, i32 noundef %i.ta)
  %i.tg = sub nsw i32 %i.sy, %i.te
  call void @sqlite3_str_appendchar(ptr noundef %i.sz, i32 noundef %i.tg, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

bb.ed:                                            ; preds = %.lr.ph402.i.us
  %i.th = getelementptr inbounds nuw i8, ptr %i.ss, i64 18
  %i.ti = load i8, ptr %i.th, align 2, !tbaa !734
  %.not.i324.i.us = icmp eq i8 %i.ti, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.ed, %.lr.ph402.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.sz, i32 noundef %i.sy, i8 noundef signext 32) #45
  %i.tj = load ptr, ptr %i.ss, align 8, !tbaa !733
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.sz, ptr noundef %i.tj, i32 noundef %i.ta)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.ed, %.lr.ph402.i.us
  %i.tk = load ptr, ptr %i.ss, align 8, !tbaa !733
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.sz, ptr noundef %i.tk, i32 noundef %i.ta)
  call void @sqlite3_str_appendchar(ptr noundef %i.sz, i32 noundef %i.sy, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.ec
  %i.tl = load i32, ptr %i.i, align 4, !tbaa !53
  %i.tm = load ptr, ptr %i.ss, align 8, !tbaa !733
  %i.tn = sext i32 %i.tl to i64
  %i.to = getelementptr inbounds i8, ptr %i.tm, i64 %i.tn ; 2 uses
  store ptr %i.to, ptr %i.ss, align 8, !tbaa !733
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !52
  %.not303.i.us = icmp eq i8 %i.tp, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257400.i.us, i32 1 ; 2 uses
  %i.tq = icmp slt i64 %.1274399.i.us, %i.sd
  br i1 %i.tq, label %bb.ei, label %bb.ee

bb.ee:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tr = load ptr, ptr %i.rw, align 8, !tbaa !69 ; 3 uses
  %i.ts = call i32 @sqlite3_str_length(ptr noundef %i.tr) #45 ; 3 uses
  %i.tt = call ptr @sqlite3_str_value(ptr noundef %i.tr) #45
  %i.tu = icmp sgt i32 %i.ts, 0
  br i1 %i.tu, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.ef, %bb.eg
  %.07.i.i.us = phi i32 [ %i.ua, %bb.eg ], [ %i.ts, %bb.ef ] ; 4 uses
  %i.tv = zext nneg i32 %.07.i.i.us to i64
  %i.tw = getelementptr i8, ptr %i.tt, i64 %i.tv
  %i.tx = getelementptr i8, ptr %i.tw, i64 -1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !52
  %i.tz = icmp eq i8 %i.ty, 32
  br i1 %i.tz, label %bb.eg, label %qrfRTrim.exit.i.us

bb.eg:                                            ; preds = %.lr.ph.i325.i.us
  %i.ua = add nsw i32 %.07.i.i.us, -1
  %i.ub = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.ub, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !5

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.eg, %bb.ef
  %.0.lcssa.i.i.us = phi i32 [ %i.ts, %bb.ef ], [ 0, %bb.eg ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tr, i32 noundef %.0.lcssa.i.i.us) #45
  br label %bb.eh

bb.eh:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ee
  %i.uc = load ptr, ptr %i.rw, align 8, !tbaa !69
  call void @sqlite3_str_append(ptr noundef %i.uc, ptr noundef nonnull %.2269.i, i32 noundef %i.rf) #45
  br label %bb.ej

bb.ei:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.ud = load ptr, ptr %i.rw, align 8, !tbaa !69
  call void @sqlite3_str_append(ptr noundef %i.ud, ptr noundef nonnull %.3.i, i32 noundef %i.rh) #45
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  %i.ue = add nuw nsw i64 %.1274399.i.us, 1       ; 2 uses
  %exitcond432.not.i.us = icmp eq i64 %i.ue, %i.rx
  br i1 %exitcond432.not.i.us, label %._crit_edge403.i.us, label %.lr.ph402.i.us, !llvm.loop !699

._crit_edge403.i.us:                              ; preds = %bb.ej
  %i.uf = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uf, label %.critedge314.i, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge403.i.us
  %i.ug = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
end_hunk_0
