Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/accelerators?download=true
inline.NumInlined: 193
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dt_shortcut_dispatcher:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 552
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !86
  %i.by = sext i32 %i.bk to i64
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = call ptr @g_sequence_search(ptr noundef %i.bx, ptr noundef nonnull %4, ptr noundef nonnull @_shortcut_compare_func, ptr noundef %i.bz) #23 ; 2 uses
  %i.cb = call i32 @g_sequence_iter_is_end(ptr noundef %i.ca) #23
  %.not183 = icmp eq i32 %i.cb, 0
  br i1 %.not183, label %bb.ai, label %g_set_weak_pointer.exit

bb.ai:                                            ; preds = %dt_action_widget.exit200.thread
  %i.cc = call ptr @g_sequence_get(ptr noundef %i.ca) #23 ; 3 uses
  %.not184 = icmp eq ptr %i.cc, null
  br i1 %.not184, label %g_set_weak_pointer.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !90
  %.not185 = icmp eq i8 %i.ce, 0
  br i1 %.not185, label %bb.ak, label %g_set_weak_pointer.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !91
  %i.ch = load i32, ptr %i.bl, align 4, !tbaa !91
  %i.ci = add i32 %i.ch, 1
  %.not186 = icmp eq i32 %i.cg, %i.ci
  br i1 %.not186, label %bb.al, label %g_set_weak_pointer.exit

bb.al:                                            ; preds = %bb.ak, %dt_action_widget.exit200, %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !11
  %i.cl = call fastcc i32 @_key_modifiers_clean(i32 noundef %i.ck)
  store i32 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !11
  %i.co = load i32, ptr %i.bl, align 4, !tbaa !91
  %i.cp = add i32 %i.co, 1
  call void @dt_shortcut_key_press(i8 noundef zeroext 0, i32 noundef %i.cn, i32 noundef %i.cp)
  br label %g_set_weak_pointer.exit

bb.am:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, 1
  %.not178 = icmp eq i8 %i.cs, 0
  br i1 %.not178, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11
  %i.cv = icmp eq i32 %i.cu, 65027
  br i1 %i.cv, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 32), align 8, !tbaa !95 ; 2 uses
  %.not179 = icmp eq ptr %i.cw, null
  br i1 %.not179, label %g_set_weak_pointer.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !99
  %i.cy = icmp eq i32 %i.cx, 11
  br i1 %i.cy, label %bb.aq, label %g_set_weak_pointer.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !11
  %i.db = tail call fastcc i32 @_key_modifiers_clean(i32 noundef %i.da)
  store i32 %i.db, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.dc = tail call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, float noundef 1.000000e+00) ; 0 uses
  br label %g_set_weak_pointer.exit

bb.ar:                                            ; preds = %bb.an
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11
  %i.df = tail call fastcc i32 @_fix_keyval(ptr noundef nonnull %1)
  tail call void @dt_shortcut_key_release(i8 noundef zeroext 0, i32 noundef %i.de, i32 noundef %i.df)
  br label %g_set_weak_pointer.exit

bb.as:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !11
  %.not177 = icmp eq i32 %i.dh, 0
  br i1 %.not177, label %bb.at, label %g_set_weak_pointer.exit

bb.at:                                            ; preds = %bb.as
  store ptr null, ptr @_grab_window, align 8, !tbaa !215
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  store i32 %i.di, ptr @_focus_loss_key, align 4, !tbaa !12
  %i.dj = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.dk = and i16 %i.dj, 7
  %i.dl = zext nneg i16 %i.dk to i32
  store i32 %i.dl, ptr @_focus_loss_press, align 4, !tbaa !12
  tail call fastcc void @_ungrab_grab_widget(), !inline_history !274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %g_set_weak_pointer.exit

bb.au:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !11
  %i.do = and i32 %i.dn, 128
  %.not176 = icmp eq i32 %i.do, 0
  br i1 %.not176, label %bb.av, label %g_set_weak_pointer.exit

bb.av:                                            ; preds = %bb.au
  store ptr null, ptr @_grab_window, align 8, !tbaa !215
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  store i32 %i.dp, ptr @_focus_loss_key, align 4, !tbaa !12
  %i.dq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.dr = and i16 %i.dq, 7
  %i.ds = zext nneg i16 %i.dr to i32
  store i32 %i.ds, ptr @_focus_loss_press, align 4, !tbaa !12
  tail call fastcc void @_ungrab_grab_widget(), !inline_history !274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %g_set_weak_pointer.exit

bb.aw:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !11
  %.not175 = icmp eq i16 %i.du, 0
  br i1 %.not175, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dv = load ptr, ptr @_grab_window, align 8, !tbaa !73 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, %0
  br i1 %i.dw, label %g_set_weak_pointer.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i201 = icmp eq ptr %i.dv, null
  br i1 %.not.i201, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @g_object_remove_weak_pointer(ptr noundef nonnull %i.dv, ptr noundef nonnull @_grab_window) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr %0, ptr @_grab_window, align 8, !tbaa !73
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %g_set_weak_pointer.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @g_object_add_weak_pointer(ptr noundef nonnull %0, ptr noundef nonnull @_grab_window) #23
  br label %g_set_weak_pointer.exit

bb.bc:                                            ; preds = %bb.aw
  store ptr null, ptr @_grab_window, align 8, !tbaa !215
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  store i32 %i.dx, ptr @_focus_loss_key, align 4, !tbaa !12
  %i.dy = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.dz = and i16 %i.dy, 7
  %i.ea = zext nneg i16 %i.dz to i32
  store i32 %i.ea, ptr @_focus_loss_press, align 4, !tbaa !12
  tail call fastcc void @_ungrab_grab_widget(), !inline_history !274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %g_set_weak_pointer.exit

bb.bd:                                            ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !11
  %i.ed = tail call ptr @gdk_display_get_default() #23
  %i.ee = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.ed) #23
  %i.ef = tail call i32 @gdk_keymap_get_modifier_mask(ptr noundef %i.ee, i32 noundef 0) #23
  %i.eg = or i32 %i.ef, 141
  %i.eh = and i32 %i.eg, %i.ec
  %i.ei = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !12
  %i.ej = or i32 %i.eh, %i.ei
  store i32 %i.ej, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.ek = call i32 @dt_gui_get_scroll_unit_deltas(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #23
  %.not172 = icmp eq i32 %i.ek, 0
  br i1 %.not172, label %g_set_weak_pointer.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.el = load i32, ptr %i.c, align 4, !tbaa !12  ; 2 uses
  %.not173 = icmp eq i32 %i.el, 0
  br i1 %.not173, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.en = load i32, ptr %i.em, align 4, !tbaa !11
  %i.eo = sub nsw i32 0, %i.el
  %i.ep = sitofp reassoc nsz arcp contract afn i32 %i.eo to float
  %i.eq = call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef %i.en, i32 noundef 2, float noundef %i.ep) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.er = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  %.not174 = icmp eq i32 %i.er, 0
  br i1 %.not174, label %g_set_weak_pointer.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = sub nsw i32 0, %i.er
  %i.ev = sitofp reassoc nsz arcp contract afn i32 %i.eu to float
  %i.ew = call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef %i.et, i32 noundef 1, float noundef %i.ev) ; 0 uses
  br label %g_set_weak_pointer.exit

bb.bi:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !11 ; 2 uses
  %i.ez = load double, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.fa = fsub reassoc nsz arcp contract afn double %i.ey, %i.ez ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11 ; 2 uses
  %i.fd = load double, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  %i.fe = fsub reassoc nsz arcp contract afn double %i.fc, %i.fd ; 4 uses
  %i.ff = load i32, ptr @dt_shortcut_dispatcher.move_last_time, align 4, !tbaa !12 ; 3 uses
  %i.fg = load i32, ptr @_last_time, align 4, !tbaa !12 ; 2 uses
  %.not170 = icmp eq i32 %i.ff, %i.fg
  br i1 %.not170, label %5, label %bb.bj

5:                                                ; preds = %bb.bi
  %6 = fmul reassoc nsz arcp contract afn double %i.fa, %i.fa
  %7 = fmul reassoc nsz arcp contract afn double %i.fe, %i.fe
  %8 = fadd reassoc nsz arcp contract afn double %7, %6
  %9 = fcmp reassoc nsz arcp contract afn olt double %8, 0.000000e+00
  br i1 %9, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %5, %bb.bi
  store double %i.ey, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  store double %i.fc, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  store i32 %i.fg, ptr @dt_shortcut_dispatcher.move_last_time, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

bb.bk:                                            ; preds = %5
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !11 ; 2 uses
  %i.fj = icmp ugt i32 %i.fi, %i.ff
  br i1 %i.fj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fk = tail call i32 @dt_gui_long_click(i32 noundef %i.fi, i32 noundef %i.ff) #23
  %.not171 = icmp eq i32 %i.fk, 0
  br i1 %.not171, label %g_set_weak_pointer.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !11
  %i.fn = tail call fastcc i32 @_key_modifiers_clean(i32 noundef %i.fm)
  store i32 %i.fn, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.fo = fadd reassoc nsz arcp contract afn double %i.fe, 1.000000e-03
  %i.fp = fdiv reassoc nsz arcp contract afn double %i.fa, %i.fo ; 3 uses
  %i.fq = fmul reassoc nsz arcp contract afn double %i.fa, 1.000000e-01
  %i.fr = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.fq) ; 3 uses
  %i.fs = fmul reassoc nsz arcp contract afn double %i.fe, 1.000000e-01
  %i.ft = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.fs) ; 3 uses
  %i.fu = fneg reassoc nsz arcp contract afn double %i.ft ; 2 uses
  %i.fv = fcmp reassoc nsz arcp contract afn une double %i.fr, 0.000000e+00
  %i.fw = fcmp reassoc nsz arcp contract afn une double %i.ft, 0.000000e+00
  %or.cond = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %or.cond, label %bb.bn, label %g_set_weak_pointer.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fp) ; 2 uses
  %i.fy = fcmp reassoc nsz arcp contract afn ult double %i.fx, 2.000000e+00
  br i1 %i.fy, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fz = fmul reassoc nsz arcp contract afn double %i.fr, 1.000000e+01
  %i.ga = load double, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.gb = fadd reassoc nsz arcp contract afn double %i.ga, %i.fz
  store double %i.gb, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.gc = load double, ptr %i.fb, align 8, !tbaa !11
  store double %i.gc, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  %i.gd = fmul reassoc nsz arcp contract afn double %i.ft, -1.000000e+01 ; 2 uses
  %i.ge = load double, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  %i.gf = fsub reassoc nsz arcp contract afn double %i.ge, %i.gd
  store double %i.gf, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  %i.gg = fcmp reassoc nsz arcp contract afn olt double %i.fx, 5.000000e-01
  br i1 %i.gg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gh = load double, ptr %i.ex, align 8, !tbaa !11
  store double %i.gh, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.gi = fmul reassoc nsz arcp contract afn double %i.gd, %i.fp
  %i.gj = load double, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.gk = fsub reassoc nsz arcp contract afn double %i.gj, %i.gi
  store double %i.gk, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.gl = fcmp reassoc nsz arcp contract afn olt double %i.fp, 0.000000e+00
  %i.gm = select i1 %i.gl, i32 6, i32 5
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bo
  %.0129 = phi nsz double [ %i.fr, %bb.bo ], [ %i.fu, %bb.bq ], [ %i.fu, %bb.br ]
  %.0 = phi i32 [ 3, %bb.bo ], [ 4, %bb.bq ], [ %i.gm, %bb.br ] ; 3 uses
  %i.gn = load i32, ptr @_previous_move, align 4, !tbaa !12 ; 2 uses
  %i.go = icmp eq i32 %i.gn, %.0
  %i.gp = icmp eq i32 %i.gn, 0
  %or.cond3 = or i1 %i.go, %i.gp
  br i1 %or.cond3, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gq = load i32, ptr %i.fh, align 4, !tbaa !11
  %i.gr = fptrunc reassoc nsz arcp contract afn double %.0129 to float
  %i.gs = tail call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef %i.gq, i32 noundef %.0, float noundef %i.gr) ; 0 uses
  br label %g_set_weak_pointer.exit

bb.bu:                                            ; preds = %bb.bs
  store i32 %.0, ptr @_previous_move, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

bb.bv:                                            ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !11
  %i.gv = tail call ptr @gdk_display_get_default() #23
  %i.gw = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.gv) #23
  %i.gx = tail call i32 @gdk_keymap_get_modifier_mask(ptr noundef %i.gw, i32 noundef 0) #23
  %i.gy = or i32 %i.gx, 141
  %i.gz = and i32 %i.gy, %i.gu
  %i.ha = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !12
  %i.hb = or i32 %i.gz, %i.ha
  store i32 %i.hb, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !11
  %i.he = add i32 %i.hd, -1
  %i.hf = shl nuw i32 1, %i.he
  %i.hg = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.hh = or i32 %i.hf, %i.hg                     ; 3 uses
  store i32 %i.hh, ptr @_pressed_button, align 4, !tbaa !12
  %i.hi = load i32, ptr @_timeout_source, align 4, !tbaa !12 ; 2 uses
  %.not.i202 = icmp eq i32 %i.hi, 0
  %.pre222 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  br i1 %.not.i202, label %_interrupt_delayed_release.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hj = lshr i16 %.pre222, 3
  %i.hk = and i16 %i.hj, 7
  %i.hl = zext nneg i16 %i.hk to i32
  %.not221 = icmp eq i32 %i.hh, %i.hl
  %i.hm = tail call i32 @g_source_remove(i32 noundef %i.hi) #23, !inline_history !214 ; 0 uses
  store i32 0, ptr @_timeout_source, align 4, !tbaa !12
  br i1 %.not221, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hn = tail call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, float noundef 1.000000e+00), !inline_history !214 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ho = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.hp = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %_interrupt_delayed_release.exit

_interrupt_delayed_release.exit:                  ; preds = %bb.bv, %bb.by
  %.pre224.sink.in = phi i32 [ %i.ho, %bb.by ], [ %i.hh, %bb.bv ]
  %.pre222.sink = phi i16 [ %i.hp, %bb.by ], [ %.pre222, %bb.bv ]
  %.pre224.sink = trunc i32 %.pre224.sink.in to i16
  %.pre225 = shl i16 %.pre224.sink, 3
  %.pre227 = and i16 %.pre225, 56
  %i.hq = and i16 %.pre222.sink, -505
  %i.hr = or disjoint i16 %.pre227, %i.hq
  store i16 %i.hr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !11
  store i32 %i.ht, ptr @_last_time, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

bb.bz:                                            ; preds = %bb.ad
  %i.hu = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.hv = or i16 %i.hu, 128
  store i16 %i.hv, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %g_set_weak_pointer.exit

bb.ca:                                            ; preds = %bb.ad
  %i.hw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.hx = or i16 %i.hw, 256
  store i16 %i.hx, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %g_set_weak_pointer.exit

bb.cb:                                            ; preds = %bb.ad
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !11
  %i.ia = add i32 %i.hz, -1
  %i.ib = shl nuw i32 1, %i.ia
  %i.ic = xor i32 %i.ib, -1
  %i.id = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.ie = and i32 %i.id, %i.ic
  store i32 %i.ie, ptr @_pressed_button, align 4, !tbaa !12
  %i.if = load i32, ptr @_timeout_source, align 4, !tbaa !12 ; 2 uses
  %.not.i203 = icmp eq i32 %i.if, 0
  br i1 %.not.i203, label %_interrupt_delayed_release.exit204, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ig = tail call i32 @g_source_remove(i32 noundef %i.if) #23, !inline_history !214 ; 0 uses
  store i32 0, ptr @_timeout_source, align 4, !tbaa !12
  %i.ih = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.ii = trunc i32 %i.ih to i16
  %i.ij = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.ik = shl i16 %i.ii, 3
  %i.il = and i16 %i.ik, 56
  %i.im = and i16 %i.ij, -505
  %i.in = or disjoint i16 %i.il, %i.im
  store i16 %i.in, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %_interrupt_delayed_release.exit204

_interrupt_delayed_release.exit204:               ; preds = %bb.cb, %bb.cc
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !11
  tail call fastcc void @_delay_for_double_triple(i32 noundef %i.ip, i32 noundef 0)
  store i32 0, ptr @_last_time, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

g_set_weak_pointer.exit:                          ; preds = %dt_action_widget.exit200.thread, %bb.aj, %bb.ak, %bb.ai, %bb.bb, %bb.ba, %bb.ax, %.critedge188, %bb.al, %bb.ar, %bb.bj, %_interrupt_delayed_release.exit, %bb.bz, %bb.ca, %_interrupt_delayed_release.exit204, %bb.bg, %bb.bh, %bb.bd, %bb.bl, %bb.bm, %bb.bu, %bb.bt, %bb.ad, %bb.bc, %bb.au, %bb.av, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.aq, %bb.ae, %bb.af, %bb.af, %bb.af, %bb.af, %bb.d, %bb.e
  %.5 = phi i32 [ %.2, %.critedge188 ], [ 1, %bb.al ], [ 1, %bb.d ], [ 0, %bb.ad ], [ 0, %bb.bb ], [ 0, %bb.ae ], [ 0, %bb.ao ], [ 0, %bb.as ], [ 0, %bb.au ], [ 1, %bb.e ], [ 0, %bb.af ], [ 0, %bb.af ], [ 0, %bb.af ], [ 0, %bb.af ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.bc ], [ 1, %bb.bt ], [ 1, %bb.bu ], [ 1, %bb.bm ], [ 1, %bb.bl ], [ 1, %bb.bd ], [ 1, %bb.bh ], [ 1, %bb.bg ], [ 1, %_interrupt_delayed_release.exit204 ], [ 1, %bb.ca ], [ 1, %bb.bz ], [ 1, %_interrupt_delayed_release.exit ], [ 1, %bb.bj ], [ 1, %bb.ar ], [ 0, %bb.ax ], [ 0, %bb.ba ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %dt_action_widget.exit200.thread ]
  ret i32 %.5
}

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_window_get_type() local_unnamed_addr #10

declare ptr @gtk_window_get_focus(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_entry_get_type() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
end_hunk_0
