Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandvideo?download=true
inline.NumInlined: 108
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@handle_registry_global:bb.a
  br label %Wayland_add_display.exit

bb.as:                                            ; preds = %bb.aq
  %i.gu = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.36) #13
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.gz = load ptr, ptr @zwp_input_timestamps_manager_v1_interface, align 8
  %i.ha = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.gy(ptr noundef %i.gx, i32 noundef 0, ptr noundef nonnull @zwp_input_timestamps_manager_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.gz, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.ha, ptr %i.hb, align 8
  tail call void @Wayland_DisplayInitInputTimestampManager(ptr noundef %0) #13
  br label %Wayland_add_display.exit

bb.au:                                            ; preds = %bb.as
  %i.hc = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.37) #13
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.hh = load ptr, ptr @wp_cursor_shape_manager_v1_interface, align 8
  %i.hi = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.hg(ptr noundef %i.hf, i32 noundef 0, ptr noundef nonnull @wp_cursor_shape_manager_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.hh, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.hi, ptr %i.hj, align 8
  tail call void @Wayland_DisplayInitCursorShapeManager(ptr noundef %0) #13
  br label %Wayland_add_display.exit

bb.aw:                                            ; preds = %bb.au
  %i.hk = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.38) #13
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.hp = load ptr, ptr @zxdg_exporter_v2_interface, align 8
  %i.hq = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ho(ptr noundef %i.hn, i32 noundef 0, ptr noundef nonnull @zxdg_exporter_v2_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.hp, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.hq, ptr %i.hr, align 8
  br label %Wayland_add_display.exit

bb.ay:                                            ; preds = %bb.aw
  %i.hs = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.39) #13
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.hx = load ptr, ptr @xdg_wm_dialog_v1_interface, align 8
  %i.hy = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.hw(ptr noundef %i.hv, i32 noundef 0, ptr noundef nonnull @xdg_wm_dialog_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.hx, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.hy, ptr %i.hz, align 8
  br label %Wayland_add_display.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ia = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.40) #13
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.if = load ptr, ptr @wp_alpha_modifier_v1_interface, align 8
  %i.ig = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ie(ptr noundef %i.id, i32 noundef 0, ptr noundef nonnull @wp_alpha_modifier_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.if, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ig, ptr %i.ih, align 8
  br label %Wayland_add_display.exit

bb.bc:                                            ; preds = %bb.ba
  %i.ii = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.41) #13
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.in = load ptr, ptr @xdg_toplevel_icon_manager_v1_interface, align 8
  %i.io = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.im(ptr noundef %i.il, i32 noundef 0, ptr noundef nonnull @xdg_toplevel_icon_manager_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.in, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.io, ptr %i.ip, align 8
  br label %Wayland_add_display.exit

bb.be:                                            ; preds = %bb.bc
  %i.iq = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.42) #13
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.iv = load ptr, ptr @frog_color_management_factory_v1_interface, align 8
  %i.iw = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.iu(ptr noundef %i.it, i32 noundef 0, ptr noundef nonnull @frog_color_management_factory_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.iv, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.iw, ptr %i.ix, align 8
  br label %Wayland_add_display.exit

bb.bg:                                            ; preds = %bb.be
  %i.iy = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.43) #13
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = tail call i32 @llvm.umin.i32(i32 %4, i32 2) ; 2 uses
  %i.jd = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.je = load ptr, ptr @wp_color_manager_v1_interface, align 8
  %i.jf = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.jd(ptr noundef %i.jb, i32 noundef 0, ptr noundef nonnull @wp_color_manager_v1_interface, i32 noundef %i.jc, i32 noundef 0, i32 noundef %2, ptr noundef %i.je, i32 noundef %i.jc, ptr noundef null) #13, !inline_history !66
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.jf, ptr %i.jg, align 8
  tail call fastcc void @Wayland_InitColorManager(ptr noundef %0)
  br label %Wayland_add_display.exit

bb.bi:                                            ; preds = %bb.bg
  %i.jh = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.44) #13
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.jm = load ptr, ptr @wp_pointer_warp_v1_interface, align 8
  %i.jn = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.jl(ptr noundef %i.jk, i32 noundef 0, ptr noundef nonnull @wp_pointer_warp_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %i.jm, i32 noundef 1, ptr noundef null) #13, !inline_history !66
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.jn, ptr %i.jo, align 8
  br label %Wayland_add_display.exit

bb.bk:                                            ; preds = %bb.bi
  %i.jp = tail call i32 @SDL_strcmp_REAL(ptr noundef %3, ptr noundef nonnull @.str.45) #13
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bl, label %Wayland_add_display.exit

bb.bl:                                            ; preds = %bb.bk
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = tail call i32 @llvm.umin.i32(i32 %4, i32 3) ; 2 uses
  %i.ju = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.jv = load ptr, ptr @zwp_pointer_gestures_v1_interface, align 8
  %i.jw = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ju(ptr noundef %i.js, i32 noundef 0, ptr noundef nonnull @zwp_pointer_gestures_v1_interface, i32 noundef %i.jt, i32 noundef 0, i32 noundef %2, ptr noundef %i.jv, i32 noundef %i.jt, ptr noundef null) #13, !inline_history !66
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.jw, ptr %i.jx, align 8
  tail call void @Wayland_DisplayInitPointerGestureManager(ptr noundef %0) #13
  br label %Wayland_add_display.exit

Wayland_add_display.exit:                         ; preds = %bb.l, %bb.k, %bb.j, %bb.e, %bb.p, %bb.t, %bb.x, %bb.ab, %bb.af, %bb.aj, %bb.an, %bb.ar, %bb.av, %bb.az, %bb.bd, %bb.bh, %bb.bk, %bb.bl, %bb.bj, %bb.bf, %bb.bb, %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handle_registry_remove_global(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, %2
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call ptr @SDL_GetVideoDisplay(i32 noundef %i.l) #13
  tail call fastcc void @Wayland_free_display(ptr noundef %i.m, i1 noundef zeroext true)
  %i.n = load i32, ptr %i.a, align 8              ; 3 uses
  %i.o = icmp sgt i32 %i.n, %i.j
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = xor i32 %i.j, -1
  %i.t = add nsw i32 %i.n, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.q, ptr nonnull align 8 %i.r, i64 %i.v, i1 false)
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !75

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %i.n, %bb.c ], [ %.pre, %bb.d ]
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.a, align 8
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %._crit_edge
  %.pn39.in = phi ptr [ %i.z, %._crit_edge ], [ %.pn.in, %bb.h ]
  %.pn39 = load ptr, ptr %.pn39.in, align 8       ; 4 uses
  %.not38 = icmp eq ptr %.pn39, %i.y
  br i1 %.not38, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pn.in = getelementptr inbounds nuw i8, ptr %.pn39, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn39, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, %2
  br i1 %i.ac, label %bb.i, label %bb.g, !llvm.loop !76

bb.i:                                             ; preds = %bb.h
  %.033.le = getelementptr inbounds i8, ptr %.pn39, i64 -40
  tail call void @Wayland_SeatDestroy(ptr noundef nonnull %.033.le, i1 noundef zeroext false) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not41 = icmp eq ptr %i.ae, null
  br i1 %.not41, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.af = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ae) #13, !inline_history !1
  %i.ah = icmp ugt i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.aj = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ak = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.al = tail call i32 %i.ak(ptr noundef %i.ai) #13, !inline_history !2
  %i.am = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.aj(ptr noundef %i.ai, i32 noundef 2, ptr noundef null, i32 noundef %i.al, i32 noundef 0, ptr noundef %1, i32 noundef %2) #13, !inline_history !2 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.loopexit
  ret void
}

declare void @Wayland_DisplayCreateSeat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Wayland_DisplayInitTextInputManager(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Wayland_DisplayInitDataDeviceManager(ptr noundef) local_unnamed_addr #2

declare void @Wayland_DisplayInitPrimarySelectionDeviceManager(ptr noundef) local_unnamed_addr #2

declare void @Wayland_DisplayInitTabletManager(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Wayland_init_xdg_output(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.n = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.o = tail call i32 %i.n(ptr noundef %i.j) #13, !inline_history !77
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.m(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @zxdg_output_v1_interface, i32 noundef %i.o, i32 noundef 0, ptr noundef null, ptr noundef %i.l) #13, !inline_history !77 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr @WAYLAND_wl_proxy_add_listener, align 8
  %i.s = tail call i32 %i.r(ptr noundef %i.p, ptr noundef nonnull @xdg_output_listener, ptr noundef nonnull %i.g) #13, !inline_history !78 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.a, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !79
}

declare void @Wayland_DisplayInitInputTimestampManager(ptr noundef) local_unnamed_addr #2

declare void @Wayland_DisplayInitCursorShapeManager(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Wayland_InitColorManager(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.n = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.o = tail call i32 %i.n(ptr noundef %i.j) #13, !inline_history !80
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.m(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @wp_color_management_output_v1_interface, i32 noundef %i.o, i32 noundef 0, ptr noundef null, ptr noundef %i.l) #13, !inline_history !80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr @WAYLAND_wl_proxy_add_listener, align 8
  %i.s = tail call i32 %i.r(ptr noundef %i.p, ptr noundef nonnull @wp_color_management_output_listener, ptr noundef nonnull %i.g) #13, !inline_history !81 ; 0 uses
  tail call void @Wayland_GetColorInfoForOutput(ptr noundef nonnull %i.g, i1 noundef zeroext true) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.a, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !82
}

declare void @Wayland_DisplayInitPointerGestureManager(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @Wayland_GetColorInfoForOutput(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @handle_wl_output_geometry(ptr nofree noundef captures(none) initializes((80, 84), (88, 96)) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr nofree readnone captures(none) %7, ptr noundef %8, i32 noundef %9) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %2, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %3, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 %4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i32 %5, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %8) #13
  store ptr %i.m, ptr %i.k, align 8
  %.pre = load i32, ptr %i.f, align 8
  %.pre36 = load i32, ptr %i.g, align 4
end_hunk_0
