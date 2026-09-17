Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_display?download=true
inline.NumInlined: 1324
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_atomic_commit_tail:bb.a

bb.at:                                            ; preds = %__drm_to_dev.exit44.i
  %.val.i47.i = load ptr, ptr %i.dw, align 8
  br label %dev_name.exit48.i

dev_name.exit48.i:                                ; preds = %bb.at, %__drm_to_dev.exit44.i
  %.0.i46.i = phi ptr [ %.val.i47.i, %bb.at ], [ %i.dy, %__drm_to_dev.exit44.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dn, ptr noundef %i.ds, ptr noundef %.0.i46.i, ptr noundef nonnull @.str.303) #24
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !390
  br label %bb.au

bb.au:                                            ; preds = %dev_name.exit48.i, %bb.ao, %bb.an, %bb.am, %bb.al
  %indvars.iv.next.i337 = add nuw nsw i64 %indvars.iv.i335, 1 ; 2 uses
  %i.dz = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 640
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next.i337, %i.ec
  br i1 %i.ed, label %bb.al, label %intel_atomic_prepare_plane_clear_colors.exit, !llvm.loop !359

intel_atomic_prepare_plane_clear_colors.exit:     ; preds = %bb.au, %bb.ak
  %i.ee = phi ptr [ %.pr390, %bb.ak ], [ %i.dz, %bb.au ] ; 2 uses
  %.not264 = icmp eq ptr %i.ee, null
  br i1 %.not264, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %intel_atomic_prepare_plane_clear_colors.exit
  %i.ef = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ee) #24
  br label %bb.aw

bb.aw:                                            ; preds = %intel_atomic_prepare_plane_clear_colors.exit, %bb.av
  %i.eg = phi ptr [ %i.ef, %bb.av ], [ null, %intel_atomic_prepare_plane_clear_colors.exit ]
  %i.eh = getelementptr i8, ptr %i.eg, i64 40
  br label %bb.ax

bb.ax:                                            ; preds = %.backedge531.a, %bb.aw
  %.pn265.in = phi ptr [ %i.eh, %bb.aw ], [ %.pn265, %.backedge531.a ]
  %.pn265 = load ptr, ptr %.pn265.in, align 8     ; 4 uses
  %.1 = getelementptr i8, ptr %.pn265, i64 -1648
  %i.ei = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not266 = icmp eq ptr %i.ei, null
  br i1 %.not266, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ei) #24
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ek = phi ptr [ %i.ej, %bb.ay ], [ null, %bb.ax ]
  %i.el = getelementptr i8, ptr %i.ek, i64 40
  %.not393 = icmp eq ptr %.pn265, %i.el
  br i1 %.not393, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val325 = load ptr, ptr %i.k, align 8
  %i.em = getelementptr i8, ptr %.pn265, i64 -1512
  %.1.val = load i32, ptr %i.em, align 8
  %i.en = zext i32 %.1.val to i64
  %i.eo = getelementptr [56 x i8], ptr %.val325, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  %.not310 = icmp eq ptr %i.eq, null
  br i1 %.not310, label %.backedge531.a, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @intel_fbc_prepare_dirty_rect(ptr noundef %0, ptr noundef %.1) #24
  br label %.backedge531.a

.backedge531.a:                                   ; preds = %bb.bb, %bb.ba
  br label %bb.ax, !llvm.loop !360

bb.bc:                                            ; preds = %bb.az
  %i.er = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not268 = icmp eq ptr %i.er, null
  br i1 %.not268, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = tail call ptr @__drm_to_display(ptr noundef nonnull %i.er) #24
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.et = phi ptr [ %i.es, %bb.bd ], [ null, %bb.bc ]
  %i.eu = getelementptr i8, ptr %i.et, i64 40
  br label %intel_atomic_dsb_finish.exit

intel_atomic_dsb_finish.exit:                     ; preds = %intel_atomic_dsb_finish.exit.backedge, %bb.be
  %.pn269.in = phi ptr [ %i.eu, %bb.be ], [ %.pn269, %intel_atomic_dsb_finish.exit.backedge ]
  %.pn269 = load ptr, ptr %.pn269.in, align 8     ; 4 uses
  %.2 = getelementptr i8, ptr %.pn269, i64 -1648  ; 8 uses
  %i.ev = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not270 = icmp eq ptr %i.ev, null
  br i1 %.not270, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %intel_atomic_dsb_finish.exit
  %i.ew = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ev) #24
  br label %bb.bg

bb.bg:                                            ; preds = %intel_atomic_dsb_finish.exit, %bb.bf
  %i.ex = phi ptr [ %i.ew, %bb.bf ], [ null, %intel_atomic_dsb_finish.exit ]
  %i.ey = getelementptr i8, ptr %i.ex, i64 40
  %.not394 = icmp eq ptr %.pn269, %i.ey
  br i1 %.not394, label %bb.cr, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val324 = load ptr, ptr %i.k, align 8
  %i.ez = getelementptr i8, ptr %.pn269, i64 -1512 ; 2 uses
  %.2.val = load i32, ptr %i.ez, align 8
  %i.fa = zext i32 %.2.val to i64
  %i.fb = getelementptr [56 x i8], ptr %.val324, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not309 = icmp eq ptr %i.fd, null
  br i1 %.not309, label %intel_atomic_dsb_finish.exit.backedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fe = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i338 = icmp eq ptr %i.fe, null
  br i1 %.not.i338, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ff = tail call ptr @__drm_to_display(ptr noundef nonnull %i.fe) #24
  %.val.i339.pre = load ptr, ptr %i.k, align 8
  %.val80.i.pre = load i32, ptr %i.ez, align 8
  %.phi.trans.insert413 = zext i32 %.val80.i.pre to i64
  %.phi.trans.insert414 = getelementptr [56 x i8], ptr %.val.i339.pre, i64 %.phi.trans.insert413
  %.phi.trans.insert415 = getelementptr i8, ptr %.phi.trans.insert414, i64 24
  %.pre416 = load ptr, ptr %.phi.trans.insert415, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fg = phi ptr [ %.pre416, %bb.bj ], [ %i.fd, %bb.bi ] ; 26 uses
  %i.fh = phi ptr [ %i.ff, %bb.bj ], [ null, %bb.bi ]
  %i.fi = getelementptr i8, ptr %i.fg, i64 4802
  %i.fj = load i8, ptr %i.fi, align 2, !range !34, !noundef !35
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = select i1 %i.fk, i32 8192, i32 1024     ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fg, i64 4617   ; 4 uses
  %i.fn = load i8, ptr %i.fm, align 1, !range !34, !noundef !35
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = getelementptr i8, ptr %i.fg, i64 4616   ; 5 uses
  br i1 %i.fo, label %.thread84.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fq = load i8, ptr %i.fp, align 8, !range !34, !noundef !35
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %.thread84.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fs = getelementptr i8, ptr %i.fg, i64 4600
  %i.ft = load ptr, ptr %i.fs, align 8
  %.not78.i = icmp eq ptr %i.ft, null
  br i1 %.not78.i, label %intel_atomic_dsb_finish.exit.backedge, label %.thread84.i

.thread84.i:                                      ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.fu = phi i32 [ %i.fl, %bb.bl ], [ 16, %bb.bm ], [ %i.fl, %bb.bk ]
  %i.fv = tail call ptr @intel_dsb_prepare(ptr noundef %0, ptr noundef %.2, i32 noundef 0, i32 noundef %i.fu) #24 ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fg, i64 4608   ; 22 uses
  store ptr %i.fv, ptr %i.fw, align 8
  %.not79.i = icmp eq ptr %i.fv, null
  br i1 %.not79.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.thread84.i
  store i8 0, ptr %i.fm, align 1
  store i8 0, ptr %i.fp, align 8
  tail call void @intel_color_cleanup_commit(ptr noundef %i.fg) #24
  br label %intel_atomic_dsb_finish.exit.backedge

bb.bo:                                            ; preds = %.thread84.i
  %i.fx = load i8, ptr %i.fm, align 1, !range !34, !noundef !35
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fz = load i8, ptr %i.fp, align 8, !range !34, !noundef !35
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.br, label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  tail call void @intel_flipq_wait_dmc_halt(ptr noundef nonnull %i.fv, ptr noundef %.2) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gb = getelementptr i8, ptr %i.fg, i64 4664
  %i.gc = load i8, ptr %i.gb, align 8, !range !34, !noundef !35
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  tail call void @intel_pipedmc_dcb_disable(ptr noundef null, ptr noundef %.2) #24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ge = getelementptr i8, ptr %i.fg, i64 10     ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 2             ; 2 uses
  %i.gg = and i8 %i.gf, 32
  %.not.i.i340 = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i340, label %bb.bu, label %intel_crtc_needs_color_update.exit.thread.i341

bb.bu:                                            ; preds = %bb.bt
  %i.gh = getelementptr i8, ptr %i.fg, i64 844
  %.val3.i.i = load i8, ptr %i.gh, align 4, !range !34, !noundef !35
  %i.gi = and i8 %i.gf, 14
  %2 = or disjoint i8 %.val3.i.i, %i.gi
  %or.cond.not.i = icmp eq i8 %2, 0
  br i1 %or.cond.not.i, label %bb.bv, label %intel_crtc_needs_color_update.exit.thread.i341

intel_crtc_needs_color_update.exit.thread.i341:   ; preds = %bb.bu, %bb.bt
  %i.gj = load ptr, ptr %i.fw, align 8
  tail call void @intel_color_commit_noarm(ptr noundef %i.gj, ptr noundef %i.fg) #24
  br label %bb.bv

bb.bv:                                            ; preds = %intel_crtc_needs_color_update.exit.thread.i341, %bb.bu
  %i.gk = load ptr, ptr %i.fw, align 8
  tail call void @intel_crtc_planes_update_noarm(ptr noundef %i.gk, ptr noundef %0, ptr noundef %.2) #24
  %i.gl = load ptr, ptr %i.fw, align 8
  tail call void @intel_psr_trigger_frame_change_event(ptr noundef %i.gl, ptr noundef %0, ptr noundef %.2) #24
  %i.gm = load i8, ptr %i.fp, align 8, !range !34, !noundef !35
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.go = load ptr, ptr %i.fw, align 8
  tail call void @intel_dsb_vblank_evade(ptr noundef %0, ptr noundef %i.go) #24
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gp = load i8, ptr %i.ge, align 2             ; 2 uses
  %i.gq = and i8 %i.gp, 32
  %.not.i81.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i81.i, label %bb.by, label %intel_crtc_needs_color_update.exit83.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.gr = getelementptr i8, ptr %i.fg, i64 844
  %.val3.i82.i = load i8, ptr %i.gr, align 4, !range !34, !noundef !35
  %i.gs = and i8 %i.gp, 14
  %3 = or disjoint i8 %.val3.i82.i, %i.gs
  %or.cond88.not.i = icmp eq i8 %3, 0
  br i1 %or.cond88.not.i, label %bb.bz, label %intel_crtc_needs_color_update.exit83.thread.i

intel_crtc_needs_color_update.exit83.thread.i:    ; preds = %bb.by, %bb.bx
  %i.gt = load ptr, ptr %i.fw, align 8
  tail call void @intel_color_commit_arm(ptr noundef %i.gt, ptr noundef %i.fg) #24
  br label %bb.bz

bb.bz:                                            ; preds = %intel_crtc_needs_color_update.exit83.thread.i, %bb.by
  %i.gu = load ptr, ptr %i.fw, align 8
  tail call fastcc void @bdw_set_pipe_misc(ptr noundef %i.gu, ptr noundef %i.fg) #26, !srcloc !391
  %i.gv = load ptr, ptr %i.fw, align 8
  tail call void @intel_psr2_program_trans_man_trk_ctl(ptr noundef %i.gv, ptr noundef %i.fg) #24
  %i.gw = load ptr, ptr %i.fw, align 8
  tail call void @intel_crtc_planes_update_arm(ptr noundef %i.gw, ptr noundef %0, ptr noundef %.2) #24
  %i.gx = getelementptr i8, ptr %i.fh, i64 1168
  %i.gy = load i16, ptr %i.gx, align 8
  %i.gz = icmp ugt i16 %i.gy, 8
  br i1 %i.gz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ha = load ptr, ptr %i.fw, align 8
  tail call void @skl_detach_scalers(ptr noundef %i.ha, ptr noundef %i.fg) #24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.hb = load i8, ptr %i.fm, align 1, !range !34, !noundef !35
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.hd = load ptr, ptr %i.fw, align 8
  tail call void @intel_flipq_unhalt_dmc(ptr noundef %i.hd, ptr noundef %.2) #24
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.bp
  %i.he = tail call zeroext i1 @intel_color_uses_chained_dsb(ptr noundef %i.fg) #24
  br i1 %i.he, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.hf = load ptr, ptr %i.fw, align 8
  %i.hg = getelementptr i8, ptr %i.fg, i64 4600
  %i.hh = load ptr, ptr %i.hg, align 8
  tail call void @intel_dsb_chain(ptr noundef %0, ptr noundef %i.hf, ptr noundef %i.hh, i1 noundef zeroext true) #24
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.hi = tail call zeroext i1 @intel_color_uses_gosub_dsb(ptr noundef %i.fg) #24
  br i1 %i.hi, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.hj = load ptr, ptr %i.fw, align 8
  %i.hk = getelementptr i8, ptr %i.fg, i64 4600
  %i.hl = load ptr, ptr %i.hk, align 8
  tail call void @intel_dsb_gosub(ptr noundef %i.hj, ptr noundef %i.hl) #24
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.hm = load i8, ptr %i.fp, align 8, !range !34, !noundef !35
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.ci, label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  %i.ho = tail call zeroext i1 @intel_color_uses_chained_dsb(ptr noundef %i.fg) #24
  br i1 %i.ho, label %bb.cq, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hp = tail call zeroext i1 @intel_psr_use_trans_push(ptr noundef %i.fg) #24
  br i1 %i.hp, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hq = load ptr, ptr %i.fw, align 8
  tail call void @intel_dsb_wait_vblanks(ptr noundef %i.hq, i32 noundef 1) #24
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.hr = load ptr, ptr %i.fw, align 8
  tail call void @intel_vrr_send_push(ptr noundef %i.hr, ptr noundef %i.fg) #24
  %i.hs = load ptr, ptr %i.fw, align 8
  tail call void @intel_psr_wait_for_idle_dsb(ptr noundef %i.hs, ptr noundef %i.fg) #24
  %i.ht = tail call zeroext i1 @intel_psr_use_trans_push(ptr noundef %i.fg) #24
  br i1 %i.ht, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.hu = load ptr, ptr %i.fw, align 8
  tail call void @intel_dsb_wait_vblanks(ptr noundef %i.hu, i32 noundef 1) #24
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.hv = load ptr, ptr %i.fw, align 8
  tail call void @intel_dsb_wait_for_delayed_vblank(ptr noundef %0, ptr noundef %i.hv) #24
  %i.hw = load ptr, ptr %i.fw, align 8
  tail call void @intel_vrr_check_push_sent(ptr noundef %i.hw, ptr noundef %i.fg) #24
  %i.hx = getelementptr i8, ptr %i.fg, i64 4664
  %i.hy = load i8, ptr %i.hx, align 8, !range !34, !noundef !35
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ia = load ptr, ptr %i.fw, align 8
  tail call void @intel_pipedmc_dcb_enable(ptr noundef %i.ia, ptr noundef %.2) #24
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ib = load ptr, ptr %i.fw, align 8
  tail call void @intel_dsb_interrupt(ptr noundef %i.ib) #24
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.ci, %bb.ch
  %i.ic = load ptr, ptr %i.fw, align 8
  tail call void @intel_dsb_finish(ptr noundef %i.ic) #24
  br label %intel_atomic_dsb_finish.exit.backedge

intel_atomic_dsb_finish.exit.backedge:            ; preds = %bb.cq, %bb.bn, %bb.bm, %bb.bh
  br label %intel_atomic_dsb_finish.exit, !llvm.loop !361

bb.cr:                                            ; preds = %bb.bg
  tail call void @drm_atomic_helper_wait_for_dependencies(ptr noundef %0) #24
  tail call void @drm_dp_mst_atomic_wait_for_dependencies(ptr noundef %0) #24
  %i.id = tail call i32 @intel_atomic_global_state_wait_for_dependencies(ptr noundef %0) #24 ; 0 uses
  %i.ie = tail call ptr @intel_display_power_get(ptr noundef %i.d, i32 noundef 73) #24 ; 0 uses
  %i.if = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not272 = icmp eq ptr %i.if, null
  br i1 %.not272, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ig = tail call ptr @__drm_to_display(ptr noundef nonnull %i.if) #24
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.ih = phi ptr [ %i.ig, %bb.cs ], [ null, %bb.cr ]
  %i.ii = getelementptr i8, ptr %i.ih, i64 40
  br label %bb.cu

bb.cu:                                            ; preds = %.backedge530, %bb.ct
  %.pn273.in = phi ptr [ %i.ii, %bb.ct ], [ %.pn273, %.backedge530 ]
  %.pn273 = load ptr, ptr %.pn273.in, align 8     ; 4 uses
  %i.ij = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not274 = icmp eq ptr %i.ij, null
  br i1 %.not274, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ik = call ptr @__drm_to_display(ptr noundef nonnull %i.ij) #24
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %i.il = phi ptr [ %i.ik, %bb.cv ], [ null, %bb.cu ]
  %i.im = getelementptr i8, ptr %i.il, i64 40
  %.not395 = icmp eq ptr %.pn273, %i.im
  br i1 %.not395, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.val313 = load ptr, ptr %i.k, align 8
  %i.in = getelementptr i8, ptr %.pn273, i64 -1512
  %.3.val = load i32, ptr %i.in, align 8
  %i.io = zext i32 %.3.val to i64
  %i.ip = getelementptr [56 x i8], ptr %.val313, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8            ; 4 uses
  %.not308 = icmp eq ptr %i.ir, null
  br i1 %.not308, label %.backedge530, label %bb.cy

.backedge530:                                     ; preds = %bb.cx, %bb.da, %bb.cz
  br label %bb.cu, !llvm.loop !362

bb.cy:                                            ; preds = %bb.cx
  %i.is = getelementptr i8, ptr %i.ir, i64 10
  %.val328 = load i8, ptr %i.is, align 2
  %i.it = and i8 %.val328, 14
  %.not404.a = icmp eq i8 %i.it, 0
  br i1 %.not404.a, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.iu = getelementptr i8, ptr %i.ir, i64 844
  %.val329 = load i8, ptr %i.iu, align 4, !range !34, !noundef !35
  %i.iv = trunc nuw i8 %.val329 to i1
  br i1 %i.iv, label %bb.da, label %.backedge530

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.iw = getelementptr i8, ptr %.pn273, i64 16
  %i.ix = load i32, ptr %i.iw, align 8
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr [16 x i8], ptr %1, i64 %i.iy
  call void @intel_modeset_get_crtc_power_domains(ptr noundef nonnull %i.ir, ptr noundef %i.iz) #26
  br label %.backedge530

bb.db:                                            ; preds = %bb.cw
  %i.ja = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i342 = icmp eq ptr %i.ja, null
  br i1 %.not.i342, label %.thread.i343, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jb = call ptr @__drm_to_display(ptr noundef nonnull %i.ja) #24 ; 2 uses
  %.pr.i = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not105.i = icmp eq ptr %.pr.i, null
  br i1 %.not105.i, label %.thread.i343, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jc = call ptr @__drm_to_display(ptr noundef nonnull %.pr.i) #24
  br label %.thread.i343

.thread.i343:                                     ; preds = %bb.dd, %bb.dc, %bb.db
end_hunk_0
begin_hunk_1_@intel_atomic_commit_tail:bb.a
  %i.aay = getelementptr i8, ptr %i.aav, i64 1168
  %i.aaz = load i16, ptr %i.aay, align 8
  %i.aba = icmp eq i16 %i.aaz, 9
  br i1 %i.aba, label %bb.jc, label %needs_nv12_wa.exit.thread.i

bb.jc:                                            ; preds = %needs_nv12_wa.exit.i
  %i.abb = load ptr, ptr %i.yr, align 8
  %i.abc = load ptr, ptr %i.abb, align 8          ; 2 uses
  %.not.i52.i = icmp eq ptr %i.abc, null
  br i1 %.not.i52.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.abd = call ptr @__drm_to_display(ptr noundef nonnull %i.abc) #24
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.abe = phi ptr [ %i.abd, %bb.jd ], [ null, %bb.jc ]
  %i.abf = getelementptr i8, ptr %i.yr, i64 3947
  %i.abg = load i8, ptr %i.abf, align 1
  %.not6.i53.i = icmp eq i8 %i.abg, 0
  br i1 %.not6.i53.i, label %needs_nv12_wa.exit55.thread.i, label %needs_nv12_wa.exit55.i

needs_nv12_wa.exit55.i:                           ; preds = %bb.je
  %i.abh = getelementptr i8, ptr %i.abe, i64 1168
  %i.abi = load i16, ptr %i.abh, align 8
  %i.abj = icmp eq i16 %i.abi, 9
  br i1 %i.abj, label %needs_nv12_wa.exit.thread.i, label %needs_nv12_wa.exit55.thread.i

needs_nv12_wa.exit55.thread.i:                    ; preds = %needs_nv12_wa.exit55.i, %bb.je
  %i.abk = shl i32 %i.yv, 2
  %i.abl = add i32 %i.abk, 288032                 ; 4 uses
  call void @intel_dmc_wl_get(ptr noundef %i.yt, i32 %i.abl) #24
  %.val.i.i56.i = load ptr, ptr %i.yt, align 8
  %i.abm = call ptr @to_intel_uncore(ptr noundef %.val.i.i56.i) #24 ; 4 uses
  %i.abn = getelementptr i8, ptr %i.abm, i64 144
  %i.abo = load ptr, ptr %i.abn, align 8
  %i.abp = call i32 %i.abo(ptr noundef %i.abm, i32 %i.abl, i1 noundef zeroext true) #24, !inline_history !379
  %i.abq = and i32 %i.abp, -557057
  %i.abr = getelementptr i8, ptr %i.abm, i64 176
  %i.abs = load ptr, ptr %i.abr, align 8
  call void %i.abs(ptr noundef %i.abm, i32 %i.abl, i32 noundef %i.abq, i1 noundef zeroext true) #24, !inline_history !380
  call void @intel_dmc_wl_put(ptr noundef %i.yt, i32 %i.abl) #24
  br label %needs_nv12_wa.exit.thread.i

needs_nv12_wa.exit.thread.i:                      ; preds = %needs_nv12_wa.exit55.thread.i, %needs_nv12_wa.exit55.i, %needs_nv12_wa.exit.i, %bb.jb
  %i.abt = load ptr, ptr %i.ys, align 8
  %i.abu = load ptr, ptr %i.abt, align 8          ; 2 uses
  %.not.i57.i = icmp eq ptr %i.abu, null
  br i1 %.not.i57.i, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %needs_nv12_wa.exit.thread.i
  %i.abv = call ptr @__drm_to_display(ptr noundef nonnull %i.abu) #24
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %needs_nv12_wa.exit.thread.i
  %i.abw = phi ptr [ %i.abv, %bb.jf ], [ null, %needs_nv12_wa.exit.thread.i ]
  %i.abx = getelementptr i8, ptr %i.ys, i64 1472
  %i.aby = load i32, ptr %i.abx, align 8
  %.not6.i58.i = icmp eq i32 %i.aby, 0
  br i1 %.not6.i58.i, label %needs_scalerclk_wa.exit.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.abz = getelementptr i8, ptr %i.abw, i64 1168
  %i.aca = load i16, ptr %i.abz, align 8
  %i.acb = icmp eq i16 %i.aca, 11
  br i1 %i.acb, label %bb.ji, label %needs_scalerclk_wa.exit.i

bb.ji:                                            ; preds = %bb.jh
  %i.acc = load ptr, ptr %i.yr, align 8
  %i.acd = load ptr, ptr %i.acc, align 8          ; 2 uses
  %.not.i60.i = icmp eq ptr %i.acd, null
  br i1 %.not.i60.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.ace = call ptr @__drm_to_display(ptr noundef nonnull %i.acd) #24
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.acf = phi ptr [ %i.ace, %bb.jj ], [ null, %bb.ji ]
  %i.acg = getelementptr i8, ptr %i.yr, i64 1472
  %i.ach = load i32, ptr %i.acg, align 8
  %.not6.i61.i = icmp eq i32 %i.ach, 0
  br i1 %.not6.i61.i, label %needs_scalerclk_wa.exit63.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aci = getelementptr i8, ptr %i.acf, i64 1168
  %i.acj = load i16, ptr %i.aci, align 8
  %i.ack = icmp eq i16 %i.acj, 11
  br i1 %i.ack, label %needs_scalerclk_wa.exit.i, label %needs_scalerclk_wa.exit63.i

needs_scalerclk_wa.exit63.i:                      ; preds = %bb.jl, %bb.jk
  %i.acl = shl i32 %i.yv, 2
  %i.acm = add i32 %i.acl, 288032                 ; 4 uses
  call void @intel_dmc_wl_get(ptr noundef %i.yt, i32 %i.acm) #24
  %.val.i.i64.i = load ptr, ptr %i.yt, align 8
  %i.acn = call ptr @to_intel_uncore(ptr noundef %.val.i.i64.i) #24 ; 4 uses
  %i.aco = getelementptr i8, ptr %i.acn, i64 144
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = call i32 %i.acp(ptr noundef %i.acn, i32 %i.acm, i1 noundef zeroext true) #24, !inline_history !381
  %i.acr = and i32 %i.acq, -257
  %i.acs = getelementptr i8, ptr %i.acn, i64 176
  %i.act = load ptr, ptr %i.acs, align 8
  call void %i.act(ptr noundef %i.acn, i32 %i.acm, i32 noundef %i.acr, i1 noundef zeroext true) #24, !inline_history !382
  call void @intel_dmc_wl_put(ptr noundef %i.yt, i32 %i.acm) #24
  br label %needs_scalerclk_wa.exit.i

needs_scalerclk_wa.exit.i:                        ; preds = %needs_scalerclk_wa.exit63.i, %bb.jl, %bb.jh, %bb.jg
  %i.acu = load ptr, ptr %i.ys, align 8
  %i.acv = load ptr, ptr %i.acu, align 8          ; 2 uses
  %.not.i65.i = icmp eq ptr %i.acv, null
  br i1 %.not.i65.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %needs_scalerclk_wa.exit.i
  %i.acw = call ptr @__drm_to_display(ptr noundef nonnull %i.acv) #24
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %needs_scalerclk_wa.exit.i
  %i.acx = phi ptr [ %i.acw, %bb.jm ], [ null, %needs_scalerclk_wa.exit.i ]
  %i.acy = getelementptr i8, ptr %i.ys, i64 3945  ; 2 uses
  %.val.i.i376 = load i8, ptr %i.acy, align 1
  %i.acz = zext i8 %.val.i.i376 to i64
  %i.ada = call zeroext i8 @icl_hdr_plane_mask() #24
  %i.adb = or i8 %i.ada, -128
  %i.adc = zext i8 %i.adb to i64
  %i.add = xor i64 %i.adc, -1
  %i.ade = and i64 %i.add, %i.acz
  %i.adf = icmp eq i64 %i.ade, 0
  br i1 %i.adf, label %bb.jo, label %needs_cursorclk_wa.exit.i

bb.jo:                                            ; preds = %bb.jn
  %i.adg = load i8, ptr %i.acy, align 1
  %.not7.i67.i = icmp sgt i8 %i.adg, -1
  br i1 %.not7.i67.i, label %needs_cursorclk_wa.exit.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.adh = getelementptr i8, ptr %i.acx, i64 1168
  %i.adi = load i16, ptr %i.adh, align 8
  %i.adj = icmp eq i16 %i.adi, 11
  br i1 %i.adj, label %bb.jq, label %needs_cursorclk_wa.exit.i

bb.jq:                                            ; preds = %bb.jp
  %i.adk = load ptr, ptr %i.yr, align 8
  %i.adl = load ptr, ptr %i.adk, align 8          ; 2 uses
  %.not.i68.i = icmp eq ptr %i.adl, null
  br i1 %.not.i68.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.adm = call ptr @__drm_to_display(ptr noundef nonnull %i.adl) #24
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.adn = phi ptr [ %i.adm, %bb.jr ], [ null, %bb.jq ]
  %i.ado = getelementptr i8, ptr %i.yr, i64 3945  ; 2 uses
  %.val.i69.i = load i8, ptr %i.ado, align 1
  %i.adp = zext i8 %.val.i69.i to i64
  %i.adq = call zeroext i8 @icl_hdr_plane_mask() #24
  %i.adr = or i8 %i.adq, -128
  %i.ads = zext i8 %i.adr to i64
  %i.adt = xor i64 %i.ads, -1
  %i.adu = and i64 %i.adt, %i.adp
  %i.adv = icmp eq i64 %i.adu, 0
  br i1 %i.adv, label %bb.jt, label %needs_cursorclk_wa.exit72.i

bb.jt:                                            ; preds = %bb.js
  %i.adw = load i8, ptr %i.ado, align 1
  %.not7.i71.i = icmp sgt i8 %i.adw, -1
  br i1 %.not7.i71.i, label %needs_cursorclk_wa.exit72.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.adx = getelementptr i8, ptr %i.adn, i64 1168
  %i.ady = load i16, ptr %i.adx, align 8
  %i.adz = icmp eq i16 %i.ady, 11
  br i1 %i.adz, label %needs_cursorclk_wa.exit.i, label %needs_cursorclk_wa.exit72.i

needs_cursorclk_wa.exit72.i:                      ; preds = %bb.ju, %bb.jt, %bb.js
  %i.aea = shl i32 %i.yv, 2
  %i.aeb = add i32 %i.aea, 288032                 ; 4 uses
  call void @intel_dmc_wl_get(ptr noundef %i.yt, i32 %i.aeb) #24
  %.val.i.i73.i = load ptr, ptr %i.yt, align 8
  %i.aec = call ptr @to_intel_uncore(ptr noundef %.val.i.i73.i) #24 ; 4 uses
  %i.aed = getelementptr i8, ptr %i.aec, i64 144
  %i.aee = load ptr, ptr %i.aed, align 8
  %i.aef = call i32 %i.aee(ptr noundef %i.aec, i32 %i.aeb, i1 noundef zeroext true) #24, !inline_history !383
  %i.aeg = and i32 %i.aef, -268435457
  %i.aeh = getelementptr i8, ptr %i.aec, i64 176
  %i.aei = load ptr, ptr %i.aeh, align 8
  call void %i.aei(ptr noundef %i.aec, i32 %i.aeb, i32 noundef %i.aeg, i1 noundef zeroext true) #24, !inline_history !384
  call void @intel_dmc_wl_put(ptr noundef %i.yt, i32 %i.aeb) #24
  br label %needs_cursorclk_wa.exit.i

needs_cursorclk_wa.exit.i:                        ; preds = %needs_cursorclk_wa.exit72.i, %bb.ju, %bb.jp, %bb.jo, %bb.jn
  %i.aej = getelementptr i8, ptr %i.yr, i64 10    ; 3 uses
  %i.aek = load i8, ptr %i.aej, align 2           ; 2 uses
  %i.ael = and i8 %i.aek, 32
  %.not.i74.i = icmp eq i8 %i.ael, 0
  br i1 %.not.i74.i, label %bb.jv, label %intel_crtc_needs_color_update.exit.thread.i377

bb.jv:                                            ; preds = %needs_cursorclk_wa.exit.i
  %i.aem = getelementptr i8, ptr %i.yr, i64 844
  %.val3.i.i382 = load i8, ptr %i.aem, align 4, !range !34, !noundef !35
  %i.aen = and i8 %i.aek, 14
  %4 = or disjoint i8 %.val3.i.i382, %i.aen
  %or.cond105.not.i = icmp eq i8 %4, 0
  br i1 %or.cond105.not.i, label %bb.jw, label %intel_crtc_needs_color_update.exit.thread.i377

intel_crtc_needs_color_update.exit.thread.i377:   ; preds = %bb.jv, %needs_cursorclk_wa.exit.i
  call void @intel_color_post_update(ptr noundef %i.yr) #24
  br label %bb.jw

bb.jw:                                            ; preds = %intel_crtc_needs_color_update.exit.thread.i377, %bb.jv
  %i.aeo = getelementptr i8, ptr %i.yr, i64 344   ; 2 uses
  %i.aep = load i8, ptr %i.aeo, align 8, !range !34, !noundef !35
  %i.aeq = trunc nuw i8 %i.aep to i1
  br i1 %i.aeq, label %bb.jx, label %intel_encoders_audio_enable.exit.i

bb.jx:                                            ; preds = %bb.jw
  %i.aer = getelementptr i8, ptr %i.ys, i64 893
  %i.aes = load i8, ptr %i.aer, align 1, !range !34, !noundef !35
  %i.aet = trunc nuw i8 %i.aes to i1
  br i1 %i.aet, label %bb.jy, label %audio_enabling.exit.i

bb.jy:                                            ; preds = %bb.jx
  %.val.i76.i = load i8, ptr %i.aej, align 2
  %i.aeu = and i8 %.val.i76.i, 14
  %.not.i77.i = icmp eq i8 %i.aeu, 0
  br i1 %.not.i77.i, label %bb.jz, label %audio_enabling.exit.i

bb.jz:                                            ; preds = %bb.jy
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.yr, i64 893
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !34
  %i.aev = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.aev, label %.split.i, label %intel_encoders_audio_enable.exit.i

.split.i:                                         ; preds = %bb.jz
  %i.aew = getelementptr i8, ptr %i.ys, i64 4260
  %i.aex = getelementptr i8, ptr %i.yr, i64 4260
  %bcmp.i.i = call i32 @bcmp(ptr noundef readonly dereferenceable(128) %i.aew, ptr noundef readonly dereferenceable(128) %i.aex, i64 128)
  %.not106.i381 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not106.i381, label %intel_encoders_audio_enable.exit.i, label %bb.ka

audio_enabling.exit.i:                            ; preds = %bb.jy, %bb.jx
  %i.aey = getelementptr i8, ptr %i.yr, i64 893
  %i.aez = load i8, ptr %i.aey, align 1, !range !34, !noundef !35
  %i.afa = trunc nuw i8 %i.aez to i1
  br i1 %i.afa, label %bb.ka, label %intel_encoders_audio_enable.exit.i

bb.ka:                                            ; preds = %audio_enabling.exit.i, %.split.i
  %.val.i78.i = load ptr, ptr %i.k, align 8
  %.val23.i.i = load i32, ptr %i.yi, align 8
  %i.afb = zext i32 %.val23.i.i to i64
  %i.afc = getelementptr [56 x i8], ptr %.val.i78.i, i64 %i.afb
  %i.afd = getelementptr i8, ptr %i.afc, i64 24
  %i.afe = load ptr, ptr %i.afd, align 8
  %i.aff = load i32, ptr %i.yc, align 8           ; 2 uses
  %i.afg = icmp sgt i32 %i.aff, 0
  br i1 %i.afg, label %.lr.ph.i.i378, label %intel_encoders_audio_enable.exit.i

.lr.ph.i.i378:                                    ; preds = %bb.ka, %bb.ke
  %i.afh = phi i32 [ %i.aft, %bb.ke ], [ %i.aff, %bb.ka ] ; 3 uses
  %indvars.iv.i.i379 = phi i64 [ %indvars.iv.next.i.i380, %bb.ke ], [ 0, %bb.ka ] ; 2 uses
  %i.afi = load ptr, ptr %i.yd, align 8
  %i.afj = getelementptr [40 x i8], ptr %i.afi, i64 %indvars.iv.i.i379 ; 2 uses
  %i.afk = load ptr, ptr %i.afj, align 8
  %.not.i79.i = icmp eq ptr %i.afk, null
  br i1 %.not.i79.i, label %bb.ke, label %bb.kb

bb.kb:                                            ; preds = %.lr.ph.i.i378
  %i.afl = getelementptr i8, ptr %i.afj, i64 24
  %i.afm = load ptr, ptr %i.afl, align 8          ; 3 uses
  %i.afn = getelementptr i8, ptr %i.afm, i64 16
  %i.afo = load ptr, ptr %i.afn, align 8          ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afm, i64 8
  %i.afq = load ptr, ptr %i.afp, align 8
  %.not21.i.i = icmp eq ptr %i.afq, %.9
  br i1 %.not21.i.i, label %bb.kc, label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  %i.afr = getelementptr i8, ptr %i.afo, i64 352
  %i.afs = load ptr, ptr %i.afr, align 8          ; 2 uses
  %.not22.i.i = icmp eq ptr %i.afs, null
  br i1 %.not22.i.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void %i.afs(ptr noundef %i.afo, ptr noundef %i.afe, ptr noundef %i.afm) #24, !inline_history !385
  %.pre.i80.i = load i32, ptr %i.yc, align 8
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc, %bb.kb, %.lr.ph.i.i378
  %i.aft = phi i32 [ %i.afh, %bb.kb ], [ %.pre.i80.i, %bb.kd ], [ %i.afh, %bb.kc ], [ %i.afh, %.lr.ph.i.i378 ] ; 2 uses
  %indvars.iv.next.i.i380 = add nuw nsw i64 %indvars.iv.i.i379, 1 ; 2 uses
  %i.afu = sext i32 %i.aft to i64
  %i.afv = icmp slt i64 %indvars.iv.next.i.i380, %i.afu
  br i1 %i.afv, label %.lr.ph.i.i378, label %intel_encoders_audio_enable.exit.i, !llvm.loop !386

intel_encoders_audio_enable.exit.i:               ; preds = %bb.ke, %bb.ka, %audio_enabling.exit.i, %.split.i, %bb.jz, %bb.jw
  %i.afw = call zeroext i1 @__intel_display_wa(ptr noundef %i.yt, i32 noundef 9, ptr noundef nonnull @.str.305) #24
  br i1 %i.afw, label %bb.kf, label %bb.kh

bb.kf:                                            ; preds = %intel_encoders_audio_enable.exit.i
  %i.afx = getelementptr i8, ptr %i.ys, i64 1408
  %i.afy = load i8, ptr %i.afx, align 8, !range !34, !noundef !35
  %i.afz = getelementptr i8, ptr %i.yr, i64 1408
  %i.aga = load i8, ptr %i.afz, align 8, !range !34, !noundef !35
  %.not44.i = icmp eq i8 %i.afy, %i.aga
  br i1 %.not44.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @adl_scaler_ecc_unmask(ptr noundef %i.yr) #24
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf, %intel_encoders_audio_enable.exit.i
  %i.agb = load i8, ptr %i.aeo, align 8, !range !34, !noundef !35
  %i.agc = trunc nuw i8 %i.agb to i1
  br i1 %i.agc, label %bb.ki, label %intel_post_plane_update.exit

bb.ki:                                            ; preds = %bb.kh
  %i.agd = getelementptr i8, ptr %i.ys, i64 4792
  %i.age = load i8, ptr %i.agd, align 8, !range !34, !noundef !35
  %i.agf = trunc nuw i8 %i.age to i1
  br i1 %i.agf, label %bb.kj, label %intel_crtc_lobf_enabling.exit.i

bb.kj:                                            ; preds = %bb.ki
  %.val.i82.i = load i8, ptr %i.aej, align 2
  %i.agg = and i8 %.val.i82.i, 14
  %.not.i83.i = icmp eq i8 %i.agg, 0
  br i1 %.not.i83.i, label %bb.kk, label %intel_crtc_lobf_enabling.exit.i

bb.kk:                                            ; preds = %bb.kj
  %.phi.trans.insert.i84.i = getelementptr i8, ptr %i.yr, i64 4792
  %.pre.i85.i = load i8, ptr %.phi.trans.insert.i84.i, align 8, !range !34
  %i.agh = trunc nuw i8 %.pre.i85.i to i1
  br i1 %i.agh, label %bb.kl, label %intel_post_plane_update.exit

bb.kl:                                            ; preds = %bb.kk
  %i.agi = getelementptr i8, ptr %i.yr, i64 846
  %i.agj = load i8, ptr %i.agi, align 2, !range !34, !noundef !35
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %intel_crtc_lobf_enabling.exit.thread98.i, label %.split100.i

.split100.i:                                      ; preds = %bb.kl
  %i.agl = getelementptr i8, ptr %i.yr, i64 845
  %i.agm = load i8, ptr %i.agl, align 1, !range !34, !noundef !35
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %intel_crtc_lobf_enabling.exit.thread98.i, label %intel_post_plane_update.exit

intel_crtc_lobf_enabling.exit.i:                  ; preds = %bb.kj, %bb.ki
  %i.ago = getelementptr i8, ptr %i.yr, i64 4792
  %i.agp = load i8, ptr %i.ago, align 8, !range !34, !noundef !35
  %i.agq = trunc nuw i8 %i.agp to i1
  br i1 %i.agq, label %intel_crtc_lobf_enabling.exit.thread98.i, label %intel_post_plane_update.exit

intel_crtc_lobf_enabling.exit.thread98.i:         ; preds = %intel_crtc_lobf_enabling.exit.i, %.split100.i, %bb.kl
  call void @intel_alpm_lobf_enable(ptr noundef %i.yr) #24
  br label %intel_post_plane_update.exit

intel_post_plane_update.exit:                     ; preds = %bb.kh, %bb.kk, %.split100.i, %intel_crtc_lobf_enabling.exit.i, %intel_crtc_lobf_enabling.exit.thread98.i
  call void @intel_psr_post_plane_update(ptr noundef %0, ptr noundef %.9) #24
  %i.agr = load i32, ptr %i.yu, align 8
  %i.ags = sext i32 %i.agr to i64
  %i.agt = getelementptr [16 x i8], ptr %1, i64 %i.ags
  %i.agu = load ptr, ptr %.9, align 8             ; 2 uses
  %.not.i383 = icmp eq ptr %i.agu, null
  br i1 %.not.i383, label %intel_modeset_put_crtc_power_domains.exit, label %bb.km

bb.km:                                            ; preds = %intel_post_plane_update.exit
  %i.agv = call ptr @__drm_to_display(ptr noundef nonnull %i.agu) #24
  br label %intel_modeset_put_crtc_power_domains.exit

intel_modeset_put_crtc_power_domains.exit:        ; preds = %intel_post_plane_update.exit, %bb.km
  %i.agw = phi ptr [ %i.agv, %bb.km ], [ null, %intel_post_plane_update.exit ]
  %i.agx = getelementptr i8, ptr %.pn297, i64 32
  call void @intel_display_power_put_mask_in_set(ptr noundef %i.agw, ptr noundef %i.agx, ptr noundef %i.agt) #24
  call void @intel_modeset_verify_crtc(ptr noundef %0, ptr noundef %.9) #24
  %.val.i384 = load ptr, ptr %i.k, align 8
  %.val5.i = load i32, ptr %i.yi, align 8
  %i.agy = zext i32 %.val5.i to i64
  %i.agz = getelementptr [56 x i8], ptr %.val.i384, i64 %i.agy
  %i.aha = getelementptr i8, ptr %i.agz, i64 24
  %i.ahb = load ptr, ptr %i.aha, align 8
  call void @hsw_ips_post_update(ptr noundef %0, ptr noundef %.9) #24
  call void @intel_drrs_activate(ptr noundef %i.ahb) #24
  %i.ahc = getelementptr i8, ptr %i.yo, i64 4600  ; 2 uses
  %i.ahd = load ptr, ptr %i.ahc, align 8
  store ptr null, ptr %i.ahc, align 8
  %i.ahe = getelementptr i8, ptr %i.ym, i64 4600
  store ptr %i.ahd, ptr %i.ahe, align 8
  %i.ahf = getelementptr i8, ptr %i.yo, i64 4608  ; 2 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8
  store ptr null, ptr %i.ahf, align 8
  %i.ahh = getelementptr i8, ptr %i.ym, i64 4608
  store ptr %i.ahg, ptr %i.ahh, align 8
  br label %.backedge

.backedge:                                        ; preds = %intel_modeset_put_crtc_power_domains.exit, %bb.ij
  br label %bb.ig, !llvm.loop !387

bb.kn:                                            ; preds = %bb.ii
  call void @intel_check_cpu_fifo_underruns(ptr noundef %i.d) #24
  call void @intel_check_pch_fifo_underruns(ptr noundef %i.d) #24
  %i.ahi = load i8, ptr %i.qp, align 2, !range !34, !noundef !35
  %i.ahj = trunc nuw i8 %i.ahi to i1
  br i1 %i.ahj, label %bb.ko, label %intel_verify_planes.exit

bb.ko:                                            ; preds = %bb.kn
end_hunk_1
begin_hunk_2_@intel_set_transcoder_timings:bb.a
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef %i.fp, i32 %i.fe, i32 noundef %i.fo, i1 noundef zeroext true) #24, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.fe) #24
  %i.fs = tail call zeroext i1 @intel_vrr_always_use_vrr_tg(ptr noundef %i.e) #24
  %i.ft = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 80     ; 2 uses
  %i.fv = getelementptr [4 x i8], ptr %i.fu, i64 %.pre-phi
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = load i32, ptr %i.fu, align 4
  %i.fy = getelementptr i8, ptr %i.ft, i64 48
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = add i32 %i.fw, 393228
  %i.gb = sub i32 %i.ga, %i.fx
  %i.gc = add i32 %i.gb, %i.fz                    ; 3 uses
  %i.gd = add nuw nsw i32 %i.ae, 65535
  %i.ge = shl i32 %.0, 16
  %i.gf = select i1 %i.fs, i32 65536, i32 %i.ge
  %i.gg = or i32 %i.gd, -65536
  %i.gh = add i32 %i.gf, %i.gg                    ; 2 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.gc) #24
  %.val.i146 = load ptr, ptr %i.e, align 8
  %i.gi = tail call ptr @to_intel_uncore(ptr noundef %.val.i146) #24 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 176
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef %i.gi, i32 %i.gc, i32 noundef %i.gh, i1 noundef zeroext true) #24, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.gc) #24
  %i.gl = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 80     ; 2 uses
  %i.gn = getelementptr [4 x i8], ptr %i.gm, i64 %.pre-phi
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = load i32, ptr %i.gm, align 4
  %i.gq = getelementptr i8, ptr %i.gl, i64 48
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = add i32 %i.go, 393232
  %i.gt = sub i32 %i.gs, %i.gp
  %i.gu = add i32 %i.gt, %i.gr                    ; 3 uses
  %i.gv = add nuw nsw i32 %.0120173, 65535
  %i.gw = shl i32 %.0121, 16
  %i.gx = or i32 %i.gv, -65536
  %i.gy = add i32 %i.gx, %i.gw
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.gu) #24
  %.val.i147 = load ptr, ptr %i.e, align 8
  %i.gz = tail call ptr @to_intel_uncore(ptr noundef %.val.i147) #24 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 176
  %i.hb = load ptr, ptr %i.ha, align 8
  tail call void %i.hb(ptr noundef %i.gz, i32 %i.gu, i32 noundef %i.gy, i1 noundef zeroext true) #24, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.gu) #24
  %i.hc = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 80     ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %.pre-phi
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = load i32, ptr %i.hd, align 4
  %i.hh = getelementptr i8, ptr %i.hc, i64 48
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = add i32 %i.hf, 393236
  %i.hk = sub i32 %i.hj, %i.hg
  %i.hl = add i32 %i.hk, %i.hi                    ; 3 uses
  %i.hm = getelementptr i8, ptr %0, i64 668
  %i.hn = load i16, ptr %i.hm, align 4
  %i.ho = add i16 %i.hn, -1
  %i.hp = zext i16 %i.ho to i32
  %i.hq = getelementptr i8, ptr %0, i64 670
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = zext i16 %i.hr to i32
  %i.ht = shl nuw i32 %i.hs, 16
  %i.hu = add i32 %i.ht, -65536
  %i.hv = or disjoint i32 %i.hu, %i.hp
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.hl) #24
  %.val.i148 = load ptr, ptr %i.e, align 8
  %i.hw = tail call ptr @to_intel_uncore(ptr noundef %.val.i148) #24 ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 176
  %i.hy = load ptr, ptr %i.hx, align 8
  tail call void %i.hy(ptr noundef %i.hw, i32 %i.hl, i32 noundef %i.hv, i1 noundef zeroext true) #24, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.hl) #24
  %i.hz = getelementptr i8, ptr %i.e, i64 8
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = and i64 %i.ia, 2097152
  %i.ic = icmp ne i64 %i.ib, 0
  %i.id = icmp eq i32 %i.i, 4
  %or.cond = and i1 %i.id, %i.ic
  %i.ie = add i32 %i.g, -1
  %or.cond3 = icmp ult i32 %i.ie, 2
  %or.cond129 = select i1 %or.cond, i1 %or.cond3, i1 false
  br i1 %or.cond129, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.if = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 80     ; 2 uses
  %i.ih = zext nneg i32 %i.g to i64
  %i.ii = getelementptr [4 x i8], ptr %i.ig, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = load i32, ptr %i.ig, align 4
  %i.il = getelementptr i8, ptr %i.if, i64 48
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add i32 %i.ij, 393228
  %i.io = sub i32 %i.in, %i.ik
  %i.ip = add i32 %i.io, %i.im                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.ip) #24
  %.val.i149 = load ptr, ptr %i.e, align 8
  %i.iq = tail call ptr @to_intel_uncore(ptr noundef %.val.i149) #24 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 176
  %i.is = load ptr, ptr %i.ir, align 8
  tail call void %i.is(ptr noundef %i.iq, i32 %i.ip, i32 noundef %i.gh, i1 noundef zeroext true) #24, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.ip) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.it = load i16, ptr %i.bm, align 8
  %i.iu = icmp ugt i16 %i.it, 29
  br i1 %i.iu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.iv = shl i32 %i.i, 12
  %i.iw = add i32 %i.iv, 393388                   ; 3 uses
  %i.ix = getelementptr i8, ptr %0, i64 1244
  %i.iy = load i32, ptr %i.ix, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.iw) #24
  %.val.i150 = load ptr, ptr %i.e, align 8
  %i.iz = tail call ptr @to_intel_uncore(ptr noundef %.val.i150) #24 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 176
  %i.jb = load ptr, ptr %i.ja, align 8
  tail call void %i.jb(ptr noundef %i.iz, i32 %i.iw, i32 noundef %i.iy, i1 noundef zeroext true) #24, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.iw) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_opregion_notify_encoder(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dpll_disable(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_disable_pipe(ptr noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_pre_update_crtc(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %.val49 = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val49 to i64
  %i.h = getelementptr [56 x i8], ptr %.val, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 10 uses
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 22 uses
  %i.m = getelementptr i8, ptr %i.l, i64 10       ; 3 uses
  %.val53 = load i8, ptr %i.m, align 2
  %i.n = and i8 %.val53, 14
  %i.o = icmp ne i8 %i.n, 0                       ; 3 uses
  %i.p = getelementptr i8, ptr %i.j, i64 852
  %i.q = load i8, ptr %i.p, align 4, !range !34, !noundef !35
  %i.r = trunc nuw i8 %i.q to i1
  %brmerge = select i1 %i.r, i1 true, i1 %i.o
  br i1 %brmerge, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.d, i64 1168
  %i.t = load i16, ptr %i.s, align 8
  %i.u = icmp ugt i16 %i.t, 12
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @intel_dpt_configure(ptr noundef %1) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  br i1 %i.o, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.c, %bb.f
  %i.v = getelementptr i8, ptr %i.l, i64 851
  %i.w = load i8, ptr %i.v, align 1, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.y = load i8, ptr %i.m, align 2               ; 2 uses
  %i.z = and i8 %i.y, 32
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.h, label %intel_crtc_needs_color_update.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.l, i64 844
  %.val3.i = load i8, ptr %i.aa, align 4, !range !34, !noundef !35
  %i.ab = and i8 %i.y, 14
  %2 = or disjoint i8 %.val3.i, %i.ab
  %or.cond.not = icmp eq i8 %2, 0
  br i1 %or.cond.not, label %bb.i, label %intel_crtc_needs_color_update.exit.thread

intel_crtc_needs_color_update.exit.thread:        ; preds = %bb.g, %bb.h
  tail call void @intel_color_load_luts(ptr noundef %i.l) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %intel_crtc_needs_color_update.exit.thread, %.thread
  tail call fastcc void @intel_pre_plane_update(ptr noundef %0, ptr noundef %1) #26, !srcloc !548
  %i.ac = getelementptr i8, ptr %i.l, i64 844     ; 2 uses
  %.val55 = load i8, ptr %i.ac, align 4, !range !34, !noundef !35
  %i.ad = trunc nuw i8 %.val55 to i1
  br i1 %i.ad, label %bb.j, label %intel_encoders_update_pipe.exit

bb.j:                                             ; preds = %bb.i
  %.val.i = load ptr, ptr %i.e, align 8
  %.val24.i = load i32, ptr %i.f, align 8
  %i.ae = zext i32 %.val24.i to i64
  %i.af = getelementptr [56 x i8], ptr %.val.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i, label %intel_encoders_update_pipe.exit

.lr.ph.i:                                         ; preds = %bb.j
  %i.al = getelementptr i8, ptr %0, i64 56
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %i.am = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.ay, %bb.o ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8
  %i.ao = getelementptr [40 x i8], ptr %i.an, i64 %indvars.iv.i ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %.not22.i = icmp eq ptr %i.av, %1
  br i1 %.not22.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr i8, ptr %i.at, i64 344
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.ax, null
  br i1 %.not23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.ax(ptr noundef %0, ptr noundef %i.at, ptr noundef %i.ah, ptr noundef %i.ar) #24, !inline_history !546
  %.pre.i = load i32, ptr %i.ai, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.ay = phi i32 [ %i.am, %bb.l ], [ %.pre.i, %bb.n ], [ %i.am, %bb.m ], [ %i.am, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %bb.k, label %intel_encoders_update_pipe.exit, !llvm.loop !547

intel_encoders_update_pipe.exit:                  ; preds = %bb.o, %bb.j, %bb.i
  %i.bb = getelementptr i8, ptr %i.d, i64 1168
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = icmp ugt i16 %i.bc, 10
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %intel_encoders_update_pipe.exit
  %.val54 = load i8, ptr %i.ac, align 4, !range !34, !noundef !35
  %i.be = trunc nuw i8 %.val54 to i1
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @icl_set_pipe_chicken(ptr noundef %i.l) #26, !srcloc !549
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %intel_encoders_update_pipe.exit
  %i.bf = getelementptr i8, ptr %i.j, i64 4648
  %i.bg = load i16, ptr %i.bf, align 4
  %i.bh = getelementptr i8, ptr %i.l, i64 4648
  %i.bi = load i16, ptr %i.bh, align 4
  %.not.i57 = icmp eq i16 %i.bg, %i.bi
  br i1 %.not.i57, label %bb.s, label %vrr_params_changed.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr i8, ptr %i.j, i64 4650
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = getelementptr i8, ptr %i.l, i64 4650
  %i.bm = load i16, ptr %i.bl, align 2
  %.not14.i = icmp eq i16 %i.bk, %i.bm
  br i1 %.not14.i, label %bb.t, label %vrr_params_changed.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %i.j, i64 4652
  %i.bo = load i16, ptr %i.bn, align 4
  %i.bp = getelementptr i8, ptr %i.l, i64 4652
  %i.bq = load i16, ptr %i.bp, align 4
  %.not15.i = icmp eq i16 %i.bo, %i.bq
  br i1 %.not15.i, label %bb.u, label %vrr_params_changed.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr i8, ptr %i.j, i64 4654
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = getelementptr i8, ptr %i.l, i64 4654
  %i.bu = load i16, ptr %i.bt, align 2
  %.not16.i = icmp eq i16 %i.bs, %i.bu
  br i1 %.not16.i, label %bb.v, label %vrr_params_changed.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr i8, ptr %i.j, i64 4646
  %i.bw = load i8, ptr %i.bv, align 2
  %i.bx = getelementptr i8, ptr %i.l, i64 4646
  %i.by = load i8, ptr %i.bx, align 2
  %.not17.i = icmp eq i8 %i.bw, %i.by
  br i1 %.not17.i, label %bb.w, label %vrr_params_changed.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr i8, ptr %i.j, i64 4660
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = getelementptr i8, ptr %i.l, i64 4660
  %i.cc = load i32, ptr %i.cb, align 4
  %.not18.i = icmp eq i32 %i.ca, %i.cc
  br i1 %.not18.i, label %vrr_params_changed.exit, label %vrr_params_changed.exit.thread

vrr_params_changed.exit:                          ; preds = %bb.w
  %i.cd = getelementptr i8, ptr %i.j, i64 4656
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr i8, ptr %i.l, i64 4656
  %i.cg = load i32, ptr %i.cf, align 4
  %.not78 = icmp eq i32 %i.ce, %i.cg
  br i1 %.not78, label %bb.x, label %vrr_params_changed.exit.thread

bb.x:                                             ; preds = %vrr_params_changed.exit
  %i.ch = getelementptr i8, ptr %i.j, i64 4696
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.l, i64 4696
  %i.ck = load i64, ptr %i.cj, align 8
  %.not.i58 = icmp eq i64 %i.ci, %i.ck
  br i1 %.not.i58, label %cmrr_params_changed.exit, label %vrr_params_changed.exit.thread

cmrr_params_changed.exit:                         ; preds = %bb.x
  %i.cl = getelementptr i8, ptr %i.j, i64 4688
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.l, i64 4688
  %i.co = load i64, ptr %i.cn, align 8
  %.not79 = icmp eq i64 %i.cm, %i.co
  br i1 %.not79, label %bb.y, label %vrr_params_changed.exit.thread

vrr_params_changed.exit.thread:                   ; preds = %bb.x, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %cmrr_params_changed.exit, %vrr_params_changed.exit
  tail call void @intel_vrr_set_transcoder_timings(ptr noundef %i.l) #24
  br label %bb.y

bb.y:                                             ; preds = %cmrr_params_changed.exit, %vrr_params_changed.exit.thread, %bb.f
  tail call void @intel_fbc_update(ptr noundef %0, ptr noundef %1) #24
  %i.cp = tail call zeroext i1 @intel_display_power_is_enabled(ptr noundef %i.d, i32 noundef 73) #24
  br i1 %i.cp, label %bb.ae, label %bb.z, !prof !39

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i59 = icmp eq ptr %i.cq, null
  br i1 %.not.i59, label %__drm_to_dev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.z, %bb.aa
  %i.ct = phi ptr [ %i.cs, %bb.aa ], [ null, %bb.z ]
  %i.cu = tail call ptr @dev_driver_string(ptr noundef %i.ct) #24 ; 0 uses
  %i.cv = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.1, i32 6805, i32 2321, i64 16) #25, !srcloc !550
  %i.cw = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i64 = icmp eq ptr %i.cw, null
  br i1 %.not.i64, label %__drm_to_dev.exit65, label %bb.ab

bb.ab:                                            ; preds = %__drm_to_dev.exit
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  br label %__drm_to_dev.exit65

__drm_to_dev.exit65:                              ; preds = %__drm_to_dev.exit, %bb.ab
  %i.cz = phi ptr [ %i.cy, %bb.ab ], [ null, %__drm_to_dev.exit ]
  %i.da = tail call ptr @dev_driver_string(ptr noundef %i.cz) #24
  %i.db = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i66 = icmp eq ptr %i.db, null
  br i1 %.not.i66, label %__drm_to_dev.exit67, label %bb.ac

bb.ac:                                            ; preds = %__drm_to_dev.exit65
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  br label %__drm_to_dev.exit67

__drm_to_dev.exit67:                              ; preds = %__drm_to_dev.exit65, %bb.ac
  %i.de = phi ptr [ %i.dd, %bb.ac ], [ null, %__drm_to_dev.exit65 ] ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 80
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i68, label %bb.ad, label %dev_name.exit71

bb.ad:                                            ; preds = %__drm_to_dev.exit67
  %.val.i70 = load ptr, ptr %i.de, align 8
  br label %dev_name.exit71

dev_name.exit71:                                  ; preds = %__drm_to_dev.exit67, %bb.ad
  %.0.i69 = phi ptr [ %.val.i70, %bb.ad ], [ %i.dg, %__drm_to_dev.exit67 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cv, ptr noundef %i.da, ptr noundef %.0.i69, ptr noundef nonnull @.str.331) #24
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !551
  br label %bb.ae

bb.ae:                                            ; preds = %dev_name.exit71, %bb.y
  br i1 %i.o, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i8, ptr %i.m, align 2              ; 2 uses
  %i.di = and i8 %i.dh, 32
  %.not.i72 = icmp eq i8 %i.di, 0
  br i1 %.not.i72, label %bb.ag, label %intel_crtc_needs_color_update.exit74.thread

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr i8, ptr %i.l, i64 844
  %.val3.i73 = load i8, ptr %i.dj, align 4, !range !34, !noundef !35
  %i.dk = and i8 %i.dh, 14
  %3 = or disjoint i8 %.val3.i73, %i.dk
  %or.cond77.not = icmp eq i8 %3, 0
  br i1 %or.cond77.not, label %bb.aj, label %intel_crtc_needs_color_update.exit74.thread

intel_crtc_needs_color_update.exit74.thread:      ; preds = %bb.af, %bb.ag
  %i.dl = getelementptr i8, ptr %i.l, i64 4616
  %i.dm = load i8, ptr %i.dl, align 8, !range !34, !noundef !35
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %intel_crtc_needs_color_update.exit74.thread
  %i.do = getelementptr i8, ptr %i.l, i64 4617
  %i.dp = load i8, ptr %i.do, align 1, !range !34, !noundef !35
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @intel_color_commit_noarm(ptr noundef null, ptr noundef %i.l) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah, %intel_crtc_needs_color_update.exit74.thread, %bb.ae
  %i.dr = getelementptr i8, ptr %i.l, i64 4616
  %i.ds = load i8, ptr %i.dr, align 8, !range !34, !noundef !35
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr i8, ptr %i.l, i64 4617
  %i.dv = load i8, ptr %i.du, align 1, !range !34, !noundef !35
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @intel_crtc_planes_update_noarm(ptr noundef null, ptr noundef %0, ptr noundef %1) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dbuf_mbus_pre_ddb_update(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @skl_ddb_allocation_overlaps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_update_crtc(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 5 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136        ; 5 uses
  %.val39 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val39 to i64
  %i.d = getelementptr [56 x i8], ptr %.val, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 17 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4617
  %i.j = load i8, ptr %i.i, align 1, !range !34, !noundef !35
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @intel_flipq_enable(ptr noundef %i.h) #24
  %i.l = getelementptr i8, ptr %1, i64 1744
  tail call void @intel_crtc_prepare_vblank_event(ptr noundef %i.h, ptr noundef %i.l) #24
  %i.m = getelementptr i8, ptr %i.h, i64 4608
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @intel_flipq_add(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.n) #24
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.h, i64 4616
  %i.p = load i8, ptr %i.o, align 8, !range !34, !noundef !35
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %1, i64 1736
  tail call void @intel_crtc_prepare_vblank_event(ptr noundef %i.h, ptr noundef %i.r) #24
  %i.s = getelementptr i8, ptr %i.h, i64 4608
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @intel_dsb_commit(ptr noundef %i.t) #24
  br label %bb.ca

bb.e:                                             ; preds = %bb.c
  tail call void @intel_pipe_update_start(ptr noundef %0, ptr noundef %1) #24
  %i.u = getelementptr i8, ptr %i.h, i64 4608
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @intel_dsb_commit(ptr noundef nonnull %i.v) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call ptr @__drm_to_display(ptr noundef nonnull %i.x) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %bb.g ] ; 5 uses
  %.val.i = load ptr, ptr %i.a, align 8
  %.val31.i = load i32, ptr %i.b, align 8
  %i.aa = zext i32 %.val31.i to i64
  %i.ab = getelementptr [56 x i8], ptr %.val.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 34 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 10     ; 2 uses
  %.val34.i = load i8, ptr %i.ag, align 2
  %i.ah = and i8 %.val34.i, 14
  %.not50.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr i8, ptr %i.af, i64 4616
  %i.aj = load i8, ptr %i.ai, align 8, !range !34, !noundef !35
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.af, i64 4617
  %i.am = load i8, ptr %i.al, align 1, !range !34, !noundef !35
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge.i, label %bb.o, !prof !33

.critedge.i:                                      ; preds = %bb.j, %bb.i
  %i.ao = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.k, %.critedge.i
  %i.ar = phi ptr [ %i.aq, %bb.k ], [ null, %.critedge.i ]
  %i.as = tail call ptr @dev_driver_string(ptr noundef %i.ar) #24 ; 0 uses
  %i.at = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.1, i32 6688, i32 2321, i64 16) #25, !srcloc !554
  %i.au = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i39.i = icmp eq ptr %i.au, null
  br i1 %.not.i39.i, label %__drm_to_dev.exit40.i, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit.i
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  br label %__drm_to_dev.exit40.i

__drm_to_dev.exit40.i:                            ; preds = %bb.l, %__drm_to_dev.exit.i
  %i.ax = phi ptr [ %i.aw, %bb.l ], [ null, %__drm_to_dev.exit.i ]
  %i.ay = tail call ptr @dev_driver_string(ptr noundef %i.ax) #24
  %i.az = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i41.i = icmp eq ptr %i.az, null
  br i1 %.not.i41.i, label %__drm_to_dev.exit42.i, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit40.i
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %__drm_to_dev.exit42.i

__drm_to_dev.exit42.i:                            ; preds = %bb.m, %__drm_to_dev.exit40.i
  %i.bc = phi ptr [ %i.bb, %bb.m ], [ null, %__drm_to_dev.exit40.i ] ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i43.i = icmp eq ptr %i.be, null
  br i1 %.not.i43.i, label %bb.n, label %dev_name.exit46.i

bb.n:                                             ; preds = %__drm_to_dev.exit42.i
  %.val.i45.i = load ptr, ptr %i.bc, align 8
  br label %dev_name.exit46.i

dev_name.exit46.i:                                ; preds = %bb.n, %__drm_to_dev.exit42.i
  %.0.i44.i = phi ptr [ %.val.i45.i, %bb.n ], [ %i.be, %__drm_to_dev.exit42.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.at, ptr noundef %i.ay, ptr noundef %.0.i44.i, ptr noundef nonnull @.str.332) #24
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !555
  br label %bb.o

bb.o:                                             ; preds = %dev_name.exit46.i, %bb.j
  br i1 %.not50.i, label %bb.p, label %commit_pipe_pre_planes.exit

bb.p:                                             ; preds = %bb.o
  %i.bf = load i8, ptr %i.ag, align 2             ; 2 uses
  %i.bg = and i8 %i.bf, 32
  %.not.i47.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i47.i, label %bb.q, label %intel_crtc_needs_color_update.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr i8, ptr %i.af, i64 844
  %.val3.i.i = load i8, ptr %i.bh, align 4, !range !34, !noundef !35
  %i.bi = and i8 %i.bf, 14
  %2 = or disjoint i8 %.val3.i.i, %i.bi
  %or.cond.not.i = icmp eq i8 %2, 0
  br i1 %or.cond.not.i, label %bb.r, label %intel_crtc_needs_color_update.exit.thread.i

intel_crtc_needs_color_update.exit.thread.i:      ; preds = %bb.q, %bb.p
  tail call void @intel_color_commit_arm(ptr noundef null, ptr noundef %i.af) #24
  br label %bb.r

bb.r:                                             ; preds = %intel_crtc_needs_color_update.exit.thread.i, %bb.q
  %i.bj = getelementptr i8, ptr %i.z, i64 1168
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = icmp ugt i16 %i.bk, 8
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr i8, ptr %i.z, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 16777216
  %.not30.i = icmp eq i64 %i.bo, 0
  br i1 %.not30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call fastcc void @bdw_set_pipe_misc(ptr noundef null, ptr noundef %i.af) #26, !srcloc !556
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = getelementptr i8, ptr %i.af, i64 844
  %.val35.i = load i8, ptr %i.bp, align 4, !range !34, !noundef !35
  %i.bq = trunc nuw i8 %.val35.i to i1
  br i1 %i.bq, label %bb.v, label %commit_pipe_pre_planes.exit

bb.v:                                             ; preds = %bb.u
  %i.br = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i48.i = icmp eq ptr %i.bs, null
  br i1 %.not.i48.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bs) #24
  %.pre.i.i = load ptr, ptr %i.af, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bu = phi ptr [ %.pre.i.i, %bb.w ], [ %i.br, %bb.v ] ; 2 uses
  %i.bv = phi ptr [ %i.bt, %bb.w ], [ null, %bb.v ] ; 3 uses
  tail call fastcc void @intel_set_pipe_src_size(ptr noundef %i.af) #26, !srcloc !557
  %i.bw = getelementptr i8, ptr %i.bv, i64 1168   ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = icmp ugt i16 %i.bx, 8
  br i1 %i.by, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr i8, ptr %i.af, i64 1408
  %i.ca = load i8, ptr %i.bz, align 8, !range !34, !noundef !35
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  tail call void @skl_pfit_enable(ptr noundef %i.af) #24
  br label %bb.af

bb.aa:                                            ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %i.bv, i64 24
  %i.cd = load i32, ptr %i.cc, align 8
  %.not24.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not24.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr i8, ptr %i.af, i64 1408
  %i.cf = load i8, ptr %i.ce, align 8, !range !34, !noundef !35
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @ilk_pfit_enable(ptr noundef %i.af) #24
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.ch = getelementptr i8, ptr %i.ad, i64 1408
  %i.ci = load i8, ptr %i.ch, align 8, !range !34, !noundef !35
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @ilk_pfit_disable(ptr noundef %i.ad) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %i.ck = load i16, ptr %i.bw, align 8
  %i.cl = icmp ugt i16 %i.ck, 8
  br i1 %i.cl, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = getelementptr i8, ptr %i.bv, i64 8
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = and i64 %i.cn, 18874368
  %or.cond.i.i = icmp eq i64 %i.co, 0
  br i1 %or.cond.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cp = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %hsw_set_linetime_wm.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cr = tail call ptr @__drm_to_display(ptr noundef nonnull %i.cq) #24
  %.pre.i.i.i = load ptr, ptr %i.af, align 8
  br label %hsw_set_linetime_wm.exit.i.i

hsw_set_linetime_wm.exit.i.i:                     ; preds = %bb.ai, %bb.ah
  %i.cs = phi ptr [ %.pre.i.i.i, %bb.ai ], [ %i.cp, %bb.ah ]
  %i.ct = phi ptr [ %i.cr, %bb.ai ], [ null, %bb.ah ] ; 3 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 1664
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = shl i32 %i.cv, 2
  %i.cx = add i32 %i.cw, 283248                   ; 3 uses
  %i.cy = getelementptr i8, ptr %i.af, i64 4576
  %i.cz = load i16, ptr %i.cy, align 8
  %i.da = and i16 %i.cz, 511
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = getelementptr i8, ptr %i.af, i64 4578
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = zext i16 %i.dd to i32
  %i.df = shl nuw i32 %i.de, 16
  %i.dg = and i32 %i.df, 33488896
  %i.dh = or disjoint i32 %i.dg, %i.db
  tail call void @intel_dmc_wl_get(ptr noundef %i.ct, i32 %i.cx) #24
  %.val.i.i.i.i = load ptr, ptr %i.ct, align 8
  %i.di = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i.i) #24 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 176
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef %i.di, i32 %i.cx, i32 noundef %i.dh, i1 noundef zeroext true) #24, !inline_history !552
  tail call void @intel_dmc_wl_put(ptr noundef %i.ct, i32 %i.cx) #24
  br label %bb.aj

bb.aj:                                            ; preds = %hsw_set_linetime_wm.exit.i.i, %bb.ag
  %i.dl = getelementptr i8, ptr %i.af, i64 845
  %i.dm = load i8, ptr %i.dl, align 1, !range !34, !noundef !35
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ak, label %intel_cpu_transcoder_set_m1_n1.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr i8, ptr %i.af, i64 880
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr i8, ptr %i.af, i64 1248   ; 2 uses
  %i.dr = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not.i27.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i27.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = tail call ptr @__drm_to_display(ptr noundef nonnull %i.dr) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dt = phi ptr [ %i.ds, %bb.al ], [ null, %bb.ak ] ; 4 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 1168
  %i.dv = load i16, ptr %i.du, align 8
  %i.dw = icmp ugt i16 %i.dv, 4
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dx = getelementptr i8, ptr %i.dt, i64 1160
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 80     ; 2 uses
  %i.ea = sext i32 %i.dp to i64
  %i.eb = getelementptr [4 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = load i32, ptr %i.dz, align 4
  %i.ee = sub i32 %i.ec, %i.ed
  %i.ef = getelementptr i8, ptr %i.dy, i64 48
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = add i32 %i.ee, %i.eg                    ; 4 uses
  %i.ei = add i32 %i.eh, 393264
  %i.ej = add i32 %i.eh, 393268
  %i.ek = add i32 %i.eh, 393280
  %i.el = add i32 %i.eh, 393284
  tail call void @intel_set_m_n(ptr noundef %i.dt, ptr noundef readonly %i.dq, i32 %i.ei, i32 %i.ej, i32 %i.ek, i32 %i.el) #26
  br label %intel_cpu_transcoder_set_m1_n1.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.em = getelementptr i8, ptr %i.bu, i64 1664
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = shl i32 %i.en, 12                       ; 4 uses
  %i.ep = add i32 %i.eo, 458832
  %i.eq = add i32 %i.eo, 458836
  %i.er = add i32 %i.eo, 458848
  %i.es = add i32 %i.eo, 458852
  tail call void @intel_set_m_n(ptr noundef %i.dt, ptr noundef readonly %i.dq, i32 %i.ep, i32 %i.eq, i32 %i.er, i32 %i.es) #26
  br label %intel_cpu_transcoder_set_m1_n1.exit.i.i

intel_cpu_transcoder_set_m1_n1.exit.i.i:          ; preds = %bb.ao, %bb.an, %bb.aj
  %i.et = getelementptr i8, ptr %i.af, i64 846
  %i.eu = load i8, ptr %i.et, align 2, !range !34, !noundef !35
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ap, label %commit_pipe_pre_planes.exit

bb.ap:                                            ; preds = %intel_cpu_transcoder_set_m1_n1.exit.i.i
  %i.ew = load ptr, ptr %i.af, align 8
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %.not.i28.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i28.i.i, label %bb.ar, label %bb.aq

end_hunk_2
begin_hunk_3_@intel_update_crtc:bb.a
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = load i32, ptr %i.gj, align 4
  %i.go = getelementptr i8, ptr %i.gi, i64 48
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = add i32 %i.gm, 393340
  %i.gr = sub i32 %i.gq, %i.gn
  %i.gs = add i32 %i.gr, %i.gp                    ; 3 uses
  %i.gt = getelementptr i8, ptr %i.af, i64 4794
  %i.gu = load i16, ptr %i.gt, align 2
  %i.gv = zext i16 %i.gu to i32
  tail call void @intel_dmc_wl_get(ptr noundef %i.ez, i32 %i.gs) #24
  %.val.i66.i.i.i = load ptr, ptr %i.ez, align 8
  %i.gw = tail call ptr @to_intel_uncore(ptr noundef %.val.i66.i.i.i) #24 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 176
  %i.gy = load ptr, ptr %i.gx, align 8
  tail call void %i.gy(ptr noundef %i.gw, i32 %i.gs, i32 noundef %i.gv, i1 noundef zeroext true) #24, !inline_history !553
  tail call void @intel_dmc_wl_put(ptr noundef %i.ez, i32 %i.gs) #24
  br label %intel_set_transcoder_timings_lrr.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.gz = getelementptr i8, ptr %i.af, i64 664
  %i.ha = load i16, ptr %i.gz, align 8
  %i.hb = zext i16 %i.ha to i32
  %i.hc = icmp eq i16 %i.gg, 12
  br i1 %i.hc, label %bb.ba, label %intel_set_transcoder_timings_lrr.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.hd = getelementptr i8, ptr %i.af, i64 4794
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = zext i16 %i.he to i32
  %i.hg = add nuw nsw i32 %i.hf, %i.fx
  br label %intel_set_transcoder_timings_lrr.exit.i.i

intel_set_transcoder_timings_lrr.exit.i.i:        ; preds = %bb.ba, %bb.az, %bb.ay
  %.050.i.i.i = phi i32 [ 1, %bb.ay ], [ %i.hg, %bb.ba ], [ %i.hb, %bb.az ]
  %i.hh = zext i16 %i.fz to i32
  %i.hi = shl i32 %i.gd, 27
  %sext.i.i.i = ashr i32 %i.hi, 31                ; 2 uses
  %.0.i.i.i = add nsw i32 %sext.i.i.i, %i.hh
  %i.hj = zext i16 %i.gb to i32
  %.051.i.i.i = add nsw i32 %sext.i.i.i, %i.hj
  %i.hk = load ptr, ptr %i.ge, align 8            ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 80     ; 2 uses
  %i.hm = sext i32 %i.fb to i64                   ; 2 uses
  %i.hn = getelementptr [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = load i32, ptr %i.hl, align 4
  %i.hq = getelementptr i8, ptr %i.hk, i64 48
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = add i32 %i.ho, 393232
  %i.ht = sub i32 %i.hs, %i.hp
  %i.hu = add i32 %i.ht, %i.hr                    ; 3 uses
  %i.hv = add nuw nsw i32 %.050.i.i.i, 65535
  %i.hw = shl i32 %.051.i.i.i, 16
  %i.hx = or i32 %i.hv, -65536
  %i.hy = add i32 %i.hx, %i.hw
  tail call void @intel_dmc_wl_get(ptr noundef %i.ez, i32 %i.hu) #24
  %.val.i67.i.i.i = load ptr, ptr %i.ez, align 8
  %i.hz = tail call ptr @to_intel_uncore(ptr noundef %.val.i67.i.i.i) #24 ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 176
  %i.ib = load ptr, ptr %i.ia, align 8
  tail call void %i.ib(ptr noundef %i.hz, i32 %i.hu, i32 noundef %i.hy, i1 noundef zeroext true) #24, !inline_history !553
  tail call void @intel_dmc_wl_put(ptr noundef %i.ez, i32 %i.hu) #24
  %i.ic = tail call zeroext i1 @intel_vrr_always_use_vrr_tg(ptr noundef %i.ez) #24
  %i.id = load ptr, ptr %i.ge, align 8            ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 80     ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.hm
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = load i32, ptr %i.ie, align 4
  %i.ii = getelementptr i8, ptr %i.id, i64 48
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = add i32 %i.ig, 393228
  %i.il = sub i32 %i.ik, %i.ih
  %i.im = add i32 %i.il, %i.ij                    ; 3 uses
  %i.in = add nuw nsw i32 %i.fx, 65535
  %i.io = shl i32 %.0.i.i.i, 16
  %i.ip = select i1 %i.ic, i32 65536, i32 %i.io
  %i.iq = or i32 %i.in, -65536
  %i.ir = add i32 %i.ip, %i.iq
  tail call void @intel_dmc_wl_get(ptr noundef %i.ez, i32 %i.im) #24
  %.val.i68.i.i.i = load ptr, ptr %i.ez, align 8
  %i.is = tail call ptr @to_intel_uncore(ptr noundef %.val.i68.i.i.i) #24 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 176
  %i.iu = load ptr, ptr %i.it, align 8
  tail call void %i.iu(ptr noundef %i.is, i32 %i.im, i32 noundef %i.ir, i1 noundef zeroext true) #24, !inline_history !553
  tail call void @intel_dmc_wl_put(ptr noundef %i.ez, i32 %i.im) #24
  tail call void @intel_vrr_set_fixed_rr_timings(ptr noundef %i.af) #24
  tail call void @intel_vrr_transcoder_enable(ptr noundef %i.af) #24
  br label %commit_pipe_pre_planes.exit

commit_pipe_pre_planes.exit:                      ; preds = %bb.o, %bb.u, %intel_cpu_transcoder_set_m1_n1.exit.i.i, %intel_set_transcoder_timings_lrr.exit.i.i
  tail call void @intel_psr2_program_trans_man_trk_ctl(ptr noundef null, ptr noundef %i.af) #24
  tail call void @intel_atomic_update_watermarks(ptr noundef %0, ptr noundef %1) #24
  tail call void @intel_crtc_planes_update_arm(ptr noundef null, ptr noundef %0, ptr noundef %1) #24
  %i.iv = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i45 = icmp eq ptr %i.iv, null
  br i1 %.not.i45, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %commit_pipe_pre_planes.exit
  %i.iw = tail call ptr @__drm_to_display(ptr noundef nonnull %i.iv) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %commit_pipe_pre_planes.exit
  %i.ix = phi ptr [ %i.iw, %bb.bb ], [ null, %commit_pipe_pre_planes.exit ] ; 4 uses
  %.val.i46 = load ptr, ptr %i.a, align 8
  %.val28.i = load i32, ptr %i.b, align 8
  %i.iy = zext i32 %.val28.i to i64
  %i.iz = getelementptr [56 x i8], ptr %.val.i46, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8            ; 8 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 10     ; 2 uses
  %.val29.i = load i8, ptr %i.jc, align 2
  %i.jd = and i8 %.val29.i, 14
  %i.je = icmp ne i8 %i.jd, 0                     ; 2 uses
  %i.jf = getelementptr i8, ptr %i.jb, i64 4616
  %i.jg = load i8, ptr %i.jf, align 8, !range !34, !noundef !35
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %.critedge.i54, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ji = getelementptr i8, ptr %i.jb, i64 4617
  %i.jj = load i8, ptr %i.ji, align 1, !range !34, !noundef !35
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %.critedge.i54, label %bb.bi, !prof !33

.critedge.i54:                                    ; preds = %bb.bd, %bb.bc
  %i.jl = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i55, label %__drm_to_dev.exit.i56, label %bb.be

bb.be:                                            ; preds = %.critedge.i54
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  br label %__drm_to_dev.exit.i56

__drm_to_dev.exit.i56:                            ; preds = %bb.be, %.critedge.i54
  %i.jo = phi ptr [ %i.jn, %bb.be ], [ null, %.critedge.i54 ]
  %i.jp = tail call ptr @dev_driver_string(ptr noundef %i.jo) #24 ; 0 uses
  %i.jq = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.1, i32 6718, i32 2321, i64 16) #25, !srcloc !560
  %i.jr = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not.i35.i = icmp eq ptr %i.jr, null
  br i1 %.not.i35.i, label %__drm_to_dev.exit36.i, label %bb.bf

bb.bf:                                            ; preds = %__drm_to_dev.exit.i56
  %i.js = getelementptr i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  br label %__drm_to_dev.exit36.i

__drm_to_dev.exit36.i:                            ; preds = %bb.bf, %__drm_to_dev.exit.i56
  %i.ju = phi ptr [ %i.jt, %bb.bf ], [ null, %__drm_to_dev.exit.i56 ]
  %i.jv = tail call ptr @dev_driver_string(ptr noundef %i.ju) #24
  %i.jw = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not.i37.i = icmp eq ptr %i.jw, null
  br i1 %.not.i37.i, label %__drm_to_dev.exit38.i, label %bb.bg

bb.bg:                                            ; preds = %__drm_to_dev.exit36.i
  %i.jx = getelementptr i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  br label %__drm_to_dev.exit38.i

__drm_to_dev.exit38.i:                            ; preds = %bb.bg, %__drm_to_dev.exit36.i
  %i.jz = phi ptr [ %i.jy, %bb.bg ], [ null, %__drm_to_dev.exit36.i ] ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 80
  %i.kb = load ptr, ptr %i.ka, align 8            ; 2 uses
  %.not.i39.i57 = icmp eq ptr %i.kb, null
  br i1 %.not.i39.i57, label %bb.bh, label %dev_name.exit42.i

bb.bh:                                            ; preds = %__drm_to_dev.exit38.i
  %.val.i41.i = load ptr, ptr %i.jz, align 8
  br label %dev_name.exit42.i

dev_name.exit42.i:                                ; preds = %bb.bh, %__drm_to_dev.exit38.i
  %.0.i40.i = phi ptr [ %.val.i41.i, %bb.bh ], [ %i.kb, %__drm_to_dev.exit38.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.jq, ptr noundef %i.jv, ptr noundef %.0.i40.i, ptr noundef nonnull @.str.332) #24
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !561
  br label %bb.bi

bb.bi:                                            ; preds = %dev_name.exit42.i, %bb.bd
  %i.kc = getelementptr i8, ptr %i.ix, i64 1168   ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 8
  %i.ke = icmp ult i16 %i.kd, 9
  %or.cond.i47 = select i1 %i.ke, i1 true, i1 %i.je
  br i1 %or.cond.i47, label %bb.bj, label %.thread.i

.thread.i:                                        ; preds = %bb.bi
  tail call void @skl_detach_scalers(ptr noundef null, ptr noundef %i.jb) #24
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.je, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread.i
  %i.kf = load i8, ptr %i.jc, align 2             ; 2 uses
  %i.kg = and i8 %i.kf, 32
  %.not.i43.i48 = icmp eq i8 %i.kg, 0
  br i1 %.not.i43.i48, label %bb.bl, label %intel_crtc_needs_color_update.exit.thread.i49

bb.bl:                                            ; preds = %bb.bk
  %i.kh = getelementptr i8, ptr %i.jb, i64 844
  %.val3.i.i53 = load i8, ptr %i.kh, align 4, !range !34, !noundef !35
  %i.ki = and i8 %i.kf, 14
  %3 = or disjoint i8 %.val3.i.i53, %i.ki
  %or.cond51.not.i = icmp eq i8 %3, 0
  br i1 %or.cond51.not.i, label %bb.bo, label %intel_crtc_needs_color_update.exit.thread.i49

intel_crtc_needs_color_update.exit.thread.i49:    ; preds = %bb.bl, %bb.bk
  %i.kj = tail call zeroext i1 @intel_color_uses_dsb(ptr noundef %i.jb) #24
  br i1 %i.kj, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %intel_crtc_needs_color_update.exit.thread.i49
  %i.kk = load i16, ptr %i.kc, align 8
  %i.kl = icmp ugt i16 %i.kk, 29
  br i1 %i.kl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  tail call void @intel_color_load_luts(ptr noundef %i.jb) #24
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %intel_crtc_needs_color_update.exit.thread.i49, %bb.bl, %bb.bj
  %.val30.i = load ptr, ptr %i.a, align 8
  %.val31.i50 = load i32, ptr %i.b, align 8
  %i.km = zext i32 %.val31.i50 to i64
  %i.kn = getelementptr [56 x i8], ptr %.val30.i, i64 %i.km ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8            ; 8 uses
  %i.kq = getelementptr i8, ptr %i.kn, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8            ; 13 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 344
  %i.kt = load i8, ptr %i.ks, align 8, !range !34, !noundef !35
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bp, label %commit_pipe_post_planes.exit

bb.bp:                                            ; preds = %bb.bo
  %i.kv = getelementptr i8, ptr %i.kp, i64 4644
  %i.kw = load i8, ptr %i.kv, align 4, !range !34, !noundef !35
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.bq, label %intel_crtc_vrr_enabling.exit.i

bb.bq:                                            ; preds = %bb.bp
  %i.ky = getelementptr i8, ptr %i.kr, i64 10
  %.val17.i.i = load i8, ptr %i.ky, align 2
  %i.kz = and i8 %.val17.i.i, 14
  %.not.i45.i = icmp eq i8 %i.kz, 0
  br i1 %.not.i45.i, label %bb.br, label %intel_crtc_vrr_enabling.exit.i

bb.br:                                            ; preds = %bb.bq
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.kr, i64 4644
  %.pre.i.i51 = load i8, ptr %.phi.trans.insert.i.i, align 4, !range !34
  %i.la = trunc nuw i8 %.pre.i.i51 to i1
  br i1 %i.la, label %bb.bs, label %commit_pipe_post_planes.exit

bb.bs:                                            ; preds = %bb.br
  %i.lb = getelementptr i8, ptr %i.kr, i64 845
  %i.lc = load i8, ptr %i.lb, align 1, !range !34, !noundef !35
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %intel_crtc_vrr_enabling.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.le = getelementptr i8, ptr %i.kr, i64 846
  %i.lf = load i8, ptr %i.le, align 2, !range !34, !noundef !35
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %intel_crtc_vrr_enabling.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lh = getelementptr i8, ptr %i.kp, i64 4648
  %i.li = load i16, ptr %i.lh, align 4
  %i.lj = getelementptr i8, ptr %i.kr, i64 4648
  %i.lk = load i16, ptr %i.lj, align 8
  %.not.i.i.i52 = icmp eq i16 %i.li, %i.lk
  br i1 %.not.i.i.i52, label %bb.bv, label %intel_crtc_vrr_enabling.exit.thread.i

bb.bv:                                            ; preds = %bb.bu
  %i.ll = getelementptr i8, ptr %i.kp, i64 4650
  %i.lm = load i16, ptr %i.ll, align 2
  %i.ln = getelementptr i8, ptr %i.kr, i64 4650
  %i.lo = load i16, ptr %i.ln, align 2
  %.not14.i.i.i = icmp eq i16 %i.lm, %i.lo
  br i1 %.not14.i.i.i, label %bb.bw, label %intel_crtc_vrr_enabling.exit.thread.i

bb.bw:                                            ; preds = %bb.bv
  %i.lp = getelementptr i8, ptr %i.kp, i64 4652
  %i.lq = load i16, ptr %i.lp, align 4
  %i.lr = getelementptr i8, ptr %i.kr, i64 4652
  %i.ls = load i16, ptr %i.lr, align 4
  %.not15.i.i.i = icmp eq i16 %i.lq, %i.ls
  br i1 %.not15.i.i.i, label %bb.bx, label %intel_crtc_vrr_enabling.exit.thread.i

bb.bx:                                            ; preds = %bb.bw
  %i.lt = getelementptr i8, ptr %i.kp, i64 4654
  %i.lu = load i16, ptr %i.lt, align 2
  %i.lv = getelementptr i8, ptr %i.kr, i64 4654
  %i.lw = load i16, ptr %i.lv, align 2
  %.not16.i.i.i = icmp eq i16 %i.lu, %i.lw
  br i1 %.not16.i.i.i, label %bb.by, label %intel_crtc_vrr_enabling.exit.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.lx = getelementptr i8, ptr %i.kp, i64 4646
  %i.ly = load i8, ptr %i.lx, align 2
  %i.lz = getelementptr i8, ptr %i.kr, i64 4646
  %i.ma = load i8, ptr %i.lz, align 2
  %.not17.i.i.i = icmp eq i8 %i.ly, %i.ma
  br i1 %.not17.i.i.i, label %bb.bz, label %intel_crtc_vrr_enabling.exit.thread.i

bb.bz:                                            ; preds = %bb.by
  %i.mb = getelementptr i8, ptr %i.kp, i64 4660
  %i.mc = load i32, ptr %i.mb, align 4
  %i.md = getelementptr i8, ptr %i.kr, i64 4660
  %i.me = load i32, ptr %i.md, align 4
  %.not18.i.i.i = icmp eq i32 %i.mc, %i.me
  br i1 %.not18.i.i.i, label %.split.i, label %intel_crtc_vrr_enabling.exit.thread.i

.split.i:                                         ; preds = %bb.bz
  %i.mf = getelementptr i8, ptr %i.kp, i64 4656
  %i.mg = load i32, ptr %i.mf, align 4
  %i.mh = getelementptr i8, ptr %i.kr, i64 4656
  %i.mi = load i32, ptr %i.mh, align 8
  %.not52.i = icmp eq i32 %i.mg, %i.mi
  br i1 %.not52.i, label %commit_pipe_post_planes.exit, label %intel_crtc_vrr_enabling.exit.thread.i

intel_crtc_vrr_enabling.exit.i:                   ; preds = %bb.bq, %bb.bp
  %i.mj = getelementptr i8, ptr %i.kr, i64 4644
  %i.mk = load i8, ptr %i.mj, align 4, !range !34, !noundef !35
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %intel_crtc_vrr_enabling.exit.thread.i, label %commit_pipe_post_planes.exit

intel_crtc_vrr_enabling.exit.thread.i:            ; preds = %intel_crtc_vrr_enabling.exit.i, %.split.i, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs
  tail call void @intel_vrr_enable(ptr noundef %i.jb) #24
  br label %commit_pipe_post_planes.exit

commit_pipe_post_planes.exit:                     ; preds = %bb.bo, %bb.br, %.split.i, %intel_crtc_vrr_enabling.exit.i, %intel_crtc_vrr_enabling.exit.thread.i
  tail call void @intel_pipe_update_end(ptr noundef %0, ptr noundef %1) #24
  br label %bb.ca

bb.ca:                                            ; preds = %bb.d, %commit_pipe_post_planes.exit, %bb.b
  %.val43 = load ptr, ptr %i.a, align 8
  %.val44 = load i32, ptr %i.b, align 8
  %i.mm = zext i32 %.val44 to i64
  %i.mn = getelementptr [56 x i8], ptr %.val43, i64 %i.mm ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8            ; 8 uses
  %i.mq = getelementptr i8, ptr %i.mn, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8            ; 13 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 344
  %i.mt = load i8, ptr %i.ms, align 8, !range !34, !noundef !35
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.cb, label %intel_crtc_vrr_enabling.exit.thread63

bb.cb:                                            ; preds = %bb.ca
  %i.mv = getelementptr i8, ptr %i.mp, i64 4644
  %i.mw = load i8, ptr %i.mv, align 4, !range !34, !noundef !35
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.cc, label %intel_crtc_vrr_enabling.exit

bb.cc:                                            ; preds = %bb.cb
  %i.my = getelementptr i8, ptr %i.mr, i64 10
  %.val17.i = load i8, ptr %i.my, align 2
  %i.mz = and i8 %.val17.i, 14
  %.not.i58 = icmp eq i8 %i.mz, 0
  br i1 %.not.i58, label %bb.cd, label %intel_crtc_vrr_enabling.exit

bb.cd:                                            ; preds = %bb.cc
  %.phi.trans.insert.i = getelementptr i8, ptr %i.mr, i64 4644
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !range !34
  %i.na = trunc nuw i8 %.pre.i to i1
  br i1 %i.na, label %bb.ce, label %intel_crtc_vrr_enabling.exit.thread63

bb.ce:                                            ; preds = %bb.cd
  %i.nb = getelementptr i8, ptr %i.mr, i64 845
  %i.nc = load i8, ptr %i.nb, align 1, !range !34, !noundef !35
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %intel_crtc_vrr_enabling.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ne = getelementptr i8, ptr %i.mr, i64 846
  %i.nf = load i8, ptr %i.ne, align 2, !range !34, !noundef !35
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %intel_crtc_vrr_enabling.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nh = getelementptr i8, ptr %i.mp, i64 4648
  %i.ni = load i16, ptr %i.nh, align 4
  %i.nj = getelementptr i8, ptr %i.mr, i64 4648
  %i.nk = load i16, ptr %i.nj, align 8
  %.not.i.i59 = icmp eq i16 %i.ni, %i.nk
  br i1 %.not.i.i59, label %bb.ch, label %intel_crtc_vrr_enabling.exit.thread

bb.ch:                                            ; preds = %bb.cg
  %i.nl = getelementptr i8, ptr %i.mp, i64 4650
  %i.nm = load i16, ptr %i.nl, align 2
  %i.nn = getelementptr i8, ptr %i.mr, i64 4650
  %i.no = load i16, ptr %i.nn, align 2
  %.not14.i.i = icmp eq i16 %i.nm, %i.no
  br i1 %.not14.i.i, label %bb.ci, label %intel_crtc_vrr_enabling.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %i.np = getelementptr i8, ptr %i.mp, i64 4652
  %i.nq = load i16, ptr %i.np, align 4
  %i.nr = getelementptr i8, ptr %i.mr, i64 4652
  %i.ns = load i16, ptr %i.nr, align 4
  %.not15.i.i = icmp eq i16 %i.nq, %i.ns
  br i1 %.not15.i.i, label %bb.cj, label %intel_crtc_vrr_enabling.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %i.nt = getelementptr i8, ptr %i.mp, i64 4654
end_hunk_3
