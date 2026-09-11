Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandvideo?download=true
inline.NumInlined: 108
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Wayland_InitColorManager:bb.a

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
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi i32 [ %.pre36, %bb.e ], [ %5, %bb.d ], [ %5, %bb.c ]
  %i.o = phi i32 [ %.pre, %bb.e ], [ %4, %bb.d ], [ %4, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %9, ptr %i.p, align 8
  %i.q = icmp ult i32 %9, 8
  br i1 %i.q, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f
  %.not35 = icmp slt i32 %i.o, %i.n
  %switch.table.handle_wl_output_geometry.6.switch.table.handle_wl_output_geometry = select i1 %.not35, ptr @switch.table.handle_wl_output_geometry.6, ptr @switch.table.handle_wl_output_geometry
  %i.r = zext nneg i32 %9 to i64
  %switch.gep39 = getelementptr inbounds nuw i8, ptr %switch.table.handle_wl_output_geometry.6.switch.table.handle_wl_output_geometry, i64 %i.r
  %switch.load40 = load i8, ptr %switch.gep39, align 1
  %switch.ext41 = zext i8 %switch.load40 to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %switch.ext41, ptr %i.s, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.sink.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @handle_wl_output_mode(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.e = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %4, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %5, ptr %i.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handle_wl_output_done(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.SDL_DisplayMode, align 8    ; 10 uses
  %3 = alloca %struct.SDL_DisplayMode, align 8    ; 9 uses
  %4 = alloca %struct.SDL_DisplayMode, align 8    ; 12 uses
  %i.a = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.47, i1 noundef zeroext true) #13
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  %i.e = select i1 %.not, i32 1, i32 2            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %. = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.e)
  %i.h = add nsw i32 %., 1                        ; 2 uses
  store i32 %i.h, ptr %i.f, align 8
  %i.i = icmp slt i32 %i.h, %i.e
  br i1 %i.i, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call ptr @SDL_GetVideoDisplay(i32 noundef %i.k) #13 ; 2 uses
  %.not93 = icmp eq ptr %i.l, null
  br i1 %.not93, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_ResetFullscreenDisplayModes(ptr noundef nonnull %i.l) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 370546692, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 1
  %.not94 = icmp eq i32 %i.p, 0                   ; 2 uses
  %.125 = select i1 %.not94, i64 60, i64 64
  %.126 = select i1 %.not94, i64 64, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.125
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.126
  %i.s = load i32, ptr %i.r, align 4              ; 5 uses
  %i.t = load i32, ptr %i.q, align 4              ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 %i.s, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1000, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ab = load i8, ptr %i.aa, align 1, !range !8, !noundef !9
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 5 uses
  %.not95 = icmp eq i32 %i.t, %i.ae
  br i1 %.not95, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %.not96 = icmp eq i32 %i.s, %i.ag
  br i1 %.not96, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not97 = icmp eq ptr %i.ai, null
  br i1 %.not97, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sitofp i32 %i.t to double
  %i.ak = sitofp i32 %i.ae to double
  %i.al = fdiv double %i.aj, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.al, ptr %i.am, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load double, ptr %i.an, align 8         ; 2 uses
  %i.ap = fptosi double %i.ao to i32              ; 2 uses
  %i.aq = mul nsw i32 %i.ae, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8
  %i.au = mul nsw i32 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.au, ptr %i.av, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %5 = sdiv i32 %i.t, %i.ay                       ; 2 uses
  store i32 %5, ptr %i.ad, align 4
  %6 = sdiv i32 %i.s, %i.ay
  store i32 %6, ptr %i.af, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load double, ptr %i.az, align 8         ; 2 uses
  %i.bb = fptosi double %i.ba to i32              ; 2 uses
  %7 = sdiv i32 %i.t, %i.bb                       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %7, ptr %8, align 4
  %9 = sdiv i32 %i.s, %i.bb
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %9, ptr %10, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.k
  %i.bc = phi double [ %i.ax, %bb.j ], [ %i.ao, %bb.i ], [ %i.al, %bb.h ], [ %i.ba, %bb.k ]
  %i.bd = phi i32 [ %5, %bb.j ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ], [ %7, %bb.k ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 370546692, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 323 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !range !8, !noundef !9 ; 2 uses
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = fptrunc double %i.bc to float
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sink110 = phi i32 [ %i.bd, %bb.m ], [ %i.t, %bb.l ]
  %.sink109 = phi i32 [ %i.bj, %bb.m ], [ %i.s, %bb.l ]
  %.sink108 = phi float [ %i.bk, %bb.m ], [ 1.000000e+00, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %.sink110, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 %.sink109, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store float %.sink108, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.x, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 1000, ptr %i.bp, align 4
  %i.bq = load i32, ptr %i.j, align 4             ; 2 uses
  %.not98 = icmp eq i32 %i.bq, 0
  br i1 %.not98, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = tail call ptr @SDL_GetVideoDisplay(i32 noundef %i.bq) #13
  %.pre = load i8, ptr %i.bf, align 1, !range !8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bt = phi i8 [ %.pre, %bb.o ], [ %i.bg, %bb.p ]
  %.087 = phi ptr [ %i.br, %bb.o ], [ %i.bs, %bb.p ] ; 6 uses
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load double, ptr %i.bv, align 8
  %i.bx = fptrunc double %i.bw to float
  tail call void @SDL_SetDisplayContentScale(ptr noundef %.087, float noundef %i.bx) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @SDL_SetDesktopDisplayMode(ptr noundef %.087, ptr noundef nonnull %4) #13
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load double, ptr %i.by, align 8         ; 2 uses
  %i.ca = fcmp oeq double %i.bz, 1.000000e+00
  br i1 %i.ca, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not99 = icmp eq ptr %i.cc, null
  br i1 %.not99, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = call zeroext i1 @SDL_AddFullscreenDisplayMode(ptr noundef %.087, ptr noundef nonnull %3) #13 ; 0 uses
  %i.ce = load i32, ptr %i.u, align 8
  %i.cf = load i32, ptr %i.bl, align 8
  %.not100 = icmp eq i32 %i.ce, %i.cf
  br i1 %.not100, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = load i32, ptr %i.v, align 4
  %i.ch = load i32, ptr %i.bm, align 4
  %.not101 = icmp eq i32 %i.cg, %i.ch
  br i1 %.not101, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = call zeroext i1 @SDL_AddFullscreenDisplayMode(ptr noundef %.087, ptr noundef nonnull %4) #13 ; 0 uses
  br label %.loopexit

bb.x:                                             ; preds = %bb.t
  store float 1.000000e+00, ptr %i.bn, align 8
  %i.cj = fptosi double %i.bz to i32              ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.0105 = phi i32 [ %i.cj, %.lr.ph ], [ %i.cs, %bb.y ] ; 4 uses
  %i.cn = load i32, ptr %i.cl, align 4
  %i.co = mul nsw i32 %i.cn, %.0105
  store i32 %i.co, ptr %i.bl, align 8
  %i.cp = load i32, ptr %i.cm, align 8
  %i.cq = mul nsw i32 %i.cp, %.0105
  store i32 %i.cq, ptr %i.bm, align 4
  %i.cr = call zeroext i1 @SDL_AddFullscreenDisplayMode(ptr noundef %.087, ptr noundef nonnull %4) #13 ; 0 uses
  %i.cs = add nsw i32 %.0105, -1
  %i.ct = icmp samesign ugt i32 %.0105, 1
  br i1 %i.ct, label %bb.y, label %.loopexit, !llvm.loop !83

.loopexit:                                        ; preds = %bb.y, %bb.x, %bb.v, %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = icmp ne ptr %i.cv, null
  %or.cond = select i1 %i.cw, i1 %i.a, i1 false
  %.pre113 = load i32, ptr %i.j, align 4          ; 3 uses
  br i1 %or.cond, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %.loopexit
  %i.cx = load i32, ptr %i.u, align 8             ; 5 uses
  %i.cy = load i32, ptr %i.v, align 4             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %.not.i = icmp eq i32 %.pre113, 0
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = call ptr @SDL_GetVideoDisplay(i32 noundef %.pre113) #13
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.db = phi ptr [ %i.cz, %bb.aa ], [ %i.da, %bb.ab ] ; 4 uses
  %i.dc = icmp slt i32 %i.cx, %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 36 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br i1 %i.dc, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.ac, %bb.ae
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.dj = load i32, ptr %i.dd, align 4
  store i32 %i.dj, ptr %i.de, align 4
  %i.dk = load <2 x i32>, ptr %i.df, align 8
  store <2 x i32> %i.dk, ptr %i.dg, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @__const.AddEmulatedModes.mode_list, i64 %indvars.iv38.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4            ; 3 uses
  store i32 %i.dn, ptr %i.dh, align 8
  %i.do = load i32, ptr %i.dl, align 8            ; 3 uses
  store i32 %i.do, ptr %i.di, align 4
  %i.dp = icmp slt i32 %i.dn, %i.cx
  %i.dq = icmp slt i32 %i.do, %i.cy
  %i.dr = icmp sle i32 %i.do, %i.cy
  %or.cond31.us.i = select i1 %i.dp, i1 %i.dr, i1 false
  %i.ds = icmp eq i32 %i.dn, %i.cx
  %or.cond30.us.i = select i1 %i.ds, i1 %i.dq, i1 false
  %or.cond32.us.i = select i1 %or.cond31.us.i, i1 true, i1 %or.cond30.us.i
  br i1 %or.cond32.us.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.split.us.i
  %i.dt = call zeroext i1 @SDL_AddFullscreenDisplayMode(ptr noundef nonnull %i.db, ptr noundef nonnull %2) #13 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.i
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, 31
  br i1 %exitcond41.not.i, label %AddEmulatedModes.exit, label %.split.us.i, !llvm.loop !84

.split.i:                                         ; preds = %bb.ac, %bb.ag
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ag ], [ 0, %bb.ac ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.du = load i32, ptr %i.dd, align 4
  store i32 %i.du, ptr %i.de, align 4
  %i.dv = load <2 x i32>, ptr %i.df, align 8
  store <2 x i32> %i.dv, ptr %i.dg, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @__const.AddEmulatedModes.mode_list, i64 %indvars.iv.i ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8            ; 3 uses
  store i32 %i.dx, ptr %i.dh, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i32, ptr %i.dy, align 4            ; 3 uses
  store i32 %i.dz, ptr %i.di, align 4
  %i.ea = icmp slt i32 %i.dx, %i.cx
  %i.eb = icmp slt i32 %i.dz, %i.cy
  %i.ec = icmp sle i32 %i.dz, %i.cy
  %or.cond31.i = select i1 %i.ea, i1 %i.ec, i1 false
  %i.ed = icmp eq i32 %i.dx, %i.cx
  %or.cond30.i = select i1 %i.ed, i1 %i.eb, i1 false
  %or.cond32.i = select i1 %or.cond31.i, i1 true, i1 %or.cond30.i
  br i1 %or.cond32.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split.i
  %i.ee = call zeroext i1 @SDL_AddFullscreenDisplayMode(ptr noundef nonnull %i.db, ptr noundef nonnull %2) #13 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.split.i
end_hunk_0
