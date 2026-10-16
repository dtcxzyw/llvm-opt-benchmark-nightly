Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapihaptic?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDL_JoystickDriver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SDL_HIDAPI_HapticDriver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SDL_HIDAPI_HapticDevice = type { ptr, ptr, ptr, ptr }

@haptic_list_head = internal unnamed_addr global ptr null, align 8
@haptic_list_mutex = internal unnamed_addr global ptr null, align 8
@SDL_HIDAPI_JoystickDriver = external global %struct.SDL_JoystickDriver, align 8
@.str = private unnamed_addr constant [51 x i8] c"Cannot open hidapi haptic from non hidapi joystick\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"No supported HIDAPI haptic driver found for joystick\00", align 1
@SDL_HIDAPI_HapticDriverLg4ff = external global %struct.SDL_HIDAPI_HapticDriver, align 8

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HIDAPI_HapticInit() local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr @haptic_list_head, align 8
  %i.a = tail call ptr @SDL_CreateMutex_REAL() #4 ; 2 uses
  store ptr %i.a, ptr @haptic_list_mutex, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @SDL_OutOfMemory_REAL() #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare ptr @SDL_CreateMutex_REAL() local_unnamed_addr #1

declare zeroext i1 @SDL_OutOfMemory_REAL() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_HIDAPI_HapticIsHidapi(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @haptic_list_mutex, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.a) #4
  %.045 = load ptr, ptr @haptic_list_head, align 8 ; 2 uses
  %.not6.not = icmp eq ptr %.045, null
  br i1 %.not6.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.047, i64 8
  %.04 = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.not = icmp eq ptr %.04, null
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.047 = phi ptr [ %.04, %bb.b ], [ %.045, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.047, align 8
  %i.d = icmp eq ptr %i.c, %0                     ; 3 uses
  br i1 %i.d, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.d, %.lr.ph ], [ %i.d, %bb.b ]
  %i.e = load ptr, ptr @haptic_list_mutex, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.e) #4
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @SDL_LockMutex_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_UnlockMutex_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HIDAPI_JoystickIsHaptic(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, @SDL_HIDAPI_JoystickDriver
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load ptr, ptr @SDL_HIDAPI_HapticDriverLg4ff, align 8
  %i.d = tail call zeroext i1 %i.c(ptr noundef nonnull %0) #4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  %.05 = phi i1 [ %i.d, %.preheader.preheader ], [ false, %bb.a ]
  ret i1 %.05
}

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HIDAPI_HapticOpenFromJoystick(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SDL_HIDAPI_HapticDevice, align 8 ; 6 uses
  tail call void @SDL_AssertJoysticksLocked() #4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, @SDL_HIDAPI_JoystickDriver
  br i1 %.not, label %bb.b, label %.preheader69.preheader

.preheader69.preheader:                           ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #4
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %3 = load ptr, ptr @SDL_HIDAPI_HapticDriverLg4ff, align 8
  %i.d = tail call zeroext i1 %3(ptr noundef nonnull %1) #4
  br i1 %i.d, label %.preheader69.preheader._crit_edge, label %.preheader69.1

.preheader69.preheader._crit_edge:                ; preds = %bb.b
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_HapticDriverLg4ff, i64 8), align 8
  %i.e = tail call ptr %.pre(ptr noundef nonnull %1) #4 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %.preheader69.preheader._crit_edge
  %i.g = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 32) #4 ; 15 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @SDL_HIDAPI_HapticDriverLg4ff, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.k, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_HapticDriverLg4ff, i64 16), align 8
  call void %i.l(ptr noundef nonnull %2) #4
  %i.m = call zeroext i1 @SDL_OutOfMemory_REAL() #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  store ptr @SDL_HIDAPI_HapticDriverLg4ff, ptr %i.n, align 8
  store ptr %0, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.e, ptr %i.p, align 8
  %i.q = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #4 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_HapticDriverLg4ff, i64 16), align 8
  tail call void %i.s(ptr noundef nonnull %i.g) #4
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.g) #4
  %i.t = tail call zeroext i1 @SDL_OutOfMemory_REAL() #4
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.u, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_HapticDriverLg4ff, i64 24), align 8
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.g) #4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %i.g) #4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.n, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.g) #4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.n, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 %i.ak(ptr noundef nonnull %i.g) #4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.al, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.g) #4 ; 2 uses
  store i32 %i.aq, ptr %i.x, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 80
  %i.at = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.as) #4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.q) #4
  %i.aw = load ptr, ptr %i.n, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull %i.g) #4
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.g) #4
  %i.az = tail call zeroext i1 @SDL_OutOfMemory_REAL() #4
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.x, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, 80
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.bc, i1 false)
  store i32 255, ptr %0, align 8
  store ptr %0, ptr %i.q, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.bd, align 8
  %i.be = tail call i32 @SDL_GetJoystickID_REAL(ptr noundef nonnull %1) #4
  %i.bf = tail call ptr @SDL_OpenJoystick_REAL(i32 noundef %i.be) #4 ; 0 uses
  %i.bg = load ptr, ptr @haptic_list_mutex, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.bg) #4
  %i.bh = load ptr, ptr @haptic_list_head, align 8 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.j, label %.preheader

bb.j:                                             ; preds = %bb.i
  store ptr %i.q, ptr @haptic_list_head, align 8
  br label %bb.l

.preheader:                                       ; preds = %bb.i, %.preheader
  %.0 = phi ptr [ %i.bk, %.preheader ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not68 = icmp eq ptr %i.bk, null
  br i1 %.not68, label %bb.k, label %.preheader, !llvm.loop !5

bb.k:                                             ; preds = %.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %i.q, ptr %i.bl, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = load ptr, ptr @haptic_list_mutex, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.bm) #4
  br label %bb.m

.preheader69.1:                                   ; preds = %bb.b
  %i.bn = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.l, %.preheader69.preheader._crit_edge, %.preheader69.1, %.preheader69.preheader
  %.1 = phi i1 [ %i.c, %.preheader69.preheader ], [ %i.bn, %.preheader69.1 ], [ true, %bb.l ], [ %i.m, %bb.d ], [ %i.t, %bb.f ], [ %i.az, %bb.h ], [ false, %.preheader69.preheader._crit_edge ]
  ret i1 %.1
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #1

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @SDL_OpenJoystick_REAL(i32 noundef) local_unnamed_addr #1

declare i32 @SDL_GetJoystickID_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HIDAPI_JoystickSameHaptic(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, @SDL_HIDAPI_JoystickDriver
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %1, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_HIDAPI_HapticClose(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @haptic_list_mutex, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.a) #4
  %.01721 = load ptr, ptr @haptic_list_head, align 8 ; 4 uses
  %.not22 = icmp eq ptr %.01721, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %.01721, align 8
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph32

.lr.ph:                                           ; preds = %.lr.ph32
  %i.d = load ptr, ptr %.017, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph32, !llvm.loop !6

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.01724.lcssa = phi ptr [ %.01721, %.lr.ph.preheader ], [ %.017, %.lr.ph ] ; 3 uses
  %.023.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0172431, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef %i.g) #4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @SDL_CloseJoystick_REAL(ptr noundef %i.m) #4
  %i.n = load ptr, ptr @haptic_list_head, align 8
  %i.o = icmp eq ptr %.01724.lcssa, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.01724.lcssa, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph._crit_edge
  store ptr %i.q, ptr @haptic_list_head, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %.023.lcssa, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.t) #4
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.g) #4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.v) #4
  tail call void @SDL_free_REAL(ptr noundef nonnull %.01724.lcssa) #4
  br label %._crit_edge

.lr.ph32:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172431 = phi ptr [ %.017, %.lr.ph ], [ %.01721, %.lr.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0172431, i64 8
  %.017 = load ptr, ptr %i.w, align 8             ; 4 uses
  %.not = icmp eq ptr %.017, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph32, %bb.a, %bb.d
  %i.x = load ptr, ptr @haptic_list_mutex, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.x) #4
  ret void
}

declare void @SDL_CloseJoystick_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_HIDAPI_HapticQuit() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @haptic_list_mutex, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_DestroyMutex_REAL(ptr noundef nonnull %i.a) #4
  store ptr null, ptr @haptic_list_mutex, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_DestroyMutex_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_HIDAPI_HapticNewEffect(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.b, ptr noundef %1) #4 ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HIDAPI_HapticUpdateEffect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call zeroext i1 %i.f(ptr noundef %i.b, i32 noundef %1, ptr noundef %2) #4
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HIDAPI_HapticRunEffect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call zeroext i1 %i.f(ptr noundef %i.b, i32 noundef %1, i32 noundef %2) #4
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HIDAPI_HapticStopEffect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call zeroext i1 %i.f(ptr noundef %i.b, i32 noundef %1) #4
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_HIDAPI_HapticDestroyEffect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
