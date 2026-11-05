Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_display?download=true
inline.NumInlined: 1324
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_atomic_check:bb.a
  %.val53.i.pre = load i32, ptr %i.bd, align 8
  %.phi.trans.insert714.a = zext i32 %.val53.i.pre to i64
  %.phi.trans.insert715 = getelementptr [56 x i8], ptr %.val.i.pre, i64 %.phi.trans.insert714.a
  %.phi.trans.insert716 = getelementptr i8, ptr %.phi.trans.insert715, i64 24
  %.pre717 = load ptr, ptr %.phi.trans.insert716, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bk = phi ptr [ %.pre717, %bb.ab ], [ %i.bh, %bb.aa ] ; 4 uses
  %i.bl = phi ptr [ %i.bj, %bb.ab ], [ null, %bb.aa ] ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 308
  %i.bn = load i8, ptr %i.bm, align 4, !range !34, !noundef !35
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ad, label %intel_async_flip_check_uapi.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr i8, ptr %i.bk, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !range !34, !noundef !35
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.af, %bb.ae
  %i.bv = phi ptr [ %i.bu, %bb.af ], [ null, %bb.ae ]
  %i.bw = getelementptr i8, ptr %.pn291, i64 -1560
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %.pn291, i64 -1616
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bv, i32 noundef 2, ptr noundef @.str.263, i32 noundef %i.bx, ptr noundef %i.bz) #24
  br label %intel_async_flip_check_uapi.exit.thread

bb.ag:                                            ; preds = %bb.ad
  %i.ca = getelementptr i8, ptr %i.bk, i64 10
  %.val54.i = load i8, ptr %i.ca, align 2
  %i.cb = and i8 %.val54.i, 14
  %.not63.i = icmp eq i8 %i.cb, 0
  br i1 %.not63.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i55.i = icmp eq ptr %i.cc, null
  br i1 %.not.i55.i, label %__drm_to_dev.exit56.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  br label %__drm_to_dev.exit56.i

__drm_to_dev.exit56.i:                            ; preds = %bb.ai, %bb.ah
  %i.cf = phi ptr [ %i.ce, %bb.ai ], [ null, %bb.ah ]
  %i.cg = getelementptr i8, ptr %.pn291, i64 -1560
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %.pn291, i64 -1616
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cf, i32 noundef 2, ptr noundef @.str.264, i32 noundef %i.ch, ptr noundef %i.cj) #24
  br label %intel_async_flip_check_uapi.exit.thread

bb.aj:                                            ; preds = %bb.ag
  %i.ck = getelementptr i8, ptr %i.bk, i64 4403
  %i.cl = load i8, ptr %i.ck, align 1
  %.not47.i = icmp eq i8 %i.cl, 0
  br i1 %.not47.i, label %.preheader.i, label %bb.ak

.preheader.i:                                     ; preds = %bb.aj
  %i.cm = load ptr, ptr %i.f, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 640
  %i.co = load i32, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i, label %intel_async_flip_check_uapi.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cq = load ptr, ptr %i.ay, align 8
  %i.cr = getelementptr i8, ptr %.pn291, i64 16
  %wide.trip.count.i = zext nneg i32 %i.co to i64
  br label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cs = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i57.i = icmp eq ptr %i.cs, null
  br i1 %.not.i57.i, label %__drm_to_dev.exit58.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %__drm_to_dev.exit58.i

__drm_to_dev.exit58.i:                            ; preds = %bb.al, %bb.ak
  %i.cv = phi ptr [ %i.cu, %bb.al ], [ null, %bb.ak ]
  %i.cw = getelementptr i8, ptr %.pn291, i64 -1560
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = getelementptr i8, ptr %.pn291, i64 -1616
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cv, i32 noundef 2, ptr noundef @.str.265, i32 noundef %i.cx, ptr noundef %i.cz) #24
  br label %intel_async_flip_check_uapi.exit.thread

bb.am:                                            ; preds = %bb.av, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.av ] ; 2 uses
  %i.da = getelementptr [32 x i8], ptr %i.cq, i64 %indvars.iv.i ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 7 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr i8, ptr %i.da, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %.not48.i = icmp eq ptr %i.db, null
  br i1 %.not48.i, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dg = getelementptr i8, ptr %i.db, i64 1360
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = load i32, ptr %i.cr, align 8
  %.not49.i = icmp eq i32 %i.dh, %i.di
  br i1 %.not49.i, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.dj = getelementptr i8, ptr %i.db, i64 1504
  %i.dk = load ptr, ptr %i.dj, align 8
  %.not50.i = icmp eq ptr %i.dk, null
  br i1 %.not50.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i59.i = icmp eq ptr %i.dl, null
  br i1 %.not.i59.i, label %__drm_to_dev.exit60.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  br label %__drm_to_dev.exit60.i

__drm_to_dev.exit60.i:                            ; preds = %bb.aq, %bb.ap
  %i.do = phi ptr [ %i.dn, %bb.aq ], [ null, %bb.ap ]
  %i.dp = getelementptr i8, ptr %i.db, i64 80
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %i.db, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.do, i32 noundef 2, ptr noundef @.str.266, i32 noundef %i.dq, ptr noundef %i.ds) #24
  br label %intel_async_flip_check_uapi.exit.thread

bb.ar:                                            ; preds = %bb.ao
  %i.dt = getelementptr i8, ptr %i.dd, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %.not51.i = icmp eq ptr %i.du, null
  br i1 %.not51.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = getelementptr i8, ptr %i.df, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %.not52.i = icmp eq ptr %i.dw, null
  br i1 %.not52.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dx = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i61.i = icmp eq ptr %i.dx, null
  br i1 %.not.i61.i, label %__drm_to_dev.exit62.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  br label %__drm_to_dev.exit62.i

__drm_to_dev.exit62.i:                            ; preds = %bb.au, %bb.at
  %i.ea = phi ptr [ %i.dz, %bb.au ], [ null, %bb.at ]
  %i.eb = getelementptr i8, ptr %i.db, i64 80
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %i.db, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ea, i32 noundef 2, ptr noundef @.str.267, i32 noundef %i.ec, ptr noundef %i.ee) #24
  br label %intel_async_flip_check_uapi.exit.thread

bb.av:                                            ; preds = %bb.as, %bb.an, %bb.am
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %intel_async_flip_check_uapi.exit, label %bb.am, !llvm.loop !283

intel_async_flip_check_uapi.exit:                 ; preds = %bb.av, %.preheader.i, %bb.ac, %bb.z
  br label %bb.w, !llvm.loop !284

bb.aw:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false), !annotation !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @intel_link_bw_init_limits(ptr noundef %1, ptr noundef nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  %i.ef = getelementptr i8, ptr %1, i64 48        ; 8 uses
  %i.eg = getelementptr i8, ptr %1, i64 56        ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %select.unfold.i.backedge, %bb.aw
  %i.el = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i.i376 = icmp eq ptr %i.el, null
  br i1 %.not.i.i376, label %.thread.i, label %bb.ax

bb.ax:                                            ; preds = %select.unfold.i
  %i.em = call ptr @__drm_to_display(ptr noundef nonnull %i.el) #24 ; 2 uses
  %.pr.i = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.en = call ptr @__drm_to_display(ptr noundef nonnull %.pr.i) #24
  %.pre.i.i.i = load ptr, ptr %i.f, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ay, %bb.ax, %select.unfold.i
  %i.eo = phi ptr [ %i.em, %bb.ay ], [ %i.em, %bb.ax ], [ null, %select.unfold.i ] ; 6 uses
  %i.ep = phi ptr [ %.pre.i.i.i, %bb.ay ], [ null, %bb.ax ], [ null, %select.unfold.i ] ; 3 uses
  %i.eq = phi ptr [ %i.en, %bb.ay ], [ null, %bb.ax ], [ null, %select.unfold.i ]
  %i.er = getelementptr i8, ptr %i.ep, i64 640
  %i.es = load i32, ptr %i.er, align 8
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i, %bb.bb
  %i.eu = phi ptr [ %i.fe, %bb.bb ], [ %i.ep, %.thread.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bb ], [ 0, %.thread.i ] ; 2 uses
  %i.ev = load ptr, ptr %i.ay, align 8
  %i.ew = getelementptr [32 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %.not128.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not128.i.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.ey = getelementptr i8, ptr %i.ew, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 184
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not129.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not129.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fc = call ptr @intel_atomic_get_crtc_state(ptr noundef %1, ptr noundef nonnull %i.fb) #24 ; 2 uses
  %i.fd = icmp ugt ptr %i.fc, inttoptr (i64 -4096 to ptr)
  br i1 %i.fd, label %intel_joiner_add_affected_crtcs.exit.i.i, label %._crit_edge176.i.i.i

._crit_edge176.i.i.i:                             ; preds = %bb.ba
  %.pre177.i.i.i = load ptr, ptr %i.f, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge176.i.i.i, %bb.az, %.lr.ph.i.i.i
  %i.fe = phi ptr [ %.pre177.i.i.i, %._crit_edge176.i.i.i ], [ %i.eu, %.lr.ph.i.i.i ], [ %i.eu, %bb.az ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 640
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next.i.i.i, %i.fh
  br i1 %i.fi, label %.lr.ph.i.i.i, label %.critedge.i.i.i, !llvm.loop !285

.critedge.i.i.i:                                  ; preds = %bb.bb, %.thread.i
  %.lcssa144.i.i.i = phi ptr [ %i.ep, %.thread.i ], [ %i.fe, %bb.bb ] ; 2 uses
  %.not111.i.i.i = icmp eq ptr %.lcssa144.i.i.i, null
  br i1 %.not111.i.i.i, label %.split.us.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i.i
  %i.fj = call ptr @__drm_to_display(ptr noundef nonnull %.lcssa144.i.i.i) #24
  %.pre178.i.i.i = load ptr, ptr %i.f, align 8    ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 40     ; 2 uses
  %i.fl = icmp eq ptr %.pre178.i.i.i, null
  br i1 %i.fl, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.bc, %.critedge.i.i.i
  %i.fm = phi ptr [ %i.fk, %bb.bc ], [ inttoptr (i64 40 to ptr), %.critedge.i.i.i ]
  %.pn.us151.i.i.i = load ptr, ptr %i.fm, align 8 ; 2 uses
  %.not137.us152.i.i.i = icmp eq ptr %.pn.us151.i.i.i, inttoptr (i64 40 to ptr)
  br i1 %.not137.us152.i.i.i, label %.split149.us.i.i.i, label %.lr.ph156.i.i.i

.lr.ph156.i.i.i:                                  ; preds = %.split.us.i.i.i
  %.val131.us.i.i.i = load ptr, ptr %i.k, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %.lr.ph156.i.i.i
  %.pn.us155.i.i.i = phi ptr [ %.pn.us151.i.i.i, %.lr.ph156.i.i.i ], [ %.pn.us.i.i.i, %bb.bf ] ; 2 uses
  %.095.us154.i.i.i = phi i8 [ 0, %.lr.ph156.i.i.i ], [ %.196.us.i.i.i, %bb.bf ] ; 2 uses
  %.097.us153.i.i.i = phi i8 [ 0, %.lr.ph156.i.i.i ], [ %.198.us.i.i.i, %bb.bf ] ; 2 uses
  %i.fn = getelementptr i8, ptr %.pn.us155.i.i.i, i64 -1512
  %.091.val.us.i.i.i = load i32, ptr %i.fn, align 8
  %i.fo = zext i32 %.091.val.us.i.i.i to i64
  %i.fp = getelementptr [56 x i8], ptr %.val131.us.i.i.i, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8            ; 3 uses
  %.not127.us.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not127.us.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fs = getelementptr i8, ptr %i.fr, i64 4403
  %i.ft = load i8, ptr %i.fs, align 1             ; 2 uses
  %i.fu = or i8 %i.ft, %.095.us154.i.i.i
  %i.fv = getelementptr i8, ptr %i.fr, i64 10
  %.val133.us.i.i.i = load i8, ptr %i.fv, align 2
  %i.fw = and i8 %.val133.us.i.i.i, 14
  %.not142.us.i.i.i = icmp eq i8 %i.fw, 0
  %i.fx = select i1 %.not142.us.i.i.i, i8 0, i8 %i.ft
  %spec.select.us.i.i.i = or i8 %i.fx, %.097.us153.i.i.i
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.198.us.i.i.i = phi i8 [ %.097.us153.i.i.i, %bb.bd ], [ %spec.select.us.i.i.i, %bb.be ] ; 2 uses
  %.196.us.i.i.i = phi i8 [ %.095.us154.i.i.i, %bb.bd ], [ %i.fu, %bb.be ] ; 2 uses
  %.pn.us.i.i.i = load ptr, ptr %.pn.us155.i.i.i, align 8 ; 2 uses
  %.not137.us.i.i.i = icmp eq ptr %.pn.us.i.i.i, inttoptr (i64 40 to ptr)
  br i1 %.not137.us.i.i.i, label %.split149.us.i.i.i, label %bb.bd, !llvm.loop !286

.split.i.i.i:                                     ; preds = %bb.bc, %bb.bk
  %i.fy = phi ptr [ %.pre179.i.i.i, %bb.bk ], [ %.pre178.i.i.i, %bb.bc ] ; 2 uses
  %.097.i.i.i = phi i8 [ %.198.i.i.i, %bb.bk ], [ 0, %bb.bc ] ; 3 uses
  %.095.i.i.i = phi i8 [ %.196.i.i.i, %bb.bk ], [ 0, %bb.bc ] ; 3 uses
  %.pn.in.i.i.i = phi ptr [ %.pn.i.i.i, %bb.bk ], [ %i.fk, %bb.bc ]
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8 ; 3 uses
  %.not112.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not112.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.split.i.i.i
  %i.fz = call ptr @__drm_to_display(ptr noundef nonnull %i.fy) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.split.i.i.i
  %i.ga = phi ptr [ %i.fz, %bb.bg ], [ null, %.split.i.i.i ]
  %i.gb = getelementptr i8, ptr %i.ga, i64 40
  %.not137.i.i.i = icmp eq ptr %.pn.i.i.i, %i.gb
  br i1 %.not137.i.i.i, label %.split149.us.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val131.i.i.i = load ptr, ptr %i.k, align 8
  %i.gc = getelementptr i8, ptr %.pn.i.i.i, i64 -1512
  %.091.val.i.i.i = load i32, ptr %i.gc, align 8
  %i.gd = zext i32 %.091.val.i.i.i to i64
  %i.ge = getelementptr [56 x i8], ptr %.val131.i.i.i, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8            ; 3 uses
  %.not127.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not127.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gh = getelementptr i8, ptr %i.gg, i64 4403
  %i.gi = load i8, ptr %i.gh, align 1             ; 2 uses
  %i.gj = or i8 %i.gi, %.095.i.i.i
  %i.gk = getelementptr i8, ptr %i.gg, i64 10
  %.val133.i.i.i = load i8, ptr %i.gk, align 2
  %i.gl = and i8 %.val133.i.i.i, 14
  %.not142.i.i.i = icmp eq i8 %i.gl, 0
  %i.gm = select i1 %.not142.i.i.i, i8 0, i8 %i.gi
  %spec.select.i.i.i = or i8 %i.gm, %.097.i.i.i
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.198.i.i.i = phi i8 [ %.097.i.i.i, %bb.bi ], [ %spec.select.i.i.i, %bb.bj ]
  %.196.i.i.i = phi i8 [ %.095.i.i.i, %bb.bi ], [ %i.gj, %bb.bj ]
  %.pre179.i.i.i = load ptr, ptr %i.f, align 8
  br label %.split.i.i.i, !llvm.loop !287

.split149.us.i.i.i:                               ; preds = %bb.bh, %bb.bf, %.split.us.i.i.i
  %.us-phi.i.i.i = phi i8 [ %.198.us.i.i.i, %bb.bf ], [ 0, %.split.us.i.i.i ], [ %.097.i.i.i, %bb.bh ]
  %.us-phi150.i.i.i = phi i8 [ %.196.us.i.i.i, %bb.bf ], [ 0, %.split.us.i.i.i ], [ %.095.i.i.i, %bb.bh ]
  %i.gn = getelementptr i8, ptr %i.eq, i64 40     ; 6 uses
  %.pn114159.i.i.i = load ptr, ptr %i.gn, align 8 ; 3 uses
  %.not138161.i.i.i = icmp eq ptr %.pn114159.i.i.i, %i.gn
  br i1 %.not138161.i.i.i, label %.preheader.i.i.i, label %.lr.ph164.i.i.i

.lr.ph164.i.i.i:                                  ; preds = %.split149.us.i.i.i
  %i.go = zext i8 %.us-phi150.i.i.i to i64
  br label %bb.bl

.preheader.loopexit.i.i.i:                        ; preds = %bb.bn
  %.pn116165.pre.i.i.i = load ptr, ptr %i.gn, align 8
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.loopexit.i.i.i, %.split149.us.i.i.i
  %.pn116165.i.i.i = phi ptr [ %.pn116165.pre.i.i.i, %.preheader.loopexit.i.i.i ], [ %.pn114159.i.i.i, %.split149.us.i.i.i ] ; 2 uses
  %.not139167.i.i.i = icmp eq ptr %.pn116165.i.i.i, %i.gn
  br i1 %.not139167.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph170.i.i.i

.lr.ph170.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.gp = zext i8 %.us-phi.i.i.i to i64
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bn, %.lr.ph164.i.i.i
  %.pn114162.i.i.i = phi ptr [ %.pn114159.i.i.i, %.lr.ph164.i.i.i ], [ %.pn114.i.i.i, %bb.bn ] ; 3 uses
  %i.gq = getelementptr i8, ptr %.pn114162.i.i.i, i64 16
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl nuw i64 1, %i.gs
  %i.gu = and i64 %i.gt, %i.go
  %.not126.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not126.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.192163.i.i.i = getelementptr i8, ptr %.pn114162.i.i.i, i64 -1648
  %i.gv = call ptr @intel_atomic_get_crtc_state(ptr noundef %1, ptr noundef %.192163.i.i.i) #24 ; 2 uses
  %i.gw = icmp ugt ptr %i.gv, inttoptr (i64 -4096 to ptr)
end_hunk_0
begin_hunk_1_@intel_atomic_check:bb.a
  %.not122.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not122.i.i.i, label %intel_crtc_is_joiner_primary.exit.thread.i.i.i.backedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hz = getelementptr i8, ptr %i.hy, i64 10
  %.val132.i.i.i = load i8, ptr %i.hz, align 2
  %i.ia = and i8 %.val132.i.i.i, 14
  %.not141.i.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not141.i.i.i, label %intel_crtc_is_joiner_primary.exit.thread.i.i.i.backedge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ib = getelementptr i8, ptr %i.hy, i64 4403
  %i.ic = load i8, ptr %i.ib, align 1             ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i, label %intel_crtc_is_joiner_primary.exit.thread.i.i.i.backedge, label %intel_crtc_is_joiner_primary.exit.i.i.i

intel_crtc_is_joiner_primary.exit.i.i.i:          ; preds = %bb.by
  %i.id = load ptr, ptr %i.hy, align 8
  %i.ie = getelementptr i8, ptr %i.id, i64 1664
  %i.if = load i32, ptr %i.ie, align 8
  %i.ig = zext i8 %i.ic to i32
  %i.ih = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ig, i32 -1) #23, !srcloc !32
  %i.ii = icmp eq i32 %i.if, %i.ih
  br i1 %i.ii, label %bb.bz, label %intel_crtc_is_joiner_primary.exit.thread.i.i.i.backedge

bb.bz:                                            ; preds = %intel_crtc_is_joiner_primary.exit.i.i.i
  %i.ij = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i134.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i134.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ik = call ptr @__drm_to_display(ptr noundef nonnull %i.ij) #24
  %.val23.i.pre.i.i.i = load ptr, ptr %i.k, align 8
  %.val24.i.pre.i.i.i = load i32, ptr %i.hu, align 8
  %.phi.trans.insert.i.i.i = zext i32 %.val24.i.pre.i.i.i to i64
  %.phi.trans.insert183.i.i.i = getelementptr [56 x i8], ptr %.val23.i.pre.i.i.i, i64 %.phi.trans.insert.i.i.i
  %.phi.trans.insert184.i.i.i = getelementptr i8, ptr %.phi.trans.insert183.i.i.i, i64 24
  %.pre185.i.i.i = load ptr, ptr %.phi.trans.insert184.i.i.i, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.il = phi ptr [ %.pre185.i.i.i, %bb.ca ], [ %i.hy, %bb.bz ] ; 2 uses
  %i.im = phi ptr [ %i.ik, %bb.ca ], [ null, %bb.bz ]
  %i.in = getelementptr i8, ptr %i.im, i64 40     ; 3 uses
  %.pn26.i.i.i.i = load ptr, ptr %i.in, align 8   ; 2 uses
  %.not2528.i.i.i.i = icmp eq ptr %.pn26.i.i.i.i, %i.in
  br i1 %.not2528.i.i.i.i, label %kill_joiner_secondaries.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cb
  %i.io = getelementptr i8, ptr %i.il, i64 4403
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cg, %.lr.ph.i.i.i.i
  %.pn29.i.i.i.i = phi ptr [ %.pn26.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pn.i.i.i.i, %bb.cg ] ; 3 uses
  %i.ip = load i8, ptr %i.io, align 1             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i.i, label %intel_crtc_joiner_secondary_pipes.exit.i.i.i.i, label %joiner_primary_pipe.exit.i.i.i.i.i

joiner_primary_pipe.exit.i.i.i.i.i:               ; preds = %bb.cc
  %i.iq = zext i8 %i.ip to i32
  %i.ir = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iq, i32 -1) #23, !srcloc !32
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = shl nuw i64 1, %i.is
  %i.iu = trunc i64 %i.it to i8
  %i.iv = xor i8 %i.iu, -1
  %i.iw = and i8 %i.ip, %i.iv
  %i.ix = zext i8 %i.iw to i64
  br label %intel_crtc_joiner_secondary_pipes.exit.i.i.i.i

intel_crtc_joiner_secondary_pipes.exit.i.i.i.i:   ; preds = %joiner_primary_pipe.exit.i.i.i.i.i, %bb.cc
  %.0.i.i.i.i.i = phi i64 [ %i.ix, %joiner_primary_pipe.exit.i.i.i.i.i ], [ 0, %bb.cc ]
  %i.iy = getelementptr i8, ptr %.pn29.i.i.i.i, i64 16
  %i.iz = load i32, ptr %i.iy, align 8
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl nuw i64 1, %i.ja
  %i.jc = and i64 %i.jb, %.0.i.i.i.i.i
  %.not22.i.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not22.i.i.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %intel_crtc_joiner_secondary_pipes.exit.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8
  %i.jd = getelementptr i8, ptr %.pn29.i.i.i.i, i64 -1512 ; 3 uses
  %.0.val.i.i.i.i = load i32, ptr %i.jd, align 8
  %i.je = zext i32 %.0.val.i.i.i.i to i64
  %i.jf = getelementptr [56 x i8], ptr %.val.i.i.i.i, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr i8, ptr %i.jh, i64 4403
  store i8 0, ptr %i.ji, align 1
  %.val.i15.i = load ptr, ptr %i.k, align 8
  %.val19.i.i = load i32, ptr %i.jd, align 8
  %i.jj = zext i32 %.val19.i.i to i64
  %i.jk = getelementptr [56 x i8], ptr %.val.i15.i, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jk, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8            ; 14 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 4403
  %i.jo = load i8, ptr %i.jn, align 1             ; 2 uses
  %.not.i.i16.i = icmp eq i8 %i.jo, 0
  br i1 %.not.i.i16.i, label %intel_crtc_copy_uapi_to_hw_state_modeset.exit.i, label %intel_crtc_is_joiner_secondary.exit.i17.i

intel_crtc_is_joiner_secondary.exit.i17.i:        ; preds = %bb.cd
  %i.jp = load ptr, ptr %i.jm, align 8
  %i.jq = getelementptr i8, ptr %i.jp, i64 1664
  %i.jr = load i32, ptr %i.jq, align 8
  %i.js = zext i8 %i.jo to i32
  %i.jt = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.js, i32 -1) #23, !srcloc !32
  %.not.i18.i = icmp eq i32 %i.jr, %i.jt
  br i1 %.not.i18.i, label %intel_crtc_copy_uapi_to_hw_state_modeset.exit.i, label %bb.ce, !prof !48

bb.ce:                                            ; preds = %intel_crtc_is_joiner_secondary.exit.i17.i
  call void asm sideeffect "890: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 890b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 890) #25, !srcloc !311
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.245, ptr @.str.1, i32 4538, i32 2305, i64 16) #25, !srcloc !312
  call void asm sideeffect "891: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 891b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 891) #25, !srcloc !313
  br label %intel_crtc_copy_uapi_to_hw_state_modeset.exit.i

intel_crtc_copy_uapi_to_hw_state_modeset.exit.i:  ; preds = %bb.ce, %intel_crtc_is_joiner_secondary.exit.i17.i, %bb.cd
  %i.ju = getelementptr i8, ptr %i.jm, i64 8
  %i.jv = load i8, ptr %i.ju, align 8, !range !34, !noundef !35
  %i.jw = getelementptr i8, ptr %i.jm, i64 344
  %i.jx = getelementptr i8, ptr %i.jm, i64 345
  store i8 %i.jv, ptr %i.jx, align 1
  %i.jy = getelementptr i8, ptr %i.jm, i64 9
  %i.jz = load i8, ptr %i.jy, align 1, !range !34, !noundef !35
  store i8 %i.jz, ptr %i.jw, align 8
  %i.ka = getelementptr i8, ptr %i.jm, i64 376
  %i.kb = getelementptr i8, ptr %i.jm, i64 144
  call void @drm_mode_copy(ptr noundef %i.ka, ptr noundef %i.kb) #24
  %i.kc = getelementptr i8, ptr %i.jm, i64 616
  %i.kd = getelementptr i8, ptr %i.jm, i64 24
  call void @drm_mode_copy(ptr noundef %i.kc, ptr noundef %i.kd) #24
  %i.ke = getelementptr i8, ptr %i.jm, i64 312
  %i.kf = load i32, ptr %i.ke, align 8
  %i.kg = getelementptr i8, ptr %i.jm, i64 740
  store i32 %i.kf, ptr %i.kg, align 4
  %i.kh = getelementptr i8, ptr %i.jm, i64 316
  %i.ki = load i8, ptr %i.kh, align 4
  %i.kj = getelementptr i8, ptr %i.jm, i64 744
  store i8 %i.ki, ptr %i.kj, align 8
  %.val20.i.i = load ptr, ptr %i.k, align 8
  %.val21.i.i = load i32, ptr %i.jd, align 8
  %i.kk = zext i32 %.val21.i.i to i64
  %i.kl = getelementptr [56 x i8], ptr %.val20.i.i, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8            ; 10 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 4403
  %i.kp = load i8, ptr %i.ko, align 1             ; 2 uses
  %.not.i.i20.i = icmp eq i8 %i.kp, 0
  br i1 %.not.i.i20.i, label %intel_crtc_copy_uapi_to_hw_state_nomodeset.exit.i, label %intel_crtc_is_joiner_secondary.exit.i21.i

intel_crtc_is_joiner_secondary.exit.i21.i:        ; preds = %intel_crtc_copy_uapi_to_hw_state_modeset.exit.i
  %i.kq = load ptr, ptr %i.kn, align 8
  %i.kr = getelementptr i8, ptr %i.kq, i64 1664
  %i.ks = load i32, ptr %i.kr, align 8
  %i.kt = zext i8 %i.kp to i32
  %i.ku = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.kt, i32 -1) #23, !srcloc !32
  %.not.i22.i = icmp eq i32 %i.ks, %i.ku
  br i1 %.not.i22.i, label %intel_crtc_copy_uapi_to_hw_state_nomodeset.exit.i, label %bb.cf, !prof !48

bb.cf:                                            ; preds = %intel_crtc_is_joiner_secondary.exit.i21.i
  call void asm sideeffect "888: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 888b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 888) #25, !srcloc !49
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.245, ptr @.str.1, i32 4519, i32 2305, i64 16) #25, !srcloc !50
  call void asm sideeffect "889: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 889b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 889) #25, !srcloc !51
  br label %intel_crtc_copy_uapi_to_hw_state_nomodeset.exit.i

intel_crtc_copy_uapi_to_hw_state_nomodeset.exit.i: ; preds = %bb.cf, %intel_crtc_is_joiner_secondary.exit.i21.i, %intel_crtc_copy_uapi_to_hw_state_modeset.exit.i
  %i.kv = getelementptr i8, ptr %i.kn, i64 352
  %i.kw = getelementptr i8, ptr %i.kn, i64 272
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = call zeroext i1 @drm_property_replace_blob(ptr noundef %i.kv, ptr noundef %i.kx) #24 ; 0 uses
  %i.kz = getelementptr i8, ptr %i.kn, i64 360
  %i.la = getelementptr i8, ptr %i.kn, i64 288
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = call zeroext i1 @drm_property_replace_blob(ptr noundef %i.kz, ptr noundef %i.lb) #24 ; 0 uses
  %i.ld = getelementptr i8, ptr %i.kn, i64 368
  %i.le = getelementptr i8, ptr %i.kn, i64 280
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = call zeroext i1 @drm_property_replace_blob(ptr noundef %i.ld, ptr noundef %i.lf) #24 ; 0 uses
  %i.lh = getelementptr i8, ptr %i.kn, i64 296
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = call i32 @intel_color_background_color_drm_to_hw(i64 noundef %i.li) #24
  %i.lk = getelementptr i8, ptr %i.kn, i64 736
  store i32 %i.lj, ptr %i.lk, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %intel_crtc_copy_uapi_to_hw_state_nomodeset.exit.i, %intel_crtc_joiner_secondary_pipes.exit.i.i.i.i
  %.pn.i.i.i.i = load ptr, ptr %.pn29.i.i.i.i, align 8 ; 2 uses
  %.not25.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %i.in
  br i1 %.not25.i.i.i.i, label %kill_joiner_secondaries.exit.i.i.i, label %bb.cc, !llvm.loop !290

kill_joiner_secondaries.exit.i.i.i:               ; preds = %bb.cg, %bb.cb
  %i.ll = getelementptr i8, ptr %i.il, i64 4403
  store i8 0, ptr %i.ll, align 1
  br label %intel_crtc_is_joiner_primary.exit.thread.i.i.i.backedge

intel_crtc_is_joiner_primary.exit.thread.i.i.i.backedge: ; preds = %kill_joiner_secondaries.exit.i.i.i, %intel_crtc_is_joiner_primary.exit.i.i.i, %bb.by, %bb.bx, %bb.bw
  br label %intel_crtc_is_joiner_primary.exit.thread.i.i.i, !llvm.loop !291

intel_joiner_add_affected_crtcs.exit.i.i:         ; preds = %bb.ba, %bb.bm
  %.3.i.in.in.i.i = phi ptr [ %i.gv, %bb.bm ], [ %i.fc, %bb.ba ]
  %.3.i.in.i.i = ptrtoint ptr %.3.i.in.in.i.i to i64
  %.3.i.i.i = trunc i64 %.3.i.in.i.i to i32       ; 2 uses
  %.not98.i.i = icmp eq i32 %.3.i.i.i, 0
  br i1 %.not98.i.i, label %intel_joiner_add_affected_crtcs.exit.thread185.i.i, label %intel_atomic_check_config.exit.i

intel_joiner_add_affected_crtcs.exit.thread185.i.i: ; preds = %bb.bv, %intel_joiner_add_affected_crtcs.exit.i.i
  %i.lm = call i32 @intel_fdi_add_affected_crtcs(ptr noundef %1) #24 ; 2 uses
  %.not99.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not99.i.i, label %bb.ch, label %intel_atomic_check_config.exit.i

bb.ch:                                            ; preds = %intel_joiner_add_affected_crtcs.exit.thread185.i.i
  %i.ln = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not100.i.i = icmp eq ptr %i.ln, null
  br i1 %.not100.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lo = call ptr @__drm_to_display(ptr noundef nonnull %i.ln) #24
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.lp = phi ptr [ %i.lo, %bb.ci ], [ null, %bb.ch ]
  %i.lq = getelementptr i8, ptr %i.lp, i64 40
  br label %bb.ck

bb.ck:                                            ; preds = %.backedge1172, %bb.cj
  %.pn.in.i.i = phi ptr [ %i.lq, %bb.cj ], [ %.pn.i.i, %.backedge1172 ]
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8   ; 15 uses
  %.078.i.i = getelementptr i8, ptr %.pn.i.i, i64 -1648 ; 9 uses
  %i.lr = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not101.i.i = icmp eq ptr %i.lr, null
  br i1 %.not101.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ls = call ptr @__drm_to_display(ptr noundef nonnull %i.lr) #24
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.lt = phi ptr [ %i.ls, %bb.cl ], [ null, %bb.ck ]
  %i.lu = getelementptr i8, ptr %i.lt, i64 40
  %.not200.i.i = icmp eq ptr %.pn.i.i, %i.lu
  br i1 %.not200.i.i, label %bb.gk, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val115.i.i = load ptr, ptr %i.k, align 8      ; 2 uses
  %i.lv = getelementptr i8, ptr %.pn.i.i, i64 -1512 ; 8 uses
  %.078.val.i.i = load i32, ptr %i.lv, align 8    ; 2 uses
  %i.lw = zext i32 %.078.val.i.i to i64
  %i.lx = getelementptr [56 x i8], ptr %.val115.i.i, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8            ; 7 uses
  %.not109.i.i = icmp eq ptr %i.lz, null
  br i1 %.not109.i.i, label %.backedge1172, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ma = getelementptr i8, ptr %i.lz, i64 10
  %.val117.i.i = load i8, ptr %i.ma, align 2
  %i.mb = and i8 %.val117.i.i, 14
  %.not204.i.i = icmp eq i8 %i.mb, 0
  %i.mc = getelementptr i8, ptr %i.lz, i64 4403
  %i.md = load i8, ptr %i.mc, align 1             ; 3 uses
  %.not.i120.i.i = icmp eq i8 %i.md, 0            ; 2 uses
  br i1 %.not204.i.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  br i1 %.not.i120.i.i, label %intel_crtc_is_joiner_secondary.exit.thread.i.i, label %intel_crtc_is_joiner_secondary.exit.i.i

intel_crtc_is_joiner_secondary.exit.i.i:          ; preds = %bb.cp
  %i.me = load ptr, ptr %i.lz, align 8
  %i.mf = getelementptr i8, ptr %i.me, i64 1664
  %i.mg = load i32, ptr %i.mf, align 8
  %i.mh = zext i8 %i.md to i32
  %i.mi = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mh, i32 -1) #23, !srcloc !32
  %.not205.i.i = icmp eq i32 %i.mg, %i.mi
  br i1 %.not205.i.i, label %intel_crtc_is_joiner_secondary.exit.thread.i.i, label %.backedge1172

intel_crtc_is_joiner_secondary.exit.thread.i.i:   ; preds = %intel_crtc_is_joiner_secondary.exit.i.i, %bb.cp
  call fastcc void @intel_crtc_copy_uapi_to_hw_state_nomodeset(ptr %.val115.i.i, i32 %.078.val.i.i) #26
  br label %.backedge1172

bb.cq:                                            ; preds = %bb.co
  br i1 %.not.i120.i.i, label %.critedge.i.i, label %intel_crtc_is_joiner_secondary.exit123.i.i

intel_crtc_is_joiner_secondary.exit123.i.i:       ; preds = %bb.cq
  %i.mj = load ptr, ptr %i.lz, align 8
  %i.mk = getelementptr i8, ptr %i.mj, i64 1664
  %i.ml = load i32, ptr %i.mk, align 8
  %i.mm = zext i8 %i.md to i32
  %i.mn = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mm, i32 -1) #23, !srcloc !32
  %.not206.i.i = icmp eq i32 %i.ml, %i.mn
  br i1 %.not206.i.i, label %.critedge.i.i, label %bb.cr, !prof !48

bb.cr:                                            ; preds = %intel_crtc_is_joiner_secondary.exit123.i.i
  %i.mo = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not.i124.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i124.i.i, label %__drm_to_dev.exit.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mp = getelementptr i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.cs, %bb.cr
  %i.mr = phi ptr [ %i.mq, %bb.cs ], [ null, %bb.cr ]
  %i.ms = call ptr @dev_driver_string(ptr noundef %i.mr) #24 ; 0 uses
  %i.mt = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 6322, i32 2321, i64 16) #25, !srcloc !314
  %i.mu = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not.i129.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i129.i.i, label %__drm_to_dev.exit130.i.i, label %bb.ct

bb.ct:                                            ; preds = %__drm_to_dev.exit.i.i
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  br label %__drm_to_dev.exit130.i.i

__drm_to_dev.exit130.i.i:                         ; preds = %bb.ct, %__drm_to_dev.exit.i.i
  %i.mx = phi ptr [ %i.mw, %bb.ct ], [ null, %__drm_to_dev.exit.i.i ]
  %i.my = call ptr @dev_driver_string(ptr noundef %i.mx) #24
  %i.mz = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not.i131.i.i = icmp eq ptr %i.mz, null
  br i1 %.not.i131.i.i, label %__drm_to_dev.exit132.i.i, label %bb.cu

bb.cu:                                            ; preds = %__drm_to_dev.exit130.i.i
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  br label %__drm_to_dev.exit132.i.i

__drm_to_dev.exit132.i.i:                         ; preds = %bb.cu, %__drm_to_dev.exit130.i.i
  %i.nc = phi ptr [ %i.nb, %bb.cu ], [ null, %__drm_to_dev.exit130.i.i ] ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 80
  %i.ne = load ptr, ptr %i.nd, align 8            ; 2 uses
  %.not.i133.i.i = icmp eq ptr %i.ne, null
  br i1 %.not.i133.i.i, label %bb.cv, label %dev_name.exit136.i.i

bb.cv:                                            ; preds = %__drm_to_dev.exit132.i.i
  %.val.i135.i.i = load ptr, ptr %i.nc, align 8
  br label %dev_name.exit136.i.i

dev_name.exit136.i.i:                             ; preds = %bb.cv, %__drm_to_dev.exit132.i.i
  %.0.i134.i.i = phi ptr [ %.val.i135.i.i, %bb.cv ], [ %i.ne, %__drm_to_dev.exit132.i.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.mt, ptr noundef %i.my, ptr noundef %.0.i134.i.i, ptr noundef @.str.268) #24
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !315
  br label %.backedge1172

.critedge.i.i:                                    ; preds = %intel_crtc_is_joiner_secondary.exit123.i.i, %bb.cq
  %i.nf = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i137.i.i = icmp eq ptr %i.nf, null
  br i1 %.not.i137.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.critedge.i.i
  %i.ng = call ptr @__drm_to_display(ptr noundef nonnull %i.nf) #24
  %.val.i138.pre.i.i = load ptr, ptr %i.k, align 8
  %.val44.i.pre.i.i = load i32, ptr %i.lv, align 8
  %.phi.trans.insert.i.i = zext i32 %.val44.i.pre.i.i to i64
  %.phi.trans.insert358.i.i = getelementptr [56 x i8], ptr %.val.i138.pre.i.i, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert359.i.i = getelementptr i8, ptr %.phi.trans.insert358.i.i, i64 24
  %.pre.i.i = load ptr, ptr %.phi.trans.insert359.i.i, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.critedge.i.i
  %i.nh = phi ptr [ %.pre.i.i, %bb.cw ], [ %i.lz, %.critedge.i.i ] ; 10 uses
  %i.ni = phi ptr [ %i.ng, %bb.cw ], [ null, %.critedge.i.i ]
  %i.nj = call ptr @intel_crtc_state_alloc(ptr noundef %.078.i.i) #24 ; 11 uses
  %.not39.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not39.i.i.i, label %.loopexit.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @intel_crtc_free_hw_state(ptr noundef %i.nh) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.nj, ptr noundef align 8 dereferenceable(344) %i.nh, i64 344, i1 false)
  %i.nk = getelementptr i8, ptr %i.nh, i64 852
  %i.nl = load i8, ptr %i.nk, align 4, !range !34, !noundef !35
  %i.nm = getelementptr i8, ptr %i.nj, i64 852
  store i8 %i.nl, ptr %i.nm, align 4
  %i.nn = getelementptr i8, ptr %i.nj, i64 1440
  %i.no = getelementptr i8, ptr %i.nh, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.nn, ptr noundef align 8 dereferenceable(40) %i.no, i64 40, i1 false)
  %i.np = getelementptr i8, ptr %i.nh, i64 936
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = getelementptr i8, ptr %i.nj, i64 936
  store ptr %i.nq, ptr %i.nr, align 8
  %i.ns = getelementptr i8, ptr %i.nj, i64 944
  %i.nt = getelementptr i8, ptr %i.nh, i64 944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(88) %i.ns, ptr noundef align 8 dereferenceable(88) %i.nt, i64 88, i1 false)
  %i.nu = getelementptr i8, ptr %i.nj, i64 1032
  %i.nv = getelementptr i8, ptr %i.nh, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(192) %i.nu, ptr noundef align 8 dereferenceable(192) %i.nv, i64 192, i1 false)
  %i.nw = getelementptr i8, ptr %i.nh, i64 1437
  %i.nx = load i8, ptr %i.nw, align 1, !range !34, !noundef !35
  %i.ny = getelementptr i8, ptr %i.nj, i64 1437
  store i8 %i.nx, ptr %i.ny, align 1
  %i.nz = getelementptr i8, ptr %i.ni, i64 8
  %i.oa = load i64, ptr %i.nz, align 8
  %i.ob = and i64 %i.oa, 135266305
  %or.cond43.i.i.i = icmp eq i64 %i.ob, 0
  br i1 %or.cond43.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oc = getelementptr i8, ptr %i.nj, i64 1484
  %i.od = getelementptr i8, ptr %i.nh, i64 1484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(2220) %i.oc, ptr noundef align 4 dereferenceable(2220) %i.od, i64 2220, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(4808) %i.nh, ptr noundef nonnull align 8 dereferenceable(4808) %i.nj, i64 4808, i1 false)
  call void @kfree(ptr noundef nonnull %i.nj) #24
  %.val.i442 = load ptr, ptr %i.k, align 8
  %.val19.i = load i32, ptr %i.lv, align 8
end_hunk_1
begin_hunk_2_@intel_atomic_check:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit.i.i

intel_modeset_pipe_config.exit.i.i:               ; preds = %bb.gj, %bb.gi
  %i.ais = phi ptr [ %i.air, %bb.gj ], [ null, %bb.gi ]
  %i.ait = getelementptr i8, ptr %.pn.i.i, i64 -1560
  %i.aiu = load i32, ptr %i.ait, align 8
  %i.aiv = getelementptr i8, ptr %.pn.i.i, i64 -1616
  %i.aiw = load ptr, ptr %i.aiv, align 8
  %i.aix = zext nneg i8 %i.ain to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ais, i32 noundef 2, ptr noundef @.str.273, i32 noundef %i.aiu, ptr noundef %i.aiw, i32 noundef %i.tj, i32 noundef %i.aii, i32 noundef %i.aix) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.backedge1172

.backedge1172:                                    ; preds = %intel_modeset_pipe_config.exit.i.i, %intel_crtc_copy_uapi_to_hw_state_modeset.exit, %dev_name.exit136.i.i, %intel_crtc_is_joiner_secondary.exit.thread.i.i, %intel_crtc_is_joiner_secondary.exit.i.i, %bb.cn
  br label %bb.ck, !llvm.loop !297

bb.gk:                                            ; preds = %bb.cm
  %i.aiy = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not103.i.i = icmp eq ptr %i.aiy, null
  br i1 %.not103.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aiz = call ptr @__drm_to_display(ptr noundef nonnull %i.aiy) #24
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.aja = phi ptr [ %i.aiz, %bb.gl ], [ null, %bb.gk ]
  %i.ajb = getelementptr i8, ptr %i.aja, i64 40
  br label %bb.gn

bb.gn:                                            ; preds = %intel_modeset_pipe_config_late.exit.thread.i.i, %bb.gm
  %.pn104.in.i.i = phi ptr [ %i.ajb, %bb.gm ], [ %.pn104.i.i, %intel_modeset_pipe_config_late.exit.thread.i.i ]
  %.pn104.i.i = load ptr, ptr %.pn104.in.i.i, align 8 ; 5 uses
  %.1.i.i = getelementptr i8, ptr %.pn104.i.i, i64 -1648
  %i.ajc = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not105.i.i = icmp eq ptr %i.ajc, null
  br i1 %.not105.i.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ajd = call ptr @__drm_to_display(ptr noundef nonnull %i.ajc) #24
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.aje = phi ptr [ %i.ajd, %bb.go ], [ null, %bb.gn ]
  %i.ajf = getelementptr i8, ptr %i.aje, i64 40
  %.not201.i.i = icmp eq ptr %.pn104.i.i, %i.ajf
  br i1 %.not201.i.i, label %intel_atomic_check_config.exit.thread.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.val.i.i = load ptr, ptr %i.k, align 8
  %i.ajg = getelementptr i8, ptr %.pn104.i.i, i64 -1512
  %.1.val.i.i = load i32, ptr %i.ajg, align 8
  %i.ajh = zext i32 %.1.val.i.i to i64
  %i.aji = getelementptr [56 x i8], ptr %.val.i.i, i64 %i.ajh
  %i.ajj = getelementptr i8, ptr %i.aji, i64 24
  %i.ajk = load ptr, ptr %i.ajj, align 8          ; 6 uses
  %.not107.i.i = icmp eq ptr %i.ajk, null
  br i1 %.not107.i.i, label %intel_modeset_pipe_config_late.exit.thread.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 10
  %.val116.i.i = load i8, ptr %i.ajl, align 2
  %i.ajm = and i8 %.val116.i.i, 14
  %.not202.i.i = icmp eq i8 %i.ajm, 0
  br i1 %.not202.i.i, label %intel_modeset_pipe_config_late.exit.thread.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajn = getelementptr i8, ptr %i.ajk, i64 4403
  %i.ajo = load i8, ptr %i.ajn, align 1           ; 2 uses
  %.not.i155.i.i = icmp eq i8 %i.ajo, 0
  br i1 %.not.i155.i.i, label %.critedge114.i.i, label %intel_crtc_is_joiner_secondary.exit157.i.i

intel_crtc_is_joiner_secondary.exit157.i.i:       ; preds = %bb.gs
  %i.ajp = load ptr, ptr %i.ajk, align 8
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 1664
  %i.ajr = load i32, ptr %i.ajq, align 8
  %i.ajs = zext i8 %i.ajo to i32
  %i.ajt = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ajs, i32 -1) #23, !srcloc !32
  %.not203.i.i = icmp eq i32 %i.ajr, %i.ajt
  br i1 %.not203.i.i, label %.critedge114.i.i, label %bb.gt, !prof !48

bb.gt:                                            ; preds = %intel_crtc_is_joiner_secondary.exit157.i.i
  %i.aju = load ptr, ptr %i.eo, align 8           ; 2 uses
  %.not.i158.i.i = icmp eq ptr %i.aju, null
  br i1 %.not.i158.i.i, label %__drm_to_dev.exit159.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ajv = getelementptr i8, ptr %i.aju, i64 8
  %i.ajw = load ptr, ptr %i.ajv, align 8
  br label %__drm_to_dev.exit159.i.i

__drm_to_dev.exit159.i.i:                         ; preds = %bb.gu, %bb.gt
  %i.ajx = phi ptr [ %i.ajw, %bb.gu ], [ null, %bb.gt ]
  %i.ajy = call ptr @dev_driver_string(ptr noundef %i.ajx) #24 ; 0 uses
  %i.ajz = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 6341, i32 2321, i64 16) #25, !srcloc !318
  %i.aka = load ptr, ptr %i.eo, align 8           ; 2 uses
  %.not.i166.i.i = icmp eq ptr %i.aka, null
  br i1 %.not.i166.i.i, label %__drm_to_dev.exit167.i.i, label %bb.gv

bb.gv:                                            ; preds = %__drm_to_dev.exit159.i.i
  %i.akb = getelementptr i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8
  br label %__drm_to_dev.exit167.i.i

__drm_to_dev.exit167.i.i:                         ; preds = %bb.gv, %__drm_to_dev.exit159.i.i
  %i.akd = phi ptr [ %i.akc, %bb.gv ], [ null, %__drm_to_dev.exit159.i.i ]
  %i.ake = call ptr @dev_driver_string(ptr noundef %i.akd) #24
  %i.akf = load ptr, ptr %i.eo, align 8           ; 2 uses
  %.not.i168.i.i = icmp eq ptr %i.akf, null
  br i1 %.not.i168.i.i, label %__drm_to_dev.exit169.i.i, label %bb.gw

bb.gw:                                            ; preds = %__drm_to_dev.exit167.i.i
  %i.akg = getelementptr i8, ptr %i.akf, i64 8
  %i.akh = load ptr, ptr %i.akg, align 8
  br label %__drm_to_dev.exit169.i.i

__drm_to_dev.exit169.i.i:                         ; preds = %bb.gw, %__drm_to_dev.exit167.i.i
  %i.aki = phi ptr [ %i.akh, %bb.gw ], [ null, %__drm_to_dev.exit167.i.i ] ; 2 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 80
  %i.akk = load ptr, ptr %i.akj, align 8          ; 2 uses
  %.not.i170.i.i = icmp eq ptr %i.akk, null
  br i1 %.not.i170.i.i, label %bb.gx, label %dev_name.exit173.i.i

bb.gx:                                            ; preds = %__drm_to_dev.exit169.i.i
  %.val.i172.i.i = load ptr, ptr %i.aki, align 8
  br label %dev_name.exit173.i.i

dev_name.exit173.i.i:                             ; preds = %bb.gx, %__drm_to_dev.exit169.i.i
  %.0.i171.i.i = phi ptr [ %.val.i172.i.i, %bb.gx ], [ %i.akk, %__drm_to_dev.exit169.i.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ajz, ptr noundef %i.ake, ptr noundef %.0.i171.i.i, ptr noundef @.str.268) #24
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !319
  br label %intel_modeset_pipe_config_late.exit.thread.i.i

.critedge114.i.i:                                 ; preds = %intel_crtc_is_joiner_secondary.exit157.i.i, %bb.gs
  %i.akl = getelementptr i8, ptr %i.ajk, i64 345
  %i.akm = load i8, ptr %i.akl, align 1, !range !34, !noundef !35
  %i.akn = trunc nuw i8 %i.akm to i1
  br i1 %i.akn, label %bb.gy, label %intel_modeset_pipe_config_late.exit.thread.i.i

bb.gy:                                            ; preds = %.critedge114.i.i
  %i.ako = load i32, ptr %i.ef, align 8           ; 2 uses
  %i.akp = icmp sgt i32 %i.ako, 0
  br i1 %i.akp, label %.lr.ph.i177.i.i, label %intel_modeset_pipe_config_late.exit.thread.i.i

.lr.ph.i177.i.i:                                  ; preds = %bb.gy, %.thread.i180.i.i
  %i.akq = phi i32 [ %i.ald, %.thread.i180.i.i ], [ %i.ako, %bb.gy ] ; 3 uses
  %indvars.iv.i178.i.i = phi i64 [ %indvars.iv.next.i181.i.i, %.thread.i180.i.i ], [ 0, %bb.gy ] ; 2 uses
  %i.akr = load ptr, ptr %i.eg, align 8
  %i.aks = getelementptr [40 x i8], ptr %i.akr, i64 %indvars.iv.i178.i.i ; 2 uses
  %i.akt = load ptr, ptr %i.aks, align 8
  %.not.i179.i.i = icmp eq ptr %i.akt, null
  br i1 %.not.i179.i.i, label %.thread.i180.i.i, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.i177.i.i
  %i.aku = getelementptr i8, ptr %i.aks, i64 24
  %i.akv = load ptr, ptr %i.aku, align 8          ; 3 uses
  %i.akw = getelementptr i8, ptr %i.akv, i64 16
  %i.akx = load ptr, ptr %i.akw, align 8          ; 2 uses
  %i.aky = getelementptr i8, ptr %i.akv, i64 8
  %i.akz = load ptr, ptr %i.aky, align 8
  %.not28.i.i.i = icmp eq ptr %i.akz, %.1.i.i
  br i1 %.not28.i.i.i, label %bb.ha, label %.thread.i180.i.i

bb.ha:                                            ; preds = %bb.gz
  %i.ala = getelementptr i8, ptr %i.akx, i64 288
  %i.alb = load ptr, ptr %i.ala, align 8          ; 2 uses
  %.not29.i.i.i = icmp eq ptr %i.alb, null
  br i1 %.not29.i.i.i, label %.thread.i180.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.alc = call i32 %i.alb(ptr noundef %i.akx, ptr noundef nonnull %i.ajk, ptr noundef %i.akv) #24, !inline_history !298 ; 2 uses
  %.not30.i.i.i = icmp eq i32 %i.alc, 0
  br i1 %.not30.i.i.i, label %..thread_crit_edge.i.i.i, label %.loopexit.i.i

..thread_crit_edge.i.i.i:                         ; preds = %bb.hb
  %.pre.i182.i.i = load i32, ptr %i.ef, align 8
  br label %.thread.i180.i.i

.thread.i180.i.i:                                 ; preds = %..thread_crit_edge.i.i.i, %bb.ha, %bb.gz, %.lr.ph.i177.i.i
  %i.ald = phi i32 [ %.pre.i182.i.i, %..thread_crit_edge.i.i.i ], [ %i.akq, %bb.ha ], [ %i.akq, %bb.gz ], [ %i.akq, %.lr.ph.i177.i.i ] ; 2 uses
  %indvars.iv.next.i181.i.i = add nuw nsw i64 %indvars.iv.i178.i.i, 1 ; 2 uses
  %i.ale = sext i32 %i.ald to i64
  %i.alf = icmp slt i64 %indvars.iv.next.i181.i.i, %i.ale
  br i1 %i.alf, label %.lr.ph.i177.i.i, label %intel_modeset_pipe_config_late.exit.thread.i.i, !llvm.loop !299

intel_modeset_pipe_config_late.exit.thread.i.i:   ; preds = %.thread.i180.i.i, %bb.gy, %.critedge114.i.i, %dev_name.exit173.i.i, %bb.gr, %bb.gq
  br label %bb.gn, !llvm.loop !300

.loopexit.i.i:                                    ; preds = %bb.cx, %bb.hb, %intel_modeset_pipe_config.exit.thread.i.i
  %.4.ph.i.i = phi i32 [ %.6.i.ph.i.i, %intel_modeset_pipe_config.exit.thread.i.i ], [ %i.alc, %bb.hb ], [ -12, %bb.cx ]
  %i.alg = phi ptr [ %.pn.i.i, %intel_modeset_pipe_config.exit.thread.i.i ], [ %.pn104.i.i, %bb.hb ], [ %.pn.i.i, %bb.cx ]
  %i.alh = getelementptr i8, ptr %i.alg, i64 16
  %i.ali = load i32, ptr %i.alh, align 8
  br label %intel_atomic_check_config.exit.i

intel_atomic_check_config.exit.i:                 ; preds = %bb.bq, %bb.bp, %.loopexit.i.i, %intel_joiner_add_affected_crtcs.exit.thread185.i.i, %intel_joiner_add_affected_crtcs.exit.i.i
  %.024.i = phi i32 [ -1, %intel_joiner_add_affected_crtcs.exit.i.i ], [ %i.ali, %.loopexit.i.i ], [ -1, %intel_joiner_add_affected_crtcs.exit.thread185.i.i ], [ -1, %bb.bp ], [ -1, %bb.bq ]
  %.0.i.i = phi i32 [ %.3.i.i.i, %intel_joiner_add_affected_crtcs.exit.i.i ], [ %.4.ph.i.i, %.loopexit.i.i ], [ %i.lm, %intel_joiner_add_affected_crtcs.exit.thread185.i.i ], [ %i.hl, %bb.bq ], [ %i.hk, %bb.bp ] ; 2 uses
  %cond.i = icmp eq i32 %.0.i.i, -22
  br i1 %cond.i, label %bb.hc, label %intel_atomic_check_config_and_link.exit.thread.a

bb.hc:                                            ; preds = %intel_atomic_check_config.exit.i
  %i.alj = call zeroext i1 @intel_link_bw_set_bpp_limit_for_pipe(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %.024.i) #24
  br i1 %i.alj, label %select.unfold.i.backedge, label %intel_atomic_check_config_and_link.exit.thread.a

intel_atomic_check_config.exit.thread.i:          ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  %i.alk = call i32 @intel_link_bw_atomic_check(ptr noundef %1, ptr noundef nonnull %3) #24 ; 3 uses
  %.not11.i = icmp eq i32 %i.alk, -11
  br i1 %.not11.i, label %select.unfold.i.backedge, label %intel_atomic_check_config_and_link.exit

select.unfold.i.backedge:                         ; preds = %intel_atomic_check_config.exit.thread.i, %bb.hc
  br label %select.unfold.i

intel_atomic_check_config_and_link.exit.thread.a: ; preds = %intel_atomic_check_config.exit.i, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit

intel_atomic_check_config_and_link.exit:          ; preds = %intel_atomic_check_config.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not294 = icmp eq i32 %i.alk, 0
  br i1 %.not294, label %bb.hd, label %.loopexit

bb.hd:                                            ; preds = %intel_atomic_check_config_and_link.exit
  %i.all = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not295 = icmp eq ptr %i.all, null
  br i1 %.not295, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.alm = call ptr @__drm_to_display(ptr noundef nonnull %i.all) #24
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hd, %bb.he
  %i.aln = phi ptr [ %i.alm, %bb.he ], [ null, %bb.hd ]
  %i.alo = getelementptr i8, ptr %i.aln, i64 40
  br label %bb.hg

bb.hg:                                            ; preds = %intel_crtc_is_joiner_secondary.exit.thread, %bb.hf
  %.pn296.in = phi ptr [ %i.alo, %bb.hf ], [ %.pn296, %intel_crtc_is_joiner_secondary.exit.thread ]
  %.pn296 = load ptr, ptr %.pn296.in, align 8     ; 8 uses
  %i.alp = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not297 = icmp eq ptr %i.alp, null
  br i1 %.not297, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.alq = call ptr @__drm_to_display(ptr noundef nonnull %i.alp) #24
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hg, %bb.hh
  %i.alr = phi ptr [ %i.alq, %bb.hh ], [ null, %bb.hg ]
  %i.als = getelementptr i8, ptr %i.alr, i64 40
  %.not460 = icmp eq ptr %.pn296, %i.als
  br i1 %.not460, label %bb.ir, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %.val362 = load ptr, ptr %i.k, align 8
  %i.alt = getelementptr i8, ptr %.pn296, i64 -1512 ; 2 uses
  %.2.val = load i32, ptr %i.alt, align 8         ; 2 uses
  %i.alu = zext i32 %.2.val to i64
  %i.alv = getelementptr [56 x i8], ptr %.val362, i64 %i.alu
  %i.alw = getelementptr i8, ptr %i.alv, i64 24
  %i.alx = load ptr, ptr %i.alw, align 8          ; 7 uses
  %.not335 = icmp eq ptr %i.alx, null
  br i1 %.not335, label %intel_crtc_is_joiner_secondary.exit.thread, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aly = getelementptr i8, ptr %i.alx, i64 10
  %.val372 = load i8, ptr %i.aly, align 2
  %i.alz = and i8 %.val372, 14
  %.not472 = icmp eq i8 %i.alz, 0
  %i.ama = getelementptr i8, ptr %i.alx, i64 4403
  %i.amb = load i8, ptr %i.ama, align 1           ; 4 uses
  %.not.i377 = icmp eq i8 %i.amb, 0               ; 2 uses
  br i1 %.not472, label %bb.hl, label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  br i1 %.not.i377, label %intel_crtc_is_joiner_secondary.exit.thread, label %intel_crtc_is_joiner_secondary.exit

intel_crtc_is_joiner_secondary.exit:              ; preds = %bb.hl
  %i.amc = load ptr, ptr %i.alx, align 8
  %i.amd = getelementptr i8, ptr %i.amc, i64 1664
  %i.ame = load i32, ptr %i.amd, align 8
  %i.amf = zext i8 %i.amb to i32
  %i.amg = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.amf, i32 -1) #23, !srcloc !32
  %.not473 = icmp eq i32 %i.ame, %i.amg
  br i1 %.not473, label %intel_crtc_is_joiner_secondary.exit.thread, label %bb.hm

bb.hm:                                            ; preds = %intel_crtc_is_joiner_secondary.exit
  call fastcc void @copy_joiner_crtc_state_nomodeset(ptr noundef %1, i32 %.2.val) #26
  br label %intel_crtc_is_joiner_secondary.exit.thread

bb.hn:                                            ; preds = %bb.hk
  br i1 %.not.i377, label %intel_crtc_is_joiner_secondary.exit380.thread, label %intel_crtc_is_joiner_secondary.exit380

intel_crtc_is_joiner_secondary.exit380:           ; preds = %bb.hn
  %i.amh = load ptr, ptr %i.alx, align 8
  %i.ami = getelementptr i8, ptr %i.amh, i64 1664
  %i.amj = load i32, ptr %i.ami, align 8
  %i.amk = zext i8 %i.amb to i32
  %i.aml = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.amk, i32 -1) #23, !srcloc !32
  %.not474 = icmp eq i32 %i.amj, %i.aml
  br i1 %.not474, label %intel_crtc_is_joiner_secondary.exit380.thread, label %bb.ho

bb.ho:                                            ; preds = %intel_crtc_is_joiner_secondary.exit380
  %i.amm = getelementptr i8, ptr %i.alx, i64 8
  %i.amn = load i8, ptr %i.amm, align 8, !range !34, !noundef !35
  %i.amo = trunc nuw i8 %i.amn to i1
  br i1 %i.amo, label %bb.hp, label %intel_crtc_is_joiner_secondary.exit.thread, !prof !33

bb.hp:                                            ; preds = %bb.ho
  %i.amp = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i381 = icmp eq ptr %i.amp, null
  br i1 %.not.i381, label %__drm_to_dev.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.amq = getelementptr i8, ptr %i.amp, i64 8
  %i.amr = load ptr, ptr %i.amq, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.hp, %bb.hq
  %i.ams = phi ptr [ %i.amr, %bb.hq ], [ null, %bb.hp ]
  %i.amt = call ptr @dev_driver_string(ptr noundef %i.ams) #24 ; 0 uses
  %i.amu = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 6458, i32 2321, i64 16) #25, !srcloc !320
  %i.amv = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i387 = icmp eq ptr %i.amv, null
  br i1 %.not.i387, label %__drm_to_dev.exit388, label %bb.hr

bb.hr:                                            ; preds = %__drm_to_dev.exit
  %i.amw = getelementptr i8, ptr %i.amv, i64 8
  %i.amx = load ptr, ptr %i.amw, align 8
  br label %__drm_to_dev.exit388

__drm_to_dev.exit388:                             ; preds = %__drm_to_dev.exit, %bb.hr
  %i.amy = phi ptr [ %i.amx, %bb.hr ], [ null, %__drm_to_dev.exit ]
  %i.amz = call ptr @dev_driver_string(ptr noundef %i.amy) #24
  %i.ana = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i389 = icmp eq ptr %i.ana, null
  br i1 %.not.i389, label %__drm_to_dev.exit390, label %bb.hs

bb.hs:                                            ; preds = %__drm_to_dev.exit388
  %i.anb = getelementptr i8, ptr %i.ana, i64 8
  %i.anc = load ptr, ptr %i.anb, align 8
  br label %__drm_to_dev.exit390

__drm_to_dev.exit390:                             ; preds = %__drm_to_dev.exit388, %bb.hs
  %i.and = phi ptr [ %i.anc, %bb.hs ], [ null, %__drm_to_dev.exit388 ] ; 2 uses
  %i.ane = getelementptr i8, ptr %i.and, i64 80
  %i.anf = load ptr, ptr %i.ane, align 8          ; 2 uses
  %.not.i391 = icmp eq ptr %i.anf, null
  br i1 %.not.i391, label %bb.ht, label %dev_name.exit394

bb.ht:                                            ; preds = %__drm_to_dev.exit390
  %.val.i393 = load ptr, ptr %i.and, align 8
  br label %dev_name.exit394

dev_name.exit394:                                 ; preds = %__drm_to_dev.exit390, %bb.ht
  %.0.i392 = phi ptr [ %.val.i393, %bb.ht ], [ %i.anf, %__drm_to_dev.exit390 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.amu, ptr noundef %i.amz, ptr noundef %.0.i392, ptr noundef @.str.210) #24
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !321
  br label %intel_crtc_is_joiner_secondary.exit.thread

intel_crtc_is_joiner_secondary.exit380.thread:    ; preds = %bb.hn, %intel_crtc_is_joiner_secondary.exit380
  %i.ang = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not.i395 = icmp eq ptr %i.ang, null
  br i1 %.not.i395, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %intel_crtc_is_joiner_secondary.exit380.thread
  %i.anh = call ptr @__drm_to_display(ptr noundef nonnull %i.ang) #24
  %.val67.i.pre = load ptr, ptr %i.k, align 8
  %.val68.i.pre = load i32, ptr %i.alt, align 8
  %.phi.trans.insert720.a = zext i32 %.val68.i.pre to i64
  %.phi.trans.insert721 = getelementptr [56 x i8], ptr %.val67.i.pre, i64 %.phi.trans.insert720.a
  %.phi.trans.insert722.a = getelementptr i8, ptr %.phi.trans.insert721, i64 24
  %.pre723.a = load ptr, ptr %.phi.trans.insert722.a, align 8 ; 2 uses
  %.phi.trans.insert724 = getelementptr i8, ptr %.pre723.a, i64 4403
  %.pre725 = load i8, ptr %.phi.trans.insert724, align 1
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %intel_crtc_is_joiner_secondary.exit380.thread
  %i.ani = phi i8 [ %.pre725, %bb.hu ], [ %i.amb, %intel_crtc_is_joiner_secondary.exit380.thread ] ; 4 uses
  %i.anj = phi ptr [ %.pre723.a, %bb.hu ], [ %i.alx, %intel_crtc_is_joiner_secondary.exit380.thread ]
  %i.ank = phi ptr [ %i.anh, %bb.hu ], [ null, %intel_crtc_is_joiner_secondary.exit380.thread ] ; 8 uses
  %i.anl = getelementptr i8, ptr %i.anj, i64 4403 ; 2 uses
  %.not61.i = icmp eq i8 %i.ani, 0
  br i1 %.not61.i, label %intel_crtc_is_joiner_secondary.exit.thread, label %joiner_primary_pipe.exit.i396

joiner_primary_pipe.exit.i396:                    ; preds = %bb.hv
  %i.anm = getelementptr i8, ptr %.pn296, i64 16
  %i.ann = load i32, ptr %i.anm, align 8
  %i.ano = zext i8 %i.ani to i32
  %i.anp = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ano, i32 -1) #23, !srcloc !32
  %.not62.i = icmp eq i32 %i.ann, %i.anp
  br i1 %.not62.i, label %.critedge.i, label %bb.hw, !prof !39

bb.hw:                                            ; preds = %joiner_primary_pipe.exit.i396
  %i.anq = load ptr, ptr %i.ank, align 8          ; 2 uses
  %.not.i.i397 = icmp eq ptr %i.anq, null
  br i1 %.not.i.i397, label %__drm_to_dev.exit.i398, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.anr = getelementptr i8, ptr %i.anq, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8
  br label %__drm_to_dev.exit.i398

__drm_to_dev.exit.i398:                           ; preds = %bb.hx, %bb.hw
  %i.ant = phi ptr [ %i.ans, %bb.hx ], [ null, %bb.hw ]
  %i.anu = call ptr @dev_driver_string(ptr noundef %i.ant) #24 ; 0 uses
  %i.anv = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 5910, i32 2321, i64 16) #25, !srcloc !322
  %i.anw = load ptr, ptr %i.ank, align 8          ; 2 uses
  %.not.i76.i = icmp eq ptr %i.anw, null
  br i1 %.not.i76.i, label %__drm_to_dev.exit77.i, label %bb.hy

bb.hy:                                            ; preds = %__drm_to_dev.exit.i398
  %i.anx = getelementptr i8, ptr %i.anw, i64 8
  %i.any = load ptr, ptr %i.anx, align 8
  br label %__drm_to_dev.exit77.i

__drm_to_dev.exit77.i:                            ; preds = %bb.hy, %__drm_to_dev.exit.i398
  %i.anz = phi ptr [ %i.any, %bb.hy ], [ null, %__drm_to_dev.exit.i398 ]
  %i.aoa = call ptr @dev_driver_string(ptr noundef %i.anz) #24
  %i.aob = load ptr, ptr %i.ank, align 8          ; 2 uses
  %.not.i78.i = icmp eq ptr %i.aob, null
  br i1 %.not.i78.i, label %__drm_to_dev.exit79.i, label %bb.hz

bb.hz:                                            ; preds = %__drm_to_dev.exit77.i
  %i.aoc = getelementptr i8, ptr %i.aob, i64 8
  %i.aod = load ptr, ptr %i.aoc, align 8
  br label %__drm_to_dev.exit79.i

__drm_to_dev.exit79.i:                            ; preds = %bb.hz, %__drm_to_dev.exit77.i
  %i.aoe = phi ptr [ %i.aod, %bb.hz ], [ null, %__drm_to_dev.exit77.i ] ; 2 uses
  %i.aof = getelementptr i8, ptr %i.aoe, i64 80
  %i.aog = load ptr, ptr %i.aof, align 8          ; 2 uses
  %.not.i80.i = icmp eq ptr %i.aog, null
  br i1 %.not.i80.i, label %bb.ia, label %dev_name.exit83.i

bb.ia:                                            ; preds = %__drm_to_dev.exit79.i
  %.val.i82.i = load ptr, ptr %i.aoe, align 8
  br label %dev_name.exit83.i

dev_name.exit83.i:                                ; preds = %bb.ia, %__drm_to_dev.exit79.i
  %.0.i81.i = phi ptr [ %.val.i82.i, %bb.ia ], [ %i.aog, %__drm_to_dev.exit79.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.anv, ptr noundef %i.aoa, ptr noundef %.0.i81.i, ptr noundef @.str.280) #24
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !323
  br label %.thread

.critedge.i:                                      ; preds = %joiner_primary_pipe.exit.i396
  %i.aoh = getelementptr i8, ptr %i.ank, i64 1168
  %.val71.i = load i16, ptr %i.aoh, align 8       ; 2 uses
  %i.aoi = getelementptr i8, ptr %i.ank, i64 1188
  %.val72.i = load i8, ptr %i.aoi, align 4
  %i.aoj = icmp ugt i16 %.val71.i, 11
  %i.aok = icmp eq i16 %.val71.i, 11
  %..i.i = select i1 %i.aok, i8 6, i8 0
  %.0.i84.i = select i1 %i.aoj, i8 15, i8 %..i.i
  %i.aol = and i8 %.0.i84.i, %.val72.i            ; 2 uses
  %i.aom = xor i8 %i.aol, -1
  %i.aon = and i8 %i.ani, %i.aom
  %.not63.i400 = icmp eq i8 %i.aon, 0
  br i1 %.not63.i400, label %bb.id, label %bb.ib

bb.ib:                                            ; preds = %.critedge.i
  %i.aoo = zext i8 %i.ani to i32
  %i.aop = load ptr, ptr %i.ank, align 8          ; 2 uses
  %.not.i85.i = icmp eq ptr %i.aop, null
  br i1 %.not.i85.i, label %__drm_to_dev.exit86.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aoq = getelementptr i8, ptr %i.aop, i64 8
  %i.aor = load ptr, ptr %i.aoq, align 8
  br label %__drm_to_dev.exit86.i

__drm_to_dev.exit86.i:                            ; preds = %bb.ic, %bb.ib
  %i.aos = phi ptr [ %i.aor, %bb.ic ], [ null, %bb.ib ]
  %i.aot = getelementptr i8, ptr %.pn296, i64 -1560
  %i.aou = load i32, ptr %i.aot, align 8
  %i.aov = getelementptr i8, ptr %.pn296, i64 -1616
  %i.aow = load ptr, ptr %i.aov, align 8
  %i.aox = zext nneg i8 %i.aol to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aos, i32 noundef 2, ptr noundef @.str.281, i32 noundef %i.aou, ptr noundef %i.aow, i32 noundef %i.aoo, i32 noundef %i.aox) #24
  br label %.thread

bb.id:                                            ; preds = %.critedge.i
  %i.aoy = getelementptr i8, ptr %i.ank, i64 40   ; 3 uses
  %.pn109.i = load ptr, ptr %i.aoy, align 8       ; 2 uses
  %.not105111.i = icmp eq ptr %.pn109.i, %i.aoy
  br i1 %.not105111.i, label %intel_crtc_is_joiner_secondary.exit.thread, label %.lr.ph.i401

.lr.ph.i401:                                      ; preds = %bb.id
  %i.aoz = getelementptr i8, ptr %.pn296, i64 -1560 ; 2 uses
  %i.apa = getelementptr i8, ptr %.pn296, i64 -1616 ; 2 uses
  br label %bb.ie

bb.ie:                                            ; preds = %.thread101.i, %.lr.ph.i401
  %.pn112.i = phi ptr [ %.pn109.i, %.lr.ph.i401 ], [ %.pn.i, %.thread101.i ] ; 8 uses
  %.057113.i = getelementptr i8, ptr %.pn112.i, i64 -1648
  %i.apb = load i8, ptr %i.anl, align 1           ; 3 uses
  %.not.i89.i = icmp eq i8 %i.apb, 0
  br i1 %.not.i89.i, label %intel_crtc_joiner_secondary_pipes.exit.i, label %joiner_primary_pipe.exit.i.i

joiner_primary_pipe.exit.i.i:                     ; preds = %bb.ie
  %i.apc = zext i8 %i.apb to i32
  %i.apd = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.apc, i32 -1) #23, !srcloc !32
  %i.ape = zext nneg i32 %i.apd to i64
  %i.apf = shl nuw i64 1, %i.ape
  %i.apg = trunc i64 %i.apf to i8
  %i.aph = xor i8 %i.apg, -1
  %i.api = and i8 %i.apb, %i.aph
  %i.apj = zext i8 %i.api to i64
  br label %intel_crtc_joiner_secondary_pipes.exit.i

intel_crtc_joiner_secondary_pipes.exit.i:         ; preds = %joiner_primary_pipe.exit.i.i, %bb.ie
  %.0.i90.i = phi i64 [ %i.apj, %joiner_primary_pipe.exit.i.i ], [ 0, %bb.ie ]
  %i.apk = getelementptr i8, ptr %.pn112.i, i64 16
  %i.apl = load i32, ptr %i.apk, align 8
  %i.apm = zext nneg i32 %i.apl to i64
  %i.apn = shl nuw i64 1, %i.apm
  %i.apo = and i64 %i.apn, %.0.i90.i
  %.not65.i = icmp eq i64 %i.apo, 0
  br i1 %.not65.i, label %.thread101.i, label %bb.if

bb.if:                                            ; preds = %intel_crtc_joiner_secondary_pipes.exit.i
  %i.app = call ptr @intel_atomic_get_crtc_state(ptr noundef %1, ptr noundef %.057113.i) #24 ; 4 uses
  %i.apq = icmp ugt ptr %i.app, inttoptr (i64 -4096 to ptr)
  br i1 %i.apq, label %intel_atomic_check_joiner.exit, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.apr = getelementptr i8, ptr %i.app, i64 8
  %i.aps = load i8, ptr %i.apr, align 8, !range !34, !noundef !35
  %i.apt = trunc nuw i8 %i.aps to i1
  %i.apu = load ptr, ptr %i.ank, align 8          ; 3 uses
  %.not.i91.i = icmp eq ptr %i.apu, null          ; 2 uses
  br i1 %i.apt, label %bb.ih, label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  br i1 %.not.i91.i, label %__drm_to_dev.exit92.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.apv = getelementptr i8, ptr %i.apu, i64 8
  %i.apw = load ptr, ptr %i.apv, align 8
  br label %__drm_to_dev.exit92.i

__drm_to_dev.exit92.i:                            ; preds = %bb.ii, %bb.ih
  %i.apx = phi ptr [ %i.apw, %bb.ii ], [ null, %bb.ih ]
  %i.apy = getelementptr i8, ptr %.pn112.i, i64 -1560
  %i.apz = load i32, ptr %i.apy, align 8
  %i.aqa = getelementptr i8, ptr %.pn112.i, i64 -1616
  %i.aqb = load ptr, ptr %i.aqa, align 8
  %i.aqc = load i32, ptr %i.aoz, align 8
  %i.aqd = load ptr, ptr %i.apa, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.apx, i32 noundef 2, ptr noundef @.str.282, i32 noundef %i.apz, ptr noundef %i.aqb, i32 noundef %i.aqc, ptr noundef %i.aqd) #24
  br label %.thread

bb.ij:                                            ; preds = %bb.ig
  br i1 %.not.i91.i, label %__drm_to_dev.exit94.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.aqe = getelementptr i8, ptr %i.apu, i64 8
  %i.aqf = load ptr, ptr %i.aqe, align 8
  br label %__drm_to_dev.exit94.i

__drm_to_dev.exit94.i:                            ; preds = %bb.ik, %bb.ij
  %i.aqg = phi ptr [ %i.aqf, %bb.ik ], [ null, %bb.ij ]
  %i.aqh = getelementptr i8, ptr %.pn112.i, i64 -1560
  %i.aqi = load i32, ptr %i.aqh, align 8
  %i.aqj = getelementptr i8, ptr %.pn112.i, i64 -1616
  %i.aqk = load ptr, ptr %i.aqj, align 8
  %i.aql = load i32, ptr %i.aoz, align 8
  %i.aqm = load ptr, ptr %i.apa, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aqg, i32 noundef 2, ptr noundef @.str.283, i32 noundef %i.aqi, ptr noundef %i.aqk, i32 noundef %i.aql, ptr noundef %i.aqm) #24
  %i.aqn = load i8, ptr %i.anl, align 1
  %i.aqo = getelementptr i8, ptr %i.app, i64 4403
  store i8 %i.aqn, ptr %i.aqo, align 1
  %.val70.i.i = load ptr, ptr %i.k, align 8
  %i.aqp = getelementptr i8, ptr %.pn112.i, i64 -1512 ; 2 uses
  %.val71.i.i = load i32, ptr %i.aqp, align 8
  %i.aqq = zext i32 %.val71.i.i to i64
  %i.aqr = getelementptr [56 x i8], ptr %.val70.i.i, i64 %i.aqq
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 24
  %i.aqt = load ptr, ptr %i.aqs, align 8          ; 17 uses
  %i.aqu = load ptr, ptr %i.aqt, align 8          ; 2 uses
  %i.aqv = load ptr, ptr %i.aqu, align 8          ; 2 uses
  %.not.i.i.i402 = icmp eq ptr %i.aqv, null
  br i1 %.not.i.i.i402, label %bb.im, label %bb.il

bb.il:                                            ; preds = %__drm_to_dev.exit94.i
  %i.aqw = call ptr @__drm_to_display(ptr noundef nonnull %i.aqv) #24
  %.pre.pre.i.i.i = load ptr, ptr %i.aqt, align 8
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %__drm_to_dev.exit94.i
  %.pre.i.i.i403 = phi ptr [ %.pre.pre.i.i.i, %bb.il ], [ %i.aqu, %__drm_to_dev.exit94.i ] ; 3 uses
  %i.aqx = phi ptr [ %i.aqw, %bb.il ], [ null, %__drm_to_dev.exit94.i ]
  %i.aqy = getelementptr i8, ptr %i.aqt, i64 4403 ; 3 uses
  %i.aqz = load i8, ptr %i.aqy, align 1           ; 4 uses
  %.not.i.i.i.i404 = icmp eq i8 %i.aqz, 0
  br i1 %.not.i.i.i.i404, label %intel_primary_crtc.exit.i.i, label %intel_crtc_is_joiner_secondary.exit.i.i.i

intel_crtc_is_joiner_secondary.exit.i.i.i:        ; preds = %bb.im
  %i.ara = getelementptr i8, ptr %.pre.i.i.i403, i64 1664
  %i.arb = load i32, ptr %i.ara, align 8
  %i.arc = zext i8 %i.aqz to i32
  %i.ard = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.arc, i32 -1) #23, !srcloc !32
  %.not10.i.i.i = icmp eq i32 %i.arb, %i.ard
  br i1 %.not10.i.i.i, label %intel_primary_crtc.exit.i.i, label %joiner_primary_pipe.exit.i.i.i

joiner_primary_pipe.exit.i.i.i:                   ; preds = %intel_crtc_is_joiner_secondary.exit.i.i.i
  %i.are = zext i8 %i.aqz to i32
  %i.arf = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.are, i32 -1) #23, !srcloc !32
  %i.arg = call ptr @intel_crtc_for_pipe(ptr noundef %i.aqx, i32 noundef %i.arf) #24
  %.pre.i.i405 = load i8, ptr %i.aqy, align 1
  br label %intel_primary_crtc.exit.i.i

intel_primary_crtc.exit.i.i:                      ; preds = %joiner_primary_pipe.exit.i.i.i, %intel_crtc_is_joiner_secondary.exit.i.i.i, %bb.im
  %i.arh = phi i8 [ %.pre.i.i405, %joiner_primary_pipe.exit.i.i.i ], [ 0, %bb.im ], [ %i.aqz, %intel_crtc_is_joiner_secondary.exit.i.i.i ]
  %.0.i.i.i406 = phi ptr [ %i.arg, %joiner_primary_pipe.exit.i.i.i ], [ %.pre.i.i.i403, %bb.im ], [ %.pre.i.i.i403, %intel_crtc_is_joiner_secondary.exit.i.i.i ]
  %.val.i95.i = load ptr, ptr %i.k, align 8
  %i.ari = getelementptr i8, ptr %.0.i.i.i406, i64 136
  %.val69.i.i = load i32, ptr %i.ari, align 8
  %i.arj = zext i32 %.val69.i.i to i64
  %i.ark = getelementptr [56 x i8], ptr %.val.i95.i, i64 %i.arj
  %i.arl = getelementptr i8, ptr %i.ark, i64 24
  %i.arm = load ptr, ptr %i.arl, align 8          ; 10 uses
  %i.arn = getelementptr i8, ptr %i.arm, i64 4403 ; 2 uses
  %i.aro = load i8, ptr %i.arn, align 1
  %.not.i96.i = icmp eq i8 %i.aro, %i.arh
  br i1 %.not.i96.i, label %bb.io, label %bb.in, !prof !39

bb.in:                                            ; preds = %intel_primary_crtc.exit.i.i
  call void asm sideeffect "892: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 892b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 892) #25, !srcloc !324
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.245, ptr @.str.1, i32 4585, i32 2305, i64 16) #25, !srcloc !325
  call void asm sideeffect "893: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 893b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 893) #25, !srcloc !326
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %intel_primary_crtc.exit.i.i
  %i.arp = call dereferenceable_or_null(4808) ptr @kmemdup_noprof(ptr noundef %i.arm, i64 noundef 4808, i32 noundef 3264) #29 ; 7 uses
  %.not63.i.i = icmp eq ptr %i.arp, null
  br i1 %.not63.i.i, label %.thread, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.arp, ptr noundef align 8 dereferenceable(344) %i.aqt, i64 344, i1 false)
  %i.arq = getelementptr i8, ptr %i.arp, i64 1440
  %i.arr = getelementptr i8, ptr %i.aqt, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.arq, ptr noundef align 8 dereferenceable(40) %i.arr, i64 40, i1 false)
  %i.ars = getelementptr i8, ptr %i.aqt, i64 936
  %i.art = load ptr, ptr %i.ars, align 8
  %i.aru = getelementptr i8, ptr %i.arp, i64 936
  store ptr %i.art, ptr %i.aru, align 8
  %i.arv = getelementptr i8, ptr %i.aqt, i64 1437
  %i.arw = load i8, ptr %i.arv, align 1, !range !34, !noundef !35
  %i.arx = getelementptr i8, ptr %i.arp, i64 1437
  store i8 %i.arw, ptr %i.arx, align 1
  call void @intel_crtc_free_hw_state(ptr noundef %i.aqt) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(4808) %i.aqt, ptr noundef nonnull align 8 dereferenceable(4808) %i.arp, i64 4808, i1 false)
  call void @kfree(ptr noundef nonnull %i.arp) #24
  %i.ary = getelementptr i8, ptr %i.aqt, i64 344  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(408) %i.ary, i8 0, i64 408, i1 false)
  %i.arz = getelementptr i8, ptr %i.arm, i64 344
  %i.asa = getelementptr i8, ptr %i.arm, i64 345
  %i.asb = load i8, ptr %i.asa, align 1, !range !34, !noundef !35
  %i.asc = getelementptr i8, ptr %i.aqt, i64 345
  store i8 %i.asb, ptr %i.asc, align 1
  %i.asd = load i8, ptr %i.arz, align 8, !range !34, !noundef !35
  store i8 %i.asd, ptr %i.ary, align 8
  %i.ase = getelementptr i8, ptr %i.aqt, i64 376
  %i.asf = getelementptr i8, ptr %i.arm, i64 376
  call void @drm_mode_copy(ptr noundef %i.ase, ptr noundef %i.asf) #24
  %i.asg = getelementptr i8, ptr %i.aqt, i64 496
  %i.ash = getelementptr i8, ptr %i.arm, i64 496
  call void @drm_mode_copy(ptr noundef %i.asg, ptr noundef %i.ash) #24
  %i.asi = getelementptr i8, ptr %i.aqt, i64 616
  %i.asj = getelementptr i8, ptr %i.arm, i64 616
  call void @drm_mode_copy(ptr noundef %i.asi, ptr noundef %i.asj) #24
  %i.ask = getelementptr i8, ptr %i.arm, i64 740
  %i.asl = load i32, ptr %i.ask, align 4
  %i.asm = getelementptr i8, ptr %i.aqt, i64 740
  store i32 %i.asl, ptr %i.asm, align 4
  %i.asn = getelementptr i8, ptr %i.arm, i64 744
  %i.aso = load i8, ptr %i.asn, align 8
  %i.asp = getelementptr i8, ptr %i.aqt, i64 744
  store i8 %i.aso, ptr %i.asp, align 8
  %.val72.i.i = load i32, ptr %i.aqp, align 8
  call fastcc void @copy_joiner_crtc_state_nomodeset(ptr noundef readonly %1, i32 %.val72.i.i) #26
  %i.asq = getelementptr i8, ptr %i.arm, i64 10   ; 3 uses
  %i.asr = load i8, ptr %i.asq, align 2
  %i.ass = getelementptr i8, ptr %i.aqt, i64 10   ; 4 uses
  %.lobit.i.i = and i8 %i.asr, 2
  %i.ast = load i8, ptr %i.ass, align 2
  %i.asu = and i8 %i.ast, -3
  %i.asv = or disjoint i8 %i.asu, %.lobit.i.i     ; 2 uses
  store i8 %i.asv, ptr %i.ass, align 2
  %i.asw = load i8, ptr %i.asq, align 2
  %.lobit66.i.i = and i8 %i.asw, 8
  %i.asx = and i8 %i.asv, -9
  %i.asy = or disjoint i8 %i.asx, %.lobit66.i.i   ; 2 uses
  store i8 %i.asy, ptr %i.ass, align 2
  %i.asz = load i8, ptr %i.asq, align 2
  %.lobit67.i.i = and i8 %i.asz, 4
  %i.ata = and i8 %i.asy, -5
  %i.atb = or disjoint i8 %i.ata, %.lobit67.i.i
  store i8 %i.atb, ptr %i.ass, align 2
  %i.atc = load i8, ptr %i.arn, align 1
  %i.atd = load i8, ptr %i.aqy, align 1
  %.not68.i.i = icmp eq i8 %i.atc, %i.atd
  br i1 %.not68.i.i, label %.thread101.i, label %bb.iq, !prof !39

bb.iq:                                            ; preds = %bb.ip
  call void asm sideeffect "894: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 894b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 894) #25, !srcloc !327
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.245, ptr @.str.1, i32 4627, i32 2305, i64 16) #25, !srcloc !328
  call void asm sideeffect "895: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 895b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 895) #25, !srcloc !329
  br label %.thread101.i

.thread101.i:                                     ; preds = %bb.iq, %bb.ip, %intel_crtc_joiner_secondary_pipes.exit.i
  %.pn.i = load ptr, ptr %.pn112.i, align 8       ; 2 uses
  %.not105.i = icmp eq ptr %.pn.i, %i.aoy
  br i1 %.not105.i, label %intel_crtc_is_joiner_secondary.exit.thread, label %bb.ie, !llvm.loop !301

intel_atomic_check_joiner.exit:                   ; preds = %bb.if
  %5 = ptrtoint ptr %i.app to i64
  %6 = trunc i64 %5 to i32                        ; 2 uses
  %.not336 = icmp eq i32 %6, 0
  br i1 %.not336, label %intel_crtc_is_joiner_secondary.exit.thread, label %.loopexit

intel_crtc_is_joiner_secondary.exit.thread:       ; preds = %.thread101.i, %bb.id, %bb.hv, %bb.hl, %bb.ho, %dev_name.exit394, %bb.hj, %intel_atomic_check_joiner.exit, %intel_crtc_is_joiner_secondary.exit, %bb.hm
  br label %bb.hg, !llvm.loop !302

bb.ir:                                            ; preds = %bb.hi
  %i.ate = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not299 = icmp eq ptr %i.ate, null
  br i1 %.not299, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.atf = call ptr @__drm_to_display(ptr noundef nonnull %i.ate) #24
  br label %bb.it

bb.it:                                            ; preds = %bb.ir, %bb.is
  %i.atg = phi ptr [ %i.atf, %bb.is ], [ null, %bb.ir ]
  %i.ath = getelementptr i8, ptr %i.atg, i64 40
  br label %bb.iu

bb.iu:                                            ; preds = %.backedge1133, %bb.it
  %.pn300.in = phi ptr [ %i.ath, %bb.it ], [ %.pn300, %.backedge1133 ]
  %.pn300 = load ptr, ptr %.pn300.in, align 8     ; 3 uses
  %i.ati = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not301 = icmp eq ptr %i.ati, null
  br i1 %.not301, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.atj = call ptr @__drm_to_display(ptr noundef nonnull %i.ati) #24
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iu, %bb.iv
  %i.atk = phi ptr [ %i.atj, %bb.iv ], [ null, %bb.iu ]
  %i.atl = getelementptr i8, ptr %i.atk, i64 40
  %.not461 = icmp eq ptr %.pn300, %i.atl
  br i1 %.not461, label %bb.jv, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.val350 = load ptr, ptr %i.k, align 8
  %i.atm = getelementptr i8, ptr %.pn300, i64 -1512
  %.3.val = load i32, ptr %i.atm, align 8
  %i.atn = zext i32 %.3.val to i64
  %i.ato = getelementptr [56 x i8], ptr %.val350, i64 %i.atn ; 2 uses
  %i.atp = getelementptr i8, ptr %i.ato, i64 16
  %i.atq = load ptr, ptr %i.atp, align 8          ; 14 uses
  %i.atr = getelementptr i8, ptr %i.ato, i64 24
  %i.ats = load ptr, ptr %i.atr, align 8          ; 28 uses
  %.not334 = icmp eq ptr %i.ats, null
  br i1 %.not334, label %.backedge1133, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.att = getelementptr i8, ptr %i.ats, i64 10   ; 5 uses
  %.val371 = load i8, ptr %i.att, align 2
  %i.atu = and i8 %.val371, 14
  %.not471 = icmp eq i8 %i.atu, 0
  br i1 %.not471, label %.backedge1133, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.atv = load ptr, ptr %i.ats, align 8
  %i.atw = getelementptr i8, ptr %i.atv, i64 1664 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 8
  %i.aty = zext nneg i32 %i.atx to i64
  %i.atz = shl nuw i64 1, %i.aty
  %i.aua = getelementptr i8, ptr %i.ats, i64 4403 ; 2 uses
  %i.aub = load i8, ptr %i.aua, align 1
  %i.auc = trunc i64 %i.atz to i8
  %i.aud = or i8 %i.aub, %i.auc
  %i.aue = zext i8 %i.aud to i32
  %i.auf = call i64 @llvm.read_register.i64(metadata !20)
  %i.aug = call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.aue, i64 %i.auf) #23, !srcloc !31 ; 2 uses
  %i.auh = extractvalue { i32, i64 } %i.aug, 0
  %i.aui = extractvalue { i32, i64 } %i.aug, 1
  call void @llvm.write_register.i64(metadata !20, i64 %i.aui)
  %i.auj = icmp eq i32 %i.auh, 1
  br i1 %i.auj, label %intel_joiner_adjust_pipe_src.exit, label %joiner_primary_pipe.exit.i408

joiner_primary_pipe.exit.i408:                    ; preds = %bb.iz
  %i.auk = load i32, ptr %i.atw, align 8
  %.val.i407 = load i8, ptr %i.aua, align 1
  %i.aul = zext i8 %.val.i407 to i32
  %i.aum = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aul, i32 -1) #23, !srcloc !32
  %i.aun = getelementptr i8, ptr %i.ats, i64 856  ; 2 uses
  %.val11.i = load i32, ptr %i.aun, align 8
  %i.auo = getelementptr i8, ptr %i.ats, i64 864  ; 2 uses
  %.val12.i = load i32, ptr %i.auo, align 8
  %i.aup = sub i32 %.val12.i, %.val11.i           ; 2 uses
  %i.auq = sub i32 %i.auk, %i.aum
  %i.aur = mul i32 %i.aup, %i.auq                 ; 2 uses
  %i.aus = getelementptr i8, ptr %i.ats, i64 860  ; 2 uses
  %i.aut = load i32, ptr %i.aus, align 4
  store i32 %i.aur, ptr %i.aun, align 8
  store i32 0, ptr %i.aus, align 4
  %i.auu = add i32 %i.aur, %i.aup
  store i32 %i.auu, ptr %i.auo, align 8
  %i.auv = getelementptr i8, ptr %i.ats, i64 868  ; 2 uses
  %i.auw = load i32, ptr %i.auv, align 4
  %i.aux = sub i32 %i.auw, %i.aut
  store i32 %i.aux, ptr %i.auv, align 4
  br label %intel_joiner_adjust_pipe_src.exit

intel_joiner_adjust_pipe_src.exit:                ; preds = %bb.iz, %joiner_primary_pipe.exit.i408
  %i.auy = load ptr, ptr %i.ats, align 8          ; 2 uses
  %i.auz = load ptr, ptr %i.auy, align 8          ; 2 uses
  %.not.i409 = icmp eq ptr %i.auz, null
  br i1 %.not.i409, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %intel_joiner_adjust_pipe_src.exit
  %i.ava = call ptr @__drm_to_display(ptr noundef nonnull %i.auz) #24
  %.pre.i410 = load ptr, ptr %i.ats, align 8
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %intel_joiner_adjust_pipe_src.exit
  %i.avb = phi ptr [ %.pre.i410, %bb.ja ], [ %i.auy, %intel_joiner_adjust_pipe_src.exit ] ; 2 uses
  %i.avc = phi ptr [ %i.ava, %bb.ja ], [ null, %intel_joiner_adjust_pipe_src.exit ]
  %i.avd = getelementptr i8, ptr %i.atq, i64 4645
  %i.ave = load i8, ptr %i.avd, align 1, !range !34, !noundef !35
  %i.avf = getelementptr i8, ptr %i.ats, i64 4645
  %i.avg = load i8, ptr %i.avf, align 1, !range !34, !noundef !35
  %.not25.i = icmp eq i8 %i.ave, %i.avg
  br i1 %.not25.i, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.avh = getelementptr i8, ptr %i.ats, i64 846
  store i8 0, ptr %i.avh, align 2
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.avi = call zeroext i1 @intel_pipe_config_compare(ptr noundef %i.atq, ptr noundef nonnull %i.ats, i1 noundef zeroext true) #26
  br i1 %i.avi, label %bb.jg, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.avj = load ptr, ptr %i.avc, align 8          ; 2 uses
  %.not.i.i411 = icmp eq ptr %i.avj, null
  br i1 %.not.i.i411, label %__drm_to_dev.exit.i412, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.avk = getelementptr i8, ptr %i.avj, i64 8
  %i.avl = load ptr, ptr %i.avk, align 8
  br label %__drm_to_dev.exit.i412

__drm_to_dev.exit.i412:                           ; preds = %bb.jf, %bb.je
  %i.avm = phi ptr [ %i.avl, %bb.jf ], [ null, %bb.je ]
  %i.avn = getelementptr i8, ptr %i.avb, i64 88
  %i.avo = load i32, ptr %i.avn, align 8
  %i.avp = getelementptr i8, ptr %i.avb, i64 32
  %i.avq = load ptr, ptr %i.avp, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.avm, i32 noundef 2, ptr noundef @.str.284, i32 noundef %i.avo, ptr noundef %i.avq) #24
  br label %bb.jm

bb.jg:                                            ; preds = %bb.jd
  %i.avr = load ptr, ptr %i.atq, align 8
  %i.avs = load ptr, ptr %i.avr, align 8          ; 2 uses
  %.not.i26.i = icmp eq ptr %i.avs, null
  br i1 %.not.i26.i, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.avt = call ptr @__drm_to_display(ptr noundef nonnull %i.avs) #24
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.avu = phi ptr [ %i.avt, %bb.jh ], [ null, %bb.jg ] ; 2 uses
  %i.avv = getelementptr i8, ptr %i.avu, i64 1168
  %i.avw = load i16, ptr %i.avv, align 8
  %i.avx = icmp ugt i16 %i.avw, 11
  br i1 %i.avx, label %bb.jj, label %allow_vblank_delay_fastset.exit.thread.i

bb.jj:                                            ; preds = %bb.ji
  %i.avy = getelementptr i8, ptr %i.atq, i64 852
  %i.avz = load i8, ptr %i.avy, align 4, !range !34, !noundef !35
  %i.awa = trunc nuw i8 %i.avz to i1
  br i1 %i.awa, label %allow_vblank_delay_fastset.exit.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.awb = call zeroext i1 @intel_vrr_always_use_vrr_tg(ptr noundef %i.avu) #24
  br i1 %i.awb, label %allow_vblank_delay_fastset.exit.i, label %allow_vblank_delay_fastset.exit.thread.i

allow_vblank_delay_fastset.exit.i:                ; preds = %bb.jk, %bb.jj
  %i.awc = getelementptr i8, ptr %i.atq, i64 888
  %.val.i.i414 = load i32, ptr %i.awc, align 8
  %i.awd = and i32 %.val.i.i414, 512
  %.not6.i.i = icmp eq i32 %i.awd, 0
  br i1 %.not6.i.i, label %bb.jl, label %allow_vblank_delay_fastset.exit.thread.i

bb.jl:                                            ; preds = %allow_vblank_delay_fastset.exit.i
  %i.awe = getelementptr i8, ptr %i.ats, i64 846
  store i8 1, ptr %i.awe, align 2
  br label %allow_vblank_delay_fastset.exit.thread.i

allow_vblank_delay_fastset.exit.thread.i:         ; preds = %bb.jl, %allow_vblank_delay_fastset.exit.i, %bb.jk, %bb.ji
  %i.awf = load i8, ptr %i.att, align 2
  %i.awg = and i8 %i.awf, -3
  store i8 %i.awg, ptr %i.att, align 2
  br label %bb.jm

bb.jm:                                            ; preds = %allow_vblank_delay_fastset.exit.thread.i, %__drm_to_dev.exit.i412
  %i.awh = getelementptr i8, ptr %i.atq, i64 1248
  %i.awi = getelementptr i8, ptr %i.ats, i64 1248
  %i.awj = load i32, ptr %i.awh, align 4
  %i.awk = load i32, ptr %i.awi, align 8
  %i.awl = icmp eq i32 %i.awj, %i.awk
  br i1 %i.awl, label %bb.jn, label %intel_compare_link_m_n.exit.thread.i

bb.jn:                                            ; preds = %bb.jm
  %i.awm = getelementptr i8, ptr %i.atq, i64 1252
end_hunk_2
begin_hunk_3_@intel_atomic_check:bb.a
  %i.bbu = getelementptr i8, ptr %i.ayp, i64 844
  store i8 0, ptr %i.bbu, align 4
  %i.bbv = getelementptr i8, ptr %i.ayp, i64 845
  store i8 0, ptr %i.bbv, align 1
  %i.bbw = getelementptr i8, ptr %i.ayp, i64 846
  store i8 0, ptr %i.bbw, align 2
  br label %intel_pipes_need_modeset.exit.thread

intel_pipes_need_modeset.exit.thread:             ; preds = %bb.ku, %bb.ks, %.split.us.i, %bb.kb, %intel_pipes_need_modeset.exit, %bb.kl, %bb.kc, %bb.kd
  br label %bb.jy, !llvm.loop !306

bb.la:                                            ; preds = %bb.ka
  %i.bbx = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not307 = icmp eq ptr %i.bbx, null
  br i1 %.not307, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bby = call ptr @__drm_to_display(ptr noundef nonnull %i.bbx) #24
  br label %bb.lc

bb.lc:                                            ; preds = %bb.la, %bb.lb
  %i.bbz = phi ptr [ %i.bby, %bb.lb ], [ null, %bb.la ]
  %i.bca = getelementptr i8, ptr %i.bbz, i64 40
  br label %bb.ld

bb.ld:                                            ; preds = %.backedge1130, %bb.lc
  %.pn308.in = phi ptr [ %i.bca, %bb.lc ], [ %.pn308, %.backedge1130 ]
  %.pn308 = load ptr, ptr %.pn308.in, align 8     ; 4 uses
  %.5 = getelementptr i8, ptr %.pn308, i64 -1648
  %i.bcb = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not309 = icmp eq ptr %i.bcb, null
  br i1 %.not309, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bcc = call ptr @__drm_to_display(ptr noundef nonnull %i.bcb) #24
  br label %bb.lf

bb.lf:                                            ; preds = %bb.ld, %bb.le
  %i.bcd = phi ptr [ %i.bcc, %bb.le ], [ null, %bb.ld ]
  %i.bce = getelementptr i8, ptr %i.bcd, i64 40
  %.not463 = icmp eq ptr %.pn308, %i.bce
  br i1 %.not463, label %bb.lj, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %.val349 = load ptr, ptr %i.k, align 8
  %i.bcf = getelementptr i8, ptr %.pn308, i64 -1512
  %.5.val = load i32, ptr %i.bcf, align 8
  %i.bcg = zext i32 %.5.val to i64
  %i.bch = getelementptr [56 x i8], ptr %.val349, i64 %i.bcg
  %i.bci = getelementptr i8, ptr %i.bch, i64 24
  %i.bcj = load ptr, ptr %i.bci, align 8          ; 2 uses
  %.not330 = icmp eq ptr %i.bcj, null
  br i1 %.not330, label %.backedge1130, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bck = getelementptr i8, ptr %i.bcj, i64 10
  %.val369 = load i8, ptr %i.bck, align 2
  %i.bcl = and i8 %.val369, 14
  %.not468 = icmp eq i8 %i.bcl, 0
  br i1 %.not468, label %.backedge1130, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @intel_dpll_release(ptr noundef %1, ptr noundef %.5) #24
  br label %.backedge1130

.backedge1130:                                    ; preds = %bb.li, %bb.lg, %bb.lh
  br label %bb.ld, !llvm.loop !307

bb.lj:                                            ; preds = %bb.lf
  %i.bcm = call zeroext i1 @intel_any_crtc_needs_modeset(ptr noundef %1) #24
  br i1 %i.bcm, label %bb.lk, label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  %i.bcn = call fastcc zeroext i1 @check_digital_port_conflicts(ptr noundef %1) #26, !srcloc !332
  br i1 %i.bcn, label %bb.ln, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.bco = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i424 = icmp eq ptr %i.bco, null
  br i1 %.not.i424, label %__drm_to_dev.exit425, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bcp = getelementptr i8, ptr %i.bco, i64 8
  %i.bcq = load ptr, ptr %i.bcp, align 8
  br label %__drm_to_dev.exit425

__drm_to_dev.exit425:                             ; preds = %bb.ll, %bb.lm
  %i.bcr = phi ptr [ %i.bcq, %bb.lm ], [ null, %bb.ll ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bcr, i32 noundef 2, ptr noundef @.str.211) #24
  br label %.thread

bb.ln:                                            ; preds = %bb.lk, %bb.lj
  %i.bcs = call i32 @intel_plane_atomic_check(ptr noundef %1) #24 ; 2 uses
  %.not311 = icmp eq i32 %i.bcs, 0
  br i1 %.not311, label %bb.lo, label %.loopexit

bb.lo:                                            ; preds = %bb.ln
  %i.bct = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not312 = icmp eq ptr %i.bct, null
  br i1 %.not312, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.bcu = call ptr @__drm_to_display(ptr noundef nonnull %i.bct) #24
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lo, %bb.lp
  %i.bcv = phi ptr [ %i.bcu, %bb.lp ], [ null, %bb.lo ]
  %i.bcw = getelementptr i8, ptr %i.bcv, i64 40
  br label %bb.lr

bb.lr:                                            ; preds = %.backedge1129, %bb.lq
  %.pn313.in = phi ptr [ %i.bcw, %bb.lq ], [ %.pn313, %.backedge1129 ]
  %.pn313 = load ptr, ptr %.pn313.in, align 8     ; 3 uses
  %i.bcx = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not314 = icmp eq ptr %i.bcx, null
  br i1 %.not314, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bcy = call ptr @__drm_to_display(ptr noundef nonnull %i.bcx) #24
  br label %bb.lt

bb.lt:                                            ; preds = %bb.lr, %bb.ls
  %i.bcz = phi ptr [ %i.bcy, %bb.ls ], [ null, %bb.lr ]
  %i.bda = getelementptr i8, ptr %i.bcz, i64 40
  %.not464 = icmp eq ptr %.pn313, %i.bda
  br i1 %.not464, label %bb.lw, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %.val356 = load ptr, ptr %i.k, align 8
  %i.bdb = getelementptr i8, ptr %.pn313, i64 -1512
  %.6.val = load i32, ptr %i.bdb, align 8
  %i.bdc = zext i32 %.6.val to i64
  %i.bdd = getelementptr [56 x i8], ptr %.val356, i64 %i.bdc
  %i.bde = getelementptr i8, ptr %i.bdd, i64 24
  %i.bdf = load ptr, ptr %i.bde, align 8          ; 3 uses
  %.not329 = icmp eq ptr %i.bdf, null
  br i1 %.not329, label %.backedge1129, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bdg = call i32 @intel_crtc_min_cdclk(ptr noundef nonnull %i.bdf) #24
  %i.bdh = getelementptr i8, ptr %i.bdf, i64 3704
  store i32 %i.bdg, ptr %i.bdh, align 8
  br label %.backedge1129

.backedge1129:                                    ; preds = %bb.lv, %bb.lu
  br label %bb.lr, !llvm.loop !308

bb.lw:                                            ; preds = %bb.lt
  %i.bdi = call i32 @intel_compute_global_watermarks(ptr noundef %1) #24 ; 2 uses
  %.not316 = icmp eq i32 %i.bdi, 0
  br i1 %.not316, label %bb.lx, label %.loopexit

bb.lx:                                            ; preds = %bb.lw
  %i.bdj = call i32 @intel_bw_atomic_check(ptr noundef %1) #24 ; 2 uses
  %.not317 = icmp eq i32 %i.bdj, 0
  br i1 %.not317, label %bb.ly, label %.loopexit

bb.ly:                                            ; preds = %bb.lx
  %i.bdk = call i32 @intel_cdclk_atomic_check(ptr noundef %1) #24 ; 2 uses
  %.not318 = icmp eq i32 %i.bdk, 0
  br i1 %.not318, label %bb.lz, label %.loopexit

bb.lz:                                            ; preds = %bb.ly
  %i.bdl = call zeroext i1 @intel_any_crtc_needs_modeset(ptr noundef %1) #24
  br i1 %i.bdl, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.bdm = call fastcc i32 @intel_modeset_checks(ptr noundef %1) #26, !srcloc !333 ; 2 uses
  %.not319 = icmp eq i32 %i.bdm, 0
  br i1 %.not319, label %bb.mb, label %.loopexit

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %i.bdn = call i32 @intel_pmdemand_atomic_check(ptr noundef %1) #24 ; 2 uses
  %.not320 = icmp eq i32 %i.bdn, 0
  br i1 %.not320, label %bb.mc, label %.loopexit

bb.mc:                                            ; preds = %bb.mb
  %i.bdo = call fastcc i32 @intel_atomic_check_crtcs(ptr noundef %1) #26, !srcloc !334 ; 2 uses
  %.not321 = icmp eq i32 %i.bdo, 0
  br i1 %.not321, label %bb.md, label %.loopexit

bb.md:                                            ; preds = %bb.mc
  %i.bdp = call i32 @intel_fbc_atomic_check(ptr noundef %1) #24 ; 2 uses
  %.not322 = icmp eq i32 %i.bdp, 0
  br i1 %.not322, label %bb.me, label %.loopexit

bb.me:                                            ; preds = %bb.md
  %i.bdq = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not323 = icmp eq ptr %i.bdq, null
  br i1 %.not323, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bdr = call ptr @__drm_to_display(ptr noundef nonnull %i.bdq) #24
  br label %bb.mg

bb.mg:                                            ; preds = %bb.me, %bb.mf
  %i.bds = phi ptr [ %i.bdr, %bb.mf ], [ null, %bb.me ]
  %i.bdt = getelementptr i8, ptr %i.bds, i64 40
  br label %bb.mh

bb.mh:                                            ; preds = %.backedge1128, %bb.mg
  %.pn324.in = phi ptr [ %i.bdt, %bb.mg ], [ %.pn324, %.backedge1128 ]
  %.pn324 = load ptr, ptr %.pn324.in, align 8     ; 4 uses
  %.7 = getelementptr i8, ptr %.pn324, i64 -1648
  %i.bdu = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not325 = icmp eq ptr %i.bdu, null
  br i1 %.not325, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bdv = call ptr @__drm_to_display(ptr noundef nonnull %i.bdu) #24
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mh, %bb.mi
  %i.bdw = phi ptr [ %i.bdv, %bb.mi ], [ null, %bb.mh ]
  %i.bdx = getelementptr i8, ptr %i.bdw, i64 40
  %.not465 = icmp eq ptr %.pn324, %i.bdx
  br i1 %.not465, label %intel_async_flip_check_uapi.exit.thread, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %.val348 = load ptr, ptr %i.k, align 8
  %i.bdy = getelementptr i8, ptr %.pn324, i64 -1512
  %.7.val = load i32, ptr %i.bdy, align 8
  %i.bdz = zext i32 %.7.val to i64
  %i.bea = getelementptr [56 x i8], ptr %.val348, i64 %i.bdz
  %i.beb = getelementptr i8, ptr %i.bea, i64 24
  %i.bec = load ptr, ptr %i.beb, align 8          ; 6 uses
  %.not327 = icmp eq ptr %i.bec, null
  br i1 %.not327, label %.backedge1128, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  call void @intel_color_assert_luts(ptr noundef nonnull %i.bec) #24
  %i.bed = call fastcc i32 @intel_async_flip_check_hw(ptr noundef %1, ptr noundef %.7) #26, !srcloc !335 ; 2 uses
  %.not328 = icmp eq i32 %i.bed, 0
  br i1 %.not328, label %bb.mm, label %.thread

bb.mm:                                            ; preds = %bb.ml
  %i.bee = getelementptr i8, ptr %i.bec, i64 10   ; 2 uses
  %.val368 = load i8, ptr %i.bee, align 2         ; 3 uses
  %i.bef = and i8 %.val368, 14
  %.not466 = icmp eq i8 %i.bef, 0
  br i1 %.not466, label %.critedge, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.beg = getelementptr i8, ptr %i.bec, i64 844
  %.val375 = load i8, ptr %i.beg, align 4, !range !34, !noundef !35
  %i.beh = trunc nuw i8 %.val375 to i1
  br i1 %i.beh, label %bb.mo, label %.critedge, !prof !33

bb.mo:                                            ; preds = %bb.mn
  %i.bei = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i426 = icmp eq ptr %i.bei, null
  br i1 %.not.i426, label %__drm_to_dev.exit427, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bej = getelementptr i8, ptr %i.bei, i64 8
  %i.bek = load ptr, ptr %i.bej, align 8
  br label %__drm_to_dev.exit427

__drm_to_dev.exit427:                             ; preds = %bb.mo, %bb.mp
  %i.bel = phi ptr [ %i.bek, %bb.mp ], [ null, %bb.mo ]
  %i.bem = call ptr @dev_driver_string(ptr noundef %i.bel) #24 ; 0 uses
  %i.ben = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.1, i32 6577, i32 2321, i64 16) #25, !srcloc !336
  %i.beo = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i434 = icmp eq ptr %i.beo, null
  br i1 %.not.i434, label %__drm_to_dev.exit435, label %bb.mq

bb.mq:                                            ; preds = %__drm_to_dev.exit427
  %i.bep = getelementptr i8, ptr %i.beo, i64 8
  %i.beq = load ptr, ptr %i.bep, align 8
  br label %__drm_to_dev.exit435

__drm_to_dev.exit435:                             ; preds = %__drm_to_dev.exit427, %bb.mq
  %i.ber = phi ptr [ %i.beq, %bb.mq ], [ null, %__drm_to_dev.exit427 ]
  %i.bes = call ptr @dev_driver_string(ptr noundef %i.ber) #24
  %i.bet = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i436 = icmp eq ptr %i.bet, null
  br i1 %.not.i436, label %__drm_to_dev.exit437, label %bb.mr

bb.mr:                                            ; preds = %__drm_to_dev.exit435
  %i.beu = getelementptr i8, ptr %i.bet, i64 8
  %i.bev = load ptr, ptr %i.beu, align 8
  br label %__drm_to_dev.exit437

__drm_to_dev.exit437:                             ; preds = %__drm_to_dev.exit435, %bb.mr
  %i.bew = phi ptr [ %i.bev, %bb.mr ], [ null, %__drm_to_dev.exit435 ] ; 2 uses
  %i.bex = getelementptr i8, ptr %i.bew, i64 80
  %i.bey = load ptr, ptr %i.bex, align 8          ; 2 uses
  %.not.i438 = icmp eq ptr %i.bey, null
  br i1 %.not.i438, label %bb.ms, label %dev_name.exit441

bb.ms:                                            ; preds = %__drm_to_dev.exit437
  %.val.i440 = load ptr, ptr %i.bew, align 8
  br label %dev_name.exit441

dev_name.exit441:                                 ; preds = %__drm_to_dev.exit437, %bb.ms
  %.0.i439 = phi ptr [ %.val.i440, %bb.ms ], [ %i.bey, %__drm_to_dev.exit437 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ben, ptr noundef %i.bes, ptr noundef %.0.i439, ptr noundef @.str.212) #24
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !337
  %.val367.pre = load i8, ptr %i.bee, align 2
  br label %.critedge

.critedge:                                        ; preds = %bb.mm, %dev_name.exit441, %bb.mn
  %.val367 = phi i8 [ %.val368, %bb.mm ], [ %.val367.pre, %dev_name.exit441 ], [ %.val368, %bb.mn ]
  %i.bez = and i8 %.val367, 14
  %.not467 = icmp eq i8 %i.bez, 0
  br i1 %.not467, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %.critedge
  %i.bfa = getelementptr i8, ptr %i.bec, i64 844
  %.val374 = load i8, ptr %i.bfa, align 4, !range !34, !noundef !35
  %i.bfb = trunc nuw i8 %.val374 to i1
  br i1 %i.bfb, label %bb.mu, label %.backedge1128

bb.mu:                                            ; preds = %bb.mt, %.critedge
  %i.bfc = phi ptr [ @.str.214, %bb.mt ], [ @.str.213, %.critedge ]
  call void @intel_crtc_state_dump(ptr noundef nonnull %i.bec, ptr noundef %1, ptr noundef nonnull %i.bfc) #24
  br label %.backedge1128

.backedge1128:                                    ; preds = %bb.mu, %bb.mk, %bb.mt
  br label %bb.mh, !llvm.loop !309

.loopexit:                                        ; preds = %intel_atomic_check_joiner.exit, %intel_atomic_check_config_and_link.exit.thread.a, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.ly, %bb.lx, %bb.lw, %bb.ln, %intel_atomic_check_config_and_link.exit, %bb.s
  %.0242 = phi i32 [ %i.at, %bb.s ], [ %i.alk, %intel_atomic_check_config_and_link.exit ], [ %.0.i.i, %intel_atomic_check_config_and_link.exit.thread.a ], [ %i.bcs, %bb.ln ], [ %i.bdi, %bb.lw ], [ %i.bdj, %bb.lx ], [ %i.bdk, %bb.ly ], [ %i.bdm, %bb.ma ], [ %i.bdn, %bb.mb ], [ %i.bdo, %bb.mc ], [ %i.bdp, %bb.md ], [ %6, %intel_atomic_check_joiner.exit ] ; 2 uses
  %i.bfd = icmp eq i32 %.0242, -35
  br i1 %i.bfd, label %intel_async_flip_check_uapi.exit.thread, label %.thread

.thread:                                          ; preds = %bb.io, %bb.ml, %__drm_to_dev.exit92.i, %dev_name.exit83.i, %__drm_to_dev.exit86.i, %__drm_to_dev.exit425, %.loopexit
  %.0242457 = phi i32 [ %.0242, %.loopexit ], [ -22, %__drm_to_dev.exit86.i ], [ -22, %__drm_to_dev.exit425 ], [ %i.bed, %bb.ml ], [ -22, %__drm_to_dev.exit92.i ], [ -22, %dev_name.exit83.i ], [ -12, %bb.io ]
  %i.bfe = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not339 = icmp eq ptr %i.bfe, null
  br i1 %.not339, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %.thread
  %i.bff = call ptr @__drm_to_display(ptr noundef nonnull %i.bfe) #24
  br label %bb.mw

bb.mw:                                            ; preds = %.thread, %bb.mv
  %i.bfg = phi ptr [ %i.bff, %bb.mv ], [ null, %.thread ]
  %i.bfh = getelementptr i8, ptr %i.bfg, i64 40
  br label %bb.mx

bb.mx:                                            ; preds = %.backedge, %bb.mw
  %.pn340.in = phi ptr [ %i.bfh, %bb.mw ], [ %.pn340, %.backedge ]
  %.pn340 = load ptr, ptr %.pn340.in, align 8     ; 3 uses
  %i.bfi = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not341 = icmp eq ptr %i.bfi, null
  br i1 %.not341, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.bfj = call ptr @__drm_to_display(ptr noundef nonnull %i.bfi) #24
  br label %bb.mz

bb.mz:                                            ; preds = %bb.mx, %bb.my
  %i.bfk = phi ptr [ %i.bfj, %bb.my ], [ null, %bb.mx ]
  %i.bfl = getelementptr i8, ptr %i.bfk, i64 40
  %.not475 = icmp eq ptr %.pn340, %i.bfl
  br i1 %.not475, label %intel_async_flip_check_uapi.exit.thread, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %.val = load ptr, ptr %i.k, align 8
  %i.bfm = getelementptr i8, ptr %.pn340, i64 -1512
  %.8.val = load i32, ptr %i.bfm, align 8
  %i.bfn = zext i32 %.8.val to i64
  %i.bfo = getelementptr [56 x i8], ptr %.val, i64 %i.bfn
  %i.bfp = getelementptr i8, ptr %i.bfo, i64 24
  %i.bfq = load ptr, ptr %i.bfp, align 8          ; 2 uses
  %.not343 = icmp eq ptr %i.bfq, null
  br i1 %.not343, label %.backedge, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  call void @intel_crtc_state_dump(ptr noundef nonnull %i.bfq, ptr noundef %1, ptr noundef @.str.215) #24
  br label %.backedge

.backedge:                                        ; preds = %bb.nb, %bb.na
  br label %bb.mx, !llvm.loop !310

intel_async_flip_check_uapi.exit.thread:          ; preds = %bb.mj, %bb.mz, %__drm_to_dev.exit.i, %__drm_to_dev.exit60.i, %__drm_to_dev.exit62.i, %__drm_to_dev.exit58.i, %__drm_to_dev.exit56.i, %.loopexit, %bb.c
  %.0 = phi i32 [ %.0242457, %bb.mz ], [ -35, %.loopexit ], [ -19, %bb.c ], [ -22, %__drm_to_dev.exit.i ], [ -22, %__drm_to_dev.exit56.i ], [ -22, %__drm_to_dev.exit58.i ], [ -22, %__drm_to_dev.exit62.i ], [ -22, %__drm_to_dev.exit60.i ], [ 0, %bb.mj ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_display_driver_check_access(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_vrr_check_modeset(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_modeset(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @copy_joiner_crtc_state_nomodeset(ptr nofree noundef readonly captures(none) %0, i32 %.136.val) unnamed_addr #1 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val16 = load ptr, ptr %i.a, align 8
  %i.b = zext i32 %.136.val to i64
  %i.c = getelementptr [56 x i8], ptr %.val16, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__drm_to_display(ptr noundef nonnull %i.g) #24
  %.pre.pre.i = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = getelementptr i8, ptr %i.e, i64 4403
  %i.k = load i8, ptr %i.j, align 1               ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %intel_primary_crtc.exit, label %intel_crtc_is_joiner_secondary.exit.i

intel_crtc_is_joiner_secondary.exit.i:            ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.pre.i, i64 1664
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i8 %i.k to i32
  %i.o = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.n, i32 -1) #23, !srcloc !32
  %.not10.i = icmp eq i32 %i.m, %i.o
  br i1 %.not10.i, label %intel_primary_crtc.exit, label %joiner_primary_pipe.exit.i

joiner_primary_pipe.exit.i:                       ; preds = %intel_crtc_is_joiner_secondary.exit.i
  %i.p = zext i8 %i.k to i32
  %i.q = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.p, i32 -1) #23, !srcloc !32
  %i.r = tail call ptr @intel_crtc_for_pipe(ptr noundef %i.i, i32 noundef %i.q) #24
  br label %intel_primary_crtc.exit

intel_primary_crtc.exit:                          ; preds = %bb.c, %intel_crtc_is_joiner_secondary.exit.i, %joiner_primary_pipe.exit.i
  %.0.i = phi ptr [ %i.r, %joiner_primary_pipe.exit.i ], [ %.pre.i, %bb.c ], [ %.pre.i, %intel_crtc_is_joiner_secondary.exit.i ]
  %.val = load ptr, ptr %i.a, align 8
  %i.s = getelementptr i8, ptr %.0.i, i64 136
  %.val15 = load i32, ptr %i.s, align 8
  %i.t = zext i32 %.val15 to i64
  %i.u = getelementptr [56 x i8], ptr %.val, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %i.x = getelementptr i8, ptr %i.e, i64 352
  %i.y = getelementptr i8, ptr %i.w, i64 352
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.x, ptr noundef %i.z) #24 ; 0 uses
  %i.ab = getelementptr i8, ptr %i.e, i64 360
  %i.ac = getelementptr i8, ptr %i.w, i64 360
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.ab, ptr noundef %i.ad) #24 ; 0 uses
  %i.af = getelementptr i8, ptr %i.e, i64 368
  %i.ag = getelementptr i8, ptr %i.w, i64 368
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.af, ptr noundef %i.ah) #24 ; 0 uses
  %i.aj = getelementptr i8, ptr %i.w, i64 736
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.e, i64 736
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.w, i64 10
  %i.an = load i8, ptr %i.am, align 2
  %i.ao = getelementptr i8, ptr %i.e, i64 10      ; 2 uses
  %.lobit = and i8 %i.an, 32
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = and i8 %i.ap, -33
  %i.ar = or disjoint i8 %i.aq, %.lobit
  store i8 %i.ar, ptr %i.ao, align 2
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_dp_mst_crtc_needs_modeset(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_dp_mst_is_slave_trans(ptr noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @intel_cpu_transcoders_need_modeset(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = zext i8 %1 to i64
  br label %.split.us

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #24
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 40       ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.h = zext i8 %1 to i64                        ; 2 uses
  %i.i = icmp eq ptr %.pre, null
  br i1 %i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %.thread, %bb.b
  %i.j = phi i64 [ %i.d, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi ptr [ %i.c, %.thread ], [ %i.g, %bb.b ]
  %i.l = phi ptr [ inttoptr (i64 40 to ptr), %.thread ], [ %i.f, %bb.b ]
  %.pn.us28 = load ptr, ptr %i.l, align 8         ; 2 uses
  %.not33 = icmp eq ptr %.pn.us28, inttoptr (i64 40 to ptr)
  br i1 %.not33, label %.split27.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us
  %.val.us = load ptr, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.pn.us29 = phi ptr [ %.pn.us28, %.lr.ph ], [ %.pn.us, %bb.g ] ; 2 uses
  %i.m = getelementptr i8, ptr %.pn.us29, i64 -1512
  %.016.val.us = load i32, ptr %i.m, align 8
  %i.n = zext i32 %.016.val.us to i64
  %i.o = getelementptr [56 x i8], ptr %.val.us, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %.not22.us = icmp eq ptr %i.q, null
  br i1 %.not22.us, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.q, i64 345
  %i.s = load i8, ptr %i.r, align 1, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.q, i64 880
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext nneg i32 %i.v to i64
end_hunk_3
