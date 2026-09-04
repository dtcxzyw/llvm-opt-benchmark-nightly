Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/networking?download=true
inline.NumInlined: 302
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@clientCommand:bb.a
  %i.no = and i64 %.0421.lcssa, 51539607552       ; 2 uses
  %.not573 = icmp eq i64 %i.no, 0
  %or.cond612 = or i1 %i.nf, %.not573
  br i1 %or.cond612, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.critedge611
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.209)
  call void @zfree(ptr noundef %.0417.lcssa) #30
  br label %.critedge615

bb.fe:                                            ; preds = %.critedge611
  %i.np = and i64 %.0421.lcssa, 34359738368
  %.not575 = icmp eq i64 %i.np, 0
  %or.cond613.not = icmp eq i64 %i.no, 51539607552
  br i1 %or.cond613.not, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.210)
  call void @zfree(ptr noundef %.0417.lcssa) #30
  br label %.critedge615

bb.fg:                                            ; preds = %bb.fe
  %i.nq = and i64 %.0421.lcssa, 17179869184
  %.not574 = icmp eq i64 %i.nq, 0
  %i.nr = and i64 %i.ni, 34359738368
  %.not576 = icmp eq i64 %i.nr, 0
  %or.cond706 = or i1 %.not574, %.not576
  br i1 %or.cond706, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ns = and i64 %i.ni, 17179869184
  %.not578 = icmp eq i64 %i.ns, 0
  %or.cond707 = or i1 %.not575, %.not578
  br i1 %or.cond707, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.211)
  call void @zfree(ptr noundef %.0417.lcssa) #30
  br label %.critedge615

bb.fj:                                            ; preds = %bb.fh
  br i1 %i.nf, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.nt = call i32 @checkPrefixCollisionsOrReply(ptr noundef nonnull %0, ptr noundef %.0417.lcssa, i64 noundef %.0413.lcssa) #30
  %.not579 = icmp eq i32 %i.nt, 0
  br i1 %.not579, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call void @zfree(ptr noundef %.0417.lcssa) #30
  br label %.critedge615

bb.fm:                                            ; preds = %bb.fk, %bb.fj
  %i.nu = load i64, ptr %i.h, align 8, !tbaa !139
  call void @enableTracking(ptr noundef nonnull %0, i64 noundef %i.nu, i64 noundef %.0421.lcssa, ptr noundef %.0417.lcssa, i64 noundef %.0413.lcssa) #30
  br label %bb.fq

bb.fn:                                            ; preds = %._crit_edge782
  %i.nv = call i32 @strcasecmp(ptr noundef %i.nc, ptr noundef nonnull @.str.170) #34
  %.not580 = icmp eq i32 %i.nv, 0
  br i1 %.not580, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  call void @disableTracking(ptr noundef nonnull %0) #30
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  call void @zfree(ptr noundef %.0417.lcssa) #30
  %i.nw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !364
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.nw)
  br label %.critedge615

bb.fq:                                            ; preds = %bb.fo, %bb.fm
  call void @zfree(ptr noundef %.0417.lcssa) #30
  %i.nx = load ptr, ptr @shared, align 8, !tbaa !254
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.nx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %.critedge

bb.fr:                                            ; preds = %bb.ef
  %i.ny = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.212) #34
  %.not581 = icmp eq i32 %i.ny, 0
  %or.cond708 = and i1 %i.lk, %.not581
  br i1 %or.cond708, label %bb.fs, label %bb.gc

bb.fs:                                            ; preds = %bb.fr
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !113 ; 4 uses
  %i.ob = and i64 %i.oa, 2147483648
  %.not582 = icmp eq i64 %i.ob, 0
  br i1 %.not582, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.213)
  br label %.critedge

bb.fu:                                            ; preds = %bb.fs
  %i.oc = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !169
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !33 ; 2 uses
  %i.og = tail call i32 @strcasecmp(ptr noundef %i.of, ptr noundef nonnull @.str.183) #34
  %.not583 = icmp eq i32 %i.og, 0
  br i1 %.not583, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.oh = and i64 %i.oa, 17179869184
  %.not584 = icmp eq i64 %i.oh, 0
  br i1 %.not584, label %bb.fw, label %bb.gb

bb.fw:                                            ; preds = %bb.fv
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.214)
  br label %.critedge

bb.fx:                                            ; preds = %bb.fu
  %i.oi = tail call i32 @strcasecmp(ptr noundef %i.of, ptr noundef nonnull @.str.184) #34
  %.not585 = icmp eq i32 %i.oi, 0
  br i1 %.not585, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  %i.oj = and i64 %i.oa, 34359738368
  %.not586 = icmp eq i64 %i.oj, 0
  br i1 %.not586, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.215)
  br label %.critedge

bb.ga:                                            ; preds = %bb.fx
  %i.ok = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !364
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ok)
  br label %.critedge

bb.gb:                                            ; preds = %bb.fy, %bb.fv
  %storemerge = or i64 %i.oa, 68719476736
  store i64 %storemerge, ptr %i.nz, align 8, !tbaa !113
  %i.ol = load ptr, ptr @shared, align 8, !tbaa !254
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ol)
  br label %.critedge

bb.gc:                                            ; preds = %bb.fr
  %i.om = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.216) #34
  %.not587 = icmp eq i32 %i.om, 0
  br i1 %.not587, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.k, label %.thread696, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !113
  %i.op = and i64 %i.oo, 2147483648
  %.not588 = icmp eq i64 %i.op, 0
  br i1 %.not588, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !188
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.or)
  br label %.critedge

bb.gg:                                            ; preds = %bb.ge
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef -1)
  br label %.critedge

bb.gh:                                            ; preds = %bb.gc
  %i.os = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.217) #34
  %.not589 = icmp ne i32 %i.os, 0
  %brmerge710 = or i1 %i.k, %.not589
  br i1 %brmerge710, label %.thread696, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !100
  %i.ov = icmp eq i32 %i.ou, 2                    ; 2 uses
  %spec.select.i = select i1 %i.ov, i32 42, i32 37
  %i.ow = zext i1 %i.ov to i64
  %spec.select5.i = shl nuw nsw i64 3, %i.ow
  tail call void @addReplyAggregateLen(ptr noundef nonnull %0, i64 noundef %spec.select5.i, i32 noundef %spec.select.i)
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.218, i64 noundef 5)
  %i.ox = tail call ptr @addReplyDeferredLen(ptr noundef nonnull %0)
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !113
  %i.pa = and i64 %i.oz, 2147483648
  %.not590 = icmp eq i64 %i.pa, 0                 ; 2 uses
  %i.pb = select i1 %.not590, ptr @.str.170, ptr @.str.169
  %i.pc = select i1 %.not590, i64 3, i64 2
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.pb, i64 noundef %i.pc)
  %i.pd = load i64, ptr %i.oy, align 8, !tbaa !113 ; 2 uses
  %i.pe = and i64 %i.pd, 8589934592
  %.not591 = icmp eq i64 %i.pe, 0
  br i1 %.not591, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.202, i64 noundef 5)
  %.pre832 = load i64, ptr %i.oy, align 8, !tbaa !113
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.pf = phi i64 [ %.pre832, %bb.gj ], [ %i.pd, %bb.gi ] ; 2 uses
  %.0 = phi i32 [ 2, %bb.gj ], [ 1, %bb.gi ]      ; 3 uses
  %i.pg = and i64 %i.pf, 17179869184
  %.not592 = icmp eq i64 %i.pg, 0
  br i1 %.not592, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.203, i64 noundef 5)
  %3 = add nuw nsw i32 %.0, 1
  %i.ph = load i64, ptr %i.oy, align 8, !tbaa !113 ; 2 uses
  %i.pi = and i64 %i.ph, 68719476736
  %.not593 = icmp eq i64 %i.pi, 0
  br i1 %.not593, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.219, i64 noundef 11)
  %4 = add nuw nsw i32 %.0, 2
  %.pre833 = load i64, ptr %i.oy, align 8, !tbaa !113
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm, %bb.gk
  %i.pj = phi i64 [ %.pre833, %bb.gm ], [ %i.ph, %bb.gl ], [ %i.pf, %bb.gk ] ; 2 uses
  %.1 = phi i32 [ %4, %bb.gm ], [ %3, %bb.gl ], [ %.0, %bb.gk ] ; 3 uses
  %i.pk = and i64 %i.pj, 34359738368
  %.not594 = icmp eq i64 %i.pk, 0
  br i1 %.not594, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.204, i64 noundef 6)
  %5 = add nuw nsw i32 %.1, 1
  %i.pl = load i64, ptr %i.oy, align 8, !tbaa !113 ; 2 uses
  %i.pm = and i64 %i.pl, 68719476736
  %.not595 = icmp eq i64 %i.pm, 0
  br i1 %.not595, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.220, i64 noundef 10)
  %6 = add nuw nsw i32 %.1, 2
  %.pre834 = load i64, ptr %i.oy, align 8, !tbaa !113
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gp, %bb.gn
  %i.pn = phi i64 [ %.pre834, %bb.gp ], [ %i.pl, %bb.go ], [ %i.pj, %bb.gn ] ; 2 uses
  %.2 = phi i32 [ %6, %bb.gp ], [ %5, %bb.go ], [ %.1, %bb.gn ] ; 2 uses
  %i.po = and i64 %i.pn, 137438953472
  %.not596 = icmp eq i64 %i.po, 0
  br i1 %.not596, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.205, i64 noundef 6)
  %7 = add nuw nsw i32 %.2, 1
  %.pre835 = load i64, ptr %i.oy, align 8, !tbaa !113
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.pp = phi i64 [ %.pre835, %bb.gr ], [ %i.pn, %bb.gq ]
  %.3 = phi i32 [ %7, %bb.gr ], [ %.2, %bb.gq ]   ; 2 uses
  %i.pq = and i64 %i.pp, 4294967296
  %.not597 = icmp eq i64 %i.pq, 0
  br i1 %.not597, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.221, i64 noundef 15)
  %8 = add nuw nsw i32 %.3, 1
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.4 = phi i32 [ %8, %bb.gt ], [ %.3, %bb.gs ]
  %9 = zext nneg i32 %.4 to i64
  %i.pr = load i32, ptr %i.ot, align 4, !tbaa !100
  %i.ps = icmp eq i32 %i.pr, 2
  %i.pt = select i1 %i.ps, i8 42, i8 126
  tail call void @setDeferredAggregateLen(ptr noundef nonnull %0, ptr noundef %i.ox, i64 noundef %9, i8 noundef signext %i.pt)
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.199, i64 noundef 8)
  %i.pu = load i64, ptr %i.oy, align 8, !tbaa !113
  %i.pv = and i64 %i.pu, 2147483648
  %.not598 = icmp eq i64 %i.pv, 0
  br i1 %.not598, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !188
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gu, %bb.gv
  %.sink892 = phi i64 [ %i.px, %bb.gv ], [ -1, %bb.gu ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.sink892)
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.222, i64 noundef 8)
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !253 ; 2 uses
  %.not599 = icmp eq ptr %i.pz, null
  br i1 %.not599, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.qa = tail call i64 @raxSize(ptr noundef nonnull %i.pz) #30
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.qa)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.qb = load ptr, ptr %i.py, align 8, !tbaa !253
  call void @raxStart(ptr noundef nonnull %2, ptr noundef %i.qb) #30
  %i.qc = call i32 @raxSeek(ptr noundef nonnull %2, ptr noundef nonnull @.str.223, ptr noundef null, i64 noundef 0) #30 ; 0 uses
  %i.qd = call i32 @raxNext(ptr noundef nonnull %2) #30
  %.not600774 = icmp eq i32 %i.qd, 0
  br i1 %.not600774, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.gx
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.gy

bb.gy:                                            ; preds = %.lr.ph, %bb.gy
  %i.qg = load ptr, ptr %i.qe, align 8, !tbaa !368
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !369
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef %i.qg, i64 noundef %i.qh)
  %i.qi = call i32 @raxNext(ptr noundef nonnull %2) #30
  %.not600 = icmp eq i32 %i.qi, 0
  br i1 %.not600, label %._crit_edge, label %bb.gy, !llvm.loop !363

._crit_edge:                                      ; preds = %bb.gy, %bb.gx
  call void @raxStop(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.critedge

bb.gz:                                            ; preds = %bb.gw
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 0)
  br label %.critedge

.thread696:                                       ; preds = %bb.gh, %bb.gd
  %i.qj = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.224) #34
  %.not601 = icmp eq i32 %i.qj, 0
  br i1 %.not601, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %.thread696
  %i.qk = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !169
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !33 ; 2 uses
  %i.qo = tail call i32 @strcasecmp(ptr noundef %i.qn, ptr noundef nonnull @.str.169) #34
  %.not602 = icmp eq i32 %i.qo, 0
  br i1 %.not602, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !113
  %i.qr = or i64 %i.qq, 35184372088832
  store i64 %i.qr, ptr %i.qp, align 8, !tbaa !113
  %i.qs = load ptr, ptr @shared, align 8, !tbaa !254
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.qs)
  br label %.critedge

bb.hc:                                            ; preds = %bb.ha
  %i.qt = tail call i32 @strcasecmp(ptr noundef %i.qn, ptr noundef nonnull @.str.170) #34
  %.not603 = icmp eq i32 %i.qt, 0
  br i1 %.not603, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !113
  %i.qw = and i64 %i.qv, -35184372088833
  store i64 %i.qw, ptr %i.qu, align 8, !tbaa !113
  %i.qx = load ptr, ptr @shared, align 8, !tbaa !254
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.qx)
  br label %.critedge

bb.he:                                            ; preds = %bb.hc
  %i.qy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !364
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.qy)
  br label %.critedge

bb.hf:                                            ; preds = %.thread696
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0)
  br label %.critedge

.critedge607:                                     ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %.critedge

.critedge609:                                     ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.critedge

.critedge615:                                     ; preds = %bb.ew, %bb.el, %bb.ej, %addReplyError.exit, %bb.fc, %bb.fl, %bb.fi, %bb.ff, %bb.fd, %bb.ez, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.bc, %.split875.thread, %.split.thread, %.split875, %.split, %.thread655, %getClientTypeByName.exit631, %bb.bu, %bb.by, %bb.bz, %.thread645, %bb.ga, %bb.fz, %bb.fw, %addReplyErrorObject.exit634, %addReplyErrorObject.exit, %getClientTypeByName.exit, %bb.c, %sdslen.exit, %bb.an, %bb.ap, %bb.aq, %bb.al, %bb.dr, %bb.dq, %bb.dy, %bb.gg, %bb.gf, %bb.hf, %bb.hd, %bb.he, %bb.hb, %bb.dv, %bb.dw, %bb.au, %bb.aw, %.thread863, %sdslen.exit623, %bb.da, %bb.db, %bb.do, %bb.ee, %bb.fq, %bb.gb, %bb.gz, %._crit_edge, %.critedge615, %.critedge609, %.critedge607, %bb.ft, %bb.ax, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 -1, 4) i32 @getClientTypeByName(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.248) #34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.249) #34
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.13) #34
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.250) #34
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.12) #34
  %.not8 = icmp eq i32 %i.e, 0
  %. = select i1 %.not8, i32 3, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.d ], [ %., %bb.e ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @getLongLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @removeClientFromMemUsageBucket(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @getRangeLongFromObjectOrReply(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @blockedClientMayTimeout(ptr noundef) local_unnamed_addr #2

declare void @unblockClientOnError(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unblockClientOnTimeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @unpauseActions(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1560), i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !256
  store i32 0, ptr %i.b, align 8, !tbaa !257
  tail call void @updatePausedActions()
  ret void
}

declare i32 @getTimeoutFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @pauseClientsByClient(i64 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1560), align 8
  %i.b = and i32 %i.a, 2
  %.not3 = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, i1 %.not3, i1 false
  %.0 = select i1 %i.c, i32 29, i32 30
  %i.d = tail call i32 @clusterAsmCancel(ptr noundef null, ptr noundef nonnull @.str.280) #30 ; 0 uses
  store i32 %.0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1560), align 8, !tbaa !257
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1568), align 8, !tbaa !256
  %i.f = icmp slt i64 %i.e, %0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1568), align 8, !tbaa !256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @updatePausedActions()
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 220), align 4, !tbaa !258
end_hunk_0
