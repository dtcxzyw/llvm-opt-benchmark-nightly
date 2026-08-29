Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/midx-write?download=true
inline.NumInlined: 154
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@write_midx_internal:bb.a
  %i.np = load ptr, ptr %6, align 8, !tbaa !71
  %i.nq = getelementptr inbounds nuw [40 x i8], ptr %i.np, i64 %.0290671
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !82
  %i.nt = call i32 @cmp_idx_or_pack_name(ptr noundef %i.no, ptr noundef %i.ns) #20
  %.not385 = icmp eq i32 %i.nt, 0
  br i1 %.not385, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.lr.ph672
  %i.nu = trunc i64 %.0290671 to i32              ; 2 uses
  store i32 %i.nu, ptr %i.h, align 8, !tbaa !102
  br label %thread-pre-split

bb.dl:                                            ; preds = %.lr.ph672
  %i.nv = add nuw i64 %.0290671, 1                ; 2 uses
  %i.nw = load i64, ptr %i.bz, align 8, !tbaa !67
  %i.nx = icmp ult i64 %i.nv, %i.nw
  br i1 %i.nx, label %.lr.ph672, label %thread-pre-split.loopexit, !llvm.loop !103

thread-pre-split.loopexit:                        ; preds = %bb.dl
  %.pr579.pre = load i32, ptr %i.h, align 8, !tbaa !102
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.dk
  %i.ny = phi i32 [ %i.nu, %bb.dk ], [ %.pr579.pre, %thread-pre-split.loopexit ]
  %i.nz = icmp eq i32 %i.ny, -1
  br i1 %i.nz, label %thread-pre-split.thread, label %bb.dw

thread-pre-split.thread:                          ; preds = %bb.dj, %thread-pre-split
  %i.oa = load i32, ptr @git_gettext_enabled, align 4, !tbaa !59
  %.not4.i470 = icmp eq i32 %i.oa, 0
  br i1 %.not4.i470, label %_.exit472, label %bb.dm

bb.dm:                                            ; preds = %thread-pre-split.thread
  %i.ob = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #20
  br label %_.exit472

_.exit472:                                        ; preds = %thread-pre-split.thread, %bb.dm
  %.0.i471 = phi ptr [ %i.ob, %bb.dm ], [ @.str.32, %thread-pre-split.thread ]
  %i.oc = load ptr, ptr %i.nm, align 8, !tbaa !19
  call void (ptr, ...) @warning(ptr noundef %.0.i471, ptr noundef %i.oc) #20
  br label %bb.dw

bb.dn:                                            ; preds = %bb.di
  br i1 %i.nl, label %bb.do, label %.thread583.sink.split

bb.do:                                            ; preds = %bb.dn
  %i.od = load i32, ptr %i.l, align 8, !tbaa !22
  %i.oe = and i32 %i.od, 6
  %.not380 = icmp eq i32 %i.oe, 0
  br i1 %.not380, label %.thread583.sink.split, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.of = load ptr, ptr %6, align 8, !tbaa !71
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !83 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !102
  %i.oi = call i32 @open_pack_index(ptr noundef %i.oh) #20 ; 0 uses
  %i.oj = load ptr, ptr %i.jy, align 8, !tbaa !93 ; 2 uses
  %.not381 = icmp eq ptr %i.oj, null
  br i1 %.not381, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !104
  %.not382 = icmp eq i64 %i.ol, 0
  br i1 %.not382, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.16, i32 noundef 1470, ptr noundef nonnull @.str.33) #21
  unreachable

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %i.om = load i64, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  %i.on = icmp ugt i64 %i.om, 1
  br i1 %i.on, label %.lr.ph675.preheader, label %._crit_edge

.lr.ph675.preheader:                              ; preds = %bb.ds
  %.pre832 = load ptr, ptr %6, align 8, !tbaa !71
  br label %.lr.ph675

._crit_edge:                                      ; preds = %bb.dv, %bb.ds
  %.0288.lcssa = phi ptr [ %i.oh, %bb.ds ], [ %.1289, %bb.dv ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.0288.lcssa, i64 32
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !59
  %.not383 = icmp eq i32 %i.op, 0
  br i1 %.not383, label %.thread583.sink.split, label %bb.dw

.lr.ph675:                                        ; preds = %.lr.ph675.preheader, %bb.dv
  %i.oq = phi i64 [ %i.pe, %bb.dv ], [ %i.om, %.lr.ph675.preheader ]
  %i.or = phi ptr [ %i.pf, %bb.dv ], [ %.pre832, %.lr.ph675.preheader ] ; 2 uses
  %.0287674 = phi i64 [ %i.pg, %bb.dv ], [ 1, %.lr.ph675.preheader ] ; 3 uses
  %.0288673 = phi ptr [ %.1289, %bb.dv ], [ %i.oh, %.lr.ph675.preheader ] ; 3 uses
  %i.os = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %.0287674
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !83 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.0288673, i64 32
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !59
  %.not384 = icmp eq i32 %i.ow, 0
  br i1 %.not384, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph675
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !98
  %i.oz = getelementptr inbounds nuw i8, ptr %.0288673, i64 96
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !98
  %i.pb = icmp slt i64 %i.oy, %i.pa
  br i1 %i.pb, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %.lr.ph675
  %i.pc = call i32 @open_pack_index(ptr noundef %i.ou) #20 ; 0 uses
  %i.pd = trunc i64 %.0287674 to i32
  store i32 %i.pd, ptr %i.h, align 8, !tbaa !102
  %.pre831 = load ptr, ptr %6, align 8, !tbaa !71
  %.pre833 = load i64, ptr %i.bz, align 8, !tbaa !67
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.pe = phi i64 [ %.pre833, %bb.du ], [ %i.oq, %bb.dt ] ; 2 uses
  %i.pf = phi ptr [ %.pre831, %bb.du ], [ %i.or, %bb.dt ]
  %.1289 = phi ptr [ %i.ou, %bb.du ], [ %.0288673, %bb.dt ] ; 2 uses
  %i.pg = add nuw i64 %.0287674, 1                ; 2 uses
  %i.ph = icmp ult i64 %i.pg, %i.pe
  br i1 %i.ph, label %.lr.ph675, label %._crit_edge, !llvm.loop !105

bb.dw:                                            ; preds = %._crit_edge, %thread-pre-split, %_.exit472
  %.pr581 = load i32, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %.not386 = icmp eq i32 %.pr581, -1
  br i1 %.not386, label %.thread583, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pi = load ptr, ptr %6, align 8, !tbaa !71
  %i.pj = zext i32 %.pr581 to i64
  %i.pk = getelementptr inbounds nuw [40 x i8], ptr %i.pi, i64 %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !83 ; 3 uses
  %i.pn = call i32 @open_pack_index(ptr noundef %i.pm) #20
  %.not387 = icmp eq i32 %i.pn, 0
  br i1 %.not387, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.po = call fastcc ptr @_(ptr noundef nonnull @.str.34)
  %i.pp = load ptr, ptr %6, align 8, !tbaa !71
  %i.pq = load i32, ptr %i.h, align 8, !tbaa !102
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [40 x i8], ptr %i.pp, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !82
  call void (ptr, ...) @die(ptr noundef %i.po, ptr noundef %i.pu) #21
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !59
  %.not388 = icmp eq i32 %i.pw, 0
  br i1 %.not388, label %bb.ea, label %.thread583

bb.ea:                                            ; preds = %bb.dz
  %i.px = load i32, ptr @git_gettext_enabled, align 4, !tbaa !59
  %.not4.i473 = icmp eq i32 %i.px, 0
  br i1 %.not4.i473, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.py = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #20
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.0.i474 = phi ptr [ %i.py, %bb.eb ], [ @.str.35, %bb.ea ]
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pm, i64 208
  %i.qa = call i32 (ptr, ...) @error(ptr noundef %.0.i474, ptr noundef nonnull %i.pz) #20 ; 0 uses
  br label %bb.jq

.thread583.sink.split:                            ; preds = %bb.dn, %bb.do, %._crit_edge
  store i32 -1, ptr %i.h, align 8, !tbaa !102
  br label %.thread583

.thread583:                                       ; preds = %.thread583.sink.split, %bb.dz, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.qb = load i32, ptr %i.z, align 8, !tbaa !50
  %i.qc = icmp ne i32 %i.qb, 0
  %i.qd = icmp ne i32 %i.ey, 0
  %or.cond.i = and i1 %i.qd, %i.qc
  br i1 %or.cond.i, label %bb.ed, label %.preheader.i476

.preheader.i476:                                  ; preds = %.thread583
  %i.qe = load i64, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  %i.qf = and i64 %i.ex, 4294967295               ; 3 uses
  %i.qg = icmp ugt i64 %i.qe, %i.qf
  br i1 %i.qg, label %.lr.ph.i489, label %st_mult.exit60.thread.i

.lr.ph.i489:                                      ; preds = %.preheader.i476
  %i.qh = load ptr, ptr %6, align 8, !tbaa !71
  br label %bb.ee

bb.ed:                                            ; preds = %.thread583
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.16, i32 noundef 401, ptr noundef nonnull @.str.70) #21
  unreachable

bb.ee:                                            ; preds = %st_add.exit.i, %.lr.ph.i489
  %i.qi = phi i64 [ %i.qf, %.lr.ph.i489 ], [ %i.qs, %st_add.exit.i ]
  %.0103.i = phi i64 [ 0, %.lr.ph.i489 ], [ %12, %st_add.exit.i ] ; 3 uses
  %.046102.i = phi i32 [ %i.ey, %.lr.ph.i489 ], [ %i.qr, %st_add.exit.i ]
  %i.qj = getelementptr inbounds nuw [40 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !83
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !59
  %.fr212.i = freeze i32 %i.qn
  %i.qo = zext i32 %.fr212.i to i64               ; 3 uses
  %i.qp = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0103.i, i64 range(i64 0, 4294967296) %i.qo)
  %i.qq = extractvalue { i64, i1 } %i.qp, 1
  br i1 %i.qq, label %bb.ef, label %st_add.exit.i

bb.ef:                                            ; preds = %bb.ee
  call void (ptr, ...) @die(ptr noundef nonnull @.str.71, i64 noundef %.0103.i, i64 noundef range(i64 0, 4294967296) %i.qo) #21
  unreachable

st_add.exit.i:                                    ; preds = %bb.ee
  %12 = add i64 %.0103.i, %i.qo                   ; 3 uses
  %i.qr = add i32 %.046102.i, 1                   ; 2 uses
  %i.qs = zext i32 %i.qr to i64                   ; 2 uses
  %i.qt = icmp ugt i64 %i.qe, %i.qs
  br i1 %i.qt, label %bb.ee, label %st_mult.exit60.i, !llvm.loop !106

st_mult.exit60.i:                                 ; preds = %st_add.exit.i
  %i.qu = icmp ugt i64 %12, 3200
  %i.qv = udiv i64 %12, 200
  %spec.select210.i = select i1 %i.qu, i64 %i.qv, i64 16
  br label %st_mult.exit60.thread.i

st_mult.exit60.thread.i:                          ; preds = %st_mult.exit60.i, %.preheader.i476
  %i.qw = phi i64 [ 16, %.preheader.i476 ], [ %spec.select210.i, %st_mult.exit60.i ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store i64 %i.qw, ptr %i.qx, align 8, !tbaa !107
  %i.qy = shl nuw nsw i64 %i.qw, 6                ; 2 uses
  %i.qz = call ptr @xmalloc(i64 noundef %i.qy) #20 ; 2 uses
  store ptr %i.qz, ptr %1, align 8, !tbaa !109
  %i.ra = call ptr @xmalloc(i64 noundef %i.qy) #20
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 7 uses
  store ptr %i.ra, ptr %i.rb, align 8, !tbaa !110
  %i.rc = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 11 uses
  store i64 0, ptr %i.rc, align 8, !tbaa !111
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.re = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge.i484, %st_mult.exit60.thread.i
  %.pre39.pre.i168.i.a = phi ptr [ %i.qz, %st_mult.exit60.thread.i ], [ %.val.i481, %._crit_edge.i484 ]
  %indvars.iv.i477 = phi i64 [ 0, %st_mult.exit60.thread.i ], [ %indvars.iv.next.i485, %._crit_edge.i484 ] ; 9 uses
  %.044126.i = phi i64 [ %i.qw, %st_mult.exit60.thread.i ], [ %.1.lcssa.i, %._crit_edge.i484 ] ; 2 uses
  store i64 0, ptr %i.rd, align 8, !tbaa !112
  %i.rh = load i32, ptr %i.z, align 8, !tbaa !50
  %.not.i478 = icmp eq i32 %i.rh, 0
  br i1 %.not.i478, label %bb.ep, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.eg
  %.010.i.i = load ptr, ptr %i.re, align 8, !tbaa !86 ; 2 uses
  %.not811.i.i = icmp eq ptr %.010.i.i, null
  br i1 %.not811.i.i, label %midx_fanout_add_compact.exit.ithread-pre-split, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader.i.i
  %.not.i70.i = icmp eq i64 %indvars.iv.i477, 0
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %midx_fanout_add_midx_fanout_1.exit.i, %.lr.ph.i.preheader.i
  %.pre39.pre.i167.i = phi ptr [ %.pre39.pre.i164.i, %midx_fanout_add_midx_fanout_1.exit.i ], [ %.pre39.pre.i168.i.a, %.lr.ph.i.preheader.i ] ; 2 uses
  %.pr.i = phi i64 [ %.pr161.i, %midx_fanout_add_midx_fanout_1.exit.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %.012.i.i = phi ptr [ %.0.i.i480, %midx_fanout_add_midx_fanout_1.exit.i ], [ %.010.i.i, %.lr.ph.i.preheader.i ] ; 8 uses
  %i.ri = load ptr, ptr %i.rf, align 8, !tbaa !53
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 160
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !62
  %.not9.i.i479 = icmp eq ptr %.012.i.i, %i.rk
  br i1 %.not9.i.i479, label %midx_fanout_add_compact.exit.ithread-pre-split, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 168 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !113 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !114 ; 2 uses
  br i1 %.not.i70.i, label %._crit_edge36.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rn = getelementptr [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i477
  %i.ro = getelementptr i8, ptr %i.rn, i64 -4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !59
  %i.rq = call i32 @llvm.bswap.i32(i32 %i.rp)
  %i.rr = add i32 %i.rq, %i.rm
  br label %._crit_edge36.i.i

._crit_edge36.i.i:                                ; preds = %bb.ei, %bb.eh
  %.024.i.i = phi i32 [ %i.rr, %bb.ei ], [ %i.rm, %bb.eh ] ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i477
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !59
  %i.ru = call i32 @llvm.bswap.i32(i32 %i.rt)
  %i.rv = add i32 %i.ru, %i.rm                    ; 2 uses
  %i.rw = icmp ult i32 %.024.i.i, %i.rv
  br i1 %i.rw, label %.lr.ph.i72.i, label %midx_fanout_add_midx_fanout_1.exit.i

.lr.ph.i72.i:                                     ; preds = %._crit_edge36.i.i
  %i.rx = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 60
  br label %bb.ej

bb.ej:                                            ; preds = %nth_midxed_pack_midx_entry.exit.i.i, %.lr.ph.i72.i
  %i.ry = phi ptr [ %.pre39.pre.i165.i.a, %nth_midxed_pack_midx_entry.exit.i.i ], [ %.pre39.pre.i167.i, %.lr.ph.i72.i ] ; 2 uses
  %i.rz = phi i64 [ %i.sa, %nth_midxed_pack_midx_entry.exit.i.i ], [ %.pr.i, %.lr.ph.i72.i ] ; 4 uses
  %.031.i.i = phi i32 [ %i.sx, %nth_midxed_pack_midx_entry.exit.i.i ], [ %.024.i.i, %.lr.ph.i72.i ] ; 5 uses
  %i.sa = add i64 %i.rz, 1                        ; 5 uses
  %i.sb = icmp eq i64 %i.rz, -1
  br i1 %i.sb, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.16, i32 noundef 267, ptr noundef nonnull @.str.73, i64 noundef 0, i64 noundef -1) #21
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.sc = load i64, ptr %i.qx, align 8, !tbaa !107 ; 2 uses
  %i.sd = icmp ugt i64 %i.sa, %i.sc
  br i1 %i.sd, label %bb.em, label %midx_fanout_grow.exit.i.i

bb.em:                                            ; preds = %bb.el
  %i.se = mul i64 %i.sc, 3
  %i.sf = add i64 %i.se, 48
  %i.sg = lshr i64 %i.sf, 1
  %..i.i.i = call i64 @llvm.umax.i64(i64 %i.sg, i64 %i.sa) ; 4 uses
  store i64 %..i.i.i, ptr %i.qx, align 8, !tbaa !107
  %mul.ov.i.i.i.i = icmp ugt i64 %..i.i.i, 288230376151711743
  br i1 %mul.ov.i.i.i.i, label %bb.en, label %st_mult.exit.i.i.i

bb.en:                                            ; preds = %bb.em
  call void (ptr, ...) @die(ptr noundef nonnull @.str.52, i64 noundef 64, i64 noundef %..i.i.i) #21
  unreachable

st_mult.exit.i.i.i:                               ; preds = %bb.em
  %i.sh = shl nuw i64 %..i.i.i, 6
  %i.si = call ptr @xrealloc(ptr noundef %i.ry, i64 noundef %i.sh) #20 ; 2 uses
  store ptr %i.si, ptr %1, align 8, !tbaa !109
  br label %midx_fanout_grow.exit.i.i

midx_fanout_grow.exit.i.i:                        ; preds = %st_mult.exit.i.i.i, %bb.el
  %.pre39.pre.i165.i.a = phi ptr [ %i.si, %st_mult.exit.i.i.i ], [ %i.ry, %bb.el ] ; 4 uses
  %i.sj = load i32, ptr %i.rx, align 4, !tbaa !115
  %i.sk = load i32, ptr %i.rl, align 8, !tbaa !113
  %i.sl = add i32 %i.sk, %i.sj
  %.not.i.i.i487 = icmp ult i32 %.031.i.i, %i.sl
  br i1 %.not.i.i.i487, label %bb.eo, label %nth_midxed_pack_midx_entry.exit.i.i

bb.eo:                                            ; preds = %midx_fanout_grow.exit.i.i
  %i.sm = getelementptr inbounds nuw [64 x i8], ptr %.pre39.pre.i165.i.a, i64 %i.rz ; 4 uses
  %i.sn = call ptr @nth_midxed_object_oid(ptr noundef %i.sm, ptr noundef nonnull %.012.i.i, i32 noundef %.031.i.i) #20 ; 0 uses
  %i.so = call i32 @nth_midxed_pack_int_id(ptr noundef nonnull %.012.i.i, i32 noundef %.031.i.i) #20
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 36
  store i32 %i.so, ptr %i.sp, align 4, !tbaa !116
  %i.sq = call i64 @nth_midxed_offset(ptr noundef nonnull %.012.i.i, i32 noundef %.031.i.i) #20
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 48
  store i64 %i.sq, ptr %i.sr, align 8, !tbaa !119
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 40
  store i64 0, ptr %i.ss, align 8, !tbaa !120
  br label %nth_midxed_pack_midx_entry.exit.i.i

nth_midxed_pack_midx_entry.exit.i.i:              ; preds = %bb.eo, %midx_fanout_grow.exit.i.i
  %i.st = getelementptr inbounds nuw [64 x i8], ptr %.pre39.pre.i165.i.a, i64 %i.rz
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 56 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 8
  %i.sw = and i8 %i.sv, -2
  store i8 %i.sw, ptr %i.su, align 8
  store i64 %i.sa, ptr %i.rd, align 8, !tbaa !112
  %i.sx = add i32 %.031.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.sx, %i.rv
  br i1 %exitcond.not.i.i, label %midx_fanout_add_midx_fanout_1.exit.i, label %bb.ej, !llvm.loop !121

midx_fanout_add_midx_fanout_1.exit.i:             ; preds = %nth_midxed_pack_midx_entry.exit.i.i, %._crit_edge36.i.i
  %.pre39.pre.i164.i = phi ptr [ %.pre39.pre.i167.i, %._crit_edge36.i.i ], [ %.pre39.pre.i165.i.a, %nth_midxed_pack_midx_entry.exit.i.i ]
  %.pr161.i = phi i64 [ %.pr.i, %._crit_edge36.i.i ], [ %i.sa, %nth_midxed_pack_midx_entry.exit.i.i ] ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 160
  %.0.i.i480 = load ptr, ptr %i.sy, align 8, !tbaa !86 ; 2 uses
  %.not8.i.i = icmp eq ptr %.0.i.i480, null
  br i1 %.not8.i.i, label %midx_fanout_add_compact.exit.ithread-pre-split, label %.lr.ph.i.i, !llvm.loop !122

bb.ep:                                            ; preds = %bb.eg
  %i.sz = load ptr, ptr %i.ca, align 8, !tbaa !61 ; 2 uses
  %.not.i61.i488 = icmp ne ptr %i.sz, null
  %i.ta = load i32, ptr %i.x, align 8
  %.not25.i.i = icmp eq i32 %i.ta, 0
  %or.cond601 = select i1 %.not.i61.i488, i1 %.not25.i.i, i1 false
  br i1 %or.cond601, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.tb = load i32, ptr %i.h, align 8, !tbaa !102
  %i.tc = trunc nuw nsw i64 %indvars.iv.i477 to i32
  call fastcc void @midx_fanout_add_midx_fanout(ptr noundef nonnull %1, ptr noundef %i.sz, i32 noundef range(i32 0, 256) %i.tc, i32 noundef %i.tb)
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.td = load i64, ptr %i.bz, align 8, !tbaa !67
  %i.te = icmp ugt i64 %i.td, %i.qf
  br i1 %i.te, label %.lr.ph.i62.i, label %._crit_edge.i.i

.lr.ph.i62.i:                                     ; preds = %bb.er
  %.not.i73.i = icmp eq i64 %indvars.iv.i477, 0
  %i.tf = trunc i64 %indvars.iv.i477 to i32       ; 2 uses
  %i.tg = add i32 %i.tf, -1
  br label %bb.es

bb.es:                                            ; preds = %midx_fanout_add_pack_fanout.exit.i, %.lr.ph.i62.i
  %.027.i.i = phi i32 [ %i.ey, %.lr.ph.i62.i ], [ %i.uv, %midx_fanout_add_pack_fanout.exit.i ] ; 4 uses
  %i.th = load i32, ptr %i.h, align 8, !tbaa !102
  %i.ti = icmp eq i32 %.027.i.i, %i.th
  %i.tj = load ptr, ptr %6, align 8, !tbaa !71
  %i.tk = zext i32 %.027.i.i to i64
  %i.tl = getelementptr inbounds nuw [40 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !83 ; 2 uses
  br i1 %.not.i73.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.to = call i32 @get_pack_fanout(ptr noundef %i.tn, i32 noundef %i.tg) #20
  br label %bb.eu
end_hunk_0
begin_hunk_1_@write_midx_internal:bb.a
  %i.un = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  store i64 %i.um, ptr %i.un, align 8, !tbaa !120
  %i.uo = call i64 @nth_packed_object_offset(ptr noundef %i.uf, i32 noundef %.030.i.i) #20
  %i.up = getelementptr inbounds nuw i8, ptr %i.ug, i64 48
  store i64 %i.uo, ptr %i.up, align 8, !tbaa !119
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ug, i64 56 ; 2 uses
  %i.ur = load i8, ptr %i.uq, align 8
  %i.us = and i8 %i.ur, -2
  %i.ut = or disjoint i8 %i.us, %i.tr
  store i8 %i.ut, ptr %i.uq, align 8
  %i.uu = add nuw i32 %.030.i.i, 1                ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.uu, %i.tp
  br i1 %exitcond.not.i80.i, label %midx_fanout_add_pack_fanout.exit.loopexit.i, label %bb.ev, !llvm.loop !123

midx_fanout_add_pack_fanout.exit.loopexit.i:      ; preds = %fill_pack_entry.exit.i.i
  store i64 %i.ue, ptr %i.qx, align 8
  store ptr %i.ud, ptr %1, align 8
  store i64 %i.tv, ptr %i.rd, align 8
  br label %midx_fanout_add_pack_fanout.exit.i

midx_fanout_add_pack_fanout.exit.i:               ; preds = %midx_fanout_add_pack_fanout.exit.loopexit.i, %bb.eu
  %i.uv = add i32 %.027.i.i, 1                    ; 2 uses
  %i.uw = zext i32 %i.uv to i64
  %i.ux = load i64, ptr %i.bz, align 8, !tbaa !67
  %i.uy = icmp ugt i64 %i.ux, %i.uw
  br i1 %i.uy, label %bb.es, label %._crit_edge.i.i, !llvm.loop !124

._crit_edge.i.i:                                  ; preds = %midx_fanout_add_pack_fanout.exit.i, %bb.er
  %i.uz = load i32, ptr %i.h, align 8, !tbaa !102 ; 3 uses
  %i.va = icmp ult i32 %i.uz, %i.ey
  br i1 %i.va, label %bb.fb, label %._crit_edge.i.i.midx_fanout_add_compact.exit.ithread-pre-split_crit_edge

._crit_edge.i.i.midx_fanout_add_compact.exit.ithread-pre-split_crit_edge: ; preds = %._crit_edge.i.i
  %.val57.i.pr.pre = load i64, ptr %i.rd, align 8, !tbaa !112
  br label %midx_fanout_add_compact.exit.ithread-pre-split

bb.fb:                                            ; preds = %._crit_edge.i.i
  %i.vb = load ptr, ptr %6, align 8, !tbaa !71
  %i.vc = trunc nuw nsw i64 %indvars.iv.i477 to i32 ; 2 uses
  %i.vd = zext i32 %i.uz to i64
  %i.ve = getelementptr inbounds nuw [40 x i8], ptr %i.vb, i64 %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16 ; 2 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !83 ; 2 uses
  %.not.i552 = icmp eq i64 %indvars.iv.i477, 0
  br i1 %.not.i552, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.vh = add nsw i32 %i.vc, -1
  %i.vi = call i32 @get_pack_fanout(ptr noundef %i.vg, i32 noundef %i.vh) #20
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.020.i = phi i32 [ %i.vi, %bb.fc ], [ 0, %bb.fb ] ; 2 uses
  %i.vj = call i32 @get_pack_fanout(ptr noundef %i.vg, i32 noundef range(i32 0, 256) %i.vc) #20 ; 2 uses
  %i.vk = icmp ult i32 %.020.i, %i.vj
  %.val57.i.pr.pre834 = load i64, ptr %i.rd, align 8, !tbaa !112 ; 2 uses
  br i1 %i.vk, label %.lr.ph.i554, label %midx_fanout_add_compact.exit.ithread-pre-split

.lr.ph.i554:                                      ; preds = %bb.fd
  %.promoted = load i64, ptr %i.qx, align 8
  %.promoted680 = load ptr, ptr %1, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %fill_pack_entry.exit.i, %.lr.ph.i554
  %i.vl = phi ptr [ %.promoted680, %.lr.ph.i554 ], [ %i.vw, %fill_pack_entry.exit.i ] ; 2 uses
  %i.vm = phi i64 [ %.promoted, %.lr.ph.i554 ], [ %i.vx, %fill_pack_entry.exit.i ] ; 3 uses
  %i.vn = phi i64 [ %.val57.i.pr.pre834, %.lr.ph.i554 ], [ %i.vo, %fill_pack_entry.exit.i ] ; 3 uses
  %.030.i = phi i32 [ %.020.i, %.lr.ph.i554 ], [ %i.wm, %fill_pack_entry.exit.i ] ; 4 uses
  %i.vo = add i64 %i.vn, 1                        ; 5 uses
  %i.vp = icmp eq i64 %i.vn, -1
  br i1 %i.vp, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.16, i32 noundef 267, ptr noundef nonnull @.str.73, i64 noundef 0, i64 noundef -1) #21
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.vq = icmp ugt i64 %i.vo, %i.vm
  br i1 %i.vq, label %bb.fh, label %midx_fanout_grow.exit.i

bb.fh:                                            ; preds = %bb.fg
  %i.vr = mul i64 %i.vm, 3
  %i.vs = add i64 %i.vr, 48
  %i.vt = lshr i64 %i.vs, 1
  %..i.i557 = call i64 @llvm.umax.i64(i64 %i.vt, i64 %i.vo) ; 4 uses
  %mul.ov.i.i.i = icmp ugt i64 %..i.i557, 288230376151711743
  br i1 %mul.ov.i.i.i, label %bb.fi, label %st_mult.exit.i.i

bb.fi:                                            ; preds = %bb.fh
  call void (ptr, ...) @die(ptr noundef nonnull @.str.52, i64 noundef 64, i64 noundef %..i.i557) #21
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.fh
  %i.vu = shl nuw i64 %..i.i557, 6
  %i.vv = call ptr @xrealloc(ptr noundef %i.vl, i64 noundef %i.vu) #20
  br label %midx_fanout_grow.exit.i

midx_fanout_grow.exit.i:                          ; preds = %bb.fg, %st_mult.exit.i.i
  %i.vw = phi ptr [ %i.vv, %st_mult.exit.i.i ], [ %i.vl, %bb.fg ] ; 4 uses
  %i.vx = phi i64 [ %..i.i557, %st_mult.exit.i.i ], [ %i.vm, %bb.fg ] ; 2 uses
  %i.vy = load ptr, ptr %i.vf, align 8, !tbaa !83 ; 3 uses
  %i.vz = getelementptr inbounds nuw [64 x i8], ptr %i.vw, i64 %i.vn ; 5 uses
  %i.wa = call i32 @nth_packed_object_id(ptr noundef %i.vz, ptr noundef %i.vy, i32 noundef %.030.i) #20
  %i.wb = icmp slt i32 %i.wa, 0
  br i1 %i.wb, label %bb.fj, label %fill_pack_entry.exit.i

bb.fj:                                            ; preds = %midx_fanout_grow.exit.i
  %i.wc = call fastcc ptr @_(ptr noundef nonnull @.str.74)
  call void (ptr, ...) @die(ptr noundef %i.wc, i32 noundef %.030.i) #21
  unreachable

fill_pack_entry.exit.i:                           ; preds = %midx_fanout_grow.exit.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 36
  store i32 %i.uz, ptr %i.wd, align 4, !tbaa !116
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 96
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !98
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 40
  store i64 %i.wf, ptr %i.wg, align 8, !tbaa !120
  %i.wh = call i64 @nth_packed_object_offset(ptr noundef %i.vy, i32 noundef %.030.i) #20
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 48
  store i64 %i.wh, ptr %i.wi, align 8, !tbaa !119
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vz, i64 56 ; 2 uses
  %i.wk = load i8, ptr %i.wj, align 8
  %i.wl = or i8 %i.wk, 1
  store i8 %i.wl, ptr %i.wj, align 8
  %i.wm = add nuw i32 %.030.i, 1                  ; 2 uses
  %exitcond.not.i556 = icmp eq i32 %i.wm, %i.vj
  br i1 %exitcond.not.i556, label %midx_fanout_add_compact.exit.i.loopexit, label %bb.fe, !llvm.loop !123

midx_fanout_add_compact.exit.ithread-pre-split:   ; preds = %.lr.ph.i.i, %midx_fanout_add_midx_fanout_1.exit.i, %._crit_edge.i.i.midx_fanout_add_compact.exit.ithread-pre-split_crit_edge, %.preheader.i.i, %bb.fd
  %.val57.i.pr = phi i64 [ %.val57.i.pr.pre, %._crit_edge.i.i.midx_fanout_add_compact.exit.ithread-pre-split_crit_edge ], [ %.val57.i.pr.pre834, %bb.fd ], [ 0, %.preheader.i.i ], [ %.pr.i, %.lr.ph.i.i ], [ %.pr161.i, %midx_fanout_add_midx_fanout_1.exit.i ]
  %.val.i481.pre = load ptr, ptr %1, align 8, !tbaa !109
  br label %midx_fanout_add_compact.exit.i

midx_fanout_add_compact.exit.i.loopexit:          ; preds = %fill_pack_entry.exit.i
  store i64 %i.vx, ptr %i.qx, align 8
  store ptr %i.vw, ptr %1, align 8
  store i64 %i.vo, ptr %i.rd, align 8
  br label %midx_fanout_add_compact.exit.i

midx_fanout_add_compact.exit.i:                   ; preds = %midx_fanout_add_compact.exit.i.loopexit, %midx_fanout_add_compact.exit.ithread-pre-split
  %.val.i481 = phi ptr [ %.val.i481.pre, %midx_fanout_add_compact.exit.ithread-pre-split ], [ %i.vw, %midx_fanout_add_compact.exit.i.loopexit ] ; 7 uses
  %.val57.i = phi i64 [ %.val57.i.pr, %midx_fanout_add_compact.exit.ithread-pre-split ], [ %i.vo, %midx_fanout_add_compact.exit.i.loopexit ] ; 4 uses
  %i.wn = icmp ugt i64 %.val57.i, 1
  br i1 %i.wn, label %midx_fanout_sort.exit.thread.i, label %midx_fanout_sort.exit.i

midx_fanout_sort.exit.thread.i:                   ; preds = %midx_fanout_add_compact.exit.i
  call void @qsort(ptr noundef %.val.i481, i64 noundef %.val57.i, i64 noundef 64, ptr noundef nonnull @midx_oid_compare) #20
  br label %.lr.ph123.i.preheader

midx_fanout_sort.exit.i:                          ; preds = %midx_fanout_add_compact.exit.i
  %.not127.i = icmp eq i64 %.val57.i, 0
  br i1 %.not127.i, label %._crit_edge.i484, label %.lr.ph123.i.preheader

.lr.ph123.i.preheader:                            ; preds = %midx_fanout_sort.exit.i, %midx_fanout_sort.exit.thread.i
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %.lr.ph123.i.preheader, %bb.fs
  %i.wo = phi i64 [ %i.xw, %bb.fs ], [ 0, %.lr.ph123.i.preheader ] ; 3 uses
  %.1122.i = phi i64 [ %.4.i, %bb.fs ], [ %.044126.i, %.lr.ph123.i.preheader ] ; 5 uses
  %.045121.i = phi i32 [ %i.xv, %bb.fs ], [ 0, %.lr.ph123.i.preheader ] ; 3 uses
  %.not52.i = icmp eq i32 %.045121.i, 0
  br i1 %.not52.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph123.i
  %i.wp = add i32 %.045121.i, -1
  %i.wq = zext i32 %i.wp to i64
  %i.wr = getelementptr inbounds nuw [64 x i8], ptr %.val.i481, i64 %i.wq ; 2 uses
  %i.ws = getelementptr inbounds nuw [64 x i8], ptr %.val.i481, i64 %i.wo ; 2 uses
  %i.wt = load i128, ptr %i.wr, align 1
  %i.wu = load i128, ptr %i.ws, align 1
  %i.wv = xor i128 %i.wt, %i.wu
  %i.ww = getelementptr i8, ptr %i.wr, i64 16
  %i.wx = getelementptr i8, ptr %i.ws, i64 16
  %i.wy = load i128, ptr %i.ww, align 1
  %i.wz = load i128, ptr %i.wx, align 1
  %i.xa = xor i128 %i.wy, %i.wz
  %i.xb = or i128 %i.wv, %i.xa
  %i.xc = icmp ne i128 %i.xb, 0
  %i.xd = zext i1 %i.xc to i32
  %.not.i63.not.i = icmp eq i32 %i.xd, 0
  br i1 %.not.i63.not.i, label %bb.fs, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph123.i
  %i.xe = load i32, ptr %i.x, align 8, !tbaa !49
  %.not54.i = icmp eq i32 %i.xe, 0
  br i1 %.not54.i, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xf = load ptr, ptr %i.rg, align 8, !tbaa !60 ; 2 uses
  %.not55.i482 = icmp eq ptr %i.xf, null
  br i1 %.not55.i482, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.xg = getelementptr inbounds nuw [64 x i8], ptr %.val.i481, i64 %i.wo
  %i.xh = call i32 @midx_has_oid(ptr noundef nonnull %i.xf, ptr noundef %i.xg) #20
  %.not56.i483 = icmp eq i32 %i.xh, 0
  br i1 %.not56.i483, label %bb.fo, label %bb.fs

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fl
  %i.xi = load i64, ptr %i.rc, align 8, !tbaa !111 ; 4 uses
  %13 = icmp eq i64 %i.xi, -1
  br i1 %13, label %bb.fp, label %st_add.exit64.i

bb.fp:                                            ; preds = %bb.fo
  call void (ptr, ...) @die(ptr noundef nonnull @.str.71, i64 noundef -1, i64 noundef 1) #21
  unreachable

st_add.exit64.i:                                  ; preds = %bb.fo
  %.not85.i = icmp ult i64 %i.xi, %.1122.i
  br i1 %.not85.i, label %st_add.exit64._crit_edge.i, label %st_add.exit65.i

st_add.exit64._crit_edge.i:                       ; preds = %st_add.exit64.i
  %.pre.i486 = load ptr, ptr %i.rb, align 8, !tbaa !110
  br label %bb.fr

st_add.exit65.i:                                  ; preds = %st_add.exit64.i
  %14 = add nuw i64 %i.xi, 1
  %i.xj = mul nuw nsw i64 %.1122.i, 3
  %i.xk = add nuw nsw i64 %i.xj, 48
  %i.xl = lshr i64 %i.xk, 1
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.xl, i64 %14) ; 4 uses
  %mul.ov.i68.i = icmp ugt i64 %spec.select.i, 288230376151711743
  br i1 %mul.ov.i68.i, label %bb.fq, label %st_mult.exit69.i

bb.fq:                                            ; preds = %st_add.exit65.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.52, i64 noundef 64, i64 noundef %spec.select.i) #21
  unreachable

st_mult.exit69.i:                                 ; preds = %st_add.exit65.i
  %i.xm = load ptr, ptr %i.rb, align 8, !tbaa !110
  %i.xn = shl nuw i64 %spec.select.i, 6
  %i.xo = call ptr @xrealloc(ptr noundef %i.xm, i64 noundef %i.xn) #20 ; 2 uses
  store ptr %i.xo, ptr %i.rb, align 8, !tbaa !110
  %.pre163.i = load i64, ptr %i.rc, align 8, !tbaa !111
  br label %bb.fr

bb.fr:                                            ; preds = %st_mult.exit69.i, %st_add.exit64._crit_edge.i
  %i.xp = phi i64 [ %.pre163.i, %st_mult.exit69.i ], [ %i.xi, %st_add.exit64._crit_edge.i ]
  %i.xq = phi ptr [ %i.xo, %st_mult.exit69.i ], [ %.pre.i486, %st_add.exit64._crit_edge.i ]
  %.3.i = phi i64 [ %spec.select.i, %st_mult.exit69.i ], [ %.1122.i, %st_add.exit64._crit_edge.i ]
  %i.xr = getelementptr inbounds nuw [64 x i8], ptr %i.xq, i64 %i.xp
  %i.xs = getelementptr inbounds nuw [64 x i8], ptr %.val.i481, i64 %i.wo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xr, ptr noundef nonnull align 8 dereferenceable(64) %i.xs, i64 64, i1 false)
  %i.xt = load i64, ptr %i.rc, align 8, !tbaa !111
  %i.xu = add i64 %i.xt, 1
  store i64 %i.xu, ptr %i.rc, align 8, !tbaa !111
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fn, %bb.fk
  %.4.i = phi i64 [ %.1122.i, %bb.fk ], [ %.1122.i, %bb.fn ], [ %.3.i, %bb.fr ] ; 2 uses
  %i.xv = add i32 %.045121.i, 1                   ; 2 uses
  %i.xw = zext i32 %i.xv to i64                   ; 2 uses
  %i.xx = icmp ugt i64 %.val57.i, %i.xw
  br i1 %i.xx, label %.lr.ph123.i, label %._crit_edge.i484, !llvm.loop !125

._crit_edge.i484:                                 ; preds = %bb.fs, %midx_fanout_sort.exit.i
  %.1.lcssa.i = phi i64 [ %.044126.i, %midx_fanout_sort.exit.i ], [ %.4.i, %bb.fs ]
  %indvars.iv.next.i485 = add nuw nsw i64 %indvars.iv.i477, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i485, 256
  br i1 %exitcond.not.i, label %compute_sorted_entries.exit, label %bb.eg, !llvm.loop !126

compute_sorted_entries.exit:                      ; preds = %._crit_edge.i484
  call void @free(ptr noundef %.val.i481) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.xy = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 6 uses
  %i.xz = load i8, ptr %i.xy, align 8
  %i.ya = and i8 %i.xz, -2                        ; 3 uses
  store i8 %i.ya, ptr %i.xy, align 8
  %i.yb = load i64, ptr %i.rc, align 8, !tbaa !111 ; 5 uses
  %.not762.a = icmp eq i64 %i.yb, 0
  br i1 %.not762.a, label %._crit_edge693, label %.lr.ph692

.lr.ph692:                                        ; preds = %compute_sorted_entries.exit
  %i.yc = load ptr, ptr %i.rb, align 8, !tbaa !110 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 4 uses
  %.promoted694 = load i32, ptr %i.yd, align 4    ; 2 uses
  %xtraiter = and i64 %i.yb, 1
  %i.ye = icmp eq i64 %i.yb, 1
  br i1 %i.ye, label %.epil.preheader, label %.lr.ph692.new

.lr.ph692.new:                                    ; preds = %.lr.ph692
  %unroll_iter = and i64 %i.yb, -2
  br label %bb.fv

._crit_edge693.loopexit.unr-lcssa:                ; preds = %.thread587.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge693, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge693.loopexit.unr-lcssa, %.lr.ph692
  %.epil.init = phi i32 [ %.promoted694, %.lr.ph692 ], [ %i.zf, %._crit_edge693.loopexit.unr-lcssa ]
  %.0286691.epil.init = phi i64 [ 0, %.lr.ph692 ], [ %i.zh, %._crit_edge693.loopexit.unr-lcssa ]
  %.epil.init1141 = phi i8 [ %i.ya, %.lr.ph692 ], [ %i.zg, %._crit_edge693.loopexit.unr-lcssa ]
  %lcmp.mod1142 = trunc i64 %i.yb to i1
  call void @llvm.assume(i1 %lcmp.mod1142)
  %i.yf = getelementptr inbounds nuw [64 x i8], ptr %i.yc, i64 %.0286691.epil.init
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 48
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !119 ; 2 uses
  %i.yi = icmp ugt i64 %i.yh, 2147483647
  br i1 %i.yi, label %bb.ft, label %._crit_edge693

bb.ft:                                            ; preds = %.epil.preheader
  %i.yj = add i32 %.epil.init, 1
  store i32 %i.yj, ptr %i.yd, align 4, !tbaa !127
  %i.yk = icmp ugt i64 %i.yh, 4294967295
  br i1 %i.yk, label %bb.fu, label %._crit_edge693

bb.fu:                                            ; preds = %bb.ft
  %i.yl = or i8 %.epil.init1141, 1
  store i8 %i.yl, ptr %i.xy, align 8
  br label %._crit_edge693

._crit_edge693:                                   ; preds = %._crit_edge693.loopexit.unr-lcssa, %bb.fu, %bb.ft, %.epil.preheader, %compute_sorted_entries.exit
  %i.ym = load i32, ptr %i.z, align 8, !tbaa !50
  %.not389 = icmp eq i32 %i.ym, 0
  br i1 %.not389, label %bb.gc, label %bb.ga

bb.fv:                                            ; preds = %.thread587.1, %.lr.ph692.new
  %i.yn = phi i32 [ %.promoted694, %.lr.ph692.new ], [ %i.zf, %.thread587.1 ] ; 2 uses
  %.0286691 = phi i64 [ 0, %.lr.ph692.new ], [ %i.zh, %.thread587.1 ] ; 3 uses
  %i.yo = phi i8 [ %i.ya, %.lr.ph692.new ], [ %i.zg, %.thread587.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph692.new ], [ %niter.next.1, %.thread587.1 ]
  %i.yp = getelementptr inbounds nuw [64 x i8], ptr %i.yc, i64 %.0286691
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 48
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !119 ; 2 uses
  %i.ys = icmp ugt i64 %i.yr, 2147483647
  br i1 %i.ys, label %bb.fw, label %.thread587

bb.fw:                                            ; preds = %bb.fv
  %i.yt = add i32 %i.yn, 1                        ; 3 uses
  store i32 %i.yt, ptr %i.yd, align 4, !tbaa !127
  %i.yu = icmp ugt i64 %i.yr, 4294967295
  br i1 %i.yu, label %bb.fx, label %.thread587

bb.fx:                                            ; preds = %bb.fw
  %i.yv = or i8 %i.yo, 1                          ; 2 uses
  store i8 %i.yv, ptr %i.xy, align 8
  br label %.thread587

.thread587:                                       ; preds = %bb.fv, %bb.fw, %bb.fx
  %i.yw = phi i32 [ %i.yn, %bb.fv ], [ %i.yt, %bb.fw ], [ %i.yt, %bb.fx ] ; 2 uses
  %i.yx = phi i8 [ %i.yo, %bb.fv ], [ %i.yo, %bb.fw ], [ %i.yv, %bb.fx ] ; 3 uses
  %i.yy = getelementptr inbounds nuw [64 x i8], ptr %i.yc, i64 %.0286691
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 112
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !119 ; 2 uses
  %i.zb = icmp ugt i64 %i.za, 2147483647
  br i1 %i.zb, label %bb.fy, label %.thread587.1

bb.fy:                                            ; preds = %.thread587
  %i.zc = add i32 %i.yw, 1                        ; 3 uses
  store i32 %i.zc, ptr %i.yd, align 4, !tbaa !127
  %i.zd = icmp ugt i64 %i.za, 4294967295
  br i1 %i.zd, label %bb.fz, label %.thread587.1

bb.fz:                                            ; preds = %bb.fy
  %i.ze = or i8 %i.yx, 1                          ; 2 uses
  store i8 %i.ze, ptr %i.xy, align 8
  br label %.thread587.1

.thread587.1:                                     ; preds = %bb.fz, %bb.fy, %.thread587
  %i.zf = phi i32 [ %i.yw, %.thread587 ], [ %i.zc, %bb.fy ], [ %i.zc, %bb.fz ] ; 2 uses
  %i.zg = phi i8 [ %i.yx, %.thread587 ], [ %i.yx, %bb.fy ], [ %i.ze, %bb.fz ] ; 2 uses
  %i.zh = add nuw i64 %.0286691, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge693.loopexit.unr-lcssa, label %bb.fv, !llvm.loop !128

bb.ga:                                            ; preds = %._crit_edge693
  %i.zi = load i32, ptr %i.p, align 4, !tbaa !48
  %.not390 = icmp eq i32 %i.zi, 2
  br i1 %.not390, label %sane_qsort.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.16, i32 noundef 1531, ptr noundef nonnull @.str.36) #21
  unreachable

bb.gc:                                            ; preds = %._crit_edge693
  %i.zj = load i64, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  %i.zk = icmp ugt i64 %i.zj, 1
  br i1 %i.zk, label %bb.gd, label %sane_qsort.exit

bb.gd:                                            ; preds = %bb.gc
  %i.zl = load ptr, ptr %6, align 8, !tbaa !71
  call void @qsort(ptr noundef %i.zl, i64 noundef %i.zj, i64 noundef 40, ptr noundef nonnull @pack_info_compare) #20
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %bb.gd, %bb.gc, %bb.ga
  %i.zm = load ptr, ptr %i.jy, align 8, !tbaa !93 ; 2 uses
  %.not391 = icmp eq ptr %i.zm, null
  br i1 %.not391, label %bb.go, label %bb.ge

bb.ge:                                            ; preds = %sane_qsort.exit
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !104
  %.not392 = icmp eq i64 %i.zo, 0
  br i1 %.not392, label %bb.go, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.zp = load i32, ptr %i.z, align 8, !tbaa !50
  %.not393 = icmp eq i32 %i.zp, 0
  br i1 %.not393, label %.preheader613, label %bb.gg

.preheader613:                                    ; preds = %bb.gf
  %i.zq = load i64, ptr %i.bz, align 8, !tbaa !67
  %.not763 = icmp eq i64 %i.zq, 0
  br i1 %.not763, label %st_mult.exit495, label %.lr.ph698

bb.gg:                                            ; preds = %bb.gf
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.16, i32 noundef 1540, ptr noundef nonnull @.str.37) #21
  unreachable

.lr.ph698:                                        ; preds = %.preheader613, %bb.gn
  %.0280697 = phi i64 [ %i.aat, %bb.gn ], [ 0, %.preheader613 ] ; 4 uses
  %.0282696 = phi i32 [ %.1283, %bb.gn ], [ 0, %.preheader613 ] ; 4 uses
  %.0284695 = phi i64 [ %.1285, %bb.gn ], [ 0, %.preheader613 ] ; 6 uses
  %i.zr = load ptr, ptr %i.jy, align 8, !tbaa !93 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !104
  %i.zu = icmp ult i64 %.0284695, %i.zt
  br i1 %i.zu, label %bb.gh, label %.critedge

.critedge:                                        ; preds = %.lr.ph698, %bb.gn
end_hunk_1
