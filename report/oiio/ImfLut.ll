inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_57RgbaLut5applyEPNS_4RgbaEiiRKN9Imath_3_13BoxINS3_4Vec2IiEEEE:bb.a
  %i.mn = getelementptr inbounds [8 x i8], ptr %.03446.us47.us, i64 %i.r ; 5 uses
  %i.mo = add i32 %.03545.us48.us, 1
  %.sroa.06.0.copyload.us.us.1 = load i16, ptr %i.mn, align 2, !tbaa !11
  %i.mp = zext i16 %.sroa.06.0.copyload.us.us.1 to i64
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.mp
  %.sroa.0.0.copyload.i.us.us.1 = load i16, ptr %i.mq, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i.us.us.1, ptr %i.mn, align 2, !tbaa !11
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 4 ; 2 uses
  %.sroa.02.0.copyload.us49.us.1 = load i16, ptr %i.mr, align 2, !tbaa !11
  %i.ms = zext i16 %.sroa.02.0.copyload.us49.us.1 to i64
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.ms
  %.sroa.0.0.copyload.i42.us50.us.1 = load i16, ptr %i.mt, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i42.us50.us.1, ptr %i.mr, align 2, !tbaa !11
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 6 ; 2 uses
  %.sroa.0.0.copyload.us51.us.1 = load i16, ptr %i.mu, align 2, !tbaa !11
  %i.mv = zext i16 %.sroa.0.0.copyload.us51.us.1 to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.mv
  %.sroa.0.0.copyload.i43.us52.us.1 = load i16, ptr %i.mw, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i43.us52.us.1, ptr %i.mu, align 2, !tbaa !11
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.r
  %i.my = add i32 %.03545.us48.us, 2
  %exitcond167.not.1 = icmp eq i32 %i.mo, %i.l
  br i1 %exitcond167.not.1, label %._crit_edge.split.split.us.us.split.split, label %.lr.ph.us71.new, !llvm.loop !42

._crit_edge.split.split.us.us.split.split:        ; preds = %.lr.ph.us71.new, %.prol.loopexit251
  %i.mz = getelementptr inbounds [8 x i8], ptr %.065.us72, i64 %i.s
  %i.na = add i32 %.03364.us73, 1
  %exitcond168.not = icmp eq i32 %.03364.us73, %i.g
  br i1 %exitcond168.not, label %._crit_edge68.split, label %.lr.ph.us71, !llvm.loop !43

.lr.ph67.split.split.split:                       ; preds = %.lr.ph67.split.split
  br i1 %.not39, label %.lr.ph67.split.split.split.split.us, label %.lr.ph

.lr.ph67.split.split.split.split.us:              ; preds = %.lr.ph67.split.split.split
  br i1 %.not40, label %.lr.ph.us75.us.preheader, label %.lr.ph.us75.preheader

.lr.ph.us75.preheader:                            ; preds = %.lr.ph67.split.split.split.split.us
  %i.nb = add i32 %i.l, %i.i
  %i.nc = and i32 %i.nb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.nc, 0
  %i.nd = add i32 %i.i, 1
  %i.ne = icmp eq i32 %i.l, %i.i
  br label %.lr.ph.us75

.lr.ph.us75.us.preheader:                         ; preds = %.lr.ph67.split.split.split.split.us
  %i.nf = add i32 %i.l, %i.i
  %i.ng = and i32 %i.nf, 1
  %lcmp.mod249.not.not = icmp eq i32 %i.ng, 0
  %i.nh = add i32 %i.i, 1
  %i.ni = icmp eq i32 %i.l, %i.i
  br label %.lr.ph.us75.us

.lr.ph.us75.us:                                   ; preds = %.lr.ph.us75.us.preheader, %._crit_edge.split.split.split.us.split.us.us.us
  %.065.us76.us = phi ptr [ %i.of, %._crit_edge.split.split.split.us.split.us.us.us ], [ %i.e, %.lr.ph.us75.us.preheader ] ; 2 uses
  %.03364.us77.us = phi i32 [ %i.og, %._crit_edge.split.split.split.us.split.us.us.us ], [ %i.b, %.lr.ph.us75.us.preheader ] ; 2 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %.065.us76.us, i64 %i.k ; 5 uses
  %i.nk = load ptr, ptr %0, align 8               ; 6 uses
  br i1 %lcmp.mod249.not.not, label %.prol.loopexit247.unr-lcssa, label %.prol.loopexit247

.prol.loopexit247.unr-lcssa:                      ; preds = %.lr.ph.us75.us
  %.sroa.06.0.copyload.us56.us.us.us.prol = load i16, ptr %i.nj, align 2, !tbaa !11
  %i.nl = zext i16 %.sroa.06.0.copyload.us56.us.us.us.prol to i64
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %i.nl
  %.sroa.0.0.copyload.i.us57.us.us.us.prol = load i16, ptr %i.nm, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i.us57.us.us.us.prol, ptr %i.nj, align 2, !tbaa !11
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 2 ; 2 uses
  %.sroa.04.0.copyload.us58.us.us.us.prol = load i16, ptr %i.nn, align 2, !tbaa !11
  %i.no = zext i16 %.sroa.04.0.copyload.us58.us.us.us.prol to i64
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %i.no
  %.sroa.0.0.copyload.i41.us59.us.us.us.prol = load i16, ptr %i.np, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i41.us59.us.us.us.prol, ptr %i.nn, align 2, !tbaa !11
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %i.r
  br label %.prol.loopexit247

.prol.loopexit247:                                ; preds = %.prol.loopexit247.unr-lcssa, %.lr.ph.us75.us
  %.03446.us54.us.us.us.unr = phi ptr [ %i.nj, %.lr.ph.us75.us ], [ %i.nq, %.prol.loopexit247.unr-lcssa ]
  %.03545.us55.us.us.us.unr = phi i32 [ %i.i, %.lr.ph.us75.us ], [ %i.nh, %.prol.loopexit247.unr-lcssa ]
  br i1 %i.ni, label %._crit_edge.split.split.split.us.split.us.us.us, label %.lr.ph.us75.us.new

.lr.ph.us75.us.new:                               ; preds = %.prol.loopexit247, %.lr.ph.us75.us.new
  %.03446.us54.us.us.us = phi ptr [ %i.od, %.lr.ph.us75.us.new ], [ %.03446.us54.us.us.us.unr, %.prol.loopexit247 ] ; 4 uses
  %.03545.us55.us.us.us = phi i32 [ %i.oe, %.lr.ph.us75.us.new ], [ %.03545.us55.us.us.us.unr, %.prol.loopexit247 ] ; 2 uses
  %.sroa.06.0.copyload.us56.us.us.us = load i16, ptr %.03446.us54.us.us.us, align 2, !tbaa !11
  %i.nr = zext i16 %.sroa.06.0.copyload.us56.us.us.us to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %i.nr
  %.sroa.0.0.copyload.i.us57.us.us.us = load i16, ptr %i.ns, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i.us57.us.us.us, ptr %.03446.us54.us.us.us, align 2, !tbaa !11
  %i.nt = getelementptr inbounds nuw i8, ptr %.03446.us54.us.us.us, i64 2 ; 2 uses
  %.sroa.04.0.copyload.us58.us.us.us = load i16, ptr %i.nt, align 2, !tbaa !11
  %i.nu = zext i16 %.sroa.04.0.copyload.us58.us.us.us to i64
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %i.nu
  %.sroa.0.0.copyload.i41.us59.us.us.us = load i16, ptr %i.nv, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i41.us59.us.us.us, ptr %i.nt, align 2, !tbaa !11
  %i.nw = getelementptr inbounds [8 x i8], ptr %.03446.us54.us.us.us, i64 %i.r ; 4 uses
  %i.nx = add i32 %.03545.us55.us.us.us, 1
  %.sroa.06.0.copyload.us56.us.us.us.1 = load i16, ptr %i.nw, align 2, !tbaa !11
  %i.ny = zext i16 %.sroa.06.0.copyload.us56.us.us.us.1 to i64
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %i.ny
  %.sroa.0.0.copyload.i.us57.us.us.us.1 = load i16, ptr %i.nz, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i.us57.us.us.us.1, ptr %i.nw, align 2, !tbaa !11
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 2 ; 2 uses
  %.sroa.04.0.copyload.us58.us.us.us.1 = load i16, ptr %i.oa, align 2, !tbaa !11
  %i.ob = zext i16 %.sroa.04.0.copyload.us58.us.us.us.1 to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.nk, i64 %i.ob
  %.sroa.0.0.copyload.i41.us59.us.us.us.1 = load i16, ptr %i.oc, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i41.us59.us.us.us.1, ptr %i.oa, align 2, !tbaa !11
  %i.od = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.r
  %i.oe = add i32 %.03545.us55.us.us.us, 2
  %exitcond165.not.1 = icmp eq i32 %i.nx, %i.l
  br i1 %exitcond165.not.1, label %._crit_edge.split.split.split.us.split.us.us.us, label %.lr.ph.us75.us.new, !llvm.loop !42

._crit_edge.split.split.split.us.split.us.us.us:  ; preds = %.lr.ph.us75.us.new, %.prol.loopexit247
  %i.of = getelementptr inbounds [8 x i8], ptr %.065.us76.us, i64 %i.s
  %i.og = add i32 %.03364.us77.us, 1
  %exitcond166.not = icmp eq i32 %.03364.us77.us, %i.g
  br i1 %exitcond166.not, label %._crit_edge68.split, label %.lr.ph.us75.us, !llvm.loop !43

.lr.ph.us75:                                      ; preds = %.lr.ph.us75.preheader, %._crit_edge.split.split.split.us.split.us86
  %.065.us76 = phi ptr [ %i.pm, %._crit_edge.split.split.split.us.split.us86 ], [ %i.e, %.lr.ph.us75.preheader ] ; 2 uses
  %.03364.us77 = phi i32 [ %i.pn, %._crit_edge.split.split.split.us.split.us86 ], [ %i.b, %.lr.ph.us75.preheader ] ; 2 uses
  %i.oh = getelementptr inbounds [8 x i8], ptr %.065.us76, i64 %i.k ; 6 uses
  %i.oi = load ptr, ptr %0, align 8               ; 9 uses
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us75
  %.sroa.06.0.copyload.us56.us81.prol = load i16, ptr %i.oh, align 2, !tbaa !11
  %i.oj = zext i16 %.sroa.06.0.copyload.us56.us81.prol to i64
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.oj
  %.sroa.0.0.copyload.i.us57.us82.prol = load i16, ptr %i.ok, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i.us57.us82.prol, ptr %i.oh, align 2, !tbaa !11
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 2 ; 2 uses
  %.sroa.04.0.copyload.us58.us83.prol = load i16, ptr %i.ol, align 2, !tbaa !11
  %i.om = zext i16 %.sroa.04.0.copyload.us58.us83.prol to i64
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.om
  %.sroa.0.0.copyload.i41.us59.us84.prol = load i16, ptr %i.on, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i41.us59.us84.prol, ptr %i.ol, align 2, !tbaa !11
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 6 ; 2 uses
  %.sroa.0.0.copyload.us60.us.prol = load i16, ptr %i.oo, align 2, !tbaa !11
  %i.op = zext i16 %.sroa.0.0.copyload.us60.us.prol to i64
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.op
  %.sroa.0.0.copyload.i43.us61.us.prol = load i16, ptr %i.oq, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i43.us61.us.prol, ptr %i.oo, align 2, !tbaa !11
  %i.or = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.r
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us75
  %.03446.us54.us79.unr = phi ptr [ %i.oh, %.lr.ph.us75 ], [ %i.or, %.prol.loopexit.unr-lcssa ]
  %.03545.us55.us80.unr = phi i32 [ %i.i, %.lr.ph.us75 ], [ %i.nd, %.prol.loopexit.unr-lcssa ]
  br i1 %i.ne, label %._crit_edge.split.split.split.us.split.us86, label %.lr.ph.us75.new

.lr.ph.us75.new:                                  ; preds = %.prol.loopexit, %.lr.ph.us75.new
  %.03446.us54.us79 = phi ptr [ %i.pk, %.lr.ph.us75.new ], [ %.03446.us54.us79.unr, %.prol.loopexit ] ; 5 uses
  %.03545.us55.us80 = phi i32 [ %i.pl, %.lr.ph.us75.new ], [ %.03545.us55.us80.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.06.0.copyload.us56.us81 = load i16, ptr %.03446.us54.us79, align 2, !tbaa !11
  %i.os = zext i16 %.sroa.06.0.copyload.us56.us81 to i64
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.os
  %.sroa.0.0.copyload.i.us57.us82 = load i16, ptr %i.ot, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i.us57.us82, ptr %.03446.us54.us79, align 2, !tbaa !11
  %i.ou = getelementptr inbounds nuw i8, ptr %.03446.us54.us79, i64 2 ; 2 uses
  %.sroa.04.0.copyload.us58.us83 = load i16, ptr %i.ou, align 2, !tbaa !11
  %i.ov = zext i16 %.sroa.04.0.copyload.us58.us83 to i64
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.ov
  %.sroa.0.0.copyload.i41.us59.us84 = load i16, ptr %i.ow, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i41.us59.us84, ptr %i.ou, align 2, !tbaa !11
  %i.ox = getelementptr inbounds nuw i8, ptr %.03446.us54.us79, i64 6 ; 2 uses
  %.sroa.0.0.copyload.us60.us = load i16, ptr %i.ox, align 2, !tbaa !11
  %i.oy = zext i16 %.sroa.0.0.copyload.us60.us to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.oy
  %.sroa.0.0.copyload.i43.us61.us = load i16, ptr %i.oz, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i43.us61.us, ptr %i.ox, align 2, !tbaa !11
  %i.pa = getelementptr inbounds [8 x i8], ptr %.03446.us54.us79, i64 %i.r ; 5 uses
  %i.pb = add i32 %.03545.us55.us80, 1
  %.sroa.06.0.copyload.us56.us81.1 = load i16, ptr %i.pa, align 2, !tbaa !11
  %i.pc = zext i16 %.sroa.06.0.copyload.us56.us81.1 to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.pc
  %.sroa.0.0.copyload.i.us57.us82.1 = load i16, ptr %i.pd, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i.us57.us82.1, ptr %i.pa, align 2, !tbaa !11
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 2 ; 2 uses
  %.sroa.04.0.copyload.us58.us83.1 = load i16, ptr %i.pe, align 2, !tbaa !11
  %i.pf = zext i16 %.sroa.04.0.copyload.us58.us83.1 to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.pf
  %.sroa.0.0.copyload.i41.us59.us84.1 = load i16, ptr %i.pg, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i41.us59.us84.1, ptr %i.pe, align 2, !tbaa !11
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 6 ; 2 uses
  %.sroa.0.0.copyload.us60.us.1 = load i16, ptr %i.ph, align 2, !tbaa !11
  %i.pi = zext i16 %.sroa.0.0.copyload.us60.us.1 to i64
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %i.pi
  %.sroa.0.0.copyload.i43.us61.us.1 = load i16, ptr %i.pj, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i43.us61.us.1, ptr %i.ph, align 2, !tbaa !11
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.r
  %i.pl = add i32 %.03545.us55.us80, 2
  %exitcond163.not.1 = icmp eq i32 %i.pb, %i.l
  br i1 %exitcond163.not.1, label %._crit_edge.split.split.split.us.split.us86, label %.lr.ph.us75.new, !llvm.loop !42

._crit_edge.split.split.split.us.split.us86:      ; preds = %.lr.ph.us75.new, %.prol.loopexit
  %i.pm = getelementptr inbounds [8 x i8], ptr %.065.us76, i64 %i.s
  %i.pn = add i32 %.03364.us77, 1
  %exitcond164.not = icmp eq i32 %.03364.us77, %i.g
  br i1 %exitcond164.not, label %._crit_edge68.split, label %.lr.ph.us75, !llvm.loop !43

._crit_edge68.split:                              ; preds = %._crit_edge.split.split.split, %._crit_edge.split.split.split.us.split.us86, %._crit_edge.split.split.split.us.split.us.us.us, %._crit_edge.split.split.us.us.split.split, %._crit_edge.split.split.us.us.split.split.us.us, %._crit_edge.split.split.us.us.split.us.split.us98, %._crit_edge.split.split.us.us.split.us.split.us.us.us, %._crit_edge.split.us.us.split.split.split, %._crit_edge.split.us.us.split.split.split.us.us, %._crit_edge.split.us.us.split.split.us.split.us139, %._crit_edge.split.us.us.split.split.us.split.us.us.us, %._crit_edge.split.us.us.split.us.split.split.us126, %._crit_edge.split.us.us.split.us.split.split.us.us.us, %._crit_edge.split.us.us.split.us.split.us.us.us, %.lr.ph67, %.lr.ph67.split.split.us.split.us.split.us, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph67.split.split.split, %._crit_edge.split.split.split
  %.065 = phi ptr [ %i.pq, %._crit_edge.split.split.split ], [ %i.e, %.lr.ph67.split.split.split ] ; 2 uses
  %.03364 = phi i32 [ %i.pr, %._crit_edge.split.split.split ], [ %i.b, %.lr.ph67.split.split.split ] ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %.065, i64 %i.k
  %i.pp = load ptr, ptr %0, align 8               ; 4 uses
  br label %bb.b

._crit_edge.split.split.split:                    ; preds = %bb.d
  %i.pq = getelementptr inbounds [8 x i8], ptr %.065, i64 %i.s
  %i.pr = add i32 %.03364, 1
  %exitcond162.not = icmp eq i32 %.03364, %i.g
  br i1 %exitcond162.not, label %._crit_edge68.split, label %.lr.ph, !llvm.loop !43

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.03446 = phi ptr [ %i.po, %.lr.ph ], [ %i.qd, %bb.d ] ; 6 uses
  %.03545 = phi i32 [ %i.i, %.lr.ph ], [ %i.qe, %bb.d ] ; 2 uses
  %.sroa.06.0.copyload = load i16, ptr %.03446, align 2, !tbaa !11
  %i.ps = zext i16 %.sroa.06.0.copyload to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %i.ps
  %.sroa.0.0.copyload.i = load i16, ptr %i.pt, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i, ptr %.03446, align 2, !tbaa !11
  %i.pu = getelementptr inbounds nuw i8, ptr %.03446, i64 2 ; 2 uses
  %.sroa.04.0.copyload = load i16, ptr %i.pu, align 2, !tbaa !11
  %i.pv = zext i16 %.sroa.04.0.copyload to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %i.pv
  %.sroa.0.0.copyload.i41 = load i16, ptr %i.pw, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i41, ptr %i.pu, align 2, !tbaa !11
  %i.px = getelementptr inbounds nuw i8, ptr %.03446, i64 4 ; 2 uses
  %.sroa.02.0.copyload = load i16, ptr %i.px, align 2, !tbaa !11
  %i.py = zext i16 %.sroa.02.0.copyload to i64
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %i.py
  %.sroa.0.0.copyload.i42 = load i16, ptr %i.pz, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i42, ptr %i.px, align 2, !tbaa !11
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.qa = getelementptr inbounds nuw i8, ptr %.03446, i64 6 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.qa, align 2, !tbaa !11
  %i.qb = zext i16 %.sroa.0.0.copyload to i64
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %i.qb
  %.sroa.0.0.copyload.i43 = load i16, ptr %i.qc, align 2, !tbaa !11
  store i16 %.sroa.0.0.copyload.i43, ptr %i.qa, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.qd = getelementptr inbounds [8 x i8], ptr %.03446, i64 %i.r
  %i.qe = add i32 %.03545, 1
  %exitcond.not = icmp eq i32 %.03545, %i.l
  br i1 %exitcond.not, label %._crit_edge.split.split.split, label %bb.b, !llvm.loop !42
}

; Function Attrs: mustprogress uwtable
define i16 @_ZN27OpenImageIO_v3_1_Imf__3_3_510round12logEN9Imath_3_14halfE(i16 %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !47
  %i.b = zext i16 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !49 ; 2 uses
  %i.e = fcmp ugt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %_ZN9Imath_3_14halfC2Ef.exit

bb.b:                                             ; preds = %bb.a
  %i.f = fdiv float %i.d, f0x3E3504F3
  %i.g = tail call noundef float @logf(float noundef %i.f) #5, !tbaa !3
  %i.h = fpext float %i.g to double
  %i.i = fmul double %i.h, 2.000000e+02
  %i.j = fdiv double %i.i, f0x3FE62E42FEFA39EF
  %i.k = fadd double %i.j, 2.000500e+03
  %i.l = fptosi double %i.k to i32
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 4095)
  %i.o = add nsw i32 %i.n, -2000
  %i.p = sitofp i32 %i.o to double
  %i.q = fdiv double %i.p, 2.000000e+02
  %exp2 = tail call double @exp2(double %i.q)
  %i.r = fmul double %exp2, f0x3FC6A09E60000000
  %i.s = fptrunc double %i.r to float             ; 2 uses
  %i.t = bitcast float %i.s to i32
  %i.u = tail call float @llvm.fabs.f32(float %i.s)
  %i.v = bitcast float %i.u to i32                ; 10 uses
  %i.w = lshr i32 %i.t, 16                        ; 3 uses
  %i.x = trunc nuw i32 %i.w to i16
  %i.y = and i16 %i.x, -32768                     ; 3 uses
  %i.z = icmp samesign ugt i32 %i.v, 947912703
  br i1 %i.z, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp samesign ugt i32 %i.v, 2139095039
  br i1 %i.aa, label %bb.d, label %bb.f, !prof !50

bb.d:                                             ; preds = %bb.c
  %i.ab = or disjoint i16 %i.y, 31744             ; 2 uses
  %i.ac = icmp eq i32 %i.v, 2139095040
  br i1 %i.ac, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = lshr i32 %i.v, 13
  %i.ae = and i32 %i.ad, 1023                     ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i16
  %i.ah = trunc nuw nsw i32 %i.ae to i16
  %i.ai = or i16 %i.ah, %i.ag
  %i.aj = or disjoint i16 %i.ai, %i.ab
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.f:                                             ; preds = %bb.c
  %i.ak = icmp samesign ugt i32 %i.v, 1199566847
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !50

bb.g:                                             ; preds = %bb.f
  %i.al = or disjoint i16 %i.y, 31744
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.h:                                             ; preds = %bb.f
  %i.am = add nuw nsw i32 %i.v, 134221823
  %i.an = lshr i32 %i.v, 13
  %i.ao = and i32 %i.an, 1
  %i.ap = add nuw nsw i32 %i.am, %i.ao
  %i.aq = lshr i32 %i.ap, 13
  %i.ar = and i32 %i.w, 32768
  %i.as = or i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i16
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.i:                                             ; preds = %bb.b
  %i.au = icmp samesign ult i32 %i.v, 855638017
  br i1 %i.au, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = lshr i32 %i.v, 23                       ; 2 uses
  %i.aw = sub nuw nsw i32 126, %i.av
  %i.ax = and i32 %i.v, 8388607
  %i.ay = or disjoint i32 %i.ax, 8388608          ; 2 uses
  %i.az = add nsw i32 %i.av, -94
  %i.ba = shl i32 %i.ay, %i.az                    ; 2 uses
  %i.bb = lshr i32 %i.ay, %i.aw                   ; 2 uses
  %i.bc = and i32 %i.w, 32768
  %i.bd = or i32 %i.bb, %i.bc
  %i.be = trunc nuw i32 %i.bd to i16              ; 2 uses
  %i.bf = icmp ugt i32 %i.ba, -2147483648
  br i1 %i.bf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp ne i32 %i.ba, -2147483648
  %i.bh = and i32 %i.bb, 1
  %.not.i.i = icmp eq i32 %i.bh, 0
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = add nuw i16 %i.be, 1
  br label %_ZN9Imath_3_14halfC2Ef.exit

_ZN9Imath_3_14halfC2Ef.exit:                      ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %.sroa.06.0 = phi i16 [ 0, %bb.a ], [ %i.y, %bb.i ], [ %i.aj, %bb.e ], [ %i.al, %bb.g ], [ %i.at, %bb.h ], [ %i.ab, %bb.d ], [ %i.bi, %bb.l ], [ %i.be, %bb.k ]
  ret i16 %.sroa.06.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS12halfFunctionIN9Imath_3_14halfEE", !9, i64 0}
!9 = !{!"p1 _ZTSN9Imath_3_14halfE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !5, i64 0}
end_hunk_0
