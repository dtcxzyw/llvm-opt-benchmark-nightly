Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeSubplan?download=true
inline.NumInlined: 80
inline.NumDeleted: 37
begin_hunk_0_@ExecSubPlan:bb.a
  store i8 1, ptr %2, align 1
  br label %bb.as

bb.as:                                            ; preds = %.sink.split.i, %bb.ar, %bb.aq, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.i = phi i64 [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.am ], [ 1, %bb.aj ], [ 0, %.sink.split.i ]
  %i.lf = load ptr, ptr %i.ic, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull %i.ib) #8, !inline_history !21
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8
  call void @MemoryContextReset(ptr noundef %i.ll) #8
  br label %ExecHashSubPlan.exit

bb.at:                                            ; preds = %bb.g
  %i.lm = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ln = load i32, ptr %i.lm, align 4            ; 7 uses
  %i.lo = icmp eq i32 %i.ln, 6                    ; 5 uses
  br i1 %i.lo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lp = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.lq = load i32, ptr %i.lp, align 8
  %i.lr = load ptr, ptr @CurrentMemoryContext, align 8
  %i.ls = tail call ptr @initArrayResultAny(i32 noundef %i.lq, ptr noundef %i.lr, i1 noundef zeroext true) #8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0129.i = phi ptr [ %i.ls, %bb.au ], [ null, %bb.at ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = load ptr, ptr @CurrentMemoryContext, align 8 ; 6 uses
  store ptr %i.lu, ptr @CurrentMemoryContext, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.lx = load ptr, ptr %i.lw, align 8            ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %i.lx, null
  br i1 %.not.i20, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.mb = load i32, ptr %i.ly, align 4
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph197.preheader.i, label %.critedge.i

.lr.ph197.preheader.i:                            ; preds = %.lr.ph.i
  %.pre.i21 = load ptr, ptr %i.ma, align 8
  br label %.lr.ph197.i

.lr.ph197.i:                                      ; preds = %.lr.ph197.i, %.lr.ph197.preheader.i
  %i.md = phi ptr [ %.pre.i21, %.lr.ph197.preheader.i ], [ %i.mh, %.lr.ph197.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph197.preheader.i ], [ %indvars.iv.next.i, %.lr.ph197.i ] ; 2 uses
  %i.me = load ptr, ptr %i.lz, align 8
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv.i
  %i.mg = load i32, ptr %i.mf, align 8
  %i.mh = tail call ptr @bms_add_member(ptr noundef %i.md, i32 noundef %i.mg) #8 ; 2 uses
  store ptr %i.mh, ptr %i.ma, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mi = load i32, ptr %i.ly, align 4
  %i.mj = sext i32 %i.mi to i64
  %i.mk = icmp slt i64 %indvars.iv.next.i, %i.mj
  br i1 %i.mk, label %.lr.ph197.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph197.i, %.lr.ph.i, %bb.av
  tail call void @ExecReScan(ptr noundef %i.y) #8
  %i.ml = icmp eq i32 %i.ln, 1                    ; 2 uses
  %i.mm = zext i1 %i.ml to i64                    ; 2 uses
  store i8 0, ptr %2, align 1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8
  %.not.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i, label %ExecProcNode.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i
  tail call void @ExecReScan(ptr noundef nonnull %i.y) #8
  br label %ExecProcNode.exit.i

ExecProcNode.exit.i:                              ; preds = %bb.aw, %.critedge.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = tail call ptr %i.mq(ptr noundef nonnull %i.y) #8, !inline_history !22 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %.critedge151.thread.i, label %.lr.ph216.i

.lr.ph216.i:                                      ; preds = %ExecProcNode.exit.i
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.mw = icmp eq i32 %i.ln, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.na = icmp eq i32 %i.ln, 2
  %i.nb = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %bb.ax

bb.ax:                                            ; preds = %ExecProcNode.exit161.i, %.lr.ph216.i
  %.0215.i = phi ptr [ %i.mr, %.lr.ph216.i ], [ %i.rg, %ExecProcNode.exit161.i ] ; 16 uses
  %.0118214.i = phi i64 [ %i.mm, %.lr.ph216.i ], [ %.2.ph.i, %ExecProcNode.exit161.i ] ; 10 uses
  %.0119213.i = phi i1 [ false, %.lr.ph216.i ], [ true, %ExecProcNode.exit161.i ] ; 4 uses
  %.1130212.i = phi ptr [ %.0129.i, %.lr.ph216.i ], [ %.2131.ph.i, %ExecProcNode.exit161.i ] ; 11 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0215.i, i64 4
  %i.nd = load i16, ptr %i.nc, align 4
  %i.ne = and i16 %i.nd, 2
  %i.nf = icmp eq i16 %i.ne, 0
  br i1 %i.nf, label %bb.ay, label %.critedge151.i

bb.ay:                                            ; preds = %bb.ax
  %i.ng = getelementptr inbounds nuw i8, ptr %.0215.i, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  switch i32 %i.ln, label %bb.bj [
    i32 0, label %.thread.i
    i32 4, label %bb.az
    i32 5, label %bb.be
  ]

bb.az:                                            ; preds = %bb.ay
  br i1 %.0119213.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ni = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.nj = call i32 @errcode(i32 noundef 66) #8    ; 0 uses
  %i.nk = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 295, ptr noundef nonnull @__func__.ExecScanSubPlan) #8
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.nl = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not147.i = icmp eq ptr %i.nl, null
  br i1 %.not147.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @heap_freetuple(ptr noundef nonnull %i.nl) #8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.nm = getelementptr inbounds nuw i8, ptr %.0215.i, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 88
  %i.np = load ptr, ptr %i.no, align 8
  %i.nq = call ptr %i.np(ptr noundef nonnull %.0215.i) #8, !inline_history !23 ; 2 uses
  store ptr %i.nq, ptr %i.mt, align 8
  %i.nr = call fastcc i64 @heap_getattr(ptr noundef %i.nq, i32 noundef 1, ptr noundef %i.nh, ptr noundef nonnull %2)
  br label %.loopexit.i

bb.be:                                            ; preds = %bb.ay
  br i1 %.0119213.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ns = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.nt = call i32 @errcode(i32 noundef 66) #8    ; 0 uses
  %i.nu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 321, ptr noundef nonnull @__func__.ExecScanSubPlan) #8
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.nv = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not144.i = icmp eq ptr %i.nv, null
  br i1 %.not144.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @heap_freetuple(ptr noundef nonnull %i.nv) #8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.nw = getelementptr inbounds nuw i8, ptr %.0215.i, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 88
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = call ptr %i.nz(ptr noundef nonnull %.0215.i) #8, !inline_history !23
  store ptr %i.oa, ptr %i.mt, align 8
  %i.ob = load ptr, ptr %i.mu, align 8            ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4 ; 2 uses
  %.not145.i = icmp eq ptr %i.ob, null
  br i1 %.not145.i, label %.loopexit.i, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %bb.bi
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.oe = load i32, ptr %i.oc, align 4
  %i.of = icmp sgt i32 %i.oe, 0
  br i1 %i.of, label %.lr.ph204.i, label %.loopexit.i

.lr.ph204.i:                                      ; preds = %.lr.ph200.i, %.lr.ph204.i
  %indvars.iv229.i = phi i64 [ %indvars.iv.next230.i, %.lr.ph204.i ], [ 0, %.lr.ph200.i ] ; 2 uses
  %.0125198203.i = phi i32 [ %i.oq, %.lr.ph204.i ], [ 1, %.lr.ph200.i ] ; 2 uses
  %i.og = load ptr, ptr %i.od, align 8
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %indvars.iv229.i
  %i.oi = load i32, ptr %i.oh, align 8
  %i.oj = load ptr, ptr %i.mv, align 8
  %i.ok = sext i32 %i.oi to i64
  %i.ol = getelementptr inbounds [24 x i8], ptr %i.oj, i64 %i.ok ; 2 uses
  %i.om = load ptr, ptr %i.mt, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.oo = call fastcc i64 @heap_getattr(ptr noundef %i.om, i32 noundef %.0125198203.i, ptr noundef %i.nh, ptr noundef nonnull %i.on)
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store i64 %i.oo, ptr %i.op, align 8
  %i.oq = add nuw i32 %.0125198203.i, 1
  %indvars.iv.next230.i = add nuw nsw i64 %indvars.iv229.i, 1 ; 2 uses
  %i.or = load i32, ptr %i.oc, align 4
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp slt i64 %indvars.iv.next230.i, %i.os
  br i1 %i.ot, label %.lr.ph204.i, label %.loopexit.i

bb.bj:                                            ; preds = %bb.ay
  br i1 %i.lo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ou = getelementptr inbounds nuw i8, ptr %.0215.i, i64 6
  %i.ov = load i16, ptr %i.ou, align 2
  %i.ow = icmp slt i16 %i.ov, 1
  br i1 %i.ow, label %slot_getsomeattrs.exit.i.i, label %slot_getattr.exit.i

slot_getsomeattrs.exit.i.i:                       ; preds = %bb.bk
  %i.ox = getelementptr inbounds nuw i8, ptr %.0215.i, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull %.0215.i, i32 noundef range(i32 -32767, -2147483648) 1) #8, !inline_history !24
  br label %slot_getattr.exit.i

slot_getattr.exit.i:                              ; preds = %slot_getsomeattrs.exit.i.i, %bb.bk
  %i.pb = getelementptr inbounds nuw i8, ptr %.0215.i, i64 32
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = load i8, ptr %i.pc, align 1, !range !5, !noundef !6
  %i.pe = getelementptr inbounds nuw i8, ptr %.0215.i, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = trunc nuw i8 %i.pd to i1
  %i.pi = load i32, ptr %i.nb, align 8
  %i.pj = call ptr @accumArrayResultAny(ptr noundef %.1130212.i, i64 noundef %i.pg, i1 noundef zeroext %i.ph, i32 noundef %i.pi, ptr noundef %i.lv) #8
  br label %.loopexit.i

bb.bl:                                            ; preds = %bb.bj
  %or.cond.i = and i1 %i.mw, %.0119213.i
  br i1 %or.cond.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.pk = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.pl = call i32 @errcode(i32 noundef 66) #8    ; 0 uses
  %i.pm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 375, ptr noundef nonnull @__func__.ExecScanSubPlan) #8
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.pn = load ptr, ptr %i.mx, align 8            ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 2 uses
  %.not142.i = icmp eq ptr %i.pn, null
  br i1 %.not142.i, label %.critedge155.i, label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %bb.bn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.0215.i, i64 6
  %i.pr = getelementptr inbounds nuw i8, ptr %.0215.i, i64 8
  %i.ps = getelementptr inbounds nuw i8, ptr %.0215.i, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %.0215.i, i64 24
  %i.pu = load i32, ptr %i.po, align 4
  %i.pv = icmp sgt i32 %i.pu, 0
  br i1 %i.pv, label %.lr.ph211.i, label %.critedge155.i

.lr.ph211.i:                                      ; preds = %.lr.ph207.i, %slot_getattr.exit159.i
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %slot_getattr.exit159.i ], [ 0, %.lr.ph207.i ] ; 2 uses
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %slot_getattr.exit159.i ], [ 1, %.lr.ph207.i ] ; 4 uses
  %i.pw = load ptr, ptr %i.pp, align 8
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv234.i
  %i.py = load i32, ptr %i.px, align 8
  %i.pz = load ptr, ptr %i.mv, align 8
  %i.qa = sext i32 %i.py to i64
  %i.qb = getelementptr inbounds [24 x i8], ptr %i.pz, i64 %i.qa ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load i16, ptr %i.pq, align 2
  %i.qe = sext i16 %i.qd to i64
  %i.qf = icmp sgt i64 %indvars.iv232.i, %i.qe
  br i1 %i.qf, label %slot_getsomeattrs.exit.i158.i, label %slot_getattr.exit159.i

slot_getsomeattrs.exit.i158.i:                    ; preds = %.lr.ph211.i
  %i.qg = load ptr, ptr %i.pr, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = trunc nuw nsw i64 %indvars.iv232.i to i32
  call void %i.qi(ptr noundef nonnull %.0215.i, i32 noundef range(i32 -32767, -2147483648) %i.qj) #8, !inline_history !24
  br label %slot_getattr.exit159.i

slot_getattr.exit159.i:                           ; preds = %slot_getsomeattrs.exit.i158.i, %.lr.ph211.i
  %i.qk = load ptr, ptr %i.ps, align 8
  %i.ql = add nsw i64 %indvars.iv232.i, -1        ; 2 uses
  %i.qm = getelementptr inbounds i8, ptr %i.qk, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !range !5, !noundef !6
  store i8 %i.qn, ptr %i.qc, align 1
  %i.qo = load ptr, ptr %i.pt, align 8
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.ql
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store i64 %i.qq, ptr %i.qr, align 8
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %i.qs = load i32, ptr %i.po, align 4
  %i.qt = sext i32 %i.qs to i64
  %i.qu = icmp slt i64 %indvars.iv.next235.i, %i.qt
  br i1 %i.qu, label %.lr.ph211.i, label %.critedge155.i

.critedge155.i:                                   ; preds = %slot_getattr.exit159.i, %.lr.ph207.i, %bb.bn
  %i.qv = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.qw = load ptr, ptr %i.mz, align 8
  %i.qx = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.qw, ptr @CurrentMemoryContext, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = call i64 %i.qz(ptr noundef %i.qv, ptr noundef %1, ptr noundef nonnull %i.a) #8, !inline_history !25 ; 3 uses
  store ptr %i.qx, ptr @CurrentMemoryContext, align 8
  %i.rb = load i8, ptr %i.a, align 1, !range !5, !noundef !6 ; 3 uses
  br i1 %i.na, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %.critedge155.i
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i8 1, ptr %2, align 1
  br label %.loopexit.i

bb.bq:                                            ; preds = %bb.bo
  %.not175.i = icmp eq i64 %i.ra, 0
  br i1 %.not175.i, label %.loopexit.i, label %.thread.sink.split.i

bb.br:                                            ; preds = %.critedge155.i
  br i1 %i.ml, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.rd = trunc nuw i8 %i.rb to i1
  br i1 %i.rd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %2, align 1
  br label %.loopexit.i

bb.bu:                                            ; preds = %bb.bs
  %.not174.i = icmp eq i64 %i.ra, 0
  br i1 %.not174.i, label %.thread.sink.split.i, label %.loopexit.i

bb.bv:                                            ; preds = %bb.br
  store i8 %i.rb, ptr %2, align 1
  br label %.loopexit.i

.thread.sink.split.i:                             ; preds = %bb.bu, %bb.bq
  %.2.ph260.i = phi i64 [ 1, %bb.bq ], [ 0, %bb.bu ]
  store i8 0, ptr %2, align 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ay, %.thread.sink.split.i
  %.2.i = phi i64 [ %.2.ph260.i, %.thread.sink.split.i ], [ 1, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store ptr %i.lv, ptr @CurrentMemoryContext, align 8
  br label %ExecHashSubPlan.exit

.loopexit.i:                                      ; preds = %.lr.ph204.i, %bb.bv, %bb.bu, %bb.bt, %bb.bq, %bb.bp, %slot_getattr.exit.i, %.lr.ph200.i, %bb.bi, %bb.bd
  %.2131.ph.i = phi ptr [ %.1130212.i, %bb.bd ], [ %.1130212.i, %bb.bp ], [ %.1130212.i, %bb.bt ], [ %.1130212.i, %bb.bu ], [ %.1130212.i, %bb.bv ], [ %i.pj, %slot_getattr.exit.i ], [ %.1130212.i, %bb.bq ], [ %.1130212.i, %bb.bi ], [ %.1130212.i, %.lr.ph200.i ], [ %.1130212.i, %.lr.ph204.i ] ; 2 uses
  %.2.ph.i = phi i64 [ %i.nr, %bb.bd ], [ %.0118214.i, %bb.bp ], [ %.0118214.i, %bb.bt ], [ %.0118214.i, %bb.bu ], [ %i.ra, %bb.bv ], [ %.0118214.i, %slot_getattr.exit.i ], [ %.0118214.i, %bb.bq ], [ %.0118214.i, %bb.bi ], [ %.0118214.i, %.lr.ph200.i ], [ %.0118214.i, %.lr.ph204.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.re = load ptr, ptr %i.mn, align 8
  %.not.i160.i = icmp eq ptr %i.re, null
  br i1 %.not.i160.i, label %ExecProcNode.exit161.i, label %bb.bw

bb.bw:                                            ; preds = %.loopexit.i
  call void @ExecReScan(ptr noundef nonnull %i.y) #8
  br label %ExecProcNode.exit161.i

ExecProcNode.exit161.i:                           ; preds = %bb.bw, %.loopexit.i
  %i.rf = load ptr, ptr %i.mp, align 8
  %i.rg = call ptr %i.rf(ptr noundef nonnull %i.y) #8, !inline_history !22 ; 2 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %.critedge151.i.thread, label %bb.ax, !llvm.loop !26

.critedge151.i:                                   ; preds = %bb.ax
  store ptr %i.lv, ptr @CurrentMemoryContext, align 8
  br i1 %i.lo, label %bb.bx, label %bb.by

.critedge151.i.thread:                            ; preds = %ExecProcNode.exit161.i
  store ptr %i.lv, ptr @CurrentMemoryContext, align 8
  br i1 %i.lo, label %bb.bx, label %ExecHashSubPlan.exit

.critedge151.thread.i:                            ; preds = %ExecProcNode.exit.i
  store ptr %i.lv, ptr @CurrentMemoryContext, align 8
  br i1 %i.lo, label %bb.bx, label %.thread256.i

bb.bx:                                            ; preds = %.critedge151.i.thread, %.critedge151.thread.i, %.critedge151.i
  %.1130.lcssa253.i = phi ptr [ %.0129.i, %.critedge151.thread.i ], [ %.1130212.i, %.critedge151.i ], [ %.2131.ph.i, %.critedge151.i.thread ]
  %i.ri = call i64 @makeArrayResultAny(ptr noundef %.1130.lcssa253.i, ptr noundef %i.lv, i1 noundef zeroext true) #8
  br label %ExecHashSubPlan.exit

bb.by:                                            ; preds = %.critedge151.i
  br i1 %.0119213.i, label %ExecHashSubPlan.exit, label %.thread256.i

.thread256.i:                                     ; preds = %bb.by, %.critedge151.thread.i
  %.0118.lcssa255259.i = phi i64 [ %.0118214.i, %bb.by ], [ %i.mm, %.critedge151.thread.i ] ; 4 uses
  %i.rj = add i32 %i.ln, -3
  %or.cond3.i = icmp ult i32 %i.rj, 2
  br i1 %or.cond3.i, label %bb.bz, label %bb.ca
end_hunk_0
begin_hunk_1_@EstimateSubplanHashTableSpace:bb.a
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fmul double %0, 6.250000e-02             ; 2 uses
  %i.d = fcmp olt double %i.c, 1.000000e+00
  %.014 = select i1 %i.d, double 1.000000e+00, double %i.c
  %i.e = tail call i64 @EstimateTupleHashTableSpace(double noundef %.014, i64 noundef %1, i64 noundef 0) #8
  %spec.select = tail call i64 @llvm.uadd.sat.i64(i64 %i.a, i64 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %spec.select, %bb.b ], [ %i.a, %bb.a ]
  ret i64 %.0
}

declare i64 @EstimateTupleHashTableSpace(double noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ExecInitSubPlan(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call noundef ptr @palloc0(i64 noundef 184) #8 ; 21 uses
  store i32 413, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, -1
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %.val154 = load ptr, ptr %i.m, align 8
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val154, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, ptr noundef %i.u) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 867, ptr noundef nonnull @__func__.ExecInitSubPlan) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call ptr @ExecInitExpr(ptr noundef %i.y, ptr noundef nonnull %1) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 4 uses
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %.not146 = icmp eq i32 %i.ar, 7
  br i1 %.not146, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %.not148161 = icmp sgt i32 %i.at, 0
  br i1 %.not148161, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.av, align 8
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [24 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.d, ptr %i.bb, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %i.as, align 4
  %i.bd = sext i32 %i.bc to i64
  %.not148 = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %.not148, label %bb.f, label %.critedge, !llvm.loop !27

.critedge:                                        ; preds = %bb.f, %.preheader, %bb.e, %bb.d, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.bf = load i8, ptr %i.be, align 1, !range !5, !noundef !6
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.critedge
  %i.bh = load ptr, ptr @CurrentMemoryContext, align 8
  %i.bi = tail call ptr @BumpContextCreate(ptr noundef %i.bh, ptr noundef nonnull @.str.4, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #8
  store ptr %i.bi, ptr %i.ae, align 8
  %i.bj = tail call ptr @CreateExprContext(ptr noundef nonnull %i.f) #8
  store ptr %i.bj, ptr %i.af, align 8
  %i.bk = load ptr, ptr %i.x, align 8             ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 4
  switch i32 %i.bl, label %is_andclause.exit.thread [
    i32 17, label %bb.h
    i32 21, label %is_andclause.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.bm = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.bk) #8
  br label %bb.j

is_andclause.exit:                                ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.i, label %is_andclause.exit.thread

bb.i:                                             ; preds = %is_andclause.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  br label %bb.j

is_andclause.exit.thread:                         ; preds = %bb.g, %is_andclause.exit
  %i.bs = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.bt = load ptr, ptr %i.x, align 8
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %i.bu) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 970, ptr noundef nonnull @__func__.ExecInitSubPlan) #8
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0142 = phi ptr [ %i.bm, %bb.h ], [ %i.br, %bb.i ] ; 4 uses
  %.not.i155 = icmp eq ptr %.0142, null           ; 2 uses
  br i1 %.not.i155, label %list_length.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.0142, i64 4
  %i.bx = load i32, ptr %i.bw, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.j, %bb.k
  %i.by = phi i32 [ %i.bx, %bb.k ], [ 0, %bb.j ]  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  store i32 %i.by, ptr %i.bz, align 8
  %i.ca = sext i32 %i.by to i64                   ; 3 uses
  %i.cb = shl nsw i64 %i.ca, 1
  %i.cc = tail call ptr @palloc(i64 noundef %i.cb) #8
  store ptr %i.cc, ptr %i.ag, align 8
  %i.cd = shl nsw i64 %i.ca, 2                    ; 3 uses
  %i.ce = tail call ptr @palloc(i64 noundef %i.cd) #8
  store ptr %i.ce, ptr %i.ah, align 8
  %i.cf = tail call ptr @palloc(i64 noundef %i.cd) #8
  store ptr %i.cf, ptr %i.aj, align 8
  %i.cg = mul nsw i64 %i.ca, 48                   ; 3 uses
  %i.ch = tail call ptr @palloc(i64 noundef %i.cg) #8
  store ptr %i.ch, ptr %i.ai, align 8
  %i.ci = tail call ptr @palloc(i64 noundef %i.cg) #8 ; 2 uses
  %i.cj = tail call ptr @palloc(i64 noundef %i.cg) #8
  store ptr %i.cj, ptr %i.ak, align 8
  %i.ck = tail call ptr @palloc(i64 noundef %i.cd) #8 ; 2 uses
  br i1 %.not.i155, label %.critedge152, label %.lr.ph167

.lr.ph167:                                        ; preds = %list_length.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.0142, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0142, i64 16
  %i.cn = load i32, ptr %i.cl, align 4
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph191, label %.critedge152

.lr.ph191:                                        ; preds = %.lr.ph167, %bb.o
  %.0143163190 = phi i32 [ %4, %bb.o ], [ 1, %.lr.ph167 ] ; 3 uses
  %.0141164189 = phi ptr [ %i.cy, %bb.o ], [ null, %.lr.ph167 ]
  %.0140165188 = phi ptr [ %i.de, %bb.o ], [ null, %.lr.ph167 ]
  %indvars.iv174187 = phi i64 [ %indvars.iv.next175, %bb.o ], [ 0, %.lr.ph167 ] ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv174187
  %i.cr = load ptr, ptr %i.cq, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val153 = load ptr, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %.val153, align 8
  %i.cw = trunc i32 %.0143163190 to i16           ; 3 uses
  %i.cx = call ptr @makeTargetEntry(ptr noundef %i.cv, i16 noundef signext %i.cw, ptr noundef null, i1 noundef zeroext false) #8
  %i.cy = call ptr @lappend(ptr noundef %.0141164189, ptr noundef %i.cx) #8 ; 2 uses
  %i.cz = load ptr, ptr %i.cs, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %.val = load ptr, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call ptr @makeTargetEntry(ptr noundef %i.dc, i16 noundef signext %i.cw, ptr noundef null, i1 noundef zeroext false) #8
  %i.de = call ptr @lappend(ptr noundef %.0140165188, ptr noundef %i.dd) #8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dg = load i32, ptr %i.df, align 8            ; 2 uses
  %2 = add i32 %.0143163190, -1
  %3 = sext i32 %2 to i64                         ; 8 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %3
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.ak, align 8
  %i.dj = getelementptr inbounds [48 x i8], ptr %i.di, i64 %3
  call void @fmgr_info(i32 noundef %i.dg, ptr noundef %i.dj) #8
  %i.dk = load ptr, ptr %i.ak, align 8
  %i.dl = getelementptr inbounds [48 x i8], ptr %i.dk, i64 %3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store ptr %i.cr, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 4 uses
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = call zeroext i1 @get_compatible_hash_operators(i32 noundef %i.do, ptr noundef null, ptr noundef nonnull %i.a) #8
  br i1 %i.dp, label %bb.m, label %bb.l

.critedge152:                                     ; preds = %bb.o, %.lr.ph167, %list_length.exit
  %.0141.lcssa = phi ptr [ null, %list_length.exit ], [ null, %.lr.ph167 ], [ %i.cy, %bb.o ] ; 2 uses
  %.0140.lcssa = phi ptr [ null, %list_length.exit ], [ null, %.lr.ph167 ], [ %i.de, %bb.o ] ; 2 uses
  %i.dq = call ptr @ExecTypeFromTL(ptr noundef %.0141.lcssa) #8 ; 3 uses
  %i.dr = call ptr @ExecInitExtraTupleSlot(ptr noundef nonnull %i.f, ptr noundef %i.dq, ptr noundef nonnull @TTSOpsVirtual) #8
  %i.ds = call ptr @ExecBuildProjectionInfo(ptr noundef %.0141.lcssa, ptr noundef null, ptr noundef %i.dr, ptr noundef nonnull %1, ptr noundef null) #8
  store ptr %i.ds, ptr %i.ac, align 8
  %i.dt = call ptr @ExecTypeFromTL(ptr noundef %.0140.lcssa) #8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.dt, ptr %i.du, align 8
  %i.dv = call ptr @ExecInitExtraTupleSlot(ptr noundef nonnull %i.f, ptr noundef %i.dt, ptr noundef nonnull @TTSOpsVirtual) #8
  %i.dw = load ptr, ptr %i.af, align 8
  %i.dx = load ptr, ptr %i.q, align 8
  %i.dy = call ptr @ExecBuildProjectionInfo(ptr noundef %.0140.lcssa, ptr noundef %i.dw, ptr noundef %i.dv, ptr noundef %i.dx, ptr noundef null) #8
  store ptr %i.dy, ptr %i.ad, align 8
  %i.dz = load ptr, ptr %i.aj, align 8
  %i.ea = load i32, ptr %i.bz, align 8
  %i.eb = load ptr, ptr %i.ag, align 8
  %i.ec = call ptr @ExecBuildHash32FromAttrs(ptr noundef %i.dq, ptr noundef nonnull @TTSOpsVirtual, ptr noundef %i.ci, ptr noundef %i.dz, i32 noundef %i.ea, ptr noundef %i.eb, ptr noundef nonnull %1, i32 noundef 0) #8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr %i.ec, ptr %i.ed, align 8
  %i.ee = load ptr, ptr %i.ag, align 8
  %i.ef = load ptr, ptr %i.aj, align 8
  %i.eg = call ptr @ExecBuildGroupingEqual(ptr noundef %i.dq, ptr noundef %i.dt, ptr noundef nonnull @TTSOpsVirtual, ptr noundef nonnull @TTSOpsMinimalTuple, i32 noundef %i.by, ptr noundef %i.ee, ptr noundef %i.ck, ptr noundef %i.ef, ptr noundef nonnull %1) #8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr %i.eg, ptr %i.eh, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph191
  %i.ei = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ej = load i32, ptr %i.dn, align 4
  %i.ek = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6, i32 noundef %i.ej) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1023, ptr noundef nonnull @__func__.ExecInitSubPlan) #8
  unreachable

bb.m:                                             ; preds = %.lr.ph191
  %i.el = load i32, ptr %i.a, align 4
  %i.em = call i32 @get_opcode(i32 noundef %i.el) #8
  %i.en = load ptr, ptr %i.ah, align 8
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %3
  store i32 %i.em, ptr %i.eo, align 4
  %i.ep = load i32, ptr %i.dn, align 4
  %i.eq = call zeroext i1 @get_op_hash_functions(i32 noundef %i.ep, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8
  br i1 %i.eq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.es = load i32, ptr %i.dn, align 4
  %i.et = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.es) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1030, ptr noundef nonnull @__func__.ExecInitSubPlan) #8
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.eu = load i32, ptr %i.b, align 4
  %i.ev = getelementptr inbounds [48 x i8], ptr %i.ci, i64 %3
  call void @fmgr_info(i32 noundef %i.eu, ptr noundef %i.ev) #8
  %i.ew = load i32, ptr %i.c, align 4
  %i.ex = load ptr, ptr %i.ai, align 8
  %i.ey = getelementptr inbounds [48 x i8], ptr %i.ex, i64 %3
  call void @fmgr_info(i32 noundef %i.ew, ptr noundef %i.ey) #8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = load ptr, ptr %i.aj, align 8
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %3
  store i32 %i.fa, ptr %i.fc, align 4
  %i.fd = load ptr, ptr %i.ag, align 8
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %3
  store i16 %i.cw, ptr %i.fe, align 2
  %4 = add nuw i32 %.0143163190, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174187, 1 ; 2 uses
  %i.ff = load i32, ptr %i.cl, align 4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next175, %i.fg
  br i1 %i.fh, label %.lr.ph191, label %.critedge152

bb.p:                                             ; preds = %.critedge152, %.critedge
  ret ptr %i.d
}

declare ptr @ExecInitExpr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BumpContextCreate(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CreateExprContext(ptr noundef) local_unnamed_addr #2

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @makeTargetEntry(ptr noundef, i16 noundef signext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fmgr_info(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @get_compatible_hash_operators(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_opcode(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @get_op_hash_functions(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ExecTypeFromTL(ptr noundef) local_unnamed_addr #2

declare ptr @ExecInitExtraTupleSlot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ExecBuildProjectionInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ExecBuildHash32FromAttrs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ExecBuildGroupingEqual(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecSetParamPlan(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %.fr172 = freeze i32 %i.f                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %.fr172, -1
  %or.cond = icmp ult i32 %i.k, 2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1133, ptr noundef nonnull @__func__.ExecSetParamPlan) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %.fr172, 7
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1135, ptr noundef nonnull @__func__.ExecSetParamPlan) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %.not111 = icmp eq ptr %i.t, null
  br i1 %.not111, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1137, ptr noundef nonnull @__func__.ExecSetParamPlan) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  store i32 1, ptr %i.i, align 4
  %i.w = icmp eq i32 %.fr172, 6                   ; 3 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = load ptr, ptr @CurrentMemoryContext, align 8
  %i.aa = tail call ptr @initArrayResultAny(i32 noundef %i.y, ptr noundef %i.z, i1 noundef zeroext true) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0103 = phi ptr [ %i.aa, %bb.i ], [ null, %bb.h ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr @CurrentMemoryContext, align 8 ; 2 uses
  store ptr %i.ac, ptr @CurrentMemoryContext, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %ExecProcNode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ExecReScan(ptr noundef nonnull %i.d) #8
  br label %ExecProcNode.exit

ExecProcNode.exit:                                ; preds = %bb.j, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr %i.ah(ptr noundef nonnull %i.d) #8, !inline_history !28 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.critedge, label %.lr.ph147

.lr.ph147:                                        ; preds = %ExecProcNode.exit
  %i.ak = icmp eq i32 %.fr172, 0
  %i.al = add i32 %.fr172, -3
  %or.cond5 = icmp ult i32 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br i1 %i.ak, label %.lr.ph147.split.us, label %.lr.ph147.split

.lr.ph147.split.us:                               ; preds = %.lr.ph147
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ar = load i16, ptr %i.aq, align 4
  %i.as = and i16 %i.ar, 2
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %.thread.split.us, label %.thread192

.thread.split.us:                                 ; preds = %.lr.ph147.split.us
  %i.au = load ptr, ptr %i.an, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val124 = load ptr, ptr %i.av, align 8
  %i.aw = load i32, ptr %.val124, align 8
  %i.ax = load ptr, ptr %i.ao, align 8
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i8 0, ptr %i.bb, align 8
  br label %.critedge122

.lr.ph147.split:                                  ; preds = %.lr.ph147
  br i1 %i.w, label %.lr.ph147.split.split.us, label %.lr.ph147.split.split

.lr.ph147.split.split.us:                         ; preds = %.lr.ph147.split
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bd = load i16, ptr %i.bc, align 4
  %i.be = and i16 %i.bd, 2
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %.lr.ph164, label %.critedge.thread

bb.l:                                             ; preds = %ExecProcNode.exit126.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = and i16 %i.bh, 2
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %.lr.ph164, label %.critedge, !llvm.loop !29

.lr.ph164:                                        ; preds = %.lr.ph147.split.split.us, %bb.l
  %.1104144.us155163 = phi ptr [ %i.bz, %bb.l ], [ %.0103, %.lr.ph147.split.split.us ]
  %.0146.us153162 = phi ptr [ %i.cc, %bb.l ], [ %i.ai, %.lr.ph147.split.split.us ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0146.us153162, i64 6
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = icmp slt i16 %i.bl, 1
  br i1 %i.bm, label %slot_getsomeattrs.exit.i.us, label %slot_getattr.exit.us

slot_getsomeattrs.exit.i.us:                      ; preds = %.lr.ph164
  %i.bn = getelementptr inbounds nuw i8, ptr %.0146.us153162, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull %.0146.us153162, i32 noundef range(i32 -32767, -2147483648) 1) #8, !inline_history !30
  br label %slot_getattr.exit.us

slot_getattr.exit.us:                             ; preds = %slot_getsomeattrs.exit.i.us, %.lr.ph164
  %i.br = getelementptr inbounds nuw i8, ptr %.0146.us153162, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load i8, ptr %i.bs, align 1, !range !5, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %.0146.us153162, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = trunc nuw i8 %i.bt to i1
  %i.by = load i32, ptr %i.ap, align 8
  %i.bz = tail call ptr @accumArrayResultAny(ptr noundef %.1104144.us155163, i64 noundef %i.bw, i1 noundef zeroext %i.bx, i32 noundef %i.by, ptr noundef %i.ad) #8 ; 3 uses
  %i.ca = load ptr, ptr %i.ae, align 8
  %.not.i125.us = icmp eq ptr %i.ca, null
  br i1 %.not.i125.us, label %ExecProcNode.exit126.us, label %bb.m

bb.m:                                             ; preds = %slot_getattr.exit.us
  tail call void @ExecReScan(ptr noundef nonnull %i.d) #8
  br label %ExecProcNode.exit126.us

ExecProcNode.exit126.us:                          ; preds = %bb.m, %slot_getattr.exit.us
  %i.cb = load ptr, ptr %i.ag, align 8
  %i.cc = tail call ptr %i.cb(ptr noundef nonnull %i.d) #8, !inline_history !28 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.critedge, label %bb.l, !llvm.loop !29

.lr.ph147.split.split:                            ; preds = %.lr.ph147.split, %ExecProcNode.exit126
  %.0146 = phi ptr [ %i.do, %ExecProcNode.exit126 ], [ %i.ai, %.lr.ph147.split ] ; 4 uses
  %.0100145 = phi i1 [ true, %ExecProcNode.exit126 ], [ false, %.lr.ph147.split ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0146, i64 4
  %i.cf = load i16, ptr %i.ce, align 4
  %i.cg = and i16 %i.cf, 2
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.lr.ph147.split.split
  %i.ci = getelementptr inbounds nuw i8, ptr %.0146, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %or.cond118 = and i1 %or.cond5, %.0100145
  br i1 %or.cond118, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.cl = tail call i32 @errcode(i32 noundef 66) #8 ; 0 uses
  %i.cm = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1200, ptr noundef nonnull @__func__.ExecSetParamPlan) #8
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not112 = icmp eq ptr %i.cn, null
  br i1 %.not112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @heap_freetuple(ptr noundef nonnull %i.cn) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %.0146, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call ptr %i.cr(ptr noundef nonnull %.0146) #8, !inline_history !31
  store ptr %i.cs, ptr %i.am, align 8
  %i.ct = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %.not113 = icmp eq ptr %i.ct, null
  br i1 %.not113, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load i32, ptr %i.cu, align 4
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %.lr.ph, %.lr.ph143
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph143 ], [ 0, %.lr.ph ] ; 2 uses
  %.0102138142 = phi i32 [ %i.di, %.lr.ph143 ], [ 1, %.lr.ph ] ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = load ptr, ptr %i.ao, align 8
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds [24 x i8], ptr %i.db, i64 %i.dc ; 3 uses
  store ptr null, ptr %i.dd, align 8
  %i.de = load ptr, ptr %i.am, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = tail call fastcc i64 @heap_getattr(ptr noundef %i.de, i32 noundef %.0102138142, ptr noundef %i.cj, ptr noundef nonnull %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dg, ptr %i.dh, align 8
  %i.di = add nuw i32 %.0102138142, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.cu, align 4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %.lr.ph143, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph143, %.lr.ph, %bb.r
  %i.dm = load ptr, ptr %i.ae, align 8
  %.not.i125 = icmp eq ptr %i.dm, null
  br i1 %.not.i125, label %ExecProcNode.exit126, label %bb.s

bb.s:                                             ; preds = %.loopexit
  tail call void @ExecReScan(ptr noundef nonnull %i.d) #8
  br label %ExecProcNode.exit126

ExecProcNode.exit126:                             ; preds = %.loopexit, %bb.s
  %i.dn = load ptr, ptr %i.ag, align 8
  %i.do = tail call ptr %i.dn(ptr noundef nonnull %i.d) #8, !inline_history !28 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.critedge, label %.lr.ph147.split.split, !llvm.loop !29

.critedge:                                        ; preds = %.lr.ph147.split.split, %ExecProcNode.exit126, %bb.l, %ExecProcNode.exit126.us, %ExecProcNode.exit
  %.1104.lcssa = phi ptr [ %.0103, %ExecProcNode.exit ], [ %i.bz, %bb.l ], [ %i.bz, %ExecProcNode.exit126.us ], [ %.0103, %ExecProcNode.exit126 ], [ %.0103, %.lr.ph147.split.split ]
  %.0100.lcssa = phi i1 [ false, %ExecProcNode.exit ], [ true, %bb.l ], [ true, %ExecProcNode.exit126.us ], [ %.0100145, %.lr.ph147.split.split ], [ true, %ExecProcNode.exit126 ]
  br i1 %i.w, label %.critedge.thread, label %bb.v

.critedge.thread:                                 ; preds = %.lr.ph147.split.split.us, %.critedge
  %.1104.lcssa186 = phi ptr [ %.1104.lcssa, %.critedge ], [ %.0103, %.lr.ph147.split.split.us ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %.val123 = load ptr, ptr %i.ds, align 8
  %i.dt = load i32, ptr %.val123, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds [24 x i8], ptr %i.dv, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  %.not117 = icmp eq i64 %i.dz, 0
  br i1 %.not117, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.thread
  %i.ea = inttoptr i64 %i.dz to ptr
  tail call void @pfree(ptr noundef nonnull %i.ea) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge.thread
  %i.eb = load ptr, ptr %i.ab, align 8
  %i.ec = tail call i64 @makeArrayResultAny(ptr noundef %.1104.lcssa186, ptr noundef %i.eb, i1 noundef zeroext true) #8
  store i64 %i.ec, ptr %i.dy, align 8
  store ptr null, ptr %i.dx, align 8
  %i.ed = load i64, ptr %i.dy, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.ed, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i8 0, ptr %i.ef, align 8
  br label %.critedge122

bb.v:                                             ; preds = %.critedge
  br i1 %.0100.lcssa, label %.critedge122, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = icmp eq i32 %.fr172, 0
  br i1 %i.eg, label %.thread192, label %bb.x

.thread192:                                       ; preds = %.lr.ph147.split.us, %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %.val = load ptr, ptr %i.ej, align 8
  %i.ek = load i32, ptr %.val, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = sext i32 %i.ek to i64
  %i.eo = getelementptr inbounds [24 x i8], ptr %i.em, i64 %i.en
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.eo, i8 0, i64 17, i1 false)
  br label %.critedge122

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 2 uses
  %.not115 = icmp eq ptr %i.eq, null
  br i1 %.not115, label %.critedge122, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eu = load i32, ptr %i.er, align 4
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph171, label %.critedge122

.lr.ph171:                                        ; preds = %.lr.ph168, %.lr.ph171
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.lr.ph171 ], [ 0, %.lr.ph168 ] ; 2 uses
  %i.ew = load ptr, ptr %i.es, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv175
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.et, align 8
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [24 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.fc, align 8
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.fd = load i32, ptr %i.er, align 4
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp slt i64 %indvars.iv.next176, %i.fe
  br i1 %i.ff, label %.lr.ph171, label %.critedge122

.critedge122:                                     ; preds = %.lr.ph171, %bb.x, %.lr.ph168, %.thread.split.us, %bb.v, %.thread192, %bb.u
  store ptr %i.ad, ptr @CurrentMemoryContext, align 8
  store i32 %i.j, ptr %i.i, align 4
  ret void
}

declare ptr @initArrayResultAny(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @accumArrayResultAny(ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @heap_freetuple(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @heap_getattr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, 2047
  %i.g = zext nneg i16 %i.f to i32
  %i.h = icmp samesign ugt i32 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @getmissingattr(ptr noundef %2, i32 noundef %1, ptr noundef %3) #8
  br label %fastgetattr.exit

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %3, align 1
  %.val.i = load ptr, ptr %i.b, align 8           ; 4 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 20
  %.val.val.i = load i16, ptr %i.j, align 4
  %i.k = trunc i16 %.val.val.i to i1
  br i1 %i.k, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr [8 x i8], ptr %2, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load i16, ptr %i.n, align 2              ; 2 uses
  %i.p = icmp sgt i16 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.q = zext nneg i16 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.s = load i8, ptr %i.r, align 2
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 5 uses
  %i.w = getelementptr i8, ptr %i.m, i64 28
  %i.x = load i8, ptr %i.w, align 2, !range !5, !noundef !6
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr i8, ptr %i.m, i64 26
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = sext i16 %i.aa to i32                   ; 3 uses
  br i1 %i.y, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.ab)
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %.split.i.i, label %bb.l

.split.i.i:                                       ; preds = %bb.g
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.ab, i1 true)
  switch i32 %i.ae, label %bb.l [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.h:                                             ; preds = %.split.i.i
  %i.af = load i8, ptr %i.v, align 1
  %i.ag = sext i8 %i.af to i64
  br label %fastgetattr.exit

bb.i:                                             ; preds = %.split.i.i
  %i.ah = load i16, ptr %i.v, align 2
  %i.ai = sext i16 %i.ah to i64
  br label %fastgetattr.exit
end_hunk_1
