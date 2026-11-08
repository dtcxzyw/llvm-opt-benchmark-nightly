Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_watermark?download=true
inline.NumInlined: 430
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@skl_compute_wm:bb.a
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr i8, ptr %i.aj, i64 204
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = call i32 @intel_plane_pixel_rate(ptr noundef %i.w, ptr noundef %i.aj) #16
  %i.ek = load i32, ptr %i.dz, align 4
  %i.el = call fastcc range(i32 -22, 1) i32 @skl_compute_wm_params(ptr noundef %i.w, i32 noundef %i.ec, ptr noundef %i.ee, i64 noundef %i.eg, i32 noundef %i.ei, i32 noundef %i.ej, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %i.ek) #17, !srcloc !30 ; 2 uses
  %.not19.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not19.i.i.i, label %bb.ao, label %icl_build_plane_wm.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %i.w, align 8
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eo = call ptr @__drm_to_display(ptr noundef nonnull %i.en) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ep = phi ptr [ %i.eo, %bb.ap ], [ null, %bb.ao ] ; 5 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 5536   ; 3 uses
  %i.er = load i8, ptr %i.eq, align 8
  %.not22.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not22.i.i.i.i, label %skl_compute_wm_levels.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq
  %i.es = getelementptr i8, ptr %i.ep, i64 5430   ; 2 uses
  %i.et = getelementptr i8, ptr %i.ep, i64 8      ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ep, i64 5568   ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ep, i64 1168
  %i.ew = load i8, ptr %5, align 4, !range !18
  %.fr21.i.i.i = freeze i8 %i.ew
  %i.ex = trunc i8 %.fr21.i.i.i to i1
  br i1 %i.ex, label %.lr.ph.split.i.us.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %skl_wm_latency.exit.i.us.i.i.i
  %indvars.iv.i.us.i.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.i, %skl_wm_latency.exit.i.us.i.i.i ], [ 0, %.lr.ph.i.i.i.i ] ; 4 uses
  %.021.i.us.i.i.i = phi ptr [ %i.ey, %skl_wm_latency.exit.i.us.i.i.i ], [ %4, %.lr.ph.i.i.i.i ]
  %i.ey = getelementptr [12 x i8], ptr %4, i64 %indvars.iv.i.us.i.i.i ; 2 uses
  %i.ez = getelementptr [2 x i8], ptr %i.es, i64 %indvars.iv.i.us.i.i.i
  %i.fa = load i16, ptr %i.ez, align 2            ; 2 uses
  %i.fb = zext i16 %i.fa to i32                   ; 2 uses
  %i.fc = icmp eq i16 %i.fa, 0
  br i1 %i.fc, label %skl_wm_latency.exit.i.us.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.i.us.i.i.i
  %i.fd = load i64, ptr %i.et, align 8
  %i.fe = and i64 %i.fd, 622770257920
  %or.cond20.i.i.us.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %or.cond20.i.i.us.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = load i8, ptr %i.eu, align 8, !range !18, !noundef !19
  %i.fg = shl nuw nsw i8 %i.ff, 2
  %i.fh = zext nneg i8 %i.fg to i32
  %spec.select.i.i.us.i.i.i = add nuw nsw i32 %i.fh, %i.fb
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i.us.i.i.i = phi i32 [ %i.fb, %bb.ar ], [ %spec.select.i.i.us.i.i.i, %bb.as ] ; 2 uses
  %.val.i.i.us.i.i.i = load i16, ptr %i.ev, align 8
  %i.fi = icmp eq i16 %.val.i.i.us.i.i.i, 9
  %i.fj = add nuw nsw i32 %.0.i.i.us.i.i.i, 15
  %spec.select.i.i.i = select i1 %i.fi, i32 %i.fj, i32 %.0.i.i.us.i.i.i
  br label %skl_wm_latency.exit.i.us.i.i.i

skl_wm_latency.exit.i.us.i.i.i:                   ; preds = %bb.at, %.lr.ph.split.i.us.i.i.i
  %.014.i.i.us.i.i.i = phi i32 [ 0, %.lr.ph.split.i.us.i.i.i ], [ %spec.select.i.i.i, %bb.at ]
  %i.fk = trunc nuw nsw i64 %indvars.iv.i.us.i.i.i to i32
  call fastcc void @skl_compute_plane_wm(ptr noundef readonly %i.w, ptr noundef readonly %i.ap, i32 noundef %i.fk, i32 noundef %.014.i.i.us.i.i.i, ptr noundef nonnull readonly %5, ptr noundef %.021.i.us.i.i.i, ptr noundef %i.ey) #17, !srcloc !31
  %indvars.iv.next.i.us.i.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i.i, 1 ; 2 uses
  %i.fl = load i8, ptr %i.eq, align 8
  %i.fm = zext i8 %i.fl to i64
  %i.fn = icmp samesign ult i64 %indvars.iv.next.i.us.i.i.i, %i.fm
  br i1 %i.fn, label %.lr.ph.split.i.us.i.i.i, label %skl_compute_wm_levels.exit.i.i.i, !llvm.loop !6

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %skl_wm_latency.exit.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %skl_wm_latency.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ] ; 4 uses
  %.021.i.i.i.i = phi ptr [ %i.fo, %skl_wm_latency.exit.i.i.i.i ], [ %4, %.lr.ph.i.i.i.i ]
  %i.fo = getelementptr [12 x i8], ptr %4, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.fp = getelementptr [2 x i8], ptr %i.es, i64 %indvars.iv.i.i.i.i
  %i.fq = load i16, ptr %i.fp, align 2            ; 2 uses
  %i.fr = zext i16 %i.fq to i32                   ; 2 uses
  %i.fs = icmp eq i16 %i.fq, 0
  br i1 %i.fs, label %skl_wm_latency.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.ft = load i64, ptr %i.et, align 8
  %i.fu = and i64 %i.ft, 622770257920
  %or.cond20.i.i.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %or.cond20.i.i.i.i.i, label %skl_wm_latency.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fv = load i8, ptr %i.eu, align 8, !range !18, !noundef !19
  %i.fw = shl nuw nsw i8 %i.fv, 2
  %i.fx = zext nneg i8 %i.fw to i32
  %spec.select.i.i.i.i.i = add nuw nsw i32 %i.fx, %i.fr
  br label %skl_wm_latency.exit.i.i.i.i

skl_wm_latency.exit.i.i.i.i:                      ; preds = %bb.av, %bb.au, %.lr.ph.split.i.i.i.i
  %.014.i.i.i.i.i = phi i32 [ 0, %.lr.ph.split.i.i.i.i ], [ %i.fr, %bb.au ], [ %spec.select.i.i.i.i.i, %bb.av ]
  %i.fy = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  call fastcc void @skl_compute_plane_wm(ptr noundef readonly %i.w, ptr noundef readonly %i.ap, i32 noundef %i.fy, i32 noundef %.014.i.i.i.i.i, ptr noundef nonnull readonly %5, ptr noundef %.021.i.i.i.i, ptr noundef %i.fo) #17, !srcloc !31
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.fz = load i8, ptr %i.eq, align 8
  %i.ga = zext i8 %i.fz to i64
  %i.gb = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.ga
  br i1 %i.gb, label %.lr.ph.split.i.i.i.i, label %skl_compute_wm_levels.exit.i.i.i, !llvm.loop !6

skl_compute_wm_levels.exit.i.i.i:                 ; preds = %skl_wm_latency.exit.i.i.i.i, %skl_wm_latency.exit.i.us.i.i.i, %bb.aq
  %i.gc = getelementptr i8, ptr %i.du, i64 5536   ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 8
  %.not22.i.i.i = icmp eq i8 %i.gd, 0
  br i1 %.not22.i.i.i, label %icl_build_plane_wm.exit.thread54.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %skl_compute_wm_levels.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %skl_compute_wm_levels.exit.i.i.i ] ; 3 uses
  %i.ge = getelementptr [12 x i8], ptr %4, i64 %indvars.iv.i.i.i
  %i.gf = load i16, ptr %i.ge, align 4
  %i.gg = getelementptr [12 x i8], ptr %i.dx, i64 %indvars.iv.i.i.i
  %i.gh = getelementptr i8, ptr %i.gg, i64 1486
  store i16 %i.gf, ptr %i.gh, align 2
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gi = load i8, ptr %i.gc, align 8
  %i.gj = zext i8 %i.gi to i64
  %i.gk = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.gj
  br i1 %i.gk, label %.lr.ph.i.i.i, label %icl_build_plane_wm.exit.thread54.i, !llvm.loop !116

icl_build_plane_wm.exit.thread54.i:               ; preds = %.lr.ph.i.i.i, %skl_compute_wm_levels.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %icl_build_plane_wm.exit.thread.i

icl_build_plane_wm.exit.i:                        ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %skl_print_wm_changes.exit

icl_build_plane_wm.exit.thread.i:                 ; preds = %icl_build_plane_wm.exit.thread54.i, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.p, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gl = load ptr, ptr %i.c, align 8
  %i.gm = getelementptr i8, ptr %i.gl, i64 640
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv.next.i, %i.go
  br i1 %i.gp, label %bb.k, label %.critedge.i, !llvm.loop !117

.critedge.i:                                      ; preds = %icl_build_plane_wm.exit.thread.i, %bb.j
  %i.gq = getelementptr i8, ptr %i.w, i64 1484
  %i.gr = getelementptr i8, ptr %i.w, i64 2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(1058) %i.gr, ptr noundef align 4 dereferenceable(1058) %i.gq, i64 1058, i1 false)
  %i.gs = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  %.not.i38.i = icmp eq ptr %i.gt, null
  br i1 %.not.i38.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i
  %i.gu = call ptr @__drm_to_display(ptr noundef nonnull %i.gt) #16
  %.pre.i39.i = load ptr, ptr %i.w, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.critedge.i
  %i.gv = phi ptr [ %.pre.i39.i, %bb.aw ], [ %i.gs, %.critedge.i ] ; 2 uses
  %i.gw = phi ptr [ %i.gu, %bb.aw ], [ null, %.critedge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i64 36, i1 false), !annotation !22
  %i.gx = getelementptr i8, ptr %i.w, i64 344
  %i.gy = load i8, ptr %i.gx, align 8, !range !18, !noundef !19
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.ay, label %skl_build_pipe_wm.exit.thread130

bb.ay:                                            ; preds = %bb.ax
  call void @skl_prefill_init(ptr noundef nonnull %3, ptr noundef %i.w) #16
  %i.ha = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.i41.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i41.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = call ptr @__drm_to_display(ptr noundef nonnull %i.hb) #16
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hd = phi ptr [ %.pre.i.i.i, %bb.az ], [ %i.ha, %bb.ay ] ; 2 uses
  %i.he = phi ptr [ %i.hc, %bb.az ], [ null, %bb.ay ] ; 5 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 5536
  %i.hg = load i8, ptr %i.hf, align 8             ; 2 uses
  %.not34.i.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not34.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %bb.ba
  %i.hh = getelementptr i8, ptr %i.he, i64 5430
  %i.hi = getelementptr i8, ptr %i.he, i64 8
  %i.hj = getelementptr i8, ptr %i.he, i64 5568
  %i.hk = zext i8 %i.hg to i64
  br label %bb.bb

bb.bb:                                            ; preds = %skl_wm_latency.exit.thread.i.i.i, %.lr.ph.i.i42.i
  %indvars.iv.i.i43.i = phi i64 [ %i.hk, %.lr.ph.i.i42.i ], [ %indvars.iv.next.i.i44.i, %skl_wm_latency.exit.thread.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i44.i = add nsw i64 %indvars.iv.i.i43.i, -1 ; 4 uses
  %i.hl = getelementptr [2 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i44.i
  %i.hm = load i16, ptr %i.hl, align 2            ; 2 uses
  %i.hn = zext i16 %i.hm to i32                   ; 2 uses
  %i.ho = icmp eq i16 %i.hm, 0
  br i1 %i.ho, label %skl_wm_latency.exit.thread.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hp = load i64, ptr %i.hi, align 8
  %i.hq = and i64 %i.hp, 622770257920
  %or.cond20.i.i.i.i = icmp eq i64 %i.hq, 0
  br i1 %or.cond20.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hr = load i8, ptr %i.hj, align 8, !range !18, !noundef !19
  %i.hs = shl nuw nsw i8 %i.hr, 2
  %i.ht = zext nneg i8 %i.hs to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.ht, %i.hn
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i = phi i32 [ %i.hn, %bb.bc ], [ %spec.select.i.i.i.i, %bb.bd ]
  %i.hu = icmp eq i64 %indvars.iv.next.i.i44.i, 0
  %spec.select.i.i45.i = select i1 %i.hu, i32 0, i32 %.0.i.i.i.i
  %i.hv = call zeroext i1 @skl_prefill_vblank_too_short(ptr noundef nonnull %3, ptr noundef %i.w, i32 noundef %spec.select.i.i45.i) #16
  br i1 %i.hv, label %skl_wm_latency.exit.thread.i.i.i, label %skl_max_wm_level_for_vblank.exit.i.i

skl_wm_latency.exit.thread.i.i.i:                 ; preds = %bb.be, %bb.bb
  %i.hw = icmp samesign ugt i64 %indvars.iv.i.i43.i, 1
  br i1 %i.hw, label %bb.bb, label %._crit_edge.i.i.i, !llvm.loop !118

._crit_edge.i.i.i:                                ; preds = %bb.ba, %skl_wm_latency.exit.thread.i.i.i
  %i.hx = load ptr, ptr %i.he, align 8            ; 2 uses
  %.not.i.i.i46.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i46.i, label %skl_build_pipe_wm.exit.thread133, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i.i.i
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  br label %skl_build_pipe_wm.exit.thread133

skl_build_pipe_wm.exit.thread133:                 ; preds = %._crit_edge.i.i.i, %bb.bf
  %i.ia = phi ptr [ %i.hz, %bb.bf ], [ null, %._crit_edge.i.i.i ]
  %i.ib = getelementptr i8, ptr %i.hd, i64 88
  %i.ic = load i32, ptr %i.ib, align 8
  %i.id = getelementptr i8, ptr %i.hd, i64 32
  %i.ie = load ptr, ptr %i.id, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ia, i32 noundef 2, ptr noundef @.str.43, i32 noundef %i.ic, ptr noundef %i.ie) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %skl_print_wm_changes.exit

skl_max_wm_level_for_vblank.exit.i.i:             ; preds = %bb.be
  %i.if = trunc nuw nsw i64 %indvars.iv.next.i.i44.i to i32 ; 3 uses
  %i.ig = icmp slt i64 %indvars.iv.i.i43.i, 1
  br i1 %i.ig, label %skl_print_wm_changes.exit.loopexit213, label %bb.bg

bb.bg:                                            ; preds = %skl_max_wm_level_for_vblank.exit.i.i
  %i.ih = getelementptr i8, ptr %i.gw, i64 5536   ; 3 uses
  %i.ii = load i8, ptr %i.ih, align 8
  %i.ij = zext i8 %i.ii to i32
  %i.ik = add nsw i32 %i.ij, -1
  %i.il = icmp sgt i32 %i.ik, %i.if
  %i.im = getelementptr i8, ptr %i.w, i64 1297
  %i.in = zext i1 %i.il to i8
  store i8 %i.in, ptr %i.im, align 1
  %.04054.i.i = add i32 %i.if, 1                  ; 2 uses
  %i.io = load i8, ptr %i.ih, align 8
  %i.ip = zext i8 %i.io to i32
  %i.iq = icmp slt i32 %.04054.i.i, %i.ip
  br i1 %i.iq, label %.preheader49.lr.ph.i.i, label %._crit_edge.i.i

.preheader49.lr.ph.i.i:                           ; preds = %bb.bg
  %i.ir = getelementptr i8, ptr %i.gv, i64 1669   ; 8 uses
  %6 = sext i32 %.04054.i.i to i64
  br label %.preheader49.i.i

.preheader49.i.i:                                 ; preds = %.loopexit50.i.i, %.preheader49.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %6, %.preheader49.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.loopexit50.i.i ] ; 2 uses
  %invariant.gep.i.i = getelementptr [12 x i8], ptr %i.w, i64 %indvars.iv.i.i ; 8 uses
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = zext i8 %i.is to i64                    ; 2 uses
  %i.iu = and i64 %i.it, 1
  %.not47.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not47.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.preheader49.i.i
  %i.iv = getelementptr i8, ptr %invariant.gep.i.i, i64 2549
  store i8 0, ptr %i.iv, align 1
  %.pre66.i.i.a = load i8, ptr %i.ir, align 1
  %.pre80.i.i = zext i8 %.pre66.i.i.a to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.preheader49.i.i
  %.pre-phi.i.i = phi i64 [ %.pre80.i.i, %bb.bh ], [ %i.it, %.preheader49.i.i ] ; 2 uses
  %i.iw = and i64 %.pre-phi.i.i, 2
  %.not47.1.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not47.1.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ix = getelementptr i8, ptr %invariant.gep.i.i, i64 2681
  store i8 0, ptr %i.ix, align 1
  %.pre67.i.i.a = load i8, ptr %i.ir, align 1
  %.pre81.i.i.a = zext i8 %.pre67.i.i.a to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pre-phi82.i.i.a = phi i64 [ %.pre81.i.i.a, %bb.bj ], [ %.pre-phi.i.i, %bb.bi ] ; 2 uses
  %i.iy = and i64 %.pre-phi82.i.i.a, 4
  %.not47.2.i.i = icmp eq i64 %i.iy, 0
  br i1 %.not47.2.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iz = getelementptr i8, ptr %invariant.gep.i.i, i64 2813
  store i8 0, ptr %i.iz, align 1
  %.pre68.i.i.a = load i8, ptr %i.ir, align 1
  %.pre83.i.i.a = zext i8 %.pre68.i.i.a to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pre-phi84.i.i.a = phi i64 [ %.pre83.i.i.a, %bb.bl ], [ %.pre-phi82.i.i.a, %bb.bk ] ; 2 uses
  %i.ja = and i64 %.pre-phi84.i.i.a, 8
  %.not47.3.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not47.3.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jb = getelementptr i8, ptr %invariant.gep.i.i, i64 2945
  store i8 0, ptr %i.jb, align 1
  %.pre69.i.i.a = load i8, ptr %i.ir, align 1
  %.pre85.i.i.a = zext i8 %.pre69.i.i.a to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pre-phi86.i.i.a = phi i64 [ %.pre85.i.i.a, %bb.bn ], [ %.pre-phi84.i.i.a, %bb.bm ] ; 2 uses
  %i.jc = and i64 %.pre-phi86.i.i.a, 16
  %.not47.4.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not47.4.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jd = getelementptr i8, ptr %invariant.gep.i.i, i64 3077
  store i8 0, ptr %i.jd, align 1
  %.pre70.i.i.a = load i8, ptr %i.ir, align 1
  %.pre87.i.i.a = zext i8 %.pre70.i.i.a to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pre-phi88.i.i.a = phi i64 [ %.pre87.i.i.a, %bb.bp ], [ %.pre-phi86.i.i.a, %bb.bo ] ; 2 uses
  %i.je = and i64 %.pre-phi88.i.i.a, 32
  %.not47.5.i.i = icmp eq i64 %i.je, 0
  br i1 %.not47.5.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jf = getelementptr i8, ptr %invariant.gep.i.i, i64 3209
  store i8 0, ptr %i.jf, align 1
  %.pre71.i.i.a = load i8, ptr %i.ir, align 1
  %.pre89.i.i.a = zext i8 %.pre71.i.i.a to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pre-phi90.i.i.a = phi i64 [ %.pre89.i.i.a, %bb.br ], [ %.pre-phi88.i.i.a, %bb.bq ] ; 2 uses
  %i.jg = and i64 %.pre-phi90.i.i.a, 64
  %.not47.6.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not47.6.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jh = getelementptr i8, ptr %invariant.gep.i.i, i64 3341
  store i8 0, ptr %i.jh, align 1
  %.pre72.i.i.a = load i8, ptr %i.ir, align 1
  %.pre91.i.i.a = zext i8 %.pre72.i.i.a to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pre-phi92.i.i.a = phi i64 [ %.pre91.i.i.a, %bb.bt ], [ %.pre-phi90.i.i.a, %bb.bs ]
  %i.ji = and i64 %.pre-phi92.i.i.a, 128
  %.not47.7.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not47.7.i.i, label %.loopexit50.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jj = getelementptr i8, ptr %invariant.gep.i.i, i64 3473
  store i8 0, ptr %i.jj, align 1
  br label %.loopexit50.i.i

.loopexit50.i.i:                                  ; preds = %bb.bv, %bb.bu
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jk = load i8, ptr %i.ih, align 8
  %i.jl = zext i8 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv.next.i.i, %i.jl
  br i1 %i.jm, label %.preheader49.i.i, label %._crit_edge.i.i, !llvm.loop !119

._crit_edge.i.i:                                  ; preds = %.loopexit50.i.i, %bb.bg
  %i.jn = getelementptr i8, ptr %i.gw, i64 1168
  %i.jo = load i16, ptr %i.jn, align 8
  %i.jp = icmp ugt i16 %i.jo, 11
  br i1 %i.jp, label %bb.bw, label %skl_build_pipe_wm.exit.thread130

bb.bw:                                            ; preds = %._crit_edge.i.i
  %i.jq = getelementptr i8, ptr %i.gw, i64 8
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = and i64 %i.jr, 281474976710656
  %.not44.i.i = icmp eq i64 %i.js, 0
  br i1 %.not44.i.i, label %bb.bx, label %skl_build_pipe_wm.exit.thread130

bb.bx:                                            ; preds = %bb.bw
  %i.jt = getelementptr i8, ptr %i.gw, i64 2228
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %.not45.i.i = icmp eq i32 %i.ju, 0
  br i1 %.not45.i.i, label %skl_build_pipe_wm.exit.thread130, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jv = call zeroext i1 @skl_prefill_vblank_too_short(ptr noundef nonnull %3, ptr noundef %i.w, i32 noundef %i.ju) #16
  br i1 %i.jv, label %.preheader.i.i, label %skl_build_pipe_wm.exit.thread130

.preheader.i.i:                                   ; preds = %bb.by
  %i.jw = getelementptr i8, ptr %i.gv, i64 1669   ; 8 uses
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = zext i8 %i.jx to i64                    ; 2 uses
  %i.jz = and i64 %i.jy, 1
  %.not46.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not46.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.preheader.i.i
  %i.ka = getelementptr i8, ptr %i.w, i64 2657
  store i8 0, ptr %i.ka, align 1
  %i.kb = getelementptr i8, ptr %i.w, i64 2669
  store i8 0, ptr %i.kb, align 1
  %.pre73.i.i.a = load i8, ptr %i.jw, align 1
  %.pre93.i.i.a = zext i8 %.pre73.i.i.a to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.preheader.i.i
  %.pre-phi94.i.i.a = phi i64 [ %.pre93.i.i.a, %bb.bz ], [ %i.jy, %.preheader.i.i ] ; 2 uses
  %i.kc = and i64 %.pre-phi94.i.i.a, 2
  %.not46.1.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not46.1.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kd = getelementptr i8, ptr %i.w, i64 2789
  store i8 0, ptr %i.kd, align 1
  %i.ke = getelementptr i8, ptr %i.w, i64 2801
  store i8 0, ptr %i.ke, align 1
  %.pre74.i.i.a = load i8, ptr %i.jw, align 1
  %.pre95.i.i.a = zext i8 %.pre74.i.i.a to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pre-phi96.i.i.a = phi i64 [ %.pre95.i.i.a, %bb.cb ], [ %.pre-phi94.i.i.a, %bb.ca ] ; 2 uses
  %i.kf = and i64 %.pre-phi96.i.i.a, 4
  %.not46.2.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not46.2.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kg = getelementptr i8, ptr %i.w, i64 2921
  store i8 0, ptr %i.kg, align 1
  %i.kh = getelementptr i8, ptr %i.w, i64 2933
  store i8 0, ptr %i.kh, align 1
  %.pre75.i.i.a = load i8, ptr %i.jw, align 1
  %.pre97.i.i.a = zext i8 %.pre75.i.i.a to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pre-phi98.i.i.a = phi i64 [ %.pre97.i.i.a, %bb.cd ], [ %.pre-phi96.i.i.a, %bb.cc ] ; 2 uses
  %i.ki = and i64 %.pre-phi98.i.i.a, 8
  %.not46.3.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not46.3.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kj = getelementptr i8, ptr %i.w, i64 3053
  store i8 0, ptr %i.kj, align 1
  %i.kk = getelementptr i8, ptr %i.w, i64 3065
  store i8 0, ptr %i.kk, align 1
  %.pre76.i.i.a = load i8, ptr %i.jw, align 1
  %.pre99.i.i.a = zext i8 %.pre76.i.i.a to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pre-phi100.i.i.a = phi i64 [ %.pre99.i.i.a, %bb.cf ], [ %.pre-phi98.i.i.a, %bb.ce ] ; 2 uses
  %i.kl = and i64 %.pre-phi100.i.i.a, 16
  %.not46.4.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not46.4.i.i, label %bb.ci, label %bb.ch
end_hunk_0
