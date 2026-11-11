Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11window?download=true
inline.NumInlined: 24
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@X11_GetWindowTitle:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.i = load ptr, ptr @X11_XGetWindowProperty, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  %i.m = load i64, ptr %i.l, align 8
  %i.n = call i32 %i.i(ptr noundef %i.h, i64 noundef %1, i64 noundef %i.k, i64 noundef 0, i64 noundef 8192, i32 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12
  %i.o = icmp eq i32 %i.n, 0
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = icmp ne ptr %i.p, null
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.p) #12
  %i.s = load ptr, ptr @X11_XFree, align 8
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = call i32 %i.s(ptr noundef %i.t) #12      ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = load ptr, ptr @X11_XGetWindowProperty, align 8
  %i.w = call i32 %i.v(ptr noundef %i.h, i64 noundef %1, i64 noundef 39, i64 noundef 0, i64 noundef 8192, i32 noundef 0, i64 noundef 31, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12
  %i.x = icmp eq i32 %i.w, 0
  %i.y = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.z = icmp ne ptr %i.y, null
  %or.cond3 = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.c, align 8
  %i.ab = add i64 %i.aa, 1
  %i.ac = call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.y, i64 noundef %i.ab) #12 ; 2 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.23, ptr noundef %i.ac) #12
  %i.ad = load ptr, ptr @X11_XFree, align 8
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = call i32 %i.ad(ptr noundef %i.ae) #12   ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.24) #12
  %i.ag = call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull @.str.22) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ %i.r, %bb.b ], [ %i.ac, %bb.d ], [ %i.ag, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #3

declare ptr @SDL_iconv_string_REAL(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @SDL_LogDebug_REAL(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @X11_SetWindowTitle(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %spec.select = select i1 %.not, ptr @.str.22, ptr %i.i
  %i.j = tail call zeroext i1 @SDL_X11_SetWindowTitle(ptr noundef %i.g, i64 noundef %i.d, ptr noundef nonnull %spec.select) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_X11_SetWindowTitle(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.XTextProperty, align 8      ; 8 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr @X11_XInternAtom, align 8
  %i.c = tail call i64 %i.b(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.d = load ptr, ptr @X11_XmbTextListToTextProperty, align 8
  %i.e = call i32 %i.d(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %3) #12 ; 3 uses
  %i.f = load ptr, ptr @X11_XSupportsLocale, align 8
  %i.g = call i32 %i.f() #12
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.38) #12
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @X11_XSetTextProperty, align 8
  call void %i.j(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3, i64 noundef 39) #12
  %i.k = load ptr, ptr @X11_XFree, align 8
  %i.l = load ptr, ptr %3, align 8
  %i.m = call i32 %i.k(ptr noundef %i.l) #12      ; 0 uses
  %i.n = load ptr, ptr @X11_Xutf8TextListToTextProperty, align 8
  %i.o = call i32 %i.n(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %3) #12
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.e, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call zeroext i1 @SDL_OutOfMemory_REAL() #12
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.39, i32 noundef %i.e) #12
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @X11_XSetTextProperty, align 8
  call void %i.s(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3, i64 noundef %i.c) #12
  %i.t = load ptr, ptr @X11_XFree, align 8
  %i.u = load ptr, ptr %3, align 8
  %i.v = call i32 %i.t(ptr noundef %i.u) #12      ; 0 uses
  %i.w = load ptr, ptr @X11_XFlush, align 8
  %i.x = call i32 %i.w(ptr noundef %0) #12        ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.40, ptr noundef %i.y) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.f, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.h ], [ %i.z, %bb.i ], [ %i.r, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @X11_SetWindowIcon(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = load ptr, ptr @X11_XFlush, align 8
  %i.i = tail call i32 %i.h(ptr noundef %i.e) #12 ; 0 uses
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = mul nsw i32 %i.m, %i.k
  %i.o = add nsw i32 %i.n, 2                      ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.q) #12 ; 6 uses
  %.not48.not = icmp eq ptr %i.r, null
  br i1 %.not48.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @X11_XSync, align 8
  %i.t = tail call i32 %i.s(ptr noundef %i.e, i32 noundef 0) #12 ; 0 uses
  %i.u = load ptr, ptr @X11_XSetErrorHandler, align 8
  %i.v = tail call ptr %i.u(ptr noundef nonnull @X11_CatchAnyError) #12 ; 2 uses
  %i.w = load i32, ptr %i.j, align 8              ; 3 uses
  %i.x = sext i32 %i.w to i64
  store i64 %i.x, ptr %i.r, align 8
  %i.y = load i32, ptr %i.l, align 4              ; 3 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = icmp sgt i32 %i.y, 0
  br i1 %i.ab, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = icmp sgt i32 %i.w, 0
  br i1 %i.ae, label %.lr.ph59.split.preheader, label %._crit_edge60

.lr.ph59.split.preheader:                         ; preds = %.lr.ph59
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %.lr.ph59.split

.lr.ph59.split:                                   ; preds = %.lr.ph59.split.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.at, %._crit_edge ], [ %i.y, %.lr.ph59.split.preheader ]
  %i.ah = phi i32 [ %i.au, %._crit_edge ], [ %i.w, %.lr.ph59.split.preheader ] ; 2 uses
  %.03657 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.af, %.lr.ph59.split.preheader ] ; 2 uses
  %.03856 = phi i32 [ %i.av, %._crit_edge ], [ 0, %.lr.ph59.split.preheader ] ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph59.split
  %3 = load ptr, ptr %i.ac, align 8
  %4 = load i32, ptr %i.ad, align 8
  %i.aj = mul nsw i32 %4, %.03856
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %3, i64 %i.ak
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.155 = phi ptr [ %i.ap, %.lr.ph ], [ %.03657, %.lr.ph.preheader ] ; 2 uses
  %.03754 = phi ptr [ %i.am, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %.03953 = phi i32 [ %i.aq, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.03754, i64 4
  %i.an = load i32, ptr %.03754, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.155, i64 8 ; 2 uses
  store i64 %i.ao, ptr %.155, align 8
  %i.aq = add nuw nsw i32 %.03953, 1              ; 2 uses
  %i.ar = load i32, ptr %i.j, align 8             ; 2 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.l, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph59.split
  %i.at = phi i32 [ %i.ag, %.lr.ph59.split ], [ %.pre.a, %._crit_edge.loopexit ] ; 2 uses
  %i.au = phi i32 [ %i.ah, %.lr.ph59.split ], [ %i.ar, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.03657, %.lr.ph59.split ], [ %i.ap, %._crit_edge.loopexit ]
  %i.av = add nuw nsw i32 %.03856, 1              ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.at
  br i1 %i.aw, label %.lr.ph59.split, label %._crit_edge60, !llvm.loop !17

._crit_edge60:                                    ; preds = %._crit_edge, %.lr.ph59, %bb.c
  %i.ax = load ptr, ptr @X11_XChangeProperty, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = tail call i32 %i.ax(ptr noundef %i.e, i64 noundef %i.az, i64 noundef %i.g, i64 noundef 6, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.r, i32 noundef %i.o) #12 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.r) #12
  %.b = load i1, ptr @caught_x11_error, align 1
  br i1 %.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge60
  %i.bb = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge60
  %.2 = phi i1 [ %i.bb, %bb.d ], [ true, %._crit_edge60 ] ; 2 uses
  %i.bc = load ptr, ptr @X11_XFlush, align 8
  %i.bd = tail call i32 %i.bc(ptr noundef %i.e) #12 ; 0 uses
  %.not49 = icmp eq ptr %i.v, null
  br i1 %.not49, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr @X11_XSetErrorHandler, align 8
  %i.bf = tail call ptr %i.be(ptr noundef nonnull %i.v) #12 ; 0 uses
  store i1 false, ptr @caught_x11_error, align 1
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.b, %bb.e, %bb.f
  %.145 = phi i1 [ %.2, %bb.e ], [ false, %bb.b ], [ %.2, %bb.f ], [ true, %.thread ]
  ret i1 %.145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @X11_CatchAnyError(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  store i1 true, ptr @caught_x11_error, align 1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @X11_UpdateWindowPosition(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %.in.v = select i1 %1, i64 24, i64 140
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.f = load i32, ptr %.in, align 4
  %.in21.v = select i1 %1, i64 28, i64 144
  %.in21 = getelementptr inbounds nuw i8, ptr %0, i64 %.in21.v
  %i.g = load i32, ptr %.in21, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sub nsw i32 %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sub nsw i32 %i.g, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 476 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  tail call void @SDL_RelativeToGlobalForWindow(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 8
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 545
  store i8 1, ptr %i.t, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = or i32 %i.v, 16
  store i32 %i.w, ptr %i.u, align 8
  %i.x = load ptr, ptr @X11_XMoveWindow, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = load i32, ptr %i.n, align 4
  %i.ab = load i32, ptr %i.o, align 8
  %i.ac = tail call i32 %i.x(ptr noundef %i.e, i64 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @X11_SetWindowPosition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 12
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 267 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !range !7, !noundef !8
  %i.j = tail call zeroext i1 @X11_SyncWindow(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  store i8 %i.g, ptr %i.f, align 1
  store i8 %i.i, ptr %i.h, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = and i64 %i.l, 128
  %.not13 = icmp eq i64 %i.m, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 536
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 1
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %X11_UpdateWindowPosition.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 545
  store i8 1, ptr %i.r, align 1
  br label %X11_UpdateWindowPosition.exit

bb.f:                                             ; preds = %bb.c
  %i.s = and i64 %i.l, 1
  %.not14 = icmp eq i64 %i.s, 0
  br i1 %.not14, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = and i64 %i.l, 786432
  %.not15 = icmp eq i64 %i.t, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @X11_ConstrainPopup(ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 344
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %.in.i = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.y = load i32, ptr %.in.i, align 4
  %.in21.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.z = load i32, ptr %.in21.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub nsw i32 %i.z, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 476 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 480 ; 2 uses
  tail call void @SDL_RelativeToGlobalForWindow(ptr noundef nonnull %1, i32 noundef %i.ac, i32 noundef %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah) #12
  %i.ai = load i64, ptr %i.k, align 8
  %i.aj = and i64 %i.ai, 8
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 545
  store i8 1, ptr %i.al, align 1
  br label %X11_UpdateWindowPosition.exit

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 536 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = or i32 %i.an, 16
  store i32 %i.ao, ptr %i.am, align 8
  %i.ap = load ptr, ptr @X11_XMoveWindow, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.ag, align 4
  %i.at = load i32, ptr %i.ah, align 8
  %i.au = tail call i32 %i.ap(ptr noundef %i.x, i64 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at) #12, !inline_history !19 ; 0 uses
  br label %X11_UpdateWindowPosition.exit

bb.l:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 546
  store i8 1, ptr %i.aw, align 2
  %i.ax = tail call zeroext i1 @SDL_UpdateFullscreenMode(ptr noundef nonnull %1, i32 noundef 2, i1 noundef zeroext true) #12 ; 0 uses
  br label %X11_UpdateWindowPosition.exit

X11_UpdateWindowPosition.exit:                    ; preds = %bb.k, %bb.j, %bb.l, %bb.d, %bb.e
  ret i1 true
}

end_hunk_0
