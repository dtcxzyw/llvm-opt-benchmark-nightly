Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_video?download=true
inline.NumInlined: 254
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_GetWindowSurfaceVSync_REAL:bb.a
SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge: ; preds = %SDL_ObjectValid.exit
  %.pre = load ptr, ptr @_this, align 8
  br label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5 = icmp eq ptr %i.i, null
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = tail call zeroext i1 %i.i(ptr noundef nonnull %i.g, ptr noundef nonnull %0, ptr noundef %1) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %SDL_ObjectValid.exit.thread7, %bb.b
  %.0 = phi i1 [ %i.k, %bb.f ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread7 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_UpdateWindowSurface_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_Rect, align 4           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  store i32 0, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) ; 0 uses
  %i.k = load ptr, ptr @_this, align 8
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.l = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.m = load i8, ptr @SDL_object_validation, align 1, !range !3, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.f
  %i.o = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.o, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread6.i

SDL_ObjectValid.exit.thread6.i:                   ; preds = %SDL_ObjectValid.exit.i
  %i.p = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load i8, ptr %i.q, align 8, !range !3, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.t = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.57) #19
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

bb.h:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.u = load ptr, ptr @_this, align 8            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 336
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call zeroext i1 %i.w(ptr noundef %i.u, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #19, !inline_history !62
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

SDL_UpdateWindowSurfaceRects_REAL.exit:           ; preds = %bb.h, %bb.g, %SDL_ObjectValid.exit.thread6.i, %bb.e, %SDL_ObjectValid.exit.thread7, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %SDL_ObjectValid.exit.thread7 ], [ %i.x, %bb.h ], [ %i.t, %bb.g ], [ false, %SDL_ObjectValid.exit.thread6.i ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_UpdateWindowSurfaceRects_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread6, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread6

SDL_ObjectValid.exit.thread6:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load i8, ptr %i.g, align 8, !range !3, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.57) #19
  br label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call zeroext i1 %i.m(ptr noundef %i.k, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %SDL_ObjectValid.exit.thread6, %bb.b
  %.0 = phi i1 [ %i.n, %bb.f ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread6 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowOpacity_REAL(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, label %SDL_ObjectValid.exit.thread13

SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge: ; preds = %SDL_ObjectValid.exit
  %.pre = load ptr, ptr @_this, align 8
  br label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit.thread13:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.h

SDL_ObjectValid.exit.thread:                      ; preds = %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.i, null
  br i1 %.not11, label %bb.e, label %2

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.h

2:                                                ; preds = %SDL_ObjectValid.exit.thread
  %3 = fcmp olt float %1, 0.000000e+00
  br i1 %3, label %bb.f, label %4

4:                                                ; preds = %2
  %5 = fcmp ogt float %1, 1.000000e+00
  br i1 %5, label %6, label %bb.f

6:                                                ; preds = %4
  br label %bb.f

bb.f:                                             ; preds = %2, %4, %6
  %.0 = phi float [ %1, %4 ], [ 1.000000e+00, %6 ], [ 0.000000e+00, %2 ] ; 2 uses
  %i.k = tail call zeroext i1 %i.i(ptr noundef nonnull %i.g, ptr noundef nonnull %0, float noundef %.0) #19
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %.0, ptr %i.l, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread13, %bb.b
  %.09 = phi i1 [ false, %bb.b ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread13 ], [ true, %bb.g ], [ false, %bb.f ]
  ret i1 %.09
}

; Function Attrs: nounwind uwtable
define hidden float @SDL_GetWindowOpacity_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread4

SDL_ObjectValid.exit.thread4:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load float, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread4, %bb.b
  %.0 = phi float [ %i.h, %SDL_ObjectValid.exit.thread ], [ -1.000000e+00, %SDL_ObjectValid.exit.thread4 ], [ -1.000000e+00, %bb.b ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowParent_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.not.i25 = icmp eq ptr %0, null
  br i1 %.not.i25, label %SDL_ObjectValid.exit27.thread29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit27, label %SDL_ObjectValid.exit27.thread

SDL_ObjectValid.exit27:                           ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit27.thread, label %SDL_ObjectValid.exit27.thread29

SDL_ObjectValid.exit27.thread29:                  ; preds = %bb.c, %SDL_ObjectValid.exit27
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.t

SDL_ObjectValid.exit27.thread:                    ; preds = %bb.d, %SDL_ObjectValid.exit27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 786432
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit27.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.t

bb.f:                                             ; preds = %SDL_ObjectValid.exit27.thread
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @_this, align 8
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.m = load i8, ptr @SDL_object_validation, align 1, !range !3, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.i
  %i.o = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 1) #19
  br i1 %i.o, label %SDL_ObjectValid.exit.thread, label %bb.j

bb.j:                                             ; preds = %SDL_ObjectValid.exit
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.t

SDL_ObjectValid.exit.thread:                      ; preds = %bb.i, %SDL_ObjectValid.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 786432
  %.not22 = icmp eq i64 %i.s, 0
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %SDL_ObjectValid.exit.thread, %bb.f
  %i.u = icmp eq ptr %0, %1
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.58) #19
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr @_this, align 8            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.y, null
  br i1 %.not23, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.aa = load i64, ptr %i.g, align 8
  %i.ab = and i64 %i.aa, 4096
  %.not24 = icmp eq i64 %i.ab, 0
  br i1 %.not24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #19
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call zeroext i1 %i.y(ptr noundef nonnull %i.w, ptr noundef nonnull %0, ptr noundef %1) #19 ; 2 uses
  %i.ah = select i1 %i.ag, ptr %1, ptr null
  tail call fastcc void @SDL_UpdateWindowHierarchy(ptr noundef nonnull %0, ptr noundef %i.ah)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h, %bb.e, %SDL_ObjectValid.exit27.thread29, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.k ], [ %i.v, %bb.m ], [ %i.ac, %bb.q ], [ false, %bb.b ], [ %i.ag, %bb.s ], [ %i.z, %bb.o ], [ false, %bb.j ], [ false, %bb.h ], [ false, %SDL_ObjectValid.exit27.thread29 ], [ true, %bb.r ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_ShouldRelinquishPopupFocus(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 9
  %i.f = trunc i64 %i.e to i8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 786432
  %.not15 = icmp eq i64 %i.i, 0
  br i1 %.not15, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge2
  %i.j = phi i64 [ %.pre, %.critedge2 ], [ %i.h, %bb.a ]
  %.017 = phi i8 [ %.1, %.critedge2 ], [ %i.f, %bb.a ] ; 2 uses
  %.01316 = phi ptr [ %i.s, %.critedge2 ], [ %i.b, %bb.a ] ; 4 uses
  %i.k = and i64 %i.j, 2147483648
  %.not14 = icmp eq i64 %i.k, 0
  br i1 %.not14, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.01316, i64 265
  %i.m = load i8, ptr %i.l, align 1, !range !3, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
end_hunk_0
