Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_video?download=true
inline.NumInlined: 254
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@SDL_GetWindowPixelFormat_REAL
define hidden i32 @SDL_GetWindowPixelFormat_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread9

SDL_ObjectValid.exit.thread9:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.h

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = tail call i32 @SDL_GetDisplayForWindow_REAL(ptr noundef nonnull %0)
  %i.h = load ptr, ptr @_this, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %SDL_GetCurrentDisplayMode_REAL.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %SDL_ObjectValid.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 808
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i, label %SDL_GetCurrentDisplayMode_REAL.exit.thread

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 816
  %i.m = load ptr, ptr %i.l, align 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.g, %i.p
  br i1 %i.q, label %SDL_GetCurrentDisplayMode_REAL.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %SDL_GetCurrentDisplayMode_REAL.exit.thread, label %bb.e, !llvm.loop !1

SDL_GetCurrentDisplayMode_REAL.exit.thread:       ; preds = %bb.f, %SDL_ObjectValid.exit.thread, %.preheader.i.i.i
  %.str.12.sink.i.i = phi ptr [ @.str.1, %SDL_ObjectValid.exit.thread ], [ @.str.12, %.preheader.i.i.i ], [ @.str.12, %bb.f ]
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.12.sink.i.i) #19 ; 0 uses
  br label %bb.h

SDL_GetCurrentDisplayMode_REAL.exit:              ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.t, null
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %SDL_GetCurrentDisplayMode_REAL.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  br label %bb.h

bb.h:                                             ; preds = %SDL_GetCurrentDisplayMode_REAL.exit.thread, %SDL_GetCurrentDisplayMode_REAL.exit, %bb.g, %SDL_ObjectValid.exit.thread9, %bb.b
  %.0 = phi i32 [ %i.v, %bb.g ], [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread9 ], [ 0, %SDL_GetCurrentDisplayMode_REAL.exit ], [ 0, %SDL_GetCurrentDisplayMode_REAL.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_ToggleDragAndDropSupport() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.c = load ptr, ptr %i.b, align 8
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 4096) #19
  br i1 %i.d, label %IsAcceptingDragAndDrop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 4097) #19
  br label %IsAcceptingDragAndDrop.exit

IsAcceptingDragAndDrop.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ true, %bb.c ], [ %i.e, %bb.d ]
  %i.f = load ptr, ptr @_this, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 840
  %.06 = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not57 = icmp eq ptr %.06, null
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %IsAcceptingDragAndDrop.exit, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %IsAcceptingDragAndDrop.exit ] ; 2 uses
  %i.h = load ptr, ptr @_this, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull %.08, i1 noundef zeroext %.0.i) #19
  %i.k = getelementptr inbounds nuw i8, ptr %.08, i64 416
  %.0 = load ptr, ptr %i.k, align 8               ; 2 uses
  %.not5 = icmp eq ptr %.0, null
  br i1 %.not5, label %.loopexit, label %.lr.ph, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph, %IsAcceptingDragAndDrop.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_GetWindows_REAL(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not31 = icmp eq ptr %i.a, null
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  %.02135 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not3236 = icmp eq ptr %.02135, null
  br i1 %.not3236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.02138 = phi ptr [ %.021, %.lr.ph ], [ %.02135, %bb.e ]
  %.037 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.e ]
  %i.d = add nuw nsw i32 %.037, 1                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02138, i64 416
  %.021 = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.021, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.0.lcssa = phi i32 [ 0, %bb.e ], [ %i.d, %.lr.ph ] ; 5 uses
  %i.f = add nuw nsw i32 %.0.lcssa, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.h) #19 ; 6 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr @_this, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 840
  %.12239 = load ptr, ptr %i.k, align 8           ; 3 uses
  %.not3440 = icmp eq ptr %.12239, null
  br i1 %.not3440, label %._crit_edge45, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %bb.f
  %i.l = zext i32 %.0.lcssa to i64
  store ptr %.12239, ptr %i.i, align 8
  %i.m = icmp eq i32 %.0.lcssa, 1
  br i1 %i.m, label %._crit_edge45, label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph44.preheader, %.lr.ph44
  %indvars.iv.next58 = phi i64 [ %indvars.iv.next, %.lr.ph44 ], [ 1, %.lr.ph44.preheader ] ; 3 uses
  %.1224257 = phi ptr [ %.122, %.lr.ph44 ], [ %.12239, %.lr.ph44.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.1224257, i64 416
  %.122 = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not34 = icmp eq ptr %.122, null
  br i1 %.not34, label %._crit_edge45.loopexit.split.loop.exit54, label %.lr.ph44, !llvm.loop !49

.lr.ph44:                                         ; preds = %.lr.ph59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next58, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next58
  store ptr %.122, ptr %i.o, align 8
  %i.p = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %i.p, label %._crit_edge45, label %.lr.ph59, !llvm.loop !49

._crit_edge45.loopexit.split.loop.exit54:         ; preds = %.lr.ph59
  %i.q = trunc nuw nsw i64 %indvars.iv.next58 to i32
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %.lr.ph44, %.lr.ph44.preheader, %._crit_edge45.loopexit.split.loop.exit54, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ %i.q, %._crit_edge45.loopexit.split.loop.exit54 ], [ %.0.lcssa, %.lr.ph44.preheader ], [ %.0.lcssa, %.lr.ph44 ] ; 2 uses
  %1 = zext nneg i32 %.1 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %1
  store ptr null, ptr %i.r, align 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge45
  store i32 %.1, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %._crit_edge45, %bb.d
  %.124 = phi ptr [ null, %bb.d ], [ null, %._crit_edge ], [ %i.i, %bb.g ], [ %i.i, %._crit_edge45 ]
  ret ptr %.124
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_CreateWindowWithProperties_REAL(i32 noundef %0) local_unnamed_addr #0 {
SDL_GetWindowFlagProperties.exit:
  %1 = alloca %struct.SDL_Rect, align 4           ; 10 uses
  %2 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %i.a = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.26, ptr noundef null) #19 ; 2 uses
  %i.b = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.27, i64 noundef 536805376) #19
  %i.c = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.28, i64 noundef 536805376) #19
  %i.d = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.29, i64 noundef 0) #19
  %i.e = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.30, i64 noundef 0) #19
  %i.f = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.31, ptr noundef null) #19 ; 5 uses
  %i.g = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.42, i64 noundef 0) #19 ; 2 uses
  %i.h = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.145, i1 noundef zeroext false) #19
  %i.i = or i64 %i.g, 65536
  %spec.select.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.146, i1 noundef zeroext false) #19
  %i.k = or i64 %spec.select.i, 16
  %.1.peel19.i = select i1 %i.j, i64 %i.k, i64 %spec.select.i ; 2 uses
  %i.l = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.147, i1 noundef zeroext true) #19
  %i.m = or i64 %.1.peel19.i, 2147483648
  %.1.peel23.i = select i1 %i.l, i64 %.1.peel19.i, i64 %i.m
  %i.n = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.148, i1 noundef zeroext false) #19
  %i.o = zext i1 %i.n to i64
  %spec.select = or i64 %.1.peel23.i, %i.o        ; 2 uses
  %i.p = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.149, i1 noundef zeroext false) #19
  %i.q = or i64 %spec.select, 8
  %.1.i.1 = select i1 %i.p, i64 %i.q, i64 %spec.select ; 2 uses
  %i.r = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.150, i1 noundef zeroext false) #19
  %i.s = or i64 %.1.i.1, 8192
  %.1.i.2 = select i1 %i.r, i64 %i.s, i64 %.1.i.1 ; 2 uses
  %i.t = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.151, i1 noundef zeroext false) #19
  %i.u = or i64 %.1.i.2, 128
  %.1.i.3 = select i1 %i.t, i64 %i.u, i64 %.1.i.2 ; 2 uses
  %i.v = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.152, i1 noundef zeroext false) #19
  %i.w = or i64 %.1.i.3, 524288
  %.1.i.4 = select i1 %i.v, i64 %i.w, i64 %.1.i.3 ; 2 uses
  %i.x = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.153, i1 noundef zeroext false) #19
  %i.y = or i64 %.1.i.4, 536870912
  %.1.i.5 = select i1 %i.x, i64 %i.y, i64 %.1.i.4 ; 2 uses
  %i.z = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.154, i1 noundef zeroext false) #19
  %i.aa = or i64 %.1.i.5, 64
  %.1.i.6 = select i1 %i.z, i64 %i.aa, i64 %.1.i.5 ; 2 uses
  %i.ab = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.155, i1 noundef zeroext false) #19
  %i.ac = or i64 %.1.i.6, 4096
  %.1.i.7 = select i1 %i.ab, i64 %i.ac, i64 %.1.i.6 ; 2 uses
  %i.ad = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.156, i1 noundef zeroext false) #19
  %i.ae = or i64 %.1.i.7, 256
  %.1.i.8 = select i1 %i.ad, i64 %i.ae, i64 %.1.i.7 ; 2 uses
  %i.af = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.157, i1 noundef zeroext false) #19
  %i.ag = or i64 %.1.i.8, 2
  %.1.i.9 = select i1 %i.af, i64 %i.ag, i64 %.1.i.8 ; 2 uses
  %i.ah = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.158, i1 noundef zeroext false) #19
  %i.ai = or i64 %.1.i.9, 32
  %.1.i.10 = select i1 %i.ah, i64 %i.ai, i64 %.1.i.9 ; 2 uses
  %i.aj = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.159, i1 noundef zeroext false) #19
  %i.ak = or i64 %.1.i.10, 1073741824
  %.1.i.11 = select i1 %i.aj, i64 %i.ak, i64 %.1.i.10 ; 2 uses
  %i.al = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.160, i1 noundef zeroext false) #19
  %i.am = or i64 %.1.i.11, 262144
  %.1.i.12 = select i1 %i.al, i64 %i.am, i64 %.1.i.11 ; 2 uses
  %i.an = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.161, i1 noundef zeroext false) #19
  %i.ao = or i64 %.1.i.12, 131072
  %.1.i.13 = select i1 %i.an, i64 %i.ao, i64 %.1.i.12 ; 2 uses
  %i.ap = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.162, i1 noundef zeroext false) #19
  %i.aq = or i64 %.1.i.13, 268435456
  %.1.i.14 = select i1 %i.ap, i64 %i.aq, i64 %.1.i.13 ; 4 uses
  %.fr = freeze i64 %i.b
  %i.ar = trunc i64 %.fr to i32                   ; 4 uses
  %i.as = trunc i64 %i.c to i32                   ; 6 uses
  %i.at = trunc i64 %i.d to i32
  %i.au = trunc i64 %i.e to i32
  %i.av = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.32, i1 noundef zeroext false) #19
  %i.aw = zext i1 %i.av to i8
  %i.ax = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %SDL_GetWindowFlagProperties.exit
  %i.ay = tail call zeroext i1 @SDL_Init_REAL(i32 noundef 32) #19
  %i.az = load ptr, ptr @_this, align 8
  %.not155 = icmp ne ptr %i.az, null
  %or.cond185.not = select i1 %i.ay, i1 %.not155, i1 false
  br i1 %or.cond185.not, label %bb.b, label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.b:                                             ; preds = %bb.a, %SDL_GetWindowFlagProperties.exit
  %i.ba = and i64 %.1.i.14, 4096
  %.not156 = icmp eq i64 %i.ba, 0
  br i1 %.not156, label %SDL_ObjectValid.exit188.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i186 = icmp eq ptr %i.f, null
  br i1 %.not.i186, label %SDL_ObjectValid.exit188.thread197, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %SDL_ObjectValid.exit188, label %SDL_ObjectValid.exit188.thread

SDL_ObjectValid.exit188:                          ; preds = %bb.d
  %i.bd = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.f, i32 noundef 1) #19
  br i1 %i.bd, label %SDL_ObjectValid.exit188.thread, label %SDL_ObjectValid.exit188.thread197

SDL_ObjectValid.exit188.thread197:                ; preds = %bb.c, %SDL_ObjectValid.exit188
  %i.be = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.33) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

SDL_ObjectValid.exit188.thread:                   ; preds = %bb.d, %SDL_ObjectValid.exit188, %bb.b
  %i.bf = and i64 %.1.i.14, 786432
  %.not157 = icmp eq i64 %i.bf, 0
  br i1 %.not157, label %bb.i, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit188.thread
  %i.bg = load ptr, ptr @_this, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 916
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 2
  %.not158 = icmp eq i32 %i.bj, 0
  br i1 %.not158, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread200, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.h
  %i.bn = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.f, i32 noundef 1) #19
  br i1 %i.bn, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread200

SDL_ObjectValid.exit.thread200:                   ; preds = %bb.g, %SDL_ObjectValid.exit
  %i.bo = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.34) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

SDL_ObjectValid.exit.thread:                      ; preds = %bb.h, %SDL_ObjectValid.exit
  %i.bp = and i64 %.1.i.14, -210
  br label %bb.i

bb.i:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit188.thread
  %.0134 = phi i64 [ %i.bp, %SDL_ObjectValid.exit.thread ], [ %.1.i.14, %SDL_ObjectValid.exit188.thread ] ; 8 uses
  %i.bq = and i64 %.0134, 921600                  ; 2 uses
  %i.br = tail call range(i64 0, 5) i64 @llvm.ctpop.i64(i64 %i.bq)
  %.not159 = icmp samesign ult i64 %i.br, 2
  br i1 %.not159, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = trunc nuw nsw i64 %i.bq to i32
  %i.bt = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.35, i32 noundef %i.bs) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr @_this, align 8           ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not160 = icmp eq ptr %i.bw, null
  br i1 %.not160, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %i.bw(ptr noundef nonnull %i.bu) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1) ; 5 uses
  %spec.store.select2 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 1) ; 5 uses
  %i.bx = and i32 %i.ar, -65536                   ; 4 uses
  %i.by = icmp eq i32 %i.bx, 536805376
  switch i32 %i.bx, label %switch.early.test [
    i32 805240832, label %.sink.split
    i32 536805376, label %.sink.split
  ]

switch.early.test:                                ; preds = %bb.m
  %i.bz = and i32 %i.as, -65536
  switch i32 %i.bz, label %bb.ac [
    i32 805240832, label %bb.n
    i32 536805376, label %bb.n
  ]

bb.n:                                             ; preds = %switch.early.test, %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  switch i32 %i.bx, label %bb.p [
    i32 805240832, label %bb.o
end_hunk_0
