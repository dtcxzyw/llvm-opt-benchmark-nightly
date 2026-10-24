Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sort?download=true
inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@sortCommandGeneric:bb.a
  %.1400 = phi ptr [ %.0399674, %bb.d ], [ %i.aw, %bb.j ], [ %.0399674, %bb.g ], [ %.0399674, %bb.bq ], [ %.0399674, %bb.c ], [ %.0399674, %bb.b ], [ %.0399674, %bb.l ], [ %.0399674, %bb.an ] ; 2 uses
  %i.kl = add nsw i32 %.1428, 1                   ; 2 uses
  %i.km = load i32, ptr %i.m, align 8, !tbaa !95  ; 2 uses
  %i.kn = icmp slt i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.b, label %._crit_edge.loopexit

.loopexit625:                                     ; preds = %bb.f, %bb.g, %bb.br, %bb.bp, %bb.aw, %bb.ao, %bb.t
  call void @listRelease(ptr noundef %i.e) #12
  br label %bb.fx

._crit_edge.loopexit:                             ; preds = %bb.bs
  %i.ko = icmp eq i32 %.2424, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0443.lcssa = phi i32 [ 0, %bb.a ], [ %.1444, %._crit_edge.loopexit ] ; 3 uses
  %.0438.lcssa = phi i32 [ 0, %bb.a ], [ %.1439, %._crit_edge.loopexit ] ; 4 uses
  %.0422.lcssa = phi i1 [ true, %bb.a ], [ %i.ko, %._crit_edge.loopexit ] ; 5 uses
  %.0416.lcssa = phi i32 [ 0, %bb.a ], [ %.1417, %._crit_edge.loopexit ] ; 2 uses
  %.0403.lcssa = phi ptr [ null, %bb.a ], [ %.1404, %._crit_edge.loopexit ] ; 4 uses
  %.0399.lcssa = phi ptr [ null, %bb.a ], [ %.1400, %._crit_edge.loopexit ] ; 8 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.kr = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !25
  %i.ku = call ptr @lookupKeyRead(ptr noundef %i.kq, ptr noundef %i.kt) #12 ; 4 uses
  %.not488 = icmp eq ptr %i.ku, null
  br i1 %.not488, label %.critedge540, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = and i32 %i.kw, 15
  %.off = add nsw i32 %i.kx, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @listRelease(ptr noundef %i.e) #12
  %i.ky = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 200), align 8, !tbaa !105
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ky) #12
  br label %bb.fx

bb.bv:                                            ; preds = %bb.bt
  call void @incrRefCount(ptr noundef nonnull %i.ku) #12
  br label %bb.bw

.critedge540:                                     ; preds = %._crit_edge
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !106
  %i.la = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !107
  %i.lb = call ptr @createQuicklistObject(i32 noundef %i.kz, i32 noundef %i.la) #12
  br label %bb.bw

bb.bw:                                            ; preds = %.critedge540, %bb.bv
  %.0407 = phi ptr [ %i.ku, %bb.bv ], [ %i.lb, %.critedge540 ] ; 29 uses
  %.pre800 = load i64, ptr %.0407, align 8
  %.pre802 = and i64 %.pre800, 15                 ; 2 uses
  %i.lc = icmp ne i64 %.pre802, 2
  %or.cond861.not = select i1 %.0422.lcssa, i1 true, i1 %i.lc
  br i1 %or.cond861.not, label %._crit_edge801, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not493 = icmp eq ptr %.0399.lcssa, null
  br i1 %.not493, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !108
  %i.lf = and i64 %i.le, 256
  %.not494 = icmp eq i64 %i.lf, 0
  br i1 %.not494, label %.thread840, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br label %.thread840

._crit_edge801:                                   ; preds = %bb.bw
  %i.lg = xor i1 %.0422.lcssa, true               ; 3 uses
  %i.lh = icmp eq i64 %.pre802, 3
  br i1 %i.lh, label %bb.ca, label %.thread840

bb.ca:                                            ; preds = %._crit_edge801
  %i.li = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !109
  %.not495 = icmp eq i32 %i.li, 0
  br i1 %.not495, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lj = call i64 @kvobjAllocSize(ptr noundef nonnull %.0407) #12
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0396 = phi i64 [ %i.lj, %bb.cb ], [ 0, %bb.ca ] ; 3 uses
  call void @zsetConvert(ptr noundef nonnull %.0407, i32 noundef 7) #12
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !109
  %.not496 = icmp eq i32 %i.lk, 0
  br i1 %.not496, label %.thread840, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ll = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.lm = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !25
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !19
  %i.lr = call i32 @getKeySlot(ptr noundef %i.lq) #12
  %i.ls = call i64 @kvobjAllocSize(ptr noundef nonnull %.0407) #12
  call void @updateSlotAllocSize(ptr noundef %i.ll, i32 noundef %i.lr, ptr noundef nonnull %.0407, i64 noundef %.0396, i64 noundef %i.ls) #12
  br label %.thread840

.thread840:                                       ; preds = %bb.by, %bb.bz, %bb.cc, %bb.cd, %._crit_edge801
  %.4847 = phi ptr [ %.0403.lcssa, %bb.cd ], [ %.0403.lcssa, %bb.cc ], [ %.0403.lcssa, %._crit_edge801 ], [ %.0403.lcssa, %bb.by ], [ null, %bb.bz ] ; 4 uses
  %.old12.not846 = phi i1 [ %.0422.lcssa, %bb.cd ], [ %.0422.lcssa, %bb.cc ], [ %.0422.lcssa, %._crit_edge801 ], [ false, %bb.by ], [ true, %bb.bz ]
  %i.lt = phi i1 [ %i.lg, %bb.cd ], [ %i.lg, %bb.cc ], [ %i.lg, %._crit_edge801 ], [ true, %bb.by ], [ false, %bb.bz ] ; 4 uses
  %.4442845 = phi i32 [ %.0438.lcssa, %bb.cd ], [ %.0438.lcssa, %bb.cc ], [ %.0438.lcssa, %._crit_edge801 ], [ %.0438.lcssa, %bb.by ], [ 1, %bb.bz ] ; 3 uses
  %.1397 = phi i64 [ %.0396, %bb.cd ], [ %.0396, %bb.cc ], [ 0, %._crit_edge801 ], [ 0, %bb.by ], [ 0, %bb.bz ] ; 2 uses
  %i.lu = load i64, ptr %.0407, align 8
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = and i32 %i.lv, 15
  switch i32 %i.lw, label %bb.ch [
    i32 1, label %bb.ce
    i32 2, label %bb.cf
    i32 3, label %bb.cg
  ]

bb.ce:                                            ; preds = %.thread840
  %i.lx = call i64 @listTypeLength(ptr noundef nonnull %.0407) #12
  br label %bb.ci

bb.cf:                                            ; preds = %.thread840
  %i.ly = call i64 @setTypeSize(ptr noundef nonnull %.0407) #12
  br label %bb.ci

bb.cg:                                            ; preds = %.thread840
  %i.lz = getelementptr inbounds nuw i8, ptr %.0407, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !19
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !112 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !24
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !24
  %i.mg = add i64 %i.mf, %i.md
  br label %bb.ci

bb.ch:                                            ; preds = %.thread840
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.13, i32 noundef 355, ptr noundef nonnull @.str.14) #12
  call void @abort() #14
  unreachable

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %.0420.in = phi i64 [ %i.lx, %bb.ce ], [ %i.ly, %bb.cf ], [ %i.mg, %bb.cg ] ; 2 uses
  %.0420 = trunc i64 %.0420.in to i32             ; 3 uses
  %i.mh = load i64, ptr %i.a, align 8, !tbaa !24
  %i.mi = call i64 @llvm.smax.i64(i64 %i.mh, i64 0) ; 3 uses
  %sext = shl i64 %.0420.in, 32                   ; 3 uses
  %i.mj = ashr exact i64 %sext, 32                ; 4 uses
  %i.mk = icmp slt i64 %i.mi, %i.mj               ; 2 uses
  %. = call i64 @llvm.smin.i64(i64 %i.mi, i64 %i.mj)
  %i.ml = load i64, ptr %i.b, align 8, !tbaa !24
  %i.mm = call i64 @llvm.smax.i64(i64 %i.ml, i64 -1)
  %i.mn = call i64 @llvm.smin.i64(i64 %i.mm, i64 %i.mj) ; 3 uses
  store i64 %i.mn, ptr %i.b, align 8, !tbaa !24
  %i.mo = icmp slt i64 %i.mn, 0
  %sext497 = add i64 %sext, -4294967296
  %i.mp = ashr exact i64 %sext497, 32             ; 4 uses
  %i.mq = add nsw i64 %., -1
  %i.mr = add nsw i64 %i.mq, %i.mn
  %i.ms = select i1 %i.mo, i64 %i.mp, i64 %i.mr
  %sext500 = add i64 %sext, -8589934592
  %i.mt = ashr exact i64 %sext500, 32
  %.0436 = select i1 %i.mk, i64 %i.mi, i64 %i.mp  ; 15 uses
  %.0433 = select i1 %i.mk, i64 %i.ms, i64 %i.mt  ; 2 uses
  %.not501 = icmp slt i64 %.0433, %i.mj
  %.1434 = select i1 %.not501, i64 %.0433, i64 %i.mp ; 9 uses
  %i.mu = load i64, ptr %.0407, align 8
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = and i32 %i.mv, 15                       ; 2 uses
  %i.mx = icmp eq i32 %i.mw, 3
  br i1 %i.mx, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.my = icmp eq i32 %i.mw, 1
  %or.cond13 = and i1 %i.lt, %i.my
  br i1 %or.cond13, label %bb.cl, label %bb.cn

bb.ck:                                            ; preds = %bb.ci
  br i1 %.old12.not846, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %.not503 = icmp eq i64 %.0436, 0
  %.not505 = icmp eq i64 %.1434, %i.mp
  %or.cond619 = select i1 %.not503, i1 %.not505, i1 false
  br i1 %or.cond619, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mz = sub nsw i64 %.1434, %.0436
  %i.na = trunc i64 %i.mz to i32
  %i.nb = add i32 %i.na, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm, %bb.ck, %bb.cj
  %.1421 = phi i32 [ %i.nb, %bb.cm ], [ %.0420, %bb.cl ], [ %.0420, %bb.ck ], [ %.0420, %bb.cj ] ; 14 uses
  %i.nc = sext i32 %.1421 to i64                  ; 3 uses
  %i.nd = shl nsw i64 %i.nc, 4
  %i.ne = call noalias ptr @zmalloc(i64 noundef %i.nd) #11 ; 18 uses
  %i.nf = load i64, ptr %.0407, align 8
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = and i32 %i.ng, 15                       ; 3 uses
  %i.ni = icmp eq i32 %i.nh, 1                    ; 2 uses
  %or.cond16 = and i1 %i.lt, %i.ni
  br i1 %or.cond16, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %.not516 = icmp slt i64 %.1434, %.0436
  br i1 %.not516, label %bb.ec, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %.not517 = icmp eq i32 %.0443.lcssa, 0          ; 2 uses
  br i1 %.not517, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nj = call i64 @listTypeLength(ptr noundef nonnull %.0407) #12
  %i.nk = xor i64 %.0436, -1
  %i.nl = add i64 %i.nj, %i.nk
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.nm = phi i64 [ %i.nl, %bb.cq ], [ %.0436, %bb.cp ]
  %i.nn = zext i1 %.not517 to i8
  call void @listTypeInitIterator(ptr noundef nonnull %2, ptr noundef nonnull %.0407, i64 noundef %i.nm, i8 noundef zeroext %i.nn) #12
  %i.no = icmp sgt i32 %.1421, 0
  br i1 %i.no, label %.lr.ph707.preheader, label %.critedge

.lr.ph707.preheader:                              ; preds = %bb.cr
  %wide.trip.count = zext nneg i32 %.1421 to i64
  br label %.lr.ph707.a

.lr.ph707.a:                                      ; preds = %.lr.ph707.preheader, %bb.cs
  %indvars.iv767 = phi i64 [ 0, %.lr.ph707.preheader ], [ %indvars.iv.next768, %bb.cs ] ; 3 uses
  %i.np = call i32 @listTypeNext(ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %.not518 = icmp eq i32 %i.np, 0
  br i1 %.not518, label %.critedge.loopexit.split.loop.exit853, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph707.a
  %i.nq = call ptr @listTypeGet(ptr noundef nonnull %3) #12
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv767 ; 2 uses
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !59
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store ptr null, ptr %i.ns, align 8, !tbaa !20
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next768, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph707.a, !llvm.loop !65

.critedge.loopexit.split.loop.exit853:            ; preds = %.lr.ph707.a
  %i.nt = trunc nuw nsw i64 %indvars.iv767 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.cs, %.critedge.loopexit.split.loop.exit853, %bb.cr
  %.3430.lcssa = phi i32 [ 0, %bb.cr ], [ %i.nt, %.critedge.loopexit.split.loop.exit853 ], [ %.1421, %bb.cs ]
  call void @listTypeResetIterator(ptr noundef nonnull %2) #12
  %i.nu = sub nsw i64 %.1434, %.0436
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ec

bb.ct:                                            ; preds = %bb.cn
  br i1 %i.ni, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @listTypeInitIterator(ptr noundef nonnull %4, ptr noundef nonnull %.0407, i64 noundef 0, i8 noundef zeroext 1) #12
  %i.nv = call i32 @listTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %.not515699 = icmp eq i32 %i.nv, 0
  br i1 %.not515699, label %._crit_edge703, label %.lr.ph702

.lr.ph702:                                        ; preds = %bb.cu, %.lr.ph702
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %.lr.ph702 ], [ 0, %bb.cu ] ; 2 uses
  %i.nw = call ptr @listTypeGet(ptr noundef nonnull %5) #12
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv764 ; 2 uses
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !59
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store ptr null, ptr %i.ny, align 8, !tbaa !20
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %i.nz = call i32 @listTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %.not515 = icmp eq i32 %i.nz, 0
  br i1 %.not515, label %._crit_edge703.loopexit, label %.lr.ph702, !llvm.loop !66

._crit_edge703.loopexit:                          ; preds = %.lr.ph702
  %i.oa = trunc nuw i64 %indvars.iv.next765 to i32
  br label %._crit_edge703

._crit_edge703:                                   ; preds = %._crit_edge703.loopexit, %bb.cu
  %.4431.lcssa = phi i32 [ 0, %bb.cu ], [ %i.oa, %._crit_edge703.loopexit ]
  call void @listTypeResetIterator(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ec

bb.cv:                                            ; preds = %bb.ct
  %i.ob = icmp eq i32 %i.nh, 2
  br i1 %i.ob, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.oc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !109
  %.not512 = icmp eq i32 %i.oc, 0
  br i1 %.not512, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.od = call i64 @kvobjAllocSize(ptr noundef nonnull %.0407) #12
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.2398 = phi i64 [ %i.od, %bb.cx ], [ %.1397, %bb.cw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @setTypeInitIterator(ptr noundef nonnull %6, ptr noundef nonnull %.0407) #12
  %i.oe = call ptr @setTypeNextObject(ptr noundef nonnull %6) #12 ; 2 uses
  %.not513693 = icmp eq ptr %i.oe, null
  br i1 %.not513693, label %._crit_edge697, label %.lr.ph696

.lr.ph696:                                        ; preds = %bb.cy, %.lr.ph696
  %indvars.iv761 = phi i64 [ %indvars.iv.next762, %.lr.ph696 ], [ 0, %bb.cy ] ; 2 uses
  %i.of = phi ptr [ %i.oj, %.lr.ph696 ], [ %i.oe, %bb.cy ]
  %i.og = call ptr @createObject(i32 noundef 0, ptr noundef nonnull %i.of) #12
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv761 ; 2 uses
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !59
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store ptr null, ptr %i.oi, align 8, !tbaa !20
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1 ; 2 uses
  %i.oj = call ptr @setTypeNextObject(ptr noundef nonnull %6) #12 ; 2 uses
  %.not513 = icmp eq ptr %i.oj, null
  br i1 %.not513, label %._crit_edge697.loopexit, label %.lr.ph696, !llvm.loop !67

._crit_edge697.loopexit:                          ; preds = %.lr.ph696
  %i.ok = trunc nuw i64 %indvars.iv.next762 to i32
  br label %._crit_edge697

._crit_edge697:                                   ; preds = %._crit_edge697.loopexit, %bb.cy
  %.5432.lcssa = phi i32 [ 0, %bb.cy ], [ %i.ok, %._crit_edge697.loopexit ]
  call void @setTypeResetIterator(ptr noundef nonnull %6) #12
  %i.ol = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !109
  %.not514 = icmp eq i32 %i.ol, 0
  br i1 %.not514, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge697
  %i.om = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.on = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !25
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !19
  %i.os = call i32 @getKeySlot(ptr noundef %i.or) #12
  %i.ot = call i64 @kvobjAllocSize(ptr noundef nonnull %.0407) #12
  call void @updateSlotAllocSize(ptr noundef %i.om, i32 noundef %i.os, ptr noundef nonnull %.0407, i64 noundef %.2398, i64 noundef %i.ot) #12
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge697
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ec

bb.db:                                            ; preds = %bb.cv
  %i.ou = icmp eq i32 %i.nh, 3                    ; 2 uses
  %or.cond19 = and i1 %i.lt, %i.ou
  br i1 %or.cond19, label %bb.dc, label %bb.dq

bb.dc:                                            ; preds = %bb.db
  %i.ov = getelementptr inbounds nuw i8, ptr %.0407, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !19 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !113 ; 3 uses
  %.not509 = icmp eq i32 %.0443.lcssa, 0          ; 2 uses
  br i1 %.not509, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !116
  %i.pb = icmp sgt i64 %.0436, 0
  br i1 %i.pb, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.pc = load ptr, ptr %i.ow, align 8, !tbaa !112 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !24
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !24
  %i.ph = sub i64 %i.pe, %.0436
  %i.pi = add i64 %i.ph, %i.pg
  br label %.sink.split

bb.df:                                            ; preds = %bb.dc
  %i.pj = load ptr, ptr %i.oy, align 8, !tbaa !117
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !119
  %i.pm = icmp sgt i64 %.0436, 0
  br i1 %i.pm, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.pn = add nuw nsw i64 %.0436, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dg, %bb.de
  %.sink = phi i64 [ %i.pi, %bb.de ], [ %i.pn, %bb.dg ]
  %i.po = call ptr @zslGetElementByRank(ptr noundef nonnull %i.oy, i64 noundef %.sink) #12
  br label %bb.dh

bb.dh:                                            ; preds = %.sink.split, %bb.dd, %bb.df
  %.1 = phi ptr [ %i.pl, %bb.df ], [ %i.pa, %bb.dd ], [ %i.po, %.sink.split ]
  %.not510686 = icmp eq i32 %.1421, 0
  br i1 %.not510686, label %._crit_edge691, label %.lr.ph690

.lr.ph690:                                        ; preds = %bb.dh
  %.in.v = select i1 %.not509, i64 16, i64 8
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph690, %sdslen.exit580
  %indvars.iv758 = phi i64 [ 0, %.lr.ph690 ], [ %indvars.iv.next759, %sdslen.exit580 ] ; 2 uses
  %.in745 = phi i32 [ %.1421, %.lr.ph690 ], [ %i.pp, %sdslen.exit580 ]
  %.2688 = phi ptr [ %.1, %.lr.ph690 ], [ %i.qj, %sdslen.exit580 ] ; 3 uses
  %i.pp = add nsw i32 %.in745, -1                 ; 2 uses
  %.not511 = icmp eq ptr %.2688, null
  br i1 %.not511, label %bb.dj, label %bb.dk, !prof !120

bb.dj:                                            ; preds = %bb.di
  call void @_serverAssertWithInfo(ptr noundef %0, ptr noundef nonnull %.0407, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 469) #12
  call void @abort() #14
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.pq = call ptr @zslGetNodeElement(ptr noundef nonnull %.2688) #12 ; 6 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %.val.i578 = load i8, ptr %i.pr, align 1, !tbaa !20 ; 2 uses
  %i.ps = and i8 %.val.i578, 7
  switch i8 %i.ps, label %sdslen.exit580 [
    i8 0, label %bb.dl
    i8 1, label %bb.dm
    i8 2, label %bb.dn
    i8 3, label %bb.do
    i8 4, label %bb.dp
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.pt = lshr i8 %.val.i578, 3
  %i.pu = zext nneg i8 %i.pt to i64
  br label %sdslen.exit580

bb.dm:                                            ; preds = %bb.dk
  %i.pv = getelementptr inbounds i8, ptr %i.pq, i64 -3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !20
  %i.px = zext i8 %i.pw to i64
  br label %sdslen.exit580

bb.dn:                                            ; preds = %bb.dk
  %i.py = getelementptr inbounds i8, ptr %i.pq, i64 -5
  %i.pz = load i16, ptr %i.py, align 1, !tbaa !22
  %i.qa = zext i16 %i.pz to i64
  br label %sdslen.exit580

bb.do:                                            ; preds = %bb.dk
  %i.qb = getelementptr inbounds i8, ptr %i.pq, i64 -9
  %i.qc = load i32, ptr %i.qb, align 1, !tbaa !12
  %i.qd = zext i32 %i.qc to i64
  br label %sdslen.exit580

bb.dp:                                            ; preds = %bb.dk
  %i.qe = getelementptr inbounds i8, ptr %i.pq, i64 -17
  %i.qf = load i64, ptr %i.qe, align 1, !tbaa !24
  br label %sdslen.exit580

sdslen.exit580:                                   ; preds = %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp
  %.0.i579 = phi i64 [ %i.qf, %bb.dp ], [ %i.pu, %bb.dl ], [ %i.px, %bb.dm ], [ %i.qa, %bb.dn ], [ %i.qd, %bb.do ], [ 0, %bb.dk ]
  %i.qg = call ptr @createStringObject(ptr noundef nonnull %i.pq, i64 noundef %.0.i579) #12
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv758 ; 2 uses
  store ptr %i.qg, ptr %i.qh, align 8, !tbaa !59
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store ptr null, ptr %i.qi, align 8, !tbaa !20
  %indvars.iv.next759 = add nuw nsw i64 %indvars.iv758, 1 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %.2688, i64 %.in.v
  %i.qj = load ptr, ptr %.in, align 8, !tbaa !121
  %.not510 = icmp eq i32 %i.pp, 0
  br i1 %.not510, label %._crit_edge691.loopexit, label %bb.di, !llvm.loop !68

._crit_edge691.loopexit:                          ; preds = %sdslen.exit580
  %i.qk = trunc nuw i64 %indvars.iv.next759 to i32
  br label %._crit_edge691

._crit_edge691:                                   ; preds = %._crit_edge691.loopexit, %bb.dh
  %.6.lcssa = phi i32 [ 0, %bb.dh ], [ %i.qk, %._crit_edge691.loopexit ]
  %i.ql = sub nsw i64 %.1434, %.0436
  br label %bb.ec

bb.dq:                                            ; preds = %bb.db
  br i1 %i.ou, label %bb.dr, label %bb.eb

bb.dr:                                            ; preds = %bb.dq
  %i.qm = getelementptr inbounds nuw i8, ptr %.0407, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !19
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.qp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !109
  %.not506 = icmp eq i32 %i.qp, 0
  br i1 %.not506, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qq = call i64 @kvobjAllocSize(ptr noundef nonnull %.0407) #12
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.3 = phi i64 [ %i.qq, %bb.ds ], [ %.1397, %bb.dr ]
  call void @dictInitIterator(ptr noundef nonnull %7, ptr noundef %i.qo) #12
  %i.qr = call ptr @dictNext(ptr noundef nonnull %7) #12 ; 2 uses
  %.not507680 = icmp eq ptr %i.qr, null
  br i1 %.not507680, label %._crit_edge684, label %.lr.ph683

.lr.ph683:                                        ; preds = %bb.dt, %sdslen.exit583
  %indvars.iv = phi i64 [ %indvars.iv.next, %sdslen.exit583 ], [ 0, %bb.dt ] ; 2 uses
  %i.qs = phi ptr [ %i.rn, %sdslen.exit583 ], [ %i.qr, %bb.dt ]
  %i.qt = call ptr @dictGetKey(ptr noundef nonnull %i.qs) #12
  %i.qu = call ptr @zslGetNodeElement(ptr noundef %i.qt) #12 ; 6 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 -1
  %.val.i581 = load i8, ptr %i.qv, align 1, !tbaa !20 ; 2 uses
  %i.qw = and i8 %.val.i581, 7
  switch i8 %i.qw, label %sdslen.exit583 [
    i8 0, label %bb.du
    i8 1, label %bb.dv
    i8 2, label %bb.dw
    i8 3, label %bb.dx
    i8 4, label %bb.dy
  ]

bb.du:                                            ; preds = %.lr.ph683
  %i.qx = lshr i8 %.val.i581, 3
  %i.qy = zext nneg i8 %i.qx to i64
  br label %sdslen.exit583

bb.dv:                                            ; preds = %.lr.ph683
  %i.qz = getelementptr inbounds i8, ptr %i.qu, i64 -3
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !20
  %i.rb = zext i8 %i.ra to i64
  br label %sdslen.exit583

bb.dw:                                            ; preds = %.lr.ph683
  %i.rc = getelementptr inbounds i8, ptr %i.qu, i64 -5
  %i.rd = load i16, ptr %i.rc, align 1, !tbaa !22
  %i.re = zext i16 %i.rd to i64
  br label %sdslen.exit583

bb.dx:                                            ; preds = %.lr.ph683
  %i.rf = getelementptr inbounds i8, ptr %i.qu, i64 -9
  %i.rg = load i32, ptr %i.rf, align 1, !tbaa !12
  %i.rh = zext i32 %i.rg to i64
  br label %sdslen.exit583

bb.dy:                                            ; preds = %.lr.ph683
  %i.ri = getelementptr inbounds i8, ptr %i.qu, i64 -17
  %i.rj = load i64, ptr %i.ri, align 1, !tbaa !24
  br label %sdslen.exit583

sdslen.exit583:                                   ; preds = %.lr.ph683, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy
  %.0.i582 = phi i64 [ %i.rj, %bb.dy ], [ %i.qy, %bb.du ], [ %i.rb, %bb.dv ], [ %i.re, %bb.dw ], [ %i.rh, %bb.dx ], [ 0, %.lr.ph683 ]
  %i.rk = call ptr @createStringObject(ptr noundef nonnull %i.qu, i64 noundef %.0.i582) #12
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv ; 2 uses
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !59
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store ptr null, ptr %i.rm, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rn = call ptr @dictNext(ptr noundef nonnull %7) #12 ; 2 uses
  %.not507 = icmp eq ptr %i.rn, null
  br i1 %.not507, label %._crit_edge684.loopexit, label %.lr.ph683, !llvm.loop !69

._crit_edge684.loopexit:                          ; preds = %sdslen.exit583
  %i.ro = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge684

._crit_edge684:                                   ; preds = %._crit_edge684.loopexit, %bb.dt
  %.7.lcssa = phi i32 [ 0, %bb.dt ], [ %i.ro, %._crit_edge684.loopexit ]
  call void @dictResetIterator(ptr noundef nonnull %7) #12
  %i.rp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !109
  %.not508 = icmp eq i32 %i.rp, 0
  br i1 %.not508, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %._crit_edge684
  %i.rq = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.rr = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !25
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !19
  %i.rw = call i32 @getKeySlot(ptr noundef %i.rv) #12
  %i.rx = call i64 @kvobjAllocSize(ptr noundef nonnull %.0407) #12
  call void @updateSlotAllocSize(ptr noundef %i.rq, i32 noundef %i.rw, ptr noundef nonnull %.0407, i64 noundef %.3, i64 noundef %i.rx) #12
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge684
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dq
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.13, i32 noundef 500, ptr noundef nonnull @.str.16) #12
  call void @abort() #14
  unreachable

bb.ec:                                            ; preds = %._crit_edge703, %._crit_edge691, %bb.ea, %bb.da, %bb.co, %.critedge
  %.1437 = phi i64 [ 0, %.critedge ], [ %.0436, %bb.co ], [ %.0436, %._crit_edge703 ], [ %.0436, %bb.da ], [ 0, %._crit_edge691 ], [ %.0436, %bb.ea ] ; 6 uses
  %.2435 = phi i64 [ %i.nu, %.critedge ], [ %.1434, %bb.co ], [ %.1434, %._crit_edge703 ], [ %.1434, %bb.da ], [ %i.ql, %._crit_edge691 ], [ %.1434, %bb.ea ] ; 9 uses
  %.8 = phi i32 [ %.3430.lcssa, %.critedge ], [ 0, %bb.co ], [ %.4431.lcssa, %._crit_edge703 ], [ %.5432.lcssa, %bb.da ], [ %.6.lcssa, %._crit_edge691 ], [ %.7.lcssa, %bb.ea ]
  %i.ry = icmp eq i32 %.8, %.1421
  br i1 %i.ry, label %bb.ee, label %bb.ed, !prof !122

bb.ed:                                            ; preds = %bb.ec
  call void @_serverAssertWithInfo(ptr noundef %0, ptr noundef nonnull %.0407, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, i32 noundef 502) #12
  call void @abort() #14
  unreachable

bb.ee:                                            ; preds = %bb.ec
  br i1 %i.lt, label %bb.ev, label %.preheader

.preheader:                                       ; preds = %bb.ee
  %i.rz = icmp sgt i32 %.1421, 0
  br i1 %i.rz, label %.lr.ph715, label %._crit_edge716

.lr.ph715:                                        ; preds = %.preheader
  %.not523 = icmp eq ptr %.4847, null             ; 2 uses
  %.not525604 = icmp eq i32 %.4442845, 0          ; 2 uses
  %wide.trip.count773 = zext nneg i32 %.1421 to i64
  br label %bb.ef

bb.ef:                                            ; preds = %.lr.ph715, %.thread611
  %indvars.iv770 = phi i64 [ 0, %.lr.ph715 ], [ %indvars.iv.next771, %.thread611 ] ; 5 uses
  %.0411714 = phi i32 [ 0, %.lr.ph715 ], [ %.3414, %.thread611 ] ; 5 uses
  br i1 %.not523, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sa = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv770 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !59
  %i.sd = call ptr @lookupKeyByPattern(ptr noundef %i.sa, ptr noundef nonnull %.4847, ptr noundef %i.sc) ; 4 uses
  %.not524 = icmp eq ptr %i.sd, null
  br i1 %.not524, label %.thread611, label %.thread602.a

bb.eh:                                            ; preds = %bb.ef
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv770
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !59
  br i1 %.not525604, label %bb.ei, label %.thread611

.thread602.a:                                     ; preds = %bb.eg
  br i1 %.not525604, label %bb.ei, label %.thread614

.thread614:                                       ; preds = %.thread602.a
  %i.sg = call ptr @getDecodedObject(ptr noundef nonnull %i.sd) #12
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr %i.sg, ptr %i.sh, align 8, !tbaa !20
  br label %bb.eq

bb.ei:                                            ; preds = %.thread602.a, %bb.eh
  %.0392607 = phi ptr [ %i.sd, %.thread602.a ], [ %i.sf, %bb.eh ] ; 4 uses
  %i.si = load i64, ptr %.0392607, align 8
  %i.sj = trunc i64 %i.si to i32
  %i.sk = lshr i32 %i.sj, 4
  %i.sl = and i32 %i.sk, 15
  switch i32 %i.sl, label %bb.eo [
    i32 0, label %bb.ej
    i32 8, label %bb.ej
    i32 1, label %bb.en
  ]

bb.ej:                                            ; preds = %bb.ei, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.sm = getelementptr inbounds nuw i8, ptr %.0392607, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !19
  %i.so = call double @fast_float_strtod(ptr noundef %i.sn, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv770
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store double %i.so, ptr %i.sq, align 8, !tbaa !20
  %i.sr = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !20
  %.not526 = icmp eq i8 %i.ss, 0
  br i1 %.not526, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.st = tail call ptr @__errno_location() #15
  %i.su = load i32, ptr %i.st, align 4, !tbaa !12
  %i.sv = icmp eq i32 %i.su, 34
  %i.sw = fcmp uno double %i.so, 0.000000e+00
  %or.cond541 = select i1 %i.sv, i1 true, i1 %i.sw
  br i1 %or.cond541, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek, %bb.ej
  br label %bb.em

bb.em:                                            ; preds = %bb.ek, %bb.el
  %.1412 = phi i32 [ 1, %bb.el ], [ %.0411714, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ep

bb.en:                                            ; preds = %bb.ei
  %i.sx = getelementptr inbounds nuw i8, ptr %.0392607, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !19
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = sitofp i64 %i.sz to double
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv770
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store double %i.ta, ptr %i.tc, align 8, !tbaa !20
  br label %bb.ep

bb.eo:                                            ; preds = %bb.ei
  call void @_serverAssertWithInfo(ptr noundef %0, ptr noundef nonnull %.0407, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef 535) #12
  call void @abort() #14
  unreachable

bb.ep:                                            ; preds = %bb.em, %bb.en
  %.2413 = phi i32 [ %.1412, %bb.em ], [ %.0411714, %bb.en ] ; 2 uses
  br i1 %.not523, label %.thread611, label %bb.eq

bb.eq:                                            ; preds = %.thread614, %bb.ep
  %.2413618 = phi i32 [ %.0411714, %.thread614 ], [ %.2413, %bb.ep ]
  %.0392606617 = phi ptr [ %i.sd, %.thread614 ], [ %.0392607, %bb.ep ]
  call void @decrRefCount(ptr noundef nonnull %.0392606617) #12
  br label %.thread611

.thread611:                                       ; preds = %bb.eh, %bb.ep, %bb.eq, %bb.eg
  %.3414 = phi i32 [ %.0411714, %bb.eg ], [ %.2413618, %bb.eq ], [ %.2413, %bb.ep ], [ %.0411714, %bb.eh ] ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond774.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count773
  br i1 %exitcond774.not, label %._crit_edge716, label %bb.ef, !llvm.loop !70

._crit_edge716:                                   ; preds = %.thread611, %.preheader
  %.0411.lcssa = phi i32 [ 0, %.preheader ], [ %.3414, %.thread611 ] ; 2 uses
  store i32 %.0443.lcssa, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7920), align 8, !tbaa !60
  store i32 %.4442845, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7924), align 4, !tbaa !57
  %i.td = insertelement <2 x ptr> poison, ptr %.4847, i64 0
  %i.te = insertelement <2 x ptr> %i.td, ptr %.0399.lcssa, i64 1
  %i.tf = icmp ne <2 x ptr> %i.te, splat (ptr null)
  %.not519.not = icmp eq ptr %.4847, null
  %i.tg = zext <2 x i1> %i.tf to <2 x i32>
  store <2 x i32> %i.tg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7928), align 8, !tbaa !12
  br i1 %.not519.not, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %._crit_edge716
  %.not521 = icmp eq i64 %.1437, 0
  br i1 %.not521, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.th = add nsw i32 %.1421, -1
  %i.ti = sext i32 %i.th to i64
  %.not522 = icmp eq i64 %.2435, %i.ti
  br i1 %.not522, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  call void @pqsort(ptr noundef %i.ne, i64 noundef %i.nc, i64 noundef 16, ptr noundef nonnull @sortCompare, i64 noundef %.1437, i64 noundef %.2435) #12
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es, %._crit_edge716
  call void @qsort(ptr noundef %i.ne, i64 noundef %i.nc, i64 noundef 16, ptr noundef nonnull @sortCompare) #12
  br label %bb.ev

bb.ev:                                            ; preds = %bb.et, %bb.eu, %bb.ee
  %.4415 = phi i32 [ 0, %bb.ee ], [ %.0411.lcssa, %bb.et ], [ %.0411.lcssa, %bb.eu ]
  %.not527 = icmp eq i32 %.0416.lcssa, 0          ; 3 uses
  br i1 %.not527, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.tj = zext i32 %.0416.lcssa to i64
  %reass.sub = sub i64 %.2435, %.1437
  %i.tk = add i64 %reass.sub, 1
  %i.tl = mul i64 %i.tk, %i.tj
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %reass.sub746 = sub i64 %.2435, %.1437
  %i.tm = add i64 %reass.sub746, 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.tn = phi i64 [ %i.tl, %bb.ew ], [ %i.tm, %bb.ex ] ; 2 uses
  %.not528 = icmp eq i32 %.4415, 0
  br i1 %.not528, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %.loopexit

bb.fa:                                            ; preds = %bb.ey
  %i.to = icmp eq ptr %.0399.lcssa, null
  br i1 %i.to, label %bb.fb, label %bb.fk

bb.fb:                                            ; preds = %bb.fa
  %i.tp = and i64 %i.tn, 4294967295
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.tp) #12
  %sext748 = shl i64 %.1437, 32
  %i.tq = ashr exact i64 %sext748, 32             ; 2 uses
  %.not534730 = icmp slt i64 %.2435, %i.tq
  br i1 %.not534730, label %.loopexit, label %.lr.ph733

.lr.ph733:                                        ; preds = %bb.fb, %._crit_edge729
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %._crit_edge729 ], [ %i.tq, %bb.fb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  br i1 %.not527, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph733
  %i.tr = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv781
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !59
  call void @addReplyBulk(ptr noundef %0, ptr noundef %i.ts) #12
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph733
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %8) #12
  %i.tt = call ptr @listNext(ptr noundef nonnull %8) #12 ; 2 uses
  %.not535726 = icmp eq ptr %i.tt, null
  br i1 %.not535726, label %._crit_edge729, label %.lr.ph728

.lr.ph728:                                        ; preds = %bb.fd
  %i.tu = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv781
  br label %bb.fe

bb.fe:                                            ; preds = %.lr.ph728, %bb.fj
  %i.tv = phi ptr [ %i.tt, %.lr.ph728 ], [ %i.uf, %bb.fj ]
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !124 ; 2 uses
  %i.ty = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !17
  %i.ub = load ptr, ptr %i.tu, align 8, !tbaa !59
  %i.uc = call ptr @lookupKeyByPattern(ptr noundef %i.ty, ptr noundef %i.ua, ptr noundef %i.ub) ; 3 uses
  %i.ud = load i32, ptr %i.tx, align 8, !tbaa !16
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %.not536 = icmp eq ptr %i.uc, null
  br i1 %.not536, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @addReplyNull(ptr noundef nonnull %0) #12
  br label %bb.fj

bb.fh:                                            ; preds = %bb.ff
  call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef nonnull %i.uc) #12
  call void @decrRefCount(ptr noundef nonnull %i.uc) #12
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %.0407, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, i32 noundef 584) #12
  call void @abort() #14
  unreachable

bb.fj:                                            ; preds = %bb.fg, %bb.fh
  %i.uf = call ptr @listNext(ptr noundef nonnull %8) #12 ; 2 uses
  %.not535 = icmp eq ptr %i.uf, null
  br i1 %.not535, label %._crit_edge729, label %bb.fe, !llvm.loop !71

._crit_edge729:                                   ; preds = %bb.fj, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, 1
  %.not534.not = icmp sgt i64 %.2435, %indvars.iv781
  br i1 %.not534.not, label %.lr.ph733, label %.loopexit, !llvm.loop !72

bb.fk:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ug = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !106
  %i.uh = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !107
  %i.ui = call ptr @createQuicklistObject(i32 noundef %i.ug, i32 noundef %i.uh) #12 ; 4 uses
  store ptr %i.ui, ptr %i.d, align 8, !tbaa !25
  %sext747 = shl i64 %.1437, 32
  %i.uj = ashr exact i64 %sext747, 32             ; 3 uses
  %.not529721 = icmp slt i64 %.2435, %i.uj
  br i1 %.not529721, label %._crit_edge725, label %.lr.ph724

.lr.ph724:                                        ; preds = %bb.fk
  br i1 %.not527, label %.lr.ph724.split.us, label %.lr.ph724.split

.lr.ph724.split.us:                               ; preds = %.lr.ph724, %.lr.ph724.split.us
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %.lr.ph724.split.us ], [ %i.uj, %.lr.ph724 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.uk = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv778
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !59
  call void @listTypePush(ptr noundef %i.ui, ptr noundef %i.ul, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next779 = add nsw i64 %indvars.iv778, 1
  %.not529.us.not = icmp sgt i64 %.2435, %indvars.iv778
  br i1 %.not529.us.not, label %.lr.ph724.split.us, label %._crit_edge725, !llvm.loop !73

.lr.ph724.split:                                  ; preds = %.lr.ph724, %.loopexit624
  %indvars.iv775 = phi i64 [ %indvars.iv.next776, %.loopexit624 ], [ %i.uj, %.lr.ph724 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %9) #12
  %i.um = call ptr @listNext(ptr noundef nonnull %9) #12 ; 2 uses
  %.not532718 = icmp eq ptr %i.um, null
  br i1 %.not532718, label %.loopexit624, label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph724.split
  %i.un = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv775
  br label %bb.fl

bb.fl:                                            ; preds = %.lr.ph720, %bb.fo
  %i.uo = phi ptr [ %i.um, %.lr.ph720 ], [ %i.uz, %bb.fo ]
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !124 ; 2 uses
  %i.ur = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !17
  %i.uu = load ptr, ptr %i.un, align 8, !tbaa !59
  %i.uv = call ptr @lookupKeyByPattern(ptr noundef %i.ur, ptr noundef %i.ut, ptr noundef %i.uu) ; 2 uses
  %i.uw = load i32, ptr %i.uq, align 8, !tbaa !16
  %i.ux = icmp eq i32 %i.uw, 0
  br i1 %i.ux, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  %.not533 = icmp eq ptr %i.uv, null
  br i1 %.not533, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.uy = call ptr @createStringObject(ptr noundef nonnull @.str.21, i64 noundef 0) #12
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.0 = phi ptr [ %i.uv, %bb.fm ], [ %i.uy, %bb.fn ] ; 2 uses
  call void @listTypePush(ptr noundef %i.ui, ptr noundef %.0, i32 noundef 1) #12
  call void @decrRefCount(ptr noundef %.0) #12
  %i.uz = call ptr @listNext(ptr noundef nonnull %9) #12 ; 2 uses
  %.not532 = icmp eq ptr %i.uz, null
  br i1 %.not532, label %.loopexit624, label %bb.fl, !llvm.loop !74

bb.fp:                                            ; preds = %bb.fl
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %.0407, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, i32 noundef 617) #12
  call void @abort() #14
  unreachable

.loopexit624:                                     ; preds = %bb.fo, %.lr.ph724.split
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next776 = add nsw i64 %indvars.iv775, 1
  %.not529.not = icmp sgt i64 %.2435, %indvars.iv775
  br i1 %.not529.not, label %.lr.ph724.split, label %._crit_edge725, !llvm.loop !73

._crit_edge725:                                   ; preds = %.loopexit624, %.lr.ph724.split.us, %bb.fk
  %i.va = and i64 %i.tn, 4294967295               ; 3 uses
  %.not530 = icmp eq i64 %i.va, 0
  br i1 %.not530, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge725
  call void @listTypeTryConversion(ptr noundef %i.ui, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %i.vb = load ptr, ptr %i.kp, align 8, !tbaa !104
  call void @setKey(ptr noundef %0, ptr noundef %i.vb, ptr noundef nonnull %.0399.lcssa, ptr noundef nonnull %i.d, i32 noundef 0) #12
  store ptr null, ptr %i.d, align 8, !tbaa !25
  %i.vc = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 72
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !127
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull @.str.22, ptr noundef nonnull %.0399.lcssa, i32 noundef %i.ve) #12
  %i.vf = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !128
  %i.vg = add nsw i64 %i.vf, %i.va
  store i64 %i.vg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !128
  br label %bb.fu

bb.fr:                                            ; preds = %._crit_edge725
  %i.vh = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.vi = call i32 @dbDelete(ptr noundef %i.vh, ptr noundef nonnull %.0399.lcssa) #12
  %.not531 = icmp eq i32 %i.vi, 0
  br i1 %.not531, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.vj = load ptr, ptr %i.kp, align 8, !tbaa !104
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.vj, ptr noundef nonnull %.0399.lcssa, ptr noundef null, i32 noundef 1) #12
  %i.vk = load ptr, ptr %i.kp, align 8, !tbaa !104
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 72
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !127
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef nonnull %.0399.lcssa, i32 noundef %i.vm) #12
  %i.vn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !128
  %i.vo = add nsw i64 %i.vn, 1
  store i64 %i.vo, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !128
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.vp = load ptr, ptr %i.d, align 8, !tbaa !25
  call void @decrRefCount(ptr noundef %i.vp) #12
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fq
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.va) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge729, %bb.fb, %bb.fu, %bb.ez
  %i.vq = icmp sgt i32 %.1421, 0
  br i1 %i.vq, label %.lr.ph736.preheader, label %._crit_edge737

.lr.ph736.preheader:                              ; preds = %.loopexit
  %wide.trip.count787 = zext nneg i32 %.1421 to i64
  br label %.lr.ph736

.lr.ph736:                                        ; preds = %.lr.ph736.preheader, %.lr.ph736
  %indvars.iv784 = phi i64 [ 0, %.lr.ph736.preheader ], [ %indvars.iv.next785, %.lr.ph736 ] ; 2 uses
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv784
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !59
  call void @decrRefCount(ptr noundef %i.vs) #12
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %exitcond788.not = icmp eq i64 %indvars.iv.next785, %wide.trip.count787
  br i1 %exitcond788.not, label %._crit_edge737, label %.lr.ph736, !llvm.loop !75

._crit_edge737:                                   ; preds = %.lr.ph736, %.loopexit
  call void @decrRefCount(ptr noundef nonnull %.0407) #12
  call void @listRelease(ptr noundef %i.e) #12
  %i.vt = icmp slt i32 %.1421, 1
  %.not537 = icmp eq i32 %.4442845, 0
  %or.cond742 = select i1 %i.vt, i1 true, i1 %.not537
  br i1 %or.cond742, label %._crit_edge741.split, label %.lr.ph740.split.preheader

.lr.ph740.split.preheader:                        ; preds = %._crit_edge737
  %wide.trip.count792 = zext nneg i32 %.1421 to i64
  br label %.lr.ph740.split

.lr.ph740.split:                                  ; preds = %.lr.ph740.split.preheader, %bb.fw
  %indvars.iv789 = phi i64 [ 0, %.lr.ph740.split.preheader ], [ %indvars.iv.next790, %bb.fw ] ; 2 uses
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv789
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !20 ; 2 uses
  %.not538 = icmp eq ptr %i.vw, null
  br i1 %.not538, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph740.split
  call void @decrRefCount(ptr noundef nonnull %i.vw) #12
  br label %bb.fw

bb.fw:                                            ; preds = %.lr.ph740.split, %bb.fv
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 1 ; 2 uses
  %exitcond793.not = icmp eq i64 %indvars.iv.next790, %wide.trip.count792
  br i1 %exitcond793.not, label %._crit_edge741.split, label %.lr.ph740.split, !llvm.loop !76

._crit_edge741.split:                             ; preds = %bb.fw, %._crit_edge737
  call void @zfree(ptr noundef %i.ne) #12
  br label %bb.fx

bb.fx:                                            ; preds = %._crit_edge741.split, %bb.bu, %.loopexit625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare ptr @listCreate() local_unnamed_addr #3

declare void @zfree(ptr noundef) #3

declare i32 @ACLUserCheckCmdWithUnrestrictedKeyAccess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @getLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @patternHashSlot(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #3

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @listRelease(ptr noundef) local_unnamed_addr #3

declare ptr @createQuicklistObject(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #3

declare void @zsetConvert(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @listTypeLength(ptr noundef) local_unnamed_addr #3

declare i64 @setTypeSize(ptr noundef) local_unnamed_addr #3

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @listTypeInitIterator(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @listTypeNext(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listTypeGet(ptr noundef) local_unnamed_addr #3

declare void @listTypeResetIterator(ptr noundef) local_unnamed_addr #3

declare void @setTypeInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @setTypeNextObject(ptr noundef) local_unnamed_addr #3

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @setTypeResetIterator(ptr noundef) local_unnamed_addr #3

declare ptr @zslGetElementByRank(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @zslGetNodeElement(ptr noundef) local_unnamed_addr #3

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dictNext(ptr noundef) local_unnamed_addr #3

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #3

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #3

declare double @fast_float_strtod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare void @pqsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @addReplyBulk(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listNext(ptr noundef) local_unnamed_addr #3

declare void @addReplyNull(ptr noundef) local_unnamed_addr #3

declare void @listTypePush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
