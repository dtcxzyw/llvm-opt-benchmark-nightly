inline.NumInlined: 127
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hwloc__xml_export_object_contents:bb.a
  br i1 %or.cond.i386, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i383
  switch i8 %i.mb, label %bb.bd [
    i8 9, label %bb.bc
    i8 10, label %bb.bc
    i8 13, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %.lr.ph.i383
  %i.md = getelementptr inbounds nuw i8, ptr %.01625.i385, i64 1
  store i8 %i.mb, ptr %.01625.i385, align 1, !tbaa !36
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1.i387 = phi ptr [ %i.md, %bb.bc ], [ %.01625.i385, %bb.bb ] ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.026.i384, i64 1 ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !36  ; 2 uses
  %.not22.i388 = icmp eq i8 %i.mf, 0
  br i1 %.not22.i388, label %hwloc__xml_export_safestrdup.exit391.thread398, label %.lr.ph.i383, !llvm.loop !165

hwloc__xml_export_safestrdup.exit391.thread398:   ; preds = %bb.bd, %.preheader.i381
  %.1.i387.lcssa.sink = phi ptr [ %i.lz, %.preheader.i381 ], [ %.1.i387, %bb.bd ]
  store i8 0, ptr %.1.i387.lcssa.sink, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.mg = load i32, ptr %2, align 8, !tbaa !50
  %i.mh = icmp eq i32 %i.mg, 16
  br i1 %i.mh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %hwloc__xml_export_safestrdup.exit391.thread398
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !180
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !36
  %i.ml = icmp eq i32 %i.mk, 5
  %i.mm = select i1 %i.ml, ptr @.str.76, ptr @.str.77
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %hwloc__xml_export_safestrdup.exit391.thread398
  %i.mn = phi ptr [ @.str.77, %hwloc__xml_export_safestrdup.exit391.thread398 ], [ %i.mm, %bb.be ]
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !56
  call void %i.mp(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.74) #26
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !95
  call void %i.mr(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.mn) #26
  %i.ms = load ptr, ptr %i.mq, align 8, !tbaa !95
  call void %i.ms(ptr noundef nonnull %6, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.lz) #26
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !63
  call void %i.mu(ptr noundef nonnull %6, ptr noundef nonnull @.str.74) #26
  call void @free(ptr noundef nonnull %i.lz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %hwloc__xml_export_safestrdup.exit391.thread

hwloc__xml_export_safestrdup.exit391.thread:      ; preds = %bb.ba, %bb.az, %bb.bf
  %i.mv = load i32, ptr %2, align 8, !tbaa !50
  %i.mw = icmp eq i32 %i.mv, 19
  br i1 %i.mw, label %bb.bg, label %.critedge341

bb.bg:                                            ; preds = %hwloc__xml_export_safestrdup.exit391.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !56
  call void %i.my(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull @.str.74) #26
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !95
  call void %i.na(ptr noundef nonnull %7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.77) #26
  %i.nb = load ptr, ptr %i.mz, align 8, !tbaa !95
  call void %i.nb(ptr noundef nonnull %7, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.78) #26
  %i.nc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !63
  call void %i.nd(ptr noundef nonnull %7, ptr noundef nonnull @.str.74) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge341

.critedge341:                                     ; preds = %hwloc__xml_export_safestrdup.exit391.thread, %bb.bg
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !54
  %.not319 = icmp eq ptr %i.nf, null
  br i1 %.not319, label %bb.bh, label %.critedge342

bb.bh:                                            ; preds = %.critedge341
  call void @hwloc_internal_distances_refresh(ptr noundef %1) #26
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 704
  %.0279432 = load ptr, ptr %i.ng, align 8, !tbaa !65 ; 2 uses
  %.not320433 = icmp eq ptr %.0279432, null
  br i1 %.not320433, label %.critedge342, label %.lr.ph436

.lr.ph436:                                        ; preds = %bb.bh
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph436, %bb.bx
  %.0279434 = phi ptr [ %.0279432, %.lr.ph436 ], [ %.0279, %bb.bx ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.nn = getelementptr inbounds nuw i8, ptr %.0279434, i64 24
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !188 ; 8 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0279434, i64 12 ; 3 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !189
  %i.nr = call i32 @hwloc_get_type_depth(ptr noundef %1, i32 noundef %i.nq) #26 ; 2 uses
  switch i32 %i.nr, label %bb.bk [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit
    i32 -2, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  br label %hwloc_get_nbobjs_by_type.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ns = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %1, i32 noundef %i.nr) #27
  br label %hwloc_get_nbobjs_by_type.exit

hwloc_get_nbobjs_by_type.exit:                    ; preds = %bb.bi, %bb.bj, %bb.bk
  %.0.i = phi i32 [ %i.ns, %bb.bk ], [ -1, %bb.bj ], [ 0, %bb.bi ]
  %.not321 = icmp eq i32 %i.no, %.0.i
  br i1 %.not321, label %bb.bl, label %bb.bx

bb.bl:                                            ; preds = %hwloc_get_nbobjs_by_type.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %.0279434, i64 48
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !190
  %i.nv = and i64 %i.nu, 20
  %or.cond343 = icmp eq i64 %i.nv, 4
  br i1 %or.cond343, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  %i.nw = zext i32 %i.no to i64                   ; 8 uses
  %i.nx = shl nuw nsw i64 %i.nw, 2
  %i.ny = call noalias ptr @malloc(i64 noundef %i.nx) #29 ; 9 uses
  %.not324 = icmp eq ptr %i.ny, null
  br i1 %.not324, label %bb.bn, label %.preheader412

.preheader412:                                    ; preds = %bb.bm
  %.not439 = icmp eq i32 %i.no, 0                 ; 2 uses
  br i1 %.not439, label %._crit_edge423, label %.lr.ph422

.lr.ph422:                                        ; preds = %.preheader412
  %i.nz = getelementptr inbounds nuw i8, ptr %.0279434, i64 64
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !191 ; 5 uses
  %xtraiter = and i64 %i.nw, 3                    ; 3 uses
  %i.ob = icmp ult i32 %i.no, 4
  br i1 %i.ob, label %.epil.preheader, label %.lr.ph422.new

.lr.ph422.new:                                    ; preds = %.lr.ph422
  %unroll_iter = and i64 %i.nw, 4294967292
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.oc = call i32 @hwloc_hide_errors() #26
  %.not325 = icmp eq i32 %i.oc, 0
  br i1 %.not325, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.od = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.oe = call i64 @fwrite(ptr nonnull @.str.79, i64 60, i64 1, ptr %i.od) #33 ; 0 uses
  br label %bb.bx

bb.bp:                                            ; preds = %bb.bp, %.lr.ph422.new
  %indvars.iv448 = phi i64 [ 0, %.lr.ph422.new ], [ %indvars.iv.next449.3, %bb.bp ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph422.new ], [ %niter.next.3, %bb.bp ]
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv448
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !55
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 52
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !192
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.oj
  %i.ol = trunc nuw i64 %indvars.iv448 to i32
  store i32 %i.ol, ptr %i.ok, align 4, !tbaa !12
  %indvars.iv.next449 = or disjoint i64 %indvars.iv448, 1 ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv.next449
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !55
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 52
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !192
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.oq
  %i.os = trunc nuw i64 %indvars.iv.next449 to i32
  store i32 %i.os, ptr %i.or, align 4, !tbaa !12
  %indvars.iv.next449.1 = or disjoint i64 %indvars.iv448, 2 ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv.next449.1
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !55
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 52
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !192
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.ox
  %i.oz = trunc nuw i64 %indvars.iv.next449.1 to i32
  store i32 %i.oz, ptr %i.oy, align 4, !tbaa !12
  %indvars.iv.next449.2 = or disjoint i64 %indvars.iv448, 3 ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv.next449.2
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !55
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 52
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !192
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.pe
  %i.pg = trunc nuw i64 %indvars.iv.next449.2 to i32
  store i32 %i.pg, ptr %i.pf, align 4, !tbaa !12
  %indvars.iv.next449.3 = add nuw nsw i64 %indvars.iv448, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge423.thread.unr-lcssa, label %bb.bp, !llvm.loop !193

._crit_edge423:                                   ; preds = %.preheader412
  %i.ph = load i32, ptr %i.np, align 4, !tbaa !189 ; 2 uses
  %i.pi = icmp eq i32 %i.ph, 13
  br i1 %i.pi, label %.loopexit409, label %.loopexit

._crit_edge423.thread.unr-lcssa:                  ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge423.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge423.thread.unr-lcssa, %.lr.ph422
  %indvars.iv448.epil.init = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next449.3, %._crit_edge423.thread.unr-lcssa ]
  %lcmp.mod503 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod503)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.epil.preheader
  %indvars.iv448.epil = phi i64 [ %indvars.iv448.epil.init, %.epil.preheader ], [ %indvars.iv.next449.epil, %bb.bq ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bq ]
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv448.epil
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !55
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 52
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !192
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.pn
  %i.pp = trunc nuw i64 %indvars.iv448.epil to i32
  store i32 %i.pp, ptr %i.po, align 4, !tbaa !12
  %indvars.iv.next449.epil = add nuw nsw i64 %indvars.iv448.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge423.thread, label %bb.bq, !llvm.loop !194

._crit_edge423.thread:                            ; preds = %bb.bq, %._crit_edge423.thread.unr-lcssa
  %i.pq = load i32, ptr %i.np, align 4, !tbaa !189 ; 3 uses
  %i.pr = icmp eq i32 %i.pq, 13
  %i.ps = getelementptr inbounds nuw i8, ptr %.0279434, i64 64
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !191 ; 4 uses
  br i1 %i.pr, label %.lr.ph428.preheader, label %.lr.ph425

.lr.ph428.preheader:                              ; preds = %._crit_edge423.thread
  %xtraiter504 = and i64 %i.nw, 1
  %i.pu = icmp eq i32 %i.no, 1
  br i1 %i.pu, label %.lr.ph428.epil.preheader, label %.lr.ph428.preheader.new

.lr.ph428.preheader.new:                          ; preds = %.lr.ph428.preheader
  %unroll_iter509 = and i64 %i.nw, 4294967294
  br label %.lr.ph428

.lr.ph428:                                        ; preds = %bb.br, %.lr.ph428.preheader.new
  %indvars.iv456 = phi i64 [ 0, %.lr.ph428.preheader.new ], [ %indvars.iv.next457.1, %bb.br ] ; 3 uses
  %.0276427 = phi i32 [ -1, %.lr.ph428.preheader.new ], [ %spec.select.1, %bb.br ]
  %niter510 = phi i64 [ 0, %.lr.ph428.preheader.new ], [ %niter510.next.1, %bb.br ]
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv456
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !55
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph428
  %.pn330 = phi ptr [ %i.pw, %.lr.ph428 ], [ %.0274, %.backedge.backedge ]
  %.0274.in = getelementptr inbounds nuw i8, ptr %.pn330, i64 72
  %.0274 = load ptr, ptr %.0274.in, align 8, !tbaa !54 ; 3 uses
  %i.px = load i32, ptr %.0274, align 8, !tbaa !50
  switch i32 %i.px, label %.lr.ph428.1 [
    i32 18, label %.backedge.backedge
    i32 13, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %.backedge, %.backedge
  br label %.backedge

.lr.ph428.1:                                      ; preds = %.backedge
  %i.py = getelementptr inbounds nuw i8, ptr %.0274, i64 48
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !196
  %i.qa = add nsw i32 %i.pz, 1
  %spec.select = call i32 @llvm.smax.i32(i32 %.0276427, i32 %i.qa)
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv456
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !55
  br label %.backedge.1

.backedge.1:                                      ; preds = %.backedge.backedge.1, %.lr.ph428.1
  %.pn330.1 = phi ptr [ %i.qd, %.lr.ph428.1 ], [ %.0274.1, %.backedge.backedge.1 ]
  %.0274.in.1 = getelementptr inbounds nuw i8, ptr %.pn330.1, i64 72
  %.0274.1 = load ptr, ptr %.0274.in.1, align 8, !tbaa !54 ; 3 uses
  %i.qe = load i32, ptr %.0274.1, align 8, !tbaa !50
  switch i32 %i.qe, label %bb.br [
    i32 18, label %.backedge.backedge.1
    i32 13, label %.backedge.backedge.1
  ]

.backedge.backedge.1:                             ; preds = %.backedge.1, %.backedge.1
  br label %.backedge.1

bb.br:                                            ; preds = %.backedge.1
  %i.qf = getelementptr inbounds nuw i8, ptr %.0274.1, i64 48
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !196
  %i.qh = add nsw i32 %i.qg, 1
  %spec.select.1 = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.qh) ; 3 uses
  %indvars.iv.next457.1 = add nuw nsw i64 %indvars.iv456, 2 ; 2 uses
  %niter510.next.1 = add i64 %niter510, 2         ; 2 uses
  %niter510.ncmp.1 = icmp eq i64 %niter510.next.1, %unroll_iter509
  br i1 %niter510.ncmp.1, label %.loopexit409.loopexit.unr-lcssa, label %.lr.ph428, !llvm.loop !197

.lr.ph425:                                        ; preds = %._crit_edge423.thread, %bb.bu
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %bb.bu ], [ 0, %._crit_edge423.thread ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv451
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !55
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph425
  %.pn = phi ptr [ %i.qj, %.lr.ph425 ], [ %.0, %bb.bt ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 72
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !54  ; 3 uses
  %.not326 = icmp eq ptr %.0, null
  br i1 %.not326, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qk = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !41
  %.not327 = icmp eq ptr %i.ql, null
  br i1 %.not327, label %bb.bs, label %.loopexit, !llvm.loop !198

bb.bu:                                            ; preds = %bb.bs
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %i.nw
  br i1 %exitcond455.not, label %.loopexit, label %.lr.ph425, !llvm.loop !199

.loopexit:                                        ; preds = %bb.bu, %bb.bt, %._crit_edge423
  %i.qm = phi i32 [ %i.pq, %bb.bt ], [ %i.ph, %._crit_edge423 ], [ %i.pq, %bb.bu ]
  %.2 = phi i32 [ 1, %bb.bt ], [ 0, %._crit_edge423 ], [ 0, %bb.bu ]
  %i.qn = call i32 @hwloc_get_type_depth(ptr noundef %1, i32 noundef %i.qm) #26
  %i.qo = add nsw i32 %i.qn, %.2
  br label %.loopexit409

.loopexit409.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod506.not = icmp eq i64 %xtraiter504, 0
  br i1 %lcmp.mod506.not, label %.loopexit409, label %.lr.ph428.epil.preheader

.lr.ph428.epil.preheader:                         ; preds = %.loopexit409.loopexit.unr-lcssa, %.lr.ph428.preheader
  %indvars.iv456.epil.init = phi i64 [ 0, %.lr.ph428.preheader ], [ %indvars.iv.next457.1, %.loopexit409.loopexit.unr-lcssa ]
  %.0276427.epil.init = phi i32 [ -1, %.lr.ph428.preheader ], [ %spec.select.1, %.loopexit409.loopexit.unr-lcssa ]
  %lcmp.mod508 = trunc i32 %i.no to i1
  call void @llvm.assume(i1 %lcmp.mod508)
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv456.epil.init
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !55
  br label %.backedge.epil

.backedge.epil:                                   ; preds = %.backedge.backedge.epil, %.lr.ph428.epil.preheader
  %.pn330.epil = phi ptr [ %i.qq, %.lr.ph428.epil.preheader ], [ %.0274.epil, %.backedge.backedge.epil ]
  %.0274.in.epil = getelementptr inbounds nuw i8, ptr %.pn330.epil, i64 72
  %.0274.epil = load ptr, ptr %.0274.in.epil, align 8, !tbaa !54 ; 3 uses
  %i.qr = load i32, ptr %.0274.epil, align 8, !tbaa !50
  switch i32 %i.qr, label %.loopexit409.loopexit.epilog-lcssa [
    i32 18, label %.backedge.backedge.epil
    i32 13, label %.backedge.backedge.epil
  ]

.backedge.backedge.epil:                          ; preds = %.backedge.epil, %.backedge.epil
  br label %.backedge.epil

.loopexit409.loopexit.epilog-lcssa:               ; preds = %.backedge.epil
  %i.qs = getelementptr inbounds nuw i8, ptr %.0274.epil, i64 48
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !196
  %i.qu = add nsw i32 %i.qt, 1
  %spec.select.epil = call i32 @llvm.smax.i32(i32 %.0276427.epil.init, i32 %i.qu)
  br label %.loopexit409

.loopexit409:                                     ; preds = %.loopexit409.loopexit.epilog-lcssa, %.loopexit409.loopexit.unr-lcssa, %._crit_edge423, %.loopexit
  %.2278 = phi i32 [ %i.qo, %.loopexit ], [ -1, %._crit_edge423 ], [ %spec.select.1, %.loopexit409.loopexit.unr-lcssa ], [ %spec.select.epil, %.loopexit409.loopexit.epilog-lcssa ]
  %i.qv = load ptr, ptr %i.nh, align 8, !tbaa !56
  call void %i.qv(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.80) #26
  %i.qw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.no) #26 ; 0 uses
  %i.qx = load ptr, ptr %i.ni, align 8, !tbaa !95
  call void %i.qx(ptr noundef nonnull %8, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.c) #26
  %i.qy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.2278) #26 ; 0 uses
  %i.qz = load ptr, ptr %i.ni, align 8, !tbaa !95
  call void %i.qz(ptr noundef nonnull %8, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.c) #26
  %i.ra = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.71, double noundef 1.000000e+00) #26 ; 0 uses
  %i.rb = load ptr, ptr %i.ni, align 8, !tbaa !95
  call void %i.rb(ptr noundef nonnull %8, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.c) #26
  br i1 %.not439, label %._crit_edge431, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit409
  %i.rc = getelementptr inbounds nuw i8, ptr %.0279434, i64 40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.bw
  %indvars.iv466 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next467, %bb.bw ] ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv466
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !12
  %i.rf = mul i32 %i.re, %i.no
  br label %bb.bv

bb.bv:                                            ; preds = %.preheader, %bb.bv
  %indvars.iv461 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next462, %bb.bv ] ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv461
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !12
  %i.ri = add i32 %i.rf, %i.rh
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.rj = load ptr, ptr %i.nj, align 8, !tbaa !56
  call void %i.rj(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @.str.84) #26
  %i.rk = load ptr, ptr %i.rc, align 8, !tbaa !200
  %i.rl = zext i32 %i.ri to i64
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !201
  %i.ro = uitofp i64 %i.rn to float
  %i.rp = fpext float %i.ro to double
  %i.rq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.71, double noundef %i.rp) #26 ; 0 uses
  %i.rr = load ptr, ptr %i.nk, align 8, !tbaa !95
  call void %i.rr(ptr noundef nonnull %9, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.c) #26
  %i.rs = load ptr, ptr %i.nl, align 8, !tbaa !63
  call void %i.rs(ptr noundef nonnull %9, ptr noundef nonnull @.str.84) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %i.nw
  br i1 %exitcond465.not, label %bb.bw, label %bb.bv, !llvm.loop !202

bb.bw:                                            ; preds = %bb.bv
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next467, %i.nw
  br i1 %exitcond470.not, label %._crit_edge431, label %.preheader, !llvm.loop !203

._crit_edge431:                                   ; preds = %bb.bw, %.loopexit409
  %i.rt = load ptr, ptr %i.nm, align 8, !tbaa !63
  call void %i.rt(ptr noundef nonnull %8, ptr noundef nonnull @.str.80) #26
  call void @free(ptr noundef %i.ny) #26
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bn, %bb.bo, %bb.bl, %hwloc_get_nbobjs_by_type.exit, %._crit_edge431
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ru = getelementptr inbounds nuw i8, ptr %.0279434, i64 80
  %.0279 = load ptr, ptr %i.ru, align 8, !tbaa !65 ; 2 uses
  %.not320 = icmp eq ptr %.0279, null
  br i1 %.not320, label %.critedge342, label %bb.bi, !llvm.loop !204

.critedge342:                                     ; preds = %bb.bx, %bb.bh, %._crit_edge, %.critedge341
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !205
  %.not331 = icmp eq ptr %i.rw, null
  br i1 %.not331, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %.critedge342
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !206 ; 2 uses
  %.not332 = icmp eq ptr %i.ry, null
  br i1 %.not332, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void %i.ry(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.critedge342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc__xml_v1export_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  %5 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 8 uses
  %6 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  %7 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  call void %i.b(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @.str.6) #26
  call fastcc void @hwloc__xml_export_object_contents(ptr noundef %7, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.063 = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.not64 = icmp eq ptr %.063, null
  br i1 %.not64, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.a
  %.0.sroa.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.sroa.gep60.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph69, %bb.m
  %.065 = phi ptr [ %.063, %.lr.ph69 ], [ %.0, %bb.m ] ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.065, i64 140
  %i.j = load i32, ptr %i.i, align 4, !tbaa !207
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @hwloc__xml_v1export_object(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %.065, i64 noundef %3)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
end_hunk_0
begin_hunk_1_@hwloc_export_obj_userdata_base64:bb.a
  call void %i.x(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.141) #26, !inline_history !236
  br i1 %.not25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95
  call void %i.z(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #26, !inline_history !236
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %5) #26 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !95
  call void %i.ac(ptr noundef nonnull %6, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.a) #26, !inline_history !236
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !95
  call void %i.ad(ptr noundef nonnull %6, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.21) #26, !inline_history !236
  %.not12.i = icmp eq i64 %i.p, 0
  br i1 %.not12.i, label %hwloc__export_obj_userdata.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !237
  call void %i.af(ptr noundef nonnull %6, ptr noundef nonnull %i.r, i64 noundef %i.p) #26, !inline_history !236
  br label %hwloc__export_obj_userdata.exit

hwloc__export_obj_userdata.exit:                  ; preds = %bb.n, %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63
  call void %i.ah(ptr noundef nonnull %6, ptr noundef nonnull @.str.141) #26, !inline_history !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @free(ptr noundef nonnull %i.r) #26
  br label %bb.p

bb.p:                                             ; preds = %hwloc__export_obj_userdata.exit, %bb.i, %hwloc__xml_export_check_buffer.exit, %bb.b
  %.0 = phi i32 [ -1, %hwloc__xml_export_check_buffer.exit ], [ 0, %hwloc__export_obj_userdata.exit ], [ -1, %bb.i ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

declare i32 @hwloc_encode_to_base64(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hwloc_topology_set_userdata_import_callback(ptr nofree noundef writeonly captures(none) initializes((688, 696)) %0, ptr noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %1, ptr %i.a, align 8, !tbaa !238
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_weight(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @hwloc_obj_type_string(i32 noundef) local_unnamed_addr #10

declare i32 @hwloc_obj_type_is_normal(i32 noundef) local_unnamed_addr #7

declare i32 @hwloc_bitmap_asprintf(ptr noundef, ptr noundef) local_unnamed_addr #7

declare noalias ptr @hwloc_bitmap_dup(ptr noundef) local_unnamed_addr #7

declare i32 @hwloc_bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @hwloc_bitmap_free(ptr noundef) local_unnamed_addr #7

declare i32 @hwloc_hide_errors() local_unnamed_addr #7

declare i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_nbobjs_by_depth(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc___xml_v2export_distances(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 6 uses
  %2 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 19 uses
  %i.b = alloca [255 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  %i.d = alloca [255 x i8], align 16              ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %4 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  %i.f = alloca [255 x i8], align 16              ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %5 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !188  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.m(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.85) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void %i.m(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.86) #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !189
  %i.r = call ptr @hwloc_obj_type_string(i32 noundef %i.q) #31
  call void %i.o(ptr noundef nonnull %2, ptr noundef nonnull @.str.9, ptr noundef %i.r) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.i) #26 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  call void %i.u(ptr noundef nonnull %2, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.a) #26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !190
  %i.x = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.w) #26 ; 0 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !95
  call void %i.y(ptr noundef nonnull %2, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.a) #26
  %i.z = load ptr, ptr %1, align 8, !tbaa !239    ; 2 uses
  %.not83 = icmp eq ptr %i.z, null
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !95
  call void %i.aa(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.z) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not84 = icmp eq ptr %i.ab, null
  br i1 %.not84, label %bb.g, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.g, %bb.f
  %.not101 = icmp eq i32 %i.i, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !189 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 3
  %i.al = icmp eq i32 %i.aj, 13
  %i.am = or i1 %i.ak, %i.al
  %i.an = select i1 %i.am, ptr @.str.89, ptr @.str.90
  call void %i.ah(ptr noundef nonnull %2, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.an) #26
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.ao = icmp eq ptr %.pr, null
  br i1 %i.ao, label %.preheader, label %.critedge.preheader

.preheader:                                       ; preds = %bb.g
  %.not102 = icmp eq i32 %i.i, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph, %.critedge
  %.07592 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void %i.au(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @.str.91) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.07490 = phi i64 [ 0, %bb.h ], [ %i.bf, %bb.i ] ; 2 uses
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %7 = add i32 %.07592, %6
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07490
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !191
  %8 = zext i32 %7 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !50
  %i.ba = call ptr @hwloc_obj_type_string(i32 noundef %i.az) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !177
  %i.bd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) @.str.92, ptr noundef %i.ba, i64 noundef %i.bc) #26
  %i.be = sext i32 %i.bd to i64
  %i.bf = add i64 %.07490, %i.be                  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = add i32 %.07592, %indvars               ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.i                ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv, 9
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %bb.i, label %.critedge, !llvm.loop !240

.critedge:                                        ; preds = %bb.i
  %i.bk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.bf) #26 ; 0 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !95
  call void %i.bl(ptr noundef nonnull %3, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.c) #26
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !237
  call void %i.bm(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef %i.bf) #26
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !63
  call void %i.bn(ptr noundef nonnull %3, ptr noundef nonnull @.str.91) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.bh, label %bb.h, label %.loopexit, !llvm.loop !241

bb.j:                                             ; preds = %.lr.ph96, %bb.l
  %.07295 = phi i32 [ 0, %.lr.ph96 ], [ %i.bw, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !56
  call void %i.bo(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull @.str.91) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %indvars.iv111 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next112, %bb.k ] ; 3 uses
  %.07193 = phi i64 [ 0, %bb.j ], [ %i.bv, %bb.k ] ; 2 uses
  %9 = trunc nuw nsw i64 %indvars.iv111 to i32
  %10 = add i32 %.07295, %9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 %.07193
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !242
  %11 = zext i32 %10 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %11
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !201
  %i.bt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) @.str.94, i64 noundef %i.bs) #26
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add i64 %.07193, %i.bu                  ; 3 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %indvars113 = trunc nuw nsw i64 %indvars.iv.next112 to i32
  %i.bw = add i32 %.07295, %indvars113            ; 2 uses
  %i.bx = icmp ult i32 %i.bw, %i.i                ; 2 uses
  %i.by = icmp samesign ult i64 %indvars.iv111, 9
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.k, label %bb.l, !llvm.loop !243

bb.l:                                             ; preds = %bb.k
  %i.ca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.bv) #26 ; 0 uses
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !95
  call void %i.cb(ptr noundef nonnull %4, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.e) #26
  %i.cc = load ptr, ptr %i.as, align 8, !tbaa !237
  call void %i.cc(ptr noundef nonnull %4, ptr noundef nonnull %i.d, i64 noundef %i.bv) #26
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !63
  call void %i.cd(ptr noundef nonnull %4, ptr noundef nonnull @.str.91) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br i1 %i.bx, label %bb.j, label %.loopexit, !llvm.loop !244

.loopexit:                                        ; preds = %.critedge, %bb.l, %.critedge.preheader, %.preheader
  %i.ce = mul i32 %i.i, %i.i                      ; 2 uses
  %.not103 = icmp eq i32 %i.ce, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph100

.lr.ph100:                                        ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph100, %bb.o
  %.06999 = phi i32 [ 0, %.lr.ph100 ], [ %i.cs, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !56
  call void %i.ck(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull @.str.95) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %indvars.iv115 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next116, %bb.n ] ; 3 uses
  %.06897 = phi i64 [ 0, %bb.m ], [ %i.cr, %bb.n ] ; 2 uses
  %12 = trunc nuw nsw i64 %indvars.iv115 to i32
  %13 = add i32 %.06999, %12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 %.06897
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !200
  %14 = zext i32 %13 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %14
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !201
  %i.cp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(1) @.str.94, i64 noundef %i.co) #26
  %i.cq = sext i32 %i.cp to i64
  %i.cr = add i64 %.06897, %i.cq                  ; 3 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %indvars117 = trunc nuw nsw i64 %indvars.iv.next116 to i32
  %i.cs = add i32 %.06999, %indvars117            ; 2 uses
  %i.ct = icmp ult i32 %i.cs, %i.ce               ; 2 uses
  %i.cu = icmp samesign ult i64 %indvars.iv115, 9
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %bb.n, label %bb.o, !llvm.loop !245

bb.o:                                             ; preds = %bb.n
  %i.cw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.cr) #26 ; 0 uses
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !95
  call void %i.cx(ptr noundef nonnull %5, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.g) #26
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !237
  call void %i.cy(ptr noundef nonnull %5, ptr noundef nonnull %i.f, i64 noundef %i.cr) #26
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !63
  call void %i.cz(ptr noundef nonnull %5, ptr noundef nonnull @.str.95) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br i1 %i.ct, label %bb.m, label %._crit_edge, !llvm.loop !246

._crit_edge:                                      ; preds = %bb.o, %.loopexit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not86 = icmp eq ptr %i.dc, null
  %i.dd = select i1 %.not86, ptr @.str.86, ptr @.str.85
  call void %i.db(ptr noundef nonnull %2, ptr noundef nonnull %i.dd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal ptr @hwloc_xml_component_instantiate(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = ptrtoint ptr %5 to i64
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = load ptr, ptr @hwloc_nolibxml_callbacks, align 8, !tbaa !13
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 3625, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_xml_component_instantiate) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ne ptr %3, null
  %i.e = icmp ne ptr %4, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.144) #26 ; 2 uses
  %.not50 = icmp eq ptr %i.f, null
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @__errno_location() #31
  store i32 22, ptr %i.g, align 4, !tbaa !12
  br label %.critedge57

bb.f:                                             ; preds = %bb.d, %bb.c
  %.042 = phi ptr [ %3, %bb.c ], [ %i.f, %bb.d ]  ; 6 uses
  %i.h = tail call ptr @hwloc_backend_alloc(ptr noundef %0, ptr noundef %1) #26 ; 9 uses
  %.not51 = icmp eq ptr %i.h, null
  br i1 %.not51, label %.critedge57, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #29 ; 7 uses
  %.not52 = icmp eq ptr %i.i, null
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #31
  store i32 12, ptr %i.j, align 4, !tbaa !12
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.i, ptr %i.k, align 8, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr @hwloc_look_xml, ptr %i.l, align 8, !tbaa !251
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr @hwloc_xml_backend_disable, ptr %i.m, align 8, !tbaa !252
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 0, ptr %i.n, align 8, !tbaa !253
  %.not53 = icmp eq ptr %.042, null
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.042, i32 noundef 47) #27 ; 2 uses
  %.not54 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %spec.select = select i1 %.not54, ptr %.042, ptr %i.p
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.041 = phi ptr [ @.str.145, %bb.i ], [ %spec.select, %bb.j ]
  %i.q = tail call noalias ptr @strdup(ptr noundef nonnull %.041) #26
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !35
  %.b.i = load i1, ptr @hwloc_nolibxml_import.checked, align 4
  br i1 %.b.i, label %hwloc_nolibxml_import.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @getenv(ptr noundef nonnull @.str.32) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.m, label %.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.t = tail call ptr @getenv(ptr noundef nonnull @.str.33) #26 ; 2 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %bb.n, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.s, %bb.l ], [ %i.t, %bb.m ]
  %i.u = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.sink.i, ptr noundef null, i32 noundef 10) #26
  %i.v = and i64 %i.u, 4294967295
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not6.i to i32
  store i32 %i.w, ptr @hwloc_nolibxml_import.nolibxml, align 4, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %bb.m
  store i1 true, ptr @hwloc_nolibxml_import.checked, align 4
  br label %hwloc_nolibxml_import.exit

hwloc_nolibxml_import.exit:                       ; preds = %bb.k, %bb.n
  %.pr = load ptr, ptr @hwloc_libxml_callbacks, align 8, !tbaa !13 ; 3 uses
  %.not5558 = icmp eq ptr %.pr, null
  br i1 %.not5558, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hwloc_nolibxml_import.exit
  %i.x = load i32, ptr @hwloc_nolibxml_import.nolibxml, align 4, !tbaa !12
  %.fr62 = freeze i32 %i.x
  %.not63 = icmp eq i32 %.fr62, 0
  br i1 %.not63, label %.lr.ph.split.us.split.us, label %.lr.ph.split.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph
  %i.y = load ptr, ptr %.pr, align 8, !tbaa !254
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.i, ptr noundef %.042, ptr noundef %4, i32 noundef %i.b) #26
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.o, label %.critedge57

bb.o:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ab = tail call ptr @__errno_location() #31
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = icmp eq i32 %i.ac, 38
  br i1 %i.ad, label %._crit_edge.sink.split, label %.critedge

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.ae = load ptr, ptr @hwloc_nolibxml_callbacks, align 8, !tbaa !13
  %.not64 = icmp eq ptr %i.ae, null
  br i1 %.not64, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph.split.split.us
  %i.af = load ptr, ptr %.pr, align 8, !tbaa !254
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.i, ptr noundef %.042, ptr noundef %4, i32 noundef %i.b) #26
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %.critedge57

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call ptr @__errno_location() #31
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = icmp eq i32 %i.aj, 38
  br i1 %i.ak, label %._crit_edge.sink.split, label %.critedge

._crit_edge.sink.split:                           ; preds = %bb.q, %bb.o
  store ptr null, ptr @hwloc_libxml_callbacks, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.sink.split, %.lr.ph.split.split.us, %hwloc_nolibxml_import.exit
  %i.al = load ptr, ptr @hwloc_nolibxml_callbacks, align 8, !tbaa !13
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !254
  %i.an = tail call i32 %i.am(ptr noundef nonnull %i.i, ptr noundef %.042, ptr noundef %4, i32 noundef %i.b) #26
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.critedge, label %.critedge57

.critedge:                                        ; preds = %bb.o, %bb.q, %._crit_edge
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.ap) #26
  tail call void @free(ptr noundef nonnull %i.i) #26
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.h
  tail call void @free(ptr noundef nonnull %i.h) #26
  br label %.critedge57

.critedge57:                                      ; preds = %.lr.ph.split.us.split.us, %bb.p, %bb.e, %bb.r, %bb.f, %._crit_edge
  %.043 = phi ptr [ %i.h, %._crit_edge ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.r ], [ %i.h, %bb.p ], [ %i.h, %.lr.ph.split.us.split.us ]
  ret ptr %.043
}
end_hunk_1
begin_hunk_2_@hwloc_look_xml:bb.a
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 72
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !35
  %i.rn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rj, ptr noundef nonnull @.str.280, ptr noundef %i.rm) #28 ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %hwloc__xml_verbose.exit50.i, %.critedge.thread.i194
  %.379.i = phi ptr [ %.029.i.lcssa, %.critedge.thread.i194 ], [ null, %hwloc__xml_verbose.exit50.i ], [ null, %bb.gx ]
  %i.ro = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.rp = load i32, ptr %i.d, align 4, !tbaa !12
  call void @hwloc__free_infos(ptr noundef %i.ro, i32 noundef %i.rp) #26
  call void @hwloc_bitmap_free(ptr noundef %.379.i) #26
  br label %hwloc__xml_import_cpukind.exit.thread

hwloc__xml_import_cpukind.exit.thread:            ; preds = %.thread.i208, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %hwloc__xml_import_memattr.exit.thread

hwloc__xml_import_cpukind.exit:                   ; preds = %._crit_edge.i200
  %i.rq = load ptr, ptr %i.e, align 8, !tbaa !272
  %i.rr = load i32, ptr %i.d, align 4, !tbaa !12
  %i.rs = call i32 @hwloc_internal_cpukinds_register(ptr noundef nonnull %i.v, ptr noundef nonnull %.029.i.lcssa, i32 noundef %.027.i.lcssa, ptr noundef %i.rq, i32 noundef %i.rr, i64 noundef 1) #26 ; 0 uses
  %i.rt = load ptr, ptr %i.bz, align 8, !tbaa !21
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !37
  %i.rw = call i32 %i.rv(ptr noundef nonnull %6) #26, !inline_history !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.rx = icmp slt i32 %i.rw, 0
  br i1 %i.rx, label %hwloc__xml_import_memattr.exit.thread, label %hwloc__xml_v2import_support.exit

bb.gz:                                            ; preds = %bb.fx
  %i.ry = call i32 @hwloc__xml_verbose()
  %.not161 = icmp eq i32 %i.ry, 0
  br i1 %.not161, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.rz = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.sa = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !35
  %i.sc = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.sd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rz, ptr noundef nonnull @.str.150, ptr noundef %i.sb, ptr noundef %i.sc) #28 ; 0 uses
  br label %bb.hb

hwloc__xml_v2import_support.exit:                 ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %._crit_edge.i, %._crit_edge.thread.i, %bb.x, %hwloc__xml_import_memattr.exit, %hwloc__xml_import_cpukind.exit, %bb.v
  %i.se = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 48
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !38
  call void %i.sg(ptr noundef nonnull %6) #26
  %i.sh = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !25
  %i.sk = call i32 %i.sj(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.s) #26 ; 2 uses
  %i.sl = icmp slt i32 %i.sk, 0
  br i1 %i.sl, label %hwloc__xml_import_memattr.exit.thread, label %bb.t

.loopexit:                                        ; preds = %bb.t, %bb.s
  %i.sm = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 40
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !37
  %i.sp = call i32 %i.so(ptr noundef nonnull %5) #26 ; 0 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha, %.loopexit
  %i.sq = getelementptr inbounds nuw i8, ptr %i.br, i64 184
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !170
  %.not162 = icmp eq ptr %i.sr, null
  br i1 %.not162, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  %i.ss = call i32 @hwloc__xml_verbose()
  %.not163 = icmp eq i32 %i.ss, 0
  br i1 %.not163, label %bb.in, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.st = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.su = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !35
  %i.sw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.st, ptr noundef nonnull @.str.151, ptr noundef %i.sv) #28 ; 0 uses
  br label %bb.in

bb.he:                                            ; preds = %bb.hb
  %i.sx = load i32, ptr %i.ap, align 8, !tbaa !262 ; 2 uses
  %i.sy = icmp ult i32 %i.sx, 2
  br i1 %i.sy, label %bb.hf, label %.thread224

bb.hf:                                            ; preds = %bb.he
  %i.sz = load ptr, ptr %i.ak, align 8, !tbaa !275 ; 2 uses
  %.not164 = icmp eq ptr %i.sz, null
  br i1 %.not164, label %.thread, label %.preheader226

.preheader226:                                    ; preds = %bb.hf
  %i.ta = getelementptr inbounds nuw i8, ptr %i.v, i64 224 ; 2 uses
  br label %bb.hg

bb.hg:                                            ; preds = %.preheader226, %bb.hj
  %.0133 = phi ptr [ %i.tk, %bb.hj ], [ %i.sz, %.preheader226 ] ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0133, i64 72
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !54 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !50
  %i.te = icmp eq i32 %i.td, 12
  br i1 %i.te, label %bb.hh, label %bb.hj

bb.hh:                                            ; preds = %bb.hg
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 240 ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !177
  %.not165 = icmp eq i64 %i.tg, 0
  br i1 %.not165, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.th = load i64, ptr %i.ta, align 8, !tbaa !276 ; 2 uses
  %i.ti = add i64 %i.th, 1
  store i64 %i.ti, ptr %i.ta, align 8, !tbaa !276
  store i64 %i.th, ptr %i.tf, align 8, !tbaa !177
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg
  %i.tj = getelementptr inbounds nuw i8, ptr %.0133, i64 56
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !277 ; 2 uses
  %.not166 = icmp eq ptr %i.tk, null
  br i1 %.not166, label %.thread, label %bb.hg, !llvm.loop !278

.thread:                                          ; preds = %bb.hj, %bb.hf
  %i.tl = load ptr, ptr %i.al, align 8, !tbaa !279 ; 2 uses
  %.not167 = icmp eq ptr %i.tl, null
  br i1 %.not167, label %bb.hv, label %.preheader225

.preheader225:                                    ; preds = %.thread, %bb.ht
  %.0132278 = phi ptr [ %i.tp, %bb.ht ], [ %i.tl, %.thread ] ; 6 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.0132278, i64 8
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !280 ; 7 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0132278, i64 32
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !283 ; 2 uses
  %i.tq = load i32, ptr %i.aj, align 8, !tbaa !260
  %i.tr = icmp eq i32 %i.tn, %i.tq
  br i1 %i.tr, label %bb.hk, label %bb.ht

bb.hk:                                            ; preds = %.preheader225
  %i.ts = zext i32 %i.tn to i64                   ; 3 uses
  %i.tt = shl nuw nsw i64 %i.ts, 3
  %i.tu = call noalias ptr @malloc(i64 noundef %i.tt) #29 ; 8 uses
  %i.tv = mul i32 %i.tn, %i.tn                    ; 4 uses
  %i.tw = zext i32 %i.tv to i64                   ; 4 uses
  %i.tx = shl nuw nsw i64 %i.tw, 3
  %i.ty = call noalias ptr @malloc(i64 noundef %i.tx) #29 ; 9 uses
  %.not176 = icmp eq i32 %i.tn, 0
  br i1 %.not176, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  call void @__assert_fail(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.3, i32 noundef 2174, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_look_xml) #30
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.tz = load ptr, ptr %i.ak, align 8, !tbaa !275 ; 3 uses
  %.not177 = icmp eq ptr %i.tz, null
  br i1 %.not177, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  call void @__assert_fail(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.3, i32 noundef 2175, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_look_xml) #30
  unreachable

bb.ho:                                            ; preds = %bb.hm
  %i.ua = icmp ne ptr %i.tu, null
  %i.ub = icmp ne ptr %i.ty, null
  %or.cond3 = and i1 %i.ua, %i.ub
  br i1 %or.cond3, label %.lr.ph277.preheader, label %bb.hs

.lr.ph277.preheader:                              ; preds = %bb.ho
  %xtraiter = and i64 %i.ts, 3                    ; 3 uses
  %i.uc = icmp ult i32 %i.tn, 4
  br i1 %i.uc, label %.lr.ph277.epil.preheader, label %.lr.ph277.preheader.new

.lr.ph277.preheader.new:                          ; preds = %.lr.ph277.preheader
  %unroll_iter = and i64 %i.ts, 4294967292
  br label %.lr.ph277

.lr.ph277:                                        ; preds = %.lr.ph277, %.lr.ph277.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %indvars.iv.next.3, %.lr.ph277 ] ; 5 uses
  %.0131275 = phi ptr [ %i.tz, %.lr.ph277.preheader.new ], [ %i.ur, %.lr.ph277 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %niter.next.3, %.lr.ph277 ]
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv
  store ptr %.0131275, ptr %i.ud, align 8, !tbaa !55
  %i.ue = getelementptr inbounds nuw i8, ptr %.0131275, i64 56
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !277 ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  store ptr %i.uf, ptr %i.uh, align 8, !tbaa !55
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 56
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !277 ; 2 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store ptr %i.uj, ptr %i.ul, align 8, !tbaa !55
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 56
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !277 ; 2 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  store ptr %i.un, ptr %i.up, align 8, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 56
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !277 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph277, !llvm.loop !284

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph277
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph277.epil.preheader

.lr.ph277.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph277.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph277.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0131275.epil.init = phi ptr [ %i.tz, %.lr.ph277.preheader ], [ %i.ur, %._crit_edge.unr-lcssa ]
  %lcmp.mod384 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod384)
  br label %.lr.ph277.epil

.lr.ph277.epil:                                   ; preds = %.lr.ph277.epil, %.lr.ph277.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph277.epil ], [ %indvars.iv.epil.init, %.lr.ph277.epil.preheader ] ; 2 uses
  %.0131275.epil = phi ptr [ %i.uu, %.lr.ph277.epil ], [ %.0131275.epil.init, %.lr.ph277.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph277.epil ], [ 0, %.lr.ph277.epil.preheader ]
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv.epil
  store ptr %.0131275.epil, ptr %i.us, align 8, !tbaa !55
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.ut = getelementptr inbounds nuw i8, ptr %.0131275.epil, i64 56
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !277
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph277.epil, !llvm.loop !285

._crit_edge:                                      ; preds = %.lr.ph277.epil, %._crit_edge.unr-lcssa
  %i.uv = getelementptr inbounds nuw i8, ptr %.0132278, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !286 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ux = call ptr @getenv(ptr noundef nonnull @.str.281) #26 ; 2 uses
  %.not.i210 = icmp eq ptr %i.ux, null
  br i1 %.not.i210, label %.preheader.i214, label %bb.hp

.preheader.i214:                                  ; preds = %._crit_edge
  %.not43.i215 = icmp eq i32 %i.tv, 0
  br i1 %.not43.i215, label %hwloc_convert_from_v1dist_floats.exit, label %.lr.ph.i216

bb.hp:                                            ; preds = %._crit_edge
  %i.uy = call double @strtod(ptr noundef nonnull captures(none) %i.ux, ptr noundef null) #26, !inline_history !287
  %i.uz = fptrunc double %i.uy to float
  br label %.thread37.i

.lr.ph.i216:                                      ; preds = %.preheader.i214, %bb.hr
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.hr ], [ 0, %.preheader.i214 ] ; 3 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i
  %i.vb = load float, ptr %i.va, align 4, !tbaa !288 ; 3 uses
  %i.vc = fcmp olt float %i.vb, 0.000000e+00
  br i1 %i.vc, label %.thread37.i, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph.i216
  %i.vd = call { float, float } @llvm.modf.f32(float %i.vb)
  %i.ve = extractvalue { float, float } %i.vd, 0  ; 2 uses
  %i.vf = fcmp ogt float %i.ve, 1.000000e-03
  %i.vg = fcmp olt float %i.ve, 9.990000e-01
  %or.cond.i217 = and i1 %i.vf, %i.vg
  br i1 %or.cond.i217, label %.thread37.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.vh = fadd float %i.vb, 5.000000e-01
  %i.vi = fptosi float %i.vh to i32
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.i
  store i64 %i.vj, ptr %i.vk, align 8, !tbaa !201
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.tw
  br i1 %exitcond.not.i, label %hwloc_convert_from_v1dist_floats.exit, label %.lr.ph.i216, !llvm.loop !290

.thread37.i:                                      ; preds = %bb.hq, %.lr.ph.i216, %bb.hp
  %.028.i = phi float [ %i.uz, %bb.hp ], [ 1.000000e+03, %.lr.ph.i216 ], [ 1.000000e+03, %bb.hq ] ; 6 uses
  %.not44.i211 = icmp eq i32 %i.tv, 0
  br i1 %.not44.i211, label %._crit_edge.i212, label %.lr.ph42.i.preheader

.lr.ph42.i.preheader:                             ; preds = %.thread37.i
  %xtraiter385 = and i64 %i.tw, 3                 ; 3 uses
  %i.vl = icmp ult i32 %i.tv, 4
  br i1 %i.vl, label %.lr.ph42.i.epil.preheader, label %.lr.ph42.i.preheader.new

.lr.ph42.i.preheader.new:                         ; preds = %.lr.ph42.i.preheader
  %unroll_iter389 = and i64 %i.tw, 4294967292
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.i.preheader.new
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph42.i.preheader.new ], [ %indvars.iv.next47.i.3, %.lr.ph42.i ] ; 6 uses
  %niter390 = phi i64 [ 0, %.lr.ph42.i.preheader.new ], [ %niter390.next.3, %.lr.ph42.i ]
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv46.i
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !288
  %i.vo = fmul float %.028.i, %i.vn
  %i.vp = fptoui float %i.vo to i64
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv46.i
  store i64 %i.vp, ptr %i.vq, align 8, !tbaa !201
  %indvars.iv.next47.i = or disjoint i64 %indvars.iv46.i, 1 ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next47.i
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !288
  %i.vt = fmul float %.028.i, %i.vs
  %i.vu = fptoui float %i.vt to i64
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next47.i
  store i64 %i.vu, ptr %i.vv, align 8, !tbaa !201
  %indvars.iv.next47.i.1 = or disjoint i64 %indvars.iv46.i, 2 ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next47.i.1
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !288
  %i.vy = fmul float %.028.i, %i.vx
  %i.vz = fptoui float %i.vy to i64
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next47.i.1
  store i64 %i.vz, ptr %i.wa, align 8, !tbaa !201
  %indvars.iv.next47.i.2 = or disjoint i64 %indvars.iv46.i, 3 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next47.i.2
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !288
  %i.wd = fmul float %.028.i, %i.wc
  %i.we = fptoui float %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next47.i.2
  store i64 %i.we, ptr %i.wf, align 8, !tbaa !201
  %indvars.iv.next47.i.3 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %niter390.next.3 = add i64 %niter390, 4         ; 2 uses
  %niter390.ncmp.3 = icmp eq i64 %niter390.next.3, %unroll_iter389
  br i1 %niter390.ncmp.3, label %._crit_edge.i212.loopexit.unr-lcssa, label %.lr.ph42.i, !llvm.loop !291

._crit_edge.i212.loopexit.unr-lcssa:              ; preds = %.lr.ph42.i
  %lcmp.mod387.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod387.not, label %._crit_edge.i212, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %._crit_edge.i212.loopexit.unr-lcssa, %.lr.ph42.i.preheader
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.lr.ph42.i.preheader ], [ %indvars.iv.next47.i.3, %._crit_edge.i212.loopexit.unr-lcssa ]
  %lcmp.mod388 = icmp ne i64 %xtraiter385, 0
  call void @llvm.assume(i1 %lcmp.mod388)
  br label %.lr.ph42.i.epil

.lr.ph42.i.epil:                                  ; preds = %.lr.ph42.i.epil, %.lr.ph42.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv.next47.i.epil, %.lr.ph42.i.epil ], [ %indvars.iv46.i.epil.init, %.lr.ph42.i.epil.preheader ] ; 3 uses
  %epil.iter386 = phi i64 [ %epil.iter386.next, %.lr.ph42.i.epil ], [ 0, %.lr.ph42.i.epil.preheader ]
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv46.i.epil
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !288
  %i.wi = fmul float %.028.i, %i.wh
  %i.wj = fptoui float %i.wi to i64
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv46.i.epil
  store i64 %i.wj, ptr %i.wk, align 8, !tbaa !201
  %indvars.iv.next47.i.epil = add nuw nsw i64 %indvars.iv46.i.epil, 1
  %epil.iter386.next = add i64 %epil.iter386, 1   ; 2 uses
  %epil.iter386.cmp.not = icmp eq i64 %epil.iter386.next, %xtraiter385
  br i1 %epil.iter386.cmp.not, label %._crit_edge.i212, label %.lr.ph42.i.epil, !llvm.loop !292

._crit_edge.i212:                                 ; preds = %._crit_edge.i212.loopexit.unr-lcssa, %.lr.ph42.i.epil, %.thread37.i
  %i.wl = fpext float %.028.i to double
  %i.wm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.71, double noundef %i.wl) #26 ; 0 uses
  %i.wn = call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %i.v, i32 noundef 0, i32 noundef 0) #27
  %i.wo = call i32 @hwloc_obj_add_info(ptr noundef %i.wn, ptr noundef nonnull @.str.282, ptr noundef nonnull %i.a) #26 ; 0 uses
  br label %hwloc_convert_from_v1dist_floats.exit

hwloc_convert_from_v1dist_floats.exit:            ; preds = %bb.hr, %.preheader.i214, %._crit_edge.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.wp = load i64, ptr %.0132278, align 8, !tbaa !293
  %i.wq = call i32 @hwloc_internal_distances_add(ptr noundef nonnull %i.v, ptr noundef null, i32 noundef %i.tn, ptr noundef nonnull %i.tu, ptr noundef nonnull %i.ty, i64 noundef %i.wp, i64 noundef 0) #26 ; 0 uses
  br label %bb.ht

bb.hs:                                            ; preds = %bb.ho
  call void @free(ptr noundef %i.tu) #26
  call void @free(ptr noundef %i.ty) #26
  br label %bb.ht

bb.ht:                                            ; preds = %hwloc_convert_from_v1dist_floats.exit, %bb.hs, %.preheader225
  %i.wr = getelementptr inbounds nuw i8, ptr %.0132278, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !286
  call void @free(ptr noundef %i.ws) #26
  call void @free(ptr noundef nonnull %.0132278) #26
  %.not168 = icmp eq ptr %i.tp, null
  br i1 %.not168, label %bb.hu, label %.preheader225, !llvm.loop !294

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %.pr.pre = load i32, ptr %i.ap, align 8, !tbaa !262
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %.thread
  %.pr = phi i32 [ %.pr.pre, %bb.hu ], [ %i.sx, %.thread ]
  %i.wt = icmp ugt i32 %.pr, 1
  br i1 %i.wt, label %.thread224, label %bb.ib

.thread224:                                       ; preds = %bb.he, %bb.hv
  %i.wu = getelementptr inbounds nuw i8, ptr %i.br, i64 200
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !49 ; 2 uses
  %.not169 = icmp eq ptr %i.wv, null
  br i1 %.not169, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %.thread224
  %i.ww = call i32 @hwloc__xml_verbose()
  %.not170 = icmp eq i32 %i.ww, 0
  br i1 %.not170, label %bb.in, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.wx = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.wy = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !35
  %i.xa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wx, ptr noundef nonnull @.str.154, ptr noundef %i.wz) #28 ; 0 uses
  br label %bb.in

bb.hy:                                            ; preds = %.thread224
  %i.xb = call i32 @hwloc_bitmap_iszero(ptr noundef nonnull %i.wv) #27
  %.not171 = icmp eq i32 %i.xb, 0
  br i1 %.not171, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.xc = call i32 @hwloc__xml_verbose()
  %.not175 = icmp eq i32 %i.xc, 0
  br i1 %.not175, label %bb.in, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.xd = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.xe = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !35
  %i.xg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xd, ptr noundef nonnull @.str.155, ptr noundef %i.xf) #28 ; 0 uses
  br label %bb.in

bb.ib:                                            ; preds = %bb.hv, %bb.hy
  call void @hwloc_alloc_root_sets(ptr noundef %i.br) #26
  %i.xh = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !265
  %i.xj = and i64 %i.xi, 8
  %.not172 = icmp eq i64 %i.xj, 0
  br i1 %.not172, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.xk = getelementptr inbounds nuw i8, ptr %i.v, i64 648
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !72 ; 5 uses
  store i8 1, ptr %i.xl, align 1, !tbaa !92
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 3
  store i8 1, ptr %i.xm, align 1, !tbaa !98
  %i.xn = load i32, ptr %i.aj, align 8, !tbaa !260
  %.not173 = icmp eq i32 %i.xn, 0
  br i1 %.not173, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  store i8 1, ptr %i.xo, align 1, !tbaa !96
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 2
  store i8 1, ptr %i.xp, align 1, !tbaa !97
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  store i8 1, ptr %i.xq, align 1, !tbaa !99
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ic, %bb.id, %bb.ib
  %i.xr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !295 ; 2 uses
  %.not174 = icmp eq ptr %i.xs, null
  br i1 %.not174, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void %i.xs(ptr noundef nonnull %i.x, i32 noundef 0) #26
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  br i1 %.not152, label %bb.is, label %.sink.split

hwloc__xml_import_memattr.exit.thread:            ; preds = %hwloc__xml_v2import_support.exit, %bb.v, %bb.x, %hwloc__xml_import_memattr.exit, %hwloc__xml_import_cpukind.exit, %.preheader227, %.critedge.thread.i, %.thread.i, %hwloc__xml_import_cpukind.exit.thread, %bb.p, %bb.n, %bb.o, %bb.g
  %.0135 = phi ptr [ %i.ab, %bb.g ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ], [ %i.br, %.thread.i ], [ %i.br, %.critedge.thread.i ], [ %i.br, %hwloc__xml_import_cpukind.exit.thread ], [ %i.ab, %bb.n ], [ %i.br, %.preheader227 ], [ %i.br, %hwloc__xml_import_cpukind.exit ], [ %i.br, %hwloc__xml_import_memattr.exit ], [ %i.br, %bb.x ], [ %i.br, %bb.v ], [ %i.br, %hwloc__xml_v2import_support.exit ] ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !295 ; 2 uses
  %.not179 = icmp eq ptr %i.xu, null
  br i1 %.not179, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %hwloc__xml_import_memattr.exit.thread
  call void %i.xu(ptr noundef nonnull %i.x, i32 noundef -1) #26
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %hwloc__xml_import_memattr.exit.thread
  %.b.i218 = load i1, ptr @hwloc__xml_verbose.checked, align 4
  br i1 %.b.i218, label %hwloc__xml_verbose.exit220, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.xv = call ptr @getenv(ptr noundef nonnull @.str) #26 ; 2 uses
  %.not.i219 = icmp eq ptr %i.xv, null
  br i1 %.not.i219, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.xw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.xv, ptr noundef null, i32 noundef 10) #26, !inline_history !11
  %i.xx = trunc i64 %i.xw to i32
  store i32 %i.xx, ptr @hwloc__xml_verbose.verbose, align 4, !tbaa !12
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  store i1 true, ptr @hwloc__xml_verbose.checked, align 4
  br label %hwloc__xml_verbose.exit220

hwloc__xml_verbose.exit220:                       ; preds = %bb.ii, %bb.il
  %i.xy = load i32, ptr @hwloc__xml_verbose.verbose, align 4, !tbaa !12
  %.not180 = icmp eq i32 %i.xy, 0
  br i1 %.not180, label %bb.in, label %bb.im

bb.im:                                            ; preds = %hwloc__xml_verbose.exit220
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.ya = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !35
  %i.yc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xz, ptr noundef nonnull @.str.156, ptr noundef %i.yb) #28 ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %hwloc__xml_verbose.exit220, %bb.im, %bb.hz, %bb.ia, %bb.hw, %bb.hx, %bb.hc, %bb.hd, %hwloc__xml_verbose.exit, %bb.m
  %.1 = phi ptr [ %.0135, %bb.im ], [ %.0135, %hwloc__xml_verbose.exit220 ], [ %i.ab, %bb.m ], [ %i.ab, %hwloc__xml_verbose.exit ], [ %i.br, %bb.ia ], [ %i.br, %bb.hz ], [ %i.br, %bb.hx ], [ %i.br, %bb.hw ], [ %i.br, %bb.hd ], [ %i.br, %bb.hc ] ; 6 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.1, i64 120 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !296
  call void @hwloc_free_object_siblings_and_children(ptr noundef %i.ye) #26
  store ptr null, ptr %i.yd, align 8, !tbaa !296
  %i.yf = getelementptr inbounds nuw i8, ptr %.1, i64 144 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !41
  call void @hwloc_free_object_siblings_and_children(ptr noundef %i.yg) #26
  store ptr null, ptr %i.yf, align 8, !tbaa !41
  %i.yh = getelementptr inbounds nuw i8, ptr %.1, i64 160 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !297
  call void @hwloc_free_object_siblings_and_children(ptr noundef %i.yi) #26
  store ptr null, ptr %i.yh, align 8, !tbaa !297
  %i.yj = getelementptr inbounds nuw i8, ptr %.1, i64 176 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !298
  call void @hwloc_free_object_siblings_and_children(ptr noundef %i.yk) #26
  store ptr null, ptr %i.yj, align 8, !tbaa !298
  %i.yl = getelementptr inbounds nuw i8, ptr %.1, i64 184
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !170 ; 2 uses
end_hunk_2
