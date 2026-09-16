Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_string?download=true
inline.NumInlined: 115
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@archive_string_normalize_D:bb.a
  %i.ky = zext i8 %i.kx to i32                    ; 3 uses
  %i.kz = icmp ne i8 %i.kx, 0
  %i.la = icmp samesign ult i64 %indvars.iv934, 10
  %or.cond5 = select i1 %i.kz, i1 %i.la, i1 false
  br i1 %or.cond5, label %bb.ar, label %.critedge.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.lb = zext nneg i32 %i.kc to i64              ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.2455692, i64 %i.lb ; 3 uses
  %i.ld = sub i64 %.2463691, %i.lb                ; 3 uses
  %.not780 = icmp eq i64 %indvars.iv934, 0
  br i1 %.not780, label %.critedge503, label %.lr.ph687

.lr.ph687:                                        ; preds = %bb.ar, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !112
  %i.lh = icmp sgt i32 %i.lg, %i.ky
  br i1 %i.lh, label %._crit_edge690, label %bb.as

bb.as:                                            ; preds = %.lr.ph687
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv934
  br i1 %exitcond.not, label %.critedge503, label %.lr.ph687, !llvm.loop !102

._crit_edge690:                                   ; preds = %.lr.ph687
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lj = sub nsw i64 %i.ke, %indvars.iv
  %i.lk = and i64 %i.lj, 4294967295               ; 2 uses
  %i.ll = mul nsw i64 %i.lk, -8                   ; 2 uses
  %scevgep930 = getelementptr i8, ptr %scevgep928, i64 %i.ll
  %scevgep932 = getelementptr i8, ptr %scevgep931, i64 %i.ll
  %i.lm = shl nuw nsw i64 %i.lk, 3
  %i.ln = add nuw nsw i64 %i.lm, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep930, ptr noundef nonnull align 8 dereferenceable(1) %scevgep932, i64 %i.ln, i1 false)
  store i32 %i.ky, ptr %i.li, align 4, !tbaa !112
  store i32 %i.kf, ptr %i.le, align 8, !tbaa !113
  br label %bb.at

.critedge503:                                     ; preds = %bb.as, %bb.ar
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv934 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.ky, ptr %i.lp, align 4, !tbaa !112
  store i32 %i.kf, ptr %i.lo, align 8, !tbaa !113
  br label %bb.at

bb.at:                                            ; preds = %.critedge503, %._crit_edge690
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1 ; 2 uses
  %i.lq = call i32 %.0400(ptr noundef nonnull %i.b, ptr noundef nonnull %i.lc, i64 noundef %i.ld) #23, !callees !53 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 0
  %indvar.next927 = add nuw nsw i64 %indvar926, 1
  br i1 %i.lr, label %.lr.ph695, label %.critedge.loopexit, !llvm.loop !103

.critedge.loopexit:                               ; preds = %.lr.ph695, %bb.at, %bb.aq
  %.2463.lcssa.ph = phi i64 [ %.2463691, %bb.aq ], [ %i.ld, %bb.at ], [ %.2463691, %.lr.ph695 ]
  %.2455.lcssa.ph = phi ptr [ %.2455692, %bb.aq ], [ %i.lc, %bb.at ], [ %.2455692, %.lr.ph695 ]
  %.1.lcssa.ph.in = phi i64 [ %indvars.iv934, %bb.aq ], [ %indvars.iv.next935, %bb.at ], [ %indvars.iv934, %.lr.ph695 ]
  %.lcssa553.ph = phi i32 [ %i.kc, %bb.aq ], [ %i.lq, %bb.at ], [ %i.kc, %.lr.ph695 ]
  %.1.lcssa.ph = trunc i64 %.1.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader539
  %.2463.lcssa = phi i64 [ %i.br, %.preheader539 ], [ %.2463.lcssa.ph, %.critedge.loopexit ] ; 5 uses
  %.2455.lcssa = phi ptr [ %i.bq, %.preheader539 ], [ %.2455.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %indvars9241159, %.preheader539 ], [ %.1.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.lcssa553 = phi i32 [ %i.iz, %.preheader539 ], [ %.lcssa553.ph, %.critedge.loopexit ] ; 4 uses
  %.not494 = icmp eq ptr %.131161, null
  br i1 %.not494, label %.preheader538, label %bb.au

.preheader538:                                    ; preds = %.critedge
  %i.ls = ptrtoint ptr %.1410733 to i64
  %i.lt = ptrtoint ptr %.1430732 to i64           ; 2 uses
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = load i32, ptr %i.a, align 4, !tbaa !25
  %i.lw = call i64 %.0399(ptr noundef %.1430732, i64 noundef %i.lu, i32 noundef %i.lv) #23, !callees !54 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %.lr.ph709, label %._crit_edge710

.lr.ph709:                                        ; preds = %.preheader538
  %i.ly = mul i64 %.2463.lcssa, %.0401
  %i.lz = add i64 %i.ly, %.0402
  br label %bb.bc

bb.au:                                            ; preds = %.critedge
  %i.ma = getelementptr inbounds nuw i8, ptr %.1430732, i64 %i.bp
  %i.mb = icmp ugt ptr %i.ma, %.1410733
  br i1 %i.mb, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.mc = load ptr, ptr %0, align 8, !tbaa !19
  %i.md = ptrtoint ptr %.1430732 to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  store i64 %i.mf, ptr %i.q, align 8, !tbaa !18
  %i.mg = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.mh = mul i64 %.2463.lcssa, %.0401
  %i.mi = add i64 %i.mh, %.0402
  %i.mj = add i64 %i.mi, %i.mg
  %i.mk = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.mj)
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %.thread516, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mm = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.mn = load i64, ptr %i.q, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn
  %i.mp = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.ac
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.32 = phi ptr [ %i.mo, %bb.aw ], [ %.1430732, %bb.au ] ; 6 uses
  %.16425 = phi ptr [ %i.mr, %bb.aw ], [ %.1410733, %bb.au ] ; 2 uses
  switch i32 %.0407734, label %bb.be [
    i32 4, label %bb.ay
    i32 3, label %bb.az
    i32 2, label %bb.ba
    i32 1, label %bb.bb
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ms = getelementptr inbounds nuw i8, ptr %.131161, i64 1
  %i.mt = load i8, ptr %.131161, align 1, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %.32, i64 1
  store i8 %i.mt, ptr %.32, align 1, !tbaa !20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.33 = phi ptr [ %i.mu, %bb.ay ], [ %.32, %bb.ax ] ; 2 uses
  %.14 = phi ptr [ %i.ms, %bb.ay ], [ %.131161, %bb.ax ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.mw = load i8, ptr %.14, align 1, !tbaa !20
  %i.mx = getelementptr inbounds nuw i8, ptr %.33, i64 1
  store i8 %i.mw, ptr %.33, align 1, !tbaa !20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.34 = phi ptr [ %i.mx, %bb.az ], [ %.32, %bb.ax ] ; 2 uses
  %.15 = phi ptr [ %i.mv, %bb.az ], [ %.131161, %bb.ax ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.15, i64 1
  %i.mz = load i8, ptr %.15, align 1, !tbaa !20
  %i.na = getelementptr inbounds nuw i8, ptr %.34, i64 1
  store i8 %i.mz, ptr %.34, align 1, !tbaa !20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.35 = phi ptr [ %i.na, %bb.ba ], [ %.32, %bb.ax ] ; 2 uses
  %.16 = phi ptr [ %i.my, %bb.ba ], [ %.131161, %bb.ax ]
  %i.nb = load i8, ptr %.16, align 1, !tbaa !20
  %i.nc = getelementptr inbounds nuw i8, ptr %.35, i64 1
  store i8 %i.nb, ptr %.35, align 1, !tbaa !20
  br label %bb.be

bb.bc:                                            ; preds = %.lr.ph709, %bb.bd
  %i.nd = phi i64 [ %i.lt, %.lr.ph709 ], [ %i.nq, %bb.bd ]
  %i.ne = load ptr, ptr %0, align 8, !tbaa !19
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = sub i64 %i.nd, %i.nf
  store i64 %i.ng, ptr %i.q, align 8, !tbaa !18
  %i.nh = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ni = add i64 %i.lz, %i.nh
  %i.nj = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.ni)
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %.thread516, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nl = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.nm = load i64, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm ; 3 uses
  %i.no = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.np = sub nsw i64 %i.no, %.0402               ; 2 uses
  %i.nq = ptrtoint ptr %i.nn to i64
  %gepdiff781 = sub nsw i64 %i.np, %i.nm
  %i.nr = load i32, ptr %i.a, align 4, !tbaa !25
  %i.ns = call i64 %.0399(ptr noundef %i.nn, i64 noundef %gepdiff781, i32 noundef %i.nr) #23, !callees !54 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %bb.bc, label %._crit_edge710.loopexit, !llvm.loop !104

._crit_edge710.loopexit:                          ; preds = %bb.bd
  %i.nu = getelementptr inbounds i8, ptr %i.nl, i64 %i.np
  br label %._crit_edge710

._crit_edge710:                                   ; preds = %._crit_edge710.loopexit, %.preheader538
  %.37.lcssa = phi ptr [ %.1430732, %.preheader538 ], [ %i.nn, %._crit_edge710.loopexit ]
  %.17426.lcssa = phi ptr [ %.1410733, %.preheader538 ], [ %i.nu, %._crit_edge710.loopexit ]
  %.lcssa554 = phi i64 [ %i.lw, %.preheader538 ], [ %i.ns, %._crit_edge710.loopexit ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.37.lcssa, i64 %.lcssa554
  br label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.bb, %._crit_edge710
  %.38 = phi ptr [ %i.nv, %._crit_edge710 ], [ %.32, %bb.ax ], [ %i.nc, %bb.bb ] ; 2 uses
  %.18427 = phi ptr [ %.17426.lcssa, %._crit_edge710 ], [ %.16425, %bb.ax ], [ %.16425, %bb.bb ] ; 2 uses
  %.not782 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not782, label %._crit_edge725, label %.lr.ph724

.lr.ph724:                                        ; preds = %bb.be
  %i.nw = mul i64 %.2463.lcssa, %.0401
  %i.nx = add i64 %i.nw, %.0402
  %smax = call i32 @llvm.smax.i32(i32 %.1.lcssa, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph724, %._crit_edge716
  %indvars.iv940 = phi i64 [ 0, %.lr.ph724 ], [ %indvars.iv.next941, %._crit_edge716 ] ; 2 uses
  %.19428721 = phi ptr [ %.18427, %.lr.ph724 ], [ %.21.lcssa, %._crit_edge716 ] ; 2 uses
  %.39720 = phi ptr [ %.38, %.lr.ph724 ], [ %i.pe, %._crit_edge716 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv940
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !113 ; 2 uses
  store i32 %i.nz, ptr %i.a, align 4, !tbaa !25
  %i.oa = ptrtoint ptr %.19428721 to i64
  %i.ob = ptrtoint ptr %.39720 to i64             ; 2 uses
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = call i64 %.0399(ptr noundef %.39720, i64 noundef %i.oc, i32 noundef %i.nz) #23, !callees !54 ; 2 uses
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %.lr.ph715, label %._crit_edge716

.lr.ph715:                                        ; preds = %bb.bf, %archive_string_ensure.exit
  %i.of = phi i64 [ %i.oz, %archive_string_ensure.exit ], [ %i.ob, %bb.bf ]
  %i.og = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.of, %i.oh                    ; 2 uses
  store i64 %i.oi, ptr %i.q, align 8, !tbaa !18
  %i.oj = load i64, ptr %i.aa, align 8, !tbaa !26 ; 9 uses
  %i.ok = add i64 %i.nx, %i.oj                    ; 2 uses
  %.not.i505 = icmp eq ptr %i.og, null
  %.not30.i = icmp ugt i64 %i.ok, %i.oj
  %or.cond.i506 = select i1 %.not.i505, i1 true, i1 %.not30.i
  br i1 %or.cond.i506, label %._crit_edge.i, label %archive_string_ensure.exit

._crit_edge.i:                                    ; preds = %.lr.ph715
  %i.ol = icmp ult i64 %i.oj, 32
  br i1 %i.ol, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i
  %i.om = icmp ult i64 %i.oj, 8192
  br i1 %i.om, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.on = shl nuw nsw i64 %i.oj, 1
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.oo = lshr i64 %i.oj, 2
  %i.op = add i64 %i.oo, %i.oj                    ; 2 uses
  %i.oq = icmp ult i64 %i.op, %i.oj
  br i1 %i.oq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %.thread516.sink.split

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i
  %.0.i = phi i64 [ %i.op, %bb.bi ], [ %i.on, %bb.bh ], [ 32, %._crit_edge.i ]
  %spec.select.i = call i64 @llvm.umax.i64(i64 %.0.i, i64 %i.ok) ; 3 uses
  %i.or = call ptr @realloc(ptr noundef %i.og, i64 noundef %spec.select.i) #25 ; 3 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.ot = load ptr, ptr %0, align 8, !tbaa !19
  br label %.thread516.sink.split

bb.bm:                                            ; preds = %bb.bk
  store ptr %i.or, ptr %0, align 8, !tbaa !19
  store i64 %spec.select.i, ptr %i.aa, align 8, !tbaa !26
  %.pre945 = load i64, ptr %i.q, align 8, !tbaa !18
  br label %archive_string_ensure.exit

archive_string_ensure.exit:                       ; preds = %bb.bm, %.lr.ph715
  %i.ou = phi i64 [ %spec.select.i, %bb.bm ], [ %i.oj, %.lr.ph715 ]
  %i.ov = phi i64 [ %.pre945, %bb.bm ], [ %i.oi, %.lr.ph715 ] ; 2 uses
  %i.ow = phi ptr [ %i.or, %bb.bm ], [ %i.og, %.lr.ph715 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov ; 3 uses
  %i.oy = sub nsw i64 %i.ou, %.0402               ; 2 uses
  %i.oz = ptrtoint ptr %i.ox to i64
  %gepdiff783 = sub nsw i64 %i.oy, %i.ov
  %i.pa = load i32, ptr %i.a, align 4, !tbaa !25
  %i.pb = call i64 %.0399(ptr noundef %i.ox, i64 noundef %gepdiff783, i32 noundef %i.pa) #23, !callees !54 ; 2 uses
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %.lr.ph715, label %._crit_edge716.loopexit, !llvm.loop !105

._crit_edge716.loopexit:                          ; preds = %archive_string_ensure.exit
  %i.pd = getelementptr inbounds i8, ptr %i.ow, i64 %i.oy
  br label %._crit_edge716

._crit_edge716:                                   ; preds = %._crit_edge716.loopexit, %bb.bf
  %.45.lcssa = phi ptr [ %.39720, %bb.bf ], [ %i.ox, %._crit_edge716.loopexit ]
  %.21.lcssa = phi ptr [ %.19428721, %bb.bf ], [ %i.pd, %._crit_edge716.loopexit ] ; 2 uses
  %.lcssa558 = phi i64 [ %i.od, %bb.bf ], [ %i.pb, %._crit_edge716.loopexit ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.45.lcssa, i64 %.lcssa558 ; 2 uses
  %indvars.iv.next941 = add nuw nsw i64 %indvars.iv940, 1 ; 2 uses
  %exitcond944.not = icmp eq i64 %indvars.iv.next941, %wide.trip.count
  br i1 %exitcond944.not, label %._crit_edge725, label %bb.bf, !llvm.loop !106

._crit_edge725:                                   ; preds = %._crit_edge716, %bb.be
  %.39.lcssa = phi ptr [ %.38, %bb.be ], [ %i.pe, %._crit_edge716 ] ; 3 uses
  %.19428.lcssa = phi ptr [ %.18427, %bb.be ], [ %.21.lcssa, %._crit_edge716 ] ; 2 uses
  %i.pf = icmp eq i32 %.lcssa553, 0
  br i1 %i.pf, label %.thread523, label %bb.bn

.thread523:                                       ; preds = %._crit_edge725
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.bn:                                            ; preds = %._crit_edge725
  %i.pg = load i32, ptr %i.b, align 4, !tbaa !25  ; 3 uses
  store i32 %i.pg, ptr %i.a, align 4, !tbaa !25
  %i.ph = icmp slt i32 %.lcssa553, 0
  br i1 %i.ph, label %.preheader540, label %.lr.ph736

.thread516.sink.split:                            ; preds = %bb.bl, %bb.bj
  %.lcssa1011.sink = phi ptr [ %i.og, %bb.bj ], [ %i.ot, %bb.bl ]
  call void @free(ptr noundef %.lcssa1011.sink) #23
  store ptr null, ptr %0, align 8, !tbaa !19
  %i.pi = tail call ptr @__errno_location() #24
  store i32 12, ptr %i.pi, align 4, !tbaa !25
  br label %.thread516

.thread516:                                       ; preds = %bb.ad, %bb.av, %bb.ak, %bb.r, %bb.t, %bb.w, %bb.o, %bb.bc, %.thread516.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bq

bb.bo:                                            ; preds = %._crit_edge743, %bb.aj, %bb.af, %._crit_edge761, %._crit_edge755, %._crit_edge766
  %.3464 = phi i64 [ %i.br, %._crit_edge743 ], [ %i.bn, %._crit_edge766 ], [ %i.br, %bb.af ], [ %i.br, %._crit_edge755 ], [ %i.br, %._crit_edge761 ], [ %i.br, %bb.aj ] ; 2 uses
  %.3456 = phi ptr [ %i.bq, %._crit_edge743 ], [ %i.bm, %._crit_edge766 ], [ %i.bq, %bb.af ], [ %i.bq, %._crit_edge755 ], [ %i.bq, %._crit_edge761 ], [ %i.bq, %bb.aj ] ; 2 uses
  %.47 = phi ptr [ %i.hy, %._crit_edge743 ], [ %i.bj, %._crit_edge766 ], [ %.25, %bb.af ], [ %i.dz, %._crit_edge755 ], [ %i.ez, %._crit_edge761 ], [ %i.hf, %bb.aj ] ; 2 uses
  %.23 = phi ptr [ %.14423.lcssa, %._crit_edge743 ], [ %.2411.lcssa, %._crit_edge766 ], [ %.13422, %bb.af ], [ %.7416.lcssa, %._crit_edge755 ], [ %.10419.lcssa, %._crit_edge761 ], [ %.13422, %bb.aj ]
  %.1405 = phi i32 [ %.0404775, %._crit_edge743 ], [ -1, %._crit_edge766 ], [ %.0404775, %bb.af ], [ %.0404775, %._crit_edge755 ], [ %.0404775, %._crit_edge761 ], [ %.0404775, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.pj = call i32 %.0400(ptr noundef nonnull %i.a, ptr noundef %.3456, i64 noundef %.3464) #23, !callees !53 ; 2 uses
  %.not491 = icmp eq i32 %i.pj, 0
  br i1 %.not491, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %bb.bo, %bb.m, %.thread523
  %.0404671 = phi i32 [ %.0404775, %.thread523 ], [ 0, %bb.m ], [ %.1405, %bb.bo ] ; 2 uses
  %.48 = phi ptr [ %.39.lcssa, %.thread523 ], [ %i.z, %bb.m ], [ %.47, %bb.bo ]
  %i.pk = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.pl = ptrtoint ptr %.48 to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm                    ; 2 uses
  store i64 %i.pn, ptr %i.q, align 8, !tbaa !18
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pn
  store i8 0, ptr %i.po, align 1, !tbaa !20
  br i1 %i.n, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.loopexit
  %i.pp = load ptr, ptr %0, align 8, !tbaa !19
  %i.pq = load i64, ptr %i.q, align 8, !tbaa !18
  %i.pr = getelementptr i8, ptr %i.pp, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 1
  store i8 0, ptr %i.ps, align 1, !tbaa !20
  br label %bb.bq

bb.bq:                                            ; preds = %.thread516, %.loopexit, %bb.bp, %bb.l
  %.3460 = phi i32 [ -1, %bb.l ], [ -1, %.thread516 ], [ %.0404671, %bb.bp ], [ %.0404671, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.3460
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @archive_string_normalize_C(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 21 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca [10 x i32], align 16              ; 28 uses
  %i.d = alloca [10 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 10 uses
  %i.g = and i32 %i.f, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2048
  %.not793 = icmp eq i32 %i.h, 0
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 4096
  %.not787 = icmp eq i32 %i.i, 0
  br i1 %.not787, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.f, 8192
  %.not792 = icmp eq i32 %i.j, 0
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = and i32 %i.f, 256
  %.not788 = icmp eq i32 %i.k, 0
  br i1 %.not788, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.f, 512
  %.not791 = icmp eq i32 %i.l, 0
  br label %bb.i
end_hunk_0
begin_hunk_1_@utf16be_to_unicode:bb.a

.thread57.i:                                      ; preds = %bb.e
  %i.k = shl nuw i16 %i.i, 8
  %i.l = getelementptr i8, ptr %1, i64 3
  %.val46.i = load i8, ptr %i.l, align 1, !tbaa !20
  %i.m = zext i8 %.val46.i to i16
  %i.n = or disjoint i16 %i.k, %i.m
  %.0.i = zext i16 %i.n to i32
  %i.o = shl nuw nsw i32 %.039.i, 10
  %i.p = add nsw i32 %i.o, -56613888
  %i.q = add nuw nsw i32 %i.p, %.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.f

.thread.i:                                        ; preds = %bb.e, %bb.d
  store i32 65533, ptr %0, align 4, !tbaa !25
  br label %utf16_to_unicode.exit

bb.f:                                             ; preds = %.thread57.i, %bb.c
  %.141.i = phi ptr [ %i.r, %.thread57.i ], [ %i.f, %bb.c ]
  %.2.i = phi i32 [ %i.q, %.thread57.i ], [ %.039.i, %bb.c ] ; 2 uses
  %i.s = and i32 %.2.i, -2048
  %or.cond5.i = icmp eq i32 %i.s, 55296
  %i.t = ptrtoint ptr %.141.i to i64              ; 2 uses
  %i.u = ptrtoint ptr %1 to i64                   ; 2 uses
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 65533, ptr %0, align 4, !tbaa !25
  %.neg.i = sub i64 %i.u, %i.t
  %.neg45.i = trunc i64 %.neg.i to i32
  br label %utf16_to_unicode.exit

bb.h:                                             ; preds = %bb.f
  store i32 %.2.i, ptr %0, align 4, !tbaa !25
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  br label %utf16_to_unicode.exit

utf16_to_unicode.exit:                            ; preds = %bb.a, %bb.b, %.thread.i, %bb.g, %bb.h
  %.143.i = phi i32 [ -2, %.thread.i ], [ -1, %bb.b ], [ %.neg45.i, %bb.g ], [ %i.w, %bb.h ], [ 0, %bb.a ]
  ret i32 %.143.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @utf16le_to_unicode(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  switch i64 %2, label %bb.c [
    i64 0, label %utf16_to_unicode.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i32 65533, ptr %0, align 4, !tbaa !25
  br label %utf16_to_unicode.exit

bb.c:                                             ; preds = %bb.a
  %.val51.i = load i16, ptr %1, align 1           ; 2 uses
  %.039.i = zext i16 %.val51.i to i32             ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.b = and i16 %.val51.i, -1024
  %or.cond.i = icmp eq i16 %i.b, -10240
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 3
  br i1 %i.c, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %.val49.i = load i16, ptr %i.a, align 1         ; 2 uses
  %i.d = and i16 %.val49.i, -1024
  %or.cond3.i = icmp eq i16 %i.d, -9216
  br i1 %or.cond3.i, label %.thread57.i, label %.thread.i

.thread57.i:                                      ; preds = %bb.e
  %.0.i = zext i16 %.val49.i to i32
  %i.e = shl nuw nsw i32 %.039.i, 10
  %i.f = add nsw i32 %i.e, -56613888
  %i.g = add nuw nsw i32 %i.f, %.0.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.f

.thread.i:                                        ; preds = %bb.e, %bb.d
  store i32 65533, ptr %0, align 4, !tbaa !25
  br label %utf16_to_unicode.exit

bb.f:                                             ; preds = %.thread57.i, %bb.c
  %.141.i = phi ptr [ %i.h, %.thread57.i ], [ %i.a, %bb.c ]
  %.2.i = phi i32 [ %i.g, %.thread57.i ], [ %.039.i, %bb.c ] ; 2 uses
  %i.i = and i32 %.2.i, -2048
  %or.cond5.i = icmp eq i32 %i.i, 55296
  %i.j = ptrtoint ptr %.141.i to i64              ; 2 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 65533, ptr %0, align 4, !tbaa !25
  %.neg.i = sub i64 %i.k, %i.j
  %.neg45.i = trunc i64 %.neg.i to i32
  br label %utf16_to_unicode.exit

bb.h:                                             ; preds = %bb.f
  store i32 %.2.i, ptr %0, align 4, !tbaa !25
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  br label %utf16_to_unicode.exit

utf16_to_unicode.exit:                            ; preds = %bb.a, %bb.b, %.thread.i, %bb.g, %bb.h
  %.143.i = phi i32 [ -2, %.thread.i ], [ -1, %bb.b ], [ %.neg45.i, %bb.g ], [ %i.m, %bb.h ], [ 0, %bb.a ]
  ret i32 %.143.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @cesu8_to_unicode(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.c = call fastcc i32 @_utf8_to_unicode(ptr noundef %i.a, ptr noundef %1, i64 noundef %2) ; 2 uses
  %i.d = icmp eq i32 %i.c, 3                      ; 2 uses
  %i.e = load i32, ptr %i.a, align 4              ; 3 uses
  %i.f = and i32 %i.e, -1024                      ; 2 uses
  %i.g = icmp eq i32 %i.f, 55296
  %or.cond3 = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !25
  %i.h = add i64 %2, -3                           ; 2 uses
  %i.i = icmp ult i64 %i.h, 3
  br i1 %i.i, label %.thread37, label %bb.c

.thread37:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store i32 65533, ptr %0, align 4, !tbaa !25
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = call fastcc i32 @_utf8_to_unicode(ptr noundef %i.b, ptr noundef nonnull %i.j, i64 noundef %i.h)
  %.fr = freeze i32 %i.k                          ; 2 uses
  %i.l = icmp eq i32 %.fr, 3
  %i.m = load i32, ptr %i.b, align 4              ; 2 uses
  %i.n = and i32 %i.m, -1024
  %i.o = icmp eq i32 %i.n, 56320
  %or.cond7 = select i1 %i.l, i1 %i.o, i1 false
  br i1 %or.cond7, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw nsw i32 %i.e, 10
  %i.q = add nsw i32 %i.p, -56613888
  %i.r = add nuw nsw i32 %i.q, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.f, 56320
  %or.cond11 = select i1 %i.d, i1 %i.s, i1 false
  br i1 %or.cond11, label %.thread34, label %bb.f

.thread34:                                        ; preds = %bb.e
  store i32 65533, ptr %0, align 4, !tbaa !25
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi i32 [ %i.r, %bb.d ], [ %i.e, %bb.e ]
  %.1 = phi i32 [ 6, %bb.d ], [ %i.c, %bb.e ]
  store i32 %i.t, ptr %0, align 4, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store i32 65533, ptr %0, align 4, !tbaa !25
  %i.u = tail call i32 @llvm.abs.i32(i32 %.fr, i1 false)
  %spec.select = sub i32 0, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread37, %.thread34, %bb.f
  %.027 = phi i32 [ %.1, %bb.f ], [ %spec.select, %bb.g ], [ -3, %.thread34 ], [ -3, %.thread37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.027
}

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"archive_string", !15, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !15, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!"p1 int", !14, i64 0}
!22 = !{!"archive_wstring", !21, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!22, !21, i64 0}
!24 = !{!22, !16, i64 8}
!25 = !{!11, !11, i64 0}
!26 = !{!17, !16, i64 16}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"p1 _ZTS14archive_vtable", !14, i64 0}
!29 = !{!"p1 _ZTS19archive_string_conv", !14, i64 0}
!30 = !{!"archive", !11, i64 0, !11, i64 4, !28, i64 8, !11, i64 16, !15, i64 24, !11, i64 32, !11, i64 36, !15, i64 40, !17, i64 48, !15, i64 72, !11, i64 80, !11, i64 84, !29, i64 88, !15, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !10, i64 128, !16, i64 136}
!31 = !{!30, !15, i64 72}
!32 = !{!30, !11, i64 80}
!33 = !{!30, !11, i64 84}
!34 = !{!"archive_string_conv", !29, i64 0, !15, i64 8, !15, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !14, i64 40, !14, i64 48, !17, i64 56, !10, i64 80, !11, i64 96}
!35 = !{!34, !15, i64 8}
!36 = !{!34, !15, i64 16}
!37 = !{!34, !11, i64 32}
!38 = !{!34, !14, i64 48}
!39 = !{!34, !14, i64 40}
!40 = !{!34, !11, i64 36}
!41 = !{!34, !11, i64 96}
!42 = !{!15, !15, i64 0}
!43 = !{!14, !14, i64 0}
!44 = !{!"archive_mstring", !17, i64 0, !17, i64 24, !22, i64 48, !17, i64 72, !11, i64 96}
!45 = !{!44, !11, i64 96}
!46 = !{!44, !16, i64 8}
!47 = !{!44, !16, i64 32}
!48 = !{!44, !16, i64 56}
!49 = !{!44, !15, i64 0}
!50 = !{!44, !15, i64 24}
!51 = !{!44, !21, i64 48}
!52 = !{!16, !16, i64 0}
!53 = !{ptr @cesu8_to_unicode, ptr @utf16be_to_unicode, ptr @utf16le_to_unicode}
!54 = !{ptr @unicode_to_utf16be, ptr @unicode_to_utf16le, ptr @unicode_to_utf8}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = !{!29, !29, i64 0}
!61 = !{!34, !11, i64 24}
!62 = !{!34, !11, i64 28}
!63 = distinct !{!63, !27}
!64 = !{!30, !29, i64 88}
!65 = !{!34, !29, i64 0}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !27}
!68 = !{!34, !16, i64 64}
!69 = !{!34, !15, i64 56}
!70 = distinct !{!70, !27}
!71 = distinct !{!71, !27}
!72 = distinct !{!72, !27}
!73 = !{!21, !21, i64 0}
!74 = !{!44, !15, i64 72}
!75 = !{!44, !16, i64 80}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !27}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !27, !55, !56}
!84 = distinct !{!84, !27, !55}
!85 = !{!81}
!86 = !{!82}
!87 = distinct !{!87, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !27, !55, !56}
!91 = distinct !{!91, !27, !55}
!92 = !{!88}
!93 = !{!89}
!94 = distinct !{!94, !27}
!95 = distinct !{!95, !27}
!96 = distinct !{!96, !27}
!97 = distinct !{!97, !27}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !27}
!103 = distinct !{!103, !27}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = distinct !{!106, !27}
!107 = !{!"unicode_decomposition_table", !11, i64 0, !11, i64 4, !11, i64 8}
!108 = !{!107, !11, i64 0}
!109 = !{!107, !11, i64 4}
!110 = !{!107, !11, i64 8}
!111 = !{!"", !11, i64 0, !11, i64 4}
!112 = !{!111, !11, i64 4}
!113 = !{!111, !11, i64 0}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !27}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !27}
!118 = distinct !{!118, !27}
!119 = distinct !{!119, !27}
!120 = distinct !{!120, !27}
!121 = distinct !{!121, !27}
!122 = distinct !{!122, !27}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !27}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, !27}
!130 = distinct !{!130, !27}
!131 = distinct !{!131, !27}
!132 = distinct !{!132, !27}
!133 = !{!"unicode_composition_table", !11, i64 0, !11, i64 4, !11, i64 8}
!134 = !{!133, !11, i64 0}
!135 = !{!133, !11, i64 4}
!136 = !{!133, !11, i64 8}
!137 = distinct !{!137, !27}
!138 = distinct !{!138, !27}
end_hunk_1
