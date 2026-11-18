Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_touch?download=true
inline.NumInlined: 57
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SDL_GetTouchDeviceName_REAL:bb.a
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, %0
  br i1 %i.j, label %SDL_GetTouch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %SDL_GetTouchIndex.exit.thread.i, label %bb.b, !llvm.loop !0

SDL_GetTouchIndex.exit.thread.i:                  ; preds = %bb.c, %bb.a
  %or.cond.i = icmp ugt i64 %0, -3
  br i1 %or.cond.i, label %SDL_GetTouch.exit.thread, label %bb.d

bb.d:                                             ; preds = %SDL_GetTouchIndex.exit.thread.i
  %i.k = tail call ptr @SDL_GetVideoDevice() #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %.not11.i = icmp eq ptr %i.m, null
  %i.n = trunc i64 %0 to i32                      ; 2 uses
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, i32 noundef %i.n) #5 ; 0 uses
  %i.p = tail call ptr @SDL_GetVideoDevice() #5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @SDL_GetVideoDevice() #5
  tail call void %i.r(ptr noundef %i.s) #5, !inline_history !6
  br label %SDL_GetTouch.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1, i32 noundef %i.n) #5 ; 0 uses
  br label %SDL_GetTouch.exit.thread

SDL_GetTouch.exit:                                ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @SDL_GetPersistentString(ptr noundef %i.v) #5
  br label %SDL_GetTouch.exit.thread

SDL_GetTouch.exit.thread:                         ; preds = %bb.f, %bb.e, %SDL_GetTouchIndex.exit.thread.i, %SDL_GetTouch.exit
  %.0 = phi ptr [ %i.w, %SDL_GetTouch.exit ], [ null, %SDL_GetTouchIndex.exit.thread.i ], [ null, %bb.e ], [ null, %bb.f ]
  %i.x = load i32, ptr @SDL_touch_locked, align 4
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr @SDL_touch_locked, align 4
  %i.z = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.z) #5
  ret ptr %.0
}

declare ptr @SDL_GetPersistentString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetTouchDeviceType_REAL(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.a) #5
  %i.b = load i32, ptr @SDL_touch_locked, align 4
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @SDL_touch_locked, align 4
  %i.d = load i32, ptr @SDL_num_touch, align 4    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i, label %SDL_GetTouchIndex.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = load ptr, ptr @SDL_touchDevices, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, %0
  br i1 %i.j, label %SDL_GetTouch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %SDL_GetTouchIndex.exit.thread.i, label %bb.b, !llvm.loop !0

SDL_GetTouchIndex.exit.thread.i:                  ; preds = %bb.c, %bb.a
  %or.cond.i = icmp ugt i64 %0, -3
  br i1 %or.cond.i, label %SDL_GetTouch.exit.thread, label %bb.d

bb.d:                                             ; preds = %SDL_GetTouchIndex.exit.thread.i
  %i.k = tail call ptr @SDL_GetVideoDevice() #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %.not11.i = icmp eq ptr %i.m, null
  %i.n = trunc i64 %0 to i32                      ; 2 uses
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, i32 noundef %i.n) #5 ; 0 uses
  %i.p = tail call ptr @SDL_GetVideoDevice() #5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @SDL_GetVideoDevice() #5
  tail call void %i.r(ptr noundef %i.s) #5, !inline_history !6
  br label %SDL_GetTouch.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1, i32 noundef %i.n) #5 ; 0 uses
  br label %SDL_GetTouch.exit.thread

SDL_GetTouch.exit:                                ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load i32, ptr %i.u, align 8
  br label %SDL_GetTouch.exit.thread

SDL_GetTouch.exit.thread:                         ; preds = %bb.f, %bb.e, %SDL_GetTouchIndex.exit.thread.i, %SDL_GetTouch.exit
  %.0 = phi i32 [ %i.v, %SDL_GetTouch.exit ], [ -1, %SDL_GetTouchIndex.exit.thread.i ], [ -1, %bb.e ], [ -1, %bb.f ]
  %i.w = load i32, ptr @SDL_touch_locked, align 4
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr @SDL_touch_locked, align 4
  %i.y = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.y) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetTouchFingers_REAL(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.a) #5
  %i.b = load i32, ptr @SDL_touch_locked, align 4
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @SDL_touch_locked, align 4
  %i.d = load i32, ptr @SDL_num_touch, align 4    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i, label %SDL_GetTouchIndex.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = load ptr, ptr @SDL_touchDevices, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, %0
  br i1 %i.j, label %SDL_GetTouch.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %SDL_GetTouchIndex.exit.thread.i, label %bb.d, !llvm.loop !0

SDL_GetTouchIndex.exit.thread.i:                  ; preds = %bb.e, %bb.c
  %or.cond.i = icmp ugt i64 %0, -3
  br i1 %or.cond.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %SDL_GetTouchIndex.exit.thread.i
  %i.k = tail call ptr @SDL_GetVideoDevice() #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %.not11.i = icmp eq ptr %i.m, null
  %i.n = trunc i64 %0 to i32                      ; 2 uses
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, i32 noundef %i.n) #5 ; 0 uses
  %i.p = tail call ptr @SDL_GetVideoDevice() #5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @SDL_GetVideoDevice() #5
  tail call void %i.r(ptr noundef %i.s) #5, !inline_history !6
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1, i32 noundef %i.n) #5 ; 0 uses
  br label %bb.l

SDL_GetTouch.exit:                                ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = sext i32 %i.v to i64
  %i.aa = mul nsw i64 %i.z, 24
  %i.ab = add nsw i64 %i.y, %i.aa
  %i.ac = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ab) #5 ; 7 uses
  %.not37 = icmp eq ptr %i.ac, null
  br i1 %.not37, label %bb.l, label %bb.i

bb.i:                                             ; preds = %SDL_GetTouch.exit
  %i.ad = load i32, ptr %i.u, align 4             ; 6 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8      ; 3 uses
  %i.ah = icmp sgt i32 %i.ad, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.pre = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.aj = icmp eq i32 %i.ad, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ae, 2147483646
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %2 = and i32 %i.ad, 1
  %lcmp.mod.not = icmp eq i32 %2, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod58 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv.epil.init ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.epil.init
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.i
  store ptr null, ptr %i.af, align 8
  br i1 %.not, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv.next ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.av = load ptr, ptr %i.au, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.j, !llvm.loop !12

bb.k:                                             ; preds = %._crit_edge
  store i32 %i.ad, ptr %1, align 4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %SDL_GetTouch.exit, %bb.h, %bb.g, %SDL_GetTouchIndex.exit.thread.i
  %.1 = phi ptr [ null, %SDL_GetTouch.exit ], [ null, %bb.h ], [ null, %SDL_GetTouchIndex.exit.thread.i ], [ null, %bb.g ], [ %i.ac, %bb.k ], [ %i.ac, %._crit_edge ]
  %i.aw = load i32, ptr @SDL_touch_locked, align 4
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr @SDL_touch_locked, align 4
  %i.ay = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ay) #5
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_AddTouch(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.a) #5
  %i.b = load i32, ptr @SDL_touch_locked, align 4 ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @SDL_touch_locked, align 4
  %i.d = load i32, ptr @SDL_num_touch, align 4    ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  %.pre = load ptr, ptr @SDL_touchDevices, align 8 ; 2 uses
  br i1 %i.e, label %.lr.ph.i, label %SDL_GetTouchIndex.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, %0
  br i1 %i.i, label %SDL_GetTouchIndex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetTouchIndex.exit.thread, label %bb.b, !llvm.loop !0

SDL_GetTouchIndex.exit:                           ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.h

SDL_GetTouchIndex.exit.thread:                    ; preds = %bb.c, %bb.a
  %i.k = add nsw i32 %i.d, 1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre, i64 noundef %i.m) #6 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %SDL_GetTouchIndex.exit.thread
  %i.o = load i32, ptr @SDL_touch_locked, align 4
  %i.p = add nsw i32 %i.o, -1
  br label %bb.h

bb.e:                                             ; preds = %SDL_GetTouchIndex.exit.thread
  store ptr %i.n, ptr @SDL_touchDevices, align 8
  %i.q = load i32, ptr @SDL_num_touch, align 4    ; 2 uses
  %i.r = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 40) #5 ; 7 uses
  %i.s = load ptr, ptr @SDL_touchDevices, align 8
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %.not20 = icmp eq ptr %i.r, null
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr @SDL_touch_locked, align 4
  %i.w = add nsw i32 %i.v, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr @SDL_num_touch, align 4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr @SDL_num_touch, align 4
  store i64 %0, ptr %i.r, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr null, ptr %i.ac, align 8
  %.not21 = icmp eq ptr %2, null
  %i.ad = select i1 %.not21, ptr @.str.2, ptr %2
  %i.ae = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.ad) #5
  %i.af = load ptr, ptr @SDL_touchDevices, align 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.t
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.ae, ptr %i.ai, align 8
  %i.aj = load i32, ptr @SDL_touch_locked, align 4
  %i.ak = add nsw i32 %i.aj, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %SDL_GetTouchIndex.exit
  %.sink = phi i32 [ %i.ak, %bb.g ], [ %i.w, %bb.f ], [ %i.p, %bb.d ], [ %i.b, %SDL_GetTouchIndex.exit ]
  %.0 = phi i32 [ %i.q, %bb.g ], [ -1, %bb.f ], [ -1, %bb.d ], [ %i.j, %SDL_GetTouchIndex.exit ]
  store i32 %.sink, ptr @SDL_touch_locked, align 4
  %i.al = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.al) #5
  ret i32 %.0
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_SendTouch(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %union.SDL_Event, align 8           ; 12 uses
  %9 = alloca %union.SDL_Event, align 8           ; 12 uses
  %i.a = icmp eq i32 %4, 1792                     ; 3 uses
  %i.b = load ptr, ptr @SDL_touch_lock, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #5
  %i.c = load i32, ptr @SDL_touch_locked, align 4
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @SDL_touch_locked, align 4
  %i.e = load i32, ptr @SDL_num_touch, align 4    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i, label %SDL_GetTouchIndex.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = load ptr, ptr @SDL_touchDevices, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, %1
  br i1 %i.k, label %SDL_GetTouch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %SDL_GetTouchIndex.exit.thread.i, label %bb.b, !llvm.loop !0

SDL_GetTouchIndex.exit.thread.i:                  ; preds = %bb.c, %bb.a
  %or.cond.i = icmp ugt i64 %1, -3
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %SDL_GetTouchIndex.exit.thread.i
  %i.l = tail call ptr @SDL_GetVideoDevice() #5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %.not11.i = icmp eq ptr %i.n, null
end_hunk_0
