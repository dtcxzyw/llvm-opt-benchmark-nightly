Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_video?download=true
inline.NumInlined: 254
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_CheckWindowDisplayChanged:bb.a
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.d, %i.am
  br i1 %i.an, label %.loopexit.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.m, %.preheader.i
  %i.ao = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #19 ; 0 uses
  br label %SDL_GetDisplayIndex.exit

.loopexit.loopexit.i:                             ; preds = %bb.l
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %SDL_GetDisplayIndex.exit

SDL_GetDisplayIndex.exit:                         ; preds = %bb.k, %._crit_edge.i, %.loopexit.loopexit.i
  %.06.i = phi i32 [ -1, %bb.k ], [ -1, %._crit_edge.i ], [ %i.ap, %.loopexit.loopexit.i ] ; 3 uses
  %i.aq = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 808
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %SDL_GetDisplayIndex.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 816
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %i.az, %0
  br i1 %i.ba, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %.not47 = icmp eq i32 %.06.i, %i.bc
  %i.bd = icmp slt i32 %.06.i, 0
  %or.cond52 = or i1 %i.bd, %.not47
  br i1 %or.cond52, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = zext nneg i32 %.06.i to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 104 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not48 = icmp eq ptr %i.bi, null
  %.not49 = icmp eq ptr %i.bi, %0
  %or.cond = or i1 %.not48, %.not49
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = call zeroext i1 @SDL_MinimizeWindow_REAL(ptr noundef nonnull %i.bi) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %0, ptr %i.bh, align 8
  store ptr null, ptr %i.bb, align 8
  br label %.thread

bb.s:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.n, !llvm.loop !30

.thread:                                          ; preds = %bb.s, %SDL_GetDisplayIndex.exit, %bb.r, %bb.o
  %i.bk = call zeroext i1 @SDL_SendWindowEvent(ptr noundef %0, i32 noundef 531, i32 noundef %i.d, i32 noundef 0) #19 ; 0 uses
  br label %.thread69

.thread69:                                        ; preds = %bb.b, %bb.h, %.thread, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnDisplayMoved(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_UpdateDesktopBounds()
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_DelVideoDisplay(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.f = load ptr, ptr %i.e, align 8
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetDisplayIndex.exit.thread

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8              ; 13 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %0, %i.j
  br i1 %i.k, label %SDL_GetDisplayIndex.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #19 ; 0 uses
  br label %SDL_GetDisplayIndex.exit.thread

SDL_GetDisplayIndex.exit:                         ; preds = %bb.c
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_GetDisplayIndex.exit
  tail call void @SDL_SendDisplayEvent(ptr noundef nonnull %i.i, i32 noundef 339, i32 noundef 0, i32 noundef 0) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %SDL_GetDisplayIndex.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.o = load i32, ptr %i.n, align 8
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.q) #19
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %.not11.i = icmp eq i32 %i.s, 0
  br i1 %.not11.i, label %SDL_ResetFullscreenDisplayModes.exit, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.u = sext i32 %i.s to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i16
  %indvars.iv.i17 = phi i64 [ %i.u, %.lr.ph.i16 ], [ %indvars.iv.next.i18, %bb.g ]
  %indvars.iv.next.i18 = add nsw i64 %indvars.iv.i17, -1 ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds [40 x i8], ptr %i.v, i64 %indvars.iv.next.i18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.y) #19
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = getelementptr inbounds [40 x i8], ptr %i.z, i64 %indvars.iv.next.i18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.ab, align 8
  %.not.i19 = icmp eq i64 %indvars.iv.next.i18, 0
  br i1 %.not.i19, label %SDL_ResetFullscreenDisplayModes.exit, label %bb.g, !llvm.loop !2

SDL_ResetFullscreenDisplayModes.exit:             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ad) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ai) #19
  store ptr null, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ak) #19
  store ptr null, ptr %i.aj, align 8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.i) #19
  %i.al = load ptr, ptr @_this, align 8           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 808 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.m
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %SDL_ResetFullscreenDisplayModes.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 816
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = xor i32 %i.m, -1
  %i.av = add nsw i32 %i.an, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.as, ptr nonnull align 8 %i.at, i64 %i.ax, i1 false)
  %.pre = load i32, ptr %i.am, align 8
  %.pre24 = add nsw i32 %.pre, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %SDL_ResetFullscreenDisplayModes.exit
  %.pre-phi = phi i32 [ %.pre24, %bb.h ], [ %i.ao, %SDL_ResetFullscreenDisplayModes.exit ]
  store i32 %.pre-phi, ptr %i.am, align 8
  tail call void @SDL_UpdateDesktopBounds()
  br label %SDL_GetDisplayIndex.exit.thread

SDL_GetDisplayIndex.exit.thread:                  ; preds = %._crit_edge.i, %bb.b, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @SDL_GetDisplayIndex(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.f = load ptr, ptr %i.e, align 8
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %0, %i.j
  br i1 %i.k, label %.loopexit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #19 ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.c
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge, %bb.b
  %.06 = phi i32 [ -1, %bb.b ], [ -1, %._crit_edge ], [ %i.m, %.loopexit.loopexit ]
  ret i32 %.06
}

declare void @SDL_DestroyProperties_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_ResetFullscreenDisplayModes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds [40 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.h) #19
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds [40 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.k, align 8
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_GetVideoDisplay(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %SDL_GetDisplayIndex.exit.thread.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %SDL_GetDisplayIndex.exit.thread.sink.split

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.f = load ptr, ptr %i.e, align 8
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %0, %i.i
  br i1 %i.j, label %SDL_GetDisplayIndex.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetDisplayIndex.exit.thread.sink.split, label %bb.b, !llvm.loop !1

SDL_GetDisplayIndex.exit.thread.sink.split:       ; preds = %bb.c, %.preheader.i, %bb.a
  %.str.12.sink = phi ptr [ @.str.1, %bb.a ], [ @.str.12, %.preheader.i ], [ @.str.12, %bb.c ]
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.12.sink) #19 ; 0 uses
  br label %SDL_GetDisplayIndex.exit.thread

SDL_GetDisplayIndex.exit.thread:                  ; preds = %bb.b, %SDL_GetDisplayIndex.exit.thread.sink.split
  %.0 = phi ptr [ null, %SDL_GetDisplayIndex.exit.thread.sink.split ], [ %i.h, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_GetVideoDisplayForWindow(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SDL_GetDisplayForWindow_REAL(ptr noundef %0)
  %i.b = load ptr, ptr @_this, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %SDL_GetDisplayIndex.exit.thread.sink.split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i, label %SDL_GetDisplayIndex.exit.thread.sink.split.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.g = load ptr, ptr %i.f, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.a, %i.j
  br i1 %i.k, label %SDL_GetVideoDisplay.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %SDL_GetDisplayIndex.exit.thread.sink.split.i, label %bb.b, !llvm.loop !1

SDL_GetDisplayIndex.exit.thread.sink.split.i:     ; preds = %bb.c, %.preheader.i.i, %bb.a
  %.str.12.sink.i = phi ptr [ @.str.1, %bb.a ], [ @.str.12, %.preheader.i.i ], [ @.str.12, %bb.c ]
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.12.sink.i) #19 ; 0 uses
  br label %SDL_GetVideoDisplay.exit

SDL_GetVideoDisplay.exit:                         ; preds = %bb.b, %SDL_GetDisplayIndex.exit.thread.sink.split.i
  %.0.i = phi ptr [ null, %SDL_GetDisplayIndex.exit.thread.sink.split.i ], [ %i.i, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetDisplayForWindow_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_0
