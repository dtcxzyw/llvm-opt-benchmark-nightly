Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/kwset?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kwsexec:bb.a
  %spec.select205.us.i = select i1 %.not201.us.i, ptr %.2143261.us.i, ptr %i.kz ; 2 uses
  %i.ll = icmp ugt ptr %i.kz, %1
  br i1 %i.ll, label %.lr.ph263.us.i, label %.critedge203.us.i, !llvm.loop !74

.critedge203.us.i:                                ; preds = %.critedge.us.i28, %.lr.ph263.us.i, %bb.ad, %.split.us.us.i
  %.0157258.us.lcssa.sink.i = phi ptr [ %i.kw, %.split.us.us.i ], [ %.0157258.us.i, %bb.ad ], [ %.0157258.us.i, %.lr.ph263.us.i ], [ %i.lj, %.critedge.us.i28 ]
  %.2154233.us.i = phi ptr [ %spec.select.us.i, %.split.us.us.i ], [ %.2154259.us.i, %bb.ad ], [ %.2154259.us.i, %.lr.ph263.us.i ], [ %spec.select204.us.i, %.critedge.us.i28 ] ; 2 uses
  %.2143231.us.i = phi ptr [ %spec.select202.us.i, %.split.us.us.i ], [ %.2143261.us.i, %bb.ad ], [ %.2143261.us.i, %.lr.ph263.us.i ], [ %spec.select205.us.i, %.critedge.us.i28 ] ; 2 uses
  %.2133.in.le254.us.i = getelementptr inbounds nuw i8, ptr %.0157258.us.lcssa.sink.i, i64 44
  %.2133229.us.i = load i32, ptr %.2133.in.le254.us.i, align 4, !tbaa !43
  %.not186.us.i = icmp eq ptr %.2143231.us.i, null
  br i1 %.not186.us.i, label %.outer213.us.i, label %.preheader.i23, !llvm.loop !72

.outer213.i:                                      ; preds = %bb.x, %.critedge203.i
  %.0152.ph.i = phi ptr [ %.2154233.i, %.critedge203.i ], [ null, %bb.x ]
  %.0131.ph.i = phi i32 [ %.2133229.i, %.critedge203.i ], [ %.fr.i21, %bb.x ]
  %.0127.ph.i = phi ptr [ %.2129.i, %.critedge203.i ], [ %1, %bb.x ]
  br label %bb.af

bb.ae:                                            ; preds = %bb.w
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !25
  %.pre.i = ptrtoint ptr %i.jh to i64
  br label %.preheader.i23

bb.af:                                            ; preds = %bb.ai, %.outer213.i
  %.0131.i = phi i32 [ %.1132.i, %bb.ai ], [ %.0131.ph.i, %.outer213.i ]
  %.0127.i = phi ptr [ %.2129.i, %bb.ai ], [ %.0127.ph.i, %.outer213.i ] ; 3 uses
  %i.lo = ptrtoint ptr %.0127.i to i64
  %i.lp = sub i64 %i.jm, %i.lo
  %i.lq = sext i32 %.0131.i to i64                ; 2 uses
  %.not178.i = icmp slt i64 %i.lp, %i.lq
  br i1 %.not178.i, label %cwexec.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not180.i = icmp ugt ptr %.0127.i, %.0126.i
  %i.lr = getelementptr i8, ptr %.0127.i, i64 %i.lq ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 -1     ; 4 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !34  ; 3 uses
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !34  ; 4 uses
  br i1 %.not180.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lx = icmp ne i8 %i.lw, 0
  %i.ly = icmp ult ptr %i.ls, %.0126.i
  %i.lz = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %i.lz, label %.lr.ph.i27, label %._crit_edge.i

.lr.ph.i27:                                       ; preds = %bb.ah, %.lr.ph.i27
  %i.ma = phi i8 [ %i.ms, %.lr.ph.i27 ], [ %i.lw, %bb.ah ]
  %.1128234.i = phi ptr [ %i.mo, %.lr.ph.i27 ], [ %i.ls, %bb.ah ]
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %.1128234.i, i64 %i.mb ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !34
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !34
  %i.mh = zext i8 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mh ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !34
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !34
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mn ; 4 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !34  ; 2 uses
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !34  ; 3 uses
  %i.mt = icmp ne i8 %i.ms, 0
  %i.mu = icmp ult ptr %i.mo, %.0126.i
  %i.mv = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %i.mv, label %.lr.ph.i27, label %._crit_edge.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %.lr.ph.i27, %bb.ah
  %.1128.lcssa.i = phi ptr [ %i.ls, %bb.ah ], [ %i.mo, %.lr.ph.i27 ]
  %.lcssa226.i = phi i8 [ %i.lt, %bb.ah ], [ %i.mp, %.lr.ph.i27 ]
  %.lcssa225.i = phi i8 [ %i.lw, %bb.ah ], [ %i.ms, %.lr.ph.i27 ]
  %i.mw = getelementptr inbounds nuw i8, ptr %.1128.lcssa.i, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %bb.ag
  %.0136.i = phi i8 [ %.lcssa226.i, %._crit_edge.i ], [ %i.lt, %bb.ag ]
  %.1132.in.i = phi i8 [ %.lcssa225.i, %._crit_edge.i ], [ %i.lw, %bb.ag ] ; 2 uses
  %.2129.i = phi ptr [ %i.mw, %._crit_edge.i ], [ %i.lr, %bb.ag ] ; 4 uses
  %.1132.i = zext i8 %.1132.in.i to i32
  %.not181.i = icmp eq i8 %.1132.in.i, 0
  br i1 %.not181.i, label %.split.i, label %bb.af, !llvm.loop !72

.split.i:                                         ; preds = %bb.ai
  %i.mx = getelementptr inbounds i8, ptr %.2129.i, i64 -1 ; 4 uses
  %i.my = zext i8 %.0136.i to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !33 ; 5 uses
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !28
  %.not182.i = icmp eq i32 %i.nb, 0               ; 2 uses
  %spec.select.i = select i1 %.not182.i, ptr %.0152.ph.i, ptr %i.na ; 3 uses
  %spec.select202.i = select i1 %.not182.i, ptr null, ptr %i.mx ; 3 uses
  %i.nc = icmp ugt ptr %i.mx, %1
  br i1 %i.nc, label %.lr.ph263.i.preheader, label %.critedge203.i

.lr.ph263.i.preheader:                            ; preds = %.split.i
  br i1 %.not183.i, label %.lr.ph263.i.us, label %.lr.ph263.i

.lr.ph263.i.us:                                   ; preds = %.lr.ph263.i.preheader, %.critedge.i26.us
  %.2143261.i.us = phi ptr [ %spec.select205.i.us, %.critedge.i26.us ], [ %spec.select202.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0148260.i.us = phi ptr [ %i.nd, %.critedge.i26.us ], [ %i.mx, %.lr.ph263.i.preheader ]
  %.2154259.i.us = phi ptr [ %spec.select204.i.us, %.critedge.i26.us ], [ %spec.select.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0157258.i.us = phi ptr [ %i.nk, %.critedge.i26.us ], [ %i.na, %.lr.ph263.i.preheader ] ; 3 uses
  %i.nd = getelementptr inbounds i8, ptr %.0148260.i.us, i64 -1 ; 4 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !34  ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0157258.i.us, i64 8
  %.0238.i.us = load ptr, ptr %i.nf, align 8, !tbaa !36 ; 2 uses
  %.not184239.i.us = icmp eq ptr %.0238.i.us, null
  br i1 %.not184239.i.us, label %.critedge203.i, label %.lr.ph242.i.us

.lr.ph242.i.us:                                   ; preds = %.lr.ph263.i.us, %bb.aj
  %.0240.i.us = phi ptr [ %.0.i.us, %bb.aj ], [ %.0238.i.us, %.lr.ph263.i.us ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.0240.i.us, i64 24
  %i.nh = load i8, ptr %i.ng, align 8, !tbaa !38  ; 2 uses
  %.not185.i.us = icmp eq i8 %i.ne, %i.nh
  br i1 %.not185.i.us, label %.critedge.i26.us, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph242.i.us
  %i.ni = icmp ult i8 %i.ne, %i.nh
  %.1.in.idx.i.us = select i1 %i.ni, i64 0, i64 8
  %.1.in.i.us = getelementptr inbounds nuw i8, ptr %.0240.i.us, i64 %.1.in.idx.i.us
  %.0.i.us = load ptr, ptr %.1.in.i.us, align 8, !tbaa !36 ; 2 uses
  %.not184.i.us = icmp eq ptr %.0.i.us, null
  br i1 %.not184.i.us, label %.critedge203.i, label %.lr.ph242.i.us, !llvm.loop !73

.critedge.i26.us:                                 ; preds = %.lr.ph242.i.us
  %i.nj = getelementptr inbounds nuw i8, ptr %.0240.i.us, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !40 ; 4 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !28
  %.not201.i.us = icmp eq i32 %i.nl, 0            ; 2 uses
  %spec.select204.i.us = select i1 %.not201.i.us, ptr %.2154259.i.us, ptr %i.nk ; 2 uses
  %spec.select205.i.us = select i1 %.not201.i.us, ptr %.2143261.i.us, ptr %i.nd ; 2 uses
  %i.nm = icmp ugt ptr %i.nd, %1
  br i1 %i.nm, label %.lr.ph263.i.us, label %.critedge203.i, !llvm.loop !74

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader, %.critedge.i26
  %.2143261.i = phi ptr [ %spec.select205.i, %.critedge.i26 ], [ %spec.select202.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0148260.i = phi ptr [ %i.nn, %.critedge.i26 ], [ %i.mx, %.lr.ph263.i.preheader ]
  %.2154259.i = phi ptr [ %spec.select204.i, %.critedge.i26 ], [ %spec.select.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0157258.i = phi ptr [ %i.nx, %.critedge.i26 ], [ %i.na, %.lr.ph263.i.preheader ] ; 3 uses
  %i.nn = getelementptr inbounds i8, ptr %.0148260.i, i64 -1 ; 4 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !34
  %i.np = zext i8 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %.fr356.i, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !34  ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0157258.i, i64 8
  %.0238.i = load ptr, ptr %i.ns, align 8, !tbaa !36 ; 2 uses
  %.not184239.i = icmp eq ptr %.0238.i, null
  br i1 %.not184239.i, label %.critedge203.i, label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %.lr.ph263.i, %bb.ak
  %.0240.i = phi ptr [ %.0.i, %bb.ak ], [ %.0238.i, %.lr.ph263.i ] ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0240.i, i64 24
  %i.nu = load i8, ptr %i.nt, align 8, !tbaa !38  ; 2 uses
  %.not185.i = icmp eq i8 %i.nr, %i.nu
  br i1 %.not185.i, label %.critedge.i26, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph242.i
  %i.nv = icmp ult i8 %i.nr, %i.nu
  %.1.in.idx.i = select i1 %i.nv, i64 0, i64 8
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.0240.i, i64 %.1.in.idx.i
  %.0.i = load ptr, ptr %.1.in.i, align 8, !tbaa !36 ; 2 uses
  %.not184.i = icmp eq ptr %.0.i, null
  br i1 %.not184.i, label %.critedge203.i, label %.lr.ph242.i, !llvm.loop !73

.critedge.i26:                                    ; preds = %.lr.ph242.i
  %i.nw = getelementptr inbounds nuw i8, ptr %.0240.i, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !40 ; 4 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !28
  %.not201.i = icmp eq i32 %i.ny, 0               ; 2 uses
  %spec.select204.i = select i1 %.not201.i, ptr %.2154259.i, ptr %i.nx ; 2 uses
  %spec.select205.i = select i1 %.not201.i, ptr %.2143261.i, ptr %i.nn ; 2 uses
  %i.nz = icmp ugt ptr %i.nn, %1
  br i1 %i.nz, label %.lr.ph263.i, label %.critedge203.i, !llvm.loop !74

.critedge203.i:                                   ; preds = %.lr.ph263.i, %.critedge.i26, %.critedge.i26.us, %.lr.ph263.i.us, %bb.ak, %bb.aj, %.split.i
  %.0157258.lcssa.sink.i = phi ptr [ %i.na, %.split.i ], [ %.0157258.i.us, %bb.aj ], [ %.0157258.i, %bb.ak ], [ %i.nk, %.critedge.i26.us ], [ %.0157258.i.us, %.lr.ph263.i.us ], [ %i.nx, %.critedge.i26 ], [ %.0157258.i, %.lr.ph263.i ]
  %.2154233.i = phi ptr [ %spec.select.i, %.split.i ], [ %.2154259.i.us, %bb.aj ], [ %.2154259.i, %bb.ak ], [ %spec.select204.i.us, %.critedge.i26.us ], [ %.2154259.i.us, %.lr.ph263.i.us ], [ %spec.select204.i, %.critedge.i26 ], [ %.2154259.i, %.lr.ph263.i ] ; 2 uses
  %.2143231.i = phi ptr [ %spec.select202.i, %.split.i ], [ %.2143261.i.us, %bb.aj ], [ %.2143261.i, %bb.ak ], [ %spec.select205.i.us, %.critedge.i26.us ], [ %.2143261.i.us, %.lr.ph263.i.us ], [ %spec.select205.i, %.critedge.i26 ], [ %.2143261.i, %.lr.ph263.i ] ; 2 uses
  %.2133.in.le254.i = getelementptr inbounds nuw i8, ptr %.0157258.lcssa.sink.i, i64 44
  %.2133229.i = load i32, ptr %.2133.in.le254.i, align 4, !tbaa !43
  %.not186.i = icmp eq ptr %.2143231.i, null
  br i1 %.not186.i, label %.outer213.i, label %.preheader.i23, !llvm.loop !72

.preheader.i23:                                   ; preds = %.critedge203.i, %.critedge203.us.i, %.critedge203.us.us.i, %bb.ae
  %.pre-phi.i = phi i64 [ %i.jm, %.critedge203.us.i ], [ %i.jm, %.critedge203.us.us.i ], [ %.pre.i, %bb.ae ], [ %i.jm, %.critedge203.i ]
  %.4156.ph.i = phi ptr [ %.2154233.us.i, %.critedge203.us.i ], [ %.2154233.us.us.i, %.critedge203.us.us.i ], [ %i.ln, %bb.ae ], [ %.2154233.i, %.critedge203.i ] ; 3 uses
  %.4145.ph.i = phi ptr [ %.2143231.us.i, %.critedge203.us.i ], [ %.2143231.us.us.i, %.critedge203.us.us.i ], [ %1, %bb.ae ], [ %.2143231.i, %.critedge203.i ] ; 4 uses
  %.3130.ph.i = phi ptr [ %i.ko, %.critedge203.us.i ], [ %i.jq, %.critedge203.us.us.i ], [ %1, %bb.ae ], [ %.2129.i, %.critedge203.i ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !30
  %i.oc = sext i32 %i.ob to i64                   ; 6 uses
  %i.od = ptrtoint ptr %.4145.ph.i to i64         ; 4 uses
  %i.oe = sub i64 %.pre-phi.i, %i.od
  %i.of = icmp sgt i64 %i.oe, %i.oc
  %i.og = getelementptr inbounds i8, ptr %.4145.ph.i, i64 %i.oc
  %spec.select206342.i = select i1 %i.of, ptr %i.og, ptr %i.jh ; 3 uses
  %i.oh = ptrtoint ptr %spec.select206342.i to i64 ; 3 uses
  %i.oi = ptrtoint ptr %.3130.ph.i to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %.not187283328343.i = icmp slt i64 %i.oj, 1
  br i1 %.not187283328343.i, label %.outer._crit_edge.i, label %.lr.ph285.lr.ph.lr.ph.i

.lr.ph285.lr.ph.lr.ph.i:                          ; preds = %.preheader.i23
  %.not193.i = icmp eq ptr %.fr356.i, null
  br i1 %.not193.i, label %.lr.ph285.lr.ph.us.i, label %.lr.ph285.lr.ph.i

.lr.ph285.lr.ph.us.i:                             ; preds = %.lr.ph285.lr.ph.lr.ph.i, %.loopexit.split.us.us.i
  %4 = phi i64 [ %i.pr, %.loopexit.split.us.us.i ], [ %i.oh, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %spec.select206347.us.i = phi ptr [ %spec.select206.us.i, %.loopexit.split.us.us.i ], [ %spec.select206342.i, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %5 = phi i64 [ %i.pn, %.loopexit.split.us.us.i ], [ %i.od, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %.3130346.us.i.a = phi ptr [ %i.om, %.loopexit.split.us.us.i ], [ %.3130.ph.i, %.lr.ph285.lr.ph.lr.ph.i ]
  %.4145345.us.i = phi ptr [ %.2139220.us.us.i, %.loopexit.split.us.us.i ], [ %.4145.ph.i, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %.4156344.us.i = phi ptr [ %.7222.us.us.i, %.loopexit.split.us.us.i ], [ %.4156.ph.i, %.lr.ph285.lr.ph.lr.ph.i ]
  br label %.lr.ph285.us.us.i

.lr.ph285.us.us.i:                                ; preds = %.outer.us.us.i, %.lr.ph285.lr.ph.us.i
  %i.ok = phi i64 [ 1, %.lr.ph285.lr.ph.us.i ], [ %i.pm, %.outer.us.us.i ]
  %.4.ph330.us.us.i = phi ptr [ %.3130346.us.i.a, %.lr.ph285.lr.ph.us.i ], [ %i.om, %.outer.us.us.i ]
  %.5.ph329.us.us.i = phi ptr [ %.4156344.us.i, %.lr.ph285.lr.ph.us.i ], [ %.7222.us.us.i, %.outer.us.us.i ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.backedge.us.us.i, %.lr.ph285.us.us.i
  %i.ol = phi i64 [ %i.ok, %.lr.ph285.us.us.i ], [ %.3134.be.us.us.i, %.backedge.us.us.i ]
  %.4284.us.us.i = phi ptr [ %.4.ph330.us.us.i, %.lr.ph285.us.us.i ], [ %i.om, %.backedge.us.us.i ]
  %i.om = getelementptr inbounds i8, ptr %.4284.us.us.i, i64 %i.ol ; 8 uses
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 -1
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !34
  %i.op = zext i8 %i.oo to i64                    ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !34  ; 2 uses
  %i.os = zext i8 %i.or to i64
  %.not189.us.us.i = icmp eq i8 %i.or, 0
  br i1 %.not189.us.us.i, label %bb.am, label %.backedge.us.us.i

bb.am:                                            ; preds = %bb.al
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.op
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !33 ; 5 uses
  %.not190.us.us.i = icmp eq ptr %i.ou, null
  br i1 %.not190.us.us.i, label %.backedge.us.us.i, label %bb.an

.backedge.us.us.i:                                ; preds = %bb.am, %bb.al
  %.3134.be.us.us.i = phi i64 [ 1, %bb.am ], [ %i.os, %bb.al ] ; 2 uses
  %i.ov = ptrtoint ptr %i.om to i64
  %i.ow = sub i64 %4, %i.ov
  %.not187.us.us.i = icmp slt i64 %i.ow, %.3134.be.us.us.i
  br i1 %.not187.us.us.i, label %.outer._crit_edge.i, label %bb.al, !llvm.loop !76

bb.an:                                            ; preds = %bb.am
  %i.ox = getelementptr inbounds i8, ptr %i.om, i64 -1 ; 4 uses
  %i.oy = load i32, ptr %i.ou, align 8, !tbaa !28
  %.not191.us.us.i = icmp eq i32 %i.oy, 0
  %.not192.us.us.i = icmp ugt ptr %i.ox, %.4145345.us.i
  %or.cond207.us.us.i = or i1 %.not192.us.us.i, %.not191.us.us.i ; 2 uses
  %.6.us.us.i = select i1 %or.cond207.us.us.i, ptr %.5.ph329.us.us.i, ptr %i.ou ; 2 uses
  %.1138.us.us.i = select i1 %or.cond207.us.us.i, ptr null, ptr %i.ox ; 2 uses
  %i.oz = icmp ugt ptr %i.ox, %1
  br i1 %i.oz, label %.lr.ph316.us.us.i, label %.critedge208.us.us.i

.lr.ph316.us.us.i:                                ; preds = %bb.an, %.critedge2.us.us.us.i
  %.2139314.us.us.us.i = phi ptr [ %.3140.us.us.us.i, %.critedge2.us.us.us.i ], [ %.1138.us.us.i, %bb.an ] ; 3 uses
  %.2150313.us.us.us.i = phi ptr [ %i.pa, %.critedge2.us.us.us.i ], [ %i.ox, %bb.an ]
  %.7312.us.us.us.i = phi ptr [ %.8.us.us.us.i, %.critedge2.us.us.us.i ], [ %.6.us.us.i, %bb.an ] ; 3 uses
  %.1158311.us.us.us.i = phi ptr [ %i.ph, %.critedge2.us.us.us.i ], [ %i.ou, %bb.an ] ; 3 uses
  %i.pa = getelementptr inbounds i8, ptr %.2150313.us.us.us.i, i64 -1 ; 5 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !34  ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.1158311.us.us.us.i, i64 8
  %.2291.us.us.us.i = load ptr, ptr %i.pc, align 8, !tbaa !36 ; 2 uses
  %.not195292.us.us.us.i = icmp eq ptr %.2291.us.us.us.i, null
  br i1 %.not195292.us.us.us.i, label %.critedge208.us.us.i, label %.lr.ph295.us.us.us.i

.lr.ph295.us.us.us.i:                             ; preds = %.lr.ph316.us.us.i, %bb.ao
  %.2293.us.us.us.i = phi ptr [ %.2.us.us.us.i, %bb.ao ], [ %.2291.us.us.us.i, %.lr.ph316.us.us.i ] ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.2293.us.us.us.i, i64 24
  %i.pe = load i8, ptr %i.pd, align 8, !tbaa !38  ; 2 uses
  %.not196.us.us.us.i = icmp eq i8 %i.pb, %i.pe
  br i1 %.not196.us.us.us.i, label %.critedge2.us.us.us.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph295.us.us.us.i
  %i.pf = icmp ult i8 %i.pb, %i.pe
  %.3.in.idx.us.us.us.i = select i1 %i.pf, i64 0, i64 8
  %.3.in.us.us.us.i = getelementptr inbounds nuw i8, ptr %.2293.us.us.us.i, i64 %.3.in.idx.us.us.us.i
  %.2.us.us.us.i = load ptr, ptr %.3.in.us.us.us.i, align 8, !tbaa !36 ; 2 uses
  %.not195.us.us.us.i = icmp eq ptr %.2.us.us.us.i, null
  br i1 %.not195.us.us.us.i, label %.critedge208.us.us.i, label %.lr.ph295.us.us.us.i, !llvm.loop !77

.critedge2.us.us.us.i:                            ; preds = %.lr.ph295.us.us.us.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.2293.us.us.us.i, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !40 ; 4 uses
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !28
  %.not199.us.us.us.i = icmp eq i32 %i.pi, 0
  %.not200.us.us.us.i = icmp ugt ptr %i.pa, %.4145345.us.i
  %or.cond209.us.us.us.i = or i1 %.not200.us.us.us.i, %.not199.us.us.us.i ; 2 uses
  %.8.us.us.us.i = select i1 %or.cond209.us.us.us.i, ptr %.7312.us.us.us.i, ptr %i.ph ; 2 uses
  %.3140.us.us.us.i = select i1 %or.cond209.us.us.us.i, ptr %.2139314.us.us.us.i, ptr %i.pa ; 2 uses
  %i.pj = icmp ugt ptr %i.pa, %1
  br i1 %i.pj, label %.lr.ph316.us.us.i, label %.critedge208.us.us.i, !llvm.loop !78

.critedge208.us.us.i:                             ; preds = %.critedge2.us.us.us.i, %.lr.ph316.us.us.i, %bb.ao, %bb.an
  %.1158311.us.us.us.lcssa487.sink.i = phi ptr [ %i.ou, %bb.an ], [ %.1158311.us.us.us.i, %bb.ao ], [ %i.ph, %.critedge2.us.us.us.i ], [ %.1158311.us.us.us.i, %.lr.ph316.us.us.i ]
  %.7222.us.us.i = phi ptr [ %.6.us.us.i, %bb.an ], [ %.7312.us.us.us.i, %bb.ao ], [ %.8.us.us.us.i, %.critedge2.us.us.us.i ], [ %.7312.us.us.us.i, %.lr.ph316.us.us.i ] ; 4 uses
  %.2139220.us.us.i = phi ptr [ %.1138.us.us.i, %bb.an ], [ %.2139314.us.us.us.i, %bb.ao ], [ %.3140.us.us.us.i, %.critedge2.us.us.us.i ], [ %.2139314.us.us.us.i, %.lr.ph316.us.us.i ] ; 4 uses
  %.not197.us.us.i = icmp eq ptr %.2139220.us.us.i, null
  br i1 %.not197.us.us.i, label %.outer.us.us.i, label %.loopexit.split.us.us.i

.outer.us.us.i:                                   ; preds = %.critedge208.us.us.i
  %.4135.in.le309.us.us.i = getelementptr inbounds nuw i8, ptr %.1158311.us.us.us.lcssa487.sink.i, i64 44
  %.4135218.us.us.i = load i32, ptr %.4135.in.le309.us.us.i, align 4, !tbaa !43
  %spec.store.select.us.us.i = tail call i32 @llvm.umax.i32(i32 %.4135218.us.us.i, i32 1)
  %i.pk = ptrtoint ptr %i.om to i64
  %i.pl = sub i64 %4, %i.pk
  %i.pm = sext i32 %spec.store.select.us.us.i to i64 ; 2 uses
  %.not187283.us.us.i = icmp slt i64 %i.pl, %i.pm
  br i1 %.not187283.us.us.i, label %.outer._crit_edge.i, label %.lr.ph285.us.us.i, !llvm.loop !76

.loopexit.split.us.us.i:                          ; preds = %.critedge208.us.us.i
  %6 = ptrtoint ptr %spec.select206347.us.i to i64
  %i.pn = ptrtoint ptr %.2139220.us.us.i to i64   ; 3 uses
  %i.po = sub i64 %6, %i.pn
  %i.pp = icmp sgt i64 %i.po, %i.oc
  %i.pq = getelementptr inbounds i8, ptr %.2139220.us.us.i, i64 %i.oc
  %spec.select206.us.i = select i1 %i.pp, ptr %i.pq, ptr %spec.select206347.us.i ; 2 uses
  %i.pr = ptrtoint ptr %spec.select206.us.i to i64 ; 2 uses
  %i.ps = ptrtoint ptr %i.om to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %.not187283328.us.i = icmp slt i64 %i.pt, 1
  br i1 %.not187283328.us.i, label %.outer._crit_edge.i, label %.lr.ph285.lr.ph.us.i

.loopexit.split.i:                                ; preds = %.critedge208.i
  %7 = ptrtoint ptr %spec.select206347.i to i64
  %i.pu = ptrtoint ptr %.2139220.i to i64         ; 3 uses
  %i.pv = sub i64 %7, %i.pu
  %i.pw = icmp sgt i64 %i.pv, %i.oc
  %i.px = getelementptr inbounds i8, ptr %.2139220.i, i64 %i.oc
  %spec.select206.i = select i1 %i.pw, ptr %i.px, ptr %spec.select206347.i ; 2 uses
  %i.py = ptrtoint ptr %spec.select206.i to i64   ; 2 uses
  %i.pz = ptrtoint ptr %i.qd to i64
  %i.qa = sub i64 %i.py, %i.pz
  %.not187283328.i = icmp slt i64 %i.qa, 1
  br i1 %.not187283328.i, label %.outer._crit_edge.i, label %.lr.ph285.lr.ph.i

.lr.ph285.lr.ph.i:                                ; preds = %.lr.ph285.lr.ph.lr.ph.i, %.loopexit.split.i
  %8 = phi i64 [ %i.py, %.loopexit.split.i ], [ %i.oh, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %spec.select206347.i = phi ptr [ %spec.select206.i, %.loopexit.split.i ], [ %spec.select206342.i, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %9 = phi i64 [ %i.pu, %.loopexit.split.i ], [ %i.od, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %.3130346.i.a = phi ptr [ %i.qd, %.loopexit.split.i ], [ %.3130.ph.i, %.lr.ph285.lr.ph.lr.ph.i ]
  %.4145345.i = phi ptr [ %.2139220.i, %.loopexit.split.i ], [ %.4145.ph.i, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %.4156344.i = phi ptr [ %.7222.i, %.loopexit.split.i ], [ %.4156.ph.i, %.lr.ph285.lr.ph.lr.ph.i ]
  br label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %.outer.i, %.lr.ph285.lr.ph.i
  %i.qb = phi i64 [ 1, %.lr.ph285.lr.ph.i ], [ %i.rg, %.outer.i ]
  %.4.ph330.i = phi ptr [ %.3130346.i.a, %.lr.ph285.lr.ph.i ], [ %i.qd, %.outer.i ]
  %.5.ph329.i = phi ptr [ %.4156344.i, %.lr.ph285.lr.ph.i ], [ %.7222.i, %.outer.i ] ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.backedge.i24, %.lr.ph285.i
  %i.qc = phi i64 [ %i.qb, %.lr.ph285.i ], [ %.3134.be.i, %.backedge.i24 ]
  %.4284.i = phi ptr [ %.4.ph330.i, %.lr.ph285.i ], [ %i.qd, %.backedge.i24 ]
  %i.qd = getelementptr inbounds i8, ptr %.4284.i, i64 %i.qc ; 8 uses
  %i.qe = getelementptr inbounds i8, ptr %i.qd, i64 -1
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !34
  %i.qg = zext i8 %i.qf to i64                    ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !34  ; 2 uses
  %i.qj = zext i8 %i.qi to i64
  %.not189.i = icmp eq i8 %i.qi, 0
  br i1 %.not189.i, label %bb.aq, label %.backedge.i24

.backedge.i24:                                    ; preds = %bb.aq, %bb.ap
  %.3134.be.i = phi i64 [ 1, %bb.aq ], [ %i.qj, %bb.ap ] ; 2 uses
  %i.qk = ptrtoint ptr %i.qd to i64
  %i.ql = sub i64 %8, %i.qk
  %.not187.i = icmp slt i64 %i.ql, %.3134.be.i
  br i1 %.not187.i, label %.outer._crit_edge.i, label %bb.ap, !llvm.loop !76

bb.aq:                                            ; preds = %bb.ap
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.qg
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !33 ; 5 uses
  %.not190.i = icmp eq ptr %i.qn, null
  br i1 %.not190.i, label %.backedge.i24, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qo = getelementptr inbounds i8, ptr %i.qd, i64 -1 ; 4 uses
  %i.qp = load i32, ptr %i.qn, align 8, !tbaa !28
  %.not191.i = icmp eq i32 %i.qp, 0
  %.not192.i = icmp ugt ptr %i.qo, %.4145345.i
  %or.cond207.i = or i1 %.not192.i, %.not191.i    ; 2 uses
  %.6.i = select i1 %or.cond207.i, ptr %.5.ph329.i, ptr %i.qn ; 2 uses
  %.1138.i = select i1 %or.cond207.i, ptr null, ptr %i.qo ; 2 uses
  %i.qq = icmp ugt ptr %i.qo, %1
  br i1 %i.qq, label %.lr.ph316.i, label %.critedge208.i

.lr.ph316.i:                                      ; preds = %bb.ar, %.critedge2.i
  %.2139314.i = phi ptr [ %.3140.i, %.critedge2.i ], [ %.1138.i, %bb.ar ] ; 3 uses
  %.2150313.i = phi ptr [ %i.qr, %.critedge2.i ], [ %i.qo, %bb.ar ]
  %.7312.i = phi ptr [ %.8.i, %.critedge2.i ], [ %.6.i, %bb.ar ] ; 3 uses
  %.1158311.i = phi ptr [ %i.rb, %.critedge2.i ], [ %i.qn, %bb.ar ] ; 3 uses
  %i.qr = getelementptr inbounds i8, ptr %.2150313.i, i64 -1 ; 5 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !34
  %i.qt = zext i8 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %.fr356.i, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !34  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.1158311.i, i64 8
  %.2291.i = load ptr, ptr %i.qw, align 8, !tbaa !36 ; 2 uses
  %.not195292.i = icmp eq ptr %.2291.i, null
  br i1 %.not195292.i, label %.critedge208.i, label %.lr.ph295.i

.lr.ph295.i:                                      ; preds = %.lr.ph316.i, %bb.as
  %.2293.i = phi ptr [ %.2.i25, %bb.as ], [ %.2291.i, %.lr.ph316.i ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.2293.i, i64 24
  %i.qy = load i8, ptr %i.qx, align 8, !tbaa !38  ; 2 uses
  %.not196.i = icmp eq i8 %i.qv, %i.qy
  br i1 %.not196.i, label %.critedge2.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph295.i
  %i.qz = icmp ult i8 %i.qv, %i.qy
  %.3.in.idx.i = select i1 %i.qz, i64 0, i64 8
  %.3.in.i = getelementptr inbounds nuw i8, ptr %.2293.i, i64 %.3.in.idx.i
  %.2.i25 = load ptr, ptr %.3.in.i, align 8, !tbaa !36 ; 2 uses
  %.not195.i = icmp eq ptr %.2.i25, null
  br i1 %.not195.i, label %.critedge208.i, label %.lr.ph295.i, !llvm.loop !77

.critedge2.i:                                     ; preds = %.lr.ph295.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.2293.i, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !40 ; 4 uses
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !28
  %.not199.i = icmp eq i32 %i.rc, 0
  %.not200.i = icmp ugt ptr %i.qr, %.4145345.i
  %or.cond209.i = or i1 %.not200.i, %.not199.i    ; 2 uses
  %.8.i = select i1 %or.cond209.i, ptr %.7312.i, ptr %i.rb ; 2 uses
  %.3140.i = select i1 %or.cond209.i, ptr %.2139314.i, ptr %i.qr ; 2 uses
  %i.rd = icmp ugt ptr %i.qr, %1
  br i1 %i.rd, label %.lr.ph316.i, label %.critedge208.i, !llvm.loop !78

.critedge208.i:                                   ; preds = %.critedge2.i, %.lr.ph316.i, %bb.as, %bb.ar
  %.1158311.lcssa.sink.i = phi ptr [ %i.qn, %bb.ar ], [ %.1158311.i, %bb.as ], [ %.1158311.i, %.lr.ph316.i ], [ %i.rb, %.critedge2.i ]
  %.7222.i = phi ptr [ %.6.i, %bb.ar ], [ %.7312.i, %bb.as ], [ %.7312.i, %.lr.ph316.i ], [ %.8.i, %.critedge2.i ] ; 4 uses
  %.2139220.i = phi ptr [ %.1138.i, %bb.ar ], [ %.2139314.i, %bb.as ], [ %.2139314.i, %.lr.ph316.i ], [ %.3140.i, %.critedge2.i ] ; 4 uses
  %.not197.i = icmp eq ptr %.2139220.i, null
  br i1 %.not197.i, label %.outer.i, label %.loopexit.split.i

.outer.i:                                         ; preds = %.critedge208.i
  %.4135.in.le307.i = getelementptr inbounds nuw i8, ptr %.1158311.lcssa.sink.i, i64 44
  %.4135218.i = load i32, ptr %.4135.in.le307.i, align 4, !tbaa !43
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %.4135218.i, i32 1)
  %i.re = ptrtoint ptr %i.qd to i64
  %i.rf = sub i64 %8, %i.re
  %i.rg = sext i32 %spec.store.select.i to i64    ; 2 uses
  %.not187283.i = icmp slt i64 %i.rf, %i.rg
  br i1 %.not187283.i, label %.outer._crit_edge.i, label %.lr.ph285.i, !llvm.loop !76

.outer._crit_edge.i:                              ; preds = %.loopexit.split.i, %.outer.i, %.backedge.i24, %.loopexit.split.us.us.i, %.outer.us.us.i, %.backedge.us.us.i, %.preheader.i23
  %.lcssa224.i = phi i64 [ %5, %.backedge.us.us.i ], [ %5, %.outer.us.us.i ], [ %i.od, %.preheader.i23 ], [ %9, %.backedge.i24 ], [ %i.pn, %.loopexit.split.us.us.i ], [ %9, %.outer.i ], [ %i.pu, %.loopexit.split.i ] ; 2 uses
  %.5.ph.lcssa223.i = phi ptr [ %.5.ph329.us.us.i, %.backedge.us.us.i ], [ %.7222.us.us.i, %.outer.us.us.i ], [ %.4156.ph.i, %.preheader.i23 ], [ %.5.ph329.i, %.backedge.i24 ], [ %.7222.us.us.i, %.loopexit.split.us.us.i ], [ %.7222.i, %.outer.i ], [ %.7222.i, %.loopexit.split.i ] ; 2 uses
  %.not188.i = icmp eq ptr %3, null
  br i1 %.not188.i, label %.outer._crit_edge._crit_edge.i, label %bb.at

.outer._crit_edge._crit_edge.i:                   ; preds = %.outer._crit_edge.i
  %.pre436.i = ptrtoint ptr %1 to i64
  %.pre438.i = sub i64 %.lcssa224.i, %.pre436.i
  br label %cwexec.exit

bb.at:                                            ; preds = %.outer._crit_edge.i
  %i.rh = load i32, ptr %.5.ph.lcssa223.i, align 8, !tbaa !28
  %i.ri = lshr i32 %i.rh, 1
  store i32 %i.ri, ptr %3, align 8, !tbaa !80
  %i.rj = ptrtoint ptr %1 to i64
  %i.rk = sub i64 %.lcssa224.i, %i.rj             ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.rk, ptr %i.rl, align 8, !tbaa !81
  %i.rm = getelementptr inbounds nuw i8, ptr %.5.ph.lcssa223.i, i64 40
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !42
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ro, ptr %i.rp, align 8, !tbaa !81
  br label %cwexec.exit

cwexec.exit:                                      ; preds = %bb.af, %bb.ab, %bb.y, %.backedge.i, %.backedge.us.i, %.loopexit128.i, %bb.d, %bb.at, %.outer._crit_edge._crit_edge.i, %bb.v, %bmexec.exit, %bb.u
  %.0 = phi i64 [ -1, %bb.y ], [ %.0116.i, %bb.u ], [ %.0116.i, %bmexec.exit ], [ -1, %bb.v ], [ -1, %.backedge.i ], [ -1, %.backedge.us.i ], [ %i.rk, %bb.at ], [ %.pre438.i, %.outer._crit_edge._crit_edge.i ], [ -1, %bb.d ], [ -1, %.loopexit128.i ], [ -1, %bb.ab ], [ -1, %bb.af ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS14_obstack_chunk", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"obstack", !12, i64 0, !14, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !8, i64 40, !9, i64 48, !8, i64 56, !8, i64 64, !13, i64 72, !9, i64 80, !9, i64 80, !9, i64 80}
!17 = !{!"p1 _ZTS4trie", !13, i64 0}
!18 = !{!"kwset", !16, i64 0, !9, i64 88, !17, i64 96, !9, i64 104, !9, i64 108, !8, i64 112, !8, i64 368, !15, i64 2416, !9, i64 2424, !15, i64 2432}
!19 = !{!18, !9, i64 88}
!20 = !{!16, !15, i64 32}
!21 = !{!16, !15, i64 24}
!22 = !{!16, !15, i64 16}
!23 = !{!16, !9, i64 48}
!24 = !{!16, !14, i64 8}
!25 = !{!18, !17, i64 96}
!26 = !{!"p1 _ZTS4tree", !13, i64 0}
!27 = !{!"trie", !9, i64 0, !26, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !9, i64 40, !9, i64 44, !9, i64 48}
!28 = !{!27, !9, i64 0}
!29 = !{!18, !9, i64 104}
!30 = !{!18, !9, i64 108}
!31 = !{!18, !15, i64 2416}
!32 = !{!18, !15, i64 2432}
!33 = !{!17, !17, i64 0}
!34 = !{!8, !8, i64 0}
!35 = !{!27, !26, i64 8}
!36 = !{!26, !26, i64 0}
!37 = !{!"tree", !26, i64 0, !26, i64 8, !17, i64 16, !8, i64 24, !8, i64 25}
!38 = !{!37, !8, i64 24}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!37, !17, i64 16}
!41 = !{!27, !17, i64 16}
!42 = !{!27, !9, i64 40}
!43 = !{!27, !9, i64 44}
!44 = !{!37, !26, i64 0}
!45 = !{!37, !26, i64 8}
!46 = !{!18, !9, i64 2424}
!47 = !{!27, !17, i64 32}
!48 = !{!27, !17, i64 24}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = !{!9, !9, i64 0}
!53 = !{!37, !8, i64 25}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !63}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{}
!65 = !{!27, !9, i64 48}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !39}
!68 = distinct !{!68, !39}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !39}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !39}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
!79 = !{!"kwsmatch", !9, i64 0, !8, i64 8, !8, i64 16}
!80 = !{!79, !9, i64 0}
!81 = !{!12, !12, i64 0}
end_hunk_0
