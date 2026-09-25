Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandwindow?download=true
inline.NumInlined: 248
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Wayland_HideWindow:bb.a
  %i.ce = call ptr (ptr, i32, ptr, i32, i32, ...) %i.cb(ptr noundef %i.ca, i32 noundef 0, ptr noundef null, i32 noundef %i.cd, i32 noundef 1) #15, !inline_history !76 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.cf = call i32 @SDL_GetWindowProperties_REAL(ptr noundef nonnull %1) #15 ; 2 uses
  %i.cg = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.cf, ptr noundef nonnull @.str.3, ptr noundef null) #15 ; 0 uses
  %i.ch = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.cf, ptr noundef nonnull @.str.4, ptr noundef null) #15 ; 0 uses
  br label %Wayland_ReleasePopup.exit

bb.w:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %.not50 = icmp eq ptr %i.cj, null
  br i1 %.not50, label %Wayland_ReleasePopup.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.cl = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.cm = tail call i32 %i.cl(ptr noundef nonnull %i.cj) #15, !inline_history !77
  %i.cn = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ck(ptr noundef nonnull %i.cj, i32 noundef 0, ptr noundef null, i32 noundef %i.cm, i32 noundef 1) #15, !inline_history !77 ; 0 uses
  %i.co = tail call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef null) #15 ; 0 uses
  br label %Wayland_ReleasePopup.exit

Wayland_ReleasePopup.exit:                        ; preds = %bb.v, %bb.p, %SDL_ObjectValid.exit.thread.i, %SDL_ObjectValid.exit.i, %bb.w, %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %.not51 = icmp eq ptr %i.cq, null
  br i1 %.not51, label %bb.z, label %bb.y

bb.y:                                             ; preds = %Wayland_ReleasePopup.exit
  %i.cr = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.cs = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ct = call i32 %i.cs(ptr noundef nonnull %i.cq) #15, !inline_history !78
  %i.cu = call ptr (ptr, i32, ptr, i32, i32, ...) %i.cr(ptr noundef nonnull %i.cq, i32 noundef 0, ptr noundef null, i32 noundef %i.ct, i32 noundef 1) #15, !inline_history !78 ; 0 uses
  %i.cv = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.f, ptr noundef nonnull @.str.1, ptr noundef null) #15 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %Wayland_ReleasePopup.exit, %bb.y, %bb.m, %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.cz = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.da = call i32 %i.cz(ptr noundef %i.cx) #15, !inline_history !3
  %i.db = call ptr (ptr, i32, ptr, i32, i32, ...) %i.cy(ptr noundef %i.cx, i32 noundef 1, ptr noundef null, i32 noundef %i.da, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #15, !inline_history !3 ; 0 uses
  %i.dc = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.dd = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.de = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.df = call i32 %i.de(ptr noundef %i.dc) #15, !inline_history !4
  %i.dg = call ptr (ptr, i32, ptr, i32, i32, ...) %i.dd(ptr noundef %i.dc, i32 noundef 6, ptr noundef null, i32 noundef %i.df, i32 noundef 0) #15, !inline_history !4 ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.j, align 2
  %i.di = load ptr, ptr %i.b, align 8
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.dl = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.dm = call i32 %i.dl(ptr noundef %i.dj) #15, !inline_history !21
  %i.dn = call ptr (ptr, i32, ptr, i32, i32, ...) %i.dk(ptr noundef %i.dj, i32 noundef 0, ptr noundef nonnull @wl_callback_interface, i32 noundef %i.dm, i32 noundef 0, ptr noundef null) #15, !inline_history !21
  %i.do = load i32, ptr %1, align 8
  %i.dp = zext i32 %i.do to i64
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load ptr, ptr @WAYLAND_wl_proxy_add_listener, align 8
  %i.ds = call i32 %i.dr(ptr noundef %i.dn, ptr noundef nonnull @show_hide_sync_listener, ptr noundef %i.dq) #15, !inline_history !20 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  ret void
}

declare zeroext i1 @SDL_SetStringProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @Wayland_activate_window(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.thread36

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %.thread, label %.thread36

.thread36:                                        ; preds = %bb.b, %bb.c
  %.039 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread36
  %i.j = phi ptr [ %i.i, %.thread36 ], [ null, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.p = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.n) #15, !inline_history !23
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.o(ptr noundef nonnull %i.n, i32 noundef 4, ptr noundef null, i32 noundef %i.q, i32 noundef 1) #15, !inline_history !23 ; 0 uses
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.u = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.v = tail call i32 %i.u(ptr noundef %i.s) #15, !inline_history !79
  %i.w = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.t(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @xdg_activation_token_v1_interface, i32 noundef %i.v, i32 noundef 0, ptr noundef null) #15, !inline_history !79 ; 2 uses
  store ptr %i.w, ptr %i.m, align 8
  %i.x = load ptr, ptr @WAYLAND_wl_proxy_add_listener, align 8
  %i.y = tail call i32 %i.x(ptr noundef %i.w, ptr noundef nonnull @xdg_activation_listener, ptr noundef nonnull %1) #15, !inline_history !80 ; 0 uses
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.aa = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ab = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ac = tail call i32 %i.ab(ptr noundef %i.z) #15, !inline_history !81
  %i.ad = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.aa(ptr noundef %i.z, i32 noundef 2, ptr noundef null, i32 noundef %i.ac, i32 noundef 0, ptr noundef nonnull %i.j) #15, !inline_history !81 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %or.cond = and i1 %2, %i.c
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ak = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.al = tail call i32 %i.ak(ptr noundef %i.ag) #15, !inline_history !82
  %i.am = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.aj(ptr noundef %i.ag, i32 noundef 0, ptr noundef null, i32 noundef %i.al, i32 noundef 0, i32 noundef %i.ai, ptr noundef nonnull %i.af) #15, !inline_history !82 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.an = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ao = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ap = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.aq = tail call i32 %i.ap(ptr noundef %i.an) #15, !inline_history !83
  %i.ar = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ao(ptr noundef %i.an, i32 noundef 3, ptr noundef null, i32 noundef %i.aq, i32 noundef 0) #15, !inline_history !83 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @Wayland_FlashWindow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.d = load ptr, ptr %i.c, align 8
  tail call fastcc void @Wayland_activate_window(ptr noundef %i.b, ptr noundef %i.d, i1 noundef zeroext false)
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @Wayland_SetWindowFullscreen(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %.thread39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.k = load i8, ptr %i.j, align 8, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = icmp eq i32 %3, 0                        ; 2 uses
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %.thread39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 402
  %i.o = load i8, ptr %i.n, align 2, !range !38, !noundef !39
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @WAYLAND_wl_display_roundtrip, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 %i.q(ptr noundef %i.t) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 399 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !range !38, !noundef !39
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.thread39, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.v, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 267 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !range !38, !noundef !39
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !range !38, !noundef !39
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %i.ac = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 368
  %i.ae = load i32, ptr %i.ad, align 8
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 372
  %i.ag = load i32, ptr %i.af, align 4
  %.not8.i = icmp eq i32 %i.ag, 0
  br i1 %.not8.i, label %FlushPendingEvents.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.g
  %i.ah = load ptr, ptr @WAYLAND_wl_display_roundtrip, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 %i.ah(ptr noundef %i.ak) #15, !inline_history !24 ; 0 uses
  br label %bb.g, !llvm.loop !25

FlushPendingEvents.exit:                          ; preds = %bb.h
  store i8 %i.z, ptr %i.y, align 1
  store i8 %i.ab, ptr %i.aa, align 4
  store i8 0, ptr %i.v, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 397
  %i.an = load i8, ptr %i.am, align 1, !range !38, !noundef !39
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %FlushPendingEvents.exit
  %i.ap = icmp eq i32 %3, 2
  %.mux = select i1 %i.ap, i32 2, i32 1           ; 2 uses
  switch i32 %3, label %.thread [
    i32 2, label %.thread39
    i32 0, label %.thread39
  ]

bb.j:                                             ; preds = %FlushPendingEvents.exit
  br i1 %i.m, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.i, %bb.j
  %i.aq = phi i8 [ 0, %bb.j ], [ 1, %bb.i ]
  %i.ar = xor i1 %i.ao, true
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 401
  store i8 %i.aq, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.au = load i8, ptr %i.at, align 1, !range !38, !noundef !39
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.ax = load i8, ptr %i.aw, align 1, !range !38, !noundef !39
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 158
  %i.ba = load i8, ptr %i.az, align 2, !range !38, !noundef !39
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bd = load i32, ptr %i.bc, align 8
  %.not37 = icmp eq i32 %i.bd, 0
  br i1 %.not37, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i8, ptr %i.y, align 1, !range !38, !noundef !39
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %.thread
  %.0 = phi ptr [ %i.f, %.thread ], [ null, %bb.o ], [ %i.f, %bb.n ], [ %i.f, %bb.m ]
  tail call fastcc void @SetFullscreen(ptr noundef nonnull %1, ptr noundef %.0, i1 noundef zeroext %i.ar)
  br label %.thread39

bb.q:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load i32, ptr %2, align 8
  %.not36 = icmp eq i32 %i.bh, %i.bi
  br i1 %.not36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 401
  store i8 1, ptr %i.bj, align 1
  tail call fastcc void @SetFullscreen(ptr noundef nonnull %1, ptr noundef %i.f, i1 noundef zeroext true)
  br label %.thread39

bb.s:                                             ; preds = %bb.q
  tail call fastcc void @ConfigureWindowGeometry(ptr noundef nonnull %1)
  %.val = load ptr, ptr %i.a, align 8
  tail call fastcc void @CommitLibdecorFrame(ptr %.val)
  br label %.thread39

.thread39:                                        ; preds = %bb.i, %bb.i, %bb.p, %bb.r, %bb.e, %bb.b, %bb.a, %bb.s
  %.035 = phi i32 [ %.mux, %bb.i ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.p ], [ 1, %bb.s ], [ 1, %bb.e ], [ %.mux, %bb.i ], [ 2, %bb.r ]
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SetFullscreen(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load i32, ptr %i.e, align 8
  switch i32 %i.f, label %bb.z [
    i32 3, label %bb.b
    i32 1, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.j = load i8, ptr %i.i, align 1, !range !38, !noundef !39
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 398
  store i8 %i.k, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  br i1 %2, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @SDL_GetVideoDevice() #15  ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, 3
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %Wayland_SetWindowResizable.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @WAYLAND_libdecor_frame_has_capability, align 8
  %i.x = tail call zeroext i1 %i.w(ptr noundef nonnull %i.v, i32 noundef 2) #15, !inline_history !41
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr @WAYLAND_libdecor_frame_set_capabilities, align 8
  %i.z = load ptr, ptr %i.u, align 8
  tail call void %i.y(ptr noundef %i.z, i32 noundef 2) #15, !inline_history !41
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  tail call fastcc void @SetMinMaxDimensions(ptr noundef nonnull readonly %0)
  %.val.i = load ptr, ptr %i.a, align 8           ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 88
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.k, label %Wayland_SetWindowResizable.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %Wayland_SetWindowResizable.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr @WAYLAND_libdecor_state_new, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 312
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 316
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = tail call ptr %i.af(i32 noundef %i.ah, i32 noundef %i.aj) #15, !inline_history !42 ; 2 uses
  %i.al = load ptr, ptr @WAYLAND_libdecor_frame_commit, align 8
  %i.am = load ptr, ptr %i.ad, align 8
  tail call void %i.al(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef null) #15, !inline_history !42
  %i.an = load ptr, ptr @WAYLAND_libdecor_state_free, align 8
  tail call void %i.an(ptr noundef %i.ak) #15, !inline_history !42
  br label %Wayland_SetWindowResizable.exit

Wayland_SetWindowResizable.exit:                  ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ar = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.as = tail call i32 %i.ar(ptr noundef %i.ap) #15, !inline_history !4
  %i.at = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.aq(ptr noundef %i.ap, i32 noundef 6, ptr noundef null, i32 noundef %i.as, i32 noundef 0) #15, !inline_history !4 ; 0 uses
  %i.au = load ptr, ptr @WAYLAND_libdecor_frame_set_fullscreen, align 8
  %i.av = load ptr, ptr %i.g, align 8
  tail call void %i.au(ptr noundef %i.av, ptr noundef %1) #15
  br label %bb.z

bb.m:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr @WAYLAND_libdecor_frame_unset_fullscreen, align 8
  tail call void %i.aw(ptr noundef nonnull %i.h) #15
  br label %bb.z

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.bb = load i8, ptr %i.ba, align 1, !range !38, !noundef !39
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bc = phi i8 [ %i.bb, %bb.p ], [ 0, %bb.o ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 398
  store i8 %i.bc, ptr %i.bd, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8
  br i1 %2, label %bb.r, label %bb.y

end_hunk_0
