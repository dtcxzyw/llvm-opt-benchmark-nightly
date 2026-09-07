Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj?download=true
inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Exa_ManExactSynthesis:bb.a
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !51
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i, i64 %indvars.iv.next68.i.2.i.2
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !51
  %i.na = and i64 %i.mz, %i.mx
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next68.i.2.i.2
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !51
  %indvars.iv.next68.i.2.i.3 = add nuw nsw i64 %indvars.iv67.i.2.i, 4 ; 2 uses
  %exitcond71.not.i.2.i.3 = icmp eq i64 %indvars.iv.next68.i.2.i.3, %wide.trip.count70.i.2.i
  br i1 %exitcond71.not.i.2.i.3, label %.lr.ph.preheader.i65.2.i, label %.lr.ph52.i.2.i, !llvm.loop !292

.lr.ph.preheader.i65.2.i:                         ; preds = %.lr.ph52.i.2.i.prol.loopexit, %.lr.ph52.i.2.i, %middle.block214
  %i.nc = mul nsw i64 %indvars.iv.i60, %wide.trip.count70.i.2.i
  %i.nd = getelementptr inbounds [8 x i8], ptr %.val55.val.2.i, i64 %i.nc ; 7 uses
  %min.iters.check185 = icmp ult i32 %.val54.2.i, 8
  br i1 %min.iters.check185, label %.lr.ph.i67.2.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i65.2.i
  %i.ne = mul i64 %i.cu, %wide.trip.count70.i.2.i
  %scevgep = getelementptr i8, ptr %.val55.val.2.i, i64 %i.ne
  %i.nf = add nsw i64 %i.lg, %wide.trip.count70.i.2.i
  %i.ng = shl nsw i64 %i.nf, 3
  %scevgep183 = getelementptr i8, ptr %.val55.val.2.i, i64 %i.ng
  %bound0 = icmp ult ptr %i.nd, %scevgep183
  %bound1 = icmp ult ptr %i.lh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i67.2.i.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck
  %n.vec187 = and i64 %wide.trip.count70.i.2.i, 2147483644 ; 3 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %index189 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %wide.load190 = load <2 x i64>, ptr %i.nh, align 8, !tbaa !51, !alias.scope !307, !noalias !308
  %wide.load191 = load <2 x i64>, ptr %i.ni, align 8, !tbaa !51, !alias.scope !307, !noalias !308
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %index189 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %wide.load192 = load <2 x i64>, ptr %i.nj, align 8, !tbaa !51, !alias.scope !308
  %wide.load193 = load <2 x i64>, ptr %i.nk, align 8, !tbaa !51, !alias.scope !308
  %i.nl = or <2 x i64> %wide.load192, %wide.load190
  %i.nm = or <2 x i64> %wide.load193, %wide.load191
  store <2 x i64> %i.nl, ptr %i.nh, align 8, !tbaa !51, !alias.scope !307, !noalias !308
  store <2 x i64> %i.nm, ptr %i.ni, align 8, !tbaa !51, !alias.scope !307, !noalias !308
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.nn = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.nn, label %middle.block195, label %vector.body188, !llvm.loop !296

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %n.vec187, %wide.trip.count70.i.2.i
  br i1 %cmp.n196, label %Abc_TtOr.exit.2.i, label %.lr.ph.i67.2.i.preheader

.lr.ph.i67.2.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.preheader.i65.2.i, %middle.block195
  %indvars.iv.i68.2.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i65.2.i ], [ %n.vec187, %middle.block195 ] ; 3 uses
  %xtraiter312 = and i64 %wide.trip.count70.i.2.i, 3 ; 2 uses
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.lr.ph.i67.2.i.prol.loopexit, label %.lr.ph.i67.2.i.prol

.lr.ph.i67.2.i.prol:                              ; preds = %.lr.ph.i67.2.i.preheader, %.lr.ph.i67.2.i.prol
  %indvars.iv.i68.2.i.prol = phi i64 [ %indvars.iv.next.i69.2.i.prol, %.lr.ph.i67.2.i.prol ], [ %indvars.iv.i68.2.i.ph, %.lr.ph.i67.2.i.preheader ] ; 3 uses
  %prol.iter314 = phi i64 [ %prol.iter314.next, %.lr.ph.i67.2.i.prol ], [ 0, %.lr.ph.i67.2.i.preheader ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.i68.2.i.prol ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !51
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i68.2.i.prol
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !51
  %i.ns = or i64 %i.nr, %i.np
  store i64 %i.ns, ptr %i.no, align 8, !tbaa !51
  %indvars.iv.next.i69.2.i.prol = add nuw nsw i64 %indvars.iv.i68.2.i.prol, 1 ; 2 uses
  %prol.iter314.next = add i64 %prol.iter314, 1   ; 2 uses
  %prol.iter314.cmp.not = icmp eq i64 %prol.iter314.next, %xtraiter312
  br i1 %prol.iter314.cmp.not, label %.lr.ph.i67.2.i.prol.loopexit, label %.lr.ph.i67.2.i.prol, !llvm.loop !297

.lr.ph.i67.2.i.prol.loopexit:                     ; preds = %.lr.ph.i67.2.i.prol, %.lr.ph.i67.2.i.preheader
  %indvars.iv.i68.2.i.unr = phi i64 [ %indvars.iv.i68.2.i.ph, %.lr.ph.i67.2.i.preheader ], [ %indvars.iv.next.i69.2.i.prol, %.lr.ph.i67.2.i.prol ]
  %i.nt = sub nsw i64 %indvars.iv.i68.2.i.ph, %wide.trip.count70.i.2.i
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %Abc_TtOr.exit.2.i, label %.lr.ph.i67.2.i

.lr.ph.i67.2.i:                                   ; preds = %.lr.ph.i67.2.i.prol.loopexit, %.lr.ph.i67.2.i
  %indvars.iv.i68.2.i = phi i64 [ %indvars.iv.next.i69.2.i.3, %.lr.ph.i67.2.i ], [ %indvars.iv.i68.2.i.unr, %.lr.ph.i67.2.i.prol.loopexit ] ; 6 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.i68.2.i ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !51
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i68.2.i
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !51
  %i.nz = or i64 %i.ny, %i.nw
  store i64 %i.nz, ptr %i.nv, align 8, !tbaa !51
  %indvars.iv.next.i69.2.i = add nuw nsw i64 %indvars.iv.i68.2.i, 1 ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i69.2.i ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !51
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i69.2.i
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !51
  %i.oe = or i64 %i.od, %i.ob
  store i64 %i.oe, ptr %i.oa, align 8, !tbaa !51
  %indvars.iv.next.i69.2.i.1 = add nuw nsw i64 %indvars.iv.i68.2.i, 2 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i69.2.i.1 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !51
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i69.2.i.1
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !51
  %i.oj = or i64 %i.oi, %i.og
  store i64 %i.oj, ptr %i.of, align 8, !tbaa !51
  %indvars.iv.next.i69.2.i.2 = add nuw nsw i64 %indvars.iv.i68.2.i, 3 ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv.next.i69.2.i.2 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !51
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i69.2.i.2
  %i.on = load i64, ptr %i.om, align 8, !tbaa !51
  %i.oo = or i64 %i.on, %i.ol
  store i64 %i.oo, ptr %i.ok, align 8, !tbaa !51
  %indvars.iv.next.i69.2.i.3 = add nuw nsw i64 %indvars.iv.i68.2.i, 4 ; 2 uses
  %exitcond.not.i70.2.i.3 = icmp eq i64 %indvars.iv.next.i69.2.i.3, %wide.trip.count70.i.2.i
  br i1 %exitcond.not.i70.2.i.3, label %Abc_TtOr.exit.2.i, label %.lr.ph.i67.2.i, !llvm.loop !298

Abc_TtOr.exit.2.i:                                ; preds = %.lr.ph.i67.2.i.prol.loopexit, %.lr.ph.i67.2.i, %middle.block195, %.preheader.i.2.i, %Abc_TtOr.exit.1.i
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %i.op = sext i32 %.pre.i to i64
  %i.oq = icmp slt i64 %indvars.iv.next.i62, %i.op
  %indvar.next = add i64 %indvar, 1
  br i1 %i.oq, label %bb.x, label %._crit_edge.loopexit.i, !llvm.loop !299

._crit_edge.loopexit.i:                           ; preds = %Abc_TtOr.exit.2.i
  %.pre109.i = load i32, ptr %i.an, align 8, !tbaa !81
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.w
  %i.or = phi i32 [ %i.ci, %bb.w ], [ %.pre109.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.lcssa85.i = phi i32 [ %i.cj, %bb.w ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %i.os = add nsw i32 %.lcssa85.i, -1
  %.val.i = load i32, ptr %i.as, align 4, !tbaa !78
  %.val47.i = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.ot = getelementptr i8, ptr %.val47.i, i64 8
  %.val47.val.i = load ptr, ptr %i.ot, align 8, !tbaa !46
  %i.ou = mul nsw i32 %.val.i, %i.os
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %.val47.val.i, i64 %i.ov
  %i.ox = load ptr, ptr %i.au, align 8, !tbaa !92
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
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !51 ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv.i74.i
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !51 ; 2 uses
  %.not.i75.i = icmp eq i64 %i.pe, %i.pg
  br i1 %.not.i75.i, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %.lr.ph.i73.i
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i74.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i76.i, %wide.trip.count.i72.i
  br i1 %exitcond.not.i77.i, label %.loopexit.thread, label %.lr.ph.i73.i, !llvm.loop !5

.loopexit.thread:                                 ; preds = %._crit_edge.i, %bb.ad
  store i32 -1, ptr %i.c, align 4, !tbaa !54
  br label %.thread118

.loopexit:                                        ; preds = %.lr.ph.i73.i
  %i.ph = trunc nuw nsw i64 %indvars.iv.i74.i to i32
  %i.pi = shl nuw nsw i32 %i.ph, 6
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
  %.5.i.i.i = add nuw i32 %.4.i.i.i, %i.pi
  %i.qg = add nuw i32 %.5.i.i.i, %i.qf            ; 2 uses
  store i32 %i.qg, ptr %i.c, align 4, !tbaa !54
  %i.qh = add nuw nsw i32 %.043134, 1
  %.not47 = icmp eq i32 %i.qg, -1
  br i1 %.not47, label %.thread118, label %bb.h, !llvm.loop !300

.loopexit127:                                     ; preds = %Abc_Clock.exit56, %bb.s, %bb.t, %bb.v, %bb.u
  %.pr = load i32, ptr %i.c, align 4, !tbaa !54
  %i.qi = icmp eq i32 %.pr, -1
  br i1 %i.qi, label %.thread118, label %bb.be

.thread118:                                       ; preds = %.loopexit, %.loopexit.thread, %bb.g, %.loopexit127
  %i.qj = load ptr, ptr %i.l, align 8, !tbaa !84  ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 168
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !309 ; 2 uses
  %.not.i63 = icmp eq ptr %i.ql, null
  br i1 %.not.i63, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread118
  call void @free(ptr noundef nonnull %i.ql) #41
  %i.qm = load ptr, ptr %i.l, align 8, !tbaa !84  ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 168
  store ptr null, ptr %i.qn, align 8, !tbaa !309
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread118
  %i.qo = phi ptr [ %i.qj, %.thread118 ], [ %i.qm, %bb.ae ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !82
  %i.qr = shl nsw i32 %i.qq, 1
  %i.qs = sext i32 %i.qr to i64
  %i.qt = shl nsw i64 %i.qs, 2
  %i.qu = call noalias ptr @malloc(i64 noundef %i.qt) #38
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 168
  store ptr %i.qu, ptr %i.qv, align 8, !tbaa !309
  %i.qw = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !81 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 11 uses
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !79 ; 2 uses
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
  %indvars.iv.i65 = phi i64 [ %i.rd, %.preheader.lr.ph.i ], [ %indvars.iv.next27.i, %Exa_ManFindFanin.exit.1.i67 ] ; 2 uses
  %.021.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next.1.i, %Exa_ManFindFanin.exit.1.i67 ] ; 3 uses
  %i.rg = getelementptr inbounds [512 x i8], ptr %i.rb, i64 %indvars.iv.i65 ; 2 uses
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
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !54 ; 2 uses
  %.not.i.i83 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.i83, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.rm = load ptr, ptr %i.rc, align 8, !tbaa !93
  %i.rn = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.rm, i32 noundef %i.rl) #41
  %.not18.not.i.i84 = icmp eq i32 %i.rn, 0
  %i.ro = trunc nuw nsw i64 %indvars.iv.i.i81 to i32
  %spec.select19.i.i85 = select i1 %.not18.not.i.i84, i32 %.022.i.i82, i32 %i.ro
  %.pre.i.i86 = load i32, ptr %i.qy, align 8, !tbaa !79
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.rp = phi i32 [ %i.rj, %bb.ag ], [ %.pre.i.i86, %bb.ah ] ; 2 uses
  %.1.i.i87 = phi i32 [ %.022.i.i82, %bb.ag ], [ %spec.select19.i.i85, %bb.ah ] ; 2 uses
  %indvars.iv.next.i.i88 = add nuw nsw i64 %indvars.iv.i.i81, 1 ; 2 uses
  %i.rq = sext i32 %i.rp to i64
  %i.rr = icmp slt i64 %indvars.iv.next.i.i88, %i.rq
  br i1 %i.rr, label %bb.ag, label %Exa_ManFindFanin.exit.loopexit.i, !llvm.loop !2

Exa_ManFindFanin.exit.loopexit.i:                 ; preds = %bb.ai
  %.pre.i89 = load ptr, ptr %i.l, align 8, !tbaa !84
  br label %Exa_ManFindFanin.exit.i66

Exa_ManFindFanin.exit.i66:                        ; preds = %Exa_ManFindFanin.exit.loopexit.i, %.preheader.i
  %i.rs = phi ptr [ %i.re, %.preheader.i ], [ %.pre.i89, %Exa_ManFindFanin.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ -1, %.preheader.i ], [ %.1.i.i87, %Exa_ManFindFanin.exit.loopexit.i ]
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 168
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !309 ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.021.i
  store i32 %.0.lcssa.i.i, ptr %i.rv, align 4, !tbaa !54
  %i.rw = load i32, ptr %i.qy, align 8, !tbaa !79 ; 2 uses
  %i.rx = icmp sgt i32 %i.rw, 0
  br i1 %i.rx, label %.lr.ph.i.1.i69, label %Exa_ManFindFanin.exit.1.i67

.lr.ph.i.1.i69:                                   ; preds = %Exa_ManFindFanin.exit.i66, %bb.ak
  %i.ry = phi i32 [ %i.se, %bb.ak ], [ %i.rw, %Exa_ManFindFanin.exit.i66 ]
  %indvars.iv.i.1.i70 = phi i64 [ %indvars.iv.next.i.1.i77, %bb.ak ], [ 0, %Exa_ManFindFanin.exit.i66 ] ; 3 uses
  %.022.i.1.i71 = phi i32 [ %.1.i.1.i76, %bb.ak ], [ -1, %Exa_ManFindFanin.exit.i66 ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.i.1.i70
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !54 ; 2 uses
  %.not.i.1.i72 = icmp eq i32 %i.sa, 0
  br i1 %.not.i.1.i72, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.1.i69
  %i.sb = load ptr, ptr %i.rc, align 8, !tbaa !93
  %i.sc = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.sb, i32 noundef %i.sa) #41
  %.not18.not.i.1.i73 = icmp eq i32 %i.sc, 0
  %i.sd = trunc nuw nsw i64 %indvars.iv.i.1.i70 to i32
  %spec.select19.i.1.i74 = select i1 %.not18.not.i.1.i73, i32 %.022.i.1.i71, i32 %i.sd
  %.pre.i.1.i75 = load i32, ptr %i.qy, align 8, !tbaa !79
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i.1.i69
  %i.se = phi i32 [ %i.ry, %.lr.ph.i.1.i69 ], [ %.pre.i.1.i75, %bb.aj ] ; 2 uses
  %.1.i.1.i76 = phi i32 [ %.022.i.1.i71, %.lr.ph.i.1.i69 ], [ %spec.select19.i.1.i74, %bb.aj ] ; 2 uses
  %indvars.iv.next.i.1.i77 = add nuw nsw i64 %indvars.iv.i.1.i70, 1 ; 2 uses
  %i.sf = sext i32 %i.se to i64
  %i.sg = icmp slt i64 %indvars.iv.next.i.1.i77, %i.sf
  br i1 %i.sg, label %.lr.ph.i.1.i69, label %Exa_ManFindFanin.exit.loopexit.1.i78, !llvm.loop !2

Exa_ManFindFanin.exit.loopexit.1.i78:             ; preds = %bb.ak
  %.pre29.i = load ptr, ptr %i.l, align 8, !tbaa !84 ; 2 uses
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %.pre29.i, i64 168
  %.pre30.i = load ptr, ptr %.phi.trans.insert.i79, align 8, !tbaa !309
  br label %Exa_ManFindFanin.exit.1.i67

Exa_ManFindFanin.exit.1.i67:                      ; preds = %Exa_ManFindFanin.exit.loopexit.1.i78, %Exa_ManFindFanin.exit.i66
  %i.sh = phi ptr [ %i.ru, %Exa_ManFindFanin.exit.i66 ], [ %.pre30.i, %Exa_ManFindFanin.exit.loopexit.1.i78 ]
  %i.si = phi ptr [ %i.rs, %Exa_ManFindFanin.exit.i66 ], [ %.pre29.i, %Exa_ManFindFanin.exit.loopexit.1.i78 ]
  %.0.lcssa.i.1.i68 = phi i32 [ -1, %Exa_ManFindFanin.exit.i66 ], [ %.1.i.1.i76, %Exa_ManFindFanin.exit.loopexit.1.i78 ]
  %indvars.iv.next.1.i = add nuw nsw i64 %.021.i, 2
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %.021.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  store i32 %.0.lcssa.i.1.i68, ptr %i.sk, align 4, !tbaa !54
  %indvars.iv.next27.i = add nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %i.sl = load i32, ptr %i.qy, align 8, !tbaa !79 ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next27.i, %i.sm
  br i1 %i.sn, label %.preheader.i, label %Exa_ManSaveSolution.exit, !llvm.loop !301

Exa_ManSaveSolution.exit:                         ; preds = %Exa_ManFindFanin.exit.1.i67, %bb.af
  %i.so = load i32, ptr %i.ac, align 8, !tbaa !89
  %.not53 = icmp eq i32 %i.so, 0
  br i1 %.not53, label %bb.al, label %bb.be

bb.al:                                            ; preds = %Exa_ManSaveSolution.exit
  call void @Exa_ManPrintSolution(ptr noundef nonnull %i.l, i32 noundef %.040)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.sp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44) ; 0 uses
  %i.sq = load i32, ptr %i.qw, align 8, !tbaa !81 ; 2 uses
  %i.sr = load i32, ptr %i.qy, align 8, !tbaa !79 ; 2 uses
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
  %i.sx = load i32, ptr %i.qw, align 8, !tbaa !81
  %i.sy = sext i32 %i.sx to i64
  %i.sz = icmp sgt i64 %indvars.iv.i92, %i.sy
  br i1 %i.sz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %putchar.i = call i32 @putchar(i32 95)          ; 0 uses
  %.pre.i114 = load i32, ptr %i.qy, align 8, !tbaa !79
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
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !54 ; 2 uses
  %.not.i.i107 = icmp eq i32 %i.tg, 0
  br i1 %.not.i.i107, label %bb.ar, label %bb.aq

end_hunk_0
begin_hunk_1_@Exa3_ManExactSynthesis:bb.a
  %min.iters.check833 = icmp ult i32 %.val71.i, 8
  br i1 %min.iters.check833, label %.lr.ph.i79.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge99.i
  %i.aya = mul i64 %i.asr, %i.avb
  %scevgep = getelementptr i8, ptr %.val72.val.i, i64 %i.aya
  %i.ayb = add nsw i64 %i.auy, %i.avb
  %i.ayc = shl nsw i64 %i.ayb, 3
  %scevgep831 = getelementptr i8, ptr %.val72.val.i, i64 %i.ayc
  %bound0 = icmp ult ptr %i.axz, %scevgep831
  %bound1 = icmp ult ptr %i.auz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i79.i.preheader, label %vector.ph834

vector.ph834:                                     ; preds = %vector.memcheck
  %n.vec835 = and i64 %i.avb, 2147483644          ; 3 uses
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph834
  %index837 = phi i64 [ 0, %vector.ph834 ], [ %index.next842, %vector.body836 ] ; 3 uses
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %index837 ; 3 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 16 ; 2 uses
  %wide.load838 = load <2 x i64>, ptr %i.ayd, align 8, !tbaa !51, !alias.scope !430, !noalias !431
  %wide.load839 = load <2 x i64>, ptr %i.aye, align 8, !tbaa !51, !alias.scope !430, !noalias !431
  %i.ayf = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %index837 ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 16
  %wide.load840 = load <2 x i64>, ptr %i.ayf, align 8, !tbaa !51, !alias.scope !431
  %wide.load841 = load <2 x i64>, ptr %i.ayg, align 8, !tbaa !51, !alias.scope !431
  %i.ayh = or <2 x i64> %wide.load840, %wide.load838
  %i.ayi = or <2 x i64> %wide.load841, %wide.load839
  store <2 x i64> %i.ayh, ptr %i.ayd, align 8, !tbaa !51, !alias.scope !430, !noalias !431
  store <2 x i64> %i.ayi, ptr %i.aye, align 8, !tbaa !51, !alias.scope !430, !noalias !431
  %index.next842 = add nuw i64 %index837, 4       ; 2 uses
  %i.ayj = icmp eq i64 %index.next842, %n.vec835
  br i1 %i.ayj, label %middle.block843, label %vector.body836, !llvm.loop !386

middle.block843:                                  ; preds = %vector.body836
  %cmp.n844 = icmp eq i64 %n.vec835, %i.avb
  br i1 %cmp.n844, label %Abc_TtOr.exit.i, label %.lr.ph.i79.i.preheader

.lr.ph.i79.i.preheader:                           ; preds = %vector.memcheck, %._crit_edge99.i, %middle.block843
  %indvars.iv.i80.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %._crit_edge99.i ], [ %n.vec835, %middle.block843 ] ; 3 uses
  %xtraiter1054 = and i64 %i.avb, 3               ; 2 uses
  %lcmp.mod1055.not = icmp eq i64 %xtraiter1054, 0
  br i1 %lcmp.mod1055.not, label %.lr.ph.i79.i.prol.loopexit, label %.lr.ph.i79.i.prol

.lr.ph.i79.i.prol:                                ; preds = %.lr.ph.i79.i.preheader, %.lr.ph.i79.i.prol
  %indvars.iv.i80.i.prol = phi i64 [ %indvars.iv.next.i81.i.prol, %.lr.ph.i79.i.prol ], [ %indvars.iv.i80.i.ph, %.lr.ph.i79.i.preheader ] ; 3 uses
  %prol.iter1056 = phi i64 [ %prol.iter1056.next, %.lr.ph.i79.i.prol ], [ 0, %.lr.ph.i79.i.preheader ]
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %indvars.iv.i80.i.prol ; 2 uses
  %i.ayl = load i64, ptr %i.ayk, align 8, !tbaa !51
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %indvars.iv.i80.i.prol
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !51
  %i.ayo = or i64 %i.ayn, %i.ayl
  store i64 %i.ayo, ptr %i.ayk, align 8, !tbaa !51
  %indvars.iv.next.i81.i.prol = add nuw nsw i64 %indvars.iv.i80.i.prol, 1 ; 2 uses
  %prol.iter1056.next = add i64 %prol.iter1056, 1 ; 2 uses
  %prol.iter1056.cmp.not = icmp eq i64 %prol.iter1056.next, %xtraiter1054
  br i1 %prol.iter1056.cmp.not, label %.lr.ph.i79.i.prol.loopexit, label %.lr.ph.i79.i.prol, !llvm.loop !387

.lr.ph.i79.i.prol.loopexit:                       ; preds = %.lr.ph.i79.i.prol, %.lr.ph.i79.i.preheader
  %indvars.iv.i80.i.unr = phi i64 [ %indvars.iv.i80.i.ph, %.lr.ph.i79.i.preheader ], [ %indvars.iv.next.i81.i.prol, %.lr.ph.i79.i.prol ]
  %i.ayp = sub nsw i64 %indvars.iv.i80.i.ph, %i.avb
  %i.ayq = icmp ugt i64 %i.ayp, -4
  br i1 %i.ayq, label %Abc_TtOr.exit.i, label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.prol.loopexit, %.lr.ph.i79.i
  %indvars.iv.i80.i = phi i64 [ %indvars.iv.next.i81.i.3, %.lr.ph.i79.i ], [ %indvars.iv.i80.i.unr, %.lr.ph.i79.i.prol.loopexit ] ; 6 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %indvars.iv.i80.i ; 2 uses
  %i.ays = load i64, ptr %i.ayr, align 8, !tbaa !51
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %indvars.iv.i80.i
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !51
  %i.ayv = or i64 %i.ayu, %i.ays
  store i64 %i.ayv, ptr %i.ayr, align 8, !tbaa !51
  %indvars.iv.next.i81.i = add nuw nsw i64 %indvars.iv.i80.i, 1 ; 2 uses
  %i.ayw = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %indvars.iv.next.i81.i ; 2 uses
  %i.ayx = load i64, ptr %i.ayw, align 8, !tbaa !51
  %i.ayy = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %indvars.iv.next.i81.i
  %i.ayz = load i64, ptr %i.ayy, align 8, !tbaa !51
  %i.aza = or i64 %i.ayz, %i.ayx
  store i64 %i.aza, ptr %i.ayw, align 8, !tbaa !51
  %indvars.iv.next.i81.i.1 = add nuw nsw i64 %indvars.iv.i80.i, 2 ; 2 uses
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %indvars.iv.next.i81.i.1 ; 2 uses
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !51
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %indvars.iv.next.i81.i.1
  %i.aze = load i64, ptr %i.azd, align 8, !tbaa !51
  %i.azf = or i64 %i.aze, %i.azc
  store i64 %i.azf, ptr %i.azb, align 8, !tbaa !51
  %indvars.iv.next.i81.i.2 = add nuw nsw i64 %indvars.iv.i80.i, 3 ; 2 uses
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %indvars.iv.next.i81.i.2 ; 2 uses
  %i.azh = load i64, ptr %i.azg, align 8, !tbaa !51
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %indvars.iv.next.i81.i.2
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !51
  %i.azk = or i64 %i.azj, %i.azh
  store i64 %i.azk, ptr %i.azg, align 8, !tbaa !51
  %indvars.iv.next.i81.i.3 = add nuw nsw i64 %indvars.iv.i80.i, 4 ; 2 uses
  %exitcond.not.i.i166.3 = icmp eq i64 %indvars.iv.next.i81.i.3, %i.avb
  br i1 %exitcond.not.i.i166.3, label %Abc_TtOr.exit.i, label %.lr.ph.i79.i, !llvm.loop !388

Abc_TtOr.exit.i:                                  ; preds = %.lr.ph.i79.i.prol.loopexit, %.lr.ph.i79.i, %middle.block843, %bb.fo, %.lr.ph104.i
  %i.azl = add nuw nsw i32 %.1101.i, 1
  %i.azm = load i32, ptr %i.dh, align 4, !tbaa !410 ; 2 uses
  %.not.not.i164 = icmp slt i32 %.1101.i, %i.azm
  br i1 %.not.not.i164, label %.lr.ph104.i, label %._crit_edge105.loopexit.i, !llvm.loop !389

._crit_edge105.loopexit.i:                        ; preds = %Abc_TtOr.exit.i
  %.pre132.i = load i32, ptr %i.dj, align 8, !tbaa !411
  br label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge105.loopexit.i, %Abc_TtConst0.exit.i
  %i.azn = phi i32 [ %.pre132.i, %._crit_edge105.loopexit.i ], [ %i.auk, %Abc_TtConst0.exit.i ] ; 3 uses
  %i.azo = phi i32 [ %i.azm, %._crit_edge105.loopexit.i ], [ %i.aur, %Abc_TtConst0.exit.i ]
  %indvars.iv.next128.i = add nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %i.azp = sext i32 %i.azn to i64
  %i.azq = icmp slt i64 %indvars.iv.next128.i, %i.azp
  %indvar.next = add i64 %indvar, 1
  br i1 %i.azq, label %bb.fk, label %._crit_edge109.loopexit.i, !llvm.loop !390

._crit_edge109.loopexit.i:                        ; preds = %._crit_edge105.i
  %.pre133.i = load i32, ptr %i.cz, align 8, !tbaa !106
  br label %._crit_edge109.i

._crit_edge109.i:                                 ; preds = %._crit_edge109.loopexit.i, %bb.fj
  %i.azr = phi i32 [ %i.asj, %bb.fj ], [ %.pre133.i, %._crit_edge109.loopexit.i ] ; 2 uses
  %.lcssa95.i = phi i32 [ %i.ask, %bb.fj ], [ %i.azn, %._crit_edge109.loopexit.i ]
  %i.azs = add nsw i32 %.lcssa95.i, -1
  %.val.i161 = load i32, ptr %i.do, align 4, !tbaa !412
  %.val60.i = load ptr, ptr %i.ow, align 8, !tbaa !417
  %i.azt = getelementptr i8, ptr %.val60.i, i64 8
  %.val60.val.i = load ptr, ptr %i.azt, align 8, !tbaa !46
  %i.azu = mul nsw i32 %.val.i161, %i.azs
  %i.azv = sext i32 %i.azu to i64
  %i.azw = getelementptr inbounds [8 x i8], ptr %.val60.val.i, i64 %i.azv
  %i.azx = load ptr, ptr %i.dp, align 8, !tbaa !413
  %i.azy = icmp slt i32 %i.azr, 7
  %i.azz = add nsw i32 %i.azr, -6
  %i.baa = shl nuw i32 1, %i.azz
  %i.bab = select i1 %i.azy, i32 1, i32 %i.baa    ; 2 uses
  %i.bac = icmp sgt i32 %i.bab, 0
  br i1 %i.bac, label %.lr.ph.preheader.i82.i, label %Exa3_ManEval.exit.thread

.lr.ph.preheader.i82.i:                           ; preds = %._crit_edge109.i
  %wide.trip.count.i83.i = zext nneg i32 %i.bab to i64
  br label %.lr.ph.i84.i

.lr.ph.i84.i:                                     ; preds = %bb.fp, %.lr.ph.preheader.i82.i
  %indvars.iv.i85.i = phi i64 [ 0, %.lr.ph.preheader.i82.i ], [ %indvars.iv.next.i87.i, %bb.fp ] ; 4 uses
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.azw, i64 %indvars.iv.i85.i
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !51 ; 2 uses
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr %i.azx, i64 %indvars.iv.i85.i
  %i.bag = load i64, ptr %i.baf, align 8, !tbaa !51 ; 2 uses
  %.not.i86.i = icmp eq i64 %i.bae, %i.bag
  br i1 %.not.i86.i, label %bb.fp, label %Exa3_ManEval.exit

bb.fp:                                            ; preds = %.lr.ph.i84.i
  %indvars.iv.next.i87.i = add nuw nsw i64 %indvars.iv.i85.i, 1 ; 2 uses
  %exitcond.not.i88.i = icmp eq i64 %indvars.iv.next.i87.i, %wide.trip.count.i83.i
  br i1 %exitcond.not.i88.i, label %Exa3_ManEval.exit.thread, label %.lr.ph.i84.i, !llvm.loop !5

Exa3_ManEval.exit.thread:                         ; preds = %._crit_edge109.i, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  %i.bah = add nuw nsw i32 %.087401, 1
  br label %Exa3_ManAddCnf.exit.thread

Exa3_ManEval.exit:                                ; preds = %.lr.ph.i84.i
  %i.bai = trunc nuw nsw i64 %indvars.iv.i85.i to i32
  %i.baj = shl nuw nsw i32 %i.bai, 6
  %i.bak = xor i64 %i.bag, %i.bae                 ; 3 uses
  %i.bal = and i64 %i.bak, 4294967295
  %i.bam = icmp eq i64 %i.bal, 0                  ; 2 uses
  %i.ban = lshr exact i64 %i.bak, 32
  %spec.select.i.i.i = select i1 %i.bam, i64 %i.ban, i64 %i.bak ; 3 uses
  %spec.select27.i.i.i = select i1 %i.bam, i32 32, i32 0 ; 2 uses
  %i.bao = and i64 %spec.select.i.i.i, 65535
  %i.bap = icmp eq i64 %i.bao, 0                  ; 2 uses
  %i.baq = or disjoint i32 %spec.select27.i.i.i, 16
  %i.bar = lshr exact i64 %spec.select.i.i.i, 16
  %.121.i.i.i = select i1 %i.bap, i64 %i.bar, i64 %spec.select.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.bap, i32 %i.baq, i32 %spec.select27.i.i.i ; 2 uses
  %i.bas = and i64 %.121.i.i.i, 255
  %i.bat = icmp eq i64 %i.bas, 0                  ; 2 uses
  %i.bau = or disjoint i32 %.1.i.i.i, 8
  %i.bav = lshr exact i64 %.121.i.i.i, 8
  %.222.i.i.i = select i1 %i.bat, i64 %i.bav, i64 %.121.i.i.i ; 3 uses
  %.2.i.i.i = select i1 %i.bat, i32 %i.bau, i32 %.1.i.i.i ; 2 uses
  %i.baw = and i64 %.222.i.i.i, 15
  %i.bax = icmp eq i64 %i.baw, 0                  ; 2 uses
  %i.bay = or disjoint i32 %.2.i.i.i, 4
  %i.baz = lshr exact i64 %.222.i.i.i, 4
  %.323.i.i.i = select i1 %i.bax, i64 %i.baz, i64 %.222.i.i.i ; 3 uses
  %.3.i.i.i = select i1 %i.bax, i32 %i.bay, i32 %.2.i.i.i ; 2 uses
  %i.bba = and i64 %.323.i.i.i, 3
  %i.bbb = icmp eq i64 %i.bba, 0                  ; 2 uses
  %i.bbc = add nuw nsw i32 %.3.i.i.i, 2
  %i.bbd = lshr exact i64 %.323.i.i.i, 2
  %.424.i.i.i = select i1 %i.bbb, i64 %i.bbd, i64 %.323.i.i.i
  %.4.i.i.i = select i1 %i.bbb, i32 %i.bbc, i32 %.3.i.i.i
  %i.bbe = trunc i64 %.424.i.i.i to i32
  %i.bbf = and i32 %i.bbe, 1
  %i.bbg = xor i32 %i.bbf, 1
  %.5.i.i.i = add nuw i32 %.4.i.i.i, %i.baj
  %i.bbh = add nuw i32 %.5.i.i.i, %i.bbg          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  %i.bbi = add nuw nsw i32 %.087401, 1            ; 2 uses
  %.not100 = icmp eq i32 %i.bbh, -1
  br i1 %.not100, label %Exa3_ManAddCnf.exit.thread, label %bb.dn, !llvm.loop !391

Exa3_ManAddCnf.exit.thread:                       ; preds = %bb.fi, %Exa3_ManEval.exit, %Exa3_ManEval.exit.thread, %.loopexit180.i, %bb.ex, %Exa3_ManAddCnf2.exit
  %.087386 = phi i32 [ %.087401, %bb.ex ], [ %.087401, %Exa3_ManAddCnf2.exit ], [ %.087401, %.loopexit180.i ], [ %i.bah, %Exa3_ManEval.exit.thread ], [ %i.bbi, %Exa3_ManEval.exit ], [ %.087401, %bb.fi ]
  %.084371 = phi i32 [ %.084403, %bb.ex ], [ %.084403, %Exa3_ManAddCnf2.exit ], [ %.084403, %.loopexit180.i ], [ -1, %Exa3_ManEval.exit.thread ], [ -1, %Exa3_ManEval.exit ], [ %.084403, %bb.fi ]
  %.not100363 = phi i1 [ false, %bb.ex ], [ false, %Exa3_ManAddCnf2.exit ], [ false, %.loopexit180.i ], [ true, %Exa3_ManEval.exit.thread ], [ %or.cond, %Exa3_ManEval.exit ], [ %or.cond, %bb.fi ] ; 2 uses
  %.2 = phi i32 [ %.1402, %bb.ex ], [ %.1402, %Exa3_ManAddCnf2.exit ], [ %.1402, %.loopexit180.i ], [ %i.arv, %Exa3_ManEval.exit.thread ], [ %i.arv, %Exa3_ManEval.exit ], [ %i.arv, %bb.fi ] ; 2 uses
  %i.bbj = load i32, ptr %i.abm, align 4, !tbaa !103
  %i.bbk = icmp ne i32 %i.bbj, 0
  %i.bbl = icmp ne i32 %.2, 0
  %or.cond3 = select i1 %i.bbk, i1 %i.bbl, i1 false
  br i1 %or.cond3, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %Exa3_ManAddCnf.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.bbm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #41
  %i.bbn = icmp slt i32 %i.bbm, 0
  br i1 %i.bbn, label %Abc_Clock.exit185, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bbo = load i64, ptr %2, align 8, !tbaa !70
  %i.bbp = mul nsw i64 %i.bbo, 1000000
  %i.bbq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !71
  %i.bbs = sdiv i64 %i.bbr, 1000
  %i.bbt = add nsw i64 %i.bbs, %i.bbp
  br label %Abc_Clock.exit185

Abc_Clock.exit185:                                ; preds = %bb.fq, %bb.fr
  %.0.i184 = phi i64 [ %i.bbt, %bb.fr ], [ -1, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.bbu = sub nsw i64 %.0.i184, %.0.i
  call void @Exa3_ManPrint(ptr noundef %i.cx, i32 noundef %.087386, i32 noundef %.084371, i64 noundef %i.bbu)
  br label %bb.fs

bb.fs:                                            ; preds = %Abc_Clock.exit185, %Exa3_ManAddCnf.exit.thread
  br i1 %.not100363, label %bb.ft, label %bb.gk

bb.ft:                                            ; preds = %bb.fs
  %i.bbv = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.bbw = load i32, ptr %i.dc, align 4, !tbaa !110
  %i.bbx = load i32, ptr %i.df, align 8, !tbaa !112
  %i.bby = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.156, i32 noundef %i.bbv, i32 noundef %i.bbw, i32 noundef %i.bbx) ; 0 uses
  %i.bbz = load i32, ptr %i.dj, align 8, !tbaa !411 ; 2 uses
  %i.bca = load i32, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
  %.not.not56.i = icmp sgt i32 %i.bbz, %i.bca
  br i1 %.not.not56.i, label %.lr.ph61.i, label %Exa3_ManPrintSolution.exit

.lr.ph61.i:                                       ; preds = %bb.ft
  %i.bcb = sext i32 %i.bbz to i64
  br label %bb.fu

bb.fu:                                            ; preds = %._crit_edge54.i, %.lr.ph61.i
  %indvars.iv66.i = phi i64 [ %i.bcb, %.lr.ph61.i ], [ %indvars.iv.next67.i, %._crit_edge54.i ] ; 2 uses
  %i.bcc = phi i32 [ %i.bca, %.lr.ph61.i ], [ %i.bea, %._crit_edge54.i ] ; 2 uses
  %indvars.iv.next67.i = add nsw i64 %indvars.iv66.i, -1 ; 4 uses
  %i.bcd = load i32, ptr %i.dh, align 4, !tbaa !410
  %i.bce = trunc nsw i64 %indvars.iv.next67.i to i32
  %i.bcf = sub nsw i32 %i.bce, %i.bcc
  %i.bcg = mul nsw i32 %i.bcf, %i.bcd             ; 2 uses
  %i.bch = trunc nsw i64 %indvars.iv66.i to i32   ; 3 uses
  %i.bci = add i32 %i.bch, 64
  %i.bcj = sub i32 %i.bci, %i.bcc
  %i.bck = load i32, ptr %i.df, align 8, !tbaa !112
  %i.bcl = shl nuw i32 1, %i.bck
  %i.bcm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.157, i32 noundef %i.bcj, i32 noundef %i.bcl) ; 0 uses
  %i.bcn = load i32, ptr %i.dh, align 4, !tbaa !410 ; 4 uses
  %i.bco = icmp sgt i32 %i.bcn, 0
  br i1 %i.bco, label %.lr.ph.i202, label %._crit_edge.i186

.lr.ph.i202:                                      ; preds = %bb.fu
  %.047.i = add nsw i32 %i.bcn, -1                ; 2 uses
  br i1 %.not97, label %.lr.ph.split.i203, label %.lr.ph.split.us.i207

.lr.ph.split.us.i207:                             ; preds = %.lr.ph.i202, %.lr.ph.split.us.i207
  %.049.us.i = phi i32 [ %.0.us.i, %.lr.ph.split.us.i207 ], [ %.047.i, %.lr.ph.i202 ] ; 3 uses
  %.0.in48.us.i = phi i32 [ %.049.us.i, %.lr.ph.split.us.i207 ], [ %i.bcn, %.lr.ph.i202 ]
  %i.bcp = load ptr, ptr %i.ru, align 8, !tbaa !107
  %i.bcq = add i32 %.0.in48.us.i, %i.bcg
  %i.bcr = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.bcp, i32 noundef %i.bcq) #41
  %i.bcs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef %i.bcr) ; 0 uses
  %.0.us.i = add nsw i32 %.049.us.i, -1
  %.not78.i = icmp eq i32 %.049.us.i, 0
  br i1 %.not78.i, label %._crit_edge.thread.i, label %.lr.ph.split.us.i207, !llvm.loop !392

.lr.ph.split.i203:                                ; preds = %.lr.ph.i202, %.lr.ph.split.i203
  %.049.i = phi i32 [ %.0.i206, %.lr.ph.split.i203 ], [ %.047.i, %.lr.ph.i202 ] ; 3 uses
  %.0.in48.i = phi i32 [ %.049.i, %.lr.ph.split.i203 ], [ %i.bcn, %.lr.ph.i202 ]
  %i.bct = load ptr, ptr %i.ru, align 8, !tbaa !107
  %i.bcu = add i32 %.0.in48.i, %i.bcg
  %i.bcv = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.bct, i32 noundef %i.bcu) #41 ; 2 uses
  %i.bcw = load i32, ptr %i.dj, align 8, !tbaa !411
  %i.bcx = icmp eq i32 %i.bcw, %i.bch
  %.not.i204 = icmp eq i32 %i.bcv, 0
  %i.bcy = zext i1 %.not.i204 to i32
  %.sink.i205 = select i1 %i.bcx, i32 %i.bcy, i32 %i.bcv
  %i.bcz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef %.sink.i205) ; 0 uses
  %.0.i206 = add nsw i32 %.049.i, -1
  %.not316 = icmp eq i32 %.049.i, 0
  br i1 %.not316, label %._crit_edge.i186, label %.lr.ph.split.i203, !llvm.loop !392

._crit_edge.i186:                                 ; preds = %.lr.ph.split.i203, %bb.fu
  %i.bda = load i32, ptr %i.dj, align 8, !tbaa !411
  %i.bdb = icmp eq i32 %i.bda, %i.bch
  %or.cond3.i = and i1 %i.bdb, %.not97
  br i1 %or.cond3.i, label %bb.fv, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.split.us.i207, %._crit_edge.i186
  br label %bb.fv

bb.fv:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i186
  %.str.159.sink.i = phi ptr [ @.str.159, %._crit_edge.thread.i ], [ @.str.158, %._crit_edge.i186 ]
  %i.bdc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.159.sink.i) ; 0 uses
  %i.bdd = load i32, ptr %i.df, align 8, !tbaa !112 ; 2 uses
  %i.bde = icmp sgt i32 %i.bdd, 0
  br i1 %i.bde, label %.lr.ph53.i, label %._crit_edge54.i

.lr.ph53.i:                                       ; preds = %bb.fv
  %i.bdf = getelementptr inbounds [1536 x i8], ptr %i.abd, i64 %indvars.iv.next67.i
  %i.bdg = zext nneg i32 %i.bdd to i64
  br label %bb.fw

bb.fw:                                            ; preds = %bb.gb, %.lr.ph53.i
  %indvars.iv.i188 = phi i64 [ %i.bdg, %.lr.ph53.i ], [ %indvars.iv.next.i189, %bb.gb ] ; 2 uses
  %indvars.iv.next.i189 = add nsw i64 %indvars.iv.i188, -1 ; 2 uses
  %i.bdh = load i32, ptr %i.dj, align 8, !tbaa !411 ; 2 uses
  %i.bdi = icmp sgt i32 %i.bdh, 0
  br i1 %i.bdi, label %.lr.ph.i.i191, label %.Exa3_ManFindFanin.exit.thread_crit_edge.i

.Exa3_ManFindFanin.exit.thread_crit_edge.i:       ; preds = %bb.fw
  %.pre.i190 = load i32, ptr %i.cz, align 8, !tbaa !106
  br label %Exa3_ManFindFanin.exit.thread.i

.lr.ph.i.i191:                                    ; preds = %bb.fw
  %i.bdj = getelementptr inbounds nuw [256 x i8], ptr %i.bdf, i64 %indvars.iv.next.i189
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fz, %.lr.ph.i.i191
  %i.bdk = phi i32 [ %i.bdh, %.lr.ph.i.i191 ], [ %i.bdq, %bb.fz ]
  %indvars.iv.i.i192 = phi i64 [ 0, %.lr.ph.i.i191 ], [ %indvars.iv.next.i.i199, %bb.fz ] ; 3 uses
  %.022.i.i193 = phi i32 [ -1, %.lr.ph.i.i191 ], [ %.1.i.i198, %bb.fz ] ; 2 uses
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %indvars.iv.i.i192
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !54 ; 2 uses
  %.not.i.i194 = icmp eq i32 %i.bdm, 0
  br i1 %.not.i.i194, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bdn = load ptr, ptr %i.ru, align 8, !tbaa !107
  %i.bdo = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.bdn, i32 noundef %i.bdm) #41
  %.not18.not.i.i195 = icmp eq i32 %i.bdo, 0
  %i.bdp = trunc nuw nsw i64 %indvars.iv.i.i192 to i32
  %spec.select19.i.i196 = select i1 %.not18.not.i.i195, i32 %.022.i.i193, i32 %i.bdp
  %.pre.i.i197 = load i32, ptr %i.dj, align 8, !tbaa !411
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.bdq = phi i32 [ %i.bdk, %bb.fx ], [ %.pre.i.i197, %bb.fy ] ; 2 uses
  %.1.i.i198 = phi i32 [ %.022.i.i193, %bb.fx ], [ %spec.select19.i.i196, %bb.fy ] ; 5 uses
  %indvars.iv.next.i.i199 = add nuw nsw i64 %indvars.iv.i.i192, 1 ; 2 uses
  %i.bdr = sext i32 %i.bdq to i64
  %i.bds = icmp slt i64 %indvars.iv.next.i.i199, %i.bdr
  br i1 %i.bds, label %bb.fx, label %Exa3_ManFindFanin.exit.i200, !llvm.loop !353

Exa3_ManFindFanin.exit.i200:                      ; preds = %bb.fz
  %i.bdt = icmp sgt i32 %.1.i.i198, -1
  %.pre69.i = load i32, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
  %i.bdu = icmp slt i32 %.1.i.i198, %.pre69.i
  %or.cond.i201 = select i1 %i.bdt, i1 %i.bdu, i1 false
  br i1 %or.cond.i201, label %bb.ga, label %Exa3_ManFindFanin.exit.thread.i

bb.ga:                                            ; preds = %Exa3_ManFindFanin.exit.i200
  %i.bdv = add nuw nsw i32 %.1.i.i198, 97
  br label %bb.gb

Exa3_ManFindFanin.exit.thread.i:                  ; preds = %Exa3_ManFindFanin.exit.i200, %.Exa3_ManFindFanin.exit.thread_crit_edge.i
  %i.bdw = phi i32 [ %.pre69.i, %Exa3_ManFindFanin.exit.i200 ], [ %.pre.i190, %.Exa3_ManFindFanin.exit.thread_crit_edge.i ]
  %.0.lcssa.i45.i = phi i32 [ %.1.i.i198, %Exa3_ManFindFanin.exit.i200 ], [ -1, %.Exa3_ManFindFanin.exit.thread_crit_edge.i ]
  %reass.sub = sub i32 %.0.lcssa.i45.i, %i.bdw
  %i.bdx = add i32 %reass.sub, 65
  br label %bb.gb

bb.gb:                                            ; preds = %Exa3_ManFindFanin.exit.thread.i, %bb.ga
  %.sink77.i = phi i32 [ %i.bdv, %bb.ga ], [ %i.bdx, %Exa3_ManFindFanin.exit.thread.i ]
  %i.bdy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.sink77.i) ; 0 uses
  %i.bdz = icmp sgt i64 %indvars.iv.i188, 1
  br i1 %i.bdz, label %bb.fw, label %._crit_edge54.i, !llvm.loop !393

._crit_edge54.i:                                  ; preds = %bb.gb, %bb.fv
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.bea = load i32, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
  %i.beb = sext i32 %i.bea to i64
  %.not.not.i187 = icmp sgt i64 %indvars.iv.next67.i, %i.beb
  br i1 %.not.not.i187, label %bb.fu, label %Exa3_ManPrintSolution.exit, !llvm.loop !394

Exa3_ManPrintSolution.exit:                       ; preds = %._crit_edge54.i, %bb.ft
  %i.bec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44) ; 0 uses
  %i.bed = load i32, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
end_hunk_1
