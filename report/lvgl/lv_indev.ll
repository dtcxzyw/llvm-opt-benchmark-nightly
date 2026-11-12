Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_indev?download=true
inline.NumInlined: 98
inline.NumDeleted: 21
begin_hunk_0_@indev_proc_press:bb.a
bb.ad:                                            ; preds = %.thread78.i
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45
  %i.dn = tail call i32 @lv_obj_send_event(ptr noundef %.pre106.i, i32 noundef 19, ptr noundef %i.dm) #11 ; 0 uses
  %i.do = load i8, ptr %i.ca, align 4
  %i.dp = and i8 %i.do, 2
  %.not.i64.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i64.i, label %indev_reset_check.exit.thread.i, label %indev_reset_check.exit68.i

indev_reset_check.exit68.i:                       ; preds = %bb.ad
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i65.i = load i8, ptr %i.ca, align 4
  %.pre2.i66.i = and i8 %.pre.i65.i, 2
  %.not100.i = icmp eq i8 %.pre2.i66.i, 0
  br i1 %.not100.i, label %indev_reset_check.exit.thread.i, label %indev_click_focus.exit

indev_reset_check.exit.thread.i:                  ; preds = %indev_reset_check.exit68.i, %bb.ad, %indev_reset_check.exit63.i, %.thread92.i, %indev_reset_check.exit43.i, %indev_reset_check.exit38.thread.i, %.thread96.i, %indev_reset_check.exit.i, %bb.w
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  store ptr %i.dq, ptr %i.ch, align 8, !tbaa !64
  br label %indev_click_focus.exit

indev_click_focus.exit:                           ; preds = %bb.s, %indev_reset_check.exit.i, %indev_reset_check.exit38.i, %indev_reset_check.exit43.i, %indev_reset_check.exit48.i, %indev_reset_check.exit58.i, %indev_reset_check.exit63.i, %indev_reset_check.exit68.i, %indev_reset_check.exit.thread.i
  %i.dr = load i8, ptr %i.d, align 4
  %i.ds = and i8 %i.dr, 2
  %.not.i175 = icmp eq i8 %i.ds, 0
  br i1 %.not.i175, label %indev_reset_check.exit179.thread, label %indev_reset_check.exit179

indev_reset_check.exit179:                        ; preds = %indev_click_focus.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i176 = load i8, ptr %i.d, align 4
  %.pre2.i177 = and i8 %.pre.i176, 2
  %.not223 = icmp eq i8 %.pre2.i177, 0
  br i1 %.not223, label %indev_reset_check.exit179.thread, label %.critedge157

indev_reset_check.exit179.thread:                 ; preds = %indev_click_focus.exit, %.thread, %indev_reset_check.exit172.thread, %indev_reset_check.exit179, %indev_reset_check.exit.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.dw = load <2 x i32>, ptr %i.a, align 8, !tbaa !51
  %i.dx = load <2 x i32>, ptr %i.dt, align 8, !tbaa !51
  %i.dy = sub nsw <2 x i32> %i.dw, %i.dx          ; 2 uses
  store <2 x i32> %i.dy, ptr %i.du, align 8, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !137 ; 2 uses
  %i.ec = zext i8 %i.eb to i64                    ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ec
  store <2 x i32> %i.dy, ptr %i.ed, align 8, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ec
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !51
  %i.ei = add i8 %i.eb, 1
  %i.ej = and i8 %i.ei, 7
  store i8 %i.ej, ptr %i.ea, align 8, !tbaa !137
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 6 uses
  store i32 0, ptr %i.ek, align 4, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store i32 0, ptr %i.el, align 8, !tbaa !68
  br label %bb.af

bb.ae:                                            ; preds = %indev_scroll_throw_decay.exit184
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.en = load i64, ptr %i.ek, align 4, !tbaa !51
  store i64 %i.en, ptr %i.em, align 4, !tbaa !51
  %i.eo = load i32, ptr %i.du, align 8, !tbaa !136
  %i.ep = tail call i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !65
  %i.es = zext i8 %i.er to i32                    ; 2 uses
  %i.et = icmp samesign ugt i32 %i.ep, %i.es
  br i1 %i.et, label %bb.aj, label %bb.ai

bb.af:                                            ; preds = %indev_reset_check.exit179.thread, %indev_scroll_throw_decay.exit184
  %indvars.iv = phi i64 [ 0, %indev_reset_check.exit179.thread ], [ %indvars.iv.next, %indev_scroll_throw_decay.exit184 ] ; 3 uses
  %i.eu = load i32, ptr %i.ee, align 8, !tbaa !47
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !51
  %i.ex = tail call i32 @lv_tick_diff(i32 noundef %i.eu, i32 noundef %i.ew) #11 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !74 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, 1
  br i1 %i.fa, label %indev_scroll_throw_decay.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = icmp samesign ugt i32 %i.ex, 98
  br i1 %i.fb, label %indev_scroll_throw_decay.exit184, label %bb.ah

indev_scroll_throw_decay.exit:                    ; preds = %bb.af
  %i.fc = load i32, ptr %i.ek, align 4, !tbaa !83
  %i.fd = add nsw i32 %i.fc, %i.ez
  store i32 %i.fd, ptr %i.ek, align 4, !tbaa !83
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !75
  br label %indev_scroll_throw_decay.exit184

bb.ah:                                            ; preds = %bb.ag
  %.tr.i = trunc nuw nsw i32 %i.ex to i16
  %.lhs.trunc.i = shl nuw i16 %.tr.i, 9
  %i.fg = udiv i16 %.lhs.trunc.i, 99
  %.zext.i = zext nneg i16 %i.fg to i32
  %i.fh = sub nuw nsw i32 512, %.zext.i           ; 2 uses
  %i.fi = mul nsw i32 %i.fh, %i.ez
  %i.fj = sdiv i32 %i.fi, 512
  %i.fk = load i32, ptr %i.ek, align 4, !tbaa !83
  %i.fl = add nsw i32 %i.fk, %i.fj
  store i32 %i.fl, ptr %i.ek, align 4, !tbaa !83
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !75
  %i.fo = mul nsw i32 %i.fn, %i.fh
  %i.fp = sdiv i32 %i.fo, 512
  br label %indev_scroll_throw_decay.exit184

indev_scroll_throw_decay.exit184:                 ; preds = %bb.ag, %indev_scroll_throw_decay.exit, %bb.ah
  %.0.i183 = phi i32 [ %i.fp, %bb.ah ], [ %i.ff, %indev_scroll_throw_decay.exit ], [ 0, %bb.ag ]
  %i.fq = load i32, ptr %i.el, align 8, !tbaa !68
  %i.fr = add nsw i32 %i.fq, %.0.i183
  store i32 %i.fr, ptr %i.el, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.ae, label %bb.af, !llvm.loop !132

bb.ai:                                            ; preds = %bb.ae
  %i.fs = load i32, ptr %i.dv, align 4, !tbaa !66
  %i.ft = tail call i32 @llvm.abs.i32(i32 %i.fs, i1 true)
  %i.fu = icmp samesign ugt i32 %i.ft, %i.es
  br i1 %i.fu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 4
  %i.fx = or i16 %i.fw, 512
  store i16 %i.fx, ptr %i.fv, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54 ; 2 uses
  %.not147 = icmp eq ptr %i.fy, null
  br i1 %.not147, label %.critedge157, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fz = tail call zeroext i1 @lv_obj_has_state(ptr noundef nonnull %i.fy, i32 noundef 512) #11 ; 3 uses
  br i1 %i.fz, label %send_event.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 2 uses
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %i.gc = tail call i32 @lv_obj_send_event(ptr noundef %i.gb, i32 noundef 2, ptr noundef %i.ga) #11 ; 0 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 28 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 4
  %i.gf = and i8 %i.ge, 2
  %.not.i29.i = icmp eq i8 %i.gf, 0
  br i1 %.not.i29.i, label %send_event.exit.thread, label %send_event.exit

send_event.exit:                                  ; preds = %bb.am
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i30.i = load i8, ptr %i.gd, align 4
  %.pre.i30.fr.i = freeze i8 %.pre.i30.i
  %.pre2.i31.i = and i8 %.pre.i30.fr.i, 2
  %.not38.i.not = icmp eq i8 %.pre2.i31.i, 0
  br i1 %.not38.i.not, label %send_event.exit.thread, label %.critedge157

send_event.exit.thread:                           ; preds = %bb.am, %send_event.exit, %bb.al
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  %i.gi = load i8, ptr %i.gh, align 4
  %i.gj = and i8 %i.gi, 8
  %.not148 = icmp eq i8 %i.gj, 0
  br i1 %.not148, label %bb.an, label %.critedge157

bb.an:                                            ; preds = %send_event.exit.thread
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !50 ; 2 uses
  %.not149 = icmp eq ptr %i.gl, null
  br i1 %.not149, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lv_obj_stop_scroll_anim(ptr noundef nonnull %i.gl) #11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void @lv_indev_scroll_handler(ptr noundef nonnull %0) #11
  %i.gm = load i8, ptr %i.d, align 4
  %i.gn = and i8 %i.gm, 2
  %.not.i186 = icmp eq i8 %i.gn, 0
  br i1 %.not.i186, label %indev_reset_check.exit190.thread, label %indev_reset_check.exit190

indev_reset_check.exit190:                        ; preds = %bb.ap
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i187 = load i8, ptr %i.d, align 4
  %.pre2.i188 = and i8 %.pre.i187, 2
  %.not224 = icmp eq i8 %.pre2.i188, 0
  br i1 %.not224, label %indev_reset_check.exit190.thread, label %.critedge157

indev_reset_check.exit190.thread:                 ; preds = %bb.ap, %indev_reset_check.exit190
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !50
  %.not.i191 = icmp eq ptr %i.go, null
  br i1 %.not.i191, label %bb.aq, label %indev_gesture.exit

bb.aq:                                            ; preds = %indev_reset_check.exit190.thread
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %1 = load i16, ptr %i.gp, align 4
  %2 = and i16 %1, 256
  %.not52.i = icmp eq i16 %2, 0
  br i1 %.not52.i, label %bb.ar, label %indev_gesture.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !67  ; 2 uses
  %cond63.i = icmp eq ptr %i.gq, null
  br i1 %cond63.i, label %indev_gesture.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar, %bb.as
  %.064.i = phi ptr [ %i.gs, %bb.as ], [ %i.gq, %bb.ar ] ; 4 uses
  %i.gr = tail call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.064.i, i32 noundef 32768) #11
  br i1 %i.gr, label %bb.as, label %.critedge.i

bb.as:                                            ; preds = %.lr.ph.i
  %i.gs = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.064.i) #11 ; 2 uses
  %cond.i = icmp eq ptr %i.gs, null
  br i1 %cond.i, label %indev_gesture.exit, label %.lr.ph.i, !llvm.loop !133

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.gt = load i32, ptr %i.du, align 8, !tbaa !136 ; 2 uses
  %i.gu = tail call i32 @llvm.abs.i32(i32 %i.gt, i1 true)
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 82
  %i.gx = load i8, ptr %i.gw, align 2, !tbaa !79
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = icmp samesign ult i32 %i.gu, %i.gy
  %i.ha = load i32, ptr %i.dv, align 4, !tbaa !66 ; 2 uses
  %i.hb = tail call i32 @llvm.abs.i32(i32 %i.ha, i1 true)
  %i.hc = icmp samesign ult i32 %i.hb, %i.gy
  %or.cond70.i = select i1 %i.gz, i1 %i.hc, i1 false
  br i1 %or.cond70.i, label %.critedge._crit_edge.i, label %.critedge.i..critedge._crit_edge.i_crit_edge

.critedge.i..critedge._crit_edge.i_crit_edge:     ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pre234 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !52
  %.phi.trans.insert235 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %.pre236 = load i32, ptr %.phi.trans.insert235, align 4, !tbaa !53
  br label %.critedge._crit_edge.i

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %.critedge.i..critedge._crit_edge.i_crit_edge
  %i.hd = phi i32 [ %.pre236, %.critedge.i..critedge._crit_edge.i_crit_edge ], [ 0, %.critedge.i ]
  %i.he = phi i32 [ %.pre234, %.critedge.i..critedge._crit_edge.i_crit_edge ], [ 0, %.critedge.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.hg = add nsw i32 %i.he, %i.gt                ; 3 uses
  store i32 %i.hg, ptr %i.hf, align 8, !tbaa !52
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.hi = add nsw i32 %i.hd, %i.ha                ; 3 uses
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !53
  %i.hj = icmp sgt i32 %i.hg, 0
  %i.hk = tail call i32 @llvm.abs.i32(i32 %i.hg, i1 true) ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 83
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !78
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  %i.ho = icmp samesign ugt i32 %i.hk, %i.hn
  %i.hp = tail call i32 @llvm.abs.i32(i32 %i.hi, i1 true) ; 2 uses
  %i.hq = icmp samesign ugt i32 %i.hp, %i.hn
  %or.cond.i = select i1 %i.ho, i1 true, i1 %i.hq
  br i1 %or.cond.i, label %bb.at, label %indev_gesture.exit

bb.at:                                            ; preds = %.critedge._crit_edge.i
  %i.hr = load i16, ptr %i.gp, align 4
  %i.hs = or i16 %i.hr, 256                       ; 2 uses
  %i.ht = icmp samesign ugt i32 %i.hk, %i.hp
  br i1 %i.ht, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hu = and i16 %i.hs, -241                     ; 2 uses
  br i1 %i.hj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hv = or disjoint i16 %i.hu, 32
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.hw = or disjoint i16 %i.hu, 16
  br label %bb.ba

bb.ax:                                            ; preds = %bb.at
  %i.hx = icmp sgt i32 %i.hi, 0
  %i.hy = and i16 %i.hs, -241                     ; 2 uses
  br i1 %i.hx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hz = or disjoint i16 %i.hy, 128
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ia = or disjoint i16 %i.hy, 64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.av
  %.sink.i = phi i16 [ %i.hz, %bb.ay ], [ %i.ia, %bb.az ], [ %i.hv, %bb.av ], [ %i.hw, %bb.aw ]
  store i16 %.sink.i, ptr %i.gp, align 4
  %i.ib = tail call i32 @lv_obj_send_event(ptr noundef nonnull %.064.i, i32 noundef 16, ptr noundef nonnull %i.gv) #11 ; 0 uses
  %i.ic = load i8, ptr %i.d, align 4
  %i.id = and i8 %i.ic, 2
  %.not.i.i193 = icmp eq i8 %i.id, 0
  br i1 %.not.i.i193, label %indev_reset_check.exit.thread.i197, label %indev_reset_check.exit.i194

indev_reset_check.exit.i194:                      ; preds = %bb.ba
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i.i195 = load i8, ptr %i.d, align 4
  %.pre2.i.i196 = and i8 %.pre.i.i195, 2
  %.not60.i = icmp eq i8 %.pre2.i.i196, 0
  br i1 %.not60.i, label %indev_reset_check.exit.thread.i197, label %indev_gesture.exit

indev_reset_check.exit.thread.i197:               ; preds = %indev_reset_check.exit.i194, %bb.ba
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 368
  %i.ig = tail call i32 @lv_event_push_and_send(ptr noundef nonnull %i.if, i32 noundef 16, ptr noundef %i.ie, ptr noundef nonnull %.064.i) #11 ; 0 uses
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 28
  %i.ij = load i8, ptr %i.ii, align 4
  %i.ik = and i8 %i.ij, 2
  %.not.i54.i198 = icmp eq i8 %i.ik, 0
  br i1 %.not.i54.i198, label %indev_gesture.exit, label %bb.bb

bb.bb:                                            ; preds = %indev_reset_check.exit.thread.i197
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  br label %indev_gesture.exit

indev_gesture.exit:                               ; preds = %bb.as, %indev_reset_check.exit190.thread, %bb.aq, %bb.ar, %.critedge._crit_edge.i, %indev_reset_check.exit.i194, %indev_reset_check.exit.thread.i197, %bb.bb
  %i.il = load i8, ptr %i.d, align 4
  %i.im = and i8 %i.il, 2
  %.not.i199 = icmp eq i8 %i.im, 0
  br i1 %.not.i199, label %indev_reset_check.exit203.thread, label %indev_reset_check.exit203

indev_reset_check.exit203:                        ; preds = %indev_gesture.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 168), align 8, !tbaa !54
  %.pre.i200 = load i8, ptr %i.d, align 4
  %.pre2.i201 = and i8 %.pre.i200, 2
  %.not225 = icmp eq i8 %.pre2.i201, 0
  br i1 %.not225, label %indev_reset_check.exit203.thread, label %.critedge157

indev_reset_check.exit203.thread:                 ; preds = %indev_gesture.exit, %indev_reset_check.exit203
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.io = load i32, ptr %i.in, align 8, !tbaa !26
  %i.ip = icmp eq i32 %i.io, 2
  br i1 %i.ip, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %indev_reset_check.exit203.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !23 ; 2 uses
  %.not150 = icmp eq ptr %i.ir, null
  br i1 %.not150, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.is = tail call zeroext i1 @lv_timer_get_paused(ptr noundef nonnull %i.ir) #11
  br i1 %i.is, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !23
  tail call void @lv_timer_resume(ptr noundef %i.it) #11
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %indev_reset_check.exit203.thread
  %i.iu = load ptr, ptr %i.gk, align 8, !tbaa !50
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.bg, label %.critedge157

bb.bg:                                            ; preds = %bb.bf
  %i.iw = load i8, ptr %i.d, align 4
  %i.ix = and i8 %i.iw, 1
  %i.iy = icmp eq i8 %i.ix, 0
  br i1 %i.iy, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.iz = load i32, ptr %i.ee, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !48
  %i.jc = tail call i32 @lv_tick_diff(i32 noundef %i.iz, i32 noundef %i.jb) #11
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 160), align 8, !tbaa !45 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 84
  %i.jf = load i16, ptr %i.je, align 4, !tbaa !27
  %i.jg = zext i16 %i.jf to i32
  %.not151 = icmp ult i32 %i.jc, %i.jg
  br i1 %.not151, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.fz, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jh = tail call fastcc i32 @send_event(i32 noundef 8, ptr noundef nonnull %i.jd)
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.critedge157, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jj = load i8, ptr %i.d, align 4
  %i.jk = or i8 %i.jj, 1
  store i8 %i.jk, ptr %i.d, align 4
  %i.jl = load i32, ptr %i.ee, align 8, !tbaa !47
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.jl, ptr %i.jm, align 8, !tbaa !49
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bk, %bb.bg
  %.pr217 = load ptr, ptr %i.gk, align 8, !tbaa !50
  %i.jn = icmp eq ptr %.pr217, null
  br i1 %i.jn, label %bb.bm, label %.critedge157

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
