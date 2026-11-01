Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandwindow?download=true
inline.NumInlined: 248
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Wayland_DestroyWindow:bb.a
  %i.af = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ag = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %i.ae) #15, !inline_history !121
  %i.ai = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.af(ptr noundef nonnull %i.ae, i32 noundef 0, ptr noundef null, i32 noundef %i.ah, i32 noundef 1) #15, !inline_history !121 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not64 = icmp eq ptr %i.ak, null
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.am = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.an = tail call i32 %i.am(ptr noundef nonnull %i.ak) #15, !inline_history !122
  %i.ao = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.al(ptr noundef nonnull %i.ak, i32 noundef 0, ptr noundef null, i32 noundef %i.an, i32 noundef 1) #15, !inline_history !122 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not65 = icmp eq ptr %i.aq, null
  br i1 %.not65, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.as = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.at = tail call i32 %i.as(ptr noundef nonnull %i.aq) #15, !inline_history !123
  %i.au = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ar(ptr noundef nonnull %i.aq, i32 noundef 0, ptr noundef null, i32 noundef %i.at, i32 noundef 1) #15, !inline_history !123 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not66 = icmp eq ptr %i.aw, null
  br i1 %.not66, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ay = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.az = tail call i32 %i.ay(ptr noundef nonnull %i.aw) #15, !inline_history !124
  %i.ba = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ax(ptr noundef nonnull %i.aw, i32 noundef 0, ptr noundef null, i32 noundef %i.az, i32 noundef 1) #15, !inline_history !124 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not67 = icmp eq ptr %i.bc, null
  br i1 %.not67, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void @Wayland_FreeColorInfoState(ptr noundef %i.be) #15
  %i.bf = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bg = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.bh = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.bi = tail call i32 %i.bh(ptr noundef %i.bf) #15, !inline_history !125
  %i.bj = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.bg(ptr noundef %i.bf, i32 noundef 0, ptr noundef null, i32 noundef %i.bi, i32 noundef 1) #15, !inline_history !125 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bl) #15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bn) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not68 = icmp eq ptr %i.bp, null
  br i1 %.not68, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr @WAYLAND_wl_proxy_destroy, align 8
  tail call void %i.bq(ptr noundef nonnull %i.bp) #15, !inline_history !22
  %i.br = load ptr, ptr @WAYLAND_wl_proxy_wrapper_destroy, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.br(ptr noundef %i.bt) #15
  %i.bu = load ptr, ptr @WAYLAND_wl_event_queue_destroy, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bu(ptr noundef %i.bw) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = and i64 %i.by, 2048
  %.not69 = icmp eq i64 %i.bz, 0
  br i1 %.not69, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.cd = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef %i.cb) #15, !inline_history !126
  %i.cf = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.cc(ptr noundef %i.cb, i32 noundef 0, ptr noundef null, i32 noundef %i.ce, i32 noundef 1) #15, !inline_history !126 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @Wayland_RemoveWindowDataFromExternalList(ptr noundef nonnull %i.d) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not70 = icmp eq ptr %i.ch, null
  br i1 %.not70, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.cj = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ck = tail call i32 %i.cj(ptr noundef nonnull %i.ch) #15, !inline_history !30
  %i.cl = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ci(ptr noundef nonnull %i.ch, i32 noundef 0, ptr noundef null, i32 noundef %i.ck, i32 noundef 1) #15, !inline_history !30 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 264 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ad, %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.cr) #15
  store i32 0, ptr %i.cm, align 8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #15
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %i.cs = load ptr, ptr %i.cp, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.cw = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.cx = tail call i32 %i.cw(ptr noundef %i.cu) #15, !inline_history !31
  %i.cy = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.cv(ptr noundef %i.cu, i32 noundef 0, ptr noundef null, i32 noundef %i.cx, i32 noundef 1) #15, !inline_history !31 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load i32, ptr %i.cm, align 8
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.ad, label %._crit_edge, !llvm.loop !127

bb.ae:                                            ; preds = %._crit_edge, %bb.a
  store ptr null, ptr %i.c, align 8
  ret void
}

declare void @Wayland_DisplayRemoveWindowReferencesFromSeats(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_EGL_DestroySurface(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Wayland_FreeColorInfoState(ptr noundef) local_unnamed_addr #2

declare void @Wayland_RemoveWindowDataFromExternalList(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetDisplays_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetDisplayDriverData(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Wayland_HandlePreferredScaleChanged(ptr nofree noundef captures(none) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call double @SDL_ceil_REAL(double noundef %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %1, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = fcmp une double %.0, %i.b
  br i1 %i.f, label %bb.d, label %CommitLibdecorFrame.exit

bb.d:                                             ; preds = %bb.c
  store double %.0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 403 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !38, !noundef !39
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = load i8, ptr %i.j, align 8, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 300
  %2 = load <2 x i32>, ptr %i.m, align 8
  store <2 x i32> %2, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %PixelToPoint.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = sitofp i32 %i.r to double                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 8192
  %.not.i.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 392 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 403
  %i.aa = load i8, ptr %i.z, align 1, !range !38, !noundef !39
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %._crit_edge.i.i, label %GetWindowScale.exit.i

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %i.ad = load double, ptr %i.ac, align 8
  br label %GetWindowScale.exit.i

GetWindowScale.exit.i:                            ; preds = %._crit_edge.i.i, %bb.h
  %i.ae = phi double [ %i.ad, %._crit_edge.i.i ], [ 1.000000e+00, %bb.h ]
  %i.af = fdiv double %i.t, %i.ae
  %i.ag = tail call i64 @SDL_lround_REAL(double noundef %i.af) #15
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.i, label %PixelToPoint.exit

bb.i:                                             ; preds = %GetWindowScale.exit.i
  %i.aj = load i64, ptr %i.u, align 8
  %i.ak = and i64 %i.aj, 8192
  %.not.i4.i = icmp eq i64 %i.ak, 0
  %i.al = load ptr, ptr %i.x, align 8             ; 2 uses
  br i1 %.not.i4.i, label %bb.j, label %._crit_edge.i5.i

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 403
  %i.an = load i8, ptr %i.am, align 1, !range !38, !noundef !39
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %._crit_edge.i5.i, label %GetWindowScale.exit6.i

._crit_edge.i5.i:                                 ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.aq = load double, ptr %i.ap, align 8
  br label %GetWindowScale.exit6.i

GetWindowScale.exit6.i:                           ; preds = %._crit_edge.i5.i, %bb.j
  %i.ar = phi double [ %i.aq, %._crit_edge.i5.i ], [ 1.000000e+00, %bb.j ]
  %i.as = fdiv double %i.t, %i.ar
  %i.at = tail call i64 @SDL_lround_REAL(double noundef %i.as) #15
  %i.au = trunc i64 %i.at to i32
  br label %PixelToPoint.exit

PixelToPoint.exit:                                ; preds = %bb.f, %GetWindowScale.exit.i, %GetWindowScale.exit6.i
  %i.av = phi i32 [ 1, %GetWindowScale.exit.i ], [ %i.au, %GetWindowScale.exit6.i ], [ 0, %bb.f ]
  store i32 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %.not.i30 = icmp eq i32 %i.ax, 0
  br i1 %.not.i30, label %PixelToPoint.exit37, label %bb.k

bb.k:                                             ; preds = %PixelToPoint.exit
  %i.ay = load ptr, ptr %0, align 8               ; 2 uses
  %i.az = sitofp i32 %i.ax to double              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 72 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, 8192
  %.not.i.i31 = icmp eq i64 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 392 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  br i1 %.not.i.i31, label %bb.l, label %._crit_edge.i.i32

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 403
  %i.bg = load i8, ptr %i.bf, align 1, !range !38, !noundef !39
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._crit_edge.i.i32, label %GetWindowScale.exit.i33

._crit_edge.i.i32:                                ; preds = %bb.l, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %i.bj = load double, ptr %i.bi, align 8
  br label %GetWindowScale.exit.i33

GetWindowScale.exit.i33:                          ; preds = %._crit_edge.i.i32, %bb.l
  %i.bk = phi double [ %i.bj, %._crit_edge.i.i32 ], [ 1.000000e+00, %bb.l ]
  %i.bl = fdiv double %i.az, %i.bk
  %i.bm = tail call i64 @SDL_lround_REAL(double noundef %i.bl) #15
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.m, label %PixelToPoint.exit37

bb.m:                                             ; preds = %GetWindowScale.exit.i33
  %i.bp = load i64, ptr %i.ba, align 8
  %i.bq = and i64 %i.bp, 8192
  %.not.i4.i34 = icmp eq i64 %i.bq, 0
  %i.br = load ptr, ptr %i.bd, align 8            ; 2 uses
  br i1 %.not.i4.i34, label %bb.n, label %._crit_edge.i5.i35

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 403
  %i.bt = load i8, ptr %i.bs, align 1, !range !38, !noundef !39
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %._crit_edge.i5.i35, label %GetWindowScale.exit6.i36

._crit_edge.i5.i35:                               ; preds = %bb.n, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 248
  %i.bw = load double, ptr %i.bv, align 8
  br label %GetWindowScale.exit6.i36

GetWindowScale.exit6.i36:                         ; preds = %._crit_edge.i5.i35, %bb.n
  %i.bx = phi double [ %i.bw, %._crit_edge.i5.i35 ], [ 1.000000e+00, %bb.n ]
  %i.by = fdiv double %i.az, %i.bx
  %i.bz = tail call i64 @SDL_lround_REAL(double noundef %i.by) #15
  %i.ca = trunc i64 %i.bz to i32
  br label %PixelToPoint.exit37

PixelToPoint.exit37:                              ; preds = %PixelToPoint.exit, %GetWindowScale.exit.i33, %GetWindowScale.exit6.i36
  %i.cb = phi i32 [ 1, %GetWindowScale.exit.i33 ], [ %i.ca, %GetWindowScale.exit6.i36 ], [ 0, %PixelToPoint.exit ]
  store i32 %i.cb, ptr %i.p, align 4
  br label %bb.x

bb.o:                                             ; preds = %bb.e
  %.not.i38 = icmp eq i32 %i.n, 0
  br i1 %.not.i38, label %PointToPixel.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %0, align 8               ; 2 uses
  %i.cd = sitofp i32 %i.n to double               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 72 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i.i39 = icmp eq i64 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 392 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  br i1 %.not.i.i39, label %bb.q, label %._crit_edge.i.i40

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 403
  %i.ck = load i8, ptr %i.cj, align 1, !range !38, !noundef !39
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %._crit_edge.i.i40, label %GetWindowScale.exit.i41

._crit_edge.i.i40:                                ; preds = %bb.q, %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 248
  %i.cn = load double, ptr %i.cm, align 8
  br label %GetWindowScale.exit.i41

GetWindowScale.exit.i41:                          ; preds = %._crit_edge.i.i40, %bb.q
  %i.co = phi double [ %i.cn, %._crit_edge.i.i40 ], [ 1.000000e+00, %bb.q ]
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.co, double f0x3EB0C6F7A0B5ED8D)
  %i.cq = tail call i64 @SDL_lround_REAL(double noundef %i.cp) #15
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.r, label %PointToPixel.exit

bb.r:                                             ; preds = %GetWindowScale.exit.i41
  %i.ct = load i64, ptr %i.ce, align 8
  %i.cu = and i64 %i.ct, 8192
  %.not.i4.i42 = icmp eq i64 %i.cu, 0
  %i.cv = load ptr, ptr %i.ch, align 8            ; 2 uses
  br i1 %.not.i4.i42, label %bb.s, label %._crit_edge.i5.i43

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 403
  %i.cx = load i8, ptr %i.cw, align 1, !range !38, !noundef !39
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %._crit_edge.i5.i43, label %GetWindowScale.exit6.i44

._crit_edge.i5.i43:                               ; preds = %bb.s, %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 248
  %i.da = load double, ptr %i.cz, align 8
  br label %GetWindowScale.exit6.i44

GetWindowScale.exit6.i44:                         ; preds = %._crit_edge.i5.i43, %bb.s
  %i.db = phi double [ %i.da, %._crit_edge.i5.i43 ], [ 1.000000e+00, %bb.s ]
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.db, double f0x3EB0C6F7A0B5ED8D)
  %i.dd = tail call i64 @SDL_lround_REAL(double noundef %i.dc) #15
  %i.de = trunc i64 %i.dd to i32
  br label %PointToPixel.exit

PointToPixel.exit:                                ; preds = %bb.o, %GetWindowScale.exit.i41, %GetWindowScale.exit6.i44
  %i.df = phi i32 [ 1, %GetWindowScale.exit.i41 ], [ %i.de, %GetWindowScale.exit6.i44 ], [ 0, %bb.o ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.di = load i32, ptr %i.dh, align 4            ; 2 uses
  %.not.i45 = icmp eq i32 %i.di, 0
  br i1 %.not.i45, label %PointToPixel.exit52, label %bb.t

bb.t:                                             ; preds = %PointToPixel.exit
  %i.dj = load ptr, ptr %0, align 8               ; 2 uses
  %i.dk = sitofp i32 %i.di to double              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 2 uses
end_hunk_0
