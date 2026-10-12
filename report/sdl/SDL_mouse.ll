Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_mouse?download=true
inline.NumInlined: 74
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SDL_SetDefaultCursor:bb.a

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_CreateColorCursor_REAL(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31) #13 ; 0 uses
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @SDL_GetSurfaceProperties_REAL(ptr noundef nonnull %0) #13 ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.b, ptr noundef nonnull @.str.26, i64 noundef %i.c) #13
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = sext i32 %2 to i64
  %i.g = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.b, ptr noundef nonnull @.str.27, i64 noundef %i.f) #13
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp slt i32 %i.e, 0
  %i.j = icmp slt i32 %i.h, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %.not37 = icmp sgt i32 %i.l, %i.e
  br i1 %.not37, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %.not38 = icmp sgt i32 %i.n, %i.h
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %.not39 = icmp eq i32 %i.q, 372645892
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %0, i32 noundef 372645892) #13 ; 3 uses
  %.not40 = icmp eq ptr %i.r, null
  br i1 %.not40, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.030 = phi ptr [ %0, %bb.g ], [ %i.r, %bb.h ]
  %.029 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ]
  %i.s = load ptr, ptr @SDL_mouse, align 8        ; 2 uses
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr %i.s(ptr noundef nonnull %.030, i32 noundef %i.e, i32 noundef %i.h) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.u = tail call noalias dereferenceable_or_null(24) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 24) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.t, %bb.j ], [ %i.u, %bb.k ]  ; 4 uses
  %.not42 = icmp eq ptr %.0, null
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 272), align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.v, ptr %i.w, align 8
  store ptr %.0, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 272), align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @SDL_DestroySurface_REAL(ptr noundef %.029) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n, %bb.h, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ %.0, %bb.n ], [ null, %bb.h ]
  ret ptr %.1
}

declare void @SDL_DestroySurface_REAL(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsMouse(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_AddMouse(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.SDL_Event, align 8           ; 6 uses
  %i.a = load i32, ptr @SDL_mouse_count, align 4  ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  %.pre = load ptr, ptr @SDL_mice, align 8        ; 2 uses
  br i1 %i.b, label %.lr.ph.i, label %SDL_GetMouseIndex.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %0, %i.d
  br i1 %i.e, label %SDL_GetMouseIndex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetMouseIndex.exit.thread, label %bb.b, !llvm.loop !1

SDL_GetMouseIndex.exit.thread:                    ; preds = %bb.c, %bb.a
  %i.f = add nsw i32 %i.a, 1
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre, i64 noundef %i.h) #15 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %SDL_GetMouseIndex.exit, label %bb.d

bb.d:                                             ; preds = %SDL_GetMouseIndex.exit.thread
  %i.j = load i32, ptr @SDL_mouse_count, align 4  ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  store i32 %0, ptr %i.l, align 4
  store ptr %i.i, ptr @SDL_mice, align 8
  %i.m = add nsw i32 %i.j, 1
  store i32 %i.m, ptr @SDL_mouse_count, align 4
  %.not9 = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not9, ptr @.str.14, ptr %1
  %i.n = load ptr, ptr @SDL_mouse_names, align 8
  %i.o = zext i32 %0 to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %spec.store.select) #13
  %i.r = tail call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.q, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  store i32 1028, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %0, ptr %i.s, align 8
  %i.t = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %SDL_GetMouseIndex.exit

SDL_GetMouseIndex.exit:                           ; preds = %bb.b, %bb.d, %SDL_GetMouseIndex.exit.thread
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #5

declare zeroext i1 @SDL_InsertIntoHashTable(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_PushEvent_REAL(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @SDL_RemoveMouse(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.SDL_Event, align 8           ; 6 uses
  %i.a = load i32, ptr @SDL_mouse_count, align 4  ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %SDL_GetMouseIndex.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr @SDL_mice, align 8         ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %0, %i.e
  br i1 %i.f, label %SDL_GetMouseIndex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetMouseIndex.exit.thread, label %bb.b, !llvm.loop !1

SDL_GetMouseIndex.exit:                           ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.h = add nsw i32 %i.a, -1                     ; 2 uses
  %.not = icmp eq i32 %i.h, %i.g
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %SDL_GetMouseIndex.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = xor i32 %i.g, -1
  %i.l = add nsw i32 %i.a, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %i.j, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %SDL_GetMouseIndex.exit
  store i32 %i.h, ptr @SDL_mouse_count, align 4
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 256), align 8 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 264), align 8
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %.not27 = icmp eq i32 %i.s, %0
  br i1 %.not27, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.v) #13
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 256), align 8 ; 2 uses
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  %.not26 = icmp eq i32 %i.x, %i.t
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 264), align 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = xor i32 %i.t, -1
  %i.ac = add i32 %i.w, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.aa, i64 %i.ae, i1 false)
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 256), align 8
  %.pre38 = add nsw i32 %.pre, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i32 [ %.pre38, %bb.h ], [ %i.x, %bb.g ]
  store i32 %.pre-phi, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 256), align 8
  br label %.loopexit

.critedge:                                        ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !17

.loopexit:                                        ; preds = %.critedge, %bb.e, %bb.i
  %.b = load i1, ptr @SDL_mouse_initialized, align 1
  br i1 %.b, label %bb.j, label %SDL_GetMouseIndex.exit.thread

bb.j:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  store i32 1029, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %0, ptr %i.af, align 8
  %i.ag = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %SDL_GetMouseIndex.exit.thread

SDL_GetMouseIndex.exit.thread:                    ; preds = %bb.c, %bb.a, %.loopexit, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_HasMouse_REAL() local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @SDL_mouse_count, align 4
  %i.b = icmp sgt i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_GetMice_REAL(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @SDL_mouse_count, align 4
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.d) #13 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  %.not14 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr @SDL_mouse_count, align 4 ; 4 uses
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.pre, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp sgt i32 %.pre, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.g = load ptr, ptr @SDL_mice, align 8
  %i.h = zext nneg i32 %.pre to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %i.g, i64 %i.i, i1 false)
  %i.j = zext nneg i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.j, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.lcssa
  store i32 0, ptr %i.k, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %._crit_edge
  ret ptr %i.e
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetMouseNameForID_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  switch i32 %0, label %bb.e [
    i32 0, label %bb.i
    i32 -1, label %bb.b
    i32 -2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SDL_GetTouchDevices_REAL(ptr noundef null) #13 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call ptr @SDL_GetTouchDeviceName_REAL(i64 noundef %i.c) #13 ; 2 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.b) #13
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.b, %bb.c
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @SDL_mouse_names, align 8
  %i.f = zext i32 %0 to i64
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull %i.a) #13
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17, i32 noundef %0) #13 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = call zeroext i1 @SDL_OutOfMemory_REAL() #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.d, %.thread, %bb.c, %bb.g, %bb.h, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ %i.j, %bb.g ], [ %i.d, %bb.c ], [ @.str.15, %.thread ], [ @.str.16, %bb.d ], [ @.str.14, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

declare ptr @SDL_GetTouchDevices_REAL(ptr noundef) local_unnamed_addr #4

declare ptr @SDL_GetTouchDeviceName_REAL(i64 noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_FindInHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #4

end_hunk_0
