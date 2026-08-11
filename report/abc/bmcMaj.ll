inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Exa_ManExactSynthesis:bb.a
.lr.ph.i67.2.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.preheader.i65.2.i, %middle.block196
  %indvars.iv.i68.2.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i65.2.i ], [ %n.vec188, %middle.block196 ] ; 3 uses
  %xtraiter313 = and i64 %wide.trip.count70.i.2.i, 3 ; 2 uses
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph.i67.2.i.prol.loopexit, label %.lr.ph.i67.2.i.prol

.lr.ph.i67.2.i.prol:                              ; preds = %.lr.ph.i67.2.i.preheader, %.lr.ph.i67.2.i.prol
  %indvars.iv.i68.2.i.prol = phi i64 [ %indvars.iv.next.i69.2.i.prol, %.lr.ph.i67.2.i.prol ], [ %indvars.iv.i68.2.i.ph, %.lr.ph.i67.2.i.preheader ] ; 3 uses
  %prol.iter315 = phi i64 [ %prol.iter315.next, %.lr.ph.i67.2.i.prol ], [ 0, %.lr.ph.i67.2.i.preheader ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.i68.2.i.prol ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !26
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i68.2.i.prol
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !26
  %i.ns = or i64 %i.nr, %i.np
  store i64 %i.ns, ptr %i.no, align 8, !tbaa !26
  %indvars.iv.next.i69.2.i.prol = add nuw nsw i64 %indvars.iv.i68.2.i.prol, 1 ; 2 uses
  %prol.iter315.next = add i64 %prol.iter315, 1   ; 2 uses
  %prol.iter315.cmp.not = icmp eq i64 %prol.iter315.next, %xtraiter313
  br i1 %prol.iter315.cmp.not, label %.lr.ph.i67.2.i.prol.loopexit, label %.lr.ph.i67.2.i.prol, !llvm.loop !193

.lr.ph.i67.2.i.prol.loopexit:                     ; preds = %.lr.ph.i67.2.i.prol, %.lr.ph.i67.2.i.preheader
  %indvars.iv.i68.2.i.unr = phi i64 [ %indvars.iv.i68.2.i.ph, %.lr.ph.i67.2.i.preheader ], [ %indvars.iv.next.i69.2.i.prol, %.lr.ph.i67.2.i.prol ]
  %i.nt = sub nsw i64 %indvars.iv.i68.2.i.ph, %wide.trip.count70.i.2.i
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %Abc_TtOr.exit.2.i, label %.lr.ph.i67.2.i

.lr.ph.i67.2.i:                                   ; preds = %.lr.ph.i67.2.i.prol.loopexit, %.lr.ph.i67.2.i
  %indvars.iv.i68.2.i = phi i64 [ %indvars.iv.next.i69.2.i.3, %.lr.ph.i67.2.i ], [ %indvars.iv.i68.2.i.unr, %.lr.ph.i67.2.i.prol.loopexit ] ; 6 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.i68.2.i ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !26
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i68.2.i
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !26
  %i.nz = or i64 %i.ny, %i.nw
  store i64 %i.nz, ptr %i.nv, align 8, !tbaa !26
  %indvars.iv.next.i69.2.i = add nuw nsw i64 %indvars.iv.i68.2.i, 1 ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i69.2.i ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !26
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i69.2.i
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !26
  %i.oe = or i64 %i.od, %i.ob
  store i64 %i.oe, ptr %i.oa, align 8, !tbaa !26
  %indvars.iv.next.i69.2.i.1 = add nuw nsw i64 %indvars.iv.i68.2.i, 2 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i69.2.i.1 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !26
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i69.2.i.1
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !26
  %i.oj = or i64 %i.oi, %i.og
  store i64 %i.oj, ptr %i.of, align 8, !tbaa !26
  %indvars.iv.next.i69.2.i.2 = add nuw nsw i64 %indvars.iv.i68.2.i, 3 ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i69.2.i.2 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !26
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i69.2.i.2
  %i.on = load i64, ptr %i.om, align 8, !tbaa !26
  %i.oo = or i64 %i.on, %i.ol
  store i64 %i.oo, ptr %i.ok, align 8, !tbaa !26
  %indvars.iv.next.i69.2.i.3 = add nuw nsw i64 %indvars.iv.i68.2.i, 4 ; 2 uses
  %exitcond.not.i70.2.i.3 = icmp eq i64 %indvars.iv.next.i69.2.i.3, %wide.trip.count70.i.2.i
  br i1 %exitcond.not.i70.2.i.3, label %Abc_TtOr.exit.2.i, label %.lr.ph.i67.2.i, !llvm.loop !194

Abc_TtOr.exit.2.i:                                ; preds = %.lr.ph.i67.2.i.prol.loopexit, %.lr.ph.i67.2.i, %middle.block196, %.preheader.i.2.i, %Abc_TtOr.exit.1.i
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %i.op = sext i32 %.pre.i to i64
  %i.oq = icmp slt i64 %indvars.iv.next.i62, %i.op
  %indvar.next = add i64 %indvar, 1
  br i1 %i.oq, label %bb.x, label %._crit_edge.loopexit.i, !llvm.loop !195

._crit_edge.loopexit.i:                           ; preds = %Abc_TtOr.exit.2.i
  %.pre109.i = load i32, ptr %i.an, align 8, !tbaa !92
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.w
  %i.or = phi i32 [ %i.ci, %bb.w ], [ %.pre109.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.lcssa85.i = phi i32 [ %i.cj, %bb.w ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %i.os = add nsw i32 %.lcssa85.i, -1
  %.val.i = load i32, ptr %i.as, align 4, !tbaa !87
  %.val47.i = load ptr, ptr %i.at, align 8, !tbaa !91
  %i.ot = getelementptr i8, ptr %.val47.i, i64 8
  %.val47.val.i = load ptr, ptr %i.ot, align 8, !tbaa !22
  %i.ou = mul nsw i32 %.val.i, %i.os
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %.val47.val.i, i64 %i.ov
  %i.ox = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.oy = icmp slt i32 %i.or, 7
  %i.oz = add nsw i32 %i.or, -6
  %i.pa = shl nuw i32 1, %i.oz
  %i.pb = select i1 %i.oy, i32 1, i32 %i.pa       ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %.lr.ph.preheader.i71.i, label %.loopexit.thread

.lr.ph.preheader.i71.i:                           ; preds = %._crit_edge.i
  %wide.trip.count.i72.i = zext nneg i32 %i.pb to i64
  br label %.lr.ph.i73.i

.lr.ph.i73.i:                                     ; preds = %bb.ad, %.lr.ph.preheader.i71.i
  %indvars.iv.i74.i = phi i64 [ 0, %.lr.ph.preheader.i71.i ], [ %indvars.iv.next.i76.i, %bb.ad ] ; 4 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv.i74.i
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !26 ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv.i74.i
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !26 ; 2 uses
  %.not.i75.i = icmp eq i64 %i.pe, %i.pg
  br i1 %.not.i75.i, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %.lr.ph.i73.i
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i74.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i76.i, %wide.trip.count.i72.i
  br i1 %exitcond.not.i77.i, label %.loopexit.thread, label %.lr.ph.i73.i, !llvm.loop !196

.loopexit.thread:                                 ; preds = %._crit_edge.i, %bb.ad
  store i32 -1, ptr %i.c, align 4, !tbaa !38
  br label %.thread118

.loopexit:                                        ; preds = %.lr.ph.i73.i
  %i.ph = trunc nuw nsw i64 %indvars.iv.i74.i to i32
  %i.pi = shl nsw i32 %i.ph, 6
  %i.pj = xor i64 %i.pg, %i.pe                    ; 3 uses
  %i.pk = and i64 %i.pj, 4294967295
  %i.pl = icmp eq i64 %i.pk, 0                    ; 2 uses
  %i.pm = lshr exact i64 %i.pj, 32
  %spec.select.i.i.i = select i1 %i.pl, i64 %i.pm, i64 %i.pj ; 3 uses
  %spec.select27.i.i.i = select i1 %i.pl, i32 32, i32 0 ; 2 uses
  %i.pn = and i64 %spec.select.i.i.i, 65535
  %i.po = icmp eq i64 %i.pn, 0                    ; 2 uses
  %i.pp = or disjoint i32 %spec.select27.i.i.i, 16
  %i.pq = lshr exact i64 %spec.select.i.i.i, 16
  %.121.i.i.i = select i1 %i.po, i64 %i.pq, i64 %spec.select.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.po, i32 %i.pp, i32 %spec.select27.i.i.i ; 2 uses
  %i.pr = and i64 %.121.i.i.i, 255
  %i.ps = icmp eq i64 %i.pr, 0                    ; 2 uses
  %i.pt = or disjoint i32 %.1.i.i.i, 8
  %i.pu = lshr exact i64 %.121.i.i.i, 8
  %.222.i.i.i = select i1 %i.ps, i64 %i.pu, i64 %.121.i.i.i ; 3 uses
  %.2.i.i.i = select i1 %i.ps, i32 %i.pt, i32 %.1.i.i.i ; 2 uses
  %i.pv = and i64 %.222.i.i.i, 15
  %i.pw = icmp eq i64 %i.pv, 0                    ; 2 uses
  %i.px = or disjoint i32 %.2.i.i.i, 4
  %i.py = lshr exact i64 %.222.i.i.i, 4
  %.323.i.i.i = select i1 %i.pw, i64 %i.py, i64 %.222.i.i.i ; 3 uses
  %.3.i.i.i = select i1 %i.pw, i32 %i.px, i32 %.2.i.i.i ; 2 uses
  %i.pz = and i64 %.323.i.i.i, 3
  %i.qa = icmp eq i64 %i.pz, 0                    ; 2 uses
  %i.qb = add nuw nsw i32 %.3.i.i.i, 2
  %i.qc = lshr exact i64 %.323.i.i.i, 2
  %.424.i.i.i = select i1 %i.qa, i64 %i.qc, i64 %.323.i.i.i
  %.4.i.i.i = select i1 %i.qa, i32 %i.qb, i32 %.3.i.i.i
  %i.qd = trunc i64 %.424.i.i.i to i32
  %i.qe = and i32 %i.qd, 1
  %i.qf = xor i32 %i.qe, 1
  %.5.i.i.i = add i32 %.4.i.i.i, %i.pi
  %i.qg = add i32 %.5.i.i.i, %i.qf                ; 2 uses
  store i32 %i.qg, ptr %i.c, align 4, !tbaa !38
  %i.qh = add nuw nsw i32 %.042134, 1
  %.not47 = icmp eq i32 %i.qg, -1
  br i1 %.not47, label %.thread118, label %bb.h, !llvm.loop !197

.loopexit127:                                     ; preds = %Abc_Clock.exit56, %bb.s, %bb.t, %bb.v, %bb.u
  %.pr = load i32, ptr %i.c, align 4, !tbaa !38
  %i.qi = icmp eq i32 %.pr, -1
  br i1 %i.qi, label %.thread118, label %bb.be

.thread118:                                       ; preds = %.loopexit, %.loopexit.thread, %bb.g, %.loopexit127
  %i.qj = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 168
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !198 ; 2 uses
  %.not.i63 = icmp eq ptr %i.ql, null
  br i1 %.not.i63, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread118
  call void @free(ptr noundef nonnull %i.ql) #41
  %i.qm = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 168
  store ptr null, ptr %i.qn, align 8, !tbaa !198
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread118
  %i.qo = phi ptr [ %i.qj, %.thread118 ], [ %i.qm, %bb.ae ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !98
  %i.qr = shl nsw i32 %i.qq, 1
  %i.qs = sext i32 %i.qr to i64
  %i.qt = shl nsw i64 %i.qs, 2
  %i.qu = call noalias ptr @malloc(i64 noundef %i.qt) #38
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 168
  store ptr %i.qu, ptr %i.qv, align 8, !tbaa !198
  %i.qw = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !92 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 11 uses
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !90 ; 2 uses
  %i.ra = icmp slt i32 %i.qx, %i.qz
  br i1 %i.ra, label %.preheader.lr.ph.i, label %Exa_ManSaveSolution.exit

.preheader.lr.ph.i:                               ; preds = %bb.af
  %i.rb = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.rc = getelementptr inbounds nuw i8, ptr %i.l, i64 33080 ; 2 uses
  %i.rd = sext i32 %i.qx to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %Exa_ManFindFanin.exit.1.i67, %.preheader.lr.ph.i
  %i.re = phi ptr [ %i.qo, %.preheader.lr.ph.i ], [ %i.si, %Exa_ManFindFanin.exit.1.i67 ]
  %i.rf = phi i32 [ %i.qz, %.preheader.lr.ph.i ], [ %i.sl, %Exa_ManFindFanin.exit.1.i67 ] ; 2 uses
  %indvars.iv.i65.a = phi i64 [ %i.rd, %.preheader.lr.ph.i ], [ %indvars.iv.next27.i, %Exa_ManFindFanin.exit.1.i67 ] ; 2 uses
  %.021.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next.1.i, %Exa_ManFindFanin.exit.1.i67 ] ; 3 uses
  %i.rg = getelementptr inbounds [512 x i8], ptr %i.rb, i64 %indvars.iv.i65.a ; 2 uses
  %i.rh = icmp sgt i32 %i.rf, 0
  br i1 %i.rh, label %.lr.ph.i.i80, label %Exa_ManFindFanin.exit.i66

.lr.ph.i.i80:                                     ; preds = %.preheader.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 256
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i.i80
  %i.rj = phi i32 [ %i.rf, %.lr.ph.i.i80 ], [ %i.rp, %bb.ai ]
  %indvars.iv.i.i81 = phi i64 [ 0, %.lr.ph.i.i80 ], [ %indvars.iv.next.i.i88, %bb.ai ] ; 3 uses
  %.022.i.i82 = phi i32 [ -1, %.lr.ph.i.i80 ], [ %.1.i.i87, %bb.ai ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv.i.i81
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !38 ; 2 uses
  %.not.i.i83 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.i83, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.rm = load ptr, ptr %i.rc, align 8, !tbaa !112
  %i.rn = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.rm, i32 noundef %i.rl) #41
  %.not18.not.i.i84 = icmp eq i32 %i.rn, 0
  %i.ro = trunc nuw nsw i64 %indvars.iv.i.i81 to i32
  %spec.select19.i.i85 = select i1 %.not18.not.i.i84, i32 %.022.i.i82, i32 %i.ro
  %.pre.i.i86 = load i32, ptr %i.qy, align 8, !tbaa !90
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.rp = phi i32 [ %i.rj, %bb.ag ], [ %.pre.i.i86, %bb.ah ] ; 2 uses
  %.1.i.i87 = phi i32 [ %.022.i.i82, %bb.ag ], [ %spec.select19.i.i85, %bb.ah ] ; 2 uses
  %indvars.iv.next.i.i88 = add nuw nsw i64 %indvars.iv.i.i81, 1 ; 2 uses
  %i.rq = sext i32 %i.rp to i64
  %i.rr = icmp slt i64 %indvars.iv.next.i.i88, %i.rq
  br i1 %i.rr, label %bb.ag, label %Exa_ManFindFanin.exit.loopexit.i, !llvm.loop !124

Exa_ManFindFanin.exit.loopexit.i:                 ; preds = %bb.ai
  %.pre.i89 = load ptr, ptr %i.l, align 8, !tbaa !100
  br label %Exa_ManFindFanin.exit.i66

Exa_ManFindFanin.exit.i66:                        ; preds = %Exa_ManFindFanin.exit.loopexit.i, %.preheader.i
  %i.rs = phi ptr [ %i.re, %.preheader.i ], [ %.pre.i89, %Exa_ManFindFanin.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ -1, %.preheader.i ], [ %.1.i.i87, %Exa_ManFindFanin.exit.loopexit.i ]
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 168
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !198 ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.021.i
  store i32 %.0.lcssa.i.i, ptr %i.rv, align 4, !tbaa !38
  %i.rw = load i32, ptr %i.qy, align 8, !tbaa !90 ; 2 uses
  %i.rx = icmp sgt i32 %i.rw, 0
  br i1 %i.rx, label %.lr.ph.i.1.i69, label %Exa_ManFindFanin.exit.1.i67

.lr.ph.i.1.i69:                                   ; preds = %Exa_ManFindFanin.exit.i66, %bb.ak
  %i.ry = phi i32 [ %i.se, %bb.ak ], [ %i.rw, %Exa_ManFindFanin.exit.i66 ]
  %indvars.iv.i.1.i70 = phi i64 [ %indvars.iv.next.i.1.i77, %bb.ak ], [ 0, %Exa_ManFindFanin.exit.i66 ] ; 3 uses
  %.022.i.1.i71 = phi i32 [ %.1.i.1.i76, %bb.ak ], [ -1, %Exa_ManFindFanin.exit.i66 ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.i.1.i70
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !38 ; 2 uses
  %.not.i.1.i72 = icmp eq i32 %i.sa, 0
  br i1 %.not.i.1.i72, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.1.i69
  %i.sb = load ptr, ptr %i.rc, align 8, !tbaa !112
  %i.sc = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.sb, i32 noundef %i.sa) #41
  %.not18.not.i.1.i73 = icmp eq i32 %i.sc, 0
  %i.sd = trunc nuw nsw i64 %indvars.iv.i.1.i70 to i32
  %spec.select19.i.1.i74 = select i1 %.not18.not.i.1.i73, i32 %.022.i.1.i71, i32 %i.sd
  %.pre.i.1.i75 = load i32, ptr %i.qy, align 8, !tbaa !90
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i.1.i69
  %i.se = phi i32 [ %i.ry, %.lr.ph.i.1.i69 ], [ %.pre.i.1.i75, %bb.aj ] ; 2 uses
  %.1.i.1.i76 = phi i32 [ %.022.i.1.i71, %.lr.ph.i.1.i69 ], [ %spec.select19.i.1.i74, %bb.aj ] ; 2 uses
  %indvars.iv.next.i.1.i77 = add nuw nsw i64 %indvars.iv.i.1.i70, 1 ; 2 uses
  %i.sf = sext i32 %i.se to i64
  %i.sg = icmp slt i64 %indvars.iv.next.i.1.i77, %i.sf
  br i1 %i.sg, label %.lr.ph.i.1.i69, label %Exa_ManFindFanin.exit.loopexit.1.i78, !llvm.loop !124

Exa_ManFindFanin.exit.loopexit.1.i78:             ; preds = %bb.ak
  %.pre29.i = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %.pre29.i, i64 168
  %.pre30.i = load ptr, ptr %.phi.trans.insert.i79, align 8, !tbaa !198
  br label %Exa_ManFindFanin.exit.1.i67

Exa_ManFindFanin.exit.1.i67:                      ; preds = %Exa_ManFindFanin.exit.loopexit.1.i78, %Exa_ManFindFanin.exit.i66
  %i.sh = phi ptr [ %i.ru, %Exa_ManFindFanin.exit.i66 ], [ %.pre30.i, %Exa_ManFindFanin.exit.loopexit.1.i78 ]
  %i.si = phi ptr [ %i.rs, %Exa_ManFindFanin.exit.i66 ], [ %.pre29.i, %Exa_ManFindFanin.exit.loopexit.1.i78 ]
  %.0.lcssa.i.1.i68 = phi i32 [ -1, %Exa_ManFindFanin.exit.i66 ], [ %.1.i.1.i76, %Exa_ManFindFanin.exit.loopexit.1.i78 ]
  %indvars.iv.next.1.i = add nuw nsw i64 %.021.i, 2
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %.021.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  store i32 %.0.lcssa.i.1.i68, ptr %i.sk, align 4, !tbaa !38
  %indvars.iv.next27.i = add nsw i64 %indvars.iv.i65.a, 1 ; 2 uses
  %i.sl = load i32, ptr %i.qy, align 8, !tbaa !90 ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next27.i, %i.sm
  br i1 %i.sn, label %.preheader.i, label %Exa_ManSaveSolution.exit, !llvm.loop !199

Exa_ManSaveSolution.exit:                         ; preds = %Exa_ManFindFanin.exit.1.i67, %bb.af
  %i.so = load i32, ptr %i.ac, align 8, !tbaa !108
  %.not53 = icmp eq i32 %i.so, 0
  br i1 %.not53, label %bb.al, label %bb.be

bb.al:                                            ; preds = %Exa_ManSaveSolution.exit
  call void @Exa_ManPrintSolution(ptr noundef nonnull %i.l, i32 noundef %.041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.sp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44) ; 0 uses
  %i.sq = load i32, ptr %i.qw, align 8, !tbaa !92 ; 2 uses
  %i.sr = load i32, ptr %i.qy, align 8, !tbaa !90 ; 2 uses
  %i.ss = icmp slt i32 %i.sq, %i.sr
  br i1 %i.ss, label %.lr.ph.i91, label %Exa_ManPrintPerm.exit

.lr.ph.i91:                                       ; preds = %bb.al
  %i.st = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.su = getelementptr inbounds nuw i8, ptr %i.l, i64 33080 ; 2 uses
  %nul.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.sv = sext i32 %i.sq to i64
  br label %bb.am

bb.am:                                            ; preds = %Exa_ManObjName.exit.1.i, %.lr.ph.i91
  %i.sw = phi i32 [ %i.sr, %.lr.ph.i91 ], [ %i.us, %Exa_ManObjName.exit.1.i ]
  %indvars.iv.i92 = phi i64 [ %i.sv, %.lr.ph.i91 ], [ %indvars.iv.next.i93, %Exa_ManObjName.exit.1.i ] ; 3 uses
  %i.sx = load i32, ptr %i.qw, align 8, !tbaa !92
  %i.sy = sext i32 %i.sx to i64
  %i.sz = icmp sgt i64 %indvars.iv.i92, %i.sy
  br i1 %i.sz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %putchar.i = call i32 @putchar(i32 95)          ; 0 uses
  %.pre.i114 = load i32, ptr %i.qy, align 8, !tbaa !90
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ta = phi i32 [ %.pre.i114, %bb.an ], [ %i.sw, %bb.am ] ; 2 uses
  %i.tb = getelementptr inbounds [512 x i8], ptr %i.st, i64 %indvars.iv.i92 ; 2 uses
  %i.tc = icmp sgt i32 %i.ta, 0
  br i1 %i.tc, label %.lr.ph.i.i104, label %Exa_ManFindFanin.exit.thread.i

.lr.ph.i.i104:                                    ; preds = %bb.ao
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 256
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph.i.i104
  %i.te = phi i32 [ %i.ta, %.lr.ph.i.i104 ], [ %i.tk, %bb.ar ]
  %indvars.iv.i.i105 = phi i64 [ 0, %.lr.ph.i.i104 ], [ %indvars.iv.next.i.i112, %bb.ar ] ; 3 uses
  %.022.i.i106 = phi i32 [ -1, %.lr.ph.i.i104 ], [ %.1.i.i111, %bb.ar ] ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv.i.i105
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !38 ; 2 uses
  %.not.i.i107 = icmp eq i32 %i.tg, 0
  br i1 %.not.i.i107, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.th = load ptr, ptr %i.su, align 8, !tbaa !112
  %i.ti = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.th, i32 noundef %i.tg) #41
  %.not18.not.i.i108 = icmp eq i32 %i.ti, 0
  %i.tj = trunc nuw nsw i64 %indvars.iv.i.i105 to i32
  %spec.select19.i.i109 = select i1 %.not18.not.i.i108, i32 %.022.i.i106, i32 %i.tj
  %.pre.i.i110 = load i32, ptr %i.qy, align 8, !tbaa !90
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.tk = phi i32 [ %i.te, %bb.ap ], [ %.pre.i.i110, %bb.aq ] ; 2 uses
  %.1.i.i111 = phi i32 [ %.022.i.i106, %bb.ap ], [ %spec.select19.i.i109, %bb.aq ] ; 6 uses
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i105, 1 ; 2 uses
  %i.tl = sext i32 %i.tk to i64
  %i.tm = icmp slt i64 %indvars.iv.next.i.i112, %i.tl
  br i1 %i.tm, label %bb.ap, label %Exa_ManFindFanin.exit.i113, !llvm.loop !124

Exa_ManFindFanin.exit.i113:                       ; preds = %bb.ar
  %i.tn = icmp slt i32 %.1.i.i111, 0
  br i1 %i.tn, label %Exa_ManFindFanin.exit.thread.i, label %bb.as

Exa_ManFindFanin.exit.thread.i:                   ; preds = %Exa_ManFindFanin.exit.i113, %bb.ao
  store i16 42, ptr %i.a, align 16
  br label %Exa_ManObjName.exit.i

bb.as:                                            ; preds = %Exa_ManFindFanin.exit.i113
  %i.to = load i32, ptr %i.qw, align 8, !tbaa !92 ; 3 uses
  %i.tp = icmp slt i32 %.1.i.i111, %i.to
  br i1 %i.tp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tq = trunc i32 %.1.i.i111 to i8
  %char16.i.i = add i8 %i.tq, 97
  store i8 %char16.i.i, ptr %i.a, align 16
  store i8 0, ptr %nul.i.i, align 1
  br label %Exa_ManObjName.exit.i

bb.au:                                            ; preds = %bb.as
  %i.tr = sub nsw i32 %.1.i.i111, %i.to           ; 2 uses
  %i.ts = icmp slt i32 %i.tr, 26
  br i1 %i.ts, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.tt = add nuw nsw i32 %.1.i.i111, 65
  %i.tu = sub i32 %i.tt, %i.to
  %char.i.i = trunc i32 %i.tu to i8
  store i8 %char.i.i, ptr %i.a, align 16
  store i8 0, ptr %nul.i.i, align 1
  br label %Exa_ManObjName.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.tv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %i.tr) #41 ; 0 uses
  br label %Exa_ManObjName.exit.i

Exa_ManObjName.exit.i:                            ; preds = %bb.aw, %bb.av, %bb.at, %Exa_ManFindFanin.exit.thread.i
  %i.tw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.131, ptr noundef nonnull %i.a) ; 0 uses
  %i.tx = load i32, ptr %i.qy, align 8, !tbaa !90 ; 2 uses
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %.lr.ph.i.1.i94, label %Exa_ManFindFanin.exit.thread.1.i

.lr.ph.i.1.i94:                                   ; preds = %Exa_ManObjName.exit.i, %bb.ay
  %i.tz = phi i32 [ %i.uf, %bb.ay ], [ %i.tx, %Exa_ManObjName.exit.i ]
  %indvars.iv.i.1.i95 = phi i64 [ %indvars.iv.next.i.1.i102, %bb.ay ], [ 0, %Exa_ManObjName.exit.i ] ; 3 uses
  %.022.i.1.i96 = phi i32 [ %.1.i.1.i101, %bb.ay ], [ -1, %Exa_ManObjName.exit.i ] ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv.i.1.i95
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !38 ; 2 uses
  %.not.i.1.i97 = icmp eq i32 %i.ub, 0
  br i1 %.not.i.1.i97, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.1.i94
  %i.uc = load ptr, ptr %i.su, align 8, !tbaa !112
  %i.ud = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.uc, i32 noundef %i.ub) #41
  %.not18.not.i.1.i98 = icmp eq i32 %i.ud, 0
  %i.ue = trunc nuw nsw i64 %indvars.iv.i.1.i95 to i32
  %spec.select19.i.1.i99 = select i1 %.not18.not.i.1.i98, i32 %.022.i.1.i96, i32 %i.ue
  %.pre.i.1.i100 = load i32, ptr %i.qy, align 8, !tbaa !90
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i.1.i94
  %i.uf = phi i32 [ %i.tz, %.lr.ph.i.1.i94 ], [ %.pre.i.1.i100, %bb.ax ] ; 2 uses
  %.1.i.1.i101 = phi i32 [ %.022.i.1.i96, %.lr.ph.i.1.i94 ], [ %spec.select19.i.1.i99, %bb.ax ] ; 6 uses
  %indvars.iv.next.i.1.i102 = add nuw nsw i64 %indvars.iv.i.1.i95, 1 ; 2 uses
  %i.ug = sext i32 %i.uf to i64
  %i.uh = icmp slt i64 %indvars.iv.next.i.1.i102, %i.ug
  br i1 %i.uh, label %.lr.ph.i.1.i94, label %Exa_ManFindFanin.exit.1.i103, !llvm.loop !124

Exa_ManFindFanin.exit.1.i103:                     ; preds = %bb.ay
  %i.ui = icmp slt i32 %.1.i.1.i101, 0
  br i1 %i.ui, label %Exa_ManFindFanin.exit.thread.1.i, label %bb.az

bb.az:                                            ; preds = %Exa_ManFindFanin.exit.1.i103
  %i.uj = load i32, ptr %i.qw, align 8, !tbaa !92 ; 3 uses
  %i.uk = icmp slt i32 %.1.i.1.i101, %i.uj
  br i1 %i.uk, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ul = sub nsw i32 %.1.i.1.i101, %i.uj         ; 2 uses
  %i.um = icmp slt i32 %i.ul, 26
  br i1 %i.um, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.un = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %i.ul) #41 ; 0 uses
  br label %Exa_ManObjName.exit.1.i

bb.bc:                                            ; preds = %bb.ba
  %i.uo = add nuw nsw i32 %.1.i.1.i101, 65
  %i.up = sub i32 %i.uo, %i.uj
  %char.i.1.i = trunc i32 %i.up to i8
  store i8 %char.i.1.i, ptr %i.a, align 16
  store i8 0, ptr %nul.i.i, align 1
  br label %Exa_ManObjName.exit.1.i

bb.bd:                                            ; preds = %bb.az
  %i.uq = trunc i32 %.1.i.1.i101 to i8
  %char16.i.1.i = add i8 %i.uq, 97
  store i8 %char16.i.1.i, ptr %i.a, align 16
  store i8 0, ptr %nul.i.i, align 1
  br label %Exa_ManObjName.exit.1.i

Exa_ManFindFanin.exit.thread.1.i:                 ; preds = %Exa_ManFindFanin.exit.1.i103, %Exa_ManObjName.exit.i
  store i16 42, ptr %i.a, align 16
  br label %Exa_ManObjName.exit.1.i

Exa_ManObjName.exit.1.i:                          ; preds = %Exa_ManFindFanin.exit.thread.1.i, %bb.bd, %bb.bc, %bb.bb
  %i.ur = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.131, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next.i93 = add nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %i.us = load i32, ptr %i.qy, align 8, !tbaa !90 ; 2 uses
  %i.ut = sext i32 %i.us to i64
  %i.uu = icmp slt i64 %indvars.iv.next.i93, %i.ut
  br i1 %i.uu, label %bb.am, label %Exa_ManPrintPerm.exit, !llvm.loop !200

Exa_ManPrintPerm.exit:                            ; preds = %Exa_ManObjName.exit.1.i, %bb.al
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @Exa_ManDumpBlif(ptr noundef nonnull %i.l, i32 noundef %.041)
  br label %bb.be

bb.be:                                            ; preds = %Exa_ManSaveSolution.exit, %Exa_ManPrintPerm.exit, %.loopexit127
  %.044 = phi i32 [ 0, %.loopexit127 ], [ 1, %Exa_ManPrintPerm.exit ], [ 1, %Exa_ManSaveSolution.exit ] ; 2 uses
  call void @Exa_ManFree(ptr noundef %i.l)
  %i.uv = load i32, ptr %i.ac, align 8, !tbaa !108
  %.not54 = icmp eq i32 %i.uv, 0
  br i1 %.not54, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
end_hunk_0
begin_hunk_1_@Exa3_ChooseInputVars:bb.a
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %indvars.iv26.i ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4        ; 2 uses
  %.val1620.i = load i32, ptr %i.u, align 4, !tbaa !45
  %i.v = icmp sgt i32 %.val1620.i, 0
  br i1 %i.v, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val17.i = load ptr, ptr %i.w, align 8, !tbaa !49 ; 5 uses
  %.val16.i = load i32, ptr %i.u, align 4, !tbaa !45 ; 2 uses
  %i.x = call i32 @llvm.smax.i32(i32 %.val16.i, i32 1)
  %smax = zext nneg i32 %i.x to i64               ; 2 uses
  %xtraiter = and i64 %smax, 3                    ; 3 uses
  %i.y = icmp slt i32 %.val16.i, 4
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %smax, 2147483644
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !38
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !38
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !38
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !38
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !38
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !38
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !38
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !38
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.critedge2.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !207

.critedge2.i.loopexit.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %.critedge2.i.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i.epil
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !38
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2.i, label %bb.i, !llvm.loop !209

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit.unr-lcssa, %bb.i, %bb.g
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next27.i, %i.s
  br i1 %exitcond.not, label %Exa3_CountInputVars.exit, label %bb.g, !llvm.loop !208

Exa3_CountInputVars.exit:                         ; preds = %.critedge2.i, %Vec_IntStart.exit.i
  br i1 %i.l, label %.lr.ph.i22, label %Vec_IntFind.exit

.lr.ph.i22:                                       ; preds = %Exa3_CountInputVars.exit, %bb.j
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %bb.j ], [ 0, %Exa3_CountInputVars.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i23
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !38
  %.not53 = icmp eq i32 %i.bh, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i22
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit, label %.lr.ph.i22, !llvm.loop !210

Vec_IntFind.exit:                                 ; preds = %Exa3_CountInputVars.exit, %bb.j
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.thread28, label %Vec_IntFree.exit.thread45

Vec_IntFree.exit.thread45:                        ; preds = %Vec_IntFind.exit
  call void @free(ptr noundef nonnull %i.o) #41
  br label %.thread28

bb.k:                                             ; preds = %.lr.ph.i22
  call void @free(ptr noundef nonnull %i.o) #41
  %i.bi = load i32, ptr %i.m, align 8, !tbaa !43  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i.i = load ptr, ptr %i.bk, align 8, !tbaa !44 ; 3 uses
  br i1 %i.bj, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %i.bl = zext nneg i32 %i.bi to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.m
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.bo, null
  br i1 %.not15.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef nonnull %i.bo) #41
  store ptr null, ptr %i.bn, align 8, !tbaa !49
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next.i.i, %i.bl
  br i1 %exitcond32.not, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !56

._crit_edge.i.i:                                  ; preds = %bb.k
  %.not.i.i25 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i25, label %.thread27, label %.loopexit

.loopexit:                                        ; preds = %bb.m, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i) #41
  br label %.thread27

.thread27:                                        ; preds = %._crit_edge.i.i, %.loopexit
  call void @free(ptr noundef nonnull %i.m) #41
  %i.bp = add nuw nsw i32 %.01731, 1              ; 2 uses
  %exitcond33.not = icmp eq i32 %i.bp, 1000
  br i1 %exitcond33.not, label %.thread28, label %bb.e, !llvm.loop !211

.thread28:                                        ; preds = %.thread27, %Vec_IntFind.exit, %Vec_IntFree.exit.thread45
  %i.bq = phi ptr [ %i.m, %Vec_IntFind.exit ], [ %i.m, %Vec_IntFree.exit.thread45 ], [ null, %.thread27 ]
  ret ptr %i.bq
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Exa3_ChooseInputVars2(i32 %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.b = add i32 %1, -1
  %or.cond.i.i = icmp ult i32 %i.b, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %1 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.a, align 8, !tbaa !43
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %spec.store.select.i.i to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 16) #40
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !44
  store i32 %1, ptr %i.f, align 4, !tbaa !40
  %i.h = icmp sgt i32 %1, 0
  %i.i = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %Vec_WecStart.exit
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %._crit_edge ] ; 2 uses
  %.01724 = phi i32 [ 0, %.lr.ph.preheader ], [ %7, %._crit_edge ] ; 2 uses
  %4 = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv27 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %6 = sext i32 %.01724 to i64
  %7 = add i32 %2, %.01724                        ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.n
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond30.not, label %.critedge, label %.lr.ph, !llvm.loop !212

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !120   ; 2 uses
  switch i8 %i.l, label %bb.d [
    i8 95, label %bb.n
    i8 42, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -97
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi i32 [ %i.n, %bb.d ], [ -1, %bb.c ]
  %i.p = load i32, ptr %5, align 4, !tbaa !45     ; 7 uses
  %i.q = load i32, ptr %4, align 8, !tbaa !48
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.w = icmp samesign ult i32 %i.p, 1073741823
  %i.x = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.w, i32 %i.x, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  %.pre31 = load ptr, ptr %i.j, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %.pre31, null
  %i.y = zext nneg i32 %spec.select.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %.pre31, i64 noundef %i.z) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %i.ac = phi ptr [ %i.v, %bb.i ], [ %i.u, %bb.h ], [ %i.aa, %bb.l ], [ %i.ab, %bb.m ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ]
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !49
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !48
  %.pre32 = load i32, ptr %5, align 4, !tbaa !45
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.ad = phi i32 [ %i.p, %.Vec_IntPush.exit_crit_edge ], [ %i.p, %bb.j ], [ %.pre32, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre31, %bb.j ], [ %i.ac, %Vec_IntGrow.exit11.sink.split.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %5, align 4, !tbaa !45
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  store i32 %i.o, ptr %i.ah, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !213

.critedge:                                        ; preds = %._crit_edge, %Vec_WecStart.exit
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Exa3_ManPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !38
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %1) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !214
  call void @Extra_PrintBinary(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.e) #41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 98648 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217
  %i.h = call i32 @bmcg_sat_solver_varnum(ptr noundef %i.g) #41
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.h) ; 0 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !217
  %i.k = call i32 @bmcg_sat_solver_clausenum(ptr noundef %i.j) #41
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !217
  %i.n = call i32 @bmcg_sat_solver_conflictnum(ptr noundef %i.m) #41
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.n) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.12)
  %i.p = sitofp i64 %3 to double
  %i.q = fdiv double %i.p, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.138, double noundef %i.q)
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Exa3_ManExactSynthesis(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [132 x i8], align 16              ; 5 uses
  %i.c = alloca [160 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = alloca [132 x i8], align 16              ; 5 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [1000 x i8], align 16             ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.h = alloca [6 x ptr], align 16               ; 7 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.i = alloca [3 x i32], align 4                ; 14 uses
  %i.j = alloca [16 x i32], align 16              ; 15 uses
  %i.k = alloca [16 x i32], align 16              ; 11 uses
  %i.l = alloca [16 x i32], align 16              ; 15 uses
  %i.m = alloca [64 x i32], align 16              ; 20 uses
  %i.n = alloca [2 x i32], align 4                ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.o = alloca [64 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.p = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #41
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %5, align 8, !tbaa !72
  %i.s = mul nsw i64 %i.r, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !74
  %i.v = sdiv i64 %i.u, 1000
  %i.w = add nsw i64 %i.v, %i.s
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !218  ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.z = load i32, ptr %0, align 8, !tbaa !109    ; 12 uses
  %i.aa = icmp slt i32 %i.z, 7
  %i.ab = add nsw i32 %i.z, -6
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = select i1 %i.aa, i32 1, i32 %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = call noalias ptr @calloc(i64 noundef %i.ae, i64 noundef 8) #40 ; 7 uses
  %i.ag = shl nuw i32 1, %i.z                     ; 3 uses
  %.not.i = icmp eq i32 %i.z, 31
  br i1 %.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.ah = icmp sgt i32 %i.z, 0
  br i1 %i.ah, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %smax22.i = call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %min.iters.check = icmp ult i32 %i.z, 8
  %n.vec = and i32 %i.z, 2147483640               ; 3 uses
  %cmp.n = icmp eq i32 %i.z, %n.vec
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.e, %.preheader.us.preheader.i
  %.018.us.i = phi i32 [ %i.bc, %bb.e ], [ 0, %.preheader.us.preheader.i ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.018.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi791 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.aj = lshr <4 x i32> %broadcast.splat, %step.add
  %i.ak = and <4 x i32> %i.ai, splat (i32 1)
  %i.al = and <4 x i32> %i.aj, splat (i32 1)
  %i.am = add <4 x i32> %i.ak, %vec.phi           ; 2 uses
  %i.an = add <4 x i32> %i.al, %vec.phi791        ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.ao = icmp eq i32 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %.01417.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %i.ap, %middle.block ]
  %.01516.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01417.us.i = phi i32 [ %i.as, %scalar.ph ], [ %.01417.us.i.ph, %scalar.ph.preheader ]
  %.01516.us.i = phi i32 [ %i.at, %scalar.ph ], [ %.01516.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aq = lshr i32 %.018.us.i, %.01516.us.i
  %i.ar = and i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, %.01417.us.i     ; 2 uses
  %i.at = add nuw nsw i32 %.01516.us.i, 1         ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.at, %i.z
  br i1 %exitcond21.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !220

bb.d:                                             ; preds = %._crit_edge.us.i
  %i.au = and i32 %.018.us.i, 63
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = lshr i32 %.018.us.i, 6
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !26
  %i.bb = xor i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.i, %bb.d
  %i.bc = add nuw nsw i32 %.018.us.i, 1           ; 2 uses
  %exitcond23.not.i = icmp eq i32 %i.bc, %smax22.i
  br i1 %exitcond23.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.us.i, !llvm.loop !221

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa790 = phi i32 [ %i.ap, %middle.block ], [ %i.as, %scalar.ph ]
  %i.bd = zext nneg i32 %.lcssa790 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !120
  %i.bg = icmp eq i8 %i.bf, 49
  br i1 %i.bg, label %bb.d, label %bb.e

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.bh = load i8, ptr %i.y, align 1, !tbaa !120
  %i.bi = icmp eq i8 %i.bh, 49
  br i1 %i.bi, label %.preheader.preheader.i, label %Abc_TtSymFunGenerate.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ag, i32 1) ; 3 uses
  %xtraiter = and i32 %smax.i, 1
  %i.bj = icmp slt i32 %i.ag, 2
  br i1 %i.bj, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i32 %smax.i, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %.018.i = phi i32 [ 0, %.preheader.preheader.i.new ], [ %i.cb, %.preheader.i ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader.i.new ], [ %niter.next.1, %.preheader.i ]
  %i.bk = and i32 %.018.i, 62
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 1, %i.bl
  %i.bn = lshr i32 %.018.i, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.br = xor i64 %i.bm, %i.bq
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !26
end_hunk_1
